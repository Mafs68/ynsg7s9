#!/usr/bin/env python
import subprocess
import time


subprocess.call("chmod 777 rad2.sh ", shell=True)
subprocess.call("./rad2.sh", shell=True)
