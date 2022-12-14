G228 REV H SCHEMATIC    REV C PCB    INHIBIT DRIVER (2 7440)
update: 18-Sep-2022

Manual test, using Oscilloscope to check logic 

NOTES   7440 outputs (active low) are not at connector (drive tranformers)
           but can be 'clipped' at the 330 ohm pullup (to +5V) resistors
           that connect thru the transformers to 7440 outputs
        output 00 is at the top    (pin A is top)
        output 01 is next       
        output 10 is next
        output 11 is at the bottom (pin V is bottom)
        actual outputs are pulses due to transformer coupling. Must scope them.

Note:  "P" for PULLUP OUTPUTS on the open collector outputs;
       Emitters are driven low.
       output pulses low (0.?? v) when active.
       pulse width is ???? when active

TODO:  still need a way to test diodes, output transformers

PINS
 1 I AA1  ENABLE      (NANDed into OUTPUT 00, OUTPUT 01, OUTPUT 10, OUTPUT 11)
 2 I AE2  ENABLE 0/1  (NANDed into OUTPUT 00, OUTPUT 01)
 3 I AN2  ENABLE 2/3  (NANDed into OUTPUT 10, OUTPUT 11)
 4 I AD2  BIT 00      NAND (ENABLE, ENABLE 0/1, BIT 00) is OUTPUT 00
 5 I AD1  BIT 01      NAND (ENABLE, ENABLE 0/1, BIT 01) is OUTPUT 01
 6 I AM2  BIT 10      NAND (ENABLE, ENABLE 2/3, BIT 10) is OUTPUT 10
 7 I AL1  BIT 11      NAND (ENABLE, ENABLE 2/3, BIT 11) is OUTPUT 11
 8 P AL2  OUTPUT 00 COLLECTOR (PULLUP SO CAN SCOPE OUTPUT)
 9 P AK1  OUTPUT 01 COLLECTOR (PULLUP SO CAN SCOPE OUTPUT)
10 P AU2  OUTPUT 10 COLLECTOR (PULLUP SO CAN SCOPE OUTPUT)
11 P AS1  OUTPUT 11 COLLECTOR (PULLUP SO CAN SCOPE OUTPUT)
12 I AF2  OUTPUT 00 EMITTER (ALWAYS GROUNDED)
13 I AE1  OUTPUT 01 EMITTER (ALWAYS GROUNDED)
14 I AP2  OUTPUT 10 EMITTER (ALWAYS GROUNDED)
15 I AM1  OUTPUT 11 EMITTER (ALWAYS GROUNDED)

IIIIIIIPPPPIIII
; turn on OUTPUT 00, then off with no glitch
;EENNNNcccceeee
1111000X1110000
1110000
; turn on OUTPUT 01, then off with no glitch
;EENNNNcccceeee
11101001X11
1110000
; turn on OUTPUT 10, then off with no glitch
;EENNNNcccceeee
111001011X1
1110000
; turn on OUTPUT 11, then off with no glitch
;EENNNNcccceeee
1110001111X
1110000
; turn all off, no simultaneous change to prevent glitch
;EENNNNcccceeee
00000001111
00011111111
0011111
0101111
0111111
0001111
1001111
1001100
1011100
1000000
1100011
1100000
1110000
END
