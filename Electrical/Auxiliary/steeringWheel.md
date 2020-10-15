# Steering Wheel

The purpose of this system is essentially to allow for communication between the driver and the car. 

## PCB

As the name would suggest, this board is mounted on the steering wheel, and it has all the buttons and switches that the driver will access. 
When the driver presses a button or flips a switch, it takes that input to the board’s microcontroller, which takes action based on the signal. 
If the driver presses the Hazards button, for instance, the microcontroller sends out a signal to turn on an indicator LED near the button, so the driver knows that they’re on, and also sends a signal to the lights board, so the hazards actually turn on.

<img src="/_static/auxiliary/steeringpcb.PNG" alt="Image of the Steering Wheel PCB Layout" width="100%"/>

*Steering Wheel PCB Layout*

In the center of the board, there's an LCD screen that will display relevant information like speed and battery charge to the driver. 
SPI, a communication protocol, is used to relay information to and from the screen.
As explained in the communication section, most of the signals on this board are sent to and received from other boards through the CAN Bus communication protocol, meaning they must be encoded or decoded by the CAN transceiver after they come out of or before they go into the microcontroller. 
Notable exceptions include the startup sequence signals, reverse, and cruise control.

## Code

[Steering Wheel Code repo available here.](https://github.com/Solar-Gators/Auxiliary_2019-2020/tree/steering_wheel)