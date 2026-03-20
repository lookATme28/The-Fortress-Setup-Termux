# ==========================================================
# DISCLAIMER / READ ME FIRST
# ==========================================================
# This file is a TEMPLATE and a LOGICAL PROTOTYPE.
# These aliases are based on my personal "Fortress Setup" 
# on Motorola G06 Power, but paths and script names are 
# provided as EXAMPLES for the community.
#
# DO NOT copy-paste this 1:1. 
# Use this to understand how to build a headless, 
# absolute-path-based environment in Termux.
# ==========================================================

# ==========================================================
# THE FORTRESS SETUP - CORE ALIASES (PUBLIC VERSION)
# ==========================================================
# Environment: Motorola G06 Power | De-Googled | FOSS-Only
# Note: All paths use absolute Termux addressing for stability.

# --- [ CORE SYSTEM NAVIGATION ] ---
alias home='cd /data/data/com.termux/files/home'
alias conf='cd /data/data/com.termux/files/home/.config'

# --- [ TUI ECOSYSTEM ] ---
alias m='/data/data/com.termux/files/usr/bin/neomutt'      # Email
alias t='/data/data/com.termux/files/home/task.sh'        # Task management
alias w='/data/data/com.termux/files/usr/bin/ttr'         # Weather
alias calc='/data/data/com.termux/files/usr/bin/insect'   # Calculator
alias player='/data/data/com.termux/files/usr/bin/mpv'    # Media playback

# --- [ SEARCH & WEB ] ---
# Optimized for privacy-focused CLI searching
alias ddv='BROWSER=lightning /data/data/com.termux/files/usr/bin/ddgr'

# --- [ SECURITY & PRIVACY ] ---
# Trigger Emergency Panic Sequence
alias panic='/data/data/com.termux/files/home/scripts/panic.sh'

# GPG Encrypted Password Management (The Gate)
alias pass='gpg --decrypt /data/data/com.termux/files/home/.secrets.gpg'

# --- [ IOT & AUTOMATION: AQUARISTICS ] ---
# Modular scripts for hobby management - can be swapped for any IoT task
alias fish_log='/data/data/com.termux/files/home/scripts/aquarium_metrics.sh'
alias water_check='/data/data/com.termux/files/home/scripts/chemical_analysis.sh'

# --- [ TELEPHONY & LOGS ] ---
alias calls='termux-telephony-calllog'
alias sms_inbox='termux-sms-list'
