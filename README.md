# Log Rotation + Auto Cleanup Tool

## Objective
Automate log rotation and cleanup in Linux using Bash scripting and cron jobs to maintain system reliability.

## Tools & Technologies
- Ubuntu (WSL on Windows)
- Bash scripting
- Cron jobs
- Logging

## Steps
1. Created sample logs in logs/app.log
2. Developed `log_rotate_cleanup.sh` to:
   - Rotate logs to archive with timestamp
   - Remove logs older than 7 days
   - Maintain operation log `rotation.log`
3. Tested script manually
4. Scheduled daily execution via cron
5. Version-controlled on GitHub

## Outcome
- Learned Bash loops, cron scheduling, environment variables, and automated logging
- Simulated production-ready log management workflow

