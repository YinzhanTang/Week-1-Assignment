# Assignment 1: Welcome to the Command Line

Your main task this week is to install the software that you will use for the rest of this class.
You will also do some basic exploration of Chicago city salaries with command line tools.
To "accept" the assignment and create your repository, you must first complete the setup instructions below, including creating your GitHub account.

The assignment is due Thursday, April 5th by 10:30am.

## Setup

Please see separate instructions for [Windows](https://harris-ippp.github.io/windows_install) and [Macs](https://harris-ippp.github.io/mac_install), to install your terminal, python, and text editor.

You can then join this assignment [here](https://classroom.github.com/a/l08HbtXA).  You'll get an email telling you that the import is complete.
* Open your command line (Terminal or Cygwin) and navigate (`cd`) to whatever directory (folder) you want to work from.
  The choice of directory is up to you -- just as you'd save the documents for any other class.
  Remember that a terminal is analogous to Windows Explorer or Mac Finder.  It allows you to navigate and access your files.
  * On Cygwin, your "normal" directory structure (your C:\ drive) lives at `/cygdrive/c/`.
* Run `git clone https://github.com/harris-ippp/s18-a01-username.git` (replacing `username` by your GitHub user name), to download the directory.  If this fails, then something has (likely) gone wrong in your ssh setup.  Go back and check the instructions for setting up GitHub ssh keys.
* Now `cd` into that directory (`cd s18-a01-username`) to get started.  (Again replacing `userame` with your GitHub username!)

### Data

In class, we played with the city salaries file. 
You can check out these data on the [Chicago Data Portal](https://data.cityofchicago.org/Administration-Finance/Current-Employee-Names-Salaries-and-Position-Title/xzkq-xp2w).

Download a CSV copy of the data using `curl`:

```bash
curl data.cityofchicago.org/api/views/xzkq-xp2w/rows.csv -s -o salaries.csv
```

## Command Line Tools

### Exercises

Use the `salaries.csv` file and command line tools to answer the following questions about Chicago employees.
For each question, add the code you used to the file `salaries.sh`. Place the answers to the questions in a new text file called `ANSWERS.txt`. Note that I have pre-populated the salaries.sh file with each question and some hints. Insert your solution code to each question just below the question.

1. How many employees does the city have?
2. How many full-time workers are there in the file?
3. How many part-time workers are there in the file?
4. How many people work for the police department?
5. How many of them are detectives?
6. Which department has the most employees?

## Python
* First check that your python installation is working:
  ```
  python -c "import pandas; print(pandas.__version__)"
  ```
  you should get back 0.22.0 or similar. This is just a check and there is nothing to submit here.
* Jupyter is a program for creating and running "notebooks" in your browser. It is convenient because of its interactivity and ability to display visualizations. Let's test that it's working:
    * Open jupyter via Anaconda Navigator, "Environments"
    * Navigate to `test-suite.ipynb`
    * Run the notebook (Cell → Run All)
    * You should see a histogram of Chicago employee salaries and that image should be saved as `salaries_histogram.pdf`. This image will be part of your submission of this assignment.

If you have problems with your install please see one of the TAs during office hours or lab.

## Push to GitHub

When you're all done, commit and push the code:
```bash
git add salaries.sh ANSWERS salaries_historgram.pdf # add the relevant files
git status                                            # check that all your modified files are listed
git commit -m "done"                                  # use any commit message you want
git push                                              # push back to GitHub
```

Now go online to your GitHub repository page (again substituting your username), to check that everything is there:

* https://github.com/harris-ippp/s18-a01-username

You should have committed three files: `salaries.sh` and `ANSWERS` and `salaries_histogram.pdf`.

### Helpful Readings
* Git: [Hello World](https://guides.github.com/activities/hello-world/), GitHub Guides.
