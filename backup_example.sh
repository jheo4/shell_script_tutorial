# Backup example of sh
DEST_LOCATION=/var/backups/github-backup-$(date +%Y%m%d).tar
TARGET_DIR=/home/user/github
tar -xvfP $DEST_LOCATION $TARGET_DIR
