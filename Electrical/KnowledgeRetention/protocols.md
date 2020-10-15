# Protocols

## CAN
The CAN Bus protocol is used for most communication between boards. 
Essentially, it’s a system of encoding information that allows all the components on the car to speak onto one line, letting the highest priority messages through first. 
The microprocessors on our boards can’t encode or decode CAN messages, so each board is also equipped with a CAN transceiver to serve this purpose. 
All outgoing messages are sent from the Rx and Tx pins on the microcontroller to the transceiver, where they’re encoded before being sent to other boards. 
For incoming messages, the same thing happens in reverse. 
The incoming CAN encoded messages are decoded by the transceiver before being fed into the Rx and Tx pins, from which point they may be sent anywhere else on the board. 

The CAN bus communication protocol is used in automobiles because it’s good for maintaining signal integrity over long distances, even in high noise environments. 
This being said, we don’t use it for all signals on our car. 
The startup sequence signals, for instance, have to be taken care of with hardware alone because the CAN transceivers need power to encode messages, and don’t have it until after the car has been turned on. 
Some other signals, like cruise control and reverse, aren’t sent with CAN for safety reasons. 
It’s essential that these functions work as they’re expected to, and there’s a smaller chance of error if the signal doesn’t need to be encoded, compete with all the other signals being sent over CAN, and decoded again.
