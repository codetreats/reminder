# An simple tool for sending emails at specific times

## Config

Inside the docker container in the folder `/jobs` there must be a file for each mail you want to send.
The file must contain key-value-pairs seperated by `=`:

CRON: The cron job configuration (e.g. "0 10 7 * *") for a mail at 10 o'clock on the 7th of each month
MAIL_HOST: The hostname of the mail server
MAIL_USER: The username of the mail server
MAIL_PASSWORD: The password of the mail server
MAIL_FROM: The email address of the mail server
MAIL_FROMNAME: An user friendly name of the sender (optional)
MAIL_TO: The receiver of the reminder
SUBJECT: The mail subject
TEXT: The text of the message

Except CRON, all variables can be set as docker environment variables and will then be used as default, when they aren't set in the job file.