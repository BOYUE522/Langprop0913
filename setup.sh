#!/usr/bin/env bash
. settings.sh

echo 'Download and install CARLA'
mkdir -p $CARLA913a_ROOT
cd $CARLA913a_ROOT

wget -c https://tiny.carla.org/carla-0-9-13-linux -O CARLA_0.9.13.tar.gz
if ! tar -tzf CARLA_0.9.13.tar.gz &>/dev/null; then
    echo "CARLA_0.9.13.tar.gz is incomplete or corrupted. Please try downloading again."
    exit 1
fi

wget -c https://tiny.carla.org/carla-0-9-13-rss-linux -O CARLA_0.9.13_RSS.tar.gz
if ! tar -tzf CARLA_0.9.13_RSS.tar.gz &>/dev/null; then
    echo "CARLA_0.9.13_RSS.tar.gz is incomplete or corrupted. Please try downloading again."
    exit 1
fi

wget -c https://tiny.carla.org/additional-maps-0-9-13-linux -O AdditionalMaps_0.9.13.tar.gz
if ! tar -tzf AdditionalMaps_0.9.13.tar.gz &>/dev/null; then
    echo "AdditionalMaps_0.9.13.tar.gz is incomplete or corrupted. Please try downloading again."
    exit 1
fi

tar -xzf CARLA_0.9.13.tar.gz 
tar -xzf CARLA_0.9.13_RSS.tar.gz
tar -xzf AdditionalMaps_0.9.13.tar.gz

# mkdir -p $CARLA911_ROOT
# cd $CARLA911_ROOT

#if [ ! -f "CARLA_0.9.11.tar.gz" ]; then
#  wget https://carla-releases.s3.eu-west-3.amazonaws.com/Linux/CARLA_0.9.11.tar.gz
#  tar -xf CARLA_0.9.11.tar.gz
#fi
#
#if [ ! -f "AdditionalMaps_0.9.11.tar.gz" ]; then
#  wget https://carla-releases.s3.eu-west-3.amazonaws.com/Linux/AdditionalMaps_0.9.11.tar.gz
#  tar -xf AdditionalMaps_0.9.11.tar.gz
#fi
#
#mkdir -p $CARLA912_ROOT
#cd $CARLA912_ROOT
#
#if [ ! -f "CARLA_0.9.12.tar.gz" ]; then
#  wget https://carla-releases.s3.eu-west-3.amazonaws.com/Linux/CARLA_0.9.12.tar.gz
#  tar -xf CARLA_0.9.12.tar.gz
#fi
#
#if [ ! -f "AdditionalMaps_0.9.12.tar.gz" ]; then
#  wget https://carla-releases.s3.eu-west-3.amazonaws.com/Linux/AdditionalMaps_0.9.12.tar.gz
#  tar -xf AdditionalMaps_0.9.12.tar.gz
#fi
#


#mkdir -p $CARLA913a_ROOT
#cd $CARLA913a_ROOT
#
#if [ ! -f "CARLA_Leaderboard_20.tar.gz" ]; then
#  wget https://carla-releases.s3.eu-west-3.amazonaws.com/Linux/Leaderboard/CARLA_Leaderboard_20.tar.gz
#  tar -xf CARLA_Leaderboard_20.tar.gz
#fi

# git submodule update --init --recursive
# git submodule update --recursive --remote

export PYTHONPATH=./src/:${PYTHONPATH}
