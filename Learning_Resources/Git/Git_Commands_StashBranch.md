Creates and checks out a new branch named _branch name_ starting from the commit at which the _stash_ was originally created, applies the changes recorded in _stash_ to the new working tree and index.  
If that succeeds, and _stash_ is a reference of the form stash@{_revision_}, it then drops the _stash_. When no _stash_ is given, applies the latest one.  
This is useful if the branch on which you ran `git stash push` has changed enough that `git stash apply` fails due to conflicts. Since the stash is applied on top of the commit that was `HEAD` at the time `git stash` was run, it restores the originally stashed state with no conflicts.

```
git stash branch <branchname> [stash]
```

[Stash](Git_Stages_1Stash) **-->** [Local Repo](Git_Stages_4LocalRepo)

#git  #howto 