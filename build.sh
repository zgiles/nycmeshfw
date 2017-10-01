#!/bin/bash
set +x

# Because ./configure will sometimes check for root. tar is a good example
export FORCE_UNSAFE_CONFIGURE=1

echo CPUS: $CPUS
echo DEBUG: $DEBUG
echo TARGET: $TARGET
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
	echo CPUS field empty, choosing $(nproc)
	export CPUS=$(nproc)
fi
echo CPUS: $CPUS
echo DEBUG: $DEBUG
echo TARGET: $TARGET
make $DEBUG J=$CPUS T=$TARGET $1
echo Done building $1

#  mv build/lede/bin images/
