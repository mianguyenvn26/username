# README for Username Validation Script

## Author Information
- **Name:** Mia Nguyen
- **Course:** CPSC 298-01
- **Assignment:** Username Validation
- **Date:** 1/20

## Program Description
[Write 2-3 sentences in your own words describing what this script does and its purpose. Explain the problem it solves and how it works at a high level.]
this script validates usernames, avoiding reference problems.
my program use the if statement to validate username input

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
[Explain in 3-5 sentences how your script validates usernames. Include information about:]
- I use if - else statements to validate if all characters in the username string are member of the alphabet and/or contain the underscore 
- echo -e is used so that the shell interpreter intepret /n as adding a new line
- while loop is used to continuously prompt user for a name until it's valid (and break out of the while loop)

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
I got everything, until I had to push the file back to my main. i used this command "git push -f origin main" and input my username, mianguyenvn26, and password, but it kept telling me i input the wrong password. so i'm stuck.

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]
lecture videos and my friend from Case Western Reserved helped me fork and modify.

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
