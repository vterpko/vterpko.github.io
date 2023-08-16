 [Stash](Git_Stages_1Stash) **-** [Workspace](Git_Stages_2Workspace) **-** [Index](Git_Stages_3Index) **-** [Local Repo](Git_Stages_4LocalRepo) **-** [Upstream Repo](Git_Stages_5UpstreamRepo) 

A **staging area** for file changes to commit. Before you “commit” (or checkin) files, you need to first add them to the index. This is also called "**current directory cache**", "**staging area**", "**cache**" or "**staged files**".

### Actions
 - [status](Git_Commands_Status.md) | [Workspace](Git_Stages_2Workspace) **--** [Index](Git_Stages_3Index) 
 - [diff](Git_Commands_Diff.md) | [Workspace](Git_Stages_2Workspace) **--** [Index](Git_Stages_3Index) 
 - [add](Git_Commands_Add.md) | [Workspace](Git_Stages_2Workspace) **-->** [Index](Git_Stages_3Index) 
 - [rm](Git_Commands_Rm.md) | [Workspace](Git_Stages_2Workspace) **-->** [Index](Git_Stages_3Index) 
 - [mv](Git_Commands_Mv.md) | [Workspace](Git_Stages_2Workspace) **-->** [Index](Git_Stages_3Index) 
 - [reset HEAD](Git_Commands_ResetHEAD.md) | [Index](Git_Stages_3Index) 
 - [diff cached](Git_Commands_DiffCached.md) | [Index](Git_Stages_3Index) **--** [Local Repo](Git_Stages_4LocalRepo) 
 - [commit](Git_Commands_Commit.md) |  [Index](Git_Stages_3Index) **-->** [Local Repo](Git_Stages_4LocalRepo) 
 - [commit amend](Git_Commands_CommitAmend.md) |  [Index](Git_Stages_3Index) **-->** [Local Repo](Git_Stages_4LocalRepo) 

#git 