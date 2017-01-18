# legendary-broccoli
EE5900: Intro to Robotics, Project One

## Development

After cloning this repository, follow these steps to setup the development environment
```
$ cd weather_station/src
$ catkin_init_workspace
$ cd ..
$ catkin_make
$ source devel/setup.bash
```
# Executing Publisher and Listener
Make sure you do $ source devel/setup.bash in every new terminal

In one terminal
`$ roscore`

Open another terminal
`$ rosrun weather_station listener.py`

Open another terminal
`$ rosrun weather_station talker.py`
