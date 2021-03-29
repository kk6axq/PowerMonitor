# Theory of Operation
The device functions on a fairly basic state machine. There are currently 3 fault conditions that are measured: overcurrent, undervoltage, and overvoltage.

For each of these, the applicable sensor is measured against a
threshold value and a corresponding flag is set. If the system
is currently in a clear state, meaning there are no existing faults, the system transitions into a time state, where it checks if the faults persist for more than the timeout threshold, 50ms. If the fault condition still persists, it decides, based on the type of fault, whether to enter a soft or hard fault.

A soft fault is a condition that is likely momentary, and can be recovered from. The two situations envisioned are momentary overcurrent spikes from the motors stalling or a brief high voltage spike from back EMF from the motors. In this case, the system disconnects the load but will reconnect it once per second to see if the condition has been resolved. Once it has, the system returns to the normal clear state.

A hard fault is a condition that is likely permanent, and needs human intervention to be resolved. The situation envisioned for this is a low voltage condition, where the battery needs to be replaced to prevent damage from undervoltage. In this case, the system disconnects the load and will wait for either a system reset, as in the case of a battery replacement, or a reset command from the host microcontroller. If neither of these are met, the system will perpetually stay in a load-disconnected hard fault state, otherwise, once the flag is reset by one of those two methods, the system will return to a normal fault clear state.
