#!/bin/sh

set -e
cmd="$@"
exp login --username $USER --password $PASSWORD
exec $cmd