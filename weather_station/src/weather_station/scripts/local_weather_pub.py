#!/usr/bin/env python
import rospy
from weather_station.msg import Weather as WeatherMsg
import urllib2
import json
import sys

wundergroundURL = 'http://api.wunderground.com/api/298d994ea54cba2d/geolookup/conditions/q/{zip}.json'.format

def weather_pub_start(zip, refresh):
    pub = rospy.Publisher('weather', WeatherMsg, queue_size=10)
    rospy.init_node('weather_pub', anonymous=True)
    rate = rospy.Rate(refresh)

    while not rospy.is_shutdown():
        # Get weather data from weather underground
        f = urllib2.urlopen(wundergroundURL(zip=zip))
        weather_data = json.loads(f.read())['current_observation']

        # Make a weather message
        pub_weather = WeatherMsg(tempature=float(weather_data['temp_f']),
                                 humidity=weather_data['relative_humidity'],
                                 windspeed=float(weather_data['wind_mph']),
                                 timestamp=rospy.Time.now(),
                                 zipcode=zip)

        # Publish the weather message
        rospy.loginfo(pub_weather)
        pub.publish(pub_weather)
        rate.sleep()

if __name__ == '__main__':
    if len(sys.argv) == 3:
        zip = sys.argv[1]
        rate = 1/float(sys.argv[2])
    elif len(sys.argv) == 2:
        zip = sys.argv[1]
        rate = 0.0005 # 30 mins
    else:
        print("%s [zipcode] <refresh rate (secs)>" % sys.argv[0])
        sys.exit(1)

    try:
        weather_pub_start(zip, rate)
    except rospy.ROSInterruptException:
        pass
