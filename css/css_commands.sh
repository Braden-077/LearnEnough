touch index.html
touch css_commands.sh
open index.html
# commands related to git init were skippped due to git tutorial having been previously completed.
git add .
git commit -m 'chapter 1 of CSS'
git add .
git commit -m 'Chapter 1 completion'
git add .
git commit -m 'Chapter 2.1-2.2 completion'
git add .
git commit -m 'Complete chapter 2 of CSS'
git add .
git commit -m 'Chapter 3.1-3.5 completion'
git add .
git commit -m 'CSS chapter 3.6-3.8 completion'
git add .
git commit -m 'Chapter 4.1 completion'
git add . 
git commit -m 'Chapter 4.6 completion'
git push
bundle exec jekyll serve --port $PORT --host $IP
# http://localhost:4000
mkdir _layouts
cp index.html _layouts/default.html
touch _layouts/test.html 
touch tested.html 
bundle exec jekyll serve --port 1234 --host $IP
# http://localhost:1234/
mkdir css 
touch css/main.css
touch css/test.css 
mv css/test.css css/reset.css
mkdir _includes
touch _includes/head.html
touch _includes/header.html
git add .
git commit -m 'Chapter 5 - Jekyll'
git push 
git add . 
git commit -m 'update css and README.md'
git push 
mkdir images
curl -o images/logo.png -L https://cdn.learnenough.com/le-css/logo.png
touch _includes/footer.html
touch _includes/nav-links.html
git add .
git commit -m 'finish initial layout'
git push 