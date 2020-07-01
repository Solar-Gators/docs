Telemetry
=========

On the race track we need to be able to see vehicle telemetry in realtime from the pit in order to make accurate decisions. The telemetry information may consists of voltage, current, state of charge, temperature, GPS data, etc. We need a means of usefully displaying the information at the pit using a GUI. We refer to the team who creates the GUI as "Pit GUI". The team responsible for the hardware & software that collects data and reports it back to the GUI is the "Pit Receiver". The last, but not least team is the "solar car" telemetry team. They are responsible for collecting all the telemetry on the car and send it back to the pit receiver.

The block diagram of how the teams interact with eachother below.

.. figure:: /_static/telemetry/solargators-telemetry.jpg

   Can be editted on: `Google Drawing <https://docs.google.com/drawings/d/1FurfDAiLjfS6MteSpKRSZqEjXGc2mlHmxXaiokXjHT4/edit?usp=sharing>`_

The telemetry subteam is made up of the three following sections.

.. toctree::
   :maxdepth: 1

   Pit GUI <gui>
   Pit Receiver <receiver>
   Solar Car <car-software>

