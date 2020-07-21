# Motor Controls PCB

The motor controls PCB was created to supplement other functions that already exist on the car, mainly pertaining to the motor controller. This PCB has the following functions:

1. Precharge motor controller and mppts
2. Latch and maintain power to the motor controller and mppt contactors 
3. Normal throttle input
4. Cruise Control
5. Regenerative braking input  

### Precharge:  
Precharge is necessary to prevent instanteeous short circuit current due to the massive capcaitacne of the motor controller and mppts. Without precharging these device may fail overtime.
Precharge is done by slowly charging the capacitors of these devices toward their nominal operating voltage. This is accomplished by first connecting main power to the devices through a 
series resistor. After the precharge is complete main power is then directly connected to the devices and the series resisotr circuit is opened. 
