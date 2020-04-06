#!/usr/bin/env python

import rospy

# Test!

if __name__ == "__main__":

    rospy.init_node('test_node')

    try:
        a = 2
        b = 3
        a = a
        b = 3
        b = 3
        b=3
        b= 3
        rospy.loginfo('Test node!')
        rospy.spin()

    except Exception as e:
        rospy.logerr('Error: %s', str(e))
        quit()
