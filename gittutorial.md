# What is Version Control System?

# Why we need a VCS?

# VCS Work Flow Categories
   - Centralized: VSS, CVS, Subversion
   - Distributed (centralized workflow is also supported here) : BitKeeper, git, mercurial, …

# Why git is better than Subversion
   - git is super fast
   - Full repository clone
   - Local history: you don't need to connect to the server when viewing the commit history
   - github: social coding
   - Other things: better compression, multi workflow support, …

# General Advice on Learning git
   - Try git and github 
   - Most graphical tool/plugsins suck. Please use the command-line git.
   - Find "how-to" on Google, StackOverflow, git book

#  Thumb-up Rules of Using git
   - "A clear development workflow is worth a bunch of version control systems." 
   - Modular design, avoid simultaneous source file editing by different members.
   - Head (latest) version at the master branch is always ready to deploy.
   - Modification is made on branches, then merged into master.
   - Stay on your own branch.
   - Do NOT edit files in .git directory unless you know exactly what you are doing.
   <!--- Insert a git revision graph -->

# git workflow on a stand-alone computer

# git workflow with a central repo

# gti workflow with multi repos
   <!--- All repos are peers-->

# git command
   - init
   - add
   - commit
   - tag
   - branch
   - Oh, there is a conflict!!!
   - "Time Machine": stash, stash list, checkout to a commit, checkout to master

# Exercise: git environment
<!--- Configure the git environment and create a github account (name, email, SSH key, refer to github's help. Please read github's manual carefully. More things you should know about SSH: public key, private key, passphrase for accessing the private key) -->

# Exercise: git local repo
<!--- Initialize a local project, EDIT, status, add, comiit, try .gitignore file -->

# Exercise: diff

# Exercise: branch
<!--- branch Create a new branch, EDIT, merge it into master -->

# Exercise: github
<!--- Create a new repo at github, push a local git repo to it and clone the github repo to other place locally. Hope you feel comfortable with ADD-COMMIT-PUSH-PULL-CLONE commands. -->

# Exercise: Remote Branch
<!--- git push GITHUB_URL BRACNNAME;   git push URL :BRANCH;  git merge BRANCH master -->

# Exercise: Conflicts

# Exercise: tag

# Exercise: Time Machine

