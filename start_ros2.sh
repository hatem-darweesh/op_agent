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

ros2 launch ${TEAM_CODE_ROOT}/bridge2ros2.xml

$SHELL