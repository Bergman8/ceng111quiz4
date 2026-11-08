#!/bin/bash

CENG 111 Linux Quiz 4 Solution Script

echo "Running CENG 111 Linux Quiz 4 Solutions..."

Question 1 (8 parts)

mkdir backup2
mkdir backup2/backup
touch backup2/lab1.c
rmdir empty_dir
cp docs/*.txt backup2/backup/
mv backup2/backup/draft.txt backup2/backup/final_draft.txt
mv data.csv backup2/backup/
echo "backup complete" >> notes.txt

Question 2 (4 parts)

chmod 571 script_of_zahra.sh
head -n 5 log.txt > top_logs.txt
tail -n 3 log.txt > bottom_logs.txt
wc -l backup2/backup/data.csv > line_count.txt

Question 3 (5 parts)

find images -type f -size +1M > large_images.txt
grep -r "FAIL" logs/ > failures.txt
diff list1.txt list2.txt > differences.txt
ls /etc | sort -r > etc_reverse.txt
cat list1.txt list2.txt > combined_lists.txt

Question 4 (3 parts)

tar -czf backup.tar.gz backup2/backup
tar -xzf old_archive.tar.gz
ln -s script_of_zahra.sh shortcut_to_zahra

Question 5 (2 parts)

find logs -type f -empty -delete
sed -i '50d' formulas.txt

echo "Quiz 4 commands executed successfully!"
