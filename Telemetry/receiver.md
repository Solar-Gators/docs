# Telemetry Collector

The code for this team is located in the [telemetry-collector](https://github.com/Solar-Gators/telemetry-collector) repository.

All communications from the vehicle come over the RFD900x module which reports UART back to us. This repository is the software responsable for decoding the message after it is sent over UART and sending it to the correct endpoint on our [GUI Server](gui.md).

## Model

The decoding of transmissions is roughly based on the [OSI Model](https://en.wikipedia.org/wiki/OSI_model). Our implemenation is simplier with three layers utilized, the physical layer, data link layer, and network layer. The first two layers are standard protocols that are listed below.

Physical Layer: [UART Protocol](https://en.wikipedia.org/wiki/Universal_asynchronous_receiver-transmitter)

Data Link Layer: [Byte Stuffing](https://www.geeksforgeeks.org/difference-between-byte-stuffing-and-bit-stuffing/)


### Network Layer

The network layer is a custom protocol used for sending telemetry information in a way that is easily verifiable. The protocol is seperated into messages and data. The first byte in the transmission is the number of messages in the transmission. For every message there is an address, length and data package. The first byte contains the address which corresponds to a telemetry item (ie Battery Cell 1, GPS, Temperature). The second byte in a message is the length of the data packet that follows the first two bytes. 


Below is a graphical repsentation of what a transmission looks like.

```text

8 bit message length | { 8 bit address | 8 bit data length | 1 byte of data | ... n bytes of data }

```

### Decoding messages 

As previously mentioned, the network layer reports the telemetry addresses to be inserted. The telemetry addresses have been predefined as needed below.

```eval_rst
+------------+------------+
| Telemetry  |  Address   | 
+============+============+
|    GPS     |    0x00    |
+------------+------------+
|    MPPT    |    0x01    |
+------------+------------+
|    BMS     |    0x02    |
+------------+------------+
|    IMU     |    0x03    |
+------------+------------+
```

Each telemetry has a custom method for decoding based on it's needs. There is not a generic method that fits all of them, so each one has it's own implmentation.

## Usage

To get started with the project you will need NodeJS and NPM installed. Then install the local dependancies using the npm install command.

```Bash
npm install
```

Then to start run the following command
```Bash
npm start
```

