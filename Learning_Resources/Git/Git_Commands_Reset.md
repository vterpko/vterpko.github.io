Matches the workspace and index to the local tree. WARNING: Any changes to tracked files in the working tree since commit are lost. Use this if merging has resulted in conflicts and you'd like to start over. Pass `ORIG_HEAD` to undo the most recent successful merge and any changes after.
Reset local repo and working tree to match a remote-tracking branch. Use `reset ‑‑hard origin/main` to throw away all commits to the local main branch. Use this to start over on a failed merge.

```
git reset --hard [origin/branch]
```

#git  #howto 