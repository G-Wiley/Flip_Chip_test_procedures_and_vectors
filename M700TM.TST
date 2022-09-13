M700 REV E   PCB REV E   MANUAL TIMING GENERATOR
updated: 2-Sep-2022

Test to observe timing pulses affected by RESTART-N, RUN-N and POWER CLEAR-N
Time of test is too large to observe delay between MFTP pulses.
Use Oscilloscope to observe pulses.

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
; second pulse group, assert RUN-N, then assert RESTART-N
10
00
10
; set the RESTART-N and RUN-N inactive High
11
;third group, assert POWER CLEAR-N active low first, then pulse RESTART-N low, keep RUN-N inactive
110
010
; set the POWER CLEAR-N inactive High first, then RESTART-N inactive High
011
1110
END
