G020 REV D SCHEMATIC    REV E PCB    SENSE AMP
updated: 1-Sep-2022

NOTE:  Install 8.2K resistors on 4 inputs.  If not installed,
       test will work, but the 4 inputs will fail (always LOW).


NOTES: disconnect AB2 from tester and attach -15V to UUT.
       "P" for PULLUP OUTPUTS on the open collector outputs;


PINS
 1 I AD1  STROBE FIELD 0
 2 I AD2  E1-4  INPUT 1 BIT 0 FIELD 0  
 3 I AE2  E1-3  INPUT 2 BIT 0 FIELD 0
 4 I AL1  E4-4  INPUT 1 BIT 1 FIELD 0
 5 I AM1  E4-3  INPUT 2 BIT 1 FIELD 0
 6 I AB1  CLEAR-N
 7 I AT2  ENABLE
 8 O AC1  BIT 0-N
 9 P AA1  OUTPUT 0-N
10 O AS1  BIT 1-N
11 P AU2  OUTPUT 1-N

IIIIIIIOPOP
00000001111
; remove CLEAR-N
     1
; ENABLE on
      1 0 0
; BIT 0 test, turn on Strobe first, then pulse INPUT 1 on pin 4
10
11      1
10
; check ENABLE
;2345678901
0     0 1 1
      1 1 0
; check CLEAR-N, then pulse ENABLE
     0  0 0
     1
      0 1 1
      1 0 0
; BIT 0 test, turn on Strobe first, then pulse INPUT 2 on pin 3
100
101     1
100
; check ENABLE
;2345678901
0     0 1 1
      1 1 0
; check CLEAR-N, then pulse ENABLE
     0  0 0
     1
      0 1 1
      1 0 0
; BIT 1 test, turn on Strobe first, then pulse INPUT 1 on pin 4
1  0
1  1      1
1  0
; check ENABLE
;2345678901
0     0 1 1
      1 0 1
; check CLEAR-N, then pulse ENABLE
     0  0 0
     1
      0 1 1
      1 0 0
; BIT 1 test, turn on Strobe first, then pulse INPUT 2 on pin 3
1   0
1   1     1
1   0
; check ENABLE
;2345678901
0     0 1 1
      1 0 1
; check CLEAR-N, then pulse ENABLE
     0  0 0
     1
      0 1 1
      1 0 0
; BIT 0 & 1 test, turn on Strobes first, then pulse both INPUT 1's
; on pin 4 of the BIT 0 and BIT 1 sense amplifiers
;2345678901
1
11      1
10
1  1      1
1  0
0       1 1
; check ENABLE
;2345678901
      0 1 1
      1 1 1
; check CLEAR-N, then pulse ENABLE
     0  0 0
     1
      0 1 1
      1 0 0
; BIT 0 & 1 test, turn on Strobes first, then pulse both INPUT 2's
; on pin 3 of the BIT 0 and BIT 1 sense amplifiers. BIT 1 first this time.
;2345678901
1
1   1     1
1   0
1 1     1
1 0
0       1 1
; check ENABLE
;2345678901
      0 1 1
      1 1 1
; check CLEAR-N, then pulse ENABLE
     0  0 0
     1
      0 1 1
      1 0 0
END
