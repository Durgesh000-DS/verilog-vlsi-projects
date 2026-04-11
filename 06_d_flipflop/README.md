## D Flip Flop

Basic sequential logic element that captures input on clock rising edge.

**Inputs:** clk, rst, d  
**Outputs:** q  
**Concept:** Sequential logic, posedge clock, non-blocking assignment, reset

### Behaviour

| condition | q |
|-----------|---|
| rst=1 | 0 (reset) |
| posedge clk, d=1 | 1 |
| posedge clk, d=0 | 0 |
| between edges | holds previous value |

### Key Concepts
- `posedge clk` — triggers only on rising edge of clock
- `<=` non-blocking assignment — used in sequential logic
- `rst` — asynchronous reset, q goes to 0 immediately
- `always #5 clk = ~clk` — clock generator in testbench

### Run Online
[Click here to simulate on EDA Playground](https://www.edaplayground.com/x/pVE6)

### Waveform
![FFWaveform](FFwaveform.png)
