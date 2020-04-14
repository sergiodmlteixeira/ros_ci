#!/usr/bin/env python

from unittest import TestCase
from ros_ci_python_2.ros_ci_class_2 import RosCiClass2


class TestRosCiClass2(TestCase):

    def test_instance_creation_2(self):

        tIndentifier = "test_identifier"
        tInstance = RosCiClass2(tIndentifier)

        self.assertEqual(tIndentifier, tInstance.identifier)

if __name__ == '__main__':
    import rosunit

    rosunit.unitrun('ros_ci_python_2', 'test_ros_ci_class_2', TestRosCiClass2)
