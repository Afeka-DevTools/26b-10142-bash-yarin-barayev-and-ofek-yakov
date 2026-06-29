# Bash Scripting Project

## Team Members
* Yarin Barayev
* Ofek Yakov
* Amnon Nisimov

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
1. `backup_dir.sh` - Backups a specified directory into a `.tar.gz` archive.
2. `show_env_vars.sh` - Displays important system environment variables.
3. `sort_file.sh` - Sorts the contents of a provided text file alphabetically.
4. `disk_usage.sh` - Displays the disk usage (in human-readable format) of a given directory.
5. `kill_processes.sh` - Terminates all active processes matching a given name.


**Scripts developed by Amnon Nisimov:**
1. `add_perfix.sh` - add perfix to all .txt files in specific folder.
2. `battery_status.sh` - Displays battery status.
3. `show_files_bigger_then.sh` - showing files bigger then specific size.
4. `generate_password.sh` - generate a 10 characters password.
5. `internet_connection_status.sh` - Display Internet connection status.


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
#### Note: This script works only on Linux environments
#### (The 'uptime' command in the script is not supported on Windows)

```Bash
./uptime_check.sh
```

#### count_words.sh:
#### Output Format: The command displays the results in this following order:
#### [Lines] [Words] [Characters] [File Name]

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
#### Outputs:

#### < : indicates a line that exists only in the first file
#### > : indicates a line that exists only in the second file
#### --- : Acts as a separator between the differences of the two files

#### Example:
```Bash
./compare_files.sh count_words.sh uptime_check.sh
```

### 4. Execution Instructions (Ofek's Scripts)
All scripts have been granted execution permissions (chmod +x). Run them as follows:

#### backup_dir.sh:
#### Requires two arguments: the source directory to backup, and the destination `.tar.gz` file name.
```bash
./backup_dir.sh <source_directory> <destination_file.tar.gz>
```

#### show_env_vars.sh:
#### Requires no arguments.
```bash
./show_env_vars.sh
```

#### sort_file.sh:
#### Requires the path to the file you want to sort.
```bash
./sort_file.sh <file_to_sort>
```

#### disk_usage.sh:
#### Requires the path to the directory.
```bash
./disk_usage.sh <directory_path>
```

#### kill_processes.sh:
#### Note: This script works only on Linux environments
#### (The 'pkill' command in the script is not supported on Windows)
#### Requires the exact name of the process you want to terminate.
```bash
./kill_processes.sh <process_name>
```

#### battery_status.sh:
#### Note: This script works only on Linux environments.
#### Requires no arguments.
```bash
./battery_status.sh
```

#### add_prefix.sh:
#### Requires folder path and a prefix.
```bash
./add_prefix.sh <folder_path> <prefix>
```

#### generate_password.sh:
#### Requires no arguments.
```bash
./generate_password.sh
```

#### internet_connection_status.sh:
#### Note: This script works only on Linux environments.
#### Requires no arguments.
```bash
./internet_connection_status.sh
```
#### show_files_bigger_then.sh:
#### Requires folder path and a size.
```bash
./show_files_bigger_then.sh <folder_path> <size>
```


