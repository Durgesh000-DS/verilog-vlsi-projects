## 4:1 MUX (Multiplexer)

Selects one of four inputs based on 2-bit select line.

**Inputs:** i0, i1, i2, i3, sel[1:0]  
**Outputs:** y  
**Concept:** case statement, always block, output reg

### Truth Table

| sel | y  |
|-----|----|
| 00  | i0 |
| 01  | i1 |
| 10  | i2 |
| 11  | i3 |

### Key Concepts
- `always @(*)` — triggers when any input changes
- `case` statement — cleaner than multiple ternary operators
- `output reg` — required when driven inside always block
- `default` — safety net for unexpected select values

### Run Online
[Click here to simulate on EDA Playground](https://www.edaplayground.com/x/eX6F)

### Waveform
![4to1waveform](4to1waveform.png)
