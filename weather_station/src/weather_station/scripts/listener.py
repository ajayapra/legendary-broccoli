#!/usr/bin/env python

import rospy
from std_msgs.msg import String

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + 'Humidity percentage is %s', data.data)

def callback_humidity(data):
    rospy.loginfo('Humidity percentage is %s', data.data)
def callback_wind(data):
    rospy.loginfo('Wind speed is %s',data.data)
def callback_temp(data):
    if data.data >= 0.0 and float(data.data) <=10.0:
    	rospy.loginfo('You might not be freezing. But stay warm. Its %s C', data.data)
    elif data.data >10.0 and float(data.data) <=30.0:
    	rospy.loginfo('Its %s C. Feels good', data.data)
	
    elif float(data.data) >30.0:
    	rospy.loginfo('Its %s C. Warm enough. Get a chilled beer', data.data)
    elif float(data.data) <0.0:
    	rospy.loginfo('Below freezing point. Stay warm. Its %s C', data.data)
    else:
    	rospy.loginfo('Current temperature is %s C', data.data)

def callback_status(data):
    rospy.loginfo('Look around. Its %s today',data.data)
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber('chatter', String, callback)
    rospy.Subscriber('humidity', String, callback_humidity)
    rospy.Subscriber('temp', String, callback_temp)
    rospy.Subscriber('status', String, callback_status)
    rospy.Subscriber('wind', String, callback_wind)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
