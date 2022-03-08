# op_agent - OpenPlanner Agent for CARLA Simulator


### Additional missing [data](https://drive.google.com/drive/folders/1Or0CMS08AW8XvJtzzR8TfhqdY9MMUBpS?usp=sharing): 
- PointCloud .pcd Maps 
- Yolo weights files


### Environment setup (bashrc): 
```
export CARLA_ROOT=/home/user/carla-0.9.13/CARLA_0.9.13_RSS
export SCENARIO_RUNNER_ROOT=/home/user/carla-0.9.13/scenario_runner
export LEADERBOARD_ROOT=/home/user/carla-0.9.13/op_bridge
export TEAM_CODE_ROOT=/home/user/carla-0.9.13/op_agent
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/util
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/agents
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla/dist/carla-0.9.13-py2.7-linux-x86_64.egg
```

### How to run the agent: 
Using three .sh options from op_bridge project: 
- Environment Explore 
- Scenario runner 
- Route based scenario with CARLA leaderboard style 
