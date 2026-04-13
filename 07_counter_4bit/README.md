## 4-bit Counter

Counts from 0 to 15 and rolls back to 0 automatically.

**Inputs:** clk, rst  
**Outputs:** count[3:0]  
**Concept:** Sequential logic, self-incrementing register, overflow

### Behaviour

| condition | count |
|-----------|-------|
| rst=1 | 0000 (reset) |
| posedge clk | count + 1 |
| count reaches 15 | rolls back to 0 |

### Count Sequence
0 → 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → 10 → 11 → 12 → 13 → 14 → 15 → 0

### Key Concepts
- `count <= count + 1` — self incrementing
- `[3:0]` — 4 bit output bus
- Clock period = 10 time units
- 16 clock cycles to complete full count
- Overflow — after 15 automatically resets to 0

### Run Online
[Click here to simulate on EDA Playground](https://www.edaplayground.com/x/rAdg)

### Waveform
![waveform]waveform.png)
