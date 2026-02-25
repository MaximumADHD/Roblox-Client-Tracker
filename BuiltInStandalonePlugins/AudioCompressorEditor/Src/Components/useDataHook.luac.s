PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 DUPTABLE                         R1 K7 [{"Type", "Threshold", "Ratio", "Attack", "Release", "MakeupGain", "Bypass"}]
        8 GETUPVAL                         R2 3
        9 SETTABLEKS                       R2 R1 K0 ["Type"]
       11 GETUPVAL                         R2 4
       12 SETTABLEKS                       R2 R1 K1 ["Threshold"]
       14 GETUPVAL                         R2 5
       15 SETTABLEKS                       R2 R1 K2 ["Ratio"]
       17 GETUPVAL                         R2 6
       18 SETTABLEKS                       R2 R1 K3 ["Attack"]
       20 GETUPVAL                         R2 7
       21 SETTABLEKS                       R2 R1 K4 ["Release"]
       23 GETUPVAL                         R2 8
       24 SETTABLEKS                       R2 R1 K5 ["MakeupGain"]
       26 GETUPVAL                         R2 9
       27 SETTABLEKS                       R2 R1 K6 ["Bypass"]
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R1 K0 ["AudioCompressor"] ; [+11]
        3 LOADN                            R3 196
        4 LOADN                            R4 0
        5 FASTCALL3                        MATH_CLAMP R0 R3 R4
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K3 [math.clamp]
       10 CALL                             R1 3 1
       11 MOVE                             R0 R1
       12 JUMP                             ; [+12]
       13 GETUPVAL                         R1 0
       14 JUMPIFNOTEQKS                    R1 K4 ["AudioLimiter"] ; [+10]
       16 LOADN                            R3 244
       17 LOADN                            R4 0
       18 FASTCALL3                        MATH_CLAMP R0 R3 R4
       20 MOVE                             R2 R0
       21 GETIMPORT                        R1 K3 [math.clamp]
       23 CALL                             R1 3 1
       24 MOVE                             R0 R1
       25 GETUPVAL                         R1 1
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R3 1
        1 LOADN                            R4 50
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 MOVE                             R0 R1
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 [0.0001]
        1 LOADK                            R4 K1 [0.5]
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K4 [math.clamp]
        7 CALL                             R1 3 1
        8 MOVE                             R0 R1
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R1 K0 ["AudioCompressor"] ; [+11]
        3 LOADK                            R3 K1 [0.01]
        4 LOADN                            R4 5
        5 FASTCALL3                        MATH_CLAMP R0 R3 R4
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K4 [math.clamp]
       10 CALL                             R1 3 1
       11 MOVE                             R0 R1
       12 JUMP                             ; [+12]
       13 GETUPVAL                         R1 0
       14 JUMPIFNOTEQKS                    R1 K5 ["AudioLimiter"] ; [+10]
       16 LOADK                            R3 K6 [0.001]
       17 LOADN                            R4 1
       18 FASTCALL3                        MATH_CLAMP R0 R3 R4
       20 MOVE                             R2 R0
       21 GETIMPORT                        R1 K4 [math.clamp]
       23 CALL                             R1 3 1
       24 MOVE                             R0 R1
       25 GETUPVAL                         R1 1
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R3 226
        1 LOADN                            R4 30
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 MOVE                             R0 R1
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Type"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R2 R0 K1 ["Threshold"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R2 R0 K2 ["Ratio"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R2 R0 K3 ["Attack"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R2 R0 K4 ["Release"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 5
       21 GETTABLEKS                       R2 R0 K5 ["MakeupGain"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 6
       25 GETTABLEKS                       R2 R0 K6 ["Bypass"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Type"]
        3 CALL                             R2 1 2
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R5 R0 K1 ["Threshold"]
        7 CALL                             R4 1 2
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R7 R0 K2 ["Ratio"]
       11 CALL                             R6 1 2
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R9 R0 K3 ["Attack"]
       15 CALL                             R8 1 2
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R11 R0 K4 ["Release"]
       19 CALL                             R10 1 2
       20 GETUPVAL                         R12 0
       21 GETTABLEKS                       R13 R0 K5 ["MakeupGain"]
       23 CALL                             R12 1 2
       24 GETUPVAL                         R14 0
       25 GETTABLEKS                       R15 R0 K6 ["Bypass"]
       27 CALL                             R14 1 2
       28 GETUPVAL                         R16 0
       29 LOADB                            R17 0
       30 CALL                             R16 1 2
       31 GETUPVAL                         R18 1
       32 NEWCLOSURE                       R19 P0
       33 CAPTURE                          VAL R16
       34 CAPTURE                          VAL R17
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R8
       40 CAPTURE                          VAL R10
       41 CAPTURE                          VAL R12
       42 CAPTURE                          VAL R14
       43 NEWTABLE                         R20 0 8
       45 MOVE                             R21 R2
       46 MOVE                             R22 R4
       47 MOVE                             R23 R6
       48 MOVE                             R24 R8
       49 MOVE                             R25 R10
       50 MOVE                             R26 R12
       51 MOVE                             R27 R14
       52 MOVE                             R28 R16
       53 SETLIST                          R20 R21 8 [1]
       55 CALL                             R18 2 0
       56 DUPTABLE                         R18 K21 [{"instanceType", "threshold", "ratio", "attack", "release", "makeupGain", "bypass", "setThreshold", "setRatio", "setAttack", "setRelease", "setMakeupGain", "setBypass", "reset"}]
       57 SETTABLEKS                       R2 R18 K7 ["instanceType"]
       59 SETTABLEKS                       R4 R18 K8 ["threshold"]
       61 SETTABLEKS                       R6 R18 K9 ["ratio"]
       63 SETTABLEKS                       R8 R18 K10 ["attack"]
       65 SETTABLEKS                       R10 R18 K11 ["release"]
       67 SETTABLEKS                       R12 R18 K12 ["makeupGain"]
       69 SETTABLEKS                       R14 R18 K13 ["bypass"]
       71 GETUPVAL                         R19 2
       72 NEWCLOSURE                       R20 P1
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R5
       75 NEWTABLE                         R21 0 2
       77 MOVE                             R22 R2
       78 MOVE                             R23 R5
       79 SETLIST                          R21 R22 2 [1]
       81 CALL                             R19 2 1
       82 SETTABLEKS                       R19 R18 K14 ["setThreshold"]
       84 GETUPVAL                         R19 2
       85 NEWCLOSURE                       R20 P2
       86 CAPTURE                          VAL R7
       87 NEWTABLE                         R21 0 1
       89 MOVE                             R22 R7
       90 SETLIST                          R21 R22 1 [1]
       92 CALL                             R19 2 1
       93 SETTABLEKS                       R19 R18 K15 ["setRatio"]
       95 GETUPVAL                         R19 2
       96 NEWCLOSURE                       R20 P3
       97 CAPTURE                          VAL R9
       98 NEWTABLE                         R21 0 1
      100 MOVE                             R22 R9
      101 SETLIST                          R21 R22 1 [1]
      103 CALL                             R19 2 1
      104 SETTABLEKS                       R19 R18 K16 ["setAttack"]
      106 GETUPVAL                         R19 2
      107 NEWCLOSURE                       R20 P4
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R11
      110 NEWTABLE                         R21 0 2
      112 MOVE                             R22 R2
      113 MOVE                             R23 R11
      114 SETLIST                          R21 R22 2 [1]
      116 CALL                             R19 2 1
      117 SETTABLEKS                       R19 R18 K17 ["setRelease"]
      119 GETUPVAL                         R19 2
      120 NEWCLOSURE                       R20 P5
      121 CAPTURE                          VAL R13
      122 NEWTABLE                         R21 0 1
      124 MOVE                             R22 R13
      125 SETLIST                          R21 R22 1 [1]
      127 CALL                             R19 2 1
      128 SETTABLEKS                       R19 R18 K18 ["setMakeupGain"]
      130 GETUPVAL                         R19 2
      131 NEWCLOSURE                       R20 P6
      132 CAPTURE                          VAL R15
      133 NEWTABLE                         R21 0 1
      135 MOVE                             R22 R15
      136 SETLIST                          R21 R22 1 [1]
      138 CALL                             R19 2 1
      139 SETTABLEKS                       R19 R18 K19 ["setBypass"]
      141 GETUPVAL                         R19 2
      142 NEWCLOSURE                       R20 P7
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R15
      150 NEWTABLE                         R21 0 7
      152 MOVE                             R22 R3
      153 MOVE                             R23 R5
      154 MOVE                             R24 R7
      155 MOVE                             R25 R9
      156 MOVE                             R26 R11
      157 MOVE                             R27 R13
      158 MOVE                             R28 R15
      159 SETLIST                          R21 R22 7 [1]
      161 CALL                             R19 2 1
      162 SETTABLEKS                       R19 R18 K20 ["reset"]
      164 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioCompressorEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETTABLEKS                       R4 R1 K10 ["useState"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R7 R0 K11 ["Src"]
       24 GETTABLEKS                       R6 R7 K12 ["Types"]
       26 CALL                             R5 1 1
       27 DUPCLOSURE                       R6 K13 [PROTO_8]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 RETURN                           R6 1
