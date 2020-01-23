from imutils.video import VideoStream
import numpy as np
import imutils
import cv2 as cv

vs = VideoStream(src=0).start()

while True:
	# read the next frame from the file
	frame = vs.read()
	frame = imutils.resize(frame, width=1280)

	gray = cv.cvtColor(frame,cv.COLOR_BGR2GRAY)

	# show the frame to our screen
	cv.imshow("Frame", frame)

	key = cv.waitKey(1) & 0xFF

	# if the 'q' key is pressed, stop the loop
	if key == ord("q"):
		break

# close all windows
cv.destroyAllWindows()
vs.stop()