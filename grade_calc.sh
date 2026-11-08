#!/bin/bash
# Automated Grade Calculator for CENG 111 Quiz 4
# This script checks the actual files and directories to verify your answers.

echo "=========================================="
echo "  Automated Grade Checker Initializing... "
echo "=========================================="
total=0

# Question 1 Checks
echo -e "\n--- Question 1 Checks ---"
if [ -d "backup2/backup" ]; then 
    echo "✓ Q1.1: backup folder created (+8 pts)"; ((total+=8))
else echo "✗ Q1.1 Failed (Could not find backup2/backup)"; fi

if [ -f "backup2/backup/info.txt" ]; then 
    echo "✓ Q1.2: txt files copied (+8 pts)"; ((total+=8))
else echo "✗ Q1.2 Failed (txt files not found in backup)"; fi

if [ -f "backup2/backup/final_draft.txt" ] && [ ! -f "backup2/backup/draft.txt" ]; then 
    echo "✓ Q1.3: draft.txt renamed (+8 pts)"; ((total+=8))
else echo "✗ Q1.3 Failed (final_draft.txt missing or draft.txt not renamed)"; fi

if [ ! -d "empty_dir" ]; then 
    echo "✓ Q1.4: empty_dir removed (+8 pts)"; ((total+=8))
else echo "✗ Q1.4 Failed (empty_dir still exists)"; fi

# Question 2 Checks
echo -e "\n--- Question 2 Checks ---"
if [ "$(stat -c %a script_of_zahra.sh 2>/dev/null)" == "571" ]; then 
    echo "✓ Q2.1: script_of_zahra.sh permissions changed (+5 pts)"; ((total+=5))
else echo "✗ Q2.1 Failed (Permissions are not 571)"; fi

if [ -f "top_logs.txt" ] && [ "$(wc -l < top_logs.txt 2>/dev/null)" -eq 5 ]; then 
    echo "✓ Q2.2: top_logs.txt created correctly (+5 pts)"; ((total+=5))
else echo "✗ Q2.2 Failed (top_logs.txt missing or wrong line count)"; fi

if [ -f "bottom_logs.txt" ] && [ "$(wc -l < bottom_logs.txt 2>/dev/null)" -eq 3 ]; then 
    echo "✓ Q2.3: bottom_logs.txt created correctly (+5 pts)"; ((total+=5))
else echo "✗ Q2.3 Failed (bottom_logs.txt missing or wrong line count)"; fi

if grep -q "15" line_count.txt 2>/dev/null; then 
    echo "✓ Q2.4: line_count.txt is correct (+5 pts)"; ((total+=5))
else echo "✗ Q2.4 Failed (Could not find the number 15 in line_count.txt)"; fi

# Question 3 Checks
echo -e "\n--- Question 3 Checks ---"
if grep -q "large" large_images.txt 2>/dev/null; then 
    echo "✓ Q3.1: large_images.txt correct (+8 pts)"; ((total+=8))
else echo "✗ Q3.1 Failed (large files list missing or incorrect)"; fi

if grep -q "FAIL" failures.txt 2>/dev/null; then 
    echo "✓ Q3.2: failures.txt correct (+8 pts)"; ((total+=8))
else echo "✗ Q3.2 Failed (FAIL search results missing)"; fi

if [ -s "differences.txt" ]; then 
    echo "✓ Q3.3: differences.txt is not empty (+9 pts)"; ((total+=9))
else echo "✗ Q3.3 Failed (differences.txt is missing or empty)"; fi

# Question 4 Checks
echo -e "\n--- Question 4 Checks ---"
if [ -f "etc_reverse.txt" ]; then 
    echo "✓ Q4.1: etc_reverse.txt created (+5 pts)"; ((total+=5))
else echo "✗ Q4.1 Failed (etc_reverse.txt missing)"; fi

if [ -f "backup.tar.gz" ]; then 
    echo "✓ Q4.2: backup.tar.gz created (+5 pts)"; ((total+=5))
else echo "✗ Q4.2 Failed (tar archive missing)"; fi

if [ -d "secret_project" ] || [ -f "secret_project/data.txt" ]; then 
    echo "✓ Q4.3: old_archive extracted (+5 pts)"; ((total+=5))
else echo "✗ Q4.3 Failed (secret_project folder missing)"; fi

# Question 5 & 6 Checks
echo -e "\n--- Question 5 & 6 Checks ---"
if [ -L "shortcut_to_zahra" ]; then 
    echo "✓ Q5.1: Symlink shortcut_to_zahra created (+2 pts)"; ((total+=2))
else echo "✗ Q5.1 Failed (Symlink missing)"; fi

if grep -q "Zahra" combined_lists.txt 2>/dev/null; then 
    echo "✓ Q5.2/5.3: combined_lists.txt concatenated and appended (+4 pts)"; ((total+=4))
else echo "✗ Q5.2/5.3 Failed (combined_lists.txt missing or text not appended)"; fi

if [ ! -f "logs/server1/empty1.log" ]; then 
    echo "✓ Q6.1: empty log files deleted (+3 pts)"; ((total+=3))
else echo "✗ Q6.1 Failed (empty logs still exist)"; fi

if grep -q "user7" lucky_seven.txt 2>/dev/null; then 
    echo "✓ Q6.2: lucky_seven.txt extracted 7th line (+2 pts)"; ((total+=2))
else echo "✗ Q6.2 Failed (lucky_seven.txt missing or wrong data)"; fi

echo "=========================================="
echo " Final Score: $total / 100"
echo "=========================================="
