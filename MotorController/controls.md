# Motor Controls PCB

The motor controls PCB was created to supplement other functions that already exist on the car, mainly pertaining to the motor controller. This PCB has the following functions:

1. Precharge motor controller and mppts
2. Latch and maintain power to the motor controller and mppt contactors 
3. Throttle input
4. Cruise Control
5. Regenerative braking input  

### *Precharge:*  
Precharge is necessary to prevent instantaneous short circuit current due to the massive capacitance of the motor controller and mppts. Without precharging these device may fail overtime.  

Precharge is done by slowly charging the capacitors of these devices toward their nominal operating voltage. This is accomplished by first connecting main power to the devices through a series resistor. After the precharge is complete main power is then directly connected to the devices and the series resisotr circuit is opened. The resistance value of the series resistor determines the precharge time. Lower resistance leads to faster precharge, but greater instaneous power, so calculations should be done to ensure the resistor can handle the expected power. 

We use mosfets driven by a uP to connect GND through a series resistor to the devics. This mosfet remains on for the calculated precharge duration then turns off, thus disconnecting the path to ground through the series resistor. 

### *Contactors:*
Our car has two contactors that control main power going to the motor controller and the MPPT. The 12v coils of these contactors are controlled by mosfets whose gates are driven by a uP. The mosfets connect the GND of the coils when turned on. Since the coils of the contactors are an inductive load, a fly back diode must be used in reverse bias with the mosfet to prevent the mosfets from being damaged by voltage spikes caused from the inductive load. 

### *Throttle Input*
The Motor Controls board has a direct connection to the throttle that takes in driver input to control the car's speed. The board then connect this throttle signal to the motor controller throttle input. This middle man connection is done due to the addition of cruise control, which will be discussed in a later section. 

The throttle operates on 0-5V. 5V being the maxium input that translates to the maximum programmed speed of the motor. 

### *Cruise Control*
The Motor Controls board will also allow the car to utilize cruise control, which is not a build in function of the Motor Controller. The basics of the cruise control is discrete logic that takes in input from the cruise and regen buttons, as well as the brakes. These signals control a latch that determines whether the car is in cruise mode or not. If the car is not in cruise control a mux is connecting the driver throttle directly to the motor controller. If the car is in cruise mode then the mux connects a signal from a DAC that will provide a continuous throttle signal. This signal is controlled by the uP which will have PID control to regulate the car's speed based on a reference set by the driver. 

### *Regenerative Braking*

The Motor Controller by default has regenerative breaking functionality. This allows the motor to act as an electronic brake to slow the car down and also charge the batteries at the same time. An issue with the implementation of the regen braking was that a manual dial had to be turned to control the level of intensity and charge you wanted to regen brake. To avoid distracting the driver we had set this to the maximum level at all times, however this lead to us overcharging and causing the car to trip. To avoid this issues, but still charge at the maximum rate allowed at anytime, the Motor Controls board will use CAN communication between the auxillary, BMS, and MPPT system to calculate the optimal charge rate that the BMS will allow. By using CAN the car will know when the driver is activating the regen button, at this time message will send to the BMS and MPPT systems to get the maximum charge rate at the current time, as well as the current charge rate from the MPPTS. Using this data the controls board uP will calculate the highest allowable regen charge rate and output a control signal to the motor controller that corresponds to that charge rate.
