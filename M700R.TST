M700 REV E   PCB REV E   MANUAL TIMING GENERATOR
updated: 1-Sep-2022

TEST TO OBSERVE MFTP 0, MFTP 1, MFTP 2 sequence
Use Oscilloscope to see pulses.

PINS
 1 I AR2   RESTART-N
 2 I AP2   RUN-N
 3 I AL2   POWER CLEAR-N
 4 I AS2   FILTER INPUT

IIII
1110
; initial state, FILTER INPUT is always low for this test
; assert RESTART-N low, and leave RUN-N and POWER CLEAR-N inactive high
0
; set the RESTART-N inactive High
1
END
