//basic script for putting a two stage rocket into LKO
//zero throttle
MAINTHROTTLE = 0.0.
//set heading upward
//stage to activate engines
//full throttle
//wait for 7500M altitude
//begin gravity turn (East, no inclination)
//wait for 40000M altitude
//if apoapsis is over 75000
  //zero throttle
//else
  //steepen gravity turn
  //wait until apoapsis is over 75000M
  //zero throttle
//wait until apoapsis
//raise periapsis to 74000M
//now we're in a stable orbit


CLEARSCREEN.
PRINT "Launching...".
LOCK STEERING TO UP.
LOCK THROTTLE TO 1.0.
STAGE.
WAIT UNTIL SHIP:ALTITUDE > 7500.
PRINT "Starting gravity turn.".
LOCK STEERING  TO HEADING(90,45).

WAIT UNTIL SHIP:ALTITUDE > 25000.
PRINT "Tipping gravity turn.".
LOCK STEERING  TO HEADING(90,10).

WAIT UNTIL SHIP:ALTITUDE > 70000.
PRINT "SPAAAAACE!".
STAGE.
WAIT 5.
LOCK THROTTLE TO 0.0.
STAGE.
LOCK THROTTLE TO 0.0.
WAIT UNTIL APOAPSIS - ALTITUDE < 1000.
PRINT "Starting orbital burn.".
LOCK STEERING TO HEADING (90, 0).
LOCK THROTTLE TO 1.0.
WAIT UNTIL PERIAPSIS > 70000.
LOCK THROTTLE TO 0.0.
PRINT "Orbit stablized.".
