import numpy as np
import cv2


#setup default camera capture
cap = cv2.VideoCapture(0)

#wait for camera to initalize
cv2.waitKey(1)

# take a single frame
frame = cap.read()

#save image
cv2.imwrite('person.png',frame)
