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