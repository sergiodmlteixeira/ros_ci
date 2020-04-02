#!/usr/bin/env python
import rostest
import sys
import unittest

PKG = 'ros_ci'

class SampleTest(unittest.TestCase):

    def test_one_equals_one(self):
        self.assertEquals(1, 1, "1 != 1")

# test entry point
if __name__ == '__main__':

    rostest.rosrun(PKG, 'sample_test', SampleTest)