# Introduction to Software Development Workflow

Software Development Life Cycle (SDLC) is a process used by the software industry to design, develop and test high quality softwares. The SDLC aims to produce a high-quality software that meets or exceeds customer expectations, reaches completion within times and cost estimates.
Requirement gathering and analysis:
Project requirements collected in this phase.
Meeting with client happens to understand client requirement,this stage mainly handled by managers,stockholders to know about point like who is going to use system,what is the requirement and so on .
Finally, a Requirement Specification document is created which serves the purpose of guideline for the next phase of the model.
 Design:This involves technical architect,devops team manager/lead to design the architecture of entire project . In this phase the system and software design is prepared from the requirement specifications which were studied in the first phase. System Design helps in specifying hardware and system requirements and also helps in defining overall system architecture. The system design specifications serve as input for the next phase of the model.
In this phase the testers comes up with the Test strategy, where they mention what to test, how to test.

 Implementation / Coding:
In this stage mostly developers are involved ,to develop the entire product of client . On receiving system design documents, the work is divided in modules/units and actual coding is started. Since, in this phase the code is produced so it is the main focus for the developer. This is the longest phase of the software development life cycle.

1) Testing: After the code is developed it is tested against the requirements to make sure that the product is actually solving the needs addressed and gathered during the requirements phase. During this phase all types of functional testing like unit testing, integration testing, system testing, acceptance testing are done as well as non-functional testing are also done.
Deployment: After successful testing the product is delivered / deployed to the customer for their use.
As soon as the product is given to the customers they will first do the beta testing. If any changes are required or if any bugs are caught, then they will report it to the engineering team. Once those changes are made or the bugs are fixed then the final deployment will happen.
1) Maintenance: Once when the customers starts using the developed system then the actual problems comes up and needs to be solved from time to time. This process where the care is taken for the developed product is known as maintenance.

Lets understand this with example of developing a app for clothing brand app:

1. Planning Phase : X client shared their requirement of developing a clothing brand app to the IT company Y.Both companies will discuss the requirement involving top management team of company.X client will share information like we need our servers on aws cloud and whats the budget they need to invest on this app , where are there users location and so on .
2. Design: Y company will prepare a design specification document specifying the architecture of the clothing brand app . Design Y solution architect will share the best architecture considering security aspect also .For example : VPC architecture on AWScloud for running the clothing brand app.
3. Implementation/Coding
Based on the Design documented in stage 2 , small modules will be created on JIRA tool and tasks will be assigned to each team member to develop the entire application .
For eg: First Module created for payment Method , this Module can further be separated to several options such as COD, NetBanking or Phonepe.Means all payment method need to be supported on app while making payment.
4. Testing:Once application is developed , development team will share the notes on how to deploy the clothing brand application to the testing team .
Testing team will perform various type of testing and prepare one excel sharing what all tests they performed and whether it passed or failed .
5. Deployment:Once clothing brand app testing goes fine , Application will be finally deployed on the servers so that client can start using it .
6. Maintenance :
Company Y is also responsible for maintaining the application such as If application is slow they need to fix it or any payment method is not working team need to fix it .

Concepts to Know in Planning Phase:(Agile Method and Scrum)

1. Its handled by the project manager or scrum master .
2. Companies are now following Agile Method where entire product is break into small modules called as microservices which makes the development faster and also multiple phases can be executed together .Here small small features are developed for the entire application and deployed to be used by the customers.
For example following Agile Method:
-> Feature 1 you developed the feature of enabling ordering the customers kids clothes.-> Feature 2 you developed the feature of enabling ordering the women's clothes .so each features are launched one by one in market , it reduces the downtime and if any issue happen in that particular feature it can easily be fixed .
To Adopt Agile ,Team will pick scrum .Scrum is continuation of Agile process where product is broke into small pieces .One Piece of product will take around 1 month to build and launched in market and like that it goes on .

Agile is a philosophy about how to successfully deliver software to a customer, while Scrum is a proven methodology for software development teams to follow.

JIRA TOOL

1. JIRA is a tool most organization use to follow the scrum.It is actually a tool to Plan ,track and support software development .
2. It is used to create the new tasks,bugs and enhancements .
3. Product Backlog: This is entire list of tasks and requirements for the product development .
4. Sprint Backlog: Subset of product Backlog tasks which will be worked in single sprint.
5. Epic: This is entire application main tasks that can be further sub-divided into small stories or issues.
6. User story: General explanation regarding the software feature which will be worked in single sprint .
7. Tasks: Individual issues assigned to the developer .
8. Bugs: These are the errors identified by customer on the application deployed in market.
Demo:
Sign up to create a free account on JIRA in cloud.
<https://www.atlassian.com/try/cloud/signup?bundle=jira-software&edition=free>
Give your Project a name . All EPIC,issues and bugs will go inside this project.
3.We can select Scrum Template based on which we want to create a project.
Create EPIC,Tasks,Bugs over there.
Create a sprint and assign the tasks,Bugs .
Start the sprint.

Development Phase Understanding

Lets understand a use case where you want to develop a WebApplication (It is a software that runs over the internet and you can open it in your browser.For eg: Amazon.com)
To develop a web application , need three things:

1. Front-end : Front end development is a style of computer programming that focuses on the coding and creation of elements and features of a website that will then be seen by the user. It is also called as client side of application.
You can use HTML,CSS or Javascript for this .
HTML: It provides the actual content what we want to show to user accessing our webpage.It is kind of static web content.
Javascript: It provides an interface for the end-users to interact by generating dynamic content for the users.
CSS: CSS (Cascading Style Sheets) is used to style and layout web pages — for example, to alter the font, color, size, and spacing of your content
1. Back-end
Back end development focuses on the side of the website users can’t see, it is called as server side of the web application .
Backend developer will maintain the code regarding behind the scene what happens when user enter the information from webpage. All the logics are written over here.For eg: If user entered name through the webpage it should get stored in database mysql or mongodb.
Back-end code can be written in any programming language like Python or Java.
1. Database:
A database is an organized collection of structured information, or data.
For example: Employee userid is stored in a database in any organization.
We have multiple databases available like mysql,cassandra or mongodb.

For our usecase, we will understand a brief on mysql database:
MySQL is a widely used relational database management system (RDBMS).A relational database is a collection of information that organizes data in predefined relationships where data is stored in one or more tables (or "relations") of columns and rows, making it easy to see and understand how different data structures relate to each other.
RDMS examples are MySQL, PostgreSQL, MariaDB, Microsoft SQL Server, and Oracle Database.
MySQL is free and open-source.
MySQL is ideal for both small and large applications.
Few MYSQL Queries:
Test it over here : <https://www.w3schools.com/MySQL/trymysql.asp?filename=trysql_select_all>
-> CREATE DATABASE devops-techstack ; =create a new database with name devops-techstack.
->  show databases; --> Show all databases.
-> use devops-techstack; = It will use devops-techstack database to run any query.
-> CREATE TABLE users(name varchar(20),email varchar(40));  -->Create a table user with columns name and email.
 select * from users; -->Show all the columns from users table.
INSERT INTO users(name, email) VALUES(%s, %s)",("devops","devops@gmail.com")   -- Insert a entry in table users.

1. Sign up to  the AWScloud account to create virtual machines.
2. Install Putty to connect virtual machines.
3. Run on the Vagrant machine Python web app.
An IP address is a unique address that identifies a device on the internet or a local network. IP stands for "Internet Protocol," which is the set of rules governing the format of data sent via the internet or local network.
A port number is a way to identify a specific process to which an internet or other network message is to be forwarded when it arrives at a server.
