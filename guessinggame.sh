#!/usr/bin/env bash
#filename: guessinggame.sh

number_of_files=$(ls | wc -l)
echo "Guess the number of files in the current directory:"

read user_input

function checker {
    while [ $user_input -ne $number_of_files ]
    do
    if [ $user_input -gt $number_of_files ]
    then
        echo "Higher than the actual value! Please try again!"
        read user_input
    else
        echo "Lower than the actual value! Please try again!"
        read user_input
    fi
    done
}

checker

echo "Congratulations! You guessed the right number of files: $number_of_files !"

# guessinggame.sh should have the following behaviour:

# * When the program starts the user should be asked how many files are in the current directory, 
#  and then the user should be prompted for a guess. [DONE]
# * If the user's answer is incorrect the user should be advised that their guess was either too low or too high 
#  and then they should be prompted to try to guess again. [DONE]
# * If the user's guess is correct then they should be congratulated and the program should end. [DONE]
# * The program should not end until the user has entered the correct number of files in the current directory. [DONE]
# * The program should be able to be run by entering bash guessinggame.sh into the console. [DONE]
# * The program should contain at least one function, one loop, and one if statement.[DONE]
# * The program should be more than 20 lines of code but less than 50 lines of code. [DONE]
