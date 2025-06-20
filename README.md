# Linux-Quick-Audit

This script performs a basic security audit on a machine by running several key Linux commands and displaying their output directly in the console. The results can help you identify potential vulnerabilities, misconfigurations, or suspicious activity.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Commands Run](#commands-run)
- [How to Use](#how-to-use)
- [License](#license)

## Prerequisites

Before running the script, ensure you have the following:
- A Linux-based system (e.g., Ubuntu, Debian, CentOS).
- **sudo** privileges to execute the necessary system commands.
- Access to a terminal (CLI) environment.

## Commands Run

The script runs the following commands:
1. **`sudo -l`** - Lists the sudo privileges of the current user.
2. **`cat /etc/crontab`** - Displays the system-wide cron jobs.
3. **`find / -writable -type d 2>/dev/null`** - Searches for writable directories across the system.
4. **`dpkg -l`** - Lists all installed packages on Debian-based systems.
5. **`uname -a`** - Displays detailed system information (e.g., kernel version, architecture).
6. **`find / -perm -u=s -type f 2>/dev/null`** - Searches for files with the setuid bit set (security risk for privilege escalation).
7. **`env`** - Displays the current environment variables.
8. **`cat ~/.bashrc`** - Displays the contents of the user's `.bashrc` file to check for any suspicious entries.

The output of each command is displayed directly in the console for easy review.

## How to Use

1. **Clone or Download the Script**:
   - Clone this repository (if hosted on GitHub) or download the script file directly (`run_audit_console.sh`).
   
2. **Make the Script Executable**:
   After downloading or cloning the script, give it executable permissions:
   ```bash
   chmod +x run_audit_console.sh
