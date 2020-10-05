# Power Board PCB

The Power Board PCB was developed to step down voltages for other electrical systems. The PCB is intended to have very little latent power draw and to reduce noise from the input voltage sources.

## DC/DC Converters

Our board uses 4 integrated DC/DC converters provided by TDK Lambda. These converters are used to safely step down the input voltages from 100V and 12V, to 5V and 3V3. The board includes a 100-12V converter, a 12-5V converter, and two 12-3.3V converters (One for the main state and one for the trip state).

## Filters

We use filters in our board for many reasons. For one, these filters help to reduce noise coming from the DC voltage sources (Main battery pack and 12V lead acid battery). This means that the filters help to prevent spikes in voltage and current within the circuit. Large spikes in voltage and current can damage expensive components in our board, so it is very important to have these filters in place. The filters are placed as either inputs or outputs for each converter in order to protect the converters from being protected. Components used in these filters include capacitors, inductors, and diodes, which are much cheaper than the DC/DC Converters that we have in our board, protecting our board electrically and even economically.

## Fuses

Fuses are placed around our board to prevent the entire board from being damaged. The fuses are put in place as a fail-safe to human and calculation errors when soldering and testing the board. Obviously, it is a lot better economically to blow a fuse than to destroy the whole board and all of its components connected.

## Diode Oring

The use of diode oring in the board allows the 100V and 12V sources to work together seamlessly. Two diodes have been placed in front of the 100V and 12V Supplementary lines to prevent voltage source backflow. When the 100V source is turned off, as the car enters its trip state, the diode on the 12V source is in forward bias, allowing current to flow through it, while the diode on the 100V supply line is in reverse bias, protecting the battery from backflow. When the car enters its main state, and the 100V battery pack is turned on, the diode in front of the 100V suuply line goes into forward bias and the 12V supply line diode enters reverse bias, preventing backflow from the higher voltage source.
