#!/bin/bashFinal Environment Setup for Quiz 4 (Matched to point distribution)mkdir -p docs empty_dir images logs/server1 logs/server2 grades
touch script_of_zahra.sh data.csv log.txt list1.txt list2.txt notes.txt formulas.txtPopulate docstouch docs/draft.txt docs/info.txt docs/notes.md docs/readme.txtPopulate scriptecho '#!/bin/bash' > script_of_zahra.sh
echo 'echo "Hello Zahra"' >> script_of_zahra.shPopulate data.csv (15 lines)for i in {1..15}; do echo "user$i,email$i@test.com" >> data.csv; donePopulate log.txt (10 lines)for i in {1..10}; do echo "System log entry number $i" >> log.txt; donePopulate formulas.txt (100 lines)for i in {1..100}; do echo "Formula Line $i" >> formulas.txt; donePopulate images (creating fake large files)head -c 500K </dev/urandom > images/small.png
head -c 2M </dev/urandom > images/large1.png
head -c 3M </dev/urandom > images/large2.jpgPopulate logsecho "PASS: system booted" > logs/server1/boot.log
echo "FAIL: connection lost" > logs/server1/net.log
echo "WARN: high CPU" > logs/server2/cpu.log
echo "FAIL: disk space low" > logs/server2/disk.log
touch logs/server1/empty1.log logs/server2/empty2.log logs/server2/empty3.logPopulate lists for diffecho -e "apple\nbanana\ncherry" > list1.txt
echo -e "apple\nblueberry\ncherry" > list2.txtCreate a dummy archive to be extractedmkdir -p secret_project
echo "top secret data" > secret_project/data.txt
tar -czf old_archive.tar.gz secret_project
rm -rf secret_projectecho "Quiz 4 Environment setup complete. Ready for testing!"
