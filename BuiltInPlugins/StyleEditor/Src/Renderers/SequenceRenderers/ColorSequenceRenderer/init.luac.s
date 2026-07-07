PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Keypoints"]
        2 LENGTH                           R2 R1
        3 LOADN                            R3 2
        4 JUMPIFNOTLT                      R3 R2 ; [+3]
        6 LOADK                            R2 K1 ["<ColorSequence>"]
        7 RETURN                           R2 1
        8 GETTABLEN                        R2 R1 1
        9 GETTABLEKS                       R2 R2 K2 ["Value"]
       11 GETTABLEN                        R3 R1 2
       12 GETTABLEKS                       R3 R3 K2 ["Value"]
       14 JUMPIFEQ                         R2 R3 ; [+3]
       16 LOADK                            R2 K1 ["<ColorSequence>"]
       17 RETURN                           R2 1
       18 LOADK                            R3 K3 ["#"]
       19 GETTABLEN                        R4 R1 1
       20 GETTABLEKS                       R4 R4 K2 ["Value"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["keypoints"]
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
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["Value"]
        7 GETTABLEKS                       R3 R2 K1 ["Keypoints"]
        9 LENGTH                           R4 R3
       10 LOADN                            R5 2
       11 JUMPIFNOTLT                      R5 R4 ; [+3]
       13 LOADK                            R1 K2 ["<ColorSequence>"]
       14 JUMP                             ; [+18]
       15 GETTABLEN                        R4 R3 1
       16 GETTABLEKS                       R4 R4 K0 ["Value"]
       18 GETTABLEN                        R5 R3 2
       19 GETTABLEKS                       R5 R5 K0 ["Value"]
       21 JUMPIFEQ                         R4 R5 ; [+3]
       23 LOADK                            R1 K2 ["<ColorSequence>"]
       24 JUMP                             ; [+8]
       25 LOADK                            R4 K3 ["#"]
       26 GETTABLEN                        R5 R3 1
       27 GETTABLEKS                       R5 R5 K0 ["Value"]
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
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["Schema"]
       16 GETTABLEKS                       R3 R3 K3 ["GetDefaultValue"]
       18 CALL                             R3 0 1
       19 MOVE                             R2 R3
       20 GETIMPORT                        R3 K5 [warn]
       22 LOADK                            R4 K6 ["Failed to create ColorSequence due to invalid keypoints, resetting to default"]
       23 CALL                             R3 1 0
       24 JUMP                             ; [+1]
       25 MOVE                             R2 R1
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K7 ["Value"]
       29 JUMPIFEQ                         R2 R3 ; [+6]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K8 ["OnChanged"]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["save"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reset"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Value"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["save"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 LOADB                            R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 4
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["remove"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["save"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["update"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["save"]
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
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["Value"]
       20 JUMPIFEQ                         R2 R4 ; [+7]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K6 ["OnChanged"]
       25 MOVE                             R5 R2
       26 CALL                             R4 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 2
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K5 ["Value"]
       32 GETTABLEKS                       R7 R6 K7 ["Keypoints"]
       34 LENGTH                           R8 R7
       35 LOADN                            R9 2
       36 JUMPIFNOTLT                      R9 R8 ; [+3]
       38 LOADK                            R5 K0 ["<ColorSequence>"]
       39 JUMP                             ; [+18]
       40 GETTABLEN                        R8 R7 1
       41 GETTABLEKS                       R8 R8 K5 ["Value"]
       43 GETTABLEN                        R9 R7 2
       44 GETTABLEKS                       R9 R9 K5 ["Value"]
       46 JUMPIFEQ                         R8 R9 ; [+3]
       48 LOADK                            R5 K0 ["<ColorSequence>"]
       49 JUMP                             ; [+8]
       50 LOADK                            R8 K8 ["#"]
       51 GETTABLEN                        R9 R7 1
       52 GETTABLEKS                       R9 R9 K5 ["Value"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["isFixedKeypointSelected"]
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K2 ["getSelectedKeypoint"]
       14 CALL                             R1 0 1
       15 GETUPVAL                         R2 2
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["current"]
       19 MOVE                             R4 R0
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 3
       22 MOVE                             R4 R1
       23 DUPTABLE                         R5 K4 [{"Time"}]
       24 GETTABLEKS                       R6 R2 K5 ["X"]
       26 SETTABLEKS                       R6 R5 K3 ["Time"]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K6 ["update"]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K7 ["save"]
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
        8 GETTABLEKS                       R3 R1 K7 ["Position"]
       10 GETTABLEKS                       R3 R3 K8 ["X"]
       12 GETTABLEKS                       R4 R1 K7 ["Position"]
       14 GETTABLEKS                       R4 R4 K9 ["Y"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K10 ["current"]
       21 MOVE                             R5 R2
       22 CALL                             R3 2 1
       23 DUPTABLE                         R4 K13 [{"Time", "Value"}]
       24 GETTABLEKS                       R5 R3 K8 ["X"]
       26 SETTABLEKS                       R5 R4 K11 ["Time"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K14 ["getSelectedKeypoint"]
       31 CALL                             R5 0 1
       32 GETTABLEKS                       R5 R5 K12 ["Value"]
       34 SETTABLEKS                       R5 R4 K12 ["Value"]
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K15 ["add"]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 0
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K16 ["save"]
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
        5 GETUPVAL                         R1 2
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETUPVAL                         R1 3
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 4
       11 GETTABLEKS                       R1 R1 K0 ["select"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["save"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["save"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_25:
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
       13 LOADB                            R8 0
       14 CALL                             R7 1 2
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R11 R0 K0 ["Value"]
       18 GETTABLEKS                       R12 R11 K1 ["Keypoints"]
       20 LENGTH                           R13 R12
       21 LOADN                            R14 2
       22 JUMPIFNOTLT                      R14 R13 ; [+3]
       24 LOADK                            R10 K2 ["<ColorSequence>"]
       25 JUMP                             ; [+18]
       26 GETTABLEN                        R13 R12 1
       27 GETTABLEKS                       R13 R13 K0 ["Value"]
       29 GETTABLEN                        R14 R12 2
       30 GETTABLEKS                       R14 R14 K0 ["Value"]
       32 JUMPIFEQ                         R13 R14 ; [+3]
       34 LOADK                            R10 K2 ["<ColorSequence>"]
       35 JUMP                             ; [+8]
       36 LOADK                            R13 K3 ["#"]
       37 GETTABLEN                        R14 R12 1
       38 GETTABLEKS                       R14 R14 K0 ["Value"]
       40 NAMECALL                         R14 R14 K4 ["ToHex"]
       42 CALL                             R14 1 1
       43 CONCAT                           R10 R13 R14
       44 CALL                             R9 1 2
       45 GETUPVAL                         R11 1
       46 LOADNIL                          R12
       47 CALL                             R11 1 2
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R15 R0 K0 ["Value"]
       51 GETUPVAL                         R16 3
       52 GETTABLEKS                       R17 R15 K1 ["Keypoints"]
       54 DUPCLOSURE                       R18 K5 [PROTO_2]
       55 CALL                             R16 2 1
       56 MOVE                             R14 R16
       57 CALL                             R13 1 1
       58 GETUPVAL                         R14 4
       59 NEWCLOSURE                       R15 P1
       60 CAPTURE                          VAL R13
       61 CAPTURE                          UPVAL U3
       62 NEWTABLE                         R16 0 1
       64 GETTABLEKS                       R17 R13 K6 ["keypoints"]
       66 SETLIST                          R16 R17 1 [1]
       68 CALL                             R14 2 1
       69 GETUPVAL                         R15 5
       70 NEWCLOSURE                       R16 P2
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R0
       74 NEWTABLE                         R17 0 3
       76 GETTABLEKS                       R18 R0 K0 ["Value"]
       78 MOVE                             R19 R12
       79 MOVE                             R20 R10
       80 SETLIST                          R17 R18 3 [1]
       82 CALL                             R15 2 0
       83 NEWCLOSURE                       R15 P3
       84 CAPTURE                          VAL R13
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          VAL R0
       87 NEWCLOSURE                       R16 P4
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R6
       92 NEWCLOSURE                       R17 P5
       93 CAPTURE                          VAL R13
       94 CAPTURE                          UPVAL U3
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R6
       98 NEWCLOSURE                       R18 P6
       99 CAPTURE                          VAL R13
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          VAL R0
      102 NEWCLOSURE                       R19 P7
      103 CAPTURE                          VAL R13
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          VAL R0
      106 NEWCLOSURE                       R20 P8
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R10
      110 NEWCLOSURE                       R21 P9
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R12
      113 CAPTURE                          UPVAL U6
      114 NEWCLOSURE                       R22 P10
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R13
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          UPVAL U8
      119 CAPTURE                          UPVAL U3
      120 CAPTURE                          VAL R0
      121 NEWCLOSURE                       R23 P11
      122 CAPTURE                          UPVAL U7
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R13
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          VAL R0
      127 NEWCLOSURE                       R24 P12
      128 CAPTURE                          UPVAL U9
      129 CAPTURE                          VAL R3
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R13
      133 GETUPVAL                         R26 9
      134 JUMPIFNOT                        R26 ; [+10]
      135 GETUPVAL                         R25 11
      136 NEWCLOSURE                       R26 P13
      137 CAPTURE                          VAL R4
      138 NEWTABLE                         R27 0 1
      140 MOVE                             R28 R4
      141 SETLIST                          R27 R28 1 [1]
      143 CALL                             R25 2 1
      144 JUMP                             ; [+1]
      145 LOADNIL                          R25
      146 GETUPVAL                         R27 9
      147 JUMPIFNOT                        R27 ; [+14]
      148 GETUPVAL                         R26 11
      149 NEWCLOSURE                       R27 P14
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R13
      152 CAPTURE                          UPVAL U3
      153 CAPTURE                          VAL R0
      154 NEWTABLE                         R28 0 2
      156 MOVE                             R29 R4
      157 MOVE                             R30 R15
      158 SETLIST                          R28 R29 2 [1]
      160 CALL                             R26 2 1
      161 JUMP                             ; [+4]
      162 NEWCLOSURE                       R26 P15
      163 CAPTURE                          VAL R13
      164 CAPTURE                          UPVAL U3
      165 CAPTURE                          VAL R0
      166 NEWTABLE                         R27 0 0
      168 NEWTABLE                         R28 0 0
      170 GETTABLEKS                       R29 R13 K6 ["keypoints"]
      172 LOADNIL                          R30
      173 LOADNIL                          R31
      174 FORGPREP                         R29
      175 LOADK                            R35 K7 ["Keypoint_"]
      176 FASTCALL1                        TOSTRING R32 ; [+3]
      177 MOVE                             R37 R32
      178 GETIMPORT                        R36 K9 [tostring]
      180 CALL                             R36 1 1
      181 CONCAT                           R34 R35 R36
      182 GETTABLEKS                       R36 R13 K10 ["selectedIndex"]
      184 JUMPIFEQ                         R36 R32 ; [+2]
      186 LOADB                            R35 0 +1
      187 LOADB                            R35 1
      188 GETUPVAL                         R36 12
      189 GETTABLEKS                       R36 R36 K11 ["createElement"]
      191 GETUPVAL                         R37 13
      192 DUPTABLE                         R38 K15 [{"Position", "Selected", "OnHoverStart"}]
      193 GETIMPORT                        R39 K18 [UDim2.fromScale]
      195 GETTABLEKS                       R40 R33 K19 ["Time"]
      197 LOADN                            R41 0
      198 CALL                             R39 2 1
      199 SETTABLEKS                       R39 R38 K12 ["Position"]
      201 SETTABLEKS                       R35 R38 K13 ["Selected"]
      203 GETUPVAL                         R39 14
      204 MOVE                             R40 R24
      205 NEWTABLE                         R41 0 1
      207 MOVE                             R42 R32
      208 SETLIST                          R41 R42 1 [1]
      210 CALL                             R39 2 1
      211 SETTABLEKS                       R39 R38 K14 ["OnHoverStart"]
      213 CALL                             R36 2 1
      214 SETTABLE                         R36 R28 R34
      215 GETUPVAL                         R36 12
      216 GETTABLEKS                       R36 R36 K11 ["createElement"]
      218 GETUPVAL                         R37 15
      219 DUPTABLE                         R38 K25 [{["Position"], [2], ["Selected"], ["Tag"] = "ColorSequenceKeypoint", ["OnMoved"], ["OnHoverStart"], ["OnDragStart"], ["OnDragEnd"]}]
      220 GETIMPORT                        R39 K28 [Vector2.new]
      222 GETTABLEKS                       R40 R33 K19 ["Time"]
      224 LOADN                            R41 0
      225 CALL                             R39 2 1
      226 SETTABLEKS                       R39 R38 K12 ["Position"]
      228 GETTABLEKS                       R39 R33 K0 ["Value"]
      230 SETTABLEKS                       R39 R38 K0 ["Value"]
      232 SETTABLEKS                       R35 R38 K13 ["Selected"]
      234 SETTABLEKS                       R22 R38 K22 ["OnMoved"]
      236 GETUPVAL                         R39 14
      237 MOVE                             R40 R24
      238 NEWTABLE                         R41 0 1
      240 MOVE                             R42 R32
      241 SETLIST                          R41 R42 1 [1]
      243 CALL                             R39 2 1
      244 SETTABLEKS                       R39 R38 K14 ["OnHoverStart"]
      246 SETTABLEKS                       R25 R38 K23 ["OnDragStart"]
      248 SETTABLEKS                       R26 R38 K24 ["OnDragEnd"]
      250 CALL                             R36 2 1
      251 SETTABLE                         R36 R27 R34
      252 FORGLOOP                         R29 2 ; [-78]
      254 JUMPIFNOTEQKNIL                  R11 ; [+2]
      256 LOADB                            R29 0 +1
      257 LOADB                            R29 1
      258 GETUPVAL                         R30 12
      259 GETTABLEKS                       R30 R30 K11 ["createElement"]
      261 GETUPVAL                         R31 16
      262 NEWTABLE                         R32 1 0
      264 GETUPVAL                         R33 12
      265 GETTABLEKS                       R33 R33 K20 ["Tag"]
      267 LOADK                            R34 K29 ["X-Fill"]
      268 SETTABLE                         R34 R32 R33
      269 DUPTABLE                         R33 K33 [{"Input", "Tooltip", "SequencePickerModal"}]
      270 GETUPVAL                         R34 12
      271 GETTABLEKS                       R34 R34 K11 ["createElement"]
      273 GETUPVAL                         R35 17
      274 NEWTABLE                         R36 8 0
      276 GETTABLEKS                       R37 R0 K34 ["Disabled"]
      278 SETTABLEKS                       R37 R36 K34 ["Disabled"]
      280 GETUPVAL                         R37 18
      281 SETTABLEKS                       R37 R36 K35 ["LeadingComponent"]
      283 DUPTABLE                         R37 K40 [{"Color", "OnClick", "ForwardRef", "Size"}]
      284 GETTABLEKS                       R38 R0 K0 ["Value"]
      286 SETTABLEKS                       R38 R37 K36 ["Color"]
      288 SETTABLEKS                       R16 R37 K37 ["OnClick"]
      290 SETTABLEKS                       R1 R37 K38 ["ForwardRef"]
      292 GETUPVAL                         R38 19
      293 SETTABLEKS                       R38 R37 K39 ["Size"]
      295 SETTABLEKS                       R37 R36 K41 ["LeadingComponentProps"]
      297 SETTABLEKS                       R20 R36 K42 ["OnFocusLost"]
      299 SETTABLEKS                       R21 R36 K43 ["OnTextChanged"]
      301 GETTABLEKS                       R38 R0 K44 ["AutomaticSize"]
      303 JUMPIFNOT                        R38 ; [+10]
      304 GETIMPORT                        R37 K45 [UDim2.new]
      306 LOADN                            R38 1
      307 LOADN                            R39 0
      308 LOADN                            R40 0
      309 GETTABLEKS                       R42 R0 K47 ["MinimumHeight"]
      311 ORK                              R41 R42 K46 [24]
      312 CALL                             R37 4 1
      313 JUMP                             ; [+5]
      314 GETIMPORT                        R37 K18 [UDim2.fromScale]
      316 LOADN                            R38 1
      317 LOADN                            R39 1
      318 CALL                             R37 2 1
      319 SETTABLEKS                       R37 R36 K39 ["Size"]
      321 SETTABLEKS                       R9 R36 K48 ["Text"]
      323 GETUPVAL                         R37 12
      324 GETTABLEKS                       R37 R37 K20 ["Tag"]
      326 JUMPIFNOT                        R29 ; [+2]
      327 LOADK                            R38 K49 ["PropertyCellError"]
      328 JUMP                             ; [+1]
      329 LOADNIL                          R38
      330 SETTABLE                         R38 R36 R37
      331 CALL                             R34 2 1
      332 SETTABLEKS                       R34 R33 K30 ["Input"]
      334 GETUPVAL                         R34 12
      335 GETTABLEKS                       R34 R34 K11 ["createElement"]
      337 GETUPVAL                         R35 20
      338 DUPTABLE                         R36 K51 [{"Enabled", "Text"}]
      339 SETTABLEKS                       R29 R36 K50 ["Enabled"]
      341 ORK                              R37 R11 K52 [""]
      342 SETTABLEKS                       R37 R36 K48 ["Text"]
      344 CALL                             R34 2 1
      345 SETTABLEKS                       R34 R33 K31 ["Tooltip"]
      347 GETUPVAL                         R34 12
      348 GETTABLEKS                       R34 R34 K11 ["createElement"]
      350 GETUPVAL                         R35 21
      351 DUPTABLE                         R36 K57 [{"Open", "MaxSize", "MinSize", "ObjectRef", "OnFocusLost"}]
      352 SETTABLEKS                       R5 R36 K53 ["Open"]
      354 GETIMPORT                        R37 K28 [Vector2.new]
      356 LOADN                            R38 800
      357 LOADN                            R39 225
      358 CALL                             R37 2 1
      359 SETTABLEKS                       R37 R36 K54 ["MaxSize"]
      361 GETIMPORT                        R37 K28 [Vector2.new]
      363 LOADN                            R38 400
      364 LOADN                            R39 200
      365 CALL                             R37 2 1
      366 SETTABLEKS                       R37 R36 K55 ["MinSize"]
      368 SETTABLEKS                       R1 R36 K56 ["ObjectRef"]
      370 SETTABLEKS                       R17 R36 K42 ["OnFocusLost"]
      372 DUPTABLE                         R37 K60 [{"SequenceTimelinePane", "KeypointControls"}]
      373 GETUPVAL                         R38 12
      374 GETTABLEKS                       R38 R38 K11 ["createElement"]
      376 GETUPVAL                         R39 16
      377 NEWTABLE                         R40 4 0
      379 LOADN                            R41 1
      380 SETTABLEKS                       R41 R40 K61 ["LayoutOrder"]
      382 GETIMPORT                        R41 K45 [UDim2.new]
      384 LOADN                            R42 1
      385 LOADN                            R43 0
      386 LOADN                            R44 0
      387 LOADN                            R45 150
      388 CALL                             R41 4 1
      389 SETTABLEKS                       R41 R40 K39 ["Size"]
      391 GETUPVAL                         R41 12
      392 GETTABLEKS                       R41 R41 K20 ["Tag"]
      394 LOADK                            R42 K62 ["X-Pad X-Column"]
      395 SETTABLE                         R42 R40 R41
      396 SETTABLEKS                       R23 R40 K37 ["OnClick"]
      398 DUPTABLE                         R41 K65 [{"SequenceTimelineContainer", "KeypointContainer"}]
      399 GETUPVAL                         R42 12
      400 GETTABLEKS                       R42 R42 K11 ["createElement"]
      402 GETUPVAL                         R43 16
      403 NEWTABLE                         R44 8 0
      405 LOADN                            R45 1
      406 SETTABLEKS                       R45 R44 K61 ["LayoutOrder"]
      408 LOADN                            R45 0
      409 SETTABLEKS                       R45 R44 K66 ["BackgroundTransparency"]
      411 GETIMPORT                        R45 K68 [Color3.new]
      413 LOADN                            R46 1
      414 LOADN                            R47 1
      415 LOADN                            R48 1
      416 CALL                             R45 3 1
      417 SETTABLEKS                       R45 R44 K69 ["BackgroundColor3"]
      419 SETTABLEKS                       R2 R44 K38 ["ForwardRef"]
      421 GETUPVAL                         R45 12
      422 GETTABLEKS                       R45 R45 K20 ["Tag"]
      424 LOADK                            R46 K29 ["X-Fill"]
      425 SETTABLE                         R46 R44 R45
      426 NEWTABLE                         R45 0 1
      428 GETUPVAL                         R46 8
      429 MOVE                             R47 R28
      430 DUPTABLE                         R48 K71 [{"UIGradient"}]
      431 GETUPVAL                         R49 12
      432 GETTABLEKS                       R49 R49 K11 ["createElement"]
      434 LOADK                            R50 K70 ["UIGradient"]
      435 DUPTABLE                         R51 K72 [{"Color"}]
      436 SETTABLEKS                       R14 R51 K36 ["Color"]
      438 CALL                             R49 2 1
      439 SETTABLEKS                       R49 R48 K70 ["UIGradient"]
      441 CALL                             R46 2 -1
      442 SETLIST                          R45 R46 -1 [1]
      444 CALL                             R42 3 1
      445 SETTABLEKS                       R42 R41 K63 ["SequenceTimelineContainer"]
      447 GETUPVAL                         R42 12
      448 GETTABLEKS                       R42 R42 K11 ["createElement"]
      450 GETUPVAL                         R43 16
      451 NEWTABLE                         R44 2 0
      453 LOADN                            R45 2
      454 SETTABLEKS                       R45 R44 K61 ["LayoutOrder"]
      456 GETUPVAL                         R45 12
      457 GETTABLEKS                       R45 R45 K20 ["Tag"]
      459 LOADK                            R46 K73 ["X-FitY"]
      460 SETTABLE                         R46 R44 R45
      461 MOVE                             R45 R27
      462 CALL                             R42 3 1
      463 SETTABLEKS                       R42 R41 K64 ["KeypointContainer"]
      465 CALL                             R38 3 1
      466 SETTABLEKS                       R38 R37 K58 ["SequenceTimelinePane"]
      468 GETUPVAL                         R38 12
      469 GETTABLEKS                       R38 R38 K11 ["createElement"]
      471 GETUPVAL                         R39 22
      472 DUPTABLE                         R40 K82 [{["LayoutOrder"] = 2, ["Keypoint"], ["IsKeypointFixed"], ["OnSave"], ["OnDelete"], ["OnEdit"], ["OnOpen"], ["OnClose"]}]
      473 GETTABLEKS                       R41 R13 K83 ["getSelectedKeypoint"]
      475 CALL                             R41 0 1
      476 SETTABLEKS                       R41 R40 K75 ["Keypoint"]
      478 GETTABLEKS                       R41 R13 K84 ["isFixedKeypointSelected"]
      480 CALL                             R41 0 1
      481 SETTABLEKS                       R41 R40 K76 ["IsKeypointFixed"]
      483 SETTABLEKS                       R17 R40 K77 ["OnSave"]
      485 SETTABLEKS                       R18 R40 K78 ["OnDelete"]
      487 SETTABLEKS                       R19 R40 K79 ["OnEdit"]
      489 GETUPVAL                         R42 10
      490 JUMPIFNOT                        R42 ; [+3]
      491 NEWCLOSURE                       R41 P16
      492 CAPTURE                          VAL R8
      493 JUMP                             ; [+1]
      494 LOADNIL                          R41
      495 SETTABLEKS                       R41 R40 K80 ["OnOpen"]
      497 GETUPVAL                         R42 10
      498 JUMPIFNOT                        R42 ; [+3]
      499 NEWCLOSURE                       R41 P17
      500 CAPTURE                          VAL R8
      501 JUMP                             ; [+1]
      502 LOADNIL                          R41
      503 SETTABLEKS                       R41 R40 K81 ["OnClose"]
      505 CALL                             R38 2 1
      506 SETTABLEKS                       R38 R37 K59 ["KeypointControls"]
      508 CALL                             R34 3 1
      509 SETTABLEKS                       R34 R33 K32 ["SequencePickerModal"]
      511 CALL                             R30 3 -1
      512 RETURN                           R30 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["useState"]
       20 GETTABLEKS                       R3 R1 K8 ["useRef"]
       22 GETTABLEKS                       R4 R1 K9 ["useEffect"]
       24 GETTABLEKS                       R5 R1 K10 ["useMemo"]
       26 GETTABLEKS                       R6 R1 K11 ["useCallback"]
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R8 R0 K5 ["Packages"]
       32 GETTABLEKS                       R8 R8 K12 ["Framework"]
       34 CALL                             R7 1 1
       35 GETTABLEKS                       R8 R7 K13 ["UI"]
       37 GETTABLEKS                       R8 R8 K14 ["Pane"]
       39 GETTABLEKS                       R9 R7 K13 ["UI"]
       41 GETTABLEKS                       R9 R9 K15 ["TextInput"]
       43 GETTABLEKS                       R10 R7 K13 ["UI"]
       45 GETTABLEKS                       R10 R10 K16 ["Tooltip"]
       47 GETIMPORT                        R11 K4 [require]
       49 GETTABLEKS                       R12 R0 K5 ["Packages"]
       51 GETTABLEKS                       R12 R12 K17 ["Dash"]
       53 CALL                             R11 1 1
       54 GETTABLEKS                       R12 R11 K18 ["join"]
       56 GETTABLEKS                       R13 R11 K19 ["map"]
       58 GETIMPORT                        R14 K4 [require]
       60 GETTABLEKS                       R15 R0 K20 ["Src"]
       62 GETTABLEKS                       R15 R15 K21 ["Util"]
       64 GETTABLEKS                       R15 R15 K22 ["bind"]
       66 CALL                             R14 1 1
       67 GETIMPORT                        R15 K4 [require]
       69 GETTABLEKS                       R16 R0 K20 ["Src"]
       71 GETTABLEKS                       R16 R16 K21 ["Util"]
       73 GETTABLEKS                       R16 R16 K23 ["colorFromString"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K4 [require]
       78 GETTABLEKS                       R17 R0 K20 ["Src"]
       80 GETTABLEKS                       R17 R17 K24 ["Renderers"]
       82 GETTABLEKS                       R17 R17 K25 ["SequenceRenderers"]
       84 GETTABLEKS                       R17 R17 K26 ["Keypoint"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K4 [require]
       89 GETTABLEKS                       R18 R0 K20 ["Src"]
       91 GETTABLEKS                       R18 R18 K24 ["Renderers"]
       93 GETTABLEKS                       R18 R18 K27 ["Modal"]
       95 CALL                             R17 1 1
       96 GETIMPORT                        R18 K4 [require]
       98 GETTABLEKS                       R19 R0 K20 ["Src"]
      100 GETTABLEKS                       R19 R19 K24 ["Renderers"]
      102 GETTABLEKS                       R19 R19 K25 ["SequenceRenderers"]
      104 GETTABLEKS                       R19 R19 K28 ["mouseCoordsRelativeToElement"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K4 [require]
      109 GETTABLEKS                       R20 R0 K20 ["Src"]
      111 GETTABLEKS                       R20 R20 K24 ["Renderers"]
      113 GETTABLEKS                       R20 R20 K25 ["SequenceRenderers"]
      115 GETTABLEKS                       R20 R20 K29 ["PreviewButton"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K4 [require]
      120 GETTABLEKS                       R21 R0 K20 ["Src"]
      122 GETTABLEKS                       R21 R21 K24 ["Renderers"]
      124 GETTABLEKS                       R21 R21 K25 ["SequenceRenderers"]
      126 GETTABLEKS                       R21 R21 K30 ["useKeypointSequence"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K4 [require]
      131 GETIMPORT                        R22 K1 [script]
      133 GETTABLEKS                       R22 R22 K31 ["KeypointControls"]
      135 CALL                             R21 1 1
      136 GETIMPORT                        R22 K4 [require]
      138 GETIMPORT                        R23 K1 [script]
      140 GETTABLEKS                       R23 R23 K32 ["KeypointLine"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K4 [require]
      145 GETTABLEKS                       R24 R0 K20 ["Src"]
      147 GETTABLEKS                       R24 R24 K33 ["Flags"]
      149 GETTABLEKS                       R24 R24 K34 ["getFFlagStyleEditorFixKeypointHoverDrag"]
      151 CALL                             R23 1 1
      152 CALL                             R23 0 1
      153 GETIMPORT                        R24 K4 [require]
      155 GETTABLEKS                       R25 R0 K20 ["Src"]
      157 GETTABLEKS                       R25 R25 K35 ["Resources"]
      159 GETTABLEKS                       R25 R25 K36 ["PluginStyles"]
      161 CALL                             R24 1 1
      162 LOADK                            R27 K37 ["Icon16"]
      163 NAMECALL                         R25 R24 K38 ["GetAttribute"]
      165 CALL                             R25 2 1
      166 GETIMPORT                        R26 K4 [require]
      168 GETTABLEKS                       R27 R0 K20 ["Src"]
      170 GETTABLEKS                       R27 R27 K39 ["Types"]
      172 CALL                             R26 1 1
      173 GETIMPORT                        R27 K4 [require]
      175 GETTABLEKS                       R28 R0 K20 ["Src"]
      177 GETTABLEKS                       R28 R28 K24 ["Renderers"]
      179 GETTABLEKS                       R28 R28 K25 ["SequenceRenderers"]
      181 GETTABLEKS                       R28 R28 K39 ["Types"]
      183 CALL                             R27 1 1
      184 GETIMPORT                        R28 K4 [require]
      186 GETTABLEKS                       R29 R0 K20 ["Src"]
      188 GETTABLEKS                       R29 R29 K24 ["Renderers"]
      190 GETTABLEKS                       R29 R29 K40 ["RendererTypes"]
      192 CALL                             R28 1 1
      193 GETIMPORT                        R29 K4 [require]
      195 GETTABLEKS                       R30 R0 K20 ["Src"]
      197 GETTABLEKS                       R30 R30 K33 ["Flags"]
      199 GETTABLEKS                       R30 R30 K41 ["getFFlagStyleEditorFixKeypointHoverOnColorPick"]
      201 CALL                             R29 1 1
      202 CALL                             R29 0 1
      203 DUPCLOSURE                       R30 K42 [PROTO_0]
      204 DUPCLOSURE                       R31 K43 [PROTO_1]
      205 CAPTURE                          VAL R15
      206 DUPCLOSURE                       R32 K44 [PROTO_3]
      207 CAPTURE                          VAL R13
      208 DUPCLOSURE                       R33 K45 [PROTO_6]
      209 CAPTURE                          VAL R13
      210 DUPCLOSURE                       R34 K46 [PROTO_25]
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R20
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R18
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R23
      221 CAPTURE                          VAL R29
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R22
      225 CAPTURE                          VAL R14
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R8
      228 CAPTURE                          VAL R9
      229 CAPTURE                          VAL R19
      230 CAPTURE                          VAL R25
      231 CAPTURE                          VAL R10
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R21
      234 RETURN                           R34 1
