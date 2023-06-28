#!/bin/bash

# declaring contact info variables
name='Halee Tisler'
occupation='Software Developer'
email='haleetisler@gmail.com'
linkedIn='linkedin.com/in/halee-tisler/'
gitHub='github.com/halee-t'

# declaring portfolio variables
experience='I am a student at Oakland University studying to complete a Bachelors Degree in
Computer Science. I am currently fulfilling an internship at 365 Retail Markets as a
Software Developer Intern.'
skills='Languages: Java - Git - HTML - CSS - C# - C - Bash
Skills: GitFlow - Unit Testing - Agile
Tools: GitHub - IntelliJ - Postman - Jira'
hobbies='Outside of coding, my hobbies include fitness, board games, caring for my house plants,
and embroidery'

# play response variables
yes='y'
no='n'

# borders for my digital business card
borderTop="┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
borderBottom="┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

# variables for the arrays
index=0
length=2

#riddles array Q is questions, A is answers
declare -a riddleQ=("The more you take, the more you leave behind. What am I? "
                      "I am an odd number. Take away a letter and I become even. What number am I? "
                      "What is always on its way but never arrives? "
)
declare -a riddleA=("Footsteps" "Seven" "Tomorrow")

#welcome message
echo -e "\nHello! You have stumbled along $name's portfolio!\n"
echo "Here you will learn about $name's experience, skills, and hobbies."
echo -e "However, you must answer riddles along the way ...\n"
read -p "Would you like to play? y/n: " play

# player said yes to playing
if [[ "$play" = "$yes" ]]
then
  #riddle 1 unlocks experience
  echo ""
  read -p "Riddle 1: ${riddleQ[index]}" ans1
  while [[ $ans1 != ${riddleA[index]} ]] ; do
    read -p "Incorrect. (Hint: Answers must start with an uppercase letter) Try again: " ans1
  done

  #share experience and increment the index
  echo -e "\nCongratulations! You have unlocked EXPERIENCE:\n$experience"
  (( index += 1 ))
  if [[ $index -gt $length ]]
  then
    (( index = 0 ))
  fi

  #riddle 2 unlocks skills
  echo ""
  read -p "Riddle 2: ${riddleQ[index]}" ans2
  while [[ $ans2 != ${riddleA[index]} ]] ; do
    read -p "Incorrect. (Hint: Answers must start with an uppercase letter) Try again: " ans2
  done

  #share skills and increment the index
  echo -e "\nCongratulations! You have unlocked SKILLS:\n$skills"
  (( index += 1 ))
  if [[ $index -gt $length ]]
  then
    (( index = 0 ))
  fi

  #riddle 3 unlocks hobbies
  echo ""
  read -p "Riddle 3: ${riddleQ[index]}" ans3
  while [[ $ans3 != ${riddleA[index]} ]] ; do
      read -p "Incorrect. (Hint: Answers must start with an uppercase letter) Try again: " ans3
  done

  #share hobbies and exit
  echo -e "\nCongratulations! You have unlocked HOBBIES:\n$hobbies"

  echo -e "\nThanks for playing! Let's stay in touch :)"

#player said no to playing
elif [[ $play == $no ]]
then
  echo -e "\nCome back soon! Let's stay in touch :)"

# player entered and invalid response
else
  echo -e "\nInvalid Response"
fi

# printing contact info
echo "$borderTop"
echo "  $name"
echo "  $occupation"
echo ""
echo "  $email"
echo "  $gitHub"
echo "  $linkedIn"
echo "$borderBottom"