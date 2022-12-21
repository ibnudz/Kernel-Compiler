#!/bin/bash

# Copyright (C) 2022 a Ibnubert

echo Starting Compile Script . . .

function target(){
	. target.sh
}

function check(){
	. check.sh
}

function compile(){
	. compile.sh
}

target
check
compile
