# GIT

```
git init
```

1; The git init command creates a new Git repository. It can be used to convert an existing, un-versioned project to a Git repository or initialize a new, empty repository. Most other Git commands are not available outside of an initialized repository, so this is usually the first command you'll run in a new project.

```
git status
```
2; Unstage area (untrack) - Stage area - Commit area
Stash area or dump area (If you do not want to push, and want to save locally, keep it for the reference)

```
git add .
```

3; It will move the changes to the stage area, whatever the changes in untracked area it will move all files to stage area. This has be moved to stage area.

```
git commit -m"something"
```

4; Have to add reliable messages, that anyone can understand what is going here.When we want the changes to commit, history should be maintained, -m is for messages. 

```
git log
```
5; The git log command is Git's basic tool for exploring a repository's history. It's what you use when you need to find a specific version of a project or figure out what changes will be introduced by merging in a feature branch.

```
git rm
```
6; git rm command can be used to remove individual files or a collection of files. The primary function of git rm is to remove tracked files from the Git index. 

```
git restore
```
7; The "restore" command helps to unstage or even discard uncommitted local changes. For example if I rm file, delete the file, but didn't commit, I can restore this file

```
git revert commitID
```
8; It can be revert committed task

```
git stash
```
9; Save locally all changes on this directory

```
git stash pop
```
10; It will move back all the changes to the stage area

```
git stash list
```
11; it can be show all changes in stash area

```
git reset
```
12; reset is the command we use when we want to move the repository back to a previous commit , discarding any changes made after that commit . After the previous chapter, we have a part in our commit history we could go back to.

```
git branch branchName
git checkout -b branchName
```
13; First, create the branch, second one create the branch and checkout to this branch

.gitignore
14; A gitignore file specifies intentionally untracked files that Git should ignore. Files already tracked by Git are not affected; see the NOTES below for details. Each line in a gitignore file specifies a pattern. it's kind of predefined template. It can be chosen while creating the github repository, if I don't want to push my for example Python scripts cannot be pushed. 

```
git clone github repo
```
15; It allows download the particular repository. 

```
Create a local config
$ git config --local user.name "Local User"

# Create a global config
$ git config --global user.name "Global User"

# Create a system config
$ sudo git config --system user.name "System User"
# to verify the origin of your configuration :
git config --list --show-origin
```

```
git fetch
```
16; git fetch is a primary command used to download contents from a remote repository. git fetch is used in conjunction with git remote , git branch , git checkout , and git reset to update a local repository to the state of a remote. The git fetch command is a critical piece of collaborative git work flows.

```
git fetch --all
```
It will download all the changes from the website.

```
git fetch --all --prune
```
git fetch --prune is the best utility for cleaning outdated branches. It will connect to a shared remote repository remote and fetch all remote branch refs. It will then delete remote refs that are no longer in use on the remote repository.

```
git merge branchName main
```
