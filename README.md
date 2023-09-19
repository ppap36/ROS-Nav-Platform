# ROS-Nav-Platform
## Introduction
 该项目是一个ROS导航集成测试平台，能够实现混合A*算法，并在Gazebo以及rviz中显示出来
## Instruction
### Step 0
请先安装地图服务包
'''
sudo apt install ros-noetic-map-server
'''
然后安装ros导航包
···
sudo apt install ros-noetic-navigation
···

### Step 1
下载roshybridA_ws以及rospid_ws到您的虚拟机中

注：有一个地方需要修改：
![fc207175fd253ea7bb67f716c0137c6](https://github.com/ppap36/ROS-Nav-Platform/assets/108739132/9fbed73c-1002-4554-a631-2452b57c2662)

上图中nav.yaml的第一行image: /root/rosnav_ws/src/nav_pkg/map/nav.pgm
需要改成你自己文件目录下nav.pgm的路径（PS：nav.yaml跟nav.pgm在同一个路径）


我的虚拟机配置：

windows_wsl2 + ubuntu

ros1-noetic
### Step 2
打开两个终端，分别运行以下代码
对于roshybridA_ws
```
cd roshybridA_ws
chmod -R 777 *
source devel/setup.bash
roslaunch hybrid_astar_planner navtest.launch
```
对于rospid_ws
```
cd rospid_ws
chmod -R 777 *
source devel/setup.bash
roslaunch tracking_pid gazebo_pid_test.test
```
### tips 
如果不加入更改权限的代码，在运行中可能会出现以下情况

![48c17240904012b392350e8eac750dc](https://github.com/ppap36/ROS-Nav-Platform/assets/108739132/8cb2fd19-feb0-46da-a9ff-987126bd7923)

此时显示的rviz和gazebo页面如图所示
![image](https://github.com/ppap36/ROS-Nav-Platform/assets/108739132/7d222b5e-4995-4f96-9b93-85adf75d5bf3)

在rviz中，点击2D nav goal为机器人设定信息
![image](https://github.com/ppap36/ROS-Nav-Platform/assets/108739132/72c08cff-a782-4132-86f3-e587003d1ec8)

即可让机器人按照混合A*算法规划出来的路线进行行走
![image](https://github.com/ppap36/ROS-Nav-Platform/assets/108739132/c8f9f636-bd41-42b8-b5bf-3fb1e55e86dd)

## Reference 
本项目中的机器人主要参考了三个开源模型/教程，对此表示衷心的感谢，如有侵权，请联系

（1）机器人模型：autolabor
http://www.autolabor.com.cn/book/ROSTutorials/

（2）混合A*模型:
https://github.com/dengpw/hybrid_astar_planner.git

（3）pid跟踪模型：
https://github.com/nobleo/tracking_pid
