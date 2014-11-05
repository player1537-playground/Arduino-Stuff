# Overview

This repository contains all of my Arduino stuff, including build scripts and diagrams. All of the programs are written in Arduino C, and all of the diagrams are created with the KiCad software.

# To use

Run this command to be able to compile projects:

    sudo apt-get install arduino-mk

_Note: It's been a while since I've installed everything, so there might be more that needs to be installed_

And then initialize a project (e.g. quadcopter) and a sub-project (e.g. motors):

    Arduino-Stuff$ make init/quadcopter-motors  # In general: make init/PROJECT-SUBPROJECT
    Arduino-Stuff$ cd quadcopter/motors

And then edit the file under `quadcopter/motors/src/sketch.ino`.

To build and upload the program to the arduino or attiny, use the command

    Arduino-Stuff/quadcopter/motors$ make upload   # If using an Arduino
    Arduino-Stuff/quadcopter/motors$ make ispload  # If using an ATTiny

# Repository Structure

    Arduino-Stuff/
    -- base.ino			           # Contains the base code which is copied to each new project
    -- libraries/			   # Contains all of the libraries which might be used by projects
    ---- KiCad/				   # Contains components for use in schematics
    ------ <library files>
    ---- <other libraries>/		   # Each library gets its own folder
    ------ <other library source code>
    -- Project/				   # Then each project (e.g. quadcopter)
    ---- Makefile			   # A common makefile used for most of the project, which sets appropriate variables
    ---- Subproject/			   # Then each subproject (e.g. motors)
    ------ Makefile			   # The specific makefile for the current subproject, usually is just "include ../Makefile"
    ------ src/				   # The src/ directory only contains one file, sketch.ino
    -------- sketch.ino
    ------ lib/				   # The lib/ directory contains relative symlinks to the root libraries/ directory
    ------ diagram/			   # Contains the schematic drawings (which can be opened with KiCad)
    -------- diagram.pro
    -------- diagram.sch

#