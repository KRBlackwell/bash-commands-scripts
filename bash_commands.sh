#!/bin/bash

#find files not owned by the right group
find . -printf "%u:%g %p\n" | grep -v my_good_group
#or grep -v superuser when they need to be the one who owns files

#Find files that are a year old or more and 1gig in size or more.
find /my/user/path -mtime +365 -size +1G -exec ls -l {} +


#Compare all files in two directories with each other.
#This will tell you if all files in the directories are the same or not.
#The output will dump to a text file.
cd a_directory
diff -qr /subdir /other_subdir > compare_files_in_dirs.txt


#SVN
#To commit multiple files at once with the same message
svn changelist blah A.py B.py C.py D.py E.py
svn commit --changelist blah -m "Global header change discussed in meeting on 11/01/23. issues 65, 23"


#To look for changes in the repository on a date or between two dates. Verbose lists the file committed.
svn log $SVN --verbose -r {2021-02-14}


#The following will not show 2/13 or 2/15, only what's in-between. Verbose lists the file committed.
svn log $SVN --verbose -r {2021-02-13}:{2021-02-15}


#I can't stand the constant ding when I type in the terminal.
#     This removes it. If you're using something to connect, you might have to go into the
#     program's settings to make this change.
set bell-style none


#Check size of a specific mount in human readable format.
df -h | grep team_mount


#Make sure you're not eating up all the /tmp folder.
ls -ahtlr /tmp | grep my_username


#How much space are your folders taking up?
#     max-depth=1 will give you the size of a directory and its subdirectories, but
#          it won't print every single one out
#     2>/dev/null will output errors or permission denied to trash
#     sort -hr will display largest first
du -h /my/personal/directory --max-depth=1 2>/dev/null | sort -hr


#I like to print a random nice quote when I log in. 
#     I put this in my $HOME/.profile

arr=0
set nicearray
nicearray[$ARR]="Well done is better than well said.";ARR=$(($ARR+1))
nicearray[$ARR]="Always do your best. What you plant now, you will harvest later.";ARR=$(($ARR+1))
nicearray[$ARR]="You just cant beat the person who never gives up."
mynum=$(($RANDOM%($ARR+1)));
echo Quote of the day: ${nicearray[$mynum]}
unset ARR
