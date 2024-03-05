#! /bin/bash -e
role_name=$1
map_name=$2
explore_mode=$3
route_topic=$4

echo "carla_release"
echo "-------------------------------"
echo "Starting OpenPlanner .. "
echo "-------------------------------"
echo "Agent Name: " $role_name
echo "Exploration Mode: " $explore_mode
# echo $route_topic
echo "Map Path: " ${OP_AGENT_ROOT}/autoware-contents/maps/$map_name
echo "CARLA Path: " ${CARLA_ROOT}
echo "-------------------------------"
echo ""

# ros2 launch /home/hatem/carla/op_agent/autoware_carla_launch/carla_autoware_sensors_interface.xml
ros2 launch ${OP_AGENT_ROOT}/autoware_carla_launch/carla_simulator.launch.xml map_path:=${OP_AGENT_ROOT}/autoware-contents/maps/$map_name vehicle_model:=sample_vehicle sensor_model:=carla_sensor_kit
# $SHELL

