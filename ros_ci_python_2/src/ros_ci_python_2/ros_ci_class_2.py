#!/usr/bin/env python


class RosCiClass2(object):

    def __init__(self, identifier, name='default'):

        self.identifier = identifier
        self.name = name
    
    def set_name(self, name):
        self.name = name

    def get_name(self):
        return self.name
