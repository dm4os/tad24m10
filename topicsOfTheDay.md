# Topics of the session on the 24.10.2022

## Verified the installation of:
1. Python https://www.python.org/downloads/
2. Virtualenv pip install virtualenv
3. git bash https://gitforwindows.org/

## And have proceeded with the following:
4. How to create a virtual environment 
    -> python3 -m virtualenv <name of your virtual environment> 
    -> python -m virtualenv <name of your virtual environment> 
    -> python3 -m venv <name of your virtual environment> 
    -> python -m venv <name of your virtual environment> 
5. How to activate the virtual environment
    -> source <virtual environment path>/Scripts/activate
    Best practice: Please activate any virtual environment you need to work with before you start working on something.
    Notice, virtual environments can run simultaneously and they are useful to control 3rd party SW your applications need to run.

6. Created an ssh key of type ed25519 
    a. Verify if ~/.ssh exists on your machine
    a.a. If .ssh folder does not exist 
        -> mkdir ~/.ssh
    b. considering the ~/.ssh folder exists then:
        -> ssh-keygen -t ed25519 -C "<good practice is to have your email address++>"
7. We have added the generated PUBLIC KEY to github.
    -> <filename>.pub (notice PUB tell it is the public key, you can show everywhere without compromising security)

    Notice you can display a public key from the terminal/bash

    -> cat <keyname>.pub

8. We have started an agent
    ->  eval "$(ssh-agent -s)"

9. We have added the private key WHICH YOU CANNOT PUBLISH ANYWHERE ELSE.
    -> ssh-add ~/.ssh/<private key name>

10. Created a repository with help of github GUI

11. Cloned and started to be familiarized with the git structure and basic commands.

12. Stress importance of pulling repositories before stating to code. 

13. Verified file system. 

14. Example of BDD and ATDD. Under -> rf_bdd_atdd.md

15. RF structure
    Keep control of the indentation. 
    function passing 1 or two arguments/variables values
    This work -> <name of the function><TWO spaces><va1><TWO spaces><var2>
    This work -> <name_of_the_function><TWO spaces><va1><TWO spaces><var2> 
    This do NOT work -> <name of the function><ONE space><va1><TWO spaces><var2>
    It will call a function <name of the function va1>
    This do NOT work -> <name_of_the_function><TWO spaces><va1><ONE space><var2> 
a. Robot main file script <file name>.robot containing 

*** Settings ***
Resource          keywords.resource

*** Test Cases ***
TC 1
function to be called 
function_to_be_called 

TC 2
another function to be called
