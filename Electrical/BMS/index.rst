BMS
===
At any given time, our solar car will either be charging or discharging, and to make sure our batteries remain within safe operating conditions, we need to use a Battery Management System (BMS). The BMS takes inputs from each battery cell, such as voltage, current, and temperature, and is responsible for determining whether it's safe to use the batteries. 
Battery cells often have limits as to how much current can be drawn from them without significantly reducing the capacity of the battery, so it's important to always draw the right current, and recharge it with an appropriate amount. Cells also have a safe operating voltage they need to be within, and they also cannot be too hot. The BMS is responsible for regulating the current and voltage, and also disconnects the battery from the vehicle should the temperature go outside a safe range, risking a fire. We also need a way to safely start up the car each time we want to use it. This is where the startup board comes in. It's responsible for checking with the BMS, ensuring that everything's okay, and then proceeds to start the vehicle safely. 

The BMS subteam consists of Custom BMS, Startup, and Orion BMS

.. toctree::
    :maxdepth: 1
    
    Custom BMS <CustomBMS>
    Orion BMS <OrionBMS>
    Startup <Startup>
