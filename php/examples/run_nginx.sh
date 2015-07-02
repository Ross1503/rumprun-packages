#!/bin/sh
set -x
rumprun xen -di -M 128 \
    -n inet,static,10.0.120.200/24 \
    -b images/data.iso,/data \
    -b images/stubetc.iso,/etc \
    -- ../nginx/bin/nginx.bin -c /data/conf/nginx.conf
