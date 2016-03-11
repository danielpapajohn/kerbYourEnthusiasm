//basic script for putting a two stage rocket into LKO
CLEARSCREEN.
PRINT "Launching...".

//zero throttle
LOCK THROTTLE TO 0.0.

//set heading upward
LOCK STEERING TO UP.

//stage to activate engines
STAGE.

//full throttle
LOCK THROTTLE TO 1.0.

//wait for 7500M altitude
WAIT UNTIL SHIP:ALTITUDE > 7500.

//begin gravity turn (East, no inclination)
PRINT "Starting gravity turn.".
LOCK STEERING  TO HEADING(90,45).

//wait for 40000M altitude
WAIT UNTIL SHIP:ALTITUDE > 25000.

//if apoapsis is over 75000
IF APOAPSIS > 75000
{
  //zero throttle
  LOCK THROTTLE TO 0.0.	
}
ELSE
{
  //steepen gravity turn
  PRINT "Tipping gravity turn.".
  LOCK STEERING  TO HEADING(90,10).
  
  //wait until apoapsis is over 75000M
  WAIT UNTIL APOAPSIS > 75000.
  //zero throttle

}

//wait until apoapsis
WAIT UNTIL APOAPSIS - ALTITUDE < 1000.

//raise periapsis to 74000M
PRINT "Starting orbital burn.".
LOCK STEERING TO HEADING (90, 0).
LOCK THROTTLE TO 1.0.
WAIT UNTIL PERIAPSIS > 70000.

//now we're in a stable orbit
LOCK THROTTLE TO 0.0.
PRINT "Orbit stabilized.".
