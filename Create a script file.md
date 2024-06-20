How to create a script file:

echo $SHELL = Shows the shell type available in Linux

vi or nano myscript.sh = To create a script file

Add script using echo commands:

    #!/bin/bash
    #
    echo "Hello $LOGNAME"
    echo "Host name is `hostname`"
    echo "Your present working directory is `pwd`"
    #
    echo "Script ends, see you soon $LOGNAME"
    #

sudo chmod +x myscript.sh = To mark the file as executable

./myscript.sh = To execute the script file
