#!/usr/bin/env python

from unittest import TestCase
from ros_ci.example_class import ExampleClass


class TestExampleClass(TestCase):

    def test_class_creation(self):

        example_class_instance = ExampleClass(1)

        self.assertEquals(1, example_class_instance)

# test entry point
if __name__ == '__main__':
    import rosunit

    rosunit.rosrun('ros_ci', 'test_example_class', TestExampleClass)
