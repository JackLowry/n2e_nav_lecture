#!/usr/bin/env bash
mkdir -p src
cd src

# turtlebot
git clone https://github.com/turtlebot/turtlebot.git
git clone https://github.com/turtlebot/turtlebot_msgs.git
git clone https://github.com/turtlebot/turtlebot_apps.git
git clone https://github.com/turtlebot/turtlebot_simulator.git
git clone https://github.com/turtlebot/turtlebot_interactions.git
mv turtlebot_interactions/turtlebot_rviz_launchers .
rm -rf turtlebot_interactions

git clone https://github.com/yujinrobot/kobuki_msgs.git
git clone --single-branch https://github.com/yujinrobot/kobuki.git
mv kobuki/kobuki_description kobuki/kobuki_node kobuki/kobuki_keyop kobuki/kobuki_safety_controller kobuki/kobuki_bumper2pc .
rm -rf kobuki

git clone --single-branch https://github.com/yujinrobot/kobuki_desktop.git
mv kobuki_desktop/kobuki_gazebo_plugins .
rm -rf kobuki_desktop

git clone --single-branch https://github.com/yujinrobot/kobuki_core.git
mv kobuki_core/kobuki_driver .
rm -rf kobuki_core

git clone https://github.com/ros-perception/depthimage_to_laserscan.git

git clone https://github.com/yujinrobot/yujin_ocs.git
mv yujin_ocs/yocs_cmd_vel_mux yujin_ocs/yocs_controllers yujin_ocs/yocs_velocity_smoother .
rm -rf yujin_ocs

sudo apt-get install -y ros-noetic-kobuki-*
sudo apt-get install -y ros-noetic-ecl-streams


#required for mapping
git clone --single-branch https://github.com/ros-drivers/openni2_camera.git
git clone --single-branch https://github.com/ros-drivers/rgbd_launch.git
git clone --single-branch https://github.com/ros-perception/slam_gmapping.git
git clone --single-branch https://github.com/ros-planning/navigation.git
mv navigation/move_base .
rm -rf navigation

# necessary for build and gazebo
sudo apt-get install -y ros-noetic-openslam-gmapping
sudo apt-get install -y ros-noetic-base-local-planner
sudo apt-get install -y ros-noetic-clear-costmap-recovery
sudo apt-get install -y ros-noetic-move-base-msgs
sudo apt-get install -y ros-noetic-navfn
sudo apt-get install -y ros-noetic-rotate-recovery
sudo apt-get install -y ros-noetic-map-saver
sudo apt-get install -y ros-noetic-amcl
sudo apt-get install -y ros-noetic-dwa-local-planner


# necessary for compiling our own code
cp -r ../nav_tester .