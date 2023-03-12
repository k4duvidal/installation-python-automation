import pyautogui
import mouseinfo
import time
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By




pyautogui.hotkey('win', 'r')
time.sleep(2)
pyautogui.write('notepad')
time.sleep(2)
pyautogui.press('enter')
time.sleep(2)
pyautogui.write('Apenas um teste usando o Pyautogui ...')
#time.sleep(2)



#infomarções sobre a instalação do pyautogui: https://pyautogui.readthedocs.io/en/latest/keyboard.html

#infomarções sobre a instalação do Selenium: https://selenium-python.readthedocs.io/installation.html

#Para utilizar o Selenium e importante baixar o Driver, verifique a versao atual do seu google chrome ou firefox ja instalado, e baixe a mesma versao para o Driver 

""" 
driver = webdriver.Firefox()
driver = webdriver.Chrome() 
driver.get("http://www.python.org")
assert "Python" in driver.title
elem = driver.find_element(By.NAME, "q")
elem.clear()
elem.send_keys("pycon")
elem.send_keys(Keys.RETURN)
assert "No results found." not in driver.page_source
driver.close() """

#Utilize o mouseinfo para pegar a posição dos elementos
#Para utilizar o mouseinfo, basta descomentar a linha abaixo
#mouseinfo.mouseInfo()

