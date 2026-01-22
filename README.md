# README for Username Validation Script

## Author Information
- **Name:** Mia Nguyen
- **Course:** CPSC 298-01
- **Assignment:** Username Validation
- **Date:** 1/20

## Program Description
[Write 2-3 sentences in your own words describing what this script does and its purpose. Explain the problem it solves and how it works at a high level.]
this script validates usernames, avoiding reference problems.
1. username.sh uses an while loop containing an if-else statement to prompt for the user input and check its conformity to the rule. the loop only ends if a valid name is input
2. username_reader: this is a file scanner to go through the username-input file and check the validity of each username in each line
-> These are 2 different files, with username-reader modified from the zip.sh file. A file cannot both prompt for user input and read the unsername-input file, so i seperated into 2 shellscripts username.sh and username_reader

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
./username_reader < username-input
```

To test with the provided input file:
```bash
./username_reader < username-input
```

## How the Script Works
[Explain in 3-5 sentences how your script validates usernames. Include information about:]
- I use if - else statements to validate if all characters in the username string are member of the alphabet and/or contain the underscore and is within the 12-character length
- echo -e is used so that the shell interpreter intepret /n as adding a new line
- while loop is used to continuously prompt user for a name until it's valid (and break out of the while loop)
- for username_reader: the script store input into username using "while read -r username", then use if echo "$username" and grep to check for the pattern.

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
[Describe your testing process and results. Include:]
- Example valid usernames you tested (at least two)
1.
mianguyenvn26
2. hsid_1 
- Example invalid usernames and why they fail (at least two)
1. bbno$ --> containing $
2. hwufew* --> containing *
- How you used the username-input file to test
by running the command
./username.sh < username-input

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]
i was unfamiliar with the git push process, and had some errors returned. to solve it, i consulted my friend and he said I should try the command "git add username.sh username_reader" again to make sure everything is up-do-date, then i also tried "git push origin main -rebase" to sync the git and my local files. eventually it worked.

also, i couldn't figure out how to write to the file username.sh can both prompt for user input and read the unsername-input file, so i separated the task into 2 shellscripts username.sh and username_reader.

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]
lecture videos and my friend from Case Western Reserved helped me fork and modify and push

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
