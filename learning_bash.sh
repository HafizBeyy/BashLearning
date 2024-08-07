#! /usr/bin/bash
##echo "Yo i printed smt!"
##
#myVar="my variable!"
#echo $myVar
#
## Note the spaces, these are part of the syntax
#
#myAddition=$((12+23))
#echo $myAddition
#
## For decimal calculations, we can use bc command to get the output to a particular number of decimal places. 
#
## Where scale defines the number of decimal places required in the output.
#
#echo "scale=5;22/7" | bc
#
## In bash, we can take user input using the read command.
#
## To prompt the user with a custom message, use the -p flag.
#
#read -p "Type smt!" userInput
#echo "You just typed: $userInput"
#
##echo "Enter a numner"
##read a
#
##echo "Enter a numner"
##read b
#
##var=$((a+b))
##echo $var
#
## Comparison is used to check if statements evaluate to true or false. We can use the below shown operators to compare two statements:
#
## Operation 	Syntax 	Explanation
#
## Equality 	         num1 -eq num2
## Greater than equal to  num1 -ge num2
## Greater than           num1 -gt num2
## Less than equal to 	 num1 -le num2
## Less than 	         num1 -lt num2
## Not Equal to           num1 -ne num2
#
#read -p "Enter x" x
#read -p "Enter y" y
#	if [ $x -gt $y ]
#   then
#echo X is greater than Y
#	elif [ $x -lt $y ]
#   then
#echo X less than Y
#   	elif [ $x -eq $y ]
#   then
#echo X equals to Y
#   else
#echo Syntax Error!
#	fi
#
## In bash , we use seperate lines to spread code blocks 
## If one line used for different code blocks, ';' is required
#
## Wrong syntax , prints nothing
#myWar=hichaib echo $myWar
#
## Correct syntax
#myWarr=thatsright
#echo $myWarr
## Or
#myWarrr=withnoktalıvirgül;echo $myWarrr
#
## To create meaningful comparisons, we can use AND -a and OR -o as well.
#read -p "enter a" a; read -p "enter b" b
#if [$a -eq 20 -a $b -eq 20]
#then
#echo a and b both equal to 20
#elif [$a -eq 20 -o $b -eq 20]
#then
#echo one of a and b equals to 20
#else
#echo none of them equals to 20
#fi
#
## Loops in bash
#
#for i in {1..10}
#do
#echo $i
#done

# While loop
i=1
while [[ $i -le 10 ]] ; do
   echo "$i"
  (( i += 1 ))
done

# Reading file
LINE=1

while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
    ((LINE++))
   done < "sample_text.txt"
   
var=`df -h | grep tmpfs`
echo $var

How to get arguments for scripts from the command line

It is possible to give arguments to the script on execution.

 $@ represents the position of the parameters, starting from one.
for aferti in $@
do
echo You typed $aferti
echo "
-h or --help | prints this help page
-c or --copy | copies the content
"
done
