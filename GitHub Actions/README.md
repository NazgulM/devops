# Understanding GitHub actions

It is a continuous integration and continuous delivery (CI/CD)
platform.
It allows to automate your build, test, and deployment pipeline.

## GitHub Actions Use Case

You can create workflows that build and test every pull request to your repo, or deploy merged pull requests to production.
It lets you run workflows when other events happen in your repository.
For example, you can run a workflow to automatically add the appropriate labels whenever someone create a new issue in your repo.
gitHub provides Linux, Windows, and MacOs VM to un your workflows or you can host your own self-hosted runners in your own data center or cloud infrastructure.

## Components of GitHub Actions

Workflows - automated configurable process that will run one or more jobs. Workflows are defined by a YAML file checked in to you repo and will run when triggered by an event in your repo, or they can be triggered manually, or at a defined schedule.

Workflows are defined in the .github/workflows directory in a repo, and a repo can have multiple workflows, each of which can perform a different set of tasks. For example, you can have one workflow to build and test pull requests, another workflow to deploy application every time a release is created, and still another workflow that adds a label every time someone opens a new issue.

Events
An event is a specific activity in repo that triggers a workflow run. For example, activity can originate from GitHub when someone creates a pull request, open an issue, or pushes a commit to a repo.

Jobs
Job is a set of steps in a workflow that is executed on the same runner. Each step is either a shell script that will be executed.
You can configure a job's dependencies with other jobs.

Actions
An action is a custom application for the GitHub Actions platform that performs a complex but frequently repeated task.

Runner

A runner is a server that runs on your workflows when  they're are triggered. Each runner can run a single job at a time. Github provides Ubuntu, Linux, Microsoft Windows, and MacOs runners to run in your workflows, each workflow run executes in a fresh, newly-provisioned VM.
