#!/bin/bash
echo "--- CENG 111 Quiz 4 Grade Calculator ---"
echo "Enter your score for each question based on the cheat sheet."
echo "Press ENTER after typing each number."
echo "------------------------------------------"

total=0

echo "Question 1 (8 questions, 4 pts each)"
read -p "Q1.1 (0 or 4): " q11
read -p "Q1.2 (0 or 4): " q12
read -p "Q1.3 (0 or 4): " q13
read -p "Q1.4 (0 or 4): " q14
read -p "Q1.5 (0 or 4): " q15
read -p "Q1.6 (0 or 4): " q16
read -p "Q1.7 (0 or 4): " q17
read -p "Q1.8 (0 or 4): " q18
let "total += q11 + q12 + q13 + q14 + q15 + q16 + q17 + q18"

echo ""
echo "Question 2 (4 questions, 5 pts each)"
read -p "Q2.1 (0 or 5): " q21
read -p "Q2.2 (0 or 5): " q22
read -p "Q2.3 (0 or 5): " q23
read -p "Q2.4 (0 or 5): " q24
let "total += q21 + q22 + q23 + q24"

echo ""
echo "Question 3 (5 questions, 5 pts each)"
read -p "Q3.1 (0 or 5): " q31
read -p "Q3.2 (0 or 5): " q32
read -p "Q3.3 (0 or 5): " q33
read -p "Q3.4 (0 or 5): " q34
read -p "Q3.5 (0 or 5): " q35
let "total += q3
