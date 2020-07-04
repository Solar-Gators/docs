# Telemetry Collector

The code for this team is located in the [telemetry-collector](https://github.com/Solar-Gators/telemetry-collector) repository.

All communications from the vehicle come over the RFD900x module which reports UART back to us. This repository is the software responsible for decoding the message after it is sent over UART and sending it to the correct endpoint on our [GUI Server](gui.md).

## Model

The decoding of transmissions is roughly based on the [OSI Model](https://en.wikipedia.org/wiki/OSI_model). Our implementation is simplified with three layers utilized, the physical layer, data link layer, and network layer. The first two layers are standard protocols that are listed below.

Physical Layer: [UART Protocol](https://en.wikipedia.org/wiki/Universal_asynchronous_receiver-transmitter)

Data Link Layer: [Byte Stuffing](https://www.geeksforgeeks.org/difference-between-byte-stuffing-and-bit-stuffing/)

The data link layer reports the data to the network layer which then reports to the correct database entry. The graph looks a little like this
```
     Custom        (Network Layer)
       ^
       |
   Byte Stuffing   (Data Link Layer)
       ^
       |
UART Transmissions (Physical Layer)
```

#### Step 1: Data Link Layer

When the UART transmissions are reported to the Data Link Layer the messages are encoded using special bytes. There is a `start byte` indicating the beginning of a transmission and an `end byte` for the end of the transmission. Anything between the start and end bytes can be considered data. If the start or end bytes show up in the the data section then they need to be escaped with the `escape byte`. The escape byte indicates that the next byte is a special character, but it can safely be ignored because it is part of the data. This prevents the transmission from ending early if the stop byte shows up in the data and other situations. Note that if the escape byte shows up in the data then it needs to be escaped too!
```eval_rst
+--------------+------------+
|    Special  Bytes         |
+==============+============+
|  Start Byte  |  0xFF      |
+--------------+------------+
|  End Byte    |  0x3F      |
+--------------+------------+
|  Escape Byte |  0x2F      |
+--------------+------------+
```

##### Example

```
0xFF  | 0x01 | 0x02 | 0x2F | 0x3F | 0x05 | 0x3F
-----------------------------------------------
START | DATA | DATA | ESC  | DATA | DATA | END  

Packet: 0x01, 0x02, 0x3F, 0x05

```

### Step 2: Network Layer

The network layer is a custom protocol used for sending telemetry information in a way that is easily verifiable. The protocol is separated into messages and data. The first byte in the transmission is the number of messages in the transmission. For every message there is an address, length and data package. The first byte contains the address which corresponds to a telemetry item (ie Battery Cell 1, GPS, Temperature). The second byte in a message is the length of the data packet that follows the first two bytes. 


Below is a graphical representation of what a transmission looks like.

```text

8 bit message length | { 8 bit address | 8 bit data length | 1 byte of data | ... n bytes of data }

```

#### Decoding messages 

After passing through the Data Link layer the packet is passed up the the network layer. As previously mentioned, the network layer reports the telemetry addresses to be inserted. The telemetry addresses have been predefined as needed below.

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

### Step 3: API End Points

After being passed through the network layer the data is delivered to the proper endpoint to be stored in a database. The list of endpoints can be [found here](gui.html#api-endpoints).

## Getting Started

To get started with the project you will need NodeJS and NPM installed. Then install the local dependancies using the npm install command.

```Bash
npm install
```

Then to start run the following command
```Bash
npm start
```

