mkdir lib
mkdir spec
touch Gemfile 
bundle install
git add .
git commit -m 'Initialize TDD tutorial'
git push 
git add .
git commit -m 'Monday tests and basic skills'
# Depending on test day, go into the directory. ie Monday - ./monday
cd monday # (tuesday, wednesday, thursday, friday) depending on day