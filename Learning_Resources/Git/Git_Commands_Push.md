Update the server with your commits across all branches that are *COMMON* between your local copy and the server. Local branches that were never pushed to the server in the first place are not shared.

```
git push
```
  
Push new (or existing) branch to remote repository.

```
git push <remote> <branch>
```

Push a branch to remote repository with a different name. _local_ is the local branch name, and _name_ is the branch name in the remote repository.

```
git push <remote> <local>:<name>
```

#git  #howto 