# Bash Scripting Project

## Team Members
* Yarin Barayev
* Ofek Yakov

## Project Overview
This project contains a collection of Bash scripts developed for HW1.
Each script is designed to perform specific automation or system tasks.

## Script List

**Scripts developed by Yarin Barayev:**
1. `user_info.sh` - Displays current user and system information.
2. `uptime_check.sh` - Displays the system's uptime.
3. `count_words.sh` - Counts lines, words, and characters for all `.sh` files in the directory.
4. `count_extension.sh` - Counts files with a specific extension provided by the user.
5. `compare_files.sh` - Compares two files provided by the user and displays their differences.

**Scripts developed by Ofek Yakov:**
*(To be updated by Ofek)*

## How to Run

### 1. Clone the Repository
Clone the project to your local machine:
```bash
git clone https://github.com/Afeka-DevTools/26b-10142-bash-yarin-barayev-and-ofek-yakov.git
```

### 2. Navigate to the Scripts Directory

```Bash
cd 26b-10142-bash-yarin-barayev-and-ofek-yakov/scripts
```

### 3. Execution Instructions (Yarin's Scripts)
All scripts have been granted execution permissions (chmod +x). Run them as follows:

#### user_info.sh:

```Bash
./user_info.sh
```

#### uptime_check.sh:

```Bash
./uptime_check.sh
```

#### count_words.sh:

```Bash
./count_words.sh
```

#### count_extension.sh:
#### Requires an extension as an argument (e.g., sh or txt).

#### Examples:

```Bash
./count_extension.sh sh
./count_extension.sh txt
```

#### compare_files.sh:
#### Requires two file names as arguments

```Bash
./compare_files.sh count_words.sh uptime_check.sh
```