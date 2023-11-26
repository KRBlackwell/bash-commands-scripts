# bash-commands-scripts
Bash commands and scripts that I frequently use.
## Where to use the commands
Some of the commands I use manually in the terminal. Some I create an alias for, and some are just something that prints in my .profile.\
I work in a place that uses Korn and Bash shell, so I put some shared things in my .profile because it gets called first for either shell.

## Favorite commands
* I love grep.
* My most used command is probably to check disk utilization.
~~~
du -h /my/personal/directory --max-depth=1 2>/dev/null | sort -hr
~~~
* I like to print a random nice quote when I log in. This is a separate script called in my $HOME/.profile
~~~
arr=0
set nicearray
nicearray[$ARR]="Well done is better than well said.";ARR=$(($ARR+1))
nicearray[$ARR]="Always do your best. What you plant now, you will harvest later.";ARR=$(($ARR+1))
nicearray[$ARR]="You just cant beat the person who never gives up."
mynum=$(($RANDOM%($ARR+1)));
echo Quote of the day: ${nicearray[$mynum]}
unset ARR
~~~
