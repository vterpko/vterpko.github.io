 [Stash](Git_Stages_1Stash) **-** [Workspace](Git_Stages_2Workspace) **-** [Index](Git_Stages_3Index) **-** [Local Repo](Git_Stages_4LocalRepo) **-** [Upstream Repo](Git_Stages_5UpstreamRepo) 

Local checkout of your code. Also called '**working copy**', '**working tree**' or just '**checkout**'. It's any directory on your filesystem that has a repository associated with it. It includes all the files and sub-directories in that directory.

### Actions
 - [status](Git_Commands_Status.md) | [Workspace](Git_Stages_2Workspace) **--** [Index](Git_Stages_3Index) 
 - [diff](Git_Commands_Diff.md) | [Workspace](Git_Stages_2Workspace) **--** [Index](Git_Stages_3Index) 
 - [add](Git_Commands_Add.md) | [Workspace](Git_Stages_2Workspace) **-->** [Index](Git_Stages_3Index) 
 - [rm](Git_Commands_Rm.md) | [Workspace](Git_Stages_2Workspace) **-->** [Index](Git_Stages_3Index) 
 - [mv](Git_Commands_Mv.md) | [Workspace](Git_Stages_2Workspace) **-->** [Index](Git_Stages_3Index) 
 - [commit all](Git_Commands_CommitAll.md) | [Workspace](Git_Stages_2Workspace) **-->** [Local Repo](Git_Stages_4LocalRepo) 
 - [checkout](Git_Commands_Checkout.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [reset](Git_Commands_Reset.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [switch](Git_Commands_Switch.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [merge](Git_Commands_Merge.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [rebase](Git_Commands_Rebase.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [cherry-pick](Git_Commands_Cherry-pick.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [revert](Git_Commands_Revert.md) | [Workspace](Git_Stages_2Workspace) **<--** [Local Repo](Git_Stages_4LocalRepo) 
 - [clone](Git_Commands_Clone.md) | [Workspace](Git_Stages_2Workspace) **<--** [Upstream Repo](Git_Stages_5UpstreamRepo) 
 - [pull](Git_Commands_Pull.md) | [Workspace](Git_Stages_2Workspace) **<--** [Upstream Repo](Git_Stages_5UpstreamRepo) 
 - [clean](Git_Commands_Clean.md) | [Workspace](Git_Stages_2Workspace) **<--**
 - [stash push](Git_Commands_StashPush.md) | [Stash](Git_Stages_1Stash) **<--** [Workspace](Git_Stages_2Workspace) 
 - [stash pop](Git_Commands_StashPop.md) | [Stash](Git_Stages_1Stash) **-->** [Workspace](Git_Stages_2Workspace) 
 - [stash apply](Git_Commands_StashApply.md) | [Stash](Git_Stages_1Stash) **-->** [Workspace](Git_Stages_2Workspace) 

#git 