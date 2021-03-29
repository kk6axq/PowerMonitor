# Digital Communications Protocol
The board communicates over a 9600 baud UART connection provided through the
onboard payload connector. The connector itself is a 4 pin 2.54mm pitch male
connector that can easily be interfaced with jumper wires or a 2.54mm pitch
wiring harness. This UART runs on a 5V logic level, though it should be capable
of receiving 3.3V logic level signals.

## Purpose
The purpose of the protocol is to provide an interface for the host device to
monitor the power status, and to provide human readable debugging output and
control.
## Protocol basics
There are two packet structures in the protocol. All packets start with either
`$` or `&` and end with a `;` character, all in ASCII. Packets starting with a
`&` are human readable debug messages, and are sent on major state changes.
Messages starting with `$` are human readable debug messages, and are currently
only sent on request. Commands can be sent to the device by sending a single
character.

## Commands
The following single character commands are recognized. All others, including
newline characters, are ignored.
* `m`: Enter command mode. The device will begin accepting
character commands/
* `x`: Exist command mode. The device will stop accepting character commands.
* `r`: Reset the current fault. Resets the state machine to the no fault state, though it may go immediately back into a fault state if the fault conditions persist.
* `d`: Print debug packet. Prints the debug response, detailed below.
* `o`: Turn on load. Sets the load cutoff switch to allow current to flow into the load.
* `l`: Turn off load. Sets the load cutoff switch to prevent current from flowing into the load.

## Debug response
The only machine readable response currently given is the debug command. This is
sent when the `d` character is sent to the device. The current response is in
the form:

  `$ Power_State Current Voltage Fault_State;`

`Power_State` is the current state of the load switch, `1` for load on,
and `0` for load off. `Current` is the measured load current in Amps. `Voltage`
is the measured supply voltage, in Volts. `Fault_State` is a flag for the current
state of the protection state machine. It has the following response codes:
* `c`: State clear. Everything is fine.
* `t`: An initial fault has been observed and the device is waiting to see if
the condition persists beyond the timeout limit.
* `s`: A soft trip fault has been encountered. The system has experienced a
recoverable fault and will periodically check to see if the fault has been
resolved. As of now the two soft trip conditions are overcurrent and overvoltage.
* `h`: A hard trip fault has been encountered. Ths system experienced an
unrecoverable fault and must be manually reset either by power cycling the
device or sending the `r` reset command. As of now, the only hard trip condition
is under voltage.
* `u`: Unknown condition. This should never be received in normal operation. If
it is, the device should be reset as there has been a fault in the code.
