CineMoco
========
#####To update your controller:
1. Connect to computer via USB.
2. Navigate to and right-click the "autoupdate" script in the Mac folder or 
the Windows folder for whichever OS you are running. You're computer will warn you it's from an unidentified developer.  Click open.   The Mac script should 
work on Linux as well.

NOTE: If you are on windows the script will need to know which COM port to use.  The script will list your available com ports like so:

COM13 = \Device\BlahBlah  
COM4 = \Device\Jaja  
COM7 = \Device\VCP0  

Followed by some instructions after which you will enter _the number only_ of the port which ends in VCP0.  
"7" + "Enter"

Your terminal should now appear as if it is having a seisure.  This is good.

The easier_instructions.pdf has a nice graphic to walk you through this process.

#####If you are interested in hacking on the CineMoco:
The Arduino code can be found inside of "CineMoco-vX.X" folder.

Cheers!
