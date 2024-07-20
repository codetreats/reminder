#!/bin/bash
###############################################
RUNSTEP=/pipeline/src/run_step.sh $STATUS
###############################################
set -e
STATUS=$1
PARAMS=$2

# Enter your pipeline steps below
# Syntax: $RUNSTEP $STATUS <DESCRIPTION> <COMMAND>
if [[ -f /jobs/$PARAMS.txt ]] ; then
    $RUNSTEP $STATUS "Send Reminder $PARAMS" "/job/remind.sh /jobs/$PARAMS.txt"
fi

