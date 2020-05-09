#!/bin/bash



onchange 'assets/scss/*.scss' -- node-sass --output-style expanded --source-map=true  -o assets/css assets/scss  &

onchange 'assets/img/*' -- imagemin assets/img/* --out-dir dist/img 