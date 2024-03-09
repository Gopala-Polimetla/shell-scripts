#!/bin/bash

UserName=$1
PWD=$2
docker login -u $UserName -p $PWD
