<head>
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-8684781314803553"
     crossorigin="anonymous"></script>
</head>

[**HOME**](https://vterpko.github.io/)

{:toc}

# Bash CheatSheet

## Basics

```bash
set -x #Print commands as they are executed (debug mode)
set -u #Exit the script if any of the variables is unset
set -e #Exit the script if any error occurs
set -- one two three #Set positional arguments ($1 $2 $3)
```

### Command execution

```bash
echo 'This is the command before the line break'; echo 'This is the command after the line break'

echo 'This is the first command' && echo 'This command will execute only if the first one is successful'

echo 'This is the first command' || echo 'This command will execute only if the first one fails'

echo "This is command substitution $(echo 'New command')."

echo "This is also command substitution `echo 'New command'`."

echo "This is an arithmetic operation - $((3+3))"
```

### Redirections

```bash
echo "this text will be fed into grep" | grep -o "text"

cat <<_EOF | grep 't'
this is a
multiline
text dump
which
will be
fed into grep
_EOF

echo 'overwrite stdout to file.txt' > file.txt

cat <<_EOF > file.txt
this is a
multiline
text dump
which
will be
written to file.txt
_EOF

echo 'append stdout to file.txt' >> file.txt

cat <<_EOF >> file.txt
this is a
multiline
text dump
which
will be
appended to file.txt
_EOF

echo 'stderr to file.txt' 2> file.txt

echo 'stdout and stderr to file.txt'  &> file.txt

echo 'stderr to stdout' 2>&1

echo 'stderr into void' 2> /dev/null
```

### Comments

```bash
# this is a single line comment
```

### Quotations

```bash
echo 'These are the strict quotation marks which will output only the literal values'

	
echo "These are the non-strict quotation marks which will interpret the metacharacters"
```

### Functions

```bash
myFunc() {
	echo 'This is a function'
	echo 'Everything inside this block of code can be referenced with the word "func"'
}

function anotherFunc() {
	echo 'This is also a function'
}

function shortFunc {
  echo 'This is yet another function'
}
```

## Variables

### Variables Definition

```bash
variable="value" #Define a variable
variable=123 #Define a variable with a number value
```

### Variables Slicing

```bash
echo ${variable} #Print the variable as is
echo ${variable:0:2} || echo ${variable:num_var1:num_var2} #From index 0 print 2 indexes
echo ${variable::2} || echo ${variable::num_var} #From index 0 print 2 indexes
echo ${variable:6:5} || echo ${variable:num_var1:num_var2} #From index 6 print 5 indexes
echo ${variable::-2} || echo ${variable::-num_var} #From index 0 print until 2 last indexes
echo ${variable:(-4)} || echo ${variable::(-num_var)} #From last 4 indexes print till the end
echo ${variable:(-4):2} || echo ${variable::(-num_var1):num_var2} #From last 4 indexes print 2 indexes
echo ${#variable} #Print the variable length
```

### Variable Substitution

```bash
echo ${variable%suffix} #Remove suffix
echo ${variable%%suffix} #Remove long suffix
echo ${variable#prefix} #Remove prefix
echo ${variable##prefix} #Remove long prefix
echo ${variable/from/to} #Replace first match
echo ${variable//from/to} #Replace all
echo ${variable/%from/to} #Replace suffix
echo ${variable/#from/to} #Replace prefix
```

### Arrays Definition

```bash
array=("value1" "value2" "value3") #Define array
array=("${array[*]}" "value4") #Add a variable to an array
array+=("value5") #Add a variable to an array
array[2]="value" #Change a value
```

### Arrays Slicing

```bash
echo ${array[@]} #Print all values of an array as separate values
echo ${!array[@]} #Print all keys of an array as separate values
echo ${array[*]} #Print all values of an array as one space separated string
echo ${!array[*]} #Print all keys of an array as one space separated string
echo ${array[2]} || echo ${array[num_var]} #Print only index 2 of the array
echo ${array[-2]} || echo ${array[-num_var]} #Print only second to last index of the array
echo ${array[@]:2} || echo ${array[@]:num_var} #Print all the values starting at index 2
echo ${array[@]:2:3} || echo ${array[@]:num_var2:num_var3} #Print 3 values starting at index 2
echo ${#array[3]} || echo ${#array[num_var]} #Print the length of the 3rd element
echo ${#array[@]} #Print the number of elements
```

### Special Variables

```bash
$# #The number of arguments passed to the script
$* #All positional arguments passed to the script (as a single word)
$@ #All positional arguments passed to the script (as separate strings)
$1 #First argument passed to the script
$_ #Last argument of the previous command
$N #Nth argument passed to the script
$? #Exit status of last task
$! #PID of last background task
$$ #PID of shell
$0 #Filename of the shell script
${0%/*} #Directory of the shell script
$PS1 #The primary shell prompt
$PS2 #Interactive prompt
$PATH #The directories to search for binaries
$USER #The current user
$HOME #The user's home directory
$PWD #The current working directory
$OLDPWD #The directory I was before
$EDITOR #The default text editor
$BROWSER #The default browser
$SHELL #The path to the default shell
$XDG_CURRENT_DESKTOP #The current desktop environment
$HISTCONTROL #The variable to control history logging
```

## Conditions

### File conditions

```bash
[ -e file ] #file exists
[ -s file ] #file exists and its size is greater than zero
[ -r file ] #file is readable
[ -w file ] #file is writable
[ -x file ] #file is executable
[ -d file ] #file is directory
[ -h file ] #file is symlink
[ -b file ] #file is block
[ -c file ] #file is character
[ -f file ] #file is file
[ file1 -nt file2 ] #file1 is newer than file2
[ file1 -ot file2 ] #file1 is older than file2
[ file1 -ef file2 ] #file1 and file2 are equal files
```

### Strings

```bash
[ $num1 -eq $num2 ] #$num1 and $num2 are equal
[ $num1 -ne $num2 ] #$num1 and $num2 are not equal
[ $num1 -lt $num2 ] #$num1 is less than $num2
[ $num1 -le $num2 ] #$num1 is less than or equal to $num2
[ $num1 -gt $num2 ] #$num1 is greater than $num2
[ $num1 -ge $num2 ] #$num1 is greater than or equal to $num2
[ -z $var ] #$var is empty
[ -n $var ] #$var is not empty
[ string1 = string2 ] #string1 and string2 are equal
[ string1 != string2 ] #string1 and string2 are not equal
```

### Combinations

```bash
[ condition1 ] && [ condition2 ] #both conditions have to be true
[ condition1 ] || [ condition2 ] #any of the conditions has to be true
```

## Control Flows

### AND operator

```bash
echo 'This is the first command' && echo 'This command will execute only if the first one is successful'
```

### OR operator

```bash
echo 'This is the first command' || echo 'This command will execute only if the first one fails'
```

### If statement

```bash
if [ condition1 ]; then
		echo "Condition1 is true";
elif [ condition2 ]; then
		echo "Condition2 is true";
elif [ condition3 ]; then
		echo "Condition3 is true";
else
		echo "Non of the conditions are true";
fi
```

### Case statement

```bash
case $variable in
		"string1")
				echo "variable is equal to string1";
				;;
		"string2")
				echo "variable is equal to string2";
				;;
		"string3")
				echo "variable is equal to string3";
				;;
		*)
				echo "variable is neither of the strings";
				;;
esac
```

## Loops

### While

```bash
while [ condition ]; do
	echo "The condition is true."
done
```

```bash
while true; do
	echo "Will run until termination."
done
```

```bash
cat file.txt | while read line; do
	echo "${line}"
done
```

```bash
cat <<EOF | while read line; do
	echo "${line}"
done
> line1
> line2
> line3
> EOF
```

```bash
while read line; do
	echo "${line}"
done < file.txt
```

```bash
while read line; do
	echo "${line}"
done <<EOF
> line1
> line2
> line3
> EOF
```

### For

```bash
for var in ${array[*]}; do
	echo "${var}"
done
```

```bash
for number in {1..999..10}; do
	echo "${number}"
done
```

```bash
for number in {one,two,three,four,five}; do
	echo "${number}"
done
```

### Until

```bash
until [ condition ]; do
	echo "The condition is false."
done
```

### Select

```bash
select variable in ${array[*]}; do
	echo "${variable} selected"
	[ -e "${variable}" ] || break
done
```

### Break

```bash
for number in {1..10}; do
	while true; do
		echo "This is the most inner loop."
		[ condition ] && break
	done
done
```

```bash
while [ condition ]; do
	until [ condition ]; do
		while true; do
			echo "This is the most inner loop."
			[ condition ] && break 2
		done
	done
done
```

### Continue

```bash
for number in {1..10}; do
	while [ condition ]; do
		echo "This is the most inner loop."
		[ condition ] && continue
		echo "Some more text."
	done
done
```

```bash
until [ condition ]; do
	for number in {1..100..10}; do
		for file in /var/log/daemon.log*; do
			echo "This is the most inner loop."
			[ condition ] && continue 2
			echo "Some more text."
		done
	done
done
```