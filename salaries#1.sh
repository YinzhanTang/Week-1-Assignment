# 1. How many employees does the city have?
# Hint: wc
wc -l salaries.csv # count
echo "1. There are $(cat salaries.csv|wc -l) lines in this file.However, since the first row doesn't count, the number of employees should be $(cat salaries.csv|wc -l) minus 1. ">ANSWERS.txt
# print the output

# 2. How many full-time workers are there in the file?
# Hint: grep for ',F,' then use wc
grep ',F,' salaries.csv | # filter
    wc -l # count
echo "2. There are $(grep ',F,' salaries.csv | wc -l) full-time workers in the file."  >>ANSWERS.txt
# print the output

# 3. How many part-time workers are there in the file?
grep ',P,' salaries.csv | # filter
    wc -l # count
echo "3. There are $(grep ',P,' salaries.csv | wc -l) part-time workers in the file." >>ANSWERS.txt
# print the output

# 4. How many people work for the police department?
# Hint: grep for POLICE then use wc
grep 'POLICE' salaries.csv | # filter
    wc -l # count
echo "4. There are $(grep 'POLICE' salaries.csv | wc -l ) people work for the police department." >>ANSWERS.txt
# print the output

# 5. How many of them are detectives?
# Hint: grep for POLICE then grep for DETECTIVE then use wc
grep 'POLICE' salaries.csv > salaries1.csv # filter and save as new file
grep 'DETECTIVE' salaries1.csv | # filter again in the new file
    wc -l # count
echo "5. There are $(grep 'DETECTIVE' salaries1.csv | wc -l ) people work for the police department are detectives." >>ANSWERS.txt
# print the output

# 6. Which department has the most employees?
# Hint: see Scripts section of Command Line slides
cut -d, -f4 salaries.csv | # print departments column
sort | # sort (alpha)
uniq -c | # count each department
sort -n | # sort numeric (ascending)
tail -1 # print last 1 lines



echo "6. $(cut -d, -f4 salaries.csv | sort | uniq -c | sort -n | tail -1) department has the most employees." >>ANSWERS.txt
# print the output
