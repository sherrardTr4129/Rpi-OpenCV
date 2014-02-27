import RPi.GPIO as GPIO ## Import GPIO library

GPIO.setmode(GPIO.BOARD) ## Use board pin numbering
GPIO.setup(17, GPIO.IN) ## Setup GPIO Pin 17 to OUT

def checkButton():
    value = 0
    #check button state on pin 17
    ButtonState = GPIO.input(12)
    #if button is pushed set value to 1
    if(ButtonState):
        value = 1
    GPIO.cleanup()
    #return value
    return value

