 [Stash](Git_Stages_1Stash) **-** [Workspace](Git_Stages_2Workspace) **-** [Index](Git_Stages_3Index) **-** [Local Repo](Git_Stages_4LocalRepo) **-** [Upstream Repo](Git_Stages_5UpstreamRepo) 

A directory named **.git** that contains all of your necessary repository files — a Git repository skeleton. The local repository has exactly the same features and functionality as any other Git repository.

### Actions
 - [reset soft head](Git_Commands_ResetSoftHead.md) | [Local Repo](Git_Stages_4LocalRepo) 
 - [diff](Git_Commands_Diff.md) | [Workspace](Git_Stages_2Workspace) **--** [Index](Git_Stages_3Index) 
 - [commit all](Git_Commands_CommitAll.md) | [Workspace](Git_Stages_2Workspace) **-->** [Local Repo](Git_Stages_4LocalRepo) 
 - [checkout](Git_Commands_Checkout.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [reset](Git_Commands_Reset.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [switch](Git_Commands_Switch.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [merge](Git_Commands_Merge.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [rebase](Git_Commands_Rebase.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [cherry-pick](Git_Commands_Cherry-pick.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [revert](Git_Commands_Revert.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [diff cached](Git_Commands_DiffCached.md) | [Index](Git_Stages_3Index) **--** [Local Repo](Git_Stages_4LocalRepo) 
 - [commit](Git_Commands_Commit.md) |  [Index](Git_Stages_3Index) **-->** [Local Repo](Git_Stages_4LocalRepo) 
 - [commit amend](Git_Commands_CommitAmend.md) |  [Index](Git_Stages_3Index) **-->** [Local Repo](Git_Stages_4LocalRepo) 
 - [log](Git_Commands_Log.md) | [Local Repo](Git_Stages_4LocalRepo) 
 - [diff commit vs commit](Git_Commands_CommitvsCommit.md) | [Local Repo](Git_Stages_4LocalRepo) 
 - [branch](Git_Commands_Branch.md) | [Local Repo](Git_Stages_4LocalRepo) 
 - [branch delete](Git_Commands_BranchDelete.md) | [Local Repo](Git_Stages_4LocalRepo) 
 - [branch track](Git_Commands_BranchTrack.md) | [Local Repo](Git_Stages_4LocalRepo) **<--** [Upstream Repo](Git_Stages_5UpstreamRepo) 
 - [fetch](Git_Commands_Fetch.md) | [Local Repo](Git_Stages_4LocalRepo) **<--** [Upstream Repo](Git_Stages_5UpstreamRepo) 
 - [push](Git_Commands_Push.md) | [Local Repo](Git_Stages_4LocalRepo) **-->** [Upstream Repo](Git_Stages_5UpstreamRepo) 
 - [stash branch](Git_Commands_StashBranch.md) | [Stash](Git_Stages_1Stash) **-->** [Local Repo](Git_Stages_4LocalRepo) 

#git 