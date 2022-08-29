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

source /home/hatem/hatem-repos/autoware-universe/autoware/install/setup.bash

#ros2 launch ${TEAM_CODE_ROOT}/autoware_launch/universe.launch.xml map_path:=/home/hatem/Data/autoware_uni_sample_data/${map_name} vehicle_model:=sample_vehicle sensor_model:=sample_sensor_kit
ros2 launch /home/hatem/hatem-repos/autoware-universe/autoware/src/launcher/autoware_launch/autoware_launch/launch/autoware.launch.xml map_path:=/home/hatem/Data/autoware_uni_sample_data/${map_name} vehicle_model:=sample_vehicle sensor_model:=sample_sensor_kit
#$SHELL
