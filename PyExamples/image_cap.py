import numpy as np
import cv2


ramp_frames = 30

#setup default camera capture
cap = cv2.VideoCapture(0)

def CaptureImage():
    # take a single frame and it's
    # succes/fail boolean
    success, frame = cap.read()
    return frame

def rampCam():
    # gives camera time to init the
    # stream.
    for i in range(0, ramp_frames):
        temp = CaptureImage()


#ramp Camera
rampCam()

#get image
frame = CaptureImage()

#save image
cv2.imwrite('person.png',frame)

#delete camera object
del(cap)
