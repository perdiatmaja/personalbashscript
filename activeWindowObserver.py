#!/usr/bin/python
  
from AppKit import NSWorkspace
import os
import sys

activeAppName = NSWorkspace.sharedWorkspace().activeApplication()['NSApplicationName']
print activeAppName

if __name__ == "__main__":
  sys.exit(activeAppName)