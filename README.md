# To use

Run this command to get a working install:

    sudo apt-get install ino picocom

And then initialize a project (e.g. quadcopter) and a sub-project (e.g. motors):

    make init/quadcopter-motors
    cd quadcopter/motors

And then edit the file under `quadcopter/motors/src/sketch.ino`.

Finally, build/compile with:

    make build

And upload with:

    make upload

(Note: `make upload` automatically does `make build`)

# Note

The structure of the project is

    Arduino-Stuff/
    -- Project/
    ---- Subproject/
    ------ Makefile
    ------ src/
    -------- sketch.ino
    ------ lib/

