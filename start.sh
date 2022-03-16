#! /bin/bash -e
role_name=$1
map_name=$2
explore_mode=$3
route_topic=$4

echo "-------------------------------"
echo "Starting OpenPlanner .. "
echo $role_name
echo $map_name
echo $explore_mode
echo $route_topic
echo "-------------------------------"

# # Map conversion from OpenDRIVE to openpanner .kml map format 
# cd ${TEAM_CODE_ROOT}/assuremappingtools/bin
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:libs
# ./assure_map_editor -kml ${TEAM_CODE_ROOT}/hdmaps/$map_name.xodr ${TEAM_CODE_ROOT}/hdmaps/$map_name.kml -res 1.0 -lanechange
# cd ${LEADERBOARD_ROOT}

#source the autoware that will be used as autonomous agent
source /home/hatem/carla-0.9.13/autoware.ai.openplanner/devel/setup.bash

#launch the ROS topics conversion and start autoware 
roslaunch ${TEAM_CODE_ROOT}/bridge2autoware.launch role_name:=$role_name map_name:=$map_name external_route_topic:=$route_topic explore_mode:=$explore_mode