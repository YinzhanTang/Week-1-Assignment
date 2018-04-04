# 1. How many employees does the city have?
# Hint: wc
wc -1 salaries.csv # count

# 2. How many full-time workers are there in the file?
# Hint: grep for ',F,' then use wc
grep ',F,' salaries.csv | # filter
    wc -l # count

# 3. How many part-time workers are there in the file?
grep ',P,' salaries.csv | # filter
    wc -l # count

# 4. How many people work for the police department?
# Hint: grep for POLICE then use wc
grep 'POLICE' salaries.csv | # filter
    wc -l # count

# 5. How many of them are detectives?
# Hint: grep for POLICE then grep for DETECTIVE then use wc
grep 'POLICE' salaries.csv > # filter
    salaries1.csv # save as new file
grep 'DETECTIVE' salaries1.csv | # filter again in the new file
    wc -l # count

# 6. Which department has the most employees?
# Hint: see Scripts section of Command Line slides
cut -d, -f4 salaries.csv | # print departments column sort | # sort (alpha)
uniq -c | # count each department
sort -n | # sort numeric (ascending)
tail -1 # print last 1 lines
