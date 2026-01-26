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

-------------------------------------------------------------------------------------------------------
# Containerized Python Web App (Docker Fundamentals)

## Objective
Containerize a Python web application using Docker best practices and validate builds through CI pipelines.

## Tools & Technologies
- Python (Flask)
- Dockerfile
- GitHub Actions (CI)
- Ubuntu / GitHub

## Steps Performed
1. Created a simple Python Flask web application.
2. Wrote a Dockerfile to containerize the app.
3. Configured GitHub Actions to build the container on every push.
4. Resolved Git push conflicts by syncing with remote repository.
5. Validated successful image build via GitHub Actions logs.

## Outcome
- Hands-on experience with Dockerfiles and CI pipelines.
- Learned real DevOps workflows including Git conflict resolution.

## Skills Demonstrated
Docker, CI/CD, GitHub Actions, Git, Python, DevOps fundamentals

