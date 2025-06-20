#!/bin/bash

# Function to run a command and print its output to the console
run_and_display_command() {
    local cmd="$1"
    
    echo "Running command: $cmd"
    echo "======================"
    
    # Run the command and display the output to console
    eval "$cmd"
    
    echo ""  # Add a newline for separation
}

# Run each command and display the output to the console
run_and_display_command "sudo -l"
run_and_display_command "cat /etc/crontab"
run_and_display_command "find / -writable -type d 2>/dev/null"
run_and_display_command "dpkg -l"
run_and_display_command "uname -a"
run_and_display_command "find / -perm -u=s -type f 2>/dev/null"
run_and_display_command "env"
run_and_display_command "cat ~/.bashrc"
run_and_display_command "grep 'CRON' /var/log/syslog"
run_and_display_command "ps -aux | grep pass"
run_and_display_command "ps -aux | grep OS"
run_and_display_command "sudo tcpdump -i lo -A | grep 'pass'"

# Notify user that the audit is complete
echo "Audit complete. Results displayed above."
