Power Board
====
The powerboard serves to step down the 100V supplied from the car's battery to lower voltages, allowing other electrical subsystems to utilize the voltages that they need as an input. The board takes in voltage inputs from the battery pack, the solar array, and the supplementary batteries at 100V and 12V. These voltages are then filtered out through the board and stepped down to 12V, 5V and 3.3V. The board also establishes the multiple power states of the car in terms of the trip state and the main state.

From `actpower.com <https://www.actpower.com/educational/what-is-a-power-supply-and-how-does-it-work/>`_, 
"The power supply works to convert the power from the source into the correct format and voltage." 
The car has two power sources: the solar cells charging a 100V battery and a 12V supplemental battery. 
Thus the power board has to manage those two sources while supplying power to other systems whose components 
only need maybe 5V. Most of the other systems have to be powered through the power board PCB which is why 
it is so important.

Currently we only have the summary from last year but soon more resources detailing the power board system 
will be put out.

.. toctree::
   :maxdepth: 1

   PowerBoard 2019-20 Summary <PostMortem>
   PCB and Components <PCB>

Trip State
----
The trip state of the car is a state in which things are powered during car start-up. Trip is reserved for things that ed to stay on even when the main battery is off. The trip power supply stems from a 12V supplementary battery in the car. Boards such as Telemetry, BMS, and the Driver Display.

Main State
----
The main state of the car happens after the main battery array is turned on. It's important to note that this state includes everything that was powered in the trip state. This state supplies 100V to the powerboard and in hand,powers the trip state boards, Aux, MPPT and the Motors. This is also the state where the solar arrays are being utilized.

Diagram of how Powerboard connects with other components below.

.. figure:: https://docs.google.com/drawings/d/e/2PACX-1vSeXTQNHIGB7T7mL5e5OWgiq1vJut5Sc81cvE3aRfOSItKJBOGIAZoW8D9zs1lG9XofgfAeyY3t12wp/pub?w=904&h=586
Can be editted on: `Google Drawing <https://docs.google.com/drawings/d/1IIuszGmNeKH5NFBfkuqnnVxVqCXdr9mN4nBMk3Grny0/edit?usp=sharing>`_

