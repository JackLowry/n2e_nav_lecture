# n2e_nav_lecture

Contains code on how to utilize the ROS navigation stack to map and navigate around an unknown area with the Turtlebot2 in Gazebo.

To use these scripts, you must be on a linux environment with ROS installed. Clone the repo, and run `./install_basic.sh` This will intsall all the necessary dependencies. Then, run `catkin_make` to build the environment. Then, source the `setup.sh` file created in `catkin_ws/devel/`.

To run the only the simulation in Gazebo, run `roslaunch nav_tester teleop_demo.launch`.

To run the SLAM demo, run `roslaunch SLAM_demo.launch`. If you want to save your created map, run `rosrun map_server map_saver -f mymap` in the `catkin_ws` directory.

To run the AMCL demo, run `roslaunch AMCL_demo.launch`.

[You can view the slides I used to introduce the topic here](https://docs.google.com/presentation/d/1XjHT2j3o4JAbuzK-9w4Qj-12SjZpGxrV96TNiipYOpw/edit?usp=sharing).
