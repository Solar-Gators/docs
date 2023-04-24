# Power Board PCB

The Power Board PCB was developed to step down voltages for other electrical systems. The PCB is intended to have very little latent power draw and to reduce noise from the input voltage sources.

## DC/DC Converters

Our board uses one integrated DC/DC converter provided by TDK Lambda. This converter takes in an input voltage of 100V and safely outputs 12V with a small power loss. The current converter we have on the board has an efficiency rating of 86-92%. The converter utilizes a buck configuration integrating MOSFETs, inductors, capacitors, and diodes in order to complete a reduction in voltage by increasing the current. 

## Filters

We use filters in our board for many reasons. For one, these filters help to reduce noise coming from the DC voltage sources (Main battery pack and 12V lead acid battery). This means that the filters help to prevent spikes in voltage and current within the circuit. Large spikes in voltage and current can damage expensive components in our board, so it is very important to have these filters in place. The filters are placed as either inputs or outputs for each converter in order to protect the converters from being protected. Components used in these filters include capacitors, inductors, and diodes, which are much cheaper than the DC/DC Converters that we have in our board, protecting our board electrically and even economically.

## Fuses

Fuses are placed around our board to prevent the entire board from being damaged. The fuses are put in place as a fail-safe to human and calculation errors when soldering and testing the board. Obviously, it is a lot better economically to blow a fuse than to destroy the whole board and all of its components connected. When an overcurrent is across the fuse it will blow creating a physical isolation from the over current source and the components on the board. 

## Diode Oring

The use of diode oring in the board allows the 100V and 12V sources to work together seamlessly. Two diodes have been placed in front of the 100V and 12V Supplementary lines to prevent voltage source backflow. When the 100V source is turned off, as the car enters its trip state, the diode on the 12V source is in forward bias, allowing current to flow through it, while the diode on the 100V supply line is in reverse bias, protecting the battery from backflow. When the car enters its main state, and the 100V battery pack is turned on, the diode in front of the 100V suuply line goes into forward bias and the 12V supply line diode enters reverse bias, preventing backflow from the higher voltage source. The diode oring configuration will prefer the higher voltage of the two sources. This is why trim resistors are utilized at the output of the buck converter in order to increase the voltage to around 13V. This way when diode oring the preffered output will be the 100V source instead of the supplimentary battery. 
