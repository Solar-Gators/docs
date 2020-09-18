# Power Board 2019-2020 Summary

## Goals for the 2019-2020 Design Cycle

### Goal 1: 
Make power board 4x4 size and adapt new systems
### Goal 2: 
Incorporate ideal diodes

## What was accomplished
Power board condensed to appropriate 4x4 dimensions.
Board now accounts for the newly introduced Telemetry system board.

## What was tested
Version 1 power board PCB.
Correct voltages after each converter.

## What was not tested
Ideal Diodes
Board performance when integrated with other system’s boards.
Version 2 Board (Still at UF)

## What failed
When inductive load (horn) placed on board spiked voltage
Spacing of holes on board did not match up for some components (diodes, converter).

## What passed
All stepped down voltages were achieved as planned.
All components worked correctly together when connected the right ways.
When creating pcb use schematic for charting where the current goes and grouping into functional groups so that it is easier to wire on the pcb and understand what is happening
Define keep out area and then board shape
Make traces cuttable and correct width

## What needs to be or could be improved
Get components before you design the board so you don’t have to redesign the board. 
Make it more efficient… decrease latent power draw.
Make voltage curves a lot smoother by reducing noise.
Get information about each system’s power draw earlier and more accurately rather than later so that we can have better power calcs.
Familiarity with Altium.
Have professors review the board and look for improvements.

## Design changes that should be made
Ideal Diode
IGBTs instead of Contactors 

## Where to pick up for the 2020-2021 design cycle
Introduce contactors and ideal diodes into the board, reducing latent power draw and increasing overall efficiency.
Get more sponsors. 
Recalculate power draw for all systems. 

### PCBs
Update footprint library to have correct spacing. (important on creating a library)
	Create a library of essential (and correct) components
	Names updated, better interfacing
Move footprint of converter to top overlay.
Replace old diode footprints with ideal diode footprints.
Implement contactor footprints into board.
Maintain board’s 4x4 size.
Add polarity of components to library.

## Code
N/A
## Comments:
Connection diagram/ what wires needed for 2019-20 are in electrical master and PowerBoard-> Planning
