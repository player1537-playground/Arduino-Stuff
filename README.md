# To use

Run this command to get a working install:

    sudo apt-get install ino picocom

And then initialize a project (e.g. quadcopter) and a sub-project (e.g. motors):

    mkdir quadcopter
    cd quadcopter
    mkdir motors
    cd motors
    ino init

And then edit the file under `quadcopter/motors/src/sketch.ino`.

# Note

The structure of the project is

    Arduino-Stuff/
    -- Project/
    ---- Subproject/
    ------ src/
    -------- sketch.ino
    ------ lib/

