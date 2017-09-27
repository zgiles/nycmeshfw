#!/bin/bash
set +x
if [ "$AWS_REGION" != "" ]
then
	echo Running on AWS...
fi
if [ "$TARGET" == "" ]
then
	echo "Target empty.. choosing nsm5-xw as default"
	export TARGET=nsm5-xw
fi
if [ "$CPUS" == "" ]
then
	echo CPUS field empty, choosingg $(nproc)
	export CPUS=$(nproc)
fi
make J=$CPUS T=$TARGET
