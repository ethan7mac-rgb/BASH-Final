Script started on 2026-01-12 20:04:31-04:00 [TERM="dumb" TTY="/dev/pts/0" COLUMNS="280" LINES="70"]
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ethan@EthanDesktop:~$ cd ~
ethan@EthanDesktop:~$ datew 
\Mon Jan 12 20:04:46 AST 2026
ethan@EthanDesktop:~$ \ whoami
ethan
ethan@EthanDesktop:~$ man ls > ls-manual.txt
ethan@EthanDesktop:~$ cat ls-manual.txt
LS(1)                                                                                                                             User Commands                                                                                                                             LS(1)

NAME
       ls - list directory contents

SYNOPSIS
       ls [OPTION]... [FILE]...

DESCRIPTION
       List information about the FILEs (the current directory by default).  Sort entries alphabetically if none of -cftuvSUX nor --sort is specified.

       Mandatory arguments to long options are mandatory for short options too.

       -a, --all
              do not ignore entries starting with .

       -A, --almost-all
              do not list implied . and ..

       --author
              with -l, print the author of each file

       -b, --escape
              print C-style escapes for nongraphic characters

       --block-size=SIZE
              with -l, scale sizes by SIZE when printing them; e.g., '--block-size=M'; see SIZE format below

       -B, --ignore-backups
              do not list implied entries ending with ~

       -c     with -lt: sort by, and show, ctime (time of last change of file status information); with -l: show ctime and sort by name; otherwise: sort by ctime, newest first

       -C     list entries by columns

       --color[=WHEN]
              color the output WHEN; more info below

       -d, --directory
              list directories themselves, not their contents

       -D, --dired
              generate output designed for Emacs' dired mode

       -f     list all entries in directory order

       -F, --classify[=WHEN]
              append indicator (one of */=>@|) to entries WHEN

       --file-type
              likewise, except do not append '*'

       --format=WORD
              across -x, commas -m, horizontal -x, long -l, single-column -1, verbose -l, vertical -C

       --full-time
              like -l --time-style=full-iso

       -g     like -l, but do not list owner

       --group-directories-first
              group directories before files; can be augmented with a --sort option, but any use of --sort=none (-U) disables grouping

       -G, --no-group
              in a long listing, don't print group names

       -h, --human-readable
              with -l and -s, print sizes like 1K 234M 2G etc.

       --si   likewise, but use powers of 1000 not 1024

       -H, --dereference-command-line
              follow symbolic links listed on the command line

       --dereference-command-line-symlink-to-dir
              follow each command line symbolic link that points to a directory

       --hide=PATTERN
              do not list implied entries matching shell PATTERN (overridden by -a or -A)

       --hyperlink[=WHEN]
              hyperlink file names WHEN

       --indicator-style=WORD
              append indicator with style WORD to entry names: none (default), slash (-p), file-type (--file-type), classify (-F)

       -i, --inode
              print the index number of each file

       -I, --ignore=PATTERN
              do not list implied entries matching shell PATTERN

       -k, --kibibytes
              default to 1024-byte blocks for file system usage; used only with -s and per directory totals

       -l     use a long listing format

       -L, --dereference
              when showing file information for a symbolic link, show information for the file the link references rather than for the link itself

       -m     fill width with a comma separated list of entries

       -n, --numeric-uid-gid
              like -l, but list numeric user and group IDs

       -N, --literal
              print entry names without quoting

       -o     like -l, but do not list group information

       -p, --indicator-style=slash
              append / indicator to directories

       -q, --hide-control-chars
              print ? instead of nongraphic characters

       --show-control-chars
              show nongraphic characters as-is (the default, unless program is 'ls' and output is a terminal)

       -Q, --quote-name
              enclose entry names in double quotes

       --quoting-style=WORD
              use quoting style WORD for entry names: literal, locale, shell, shell-always, shell-escape, shell-escape-always, c, escape (overrides QUOTING_STYLE environment variable)

       -r, --reverse
              reverse order while sorting

       -R, --recursive
              list subdirectories recursively

       -s, --size
              print the allocated size of each file, in blocks

       -S     sort by file size, largest first

       --sort=WORD
              sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v), extension (-X), width

       --time=WORD
              select which timestamp used to display or sort; access time (-u): atime, access, use; metadata change time (-c): ctime, status; modified time (default): mtime, modification; birth time: birth, creation;

              with -l, WORD determines which time to show; with --sort=time, sort by WORD (newest first)

       --time-style=TIME_STYLE
              time/date format with -l; see TIME_STYLE below

       -t     sort by time, newest first; see --time

       -T, --tabsize=COLS
              assume tab stops at each COLS instead of 8

       -u     with -lt: sort by, and show, access time; with -l: show access time and sort by name; otherwise: sort by access time, newest first

       -U     do not sort; list entries in directory order

       -v     natural sort of (version) numbers within text

       -w, --width=COLS
              set output width to COLS.  0 means no limit

       -x     list entries by lines instead of by columns

       -X     sort alphabetically by entry extension

       -Z, --context
              print any security context of each file

       --zero end each output line with NUL, not newline

       -1     list one file per line

       --help display this help and exit

       --version
              output version information and exit

       The SIZE argument is an integer and optional unit (example: 10K is 10*1024).  Units are K,M,G,T,P,E,Z,Y,R,Q (powers of 1024) or KB,MB,... (powers of 1000).  Binary prefixes can be used, too: KiB=K, MiB=M, and so on.

       The  TIME_STYLE argument can be full-iso, long-iso, iso, locale, or +FORMAT.  FORMAT is interpreted like in date(1).  If FORMAT is FORMAT1<newline>FORMAT2, then FORMAT1 applies to non-recent files and FORMAT2 to recent files.  TIME_STYLE prefixed with 'posix-' takes
       effect only outside the POSIX locale.  Also the TIME_STYLE environment variable sets the default style to use.

       The WHEN argument defaults to 'always' and can also be 'auto' or 'never'.

       Using color to distinguish file types is disabled both by default and with --color=never.  With --color=auto, ls emits color codes only when standard output is connected to a terminal.  The LS_COLORS environment variable can change the  settings.   Use  the  dircol‐
       ors(1) command to set it.

   Exit status:
       0      if OK,

       1      if minor problems (e.g., cannot access subdirectory),

       2      if serious trouble (e.g., cannot access command-line argument).

AUTHOR
       Written by Richard M. Stallman and David MacKenzie.

REPORTING BUGS
       GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
       Report any translation bugs to <https://translationproject.org/team/>

COPYRIGHT
       Copyright © 2023 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

SEE ALSO
       dircolors(1)

       Full documentation <https://www.gnu.org/software/coreutils/ls>
       or available locally via: info '(coreutils) ls invocation'

GNU coreutils 9.4                                                                                                                   April 2024                                                                                                                              LS(1)
ethan@EthanDesktop:~$ head -2 ma    ls-manual.txt
LS(1)                                                                                                                             User Commands                                                                                                                             LS(1)

ethan@EthanDesktop:~$ head -2 ls-manual.txtethan@EthanDesktop:~$ heaethan@EthanDesktop:~$ head -2 ls-manual.txt  -2 ls-manual.txt  -2 ls-manual.txt  -2 ls-manual.txt t -2 ls-manual.txta -2 ls-manual.txti -2 ls-manual.txtl -2 ls-manual.txt

GNU coreutils 9.4                                                                                                                   April 2024                                                                                                                              LS(1)
ethan@EthanDesktop:~$ more ls-manual.txt
LS(1)                                                                                                                             User Commands                                                                                                                             LS(1)

NAME
       ls - list directory contents

SYNOPSIS
       ls [OPTION]... [FILE]...

DESCRIPTION
       List information about the FILEs (the current directory by default).  Sort entries alphabetically if none of -cftuvSUX nor --sort is specified.

       Mandatory arguments to long options are mandatory for short options too.

       -a, --all
              do not ignore entries starting with .

       -A, --almost-all
              do not list implied . and ..

       --author
              with -l, print the author of each file

       -b, --escape
              print C-style escapes for nongraphic characters

       --block-size=SIZE
              with -l, scale sizes by SIZE when printing them; e.g., '--block-size=M'; see SIZE format below

       -B, --ignore-backups
              do not list implied entries ending with ~

       -c     with -lt: sort by, and show, ctime (time of last change of file status information); with -l: show ctime and sort by name; otherwise: sort by ctime, newest first

       -C     list entries by columns

       --color[=WHEN]
              color the output WHEN; more info below

       -d, --directory
              list directories themselves, not their contents

       -D, --dired
              generate output designed for Emacs' dired mode

       -f     list all entries in directory order

       -F, --classify[=WHEN]
              append indicator (one of */=>@|) to entries WHEN

       --file-type
              likewise, except do not append '*'

       --format=WORD
              across -x, commas -m, horizontal -x, long -l, single-column -1, verbose -l, vertical -C

       --full-time
              like -l --time-style=full-iso

       -g     like -l, but do not list owner

       --group-directories-first
              group directories before files; can be augmented with a --sort option, but any use of --sort=none (-U) disables grouping

       -G, --no-group
              in a long listing, don't print group names

       -h, --human-readable
              with -l and -s, print sizes like 1K 234M 2G etc.

--More--(28%)       --si   likewise, but use powers of 1000 not 1024
--More--(29%)             
--More--(29%)       -H, --dereference-command-line
--More--(29%)              follow symbolic links listed on the command line
--More--(30%)             
--More--(30%)       --dereference-command-line-symlink-to-dir
--More--(31%)              follow each command line symbolic link that points to a directory
--More--(32%)             
--More--(32%)       --hide=PATTERN
--More--(32%)              do not list implied entries matching shell PATTERN (overridden by -a or -A)
--More--(33%)             
--More--(33%)       --hyperlink[=WHEN]
--More--(33%)              hyperlink file names WHEN
--More--(34%)             
--More--(34%)       --indicator-style=WORD
--More--(34%)              append indicator with style WORD to entry names: none (default), slash (-p), file-type (--file-type), classify (-F)
--More--(36%)             
--More--(36%)       -i, --inode
--More--(36%)              print the index number of each file
--More--(37%)             
--More--(37%)       -I, --ignore=PATTERN
--More--(37%)              do not list implied entries matching shell PATTERN
--More--(38%)             
--More--(38%)       -k, --kibibytes
--More--(38%)              default to 1024-byte blocks for file system usage; used only with -s and per directory totals
--More--(39%)             
--More--(39%)       -l     use a long listing format
--More--(40%)             
--More--(40%)       -L, --dereference
--More--(40%)              when showing file information for a symbolic link, show information for the file the link references rather than for the link itself
--More--(42%)             
--More--(42%)       -m     fill width with a comma separated list of entries
--More--(43%)             
--More--(43%)       -n, --numeric-uid-gid
--More--(43%)              like -l, but list numeric user and group IDs
--More--(44%)             
--More--(44%)       -N, --literal
--More--(44%)              print entry names without quoting
--More--(45%)             
--More--(45%)       -o     like -l, but do not list group information
--More--(45%)             
--More--(45%)       -p, --indicator-style=slash
--More--(46%)              append / indicator to directories
--More--(46%)             
--More--(46%)       -q, --hide-control-chars
--More--(47%)              print ? instead of nongraphic characters
--More--(47%)             
--More--(47%)       --show-control-chars
--More--(48%)              show nongraphic characters as-is (the default, unless program is 'ls' and output is a terminal)
--More--(49%)             
--More--(49%)       -Q, --quote-name
--More--(49%)              enclose entry names in double quotes
--More--(50%)             
--More--(50%)       --quoting-style=WORD
--More--(50%)              use quoting style WORD for entry names: literal, locale, shell, shell-always, shell-escape, shell-escape-always, c, escape (overrides QUOTING_STYLE environment variable)
--More--(53%)             
--More--(53%)       -r, --reverse
--More--(53%)              reverse order while sorting
--More--(53%)             
--More--(53%)       -R, --recursive
--More--(54%)              list subdirectories recursively
--More--(54%)             
--More--(54%)       -s, --size
--More--(54%)              print the allocated size of each file, in blocks
--More--(55%)             
--More--(55%)       -S     sort by file size, largest first
--More--(56%)             
--More--(56%)       --sort=WORD
--More--(56%)              sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v), extension (-X), width
--More--(57%)             
--More--(57%)       --time=WORD
--More--(58%)              select which timestamp used to display or sort; access time (-u): atime, access, use; metadata change time (-c): ctime, status; modified time (default): mtime, modification; birth time: birth, creation;
--More--(60%)             
--More--(60%)              with -l, WORD determines which time to show; with --sort=time, sort by WORD (newest first)
--More--(62%)             
--More--(62%)       --time-style=TIME_STYLE
--More--(62%)              time/date format with -l; see TIME_STYLE below
--More--(63%)             
--More--(63%)       -t     sort by time, newest first; see --time
--More--(63%)             
--More--(63%)       -T, --tabsize=COLS
--More--(64%)              assume tab stops at each COLS instead of 8
--More--(64%)             
--More--(64%)       -u     with -lt: sort by, and show, access time; with -l: show access time and sort by name; otherwise: sort by access time, newest first
--More--(66%)             
--More--(66%)       -U     do not sort; list entries in directory order
--More--(67%)             
--More--(67%)       -v     natural sort of (version) numbers within text
--More--(68%)             
--More--(68%)       -w, --width=COLS
--More--(68%)              set output width to COLS.  0 means no limit
--More--(69%)             
--More--(69%)       -x     list entries by lines instead of by columns
--More--(69%)             
--More--(69%)       -X     sort alphabetically by entry extension
--More--(70%)             
--More--(70%)       -Z, --context
--More--(70%)              print any security context of each file
--More--(71%)             
--More--(71%)       --zero end each output line with NUL, not newline
--More--(72%)             
--More--(72%)       -1     list one file per line
--More--(72%)             
--More--(72%)       --help display this help and exit
--More--(73%)             
--More--(73%)       --version
--More--(73%)              output version information and exit
--More--(73%)             
--More--(73%)       The SIZE argument is an integer and optional unit (example: 10K is 10*1024).  Units are K,M,G,T,P,E,Z,Y,R,Q (powers of 1024) or KB,MB,... (powers of 1000).  Binary prefixes can be used, too: KiB=K, MiB=M, and so on.
--More--(76%)             
--More--(76%)       The  TIME_STYLE argument can be full-iso, long-iso, iso, locale, or +FORMAT.  FORMAT is interpreted like in date(1).  If FORMAT is FORMAT1<newline>FORMAT2, then FORMAT1 applies to non-recent files and FORMAT2 to recent files.  TIME_STYLE prefixed with 'posix-' takes
--More--(79%)       effect only outside the POSIX locale.  Also the TIME_STYLE environment variable sets the default style to use.
--More--(81%)             
--More--(81%)       The WHEN argument defaults to 'always' and can also be 'auto' or 'never'.
--More--(82%)             
--More--(82%)       Using color to distinguish file types is disabled both by default and with --color=never.  With --color=auto, ls emits color codes only when standard output is connected to a terminal.  The LS_COLORS environment variable can change the  settings.   Use  the  dircol‐
--More--(85%)       ors(1) command to set it.
--More--(86%)             
--More--(86%)   Exit status:
--More--(86%)       0      if OK,
--More--(86%)             
--More--(86%)       1      if minor problems (e.g., cannot access subdirectory),
--More--(87%)             
--More--(87%)       2      if serious trouble (e.g., cannot access command-line argument).
--More--(88%)             
--More--(88%)AUTHOR       
--More--(88%)       Written by Richard M. Stallman and David MacKenzie.
--More--(89%)             
--More--(89%)REPORTING BUGS
--More--(89%)       GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
--More--(90%)       Report any translation bugs to <https://translationproject.org/team/>
--More--(91%)             
--More--(91%)COPYRIGHT    
--More--(91%)       Copyright © 2023 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
--More--(93%)       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.
--More--(94%)             
--More--(94%)SEE ALSO     
--More--(94%)       dircolors(1)
--More--(95%)             
--More--(95%)       Full documentation <https://www.gnu.org/software/coreutils/ls>
--More--(95%)       or available locally via: info '(coreutils) ls invocation'
--More--(96%)             
--More--(96%)GNU coreutils 9.4                                                                                                                   April 2024                                                                                                                              LS(1)
ethan@EthanDesktop:~$ 
ethan@EthanDesktop:~$ 
ethan@EthanDesktop:~$ 
ethan@EthanDesktop:~$ 
ethan@EthanDesktop:~$ 
ethan@EthanDesktop:~$ 
ethan@EthanDesktop:~$ 
ethan@EthanDesktop:~$ 
ethan@EthanDesktop:~$ 
ethan@EthanDesktop:~$ exit
exit

Script done on 2026-01-12 20:07:50-04:00 [COMMAND_EXIT_CODE="0"]
