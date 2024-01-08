# op_agent - OpenPlanner Agent for CARLA Simulator

## Last Update: December 2023, Working on Ubuntu 22.04 and ROS2 humble. Thanks to https://github.com/gezp this is possible. 
- Make sure to Download the Python egg for 3.10 from [here](https://github.com/gezp/carla_ros/releases/tag/carla-0.9.15-ubuntu-22.04). 
- Add the egg file to the folder: ../CARLA_0.9.15/PythonAPI/carla/dist
- Review the previous [tutorials](https://github.com/orgs/autowarefoundation/discussions/2828)
- When installing the python requirements you might face some issues becuase the python 3.10. Good luck resolving these issue. 

## Support: 
- CARLA Simulator 0.9.15 release 
- Python 3.10 
- ROS2 Humble
- OpenPlanner.Universe
- Linux 22.04

### Additional missing [data](https://drive.google.com/drive/folders/1Or0CMS08AW8XvJtzzR8TfhqdY9MMUBpS?usp=sharing): 
- Lanelet2 .osm Maps
- PointCloud .pcd Maps 
- Yolo weights files

### Important Note for HD Map: 
- Copy the downloaded map folder which contains (Lanelet2_map.osm, pointcloud_map.pcd, and map_projector_info.yaml) to the op_agent folder: 

/home/user/carla/op_agent/autoware-contents/maps/Town01

/home/user/carla/op_agent/autoware-contents/maps/Town02

... 

### Environment setup (bashrc): 
```
export AUTOWARE_ROOT=/home/user/carla/autoware
export CARLA_ROOT=/home/user/carla/CARLA_0.9.15
export SCENARIO_RUNNER_ROOT=/home/user/carla/scenario_runner
export OP_BRIDGE_ROOT=/home/user/carla/op_bridge
export OP_AGENT_ROOT=/home/user/carla/op_agent
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/util
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/agents
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.15-py3.10-linux-x86_64.egg
```

### How to run the agent for ROS2 (Autoware.Universe): 
Using three .sh options from op_bridge project: 
- Environment Explore -> run_exploration_mode_ros2.sh
- Scenario runner -> run_srunner_agent_ros2.sh 
- Route based scenario with CARLA leaderboard style -> run_route_scenarios_ros2.sh 
