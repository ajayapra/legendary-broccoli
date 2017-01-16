# [Installing and Configuring Your ROS Environment](http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment)

## Notes

- Completed tutorial using the rosbuild instructions.
- Installed Indigo Igloo sucessfully on a "repaired" laptop
  - Ubuntu 14.04.4: `$ apt-get install ros-indigo-desktop-full`
- `/opt/ros/indigo/setup.bash` can't be viewed by the user. It does actually exist, it just isn't readable by the user.

## Confirmation

```
ian@Paladin:~/Robotics/legendary-broccoli/irwakely/workspace$ echo $ROS_PACKAGE_PATH
/home/ian/Robotics/legendary-broccoli/irwakely/workspace/sandbox:/opt/ros/indigo/share:/opt/ros/indigo/stacks
```
