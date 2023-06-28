#! /bin/bash

# declaring variables
name='Halee Tisler'
occupation='Software Developer'
email='haleetisler@gmail.com'
linkedIn='linkedin.com/in/halee-tisler/'
gitHub='github.com/halee-t'
yes='y'
no='n'

borderTop="┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
borderBottom="┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

#riddles array
declare -a riddleQ=("The more you take, the more you leave behind. What am I?"
                      "I am an odd number. Take away a letter and I become even. What number am I?"
                      "Poor people have it. Rich people need it. If you eat it you die. What is it?"
                      "What is always on its way but never arrives?"
)

declare -a riddleA=("Footsteps" "Seven" "Nothing" "Tomorrow")

#welcome
echo "Hello! You have stumbled along $name's portfolio!"
echo "Here you will learn about $name's experience, skills, and hobbies."
echo "However, you must answer riddles along the way ..."
read -p "Would you like to play? y/n: " play

if [[$play = $yes]]
then
  #stuff
  echo "Thanks for playing! Let's stay in touch :)"
elif [[$play = $no]]
then
  echo "Come back soon! Let's stay in touch :)"
else
  echo "Invalid Response"
fi


#riddle 1 unlocks experience

# printing contact info
echo "$borderTop"
echo "  $name"
echo "  $occupation"
echo ""
echo "  $email"
echo "  $gitHub"
echo "  $linkedIn"
echo "$borderBottom"




