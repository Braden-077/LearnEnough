# This is a list of all commads that were run during the Learn Enough Command Line tutorial. Each line represents a command
echo hello
echo 'goodbye'
echo "goodbye"
echo hello, goodbye
echo "hello, goodbye"
echo 'hello
'
# previous command is intentionally broken, as per instructed in the tutorial. ⌃C (Ctrl + C) fixed this.
man echo
man man 
echo -n hello
echo "From fairest creatures we desire increase,"
echo "FRom fairest creatures we desire increase,"
clear
exit
# new tab created here (As instructed in exercise 1.6.1)
echo 'hello'
exit
echo 'use "man echo"'
man sleep
sleep 5
sleep 5000
# Ctrl + C was used to get out of this command instead of waiting
echo "From fairest creatures we desire increase,"
echo "From fairest creatures we desire increase," > sonnet_1.txt
cat sonnet_1.txt
echo "That thereby beauty's Rose might never die," >> sonnet_1.txt
echo "From fairest creatures we desire increase," > sonnet_1_lower_case.txt
echo "That thereby beauty's rose might never die," >> sonnet_1_lower_case.txt
echo "From fairest creatures we desire increase," > line_1.txt
echo "That thereby beauty's Rose might never die," > line_2.txt
echo line_1.txt > sonnet_1_copy.txt
echo line_2.txt >> sonnet_1_copy.txt
diff sonnet_1_copy sonnet_1
cat line_2.txt line_1.txt > sonnet_1_reversed.txt
ls foo
touch foo
ls foo
ls *.txt
ls -l *.txt
ls -rtl
echo "*.txt" > .gitignore
cat .gitignore
ls -a
echo "test text" > test
mv test test_file.txt
ls 
cp test_file second_text.txt
rm second_text.txt
ls second_test.txt
echo "hello, world" > foo.txt
cp foo.txt bar.txt
diff foo.txt bar.txt
cat foo.txt > baz.txt
cat foo.txt bar.txt > quux.txt
echo 'FRom faireſt creatures we deſire increaſe,
That thereby beauties Roſe might neuer die,
But as the riper ſhould by time deceaſe,
His tender heire might beare his memory:
But thou contracted to thine owne bright eyes,
Feed’ſt thy lights flame with ſelfe ſubſtantiall fewell,
Making a famine where aboundance lies,
Thy ſelfe thy foe,to thy ſweet ſelfe too cruell:
Thou that art now the worlds freſh ornament,
And only herauld to the gaudy ſpring,
Within thine owne bud burieſt thy content,
And tender chorle makſt waſt in niggarding:
   Pitty the world,or elſe this glutton be,
   To eate the worlds due,by the graue and thee.' > sonnet_1_complete.txt
cat sonnet_1_complete.txt
touch foo 
mv foo bar
cp bar baz
rm ba*
which curl 
curl -OL https://cdn.learnenough.com/sonnets.txt
ls -rtl
echo 'foo'
!! 
curl -I https://www.learnenough.com/
ls -l sonnets.txt
ls -hl sonnets.txt
ls -hartl sonnets.txt
head sonnets.txt
tail sonnets.txt
wc sonnets.txt
head sonnets.txt > sonnets_head.txt
wc sonnets_head.txt
head sonnets.txt | wc 
tail sonnets.txt | wc
man head
head -n 18 sonnets.txt
head -n 18 sonnets.txt | tail -n 14
echo $SHELL
ping learnenough.com > learnenough.log
# new terminal tab opened for next command
tail -f learnenough.log
Ctrl + C # both tabs were stuck so Crtl C is used to get them working again
less sonnets.txt
# then once in the search using less type '/rose' to search for lines containing the word 'rose'
grep All sonnets.txt | wc
grep rose sonnets.txt 
grep rose sonnets.txt | wc
man grep
# use search like less with '/case' to find option -i for ignoring word casings.
grep -i rose sonnets.txt | wc
grep ' ro[a-z]*s ' sonnets.txt
man grep # search '/count' to find the option -c to find count
less sonnets.txt # then 2203G (capitalization matters)
grep 'rose' sonnets.txt| head -n 1
grep 'Rose' sonnets.txt
grep 'Rose' sonnets.txt | grep -v 'rose' | wc  
history | less # then 17G to see 17th command
history | wc
history | grep curl
touch /opt/foo
sudo touch /opt/foo
ls -l /opt/foo
rm -f /opt/foo
sudo !! 
pwd 
mkdir text_files
mv *.txt text_files/
ls text_files/
ls -d text_files/
ls -ld text_files/
cd text_files/
pwd 
ls 
mkdir -p foo/bar
ls | grep o
cd ..
pwd
cd -
cd -
mkdir second_directory
cd second_directory
ls
cp ~/Github/LearnEnough/command_line/text_files/sonnets.txt .
ls 
cd 
cd ~Github/LearnEnough/command_line/text_files
cd ..
cd second_directory
cd ..
cd text_files
touch nil
cd ..
rm text_files/nil
mkdir foo
mv foo/ bar/
cd foo/
cd bar/
cd ..
mv bar foo
cd foo/
cd ..
mkdir foobar
cd foobar
cp -r ../text_files .
ls
cd ..
rmdir second_directory
rm -rf second_directory/
cd text_files
mkdir foo
cd foo
echo sesquipedalian > long_word.txt
cd ..
cd ..
grep -r sesquipedalian text_files
grep -ri sesquipedalian text_files
mkdir foo
# error occurred 
rm -rf foo
mkdir foo
cd foo
mkdir bar
mv bar baz
cp -r ../text_files .
ls
cd baz
cp -r ../text_files/ .
ls
rm -rf foo
ls
mkdir foo && cd foo && echo baz > bar && cat bar && cd ..
!! # expected error due to exercise testing out the &&
