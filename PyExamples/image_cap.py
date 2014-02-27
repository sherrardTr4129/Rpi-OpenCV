import cv2
import numpy as np


#setup default camera capture
cap = cv2.VideoCapture(0)

#wait for camera to initalize
cv2.waitKey(1)

# take a single frame
frame = cap.read()

#save image
cv.imwrite('person.png',frame)
