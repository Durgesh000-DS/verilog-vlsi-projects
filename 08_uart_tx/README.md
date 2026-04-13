## UART Transmitter

Serial communication protocol transmitter.
Sends 8-bit data one bit at a time with start and stop bits.

**Inputs:** clk, rst, start, data[7:0]  
**Outputs:** tx, done  
**Concept:** FSM, serial communication, state machine, bit indexing

### UART Frame Structure
IDLE → START BIT(0) → D0→D1→D2→D3→D4→D5→D6→D7 → STOP BIT(1) → IDLE

### FSM States

| State | Action |
|-------|--------|
| IDLE | tx=1, wait for start signal |
| START | tx=0, start bit sent |
| DATA | send data bits one by one |
| STOP | tx=1, done=1, go back to IDLE |

### Key Concepts
- FSM — Finite State Machine, most important RTL concept
- `parameter` — define named constants for states
- `data[bit_count]` — bit indexing, send one bit at a time
- `bit_count` — tracks which bit is being sent (0 to 7)
- Total bits per frame = 10 (1 start + 8 data + 1 stop)

### Run Online
[Click here to simulate on EDA Playground](https://edaplayground.com/x/v5US)

### Waveform
![UARTWaveform](UARTwaveform.png)
