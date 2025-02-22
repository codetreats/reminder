#!/bin/bash
set -e

JOB=$1

if [[ ! -f $JOB ]] ; then
  echo "Job file not found: '$JOB'"
  exit 1
fi

source $JOB

echo "MAIL_HOST=$MAIL_HOST"
echo "MAIL_USER=$MAIL_USER"
echo "MAIL_PASSWORD=****"
echo "MAIL_FROM=$MAIL_FROM"
echo "MAIL_FROMNAME=$MAIL_FROMNAME"
echo "MAIL_TO=$MAIL_TO" 
echo "SUBJECT=$SUBJECT"
echo "TEXT=$TEXT"

export MAIL_HOST="$MAIL_HOST"
export MAIL_USER="$MAIL_USER"
export MAIL_FROM="$MAIL_FROM"
export MAIL_FROMNAME="$MAIL_FROMNAME"
export MAIL_TO="$MAIL_TO" 
export SUBJECT="$SUBJECT"
export TEXT="$TEXT"

php /mail.php "$SUBJECT" "$TEXT"