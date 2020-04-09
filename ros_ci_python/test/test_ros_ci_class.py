#!/usr/bin/env python

from unittest import TestCase
from ros_ci_python.ros_ci_class import RosCiClass


class TestRosCiClass(TestCase):

    def test_instance_creation(self):

        tIndentifier = "test_identifier"
        tInstance = RosCiClass(tIndentifier)

        self.assertEqual(tIndentifier, tInstance.identifier)

if __name__ == '__main__':
    import rosunit

    rosunit.unitrun('ros_ci_python', 'test_ros_ci_class', TestRosCiClass)
