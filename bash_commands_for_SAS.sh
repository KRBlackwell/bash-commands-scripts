#!/bin/bash
#GREP sas listings and logs

#proc compare outputs listings that you can check with a script.
#     For example, if I'm expecting 5 datasets to be the same, and I do this:

grep 'Exactly Equal' my_sas_compare.lst #I like to use the whole sentence. Update it later.

#     grep will output 5 lines containing this statement, if there are 5
#     datasets that are equal.

#Similarly, if I want to check if it found unequal values, I do this:

grep 'Variables with Unequal Values' my_sas_compare.lst

#If i want to check for SAS errors, they are always in caps in the log file
# I typically avoid using the word "error" in comments or puts unless I want to see it here.

grep ERROR *.log

#This will print my error lines. It's very helpful if the log is long, or you just want 
#     to know if it ran without error.

#Other helpful SAS log words are the following:
#     *.log will look at any file with a .log extension

grep WARNING *.log

grep NOTE *.log

grep -i 'out of range' *.log

grep -i 'uninitialized' *.log
