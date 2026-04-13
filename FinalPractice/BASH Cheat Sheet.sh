copyprompt
#!/bin/bash
srcDir=$1
if [ -z "$srcDir" ]; then
	read -p "Enter a source directory: " srcDir 
fi
if [ ! -d "$srcDir" ]; then
	echo "ERROR: $srcDir isn't valid!"
	exit 1
fi
dstDir=$2
if [ -z "$dstDir" ]; then
	read -p "Enter a destination directory: " dstDir
fi
if [ ! -d "$dstDir" ]; then
	read -p "ERROR: $dstDir isn't valid! Would you like to create one? " yn
	if [ "$yn" == "y" ]; then 
		mkdir -p "$dstDir"
		echo "New directory created."
		
	else
		echo "Leaving the script."
		exit 1
	fi
fi
for file in "$srcDir"
do 
	echo "$file"
	if [ -d "$file" ]; then
		continue
	fi
	echo "file"
	if [ -e "$file" ]
		read -p "Would you like to overwrite this file?" yn
		if [ "$yn" == "y" ]; then
			rm "$file"
		fi

		read -p "Copy this file? " yn
		if [ "$yn" == "y"  ]; then
			cp "$file"
		fi
done


directorscanner

#!/bin/bash

# this script will (recursively) scan a directory and report the number of files in each directory.

showFileCount() {
	# use the find command to display only files (skip directories)
	local nFiles=$(find "$1" -type f | wc -l)
	echo "$1" "fileCount=" $nFiles
}

scanDirectory() {
	if [ ! -d "$1" ]; then
		return
	fi
	for fileOrDir in "$1"/*; do
		if [ -d "$fileOrDir" ]; then
			showFileCount "$fileOrDir"
			scanDirectory "$fileOrDir"
		fi
	done
}

scanDirectory .



errorCheck.txt

!#/bin/bash

source=.						//assumes running scripts in current directory
if [ $# -gt 0 ]; then source=$1 ; fi			//$# counts typed arguments
for file in $source/*.sh; do				//Looks for all files with .sh
	if [[ "$file" =~ runAll ]]; then		//stops it from running itself if it's same name
		continue
	fi
	echo
	echo "*** Running script $file ..."
	rm -f error.txt
	bash -e -o pipefail $file > /dev/null 2> error.txt 	//-e exit -o pipefail = 1 fails, all.
	if [ -s error.txt ]; then				// 2> error.txt sends errors to file
		echo "*** Script $file FAILED :("
	else
		echo "!!! Success !!!"
	fi
done
echo



submitTar

#!/bin/bash

userName=$(whoami)
destinationFileName="Ex04-${userName}.tar"
destinationDirectory="/home/cli-shared"
cd "$destinationDirectory" || exit 1
if [ -e "${destinationDirectory}/${destinationFileName}" ]; then
        echo "Error: ${destinationFileName} is already an existing file!"
        exit 1
fi
tar -cvf "$destinationFileName" -C  "$HOME/shell-scripts" . || exit 1
cp  "$destinationFileName" "$destinationDirectory/" || exit 1
echo "File copied to ${destinationDirectory}"


wordlinecount

#! /bin/bash

#outputs word & line count 

SourceDir=sample-files
for file in $SourceDir/*; do
	echo "File	: " "$file"
	if [ -d "$file" ]; then
		contine
	fi
	echo -n " #words : "
	cat "$file" | wc -w
	echo -n " #lines : "
	cat "$file" | wc -l
	echo
done


Resources for assisting:

man                //information you need will be found
command --help     //information you need will be found

cat filename.txt   //display the full contents of the text file
head filename.txt  //display the first page, based on the size of your console window
tail filename.txt  // display the last page, based on the size of your console window
more filename.txt  //display the contents of the text file, one page at a time. Simply press the space bar to move to the next page.

File Linking - "ln"

 Because the contents of a file is separate from the directory containing the file name ... you can have
two files 'pointing' to the same content !
The "ln" command creates a Hard Link between two files
Two directory entries – file1 & file2 - point to the same content
If you modify one file, they both change
If you "rm file1", then file2 remains
Only when you "rm file2", does the content disappear

ACL – Access Control List
• "setfacl" is the command used to set the Access Control List
• "getfacl" will display the Access Control List for a file or directory


‘su’ and ‘sudo’
The ‘su’ command opens a shell with you as the root user
The password needed for this is the root user password
The ‘sudo’ command executes a single command, in the context of a
‘super user’.
The password needed for this is your user password
Only users who are members of the group “sudo” are able to use the
sudo command

tar
The usage for tar is
tar {options} {tar-file} {file-names}
Eg "tar cvf file.tar *"
• c create a tar file
• v use Verbose mode
• f output file name is specified next
• file.tar this is the output file name
• * the files that should be included


Adding a directory to your PATH
• When we execute shell scripts, we are accustomed to using
"./myScript.sh"
• This is needed because the current directory is NOT on the PATH, by
default (why would that be dangerous?)
• If you wanted to change this default, you could do that as follows:
PATH=$PATH:.


View running Processes
• ps shows all processes (jobs) for the current user
• ps -a shows all processes (jobs) for the all users
• ps -u shows additional (user) information (like ls -l)
• ps -x shows all processes not attached to a terminal
• top show all active processes (like Task Manager)
('q' to exit)
• kill stop a process


Regular Expressions
The search argument for grep can be just the word you are looking for.
It can also be a regular expression.
test[a-z]* matches all words starting with "test"
^ch matches all lines starting with "ch"
Regular expressions are used in grep, and in text editors, and in general
programming.
Patterns
^ matches the start of a line
$ matches the end of a line
. matches any single character
+ matches One or More instances of the previous pattern
* matches Zero or More instances of the previous pattern
[a-z] matches any single lowercase character
[-0-9] matches any single digit (including '-')
{n} matches the previous pattern exactly n times
( used to group patterns
\( matches the '(' character
Examples
[A-Z][0-9][A-Z]-[0-9][A-Z][0-9] Canadian Postal Code
\([0-9]{3}\) *[0-9]{3}-[0-9]{4} North American Phone Number


Extracting a specific column
cut is a command that allows us to extract specific parts from each line...
cut –c 1-9 output characters from 1 to 9
cut –c 10- output all characters after position 10
cut –d : -f 3 using “:” as a delimiter, output the 3rd field


PowerShell & Bash
Linux /Bash | Description | PowerShell
ls * | list files | get-childItem
touch | create a file, update timestamp | new-item
cp * | copy a file | copy-item
mv * | move or rename a file | move-item
rmdir * | remove a file | remove-item
ln | create a link | new-item -ItemType SymbolicLink
mkdir * | create a directory | new-item
rmdir * | remove a directory | remove-item -Force -Recurse
tar –cf | create a ZIP file | compress-archive
tar –xf | extract ZIP file | expand-archive
find | file search | get-childItem -filter "pattern"
cd * | change current directory | set-location
pwd * | show current directory | get-location



You should begin by extracting the Tar file, into your home directory as follows:
$ cd
$ tar -xvf /home/cli-shared/friday-exercise.tar
$ cd friday-exercise
$ ls -l
The directory contains a number of Bash Shell Scripts, and they don't work !
You should use vi or nano to edit each file in turn, read the description of what it should do,
and then fix the error(s)
Hint: if you cannot spot the problem right away, try running with Bash shell options enabled
-v verbose
-x xtrace
-e stop on first error



BASH: exit vs return
• When executing a script, the "exit" keyword (from anywhere) always
exists the script (even if used inside a function)
• The "return" keyword is used to return from a function, but will also
return from a script
• Both "exit" and "return" will accept an optional numeric arg for
the Return Status (0 = success)


The BASH "printf" command is very powerful
"printf" takes a format string,
including output specifiers(%s),
followed by a number of arguments
"printf" output does not, by default, include the 'newline'

A03 - printf
$ printf "format %s %s\n" arg1 arg2
format arg1 arg2
here we have two output specifiers( %s), and two arguments
$ printf "format %s\n" arg1 arg2
format arg1
format arg2
if you provide one specifier, and two arguments, you get two lines

$ printf "format %10s end\n" short longer
format short end
format longer end
if you include a width with your output specifiers, the output is fixed-
length, and right-justified
$ printf "format %-10s end\n" short longer
format short end
format longer end
if you provide width < 0, the output is left-justified



