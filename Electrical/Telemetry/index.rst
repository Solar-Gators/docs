Telemetry
=========

On the race track we need to be able to see vehicle telemetry in realtime from the pit in order to make accurate decisions. The telemetry information may consists of voltage, current, state of charge, temperature, GPS data, etc. We need a means of usefully displaying the information at the pit using a GUI. We refer to the component that renders the telemetry on a UI as "Pit GUI". The component that is responsible for the hardware & software that collects data and reports it back to the GUI is the "Telemetry Collector". The last, but not least team is the "solar car" telemetry component which is responsible for collecting all the telemetry on the car and send it back to the telemetry collector.

Below is a block diagram of how the components interact with each other.

.. figure:: /_static/telemetry/solargators-telemetry.jpg

   Can be editted on: `Google Drawing <https://docs.google.com/drawings/d/1FurfDAiLjfS6MteSpKRSZqEjXGc2mlHmxXaiokXjHT4/edit?usp=sharing>`_

The telemetry subteam is made up of the three following components.

.. toctree::
   :maxdepth: 1

   Pit GUI <gui>
   Pit Receiver <receiver>
   Solar Car <car>
