#!/bin/bash

mkdir system-report
touch system-report/a.info
touch system-report/b.info
touch system-report/c.info

# Exo 1
df -h | grep sda[0-9] >> a.info 2>> a.error
# Exo 2
du -hs >> b.info 2>>b.error
# Exo 3
ps -aux | grep ^`whoami` >> c.info 2>> c.error
