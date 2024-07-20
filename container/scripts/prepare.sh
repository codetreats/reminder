#!/bin/bash
set -e
if [ -f /prepared.flag ] ; then
  exit
fi

cd /jobs/
for JOB in $(find . -name "*.txt" | cut -d "/" -f2 | cut -d "." -f1); do
  echo $JOB
  menu $JOB "/pipeline/trigger.php?filename=trigger&params=$JOB&override_monitor_src=pipeline.reminder.$JOB"
  source /jobs/$JOB.txt
  echo "$CRON root /trigger.sh PARAMS=$JOB OVERRIDE_MONITOR_SRC=pipeline.reminder.$JOB" >> /etc/cron.d/cronjob  
done

crontab /etc/cron.d/cronjob

touch /prepared.flag
