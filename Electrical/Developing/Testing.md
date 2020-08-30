# Emulators
## How to install
If you plan on using the DAD hardware make sure you have the SDK downloaded (Waveforms).
If you plan on using the CANAdapter make sure you know what serial port it is connected to (no need to download anything).
Dependecies:
Python 3.x
## Notes
These emulators take data from the mocks and implement the DAD board to simulate CAN or UART data.
If you need a good file just to mess around in git will ignore a file named `sandbox.py`
## Usage
To create a new emulator first decided on the hardware that you will use to emulate the protocol. Most of the files included use the Digital Analog Discovery board from Diligent. Emulators could emulate a single peice of hardware or they could emulate a whole system (see drivers details).
## Examples
### CAN
This example uses the DAD board as the hardware bridge for the CAN bus
```
# Initialize DAD board
emmulator = DAD()
# Initialize CAN peripheral with default RX and TX pins, polarity and a baudrate of 500kbs
emmulator.CAN_init(baudRate=500e3)
# Turn on 5v to power the CAN tranciver
emmulator.posSupply_init()
# Create a mitsuba motor controller mock
mc = Mitsuba(0x08F89540, 0x01, emmulator)
# Create a Dilithium Proton 1 Mock
mppt = Proton1(1024, 0x2, emmulator)
# Create an Orion2 mock
bms = Orion(0x6B0, 0x1)
# Because the other mocks receive a RTR we don't need to actively send their data
# This sets up the BMS mock to send its data every 0.1 seconds independently from the main program
bmsThread = threading.Timer(0.1, bms.sendCAN)
# When the main program quits this thread does also
bmsThread.daemon = True
# Start sending BMS data
bmsThread.start()
# Create a dictionary of callbacks for receiving CAN messages
cb = {mc.addr_CAN: mc.receiveCAN, mppt.addr_CAN: mppt.receiveCAN, bms.addr_CAN: bms.receiveCAN}
# Until we see ctrl+c receive messages and handle them with the cb
# If a message is not in the cb it will be printed this is useful for spying on the CAN bus
try:
    while True:
        emmulator.receiveCAN(cb)
except KeyboardInterrupt:
    print("Quitting...")
```