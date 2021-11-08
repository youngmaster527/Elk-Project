#!/bin/bash
    
free -h | awk 'NR==2 {print $1, $4}' > ~/backups/freemem/free_mem.txt

free -h | awk 'NR==2 {print $1, $3}' > ~/backups/diskuse/disk_usage.txt

lsof > ~/backups/openlist/open_list.txt

df > ~/backups/freedisk/free_disk.txt
