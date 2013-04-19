#!/bin/bash
OF=/home/alien/my-backup-$(date +%Y%m%d).tgz
tar -cZf $OF /home/alien
