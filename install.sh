#!/bin/bash
source $CODETREATS_BASHUTILS_DIR/docker-utils.sh

remove_container reminder
prune_images
build_and_up reminder:master