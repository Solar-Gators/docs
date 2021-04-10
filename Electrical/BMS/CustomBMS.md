# What is Custom BMS?

Currently, our team uses the Orion BMS system, and while it performs its function well, it can be expensive. We're working on developing a Custom BMS as a cheaper alternative that meets our needs.

## Development Software
When working on developing a PCB which will meet our development needs, we use KiCad, a free and easy to use tool. If you've used Altium in the past, you'll find this software similar. If you haven't, here's a helpful [youtube series!](https://www.youtube.com/watch?v=vaCVh2SAZY4&list=PL3bNyZYHcRSUhUXUt51W6nKvxx2ORvUQB)

## Needs and Functionality
As explained in the main BMS page, our custom BMS needs to monitor multiple inputs to determine safe and efficient operating conditions. As previously mentioned, the goal of our unit is to replicate some of the functionality of the Orion BMS, and introduce some new capabilities not included. 

### State of Charge Estimation
In addition to what was mentioned on the main page, the BMS is also responsible for state of charge (SOC) estimation and cell balancing. State of Charge can be defined as the ratio between Coulombs available to the maximum capacity specified by the cell manufacturer. The current Orion BMS uses a method called Coulomb counting. A Coulomb is a measure of charge, and as you may know, current is measured in Amps, or Coulombs/Second. The Orion takes the current going either in and out, and factoring in time, can estimate the amount of Coulombs which have entered the battery. This allows us to have a live understanding of where the car is in terms of charge, and allows the team to plan strategy for the remainder of the race. 

Although this method is great for a rough estimate, there are certain events that may lead to inaccuracies. A faulty Hall Effect sensor (the current sensor), incorrect starting charge estimate, or degradation of the battery would all cause the behavior of the battery to change. To minimize these inaccuracies and create a more efficient SOC estimator, our team has been looking into the Extended Kalman Filter, which uses machine learning and previous known datapoints to create a model of how the battery will charge and discharge, and therefore a more accurate model for SOC.

### Cell Balancing
A battery module includes multiple individual cells, all of which are wired in parallel. This has some advantages, including making it easier to replace if one goes faulty. However, a downside is that each cell will exhibit different charge - recharge behaviors. This leads to an unbalanced distribution of charge between cells, and eventually one cell may recharge before the others. For safety, we can't continue to charge the entire battery module, and we must stop recharging. This is a loss of efficiency, as there's space in the other modules which could've been used to power the vehicle. This is why we use cell balancing. If the BMS detects a cell that has a greater amount of charge than the rest, it's capable of sending excess charge into a shunt resistor.

We're hoping to implement a form of active cell balancing, in which we can direct excess charge to other cells, thereby increasing efficiency even more.

### Hello Test
This is a world
