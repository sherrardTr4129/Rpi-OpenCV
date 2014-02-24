import RPi.GPIO as GPIO ## Import GPIO library
import time ## Import 'time' library. Allows us to use 'sleep'

GPIO.setmode(GPIO.BOARD) ## Use board pin numbering
GPIO.setup(7, GPIO.OUT) ## Setup GPIO Pin 7 to OUT

def checkButton():
    #check button state on pin 17
    ButtonState = GPIO.input(17)
    #if button is pushed return a 1
    if(ButtonState):
        return 1
    #else return a 0
    else:
        return 0

