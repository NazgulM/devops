# The crontab is a list of commands that you want to run on a regular schedule

 Linux Crontab Format
 MIN HOUR DOM MON DOW CMD

cron - schedule tasks
crowd - cron daemon
crontab - l - list cron jobs

          * ** ** *34  22 29  1*

(22.34 on January 29th)
34  22 29  1  5  (22.34 on January 29th on Friday)
34 22 7   Jan  5 (same)

@weekly - every week
@hourly
@monthly
@minute
Minutes - 0-59
Hours - 0-23
Days of the month - 1-31
Month - 1-12
Week 0-6

cd /var/spool/cron  ls - Can see all existed cron jobs

crontab -l ==> To view the crontab entries as the user root .

crontab -u user-name -l ===>> View the Crontab entry for other user .

yum list installed | wc -l - to know how many packages was installed

* * * * *  ls -latr /home/   ==> The * means all the possible unit — i.e every minute of every hour through out the year.

https://crontab.guru/

