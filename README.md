lazy-git
========

Script for automating the most common git tasks.
If you are lazy, this may be for you :)

Usage
-----

**Clone github repo**

Commands you want:

- `git clone https://github.com/MightyPork/lazy-git`

With LazyGit:

```
ghc MightyPork/lazy-git
```

**Check git status**

Commands you want:

- `git status`

With LazyGit:

```
g check
```

**Pull from origin**

Commands you want:
- ` git pull`

With LazyGit:

```
g pull
```

**Commit and push to origin**

Commands you want:

- `git status` (if no changes, stop here)
- `git add --all`
- `git commit -m "...."` (ask for message)
- `git push`

With LazyGit:

```
g send
```

`g send` is interactive, it shows you the changes and prompts for a message.
