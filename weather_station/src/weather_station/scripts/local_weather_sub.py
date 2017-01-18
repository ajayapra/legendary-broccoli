#!/usr/bin/env python
import rospy
from weather_station.msg import Weather as WeatherMsg
import random

cold = [
    "\"The sun did not shine. It was too wet to play. So we sat in the house. All that cold, cold, wet day.\" - Dr. Seuss, The Cat in the Hat",
    "\"A lot of people like snow. I find it to be an unnecessary freezing of water.\" - Carl Reiner",
    "I miss hating the summer heat..."
]

default = [
    "You are the sky. Everything else - it's just the weather",
    "\"But who wants to be foretold the weather? It is bad enough when it comes, without our having the misery of knowing about it beforehand.\" - Jerome K. Jerome, Three Men in a Boat",
    "\"Look at that moon. Potato weather for sure.\" - Thornton Wilder, Our Town"
]

hot = [
    "\"The sky is blue today, Max, and there is a big long cloud, and it's stretched out, like a rope. At the end of it, the sun is like a yellow hole. . .\" - Markus Zusak, The Book Thief",
]

windy = [
    "\"I don't need a weatherman to know which way the wind blow\" - Bob Dylan",
]

calm = [
    "After a storm, comes a calm",
    "Anyone can hold the helm when the sea is calm.",
]

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + 'Temperature %s | Windspeed: %s | Humidity: %s | Timestamp %s' % (data.temperature, data.windspeed, data.humidity, data.timestamp))

    if data.temperature < 32:
        extra = cold
    elif data.temperature > 65:
        extra = hot
    else:
        extra = []

    if data.windspeed < 5:
        extra = extra + calm
    elif data.windspeed > 15:
        extra = extra + windy

    print(random.choice(default + extra))

def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('weather_sub', anonymous=True)

    rospy.Subscriber('weather', WeatherMsg, callback)
    print("Ready to report about the weather!")

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
