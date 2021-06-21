## Battery Box
====

Description:

What is it?

	The battery pack includes 400+ batteries arranged together to act as a single battery as well as the housing and mounting of these batteries. When the sun is not providing enough energy, it provides power to the car  and when the car is not using all the energy it is receiving from the sun, it stores the energy. 

What are the goals?

	Safety, reduce internal resistance in the pack, modularity, reduce weight, reduce cost, meet the time constraints, maintain a low center of gravity, and keep a layout that favors clean easy harnessing.
	Safety of the pack primarily focuses on reducing the chances of an accidental short happening or any electrical connections becoming undone. These problems could cause arcing within the pack leading to the batteries entering thermal runaway. Allowing for proper airflow through the battery pack is also important to prevent the batteries from overheating while running.
	Reducing internal resistance is necessary to waste as little energy as possible. Any form of resistance from wires or even the internal resistance of the batteries will cause heat losses. The goal is to efficiently use the minimal energy gathered from the sun to power the car and reducing resistance will increase efficiency. 
	Modularity is about the ease of switching in and out of battery modules allowing for easier maintenance, repair, and interchangeability. This will have to happen a few times over the lifetime of the pack and the battery pack will likely be fully disassembled at some point. This also includes a safety component. It is important to be aware of where tools will have to go to service the pack or bring modules in or out. These tools will likely be metal, so the removal should be designed in a way that makes it difficult to damage batteries or cause a short while working with the tools needed.
	Reduce weight pertains to keeping the weight of the entire pack as low as possible in order to increase the efficiency of the car. With a lower weight, the car requires less energy to drive which is comparable to a real car having better miles per gallon when weight is reduced.  
	Reduce cost in order to preserve the team’s finite budget allowing for more money to be spent on other systems or any unforeseen circumstances that may arise.
	Meeting the time constraints means having the pack manufactured in time for competition and ideally a couple of months in advance to allow for testing and coordination with other systems. 
	Maintaining a low center of gravity is crucial to reduce the chance that the car will rollover. The battery pack is one of the largest point masses on the entire car so it is important to keep its weight as low in the car as possible.
	Design for easy, clean harnessing means that wires should not be haphazardly running all over the top of the pack making it difficult to work with and tell where each wire leads to. Although there will be a large number of wires running over the pack between the voltage taps and thermistors, it should be designed in a way where wires are organized and the pack is easy to work with.

What are the priorities?

	The first priority will always be safety, the battery pack can be very dangerous if done incorrectly (see Oregon State 2011, Stanford and Vattenfall 2019). 
	The next priority is time; the car will not be able to run without the battery pack so keeping a tight schedule is important to ensure it is ready by competition.
	After that, all of the goals that increase car performance, weight, resistance, and cost, must be considered to find what has the biggest impact
	Next is modularity and clean harnessing because this has a role in safety as well as ease of maintenance and repair of the pack.
	Finally, the lower the center of mass is mainly determined by the location of the pack in the chassis. The arrangement of batteries within will only affect its center of mass by a few inches

How the system interacts with other systems?

	Mostly affects electrical systems with our choice of pack voltage
	The battery pack voltage affects the following systems:
		Battery Management system: The pack voltage dictates how the electrical team configures the battery management software to protect the car from unsafe battery conditions. (the configuration of itself, like module size, affects BMS taps and configuration).
		Power Board: Depending on the pack voltage the system’s power board needs to spec different parts to be able to convert the pack voltage into lower voltages that the auxiliary systems can utilize.
		Motor Controller: Depending on the module configuration there will be a system voltage and maximum current draw. These values affect what the motor controller can be programmed for.
		Wire Harness: The values of the pack will affect what certain hardware components we need to get. This includes: Wires, Fuses, Switches, and Connectors
	We are a low priority mechanical system, others decisions mostly affect us, chassis defines how much space we have. But we also affect chassis with any welding that may be used for mounting
	Reducing the cost of the battery pack system is important as it preserves the finite budget of the team so that more money can be allocated to other systems
	How the chassis affects the battery box
		The box needs to be mounted in the chassis and able to withstand 2.5 g rollover front and side impacts.
		The mounting must be designed to reduce weight while also being able to withstand all the loading scenarios.
		The side impact is addressed by manufacturing the box to the exact width of the chassis. This means the chassis width is the side size constraint.
	How the battery box affects the chassis system
		To prevent the box from sliding forward or the front of the box from rising, T brackets are welded to the chassis in front of the box
		L brackets extend over the box and there is a removable beam tube along the rear
		This affects the chassis system as the box specifications determine where the weld brackets will be placed for mounting.

More Details

.. toctree::
   :maxdepth: 1
   :caption: Battery Box in Depth

   Theory <theory.md>
   Yearly Design Process <yearlyDesignProcess.md>
   Lessons Learned 2019-2020 Cycle <lessonsLearned2019-2020Cycle.md>
   
