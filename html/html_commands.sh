mkdir -p repos/sample_website
# Below are the links to Github pages for this Tutorial that work.
# https://github.com/Braden-077/LearnEnough
# https://braden-077.github.io/LearnEnough/README.md
cd repos/sample_website
open index.html 
git commit -am 'Add a short paragraph'
git push
git commit -am "Convert index page to fully valid HTML"
git push
mkdir images
curl -o images/kitten.jpg -L https://cdn.learnenough.com/kitten.jpg
git add -A 
git commit -m 'Add content and some images'
git push 
curl -o images/small_twitter_logo.png \
>  -L https://cdn.learnenough.com/small_twitter_logo.png # Note: do not type the > symbol, your machine will automatically do this.
touch tags.html
open tags.html 
curl -o images/storm_trooper_tagged.jpg \
> -L https://cdn.learnenough.com/storm_trooper_tagged.jpg # Again, do not type the > symbol your machine will automatically do this.
git add -A 
git commit -m 'Add a tags page'
git push 
curl -o images/sperm_whales.jpg \
>      -L https://cdn.learnenough.com/sperm_whales.jpg
curl -o images/moby_dick.png -L https://cdn.learnenough.com/moby_dick.png
open moby_dick.html
git add -A 
git commit -m 'Add a Moby Dick page and a menu'
git push
git add -A 
git commit -m 'Chapter 4.6.1'
git push