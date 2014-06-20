lazy-git
========

Script for automating the most common git tasks.

Usage
-----

**Check status**

- `git status`

```
g check
```
  
**Pull from origin/master**
  
- ` git pull`

```
g pull
```

**Send to origin/master**
    
- `git status` (if no changes, stop here)
- `git add --all`
- `git commit -m "...."` (ask for message)
- `git push origin master`

```
g send
```
