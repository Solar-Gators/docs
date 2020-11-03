# Lights

The purpose of the lights system is to take in input signals and use them to control the car's lighting (brake lights, headlights, left and right blinker, hazards).

## PCB

The lights are wired so that their positive terminal is always connected to power, and their negative terminal is connected to the lights board. 
Depending on the input, the board can manipulate the voltage at the negative terminal to turn the lights on or off. 
The inputs for the blinkers, headlights, and hazards come from the steering wheel as a CAN encoded signals and, after the CAN transceiver decodes them, go to the lights board microcontroller. 
From there, the microcontroller sends an output to the gates of MOSFETs, which serve as switches to connect the negative terminals of the lights to ground if the output from the microcontroller is high enough.

<img src="/_static/auxiliary/lightspcb.PNG" alt="Image of the Lights PCB Layout" width="100%"/>

*Lights PCB Layout*

The brake input is a little more complicated, as it takes an analog value related to how much the brake pedal is compressed to determine if the brake light should be on. 
A comparator is used to determine if the analog value exceeds a set threshold and the appropriate signal is then fed to the microcontroller. 
From that point on, the process is the same as it is to turn on the other lights.

## Code

[Lights Board Code repo available here.](https://github.com/Solar-Gators/Auxiliary_2019-2020/tree/lights_board)