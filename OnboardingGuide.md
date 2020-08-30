# Onboarding Guide
## Join the Slack
The only requierment for joining our slack is to use your `username@ufl.edu` email. Our slack is solargators.slack.com once you say hello!  The main slack channels you need to be in are `#announcements`, `#everybody`, `#integration_elec`, and `#new_member_elec`.

## Join the SolarGators GitHub organization
In order for you to have access to things like PCBs, and software we need you to [create a GitHub account](https://help.github.com/en/github/getting-started-with-github/signing-up-for-a-new-github-account) and join the [Solar-Gators](https://github.com/Solar-Gators) organizaiton. In order to join the organization you need to be invited so once you have an account go to slack and post in the `#integration_elec` channel for someone to invite you.

## Electrical Systems
The car is made up of a bunch of systems in order to make sure the driver is safe and to allow the car to operate.

### Battery Management System
The most important part of the whole car is the battery management system or BMS. We currently use 18650 lithium ion batteries and these are known to be highly volitile is not cared for properly. The BMS allows us to automatically care for them. The batteries have to be kept cool, have a maximum discharge, a minimum voltage and a maximum voltage; the BMS makes sure all of those conditions are met and if they aren't met it turns off the car and alerts the driver, and those around that the car is unsafe.

### Telemetry
In order for us to know more about the car, telemetry gathers data from the subsystems and relays it back to the pit crew. This allows us to make strategic decisions, know why something went wrong if it did go wrong, and give us general information about the cars state.

### Auxillary Systems
The auxillary systems or Aux team makes sure that all the innate functions of a car happen. Aux is in charge of everything from controlling the speed via cruise control, to turn signals, breaklights, headlights, and the horn.

### Power Board
Power board is an important system tasked with handling the power calculations and comsumptions on the car. They work on creating efficient PCBs for power management.

### Motor Controller
Motor controller is the system that interfaces closely with the actual motors on the car. Motor controller will be creating PCBs that help manage the car's motors such as the cruise control PCB. 

### Maximum Power Point Trackers
The maximum power point trackers or MPPTs allow us to dynamically adjust the load seen by the solar array so that we can get the highest efficency out of them. They allow us to run the car off of the solar array. If the solar array is not supplying enough power the battery supplies the rest, if the solar array is supplying more power than is required the batteries will charge.
