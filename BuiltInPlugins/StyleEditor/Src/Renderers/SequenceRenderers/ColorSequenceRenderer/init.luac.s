PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Keypoints"]
        2 LENGTH                           R2 R1
        3 LOADN                            R3 2
        4 JUMPIFNOTLT                      R3 R2 ; [+3]
        6 LOADK                            R2 K1 ["<ColorSequence>"]
        7 RETURN                           R2 1
        8 GETTABLEN                        R3 R1 1
        9 GETTABLEKS                       R2 R3 K2 ["Value"]
       11 GETTABLEN                        R4 R1 2
       12 GETTABLEKS                       R3 R4 K2 ["Value"]
       14 JUMPIFEQ                         R2 R3 ; [+3]
       16 LOADK                            R2 K1 ["<ColorSequence>"]
       17 RETURN                           R2 1
       18 LOADK                            R3 K3 ["#"]
       19 GETTABLEN                        R5 R1 1
       20 GETTABLEKS                       R4 R5 K2 ["Value"]
       22 NAMECALL                         R4 R4 K4 ["ToHex"]
       24 CALL                             R4 1 1
       25 CONCAT                           R2 R3 R4
       26 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETIMPORT                        R2 K2 [ColorSequence.new]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 LOADNIL                          R3
        9 RETURN                           R2 2
       10 LOADNIL                          R2
       11 LOADK                            R3 K3 ["Error: invalid color"]
       12 RETURN                           R2 2

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Time", "Value"}]
        1 GETTABLEKS                       R2 R0 K0 ["Time"]
        3 SETTABLEKS                       R2 R1 K0 ["Time"]
        5 GETTABLEKS                       R2 R0 K1 ["Value"]
        7 SETTABLEKS                       R2 R1 K1 ["Value"]
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        3 DUPCLOSURE                       R3 K1 [PROTO_2]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [ColorSequenceKeypoint.new]
        2 GETTABLEKS                       R2 R0 K3 ["Time"]
        4 GETTABLEKS                       R3 R0 K4 ["Value"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R0 K2 [ColorSequence.new]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 DUPCLOSURE                       R3 K3 [PROTO_4]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R2 1
        8 LOADNIL                          R3
        9 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["keypoints"]
        3 GETIMPORT                        R2 K2 [pcall]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R2 ; [+2]
       10 MOVE                             R0 R3
       11 RETURN                           R0 1
       12 LOADNIL                          R0
       13 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["Value"]
        7 GETTABLEKS                       R3 R2 K1 ["Keypoints"]
        9 LENGTH                           R4 R3
       10 LOADN                            R5 2
       11 JUMPIFNOTLT                      R5 R4 ; [+3]
       13 LOADK                            R1 K2 ["<ColorSequence>"]
       14 JUMP                             ; [+18]
       15 GETTABLEN                        R5 R3 1
       16 GETTABLEKS                       R4 R5 K0 ["Value"]
       18 GETTABLEN                        R6 R3 2
       19 GETTABLEKS                       R5 R6 K0 ["Value"]
       21 JUMPIFEQ                         R4 R5 ; [+3]
       23 LOADK                            R1 K2 ["<ColorSequence>"]
       24 JUMP                             ; [+8]
       25 LOADK                            R4 K3 ["#"]
       26 GETTABLEN                        R6 R3 1
       27 GETTABLEKS                       R5 R6 K0 ["Value"]
       29 NAMECALL                         R5 R5 K4 ["ToHex"]
       31 CALL                             R5 1 1
       32 CONCAT                           R1 R4 R5
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+2]
        7 MOVE                             R1 R3
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 JUMPIFNOTEQKNIL                  R1 ; [+13]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K2 ["Schema"]
       16 GETTABLEKS                       R3 R4 K3 ["GetDefaultValue"]
       18 CALL                             R3 0 1
       19 MOVE                             R2 R3
       20 GETIMPORT                        R3 K5 [warn]
       22 LOADK                            R4 K6 ["Failed to create ColorSequence due to invalid keypoints, resetting to default"]
       23 CALL                             R3 1 0
       24 JUMP                             ; [+1]
       25 MOVE                             R2 R1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K7 ["Value"]
       29 JUMPIFEQ                         R2 R3 ; [+6]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R3 R4 K8 ["OnChanged"]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["save"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reset"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Value"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R4 R2 K2 ["Keypoints"]
        9 DUPCLOSURE                       R5 K3 [PROTO_2]
       10 CALL                             R3 2 1
       11 MOVE                             R1 R3
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["save"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 LOADB                            R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["remove"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["save"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["update"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["save"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOTEQKS                    R0 K0 ["<ColorSequence>"] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 CALL                             R4 1 1
        6 JUMPIFNOT                        R4 ; [+7]
        7 GETIMPORT                        R5 K3 [ColorSequence.new]
        9 MOVE                             R6 R4
       10 CALL                             R5 1 1
       11 MOVE                             R2 R5
       12 LOADNIL                          R3
       13 JUMP                             ; [+2]
       14 LOADNIL                          R2
       15 LOADK                            R3 K4 ["Error: invalid color"]
       16 JUMPIFNOT                        R2 ; [+11]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K5 ["Value"]
       20 JUMPIFEQ                         R2 R4 ; [+7]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K6 ["OnChanged"]
       25 MOVE                             R5 R2
       26 CALL                             R4 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 2
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K5 ["Value"]
       32 GETTABLEKS                       R7 R6 K7 ["Keypoints"]
       34 LENGTH                           R8 R7
       35 LOADN                            R9 2
       36 JUMPIFNOTLT                      R9 R8 ; [+3]
       38 LOADK                            R5 K0 ["<ColorSequence>"]
       39 JUMP                             ; [+18]
       40 GETTABLEN                        R9 R7 1
       41 GETTABLEKS                       R8 R9 K5 ["Value"]
       43 GETTABLEN                        R10 R7 2
       44 GETTABLEKS                       R9 R10 K5 ["Value"]
       46 JUMPIFEQ                         R8 R9 ; [+3]
       48 LOADK                            R5 K0 ["<ColorSequence>"]
       49 JUMP                             ; [+8]
       50 LOADK                            R8 K8 ["#"]
       51 GETTABLEN                        R10 R7 1
       52 GETTABLEKS                       R9 R10 K5 ["Value"]
       54 NAMECALL                         R9 R9 K9 ["ToHex"]
       56 CALL                             R9 1 1
       57 CONCAT                           R5 R8 R9
       58 CALL                             R4 1 0
       59 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFNOTEQKS                    R0 K0 ["<ColorSequence>"] ; [+5]
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+7]
       13 GETIMPORT                        R4 K3 [ColorSequence.new]
       15 MOVE                             R5 R3
       16 CALL                             R4 1 1
       17 MOVE                             R1 R4
       18 LOADNIL                          R2
       19 JUMP                             ; [+2]
       20 LOADNIL                          R1
       21 LOADK                            R2 K4 ["Error: invalid color"]
       22 GETUPVAL                         R3 1
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["isFixedKeypointSelected"]
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K2 ["getSelectedKeypoint"]
       14 CALL                             R1 0 1
       15 GETUPVAL                         R2 2
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["current"]
       19 MOVE                             R4 R0
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 3
       22 MOVE                             R4 R1
       23 DUPTABLE                         R5 K4 [{"Time"}]
       24 GETTABLEKS                       R6 R2 K5 ["X"]
       26 SETTABLEKS                       R6 R5 K3 ["Time"]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R4 R5 K6 ["update"]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K7 ["save"]
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+43]
        6 GETIMPORT                        R2 K6 [Vector2.new]
        8 GETTABLEKS                       R4 R1 K7 ["Position"]
       10 GETTABLEKS                       R3 R4 K8 ["X"]
       12 GETTABLEKS                       R5 R1 K7 ["Position"]
       14 GETTABLEKS                       R4 R5 K9 ["Y"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K10 ["current"]
       21 MOVE                             R5 R2
       22 CALL                             R3 2 1
       23 DUPTABLE                         R4 K13 [{"Time", "Value"}]
       24 GETTABLEKS                       R5 R3 K8 ["X"]
       26 SETTABLEKS                       R5 R4 K11 ["Time"]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R6 R7 K14 ["getSelectedKeypoint"]
       31 CALL                             R6 0 1
       32 GETTABLEKS                       R5 R6 K12 ["Value"]
       34 SETTABLEKS                       R5 R4 K12 ["Value"]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R5 R6 K15 ["add"]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 0
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R5 R6 K16 ["save"]
       44 NEWCLOSURE                       R6 P0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U4
       47 CALL                             R5 1 0
       48 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["select"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["save"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["save"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 LOADB                            R6 0
       11 CALL                             R5 1 2
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R9 R0 K0 ["Value"]
       15 GETTABLEKS                       R10 R9 K1 ["Keypoints"]
       17 LENGTH                           R11 R10
       18 LOADN                            R12 2
       19 JUMPIFNOTLT                      R12 R11 ; [+3]
       21 LOADK                            R8 K2 ["<ColorSequence>"]
       22 JUMP                             ; [+18]
       23 GETTABLEN                        R12 R10 1
       24 GETTABLEKS                       R11 R12 K0 ["Value"]
       26 GETTABLEN                        R13 R10 2
       27 GETTABLEKS                       R12 R13 K0 ["Value"]
       29 JUMPIFEQ                         R11 R12 ; [+3]
       31 LOADK                            R8 K2 ["<ColorSequence>"]
       32 JUMP                             ; [+8]
       33 LOADK                            R11 K3 ["#"]
       34 GETTABLEN                        R13 R10 1
       35 GETTABLEKS                       R12 R13 K0 ["Value"]
       37 NAMECALL                         R12 R12 K4 ["ToHex"]
       39 CALL                             R12 1 1
       40 CONCAT                           R8 R11 R12
       41 CALL                             R7 1 2
       42 GETUPVAL                         R9 1
       43 LOADNIL                          R10
       44 CALL                             R9 1 2
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R13 R0 K0 ["Value"]
       48 GETUPVAL                         R14 3
       49 GETTABLEKS                       R15 R13 K1 ["Keypoints"]
       51 DUPCLOSURE                       R16 K5 [PROTO_2]
       52 CALL                             R14 2 1
       53 MOVE                             R12 R14
       54 CALL                             R11 1 1
       55 GETUPVAL                         R12 4
       56 NEWCLOSURE                       R13 P1
       57 CAPTURE                          VAL R11
       58 CAPTURE                          UPVAL U3
       59 NEWTABLE                         R14 0 1
       61 GETTABLEKS                       R15 R11 K6 ["keypoints"]
       63 SETLIST                          R14 R15 1 [1]
       65 CALL                             R12 2 1
       66 GETUPVAL                         R13 5
       67 NEWCLOSURE                       R14 P2
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R0
       71 NEWTABLE                         R15 0 3
       73 GETTABLEKS                       R16 R0 K0 ["Value"]
       75 MOVE                             R17 R10
       76 MOVE                             R18 R8
       77 SETLIST                          R15 R16 3 [1]
       79 CALL                             R13 2 0
       80 NEWCLOSURE                       R13 P3
       81 CAPTURE                          VAL R11
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          VAL R0
       84 NEWCLOSURE                       R14 P4
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          VAL R6
       89 NEWCLOSURE                       R15 P5
       90 CAPTURE                          VAL R11
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R6
       94 NEWCLOSURE                       R16 P6
       95 CAPTURE                          VAL R11
       96 CAPTURE                          UPVAL U3
       97 CAPTURE                          VAL R0
       98 NEWCLOSURE                       R17 P7
       99 CAPTURE                          VAL R11
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          VAL R0
      102 NEWCLOSURE                       R18 P8
      103 CAPTURE                          UPVAL U6
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R8
      106 NEWCLOSURE                       R19 P9
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R10
      109 CAPTURE                          UPVAL U6
      110 NEWCLOSURE                       R20 P10
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R11
      113 CAPTURE                          UPVAL U7
      114 CAPTURE                          UPVAL U8
      115 CAPTURE                          UPVAL U3
      116 CAPTURE                          VAL R0
      117 NEWCLOSURE                       R21 P11
      118 CAPTURE                          UPVAL U7
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R11
      121 CAPTURE                          UPVAL U3
      122 CAPTURE                          VAL R0
      123 NEWCLOSURE                       R22 P12
      124 CAPTURE                          UPVAL U9
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R11
      127 GETUPVAL                         R24 9
      128 JUMPIFNOT                        R24 ; [+10]
      129 GETUPVAL                         R23 10
      130 NEWCLOSURE                       R24 P13
      131 CAPTURE                          VAL R4
      132 NEWTABLE                         R25 0 1
      134 MOVE                             R26 R4
      135 SETLIST                          R25 R26 1 [1]
      137 CALL                             R23 2 1
      138 JUMP                             ; [+1]
      139 LOADNIL                          R23
      140 GETUPVAL                         R25 9
      141 JUMPIFNOT                        R25 ; [+14]
      142 GETUPVAL                         R24 10
      143 NEWCLOSURE                       R25 P14
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R11
      146 CAPTURE                          UPVAL U3
      147 CAPTURE                          VAL R0
      148 NEWTABLE                         R26 0 2
      150 MOVE                             R27 R4
      151 MOVE                             R28 R13
      152 SETLIST                          R26 R27 2 [1]
      154 CALL                             R24 2 1
      155 JUMP                             ; [+4]
      156 NEWCLOSURE                       R24 P15
      157 CAPTURE                          VAL R11
      158 CAPTURE                          UPVAL U3
      159 CAPTURE                          VAL R0
      160 NEWTABLE                         R25 0 0
      162 NEWTABLE                         R26 0 0
      164 GETTABLEKS                       R27 R11 K6 ["keypoints"]
      166 LOADNIL                          R28
      167 LOADNIL                          R29
      168 FORGPREP                         R27
      169 LOADK                            R33 K7 ["Keypoint_"]
      170 FASTCALL1                        TOSTRING R30 ; [+3]
      171 MOVE                             R35 R30
      172 GETIMPORT                        R34 K9 [tostring]
      174 CALL                             R34 1 1
      175 CONCAT                           R32 R33 R34
      176 GETTABLEKS                       R34 R11 K10 ["selectedIndex"]
      178 JUMPIFEQ                         R34 R30 ; [+2]
      180 LOADB                            R33 0 +1
      181 LOADB                            R33 1
      182 GETUPVAL                         R35 11
      183 GETTABLEKS                       R34 R35 K11 ["createElement"]
      185 GETUPVAL                         R35 12
      186 DUPTABLE                         R36 K15 [{"Position", "Selected", "OnHoverStart"}]
      187 GETIMPORT                        R37 K18 [UDim2.fromScale]
      189 GETTABLEKS                       R38 R31 K19 ["Time"]
      191 LOADN                            R39 0
      192 CALL                             R37 2 1
      193 SETTABLEKS                       R37 R36 K12 ["Position"]
      195 SETTABLEKS                       R33 R36 K13 ["Selected"]
      197 GETUPVAL                         R37 13
      198 MOVE                             R38 R22
      199 NEWTABLE                         R39 0 1
      201 MOVE                             R40 R30
      202 SETLIST                          R39 R40 1 [1]
      204 CALL                             R37 2 1
      205 SETTABLEKS                       R37 R36 K14 ["OnHoverStart"]
      207 CALL                             R34 2 1
      208 SETTABLE                         R34 R26 R32
      209 GETUPVAL                         R35 11
      210 GETTABLEKS                       R34 R35 K11 ["createElement"]
      212 GETUPVAL                         R35 14
      213 DUPTABLE                         R36 K24 [{"Position", "Value", "Selected", "Tag", "OnMoved", "OnHoverStart", "OnDragStart", "OnDragEnd"}]
      214 GETIMPORT                        R37 K27 [Vector2.new]
      216 GETTABLEKS                       R38 R31 K19 ["Time"]
      218 LOADN                            R39 0
      219 CALL                             R37 2 1
      220 SETTABLEKS                       R37 R36 K12 ["Position"]
      222 GETTABLEKS                       R37 R31 K0 ["Value"]
      224 SETTABLEKS                       R37 R36 K0 ["Value"]
      226 SETTABLEKS                       R33 R36 K13 ["Selected"]
      228 LOADK                            R37 K28 ["ColorSequenceKeypoint"]
      229 SETTABLEKS                       R37 R36 K20 ["Tag"]
      231 SETTABLEKS                       R20 R36 K21 ["OnMoved"]
      233 GETUPVAL                         R37 13
      234 MOVE                             R38 R22
      235 NEWTABLE                         R39 0 1
      237 MOVE                             R40 R30
      238 SETLIST                          R39 R40 1 [1]
      240 CALL                             R37 2 1
      241 SETTABLEKS                       R37 R36 K14 ["OnHoverStart"]
      243 SETTABLEKS                       R23 R36 K22 ["OnDragStart"]
      245 SETTABLEKS                       R24 R36 K23 ["OnDragEnd"]
      247 CALL                             R34 2 1
      248 SETTABLE                         R34 R25 R32
      249 FORGLOOP                         R27 2 ; [-81]
      251 JUMPIFNOTEQKNIL                  R9 ; [+2]
      253 LOADB                            R27 0 +1
      254 LOADB                            R27 1
      255 GETUPVAL                         R29 11
      256 GETTABLEKS                       R28 R29 K11 ["createElement"]
      258 GETUPVAL                         R29 15
      259 NEWTABLE                         R30 1 0
      261 GETUPVAL                         R32 11
      262 GETTABLEKS                       R31 R32 K20 ["Tag"]
      264 LOADK                            R32 K29 ["X-Fill"]
      265 SETTABLE                         R32 R30 R31
      266 DUPTABLE                         R31 K33 [{"Input", "Tooltip", "SequencePickerModal"}]
      267 GETUPVAL                         R33 11
      268 GETTABLEKS                       R32 R33 K11 ["createElement"]
      270 GETUPVAL                         R33 16
      271 NEWTABLE                         R34 8 0
      273 GETTABLEKS                       R35 R0 K34 ["Disabled"]
      275 SETTABLEKS                       R35 R34 K34 ["Disabled"]
      277 GETUPVAL                         R35 17
      278 SETTABLEKS                       R35 R34 K35 ["LeadingComponent"]
      280 DUPTABLE                         R35 K40 [{"Color", "OnClick", "ForwardRef", "Size"}]
      281 GETTABLEKS                       R36 R0 K0 ["Value"]
      283 SETTABLEKS                       R36 R35 K36 ["Color"]
      285 SETTABLEKS                       R14 R35 K37 ["OnClick"]
      287 SETTABLEKS                       R1 R35 K38 ["ForwardRef"]
      289 GETUPVAL                         R36 18
      290 SETTABLEKS                       R36 R35 K39 ["Size"]
      292 SETTABLEKS                       R35 R34 K41 ["LeadingComponentProps"]
      294 SETTABLEKS                       R18 R34 K42 ["OnFocusLost"]
      296 SETTABLEKS                       R19 R34 K43 ["OnTextChanged"]
      298 GETTABLEKS                       R36 R0 K44 ["AutomaticSize"]
      300 JUMPIFNOT                        R36 ; [+10]
      301 GETIMPORT                        R35 K45 [UDim2.new]
      303 LOADN                            R36 1
      304 LOADN                            R37 0
      305 LOADN                            R38 0
      306 GETTABLEKS                       R40 R0 K47 ["MinimumHeight"]
      308 ORK                              R39 R40 K46 [24]
      309 CALL                             R35 4 1
      310 JUMP                             ; [+5]
      311 GETIMPORT                        R35 K18 [UDim2.fromScale]
      313 LOADN                            R36 1
      314 LOADN                            R37 1
      315 CALL                             R35 2 1
      316 SETTABLEKS                       R35 R34 K39 ["Size"]
      318 SETTABLEKS                       R7 R34 K48 ["Text"]
      320 GETUPVAL                         R36 11
      321 GETTABLEKS                       R35 R36 K20 ["Tag"]
      323 JUMPIFNOT                        R27 ; [+2]
      324 LOADK                            R36 K49 ["PropertyCellError"]
      325 JUMP                             ; [+1]
      326 LOADNIL                          R36
      327 SETTABLE                         R36 R34 R35
      328 CALL                             R32 2 1
      329 SETTABLEKS                       R32 R31 K30 ["Input"]
      331 GETUPVAL                         R33 11
      332 GETTABLEKS                       R32 R33 K11 ["createElement"]
      334 GETUPVAL                         R33 19
      335 DUPTABLE                         R34 K51 [{"Enabled", "Text"}]
      336 SETTABLEKS                       R27 R34 K50 ["Enabled"]
      338 ORK                              R35 R9 K52 [""]
      339 SETTABLEKS                       R35 R34 K48 ["Text"]
      341 CALL                             R32 2 1
      342 SETTABLEKS                       R32 R31 K31 ["Tooltip"]
      344 GETUPVAL                         R33 11
      345 GETTABLEKS                       R32 R33 K11 ["createElement"]
      347 GETUPVAL                         R33 20
      348 DUPTABLE                         R34 K57 [{"Open", "MaxSize", "MinSize", "ObjectRef", "OnFocusLost"}]
      349 SETTABLEKS                       R5 R34 K53 ["Open"]
      351 GETIMPORT                        R35 K27 [Vector2.new]
      353 LOADN                            R36 32
      354 LOADN                            R37 225
      355 CALL                             R35 2 1
      356 SETTABLEKS                       R35 R34 K54 ["MaxSize"]
      358 GETIMPORT                        R35 K27 [Vector2.new]
      360 LOADN                            R36 144
      361 LOADN                            R37 200
      362 CALL                             R35 2 1
      363 SETTABLEKS                       R35 R34 K55 ["MinSize"]
      365 SETTABLEKS                       R1 R34 K56 ["ObjectRef"]
      367 SETTABLEKS                       R15 R34 K42 ["OnFocusLost"]
      369 DUPTABLE                         R35 K60 [{"SequenceTimelinePane", "KeypointControls"}]
      370 GETUPVAL                         R37 11
      371 GETTABLEKS                       R36 R37 K11 ["createElement"]
      373 GETUPVAL                         R37 15
      374 NEWTABLE                         R38 4 0
      376 LOADN                            R39 1
      377 SETTABLEKS                       R39 R38 K61 ["LayoutOrder"]
      379 GETIMPORT                        R39 K45 [UDim2.new]
      381 LOADN                            R40 1
      382 LOADN                            R41 0
      383 LOADN                            R42 0
      384 LOADN                            R43 150
      385 CALL                             R39 4 1
      386 SETTABLEKS                       R39 R38 K39 ["Size"]
      388 GETUPVAL                         R40 11
      389 GETTABLEKS                       R39 R40 K20 ["Tag"]
      391 LOADK                            R40 K62 ["X-Pad X-Column"]
      392 SETTABLE                         R40 R38 R39
      393 SETTABLEKS                       R21 R38 K37 ["OnClick"]
      395 DUPTABLE                         R39 K65 [{"SequenceTimelineContainer", "KeypointContainer"}]
      396 GETUPVAL                         R41 11
      397 GETTABLEKS                       R40 R41 K11 ["createElement"]
      399 GETUPVAL                         R41 15
      400 NEWTABLE                         R42 8 0
      402 LOADN                            R43 1
      403 SETTABLEKS                       R43 R42 K61 ["LayoutOrder"]
      405 LOADN                            R43 0
      406 SETTABLEKS                       R43 R42 K66 ["BackgroundTransparency"]
      408 GETIMPORT                        R43 K68 [Color3.new]
      410 LOADN                            R44 1
      411 LOADN                            R45 1
      412 LOADN                            R46 1
      413 CALL                             R43 3 1
      414 SETTABLEKS                       R43 R42 K69 ["BackgroundColor3"]
      416 SETTABLEKS                       R2 R42 K38 ["ForwardRef"]
      418 GETUPVAL                         R44 11
      419 GETTABLEKS                       R43 R44 K20 ["Tag"]
      421 LOADK                            R44 K29 ["X-Fill"]
      422 SETTABLE                         R44 R42 R43
      423 NEWTABLE                         R43 0 1
      425 GETUPVAL                         R44 8
      426 MOVE                             R45 R26
      427 DUPTABLE                         R46 K71 [{"UIGradient"}]
      428 GETUPVAL                         R48 11
      429 GETTABLEKS                       R47 R48 K11 ["createElement"]
      431 LOADK                            R48 K70 ["UIGradient"]
      432 DUPTABLE                         R49 K72 [{"Color"}]
      433 SETTABLEKS                       R12 R49 K36 ["Color"]
      435 CALL                             R47 2 1
      436 SETTABLEKS                       R47 R46 K70 ["UIGradient"]
      438 CALL                             R44 2 -1
      439 SETLIST                          R43 R44 -1 [1]
      441 CALL                             R40 3 1
      442 SETTABLEKS                       R40 R39 K63 ["SequenceTimelineContainer"]
      444 GETUPVAL                         R41 11
      445 GETTABLEKS                       R40 R41 K11 ["createElement"]
      447 GETUPVAL                         R41 15
      448 NEWTABLE                         R42 2 0
      450 LOADN                            R43 2
      451 SETTABLEKS                       R43 R42 K61 ["LayoutOrder"]
      453 GETUPVAL                         R44 11
      454 GETTABLEKS                       R43 R44 K20 ["Tag"]
      456 LOADK                            R44 K73 ["X-FitY"]
      457 SETTABLE                         R44 R42 R43
      458 MOVE                             R43 R25
      459 CALL                             R40 3 1
      460 SETTABLEKS                       R40 R39 K64 ["KeypointContainer"]
      462 CALL                             R36 3 1
      463 SETTABLEKS                       R36 R35 K58 ["SequenceTimelinePane"]
      465 GETUPVAL                         R37 11
      466 GETTABLEKS                       R36 R37 K11 ["createElement"]
      468 GETUPVAL                         R37 21
      469 DUPTABLE                         R38 K79 [{"LayoutOrder", "Keypoint", "IsKeypointFixed", "OnSave", "OnDelete", "OnEdit"}]
      470 LOADN                            R39 2
      471 SETTABLEKS                       R39 R38 K61 ["LayoutOrder"]
      473 GETTABLEKS                       R39 R11 K80 ["getSelectedKeypoint"]
      475 CALL                             R39 0 1
      476 SETTABLEKS                       R39 R38 K74 ["Keypoint"]
      478 GETTABLEKS                       R39 R11 K81 ["isFixedKeypointSelected"]
      480 CALL                             R39 0 1
      481 SETTABLEKS                       R39 R38 K75 ["IsKeypointFixed"]
      483 SETTABLEKS                       R15 R38 K76 ["OnSave"]
      485 SETTABLEKS                       R16 R38 K77 ["OnDelete"]
      487 SETTABLEKS                       R17 R38 K78 ["OnEdit"]
      489 CALL                             R36 2 1
      490 SETTABLEKS                       R36 R35 K59 ["KeypointControls"]
      492 CALL                             R32 3 1
      493 SETTABLEKS                       R32 R31 K32 ["SequencePickerModal"]
      495 CALL                             R28 3 -1
      496 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["useState"]
       20 GETTABLEKS                       R3 R1 K8 ["useRef"]
       22 GETTABLEKS                       R4 R1 K9 ["useEffect"]
       24 GETTABLEKS                       R5 R1 K10 ["useMemo"]
       26 GETTABLEKS                       R6 R1 K11 ["useCallback"]
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R9 R0 K5 ["Packages"]
       32 GETTABLEKS                       R8 R9 K12 ["Framework"]
       34 CALL                             R7 1 1
       35 GETTABLEKS                       R9 R7 K13 ["UI"]
       37 GETTABLEKS                       R8 R9 K14 ["Pane"]
       39 GETTABLEKS                       R10 R7 K13 ["UI"]
       41 GETTABLEKS                       R9 R10 K15 ["TextInput"]
       43 GETTABLEKS                       R11 R7 K13 ["UI"]
       45 GETTABLEKS                       R10 R11 K16 ["Tooltip"]
       47 GETIMPORT                        R11 K4 [require]
       49 GETTABLEKS                       R13 R0 K5 ["Packages"]
       51 GETTABLEKS                       R12 R13 K17 ["Dash"]
       53 CALL                             R11 1 1
       54 GETTABLEKS                       R12 R11 K18 ["join"]
       56 GETTABLEKS                       R13 R11 K19 ["map"]
       58 GETIMPORT                        R14 K4 [require]
       60 GETTABLEKS                       R17 R0 K20 ["Src"]
       62 GETTABLEKS                       R16 R17 K21 ["Util"]
       64 GETTABLEKS                       R15 R16 K22 ["bind"]
       66 CALL                             R14 1 1
       67 GETIMPORT                        R15 K4 [require]
       69 GETTABLEKS                       R18 R0 K20 ["Src"]
       71 GETTABLEKS                       R17 R18 K21 ["Util"]
       73 GETTABLEKS                       R16 R17 K23 ["colorFromString"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K4 [require]
       78 GETTABLEKS                       R20 R0 K20 ["Src"]
       80 GETTABLEKS                       R19 R20 K24 ["Renderers"]
       82 GETTABLEKS                       R18 R19 K25 ["SequenceRenderers"]
       84 GETTABLEKS                       R17 R18 K26 ["Keypoint"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K4 [require]
       89 GETTABLEKS                       R20 R0 K20 ["Src"]
       91 GETTABLEKS                       R19 R20 K24 ["Renderers"]
       93 GETTABLEKS                       R18 R19 K27 ["Modal"]
       95 CALL                             R17 1 1
       96 GETIMPORT                        R18 K4 [require]
       98 GETTABLEKS                       R22 R0 K20 ["Src"]
      100 GETTABLEKS                       R21 R22 K24 ["Renderers"]
      102 GETTABLEKS                       R20 R21 K25 ["SequenceRenderers"]
      104 GETTABLEKS                       R19 R20 K28 ["mouseCoordsRelativeToElement"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K4 [require]
      109 GETTABLEKS                       R23 R0 K20 ["Src"]
      111 GETTABLEKS                       R22 R23 K24 ["Renderers"]
      113 GETTABLEKS                       R21 R22 K25 ["SequenceRenderers"]
      115 GETTABLEKS                       R20 R21 K29 ["PreviewButton"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K4 [require]
      120 GETTABLEKS                       R24 R0 K20 ["Src"]
      122 GETTABLEKS                       R23 R24 K24 ["Renderers"]
      124 GETTABLEKS                       R22 R23 K25 ["SequenceRenderers"]
      126 GETTABLEKS                       R21 R22 K30 ["useKeypointSequence"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K4 [require]
      131 GETIMPORT                        R23 K1 [script]
      133 GETTABLEKS                       R22 R23 K31 ["KeypointControls"]
      135 CALL                             R21 1 1
      136 GETIMPORT                        R22 K4 [require]
      138 GETIMPORT                        R24 K1 [script]
      140 GETTABLEKS                       R23 R24 K32 ["KeypointLine"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K4 [require]
      145 GETTABLEKS                       R26 R0 K20 ["Src"]
      147 GETTABLEKS                       R25 R26 K33 ["Flags"]
      149 GETTABLEKS                       R24 R25 K34 ["getFFlagStyleEditorFixKeypointHoverDrag"]
      151 CALL                             R23 1 1
      152 CALL                             R23 0 1
      153 GETIMPORT                        R24 K4 [require]
      155 GETTABLEKS                       R27 R0 K20 ["Src"]
      157 GETTABLEKS                       R26 R27 K35 ["Resources"]
      159 GETTABLEKS                       R25 R26 K36 ["PluginStyles"]
      161 CALL                             R24 1 1
      162 LOADK                            R27 K37 ["Icon16"]
      163 NAMECALL                         R25 R24 K38 ["GetAttribute"]
      165 CALL                             R25 2 1
      166 GETIMPORT                        R26 K4 [require]
      168 GETTABLEKS                       R28 R0 K20 ["Src"]
      170 GETTABLEKS                       R27 R28 K39 ["Types"]
      172 CALL                             R26 1 1
      173 GETIMPORT                        R27 K4 [require]
      175 GETTABLEKS                       R31 R0 K20 ["Src"]
      177 GETTABLEKS                       R30 R31 K24 ["Renderers"]
      179 GETTABLEKS                       R29 R30 K25 ["SequenceRenderers"]
      181 GETTABLEKS                       R28 R29 K39 ["Types"]
      183 CALL                             R27 1 1
      184 GETIMPORT                        R28 K4 [require]
      186 GETTABLEKS                       R31 R0 K20 ["Src"]
      188 GETTABLEKS                       R30 R31 K24 ["Renderers"]
      190 GETTABLEKS                       R29 R30 K40 ["RendererTypes"]
      192 CALL                             R28 1 1
      193 DUPCLOSURE                       R29 K41 [PROTO_0]
      194 DUPCLOSURE                       R30 K42 [PROTO_1]
      195 CAPTURE                          VAL R15
      196 DUPCLOSURE                       R31 K43 [PROTO_3]
      197 CAPTURE                          VAL R13
      198 DUPCLOSURE                       R32 K44 [PROTO_6]
      199 CAPTURE                          VAL R13
      200 DUPCLOSURE                       R33 K45 [PROTO_23]
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R23
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R22
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R16
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R19
      219 CAPTURE                          VAL R25
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R17
      222 CAPTURE                          VAL R21
      223 RETURN                           R33 1
