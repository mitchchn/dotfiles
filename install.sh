#!/usr/bin/env bash

rsync --exclude-from=rsync.excludes -ah --progress . $HOME