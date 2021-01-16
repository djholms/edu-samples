#!/bin/bash

###################################################################
# Source: Linux Acadamey PostgreSQL Administration Deep Dive Course
# Author: Landon Fowler
# Purpose: Script for backing up the acweb database
# Date Updated: 03/05/2020
###################################################################

# Backup directory and name suffix
BACKUP_DIR=/var/lib/pgsql/backups
FILE_SUFFIX=_pg_backupl.tar

# Name file using the date and supplied suffix
FILE=`date +"%Y%m%d%H%M"`${FILE_SUFFIX}

# Combine the backup directory and file name
OUTPUT_FILE=${BACKUP_DIR}/${FILE}

# Execute the backup as a tar
pg_dump -F t acweb > ${OUTPUT_FILE}