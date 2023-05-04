# Terraform

Infrastructure as a code tool.
Open source - freely available, you can use it while need it.
Manage infra for multiple cloud providers - it can be various clouds
Simple
Declarative programming language
Easy to manage infra with few cli commands
Faster and reliable
Maintain history of changes
Code reviews and automated tests
All your servers, all your systems, whole Infrastructure you are performing as a code.

Top 10 IaaC tools:
Chef, Puppet, Ansible, Pulumi, AWS CloudFormation, Terraform, Google Cloud Deployment Manager, Vagrant

Different parts of tools:
Chef, Puppet, and Ansible are all configuration management tools, they are designed to install and manage software on existing servers. AWS CloudFormation, Heat, Pulumi, Terraform are provisioning tools, they are designed to provision the servers themselves (as well as the rest of the infrastructure, like load balancer, databases, networking configuration etc), leaving the job of configuring those servers to other tools.

Configuration management tools such as Chef, Puppet, Ansible typically default to a mutable infrastructure paradigm. If you are using Terraform to deploy machine images created by Docker or Packer, most changes are actually deployments of a completely new server.

Chef and Ansible encourage a procedural style where you write a code that specifies, step by step, how to achieve some desired end state. Terraform, CloudFormation, Pulumi, Heat and Puppet all encourage a more declarative style where you write code that specifies your desired end state, and the Iac tool itself is responsible for figuring out how to achieve this state.

Practice 1; Create an EC2 instance using Terraform:

```
mkdir terraform-directory/
export AWS_ACCESS_KEY_ID="YourAccessKeyId"
export AWS_SECRET_ACCESS_KEY="yourSecretAccessKey"

vi main.tf
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami                    = "ami-0fb653ca2d3203ac1"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  user_data_replace_on_change = true

  tags = {
    Name = "terraform-example"
  }
}


resource "aws_security_group" "instance" {
  name = "terraform-example-instance"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

terraform init
terraform plan
terraform apply ---auto-approve          
Skip interactive approval of plan before applying.
```

![ec2](ec2.png)

![website](hello.png)

Master Versus Masterless
chef and puppet that you run a master server for storing the state of your infrastructure and distributing update. Ansible, CloudFormation, Heat, terraform, and pulumi are all masterless by default

Agent Versus Agentless
Chef and Puppet require you t install agent software (e.g. Chef Client, Puppet Agent) on each server that you want to configure.
Ansible, CloudFormation, Heat, Terraform, and Pulumi fo not require you to install any extra agents.

Paid versus free offering
CloudFormation and openStack hear are completely free: the resources you deploy with those tools cost money, but you don't pay anything to use these tools. Terraform, Chef, Ansible, Puppet and Pulumi are all available in free versions and paid versions.

Using multiple tools together
Provisioning plus configuration management.
Provisioning plus server templating.
Provisioning plus server templating plus orchestration.

Terraform can provision infra across public clouds Azure, Google Cloud, DigitalOcean, AWS, as well as private cloud providers such as VmWare and OpenStack.

```
Install terraform on MacOs
Create user in IAM, Create secret credentials for cli, and export them

```

export AWS_ACCESS_KEY_ID="YourAccessKeyId"
export AWS_SECRET_ACCESS_KEY="yourSecretAccessKey"

```

Write Terraform Code to deploy a single server on aws cloud
 Terraform is written in the HashiCorp Configuration Language (HCL) in files with the extension. It is a declarative language, so goal is to describe the infrastructure I want , and Terraform will figure out how to create it.

 Terraform helps us create all resources using the code. 
 Terraform supports providers and clouds/on prem
We are building Infrastructure as a Code. It is smart enough, can interact with resources that made manually. 
Create Role for Ec2 instance -> Create Role- > EC2 -> AdministratorAccess -> Role Name-> terraform-role -> Create Role

Navigate to the EC2 -> Ireland eu-west-1 - > Import key-pair -> add your public key my-laptop-key -cat ~/.ssh/id_rsa.pub

Launch Instance for Ireland region -> Launch instance -> give the name terraform-bastion -> free-tier t2.micro -> key-par my-laptop-key -> Storage 25Gi -> Launch instance.

Navigate to EC2 instance - Actions- Security- Modify the IAM role -> terraform-role -> Update IAM Role

Extensions -Remote-SSH -> Install in VSCode

Go to in VSCode in the left corner click on it -> Connect to Host -> add to your Users config --> ssh ec2-user2ec2publicIP

Create the repo for terraform-projects2
On the VScode for ec2 instance ssh-keygen -> cat ~/.ssh/id_rsa.pub
Add ssh-key on the github as terraform-key
copy ssh of the terraform-projects2 -> git clone git@github.com:NazgulM/terraform-projects2.git

Open folder -> /home/ec2-user/terraform-projects2

Create provider.tf -> paste this command
```

provider "aws" {
  region = "us-east-1"
}

```

Create main.tf -> aws_iam_user
``
resource "aws_iam_user" "lb" {
  name = "kaizen"
}

Install to Linux machine
```

wget <https://releases.hashicorp.com/terraform/1.4.5/terraform_1.4.5_linux_amd64.zip>

unzip terraform_1.4.5_linux_amd64.zip
sudo mv terraform /usr/local/bin/

terraform version
Terraform v1.4.5
on linux_amd64

terraform init
terraform plan
terraform apply

```

Adding the user to the group
```

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb.name,
  ]

  group = aws_iam_group.devops.name
}

```

Create key-pair with EC2 instance ssh
```

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

```

Create bucket with random number to avoid the error
```

resource "aws_s3_bucket" "example" {
  bucket_prefix = "nazgul"
}

```


Implicit Dependency and terraform graph

When you add reference from one resource to another, you create an implicit dependency. terraform parses their dependencies, builds a dependency graph from them, and uses that to automatically determine in which order it should create resources. For example, if you deploying code from scratch, terraform would know that have to create a security group before the EC2 instance, because the EC2 instance references the IF of Security Group, for showing the dependency you can use 
```

terraform graph

```

Terraform variable
To allow to make code more dry and more configurable, Terraform allows to define input variables.

You can codify your Infrastructure, Ansible, Puppet and Chef, these are more using for software configuration rather than Infrastructure.
CloudFormation is AWS tool, Terraform preferring covers as AWS and other cloud providers.

Once you will write a code you can run the code which can manage your Infrastructure. It can create anything comes to AWS, can assign role to the server, by providing administrator access.
