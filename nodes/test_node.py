#!/usr/bin/env python

import rospy

if __name__ == "__main__":

    rospy.init_node('test_node')

    try:
        rospy.loginfo('Test node!')
        rospy.spin()

    except Exception as e:
        rospy.logerr('Error: %s', str(e))
        quit()
