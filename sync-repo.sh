#!/bin/bash
#===============================================================================
#
#          FILE:  sync-repo.sh
# 
#         USAGE:  Cron job, sync_repo "savsingh/test.git" "https://gitlab.com/savsingh/test.git" > /dev/null 
# 
#   DESCRIPTION:  This script is to incorporate Git Lab Mirror feature available in Enterprise.
#                 This feature require shell access to enable on CE, hence need to involve cee-ops@redhat.com
# 
#       VERSION:  1.0
#       CREATED:  12/06/2016 02:21:56 PM IST
#===============================================================================

# git fetch https://gitlab.com/savsingh/test.git master:master

REPO_BASE=/home/git/repositories

function sync_repo {
  DST=$1
  SRC=$2
    cd ${REPO_BASE}/${DST} && `which git` fetch ${SRC} master:master
}
