#!/usr/bin/env python

import rospy
import pyowm
from std_msgs.msg import String

def talker():
    pub = rospy.Publisher('chatter', String, queue_size=100)
    pub_temp = rospy.Publisher('temp', String, queue_size=100)
    pub_status = rospy.Publisher('status', String, queue_size=100)
    pub_humidity = rospy.Publisher('humidity', String, queue_size=100)
    pub_wind= rospy.Publisher('wind', String, queue_size=100)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(0.1) # 10hz
    while not rospy.is_shutdown():
	owm = pyowm.OWM('eae2fa6f2043503cff2b477f76d991b7')
	observation = owm.weather_at_place("Houghton,US")
	w=observation.get_weather()
	temperature = w.get_temperature('celsius')
	status=w.get_status()
	pub_temp.publish(str(temperature["temp_max"]))
	pub_status.publish(str(status))
	pub_humidity.publish(str(w.get_humidity()))
	wind=w.get_wind()
	pub_wind.publish(str(wind["speed"]))
	#pub_wind.publish(str(wind["speed"]))
	
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
