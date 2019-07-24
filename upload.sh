#!/usr/bin/env bash
distDir=/root/webroot
currentDir=/Users/WangQing/VUE_Pro/TALVue/dist
scp -r $currentDir/index.html $currentDir/static root@47.92.66.57:$distDir
