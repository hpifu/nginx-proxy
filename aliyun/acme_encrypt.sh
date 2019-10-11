#!/usr/bin/env bash

function encrypt() {
    acme.sh --issue -d $1 --nginx
    mkdir -p /etc/nginx/ssl/$1/
    acme.sh --installcert -d $1 \
        --key-file /etc/nginx/ssl/$1/$1.key \
        --fullchain-file /etc/nginx/ssl/$1/fullchain.cer \
        --reloadcmd  "service nginx force-reload"
}

encrypt blog.hatlonely.com
encrypt jenkins.hatlonely.com
encrypt gitlab.hatlonely.com
encrypt grafana.hatlonely.com
encrypt chronograf.hatlonely.com
encrypt account.hatlonely.com
encrypt api.account.hatlonely.com
encrypt api.cloud.hatlonely.com
encrypt api.ancient.hatlonely.com
encrypt tool.hatlonely.com
encrypt ancient.hatlonely.com
encrypt game.hatlonely.com
encrypt api.tech.hatlonely.com
encrypt tech.hatlonely.com
