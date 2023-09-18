# ROS-Nav-Platform
## Introduction
 该项目是一个ROS导航集成测试平台，能够实现混合A*算法，并在Gazebo以及rviz中显示出来
## Instruction
### Step 1
下载roshybridA_ws以及rospid_ws到您的虚拟机中
### Step 2
打开两个终端，分别运行以下代码
对于roshybridA_ws
```
cd roshybridA_ws
source devel/setup.bash
roslaunch hybrid_astar_planner navtest.launch
```
对于rospid_ws
```
cd rospid_ws
source devel/setup.bash
roslaunch tracking_pid gazebo_pid_test.test
```
此时显示的rviz和gazebo页面如图所示
![image](https://github.com/ppap36/ROS-Nav-Platform/assets/108739132/7d222b5e-4995-4f96-9b93-85adf75d5bf3)

在rviz中，点击2D nav goal为机器人设定信息
![image](https://github.com/ppap36/ROS-Nav-Platform/assets/108739132/72c08cff-a782-4132-86f3-e587003d1ec8)

即可让机器人按照混合A*算法规划出来的路线进行行走
![image](https://github.com/ppap36/ROS-Nav-Platform/assets/108739132/c8f9f636-bd41-42b8-b5bf-3fb1e55e86dd)
