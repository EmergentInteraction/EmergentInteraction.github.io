@echo off
rem cd /d "%~dp0"
rem git --git-dir=.git --work-tree=_site add --all
rem git --git-dir=.git --work-tree=_site commit -m "autogen: update site1"
rem git --git-dir=.git --work-tree=_site push code --force
rem rmdir _site /s /q
call bundle exec jekyll build
git --git-dir=.git --work-tree=_site add --all
git --git-dir=.git --work-tree=_site commit -m "autogen: update site2"
git --git-dir=.git --work-tree=_site push --force
