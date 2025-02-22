#!/bin/bash
###############################################
RUNSTEP=/pipeline/run_step.sh $STATUS
###############################################
set -e
STATUS=$1
PARAMS=$2

# Enter your pipeline steps below
# Syntax: $RUNSTEP $STATUS <DESCRIPTION> <COMMAND>
$RUNSTEP $STATUS "Send Reminder $PARAMS" "/job/remind.sh /jobs/$PARAMS.txt"

