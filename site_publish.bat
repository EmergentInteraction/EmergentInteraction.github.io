@echo off
cd /d "%~dp0"
git --git-dir=.git --work-tree=_site add --all
git --git-dir=.git --work-tree=_site commit -m "autogen: update site1"
git --git-dir=.git --work-tree=_site push code --force
rmdir _site /s /q
call bundle exec jekyll build
git --git-dir=.git --work-tree=_site add --all
git --git-dir=.git --work-tree=_site commit -m "autogen: update site2"
git --git-dir=.git --work-tree=_site push --force
