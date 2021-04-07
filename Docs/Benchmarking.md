# Benchmarking
To verify the functionality of the device, I performed static load testing using high wattage resistors to check voltage ripple under load. These tests were performed in Dr. Mallik's lab on April 7, 2021.

## 5V system
The 5V on board switching regulator was tested at three load conditions: no load, 1A load, and 2A load. The raw results of the test are shown below:

### Raw Testing Data
| Trial      | Unit | 1     | 2     | 3     |
|------------|------|-------|-------|-------|
| Current    | A    | 0     | 1     | 2     |
| Expected V | V    | 5     | 5     | 5     |
| RMS        | Vrms | 4.85  | 4.796 | 4.795 |
| Max        | V    | 4.95  | 4.91  | 4.905 |
| Min        | V    | 4.78  | 4.71  | 4.7   |
| P-P Ripple | mV   | 150   | 220   | 207   |
| Load       | Ohm  | 0     | 5     | 2.5   |
| Ripple     | %    | 3.09% | 4.59% | 4.32% |

### Graphed Ripple
![Graphed voltage ripple](https://raw.githubusercontent.com/kk6axq/PowerMonitor/main/media/benchmark_5v_ripple.png)

This data shows that the switching regulator can supply a sufficient voltage, even at high current. The circuitry is rated for 3A, so even at 83% load (2.5A) it stayed within about 200mV of 5V.

## 12V system
The 12V output is a direct feed from the input supply, it only passes through the reverse current protection and power cutoff MOSFETs before being output. I was unable to measure the input ripple at the same time as the output ripple, so it is difficult to draw conclusions on the power handling capability of the board, or any voltage drop therein, but this testing verified that, at a minimum, the board can handle 4.8A for brief periods of time without damage.

### Raw Testing Data
| Trial      |      | 1     | 2     | 3     |
|------------|------|-------|-------|-------|
| Current    | A    | 0     | 2.4   | 4.8   |
| Expected V | V    | 12    | 12    | 12    |
| RMS        | Vrms | 11.81 | 11.48 | 11.24 |
| Max        | V    | 11.91 | 11.57 | 11.33 |
| Min        | V    | 11.71 | 11.38 | 11.12 |
| P-P Ripple | mV   | 190   | 183.7 | 205.9 |
| Load       | Ohm  | 0     | 5     | 2.5   |
| Ripple %   | %    | 1.61% | 1.60% | 1.83% |

### Graphed Ripple
![Graphed voltage ripple](https://raw.githubusercontent.com/kk6axq/PowerMonitor/main/media/benchmark_12v_ripple.png)
