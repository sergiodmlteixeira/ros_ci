#!/usr/bin/env python
import unittest
import rostest

from test_class import TestClass

PKG = 'ros_ci'

class SampleTest(unittest.TestCase):

    def test_one_equals_one(self):
        self.assertEquals(1, 1, "1 != 1")


    def test_class_creation(self):

        test_instance = TestClass(1)

        self.assertEquals(1, test_instance.identifier)

# test entry point
if __name__ == '__main__':

    rostest.rosrun(PKG, 'sample_test', SampleTest)