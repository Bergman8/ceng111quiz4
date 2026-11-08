#!/bin/bashCENG 111 Grade Calculatorecho "="
echo "       CENG 111 Grade Calculator         "
echo "="
echo "Enter how many parts you solved correctly for each question:"
echo ""read -p "Question 1 (out of 8) [4 pts each]: " q1
read -p "Question 2 (out of 4) [5 pts each]: " q2
read -p "Question 3 (out of 5) [5 pts each]: " q3
read -p "Question 4 (out of 3) [5 pts each]: " q4
read -p "Question 5 (out of 2) [4 pts each]: " q5Handle empty inputs by defaulting to 0q1=${q1:-0}
q2=${q2:-0}
q3=${q3:-0}
q4=${q4:-0}
q5=${q5:-0}Calculate total pointstotal=$(( (q1 * 4) + (q2 * 5) + (q3 * 5) + (q4 * 5) + (q5 * 4) ))echo ""
echo "-----------------------------------------"
echo "Your total score is: $total / 100"
echo "-----------------------------------------"if [ "$total" -ge 90 ]; then
echo "Grade: AA - Excellent work!"
elif [ "$total" -ge 80 ]; then
echo "Grade: BA/BB - Great job!"
elif [ "$total" -ge 70 ]; then
echo "Grade: CB/CC - Good pass."
elif [ "$total" -ge 60 ]; then
echo "Grade: DC/DD - Passed, but review the cheat sheet."
else
echo "Grade: FF - Don't worry, keep practicing!"
fi
echo "========================================="
