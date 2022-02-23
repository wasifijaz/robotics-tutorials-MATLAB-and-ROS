# Creating the kinematic model of Turtle Bot in ROS (Robot Operating System) and Gazebo
## Installing Gazebo:
Gazebo can be installed as a standalone application or an integrated application along with ROS. In this chapter, we will use Gazebo along with ROS for simulation and to test our written code using the ROS framework.
To work with Gazebo and ROS, we do not need to install it separately because Gazebo is built-in along with the ROS desktop-full installation. The ROS package integrates Gazebo with ROS named gazebo_ros_pkgs, which has created wrappers around a standalone Gazebo. This package provides the necessary interface to simulate a robot in Gazebo using ROS message services.

The complete Gazebo_ros_pkgs can be installed in ROS Indigo using the following command: 
#### $ sudo apt-get install ros-indigo-gazebo-ros-pkgs ros-indigo-gazebo-ros-control

## Testing Gazebo with the ROS interface:
#### $ roscore
#### $ rosrun gazebo_ros gazebo
#### $ rostopic list

## We can run the server and client separately using the following command: 
#### $ rosrun gazebo_ros gzserver
#### $ rosrun gazebo_ros gzclient 

## Installing TurtleBot Robot packages on ROS Indigo:
#### $sudo apt-get install synaptic
#### $ mkdir ~/turtlebot
#### $ cd ~/turtlebot
#### $ wstool init src –j5 https://raw.github.com/yujinrobot/yujin_tools/master/rosinstalls/indigo/turtlebot.rosinstall 
#### $ rosdep install --from-paths src -i -y
#### $ catkin_make
#### $ echo "source ~/turtlebot/devel/setup.bash" >> ~/.bashrc
#### $ source ~/.bashrc 

## Simulating TurtleBot using Gazebo and ROS
#### $ roslaunch turtlebot_gazebo turtlebot_empty_world.launch
#### $ roslaunch turtlebot_teleop keyboard_teleop.launch 
#### $ rostopic list
