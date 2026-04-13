Script started on 2026-01-12 19:59:44-04:00 [TERM="dumb" TTY="/dev/pts/0" COLUMNS="280" LINES="70"]
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ethan@EthanDesktop:~$ date
Mon Jan 12 19:59:57 AST 2026
ethan@EthanDesktop:~$ whoamui  i
ethan
ethan@EthanDesktop:~$ ls -l
total 20
-rw-r--r-- 1 ethan ethan 1235 Jan 12 19:58 a01-1.txt
-rw-r--r-- 1 ethan ethan    0 Jan 12 19:59 a01-2.txt
drwxr-xr-x 2 ethan ethan 4096 Jan 11 15:56 dir1
drwxr-xr-x 2 ethan ethan 4096 Jan 11 15:56 dir2
-rw-r--r-- 1 ethan ethan 2764 Jan 11 15:58 exercise1.txt
-rw-r--r-- 1 ethan ethan  543 Jan 11 15:59 test
ethan@EthanDesktop:~$ touch newfile
ethan@EthanDesktop:~$ ls
a01-1.txt  a01-2.txt  dir1  dir2  exercise1.txt  newfile  test
ethan@EthanDesktop:~$ rm newfile
ethan@EthanDesktop:~$ mkdir newdir
ethan@EthanDesktop:~$ ls
a01-1.txt  a01-2.txt  dir1  dir2  exercise1.txt  newdir  test
ethan@EthanDesktop:~$ rm -r newdir
ethan@EthanDesktop:~$ exit
exit

Script done on 2026-01-12 20:03:54-04:00 [COMMAND_EXIT_CODE="0"]
