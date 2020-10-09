# Steering Wheel

The purpose of this system is essentially to allow for communication between the driver and the car. 

## PCB

As the name would suggest, this board is mounted on the steering wheel, and it has all the buttons and switches that the driver will access. 
When the driver presses a button or flips a switch, it takes that input to the board's microcontroller, which takes action based on the signal. 
If the driver presses the Hazards button, for instance, the microcontroller sends out a signal to turn on an indicator LED near the button, so the driver knows that they're on, and also sends a signal to the lights board, so the hazards actually turn on.

<img src="/_static/auxiliary/steeringpcb.PNG" alt="Image of the Steering Wheel PCB Layout" width="100%"/>

*Steering Wheel PCB Layout*

Most communication between boards is done using the CAN communication protocol, so the outgoing signals go through the CAN transceiver first to be encoded.
Incoming signals also come in through the CAN transceiver, which decodes them into something that the microcontroller can handle before passing it on. 
A few of the signals are not transmitted through CAN. 
These include the startup sequence signals, cruise control, and reverse. This is partially for safety reasons, as it's critical that these functions work as expected, and the chance of errors occurring is lower if the signal doesn't need to be converted to and from CAN. 
For the startup sequence, CAN can't be used because it requires power, and the car's power isn't turned on until after it's been started.

In the center of the board, there's an LCD screen that will display relevant information like speed and battery charge to the driver. 
SPI, another communication protocol is used to relay information to and from the LCD screen.

## Code

[Steering Wheel Code repo available here.](https://github.com/Solar-Gators/Auxiliary_2019-2020/tree/steering_wheel)