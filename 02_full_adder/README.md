## Full Adder

Adds two 1-bit numbers with a carry input using two Half Adder modules.

**Inputs:** a, b, cin  
**Outputs:** sum, cout  
**Gates used:** 2 XOR, 2 AND, 1 OR (5 gates total)  
**Concept:** Module instantiation, hierarchical design

### Truth Table

| a | b | cin | sum | cout |
|---|---|-----|-----|------|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

### Waveform
![Waveform1](FA Waveform 1.png)
![Waveform2](FA Waveform 2.png)
