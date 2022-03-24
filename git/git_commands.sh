git help
git help -a | less
mkdir -p repos/website
ls -a 
ls .git
cat .git/config
cd repos/website
touch index.html
git status
git add -A
git status
git commit -m "Initialize git tutorial"
git log
touch foo
touch bar
git add foo
git status
git commit -m 'foo'
git add bar
git status
vimtutor # a vim tutor to help learn by using interactive exercises.
vim # creates a vim terminal. 
:! git commit # lets vim run an outside command 
i # puts you into insertion mode
add bar # the  commit message
:w # saves the vim terminal
:q # quits vim terminal
git log
echo "hello, world" > index.html
diff foo bar 
git diff
git commit -a -m "add context to index.html"
git diff --staged
touch baz
git commit -am 'add baz'
git add -A 
git commit -m 'add bazz'
git commit --amend
# change 'add bazz' to 'add baz'
:w
:q
git status
git log
# change to add h1 tag in index.html
git diff
