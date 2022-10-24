# An automous car Tesla.

## BDD approach 
As a "driver"
I WANT the car to determine the speed limit and set the speed to that limit.
SO THAT I don't have to adjust the speed myself.

## ATDD approach 
GIVEN the speed limit 70km/h
WHEN the car in moving
THEN the speed limit should remain/adjusted betwenn 65 and 70km/h

GIVEN the speed limit 70km/h
WHEN the speed limit changes to 50km/h
THEN deceleration rate should be 15km/h