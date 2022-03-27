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
q
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
q 
# change to add h1 tag in index.html
git diff
git commit -am "Add an h1 tag"
# add a p tag into index.html
# add other text and headers into index.html
git diff
git commit -am "Add some HTML structure"
# add html title
git add -A 
git commit -m 'chapter 1 completion'
git push
# README file created
git pull
git push
# NOTE: make sure you're still within the [websites]
# to test this, run pwd and make sure it reads: /LearnEnough/git/repos/website
mkdir images
curl -o images/breaching_whale.jpg \
> -L https://cdn.learnenough.com/breaching_whale.jpg # NOTE: do not include the '>' your terminal will automatically create that for you.
git diff
git status
git add -A 
git commit -m 'Add an image'
git push
git log -p # this will put you in a less interface to easily search.
/DOCTYPE # Searches the log for when we added our DOCTYPE to our index.html
q 
touch .unwanted_DS_Store
git status 
echo .unwanted_DS_Store > .gitignore
cat .gitignore # Just to double check
git status
git add -A 
git commit -m 'add .gitignore'
git push
git branch 
git checkout -b about-page
git branch # notice anything different? You created a new branch and now you're on it!
cp index.html about.html
open about.html # After we change the about.html file.
git add -A && git commit -m "Add About page"
# Now we change the index.html too
git commit -am "Add a link to the About page"
git diff master # Note using main will change master to main, whatever you call your main git branch
git chekout master 
git checkout -b test-branch
touch test.txt 
git add -A 
git commit -m 'test branch'
git checkout master
git branch -d test-branch # NOTE: expect error
git branch -D test-branch
git branch # Test to make sure branch was truly deleted.
tail about.html
echo >> about.html
cat about.html
git add -A 
git status
git diff 
git checkout -f 
git status
git checkout -b test-branch 
echo about.html
git commit -am 'oops' 
git checkout master 
git branch -D test-branch
git log 
G 
q
git add -A 
git commit -m 'End of chapter 3'
# Note: git clone was skipped over, but understood due to errors with branching and repos within repos. Also note that the changes were added regardless. 
git add -A 
git commit -m 'Add link to tutorial site'
git push
git add -A 
git commit -m 'Change page heading'
curl -o images/polar_bear.jpg \
>                           -L https://cdn.learnenough.com/polar_bear.jpg # Note: again, do not put the > as your machine will do that for you.
git add -A 
git commit -m 'Add an image'
git add -A 
git commit -m 'Add necessary image alt'
git push 
git add -A 
git commit -m 'Use a longer image alt'
git push 
git config --global core.editor "code --wait"
git commit -a # quit for error 
git commit -a # Add polar bear attribution link
git checkout -b fix-trademark
git commit -am 'Fix trademark character display'
