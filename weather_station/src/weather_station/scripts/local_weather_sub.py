#!/usr/bin/env python
import rospy
from weather_station.msg import Weather as WeatherMsg

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + 'Temperature %s | Windspeed: %s | Humidity: %s | Timestamp %s' % (data.temperature, data.windspeed, data.humidity, data.timestamp))

def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('weather_sub', anonymous=True)

    rospy.Subscriber('weather', Weather, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()