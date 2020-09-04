#!/bin/sh
cd /home/container/project
if [ ${AUTO_UPDATE_REPO} == "true" ]
    then
        git pull origin ${INSTALL_BRANCH}
        git checkout ${INSTALL_BRANCH}
fi

cd /home/container/
if [ ${AUTO_UPDATE_COMPOSER} == "true" ]
    then
        composer install -d /home/container/${NGINX_ROOT}
fi
