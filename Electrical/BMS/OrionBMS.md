# Overview of the Orion BMS 2
The Orion BMS is a pre-manufactured device that can be purchased, which manages the battery pack through the use of: 1 hall-effect current sensor, 8 temperature sensors in the form of thermistors, individual cell voltage taps, an isolation sensor, and a full pack voltage tap. The voltage sensors need to be precise, which is why one is given to each cell. On the other, hand, we can use only up to 8 thermistors, just to get an idea of the average temperature within the battery pack. Isolation is incredibly important in high voltage applications. We want to ensure that the voltage carried through the vehicle's wires and battery doesn't come to harm the user. To do so, an isolation sensor is used to measure the electrical isolation between the chassis (technically the Orion uses ground, but same difference) and the battery pack. 

## What it Does
In addition to ensuring that the battery pack doesn't become unsafe (through high temperature, overcharging, high current, and isolation faults), the Orion also provides us with the State of Charge and State of Health of the Batteries. A lithium ion battery has specific chemical characteristics that essentially mean the cell doesn't charge linearly, in terms of charge input and state of charge. Similarly, the relationship between charge input and cell voltage is not linear either. So we cant just multiply our voltage by some constant to figure out SOC. 

Instead, the Orion will use a method known as Coulomb Counting to guesstimate the amount of charge that's entered the pack, and how much has left. Because SOC = Q/Qtotal, this is a reasonably accurate method. Although this method sounds almost foolproof, chemistry is really hard to estimate, and it means that you won't always be able to extract the amount of coulombs you put in. How many coulombs the battery can eke out varies, which is why to get a super duper estimate, we need more accurate models. That's why we're working on a Custom BMS!

### Quick Physics Talk
Okay now that we're this far it's best we review what a Coulomb even is. So a Coulomb is the SI (International Standard) measure of charge. A single electron has a charge of 1.602*10^-19 Coulombs. I'm sure you've heard of the term amperes, the basic unit of current. But to be a little more specific, 1 Amp is actually 1 Coulomb / Second. So that means current is Charge/time, or dQ/dt, where Q is charge and t is time. When we integrate this, we can obtain Q!. 

## What it Does (Cont'd)
So how do we know Qtotal? Well, that's a value the manufacturer provides. Along with State of Charge, the Orion is also responsible for State of Health calculations. This is because as time goes on, Qtotal will decrease below what it was originally manufactured for. I'm sure you've seen this on your phone or computer. 

### Documentation
This page will be updated frequently with more detail on the nooks and crannies of the Orion BMS. But as an EE/CE student, get in the habit of checking documentation, it'll be useful for your future classes and career. Below is some documentation on how the Orion works.

[Operation Manual](https://www.orionbms.com/manuals/pdf/orionbms2_operational_manual.pdf)

[Actually Programming It](https://www.orionbms.com/manuals/utility_o2/)

[How to Connect to the Vehicle](https://www.orionbms.com/manuals/pdf/orionbms2_wiring_manual.pdf)
