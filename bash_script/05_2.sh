#!/bin/bash
OF=/var/my-backup-$(date +%Y%m%d).tgz
tar -czf $OF /home/alien
