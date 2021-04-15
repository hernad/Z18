#!/bin/bash

#DIR=common
#DIR=fiskalizacija
#DIR=epdv
#DIR=os
#DIR=ld
DIR=virm

find $DIR -name "*.prg" -exec echo mv \{\} \{\} \; > prg2zh.sh
