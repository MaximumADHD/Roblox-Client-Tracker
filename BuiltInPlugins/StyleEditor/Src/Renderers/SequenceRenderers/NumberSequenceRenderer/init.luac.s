PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Keypoints"]
        2 LENGTH                           R2 R1
        3 LOADN                            R3 2
        4 JUMPIFNOTLT                      R3 R2 ; [+3]
        6 LOADK                            R2 K1 ["<NumberSequence>"]
        7 RETURN                           R2 1
        8 GETTABLEN                        R2 R1 1
        9 GETTABLEKS                       R2 R2 K2 ["Value"]
       11 GETTABLEN                        R3 R1 2
       12 GETTABLEKS                       R3 R3 K2 ["Value"]
       14 JUMPIFEQ                         R2 R3 ; [+3]
       16 LOADK                            R2 K1 ["<NumberSequence>"]
       17 RETURN                           R2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEN                        R4 R1 1
       20 GETTABLEKS                       R4 R4 K2 ["Value"]
       22 LOADN                            R5 3
       23 CALL                             R3 2 -1
       24 FASTCALL                         TOSTRING ; [+2]
       25 GETIMPORT                        R2 K4 [tostring]
       27 CALL                             R2 -1 1
       28 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [NumberSequenceKeypoint.new]
        2 GETTABLEKS                       R2 R0 K3 ["Time"]
        4 GETTABLEKS                       R3 R0 K4 ["Value"]
        6 GETTABLEKS                       R4 R0 K5 ["Envelope"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R0 K2 [NumberSequence.new]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 DUPCLOSURE                       R3 K3 [PROTO_1]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R2 1
        8 LOADNIL                          R3
        9 RETURN                           R3 1

PROTO_4:
        0 DUPTABLE                         R1 K3 [{"Time", "Value", "Envelope"}]
        1 GETTABLEKS                       R2 R0 K0 ["Time"]
        3 SETTABLEKS                       R2 R1 K0 ["Time"]
        5 GETTABLEKS                       R2 R0 K1 ["Value"]
        7 SETTABLEKS                       R2 R1 K1 ["Value"]
        9 GETTABLEKS                       R2 R0 K2 ["Envelope"]
       11 SETTABLEKS                       R2 R1 K2 ["Envelope"]
       13 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        3 DUPCLOSURE                       R3 K1 [PROTO_4]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R0 K2 [NumberSequence.new]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_7:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+3]
        6 LOADNIL                          R2
        7 LOADK                            R3 K2 ["Error: invalid number"]
        8 RETURN                           R2 2
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R5 R1
       11 GETIMPORT                        R4 K4 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFEQKS                       R4 K5 ["number"] ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       20 LOADK                            R4 K6 ["expecting a number"]
       21 GETIMPORT                        R2 K8 [assert]
       23 CALL                             R2 2 0
       24 LOADN                            R2 0
       25 JUMPIFLT                         R1 R2 ; [+4]
       27 LOADN                            R2 1
       28 JUMPIFNOTLT                      R2 R1 ; [+4]
       30 LOADNIL                          R2
       31 LOADK                            R3 K9 ["Error: number out of range, expecting 0 < num < 1"]
       32 RETURN                           R2 2
       33 GETIMPORT                        R2 K11 [pcall]
       35 NEWCLOSURE                       R3 P0
       36 CAPTURE                          VAL R1
       37 CALL                             R2 1 2
       38 JUMPIF                           R2 ; [+3]
       39 LOADNIL                          R4
       40 LOADK                            R5 K12 ["Error: something went wrong"]
       41 RETURN                           R4 2
       42 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Value"]
        3 JUMPIFNOT                        R0 ; [+37]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["Value"]
       11 GETTABLEKS                       R3 R2 K1 ["Keypoints"]
       13 LENGTH                           R4 R3
       14 LOADN                            R5 2
       15 JUMPIFNOTLT                      R5 R4 ; [+3]
       17 LOADK                            R1 K2 ["<NumberSequence>"]
       18 JUMP                             ; [+21]
       19 GETTABLEN                        R4 R3 1
       20 GETTABLEKS                       R4 R4 K0 ["Value"]
       22 GETTABLEN                        R5 R3 2
       23 GETTABLEKS                       R5 R5 K0 ["Value"]
       25 JUMPIFEQ                         R4 R5 ; [+3]
       27 LOADK                            R1 K2 ["<NumberSequence>"]
       28 JUMP                             ; [+11]
       29 GETUPVAL                         R5 3
       30 GETTABLEN                        R6 R3 1
       31 GETTABLEKS                       R6 R6 K0 ["Value"]
       33 LOADN                            R7 3
       34 CALL                             R5 2 -1
       35 FASTCALL                         TOSTRING ; [+2]
       36 GETIMPORT                        R4 K4 [tostring]
       38 CALL                             R4 -1 1
       39 MOVE                             R1 R4
       40 CALL                             R0 1 0
       41 RETURN                           R0 0

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
       22 LOADK                            R4 K6 ["Failed to create NumberSequence due to invalid keypoints, resetting to default"]
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
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

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
       10 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["select"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_16:
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
       23 DUPTABLE                         R5 K5 [{"Time", "Value"}]
       24 GETTABLEKS                       R6 R2 K6 ["X"]
       26 SETTABLEKS                       R6 R5 K3 ["Time"]
       28 GETTABLEKS                       R7 R2 K8 ["Y"]
       30 SUBRK                            R6 K7 [1] R7
       31 SETTABLEKS                       R6 R5 K4 ["Value"]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K9 ["update"]
       37 MOVE                             R5 R3
       38 CALL                             R4 1 0
       39 GETUPVAL                         R4 4
       40 JUMPIFNOT                        R4 ; [+7]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K10 ["save"]
       44 NEWCLOSURE                       R5 P0
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U6
       47 CALL                             R4 1 0
       48 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+40]
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
       23 DUPTABLE                         R4 K15 [{["Time"], ["Value"], ["Envelope"] = 0}]
       24 GETTABLEKS                       R5 R3 K8 ["X"]
       26 SETTABLEKS                       R5 R4 K11 ["Time"]
       28 GETTABLEKS                       R6 R3 K9 ["Y"]
       30 SUBRK                            R5 K16 [1] R6
       31 SETTABLEKS                       R5 R4 K12 ["Value"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K17 ["add"]
       36 MOVE                             R6 R4
       37 CALL                             R5 1 0
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K18 ["save"]
       41 NEWCLOSURE                       R6 P0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U4
       44 CALL                             R5 1 0
       45 RETURN                           R0 0

PROTO_18:
        0 JUMPIFNOTEQKS                    R0 K0 ["<NumberSequence>"] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+11]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["Value"]
       10 JUMPIFEQ                         R2 R4 ; [+7]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K2 ["OnChanged"]
       15 MOVE                             R5 R2
       16 CALL                             R4 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 2
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K1 ["Value"]
       22 GETTABLEKS                       R7 R6 K3 ["Keypoints"]
       24 LENGTH                           R8 R7
       25 LOADN                            R9 2
       26 JUMPIFNOTLT                      R9 R8 ; [+3]
       28 LOADK                            R5 K0 ["<NumberSequence>"]
       29 JUMP                             ; [+21]
       30 GETTABLEN                        R8 R7 1
       31 GETTABLEKS                       R8 R8 K1 ["Value"]
       33 GETTABLEN                        R9 R7 2
       34 GETTABLEKS                       R9 R9 K1 ["Value"]
       36 JUMPIFEQ                         R8 R9 ; [+3]
       38 LOADK                            R5 K0 ["<NumberSequence>"]
       39 JUMP                             ; [+11]
       40 GETUPVAL                         R9 3
       41 GETTABLEN                        R10 R7 1
       42 GETTABLEKS                       R10 R10 K1 ["Value"]
       44 LOADN                            R11 3
       45 CALL                             R9 2 -1
       46 FASTCALL                         TOSTRING ; [+2]
       47 GETIMPORT                        R8 K5 [tostring]
       49 CALL                             R8 -1 1
       50 MOVE                             R5 R8
       51 CALL                             R4 1 0
       52 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFNOTEQKS                    R0 K0 ["<NumberSequence>"] ; [+5]
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R2
       14 CALL                             R3 1 0
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
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_24:
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
       21 LOADK                            R8 K2 ["<NumberSequence>"]
       22 JUMP                             ; [+21]
       23 GETTABLEN                        R11 R10 1
       24 GETTABLEKS                       R11 R11 K0 ["Value"]
       26 GETTABLEN                        R12 R10 2
       27 GETTABLEKS                       R12 R12 K0 ["Value"]
       29 JUMPIFEQ                         R11 R12 ; [+3]
       31 LOADK                            R8 K2 ["<NumberSequence>"]
       32 JUMP                             ; [+11]
       33 GETUPVAL                         R12 2
       34 GETTABLEN                        R13 R10 1
       35 GETTABLEKS                       R13 R13 K0 ["Value"]
       37 LOADN                            R14 3
       38 CALL                             R12 2 -1
       39 FASTCALL                         TOSTRING ; [+2]
       40 GETIMPORT                        R11 K4 [tostring]
       42 CALL                             R11 -1 1
       43 MOVE                             R8 R11
       44 CALL                             R7 1 2
       45 GETUPVAL                         R9 1
       46 LOADNIL                          R10
       47 CALL                             R9 1 2
       48 GETUPVAL                         R11 1
       49 GETIMPORT                        R12 K7 [Vector2.one]
       51 CALL                             R11 1 2
       52 GETUPVAL                         R13 3
       53 GETTABLEKS                       R15 R0 K0 ["Value"]
       55 GETUPVAL                         R16 4
       56 GETTABLEKS                       R17 R15 K1 ["Keypoints"]
       58 DUPCLOSURE                       R18 K8 [PROTO_4]
       59 CALL                             R16 2 1
       60 MOVE                             R14 R16
       61 CALL                             R13 1 1
       62 GETUPVAL                         R14 5
       63 NEWCLOSURE                       R15 P1
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R8
       67 CAPTURE                          UPVAL U2
       68 NEWTABLE                         R16 0 3
       70 GETTABLEKS                       R17 R0 K0 ["Value"]
       72 MOVE                             R18 R10
       73 MOVE                             R19 R8
       74 SETLIST                          R16 R17 3 [1]
       76 CALL                             R14 2 0
       77 NEWCLOSURE                       R14 P2
       78 CAPTURE                          VAL R13
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R0
       81 NEWCLOSURE                       R15 P3
       82 CAPTURE                          VAL R6
       83 NEWCLOSURE                       R16 P4
       84 CAPTURE                          VAL R13
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R6
       88 NEWCLOSURE                       R17 P5
       89 CAPTURE                          VAL R13
       90 CAPTURE                          UPVAL U4
       91 CAPTURE                          VAL R0
       92 NEWCLOSURE                       R18 P6
       93 CAPTURE                          VAL R13
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          VAL R0
       96 NEWCLOSURE                       R19 P7
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R13
      100 NEWCLOSURE                       R20 P8
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R13
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          UPVAL U8
      105 CAPTURE                          UPVAL U9
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          VAL R0
      108 NEWCLOSURE                       R21 P9
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R13
      112 CAPTURE                          UPVAL U4
      113 CAPTURE                          VAL R0
      114 NEWCLOSURE                       R22 P10
      115 CAPTURE                          UPVAL U10
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R8
      118 CAPTURE                          UPVAL U2
      119 NEWCLOSURE                       R23 P11
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R10
      122 CAPTURE                          UPVAL U10
      123 GETUPVAL                         R25 6
      124 JUMPIFNOT                        R25 ; [+10]
      125 GETUPVAL                         R24 11
      126 NEWCLOSURE                       R25 P12
      127 CAPTURE                          VAL R4
      128 NEWTABLE                         R26 0 1
      130 MOVE                             R27 R4
      131 SETLIST                          R26 R27 1 [1]
      133 CALL                             R24 2 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R24
      136 GETUPVAL                         R26 6
      137 JUMPIFNOT                        R26 ; [+14]
      138 GETUPVAL                         R25 11
      139 NEWCLOSURE                       R26 P13
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R13
      142 CAPTURE                          UPVAL U4
      143 CAPTURE                          VAL R0
      144 NEWTABLE                         R27 0 2
      146 MOVE                             R28 R4
      147 MOVE                             R29 R14
      148 SETLIST                          R27 R28 2 [1]
      150 CALL                             R25 2 1
      151 JUMP                             ; [+4]
      152 NEWCLOSURE                       R25 P14
      153 CAPTURE                          VAL R13
      154 CAPTURE                          UPVAL U4
      155 CAPTURE                          VAL R0
      156 NEWTABLE                         R26 0 0
      158 GETTABLEKS                       R27 R13 K9 ["keypoints"]
      160 LOADNIL                          R28
      161 LOADNIL                          R29
      162 FORGPREP                         R27
      163 LOADK                            R33 K10 ["Keypoint_"]
      164 MOVE                             R34 R30
      165 CONCAT                           R32 R33 R34
      166 GETTABLEKS                       R34 R13 K11 ["selectedIndex"]
      168 JUMPIFEQ                         R30 R34 ; [+2]
      170 LOADB                            R33 0 +1
      171 LOADB                            R33 1
      172 GETUPVAL                         R34 12
      173 GETTABLEKS                       R34 R34 K12 ["createElement"]
      175 GETUPVAL                         R35 13
      176 DUPTABLE                         R36 K21 [{["Position"], ["Selected"], ["Tag"] = "NumberSequenceKeypoint", ["OnMoved"], ["OnHoverStart"], ["OnDragStart"], ["OnDragEnd"]}]
      177 GETIMPORT                        R37 K23 [Vector2.new]
      179 GETTABLEKS                       R38 R31 K24 ["Time"]
      181 GETTABLEKS                       R39 R31 K0 ["Value"]
      183 CALL                             R37 2 1
      184 SETTABLEKS                       R37 R36 K13 ["Position"]
      186 SETTABLEKS                       R33 R36 K14 ["Selected"]
      188 SETTABLEKS                       R20 R36 K17 ["OnMoved"]
      190 GETUPVAL                         R37 14
      191 MOVE                             R38 R19
      192 NEWTABLE                         R39 0 1
      194 MOVE                             R40 R30
      195 SETLIST                          R39 R40 1 [1]
      197 CALL                             R37 2 1
      198 SETTABLEKS                       R37 R36 K18 ["OnHoverStart"]
      200 SETTABLEKS                       R24 R36 K19 ["OnDragStart"]
      202 SETTABLEKS                       R25 R36 K20 ["OnDragEnd"]
      204 CALL                             R34 2 1
      205 SETTABLE                         R34 R26 R32
      206 FORGLOOP                         R27 2 ; [-44]
      208 LOADN                            R29 1
      209 GETTABLEKS                       R31 R13 K9 ["keypoints"]
      211 LENGTH                           R30 R31
      212 SUBK                             R27 R30 K25 [1]
      213 LOADN                            R28 1
      214 FORNPREP                         R27
      215 GETTABLEKS                       R31 R13 K9 ["keypoints"]
      217 GETTABLE                         R30 R31 R29
      218 GETTABLEKS                       R32 R13 K9 ["keypoints"]
      220 ADDK                             R33 R29 K25 [1]
      221 GETTABLE                         R31 R32 R33
      222 GETTABLEKS                       R33 R13 K11 ["selectedIndex"]
      224 JUMPIFEQ                         R33 R29 ; [+2]
      226 LOADB                            R32 0 +1
      227 LOADB                            R32 1
      228 GETTABLEKS                       R34 R13 K11 ["selectedIndex"]
      230 ADDK                             R35 R29 K25 [1]
      231 JUMPIFEQ                         R34 R35 ; [+2]
      233 LOADB                            R33 0 +1
      234 LOADB                            R33 1
      235 LOADK                            R35 K26 ["SequenceLine_"]
      236 MOVE                             R36 R29
      237 LOADK                            R37 K27 ["_"]
      238 ADDK                             R38 R29 K25 [1]
      239 CONCAT                           R34 R35 R38
      240 GETUPVAL                         R35 12
      241 GETTABLEKS                       R35 R35 K12 ["createElement"]
      243 GETUPVAL                         R36 15
      244 DUPTABLE                         R37 K33 [{"StartKeypoint", "EndKeypoint", "PlotAbsoluteSize", "StartKeypointSelected", "EndKeypointSelected"}]
      245 SETTABLEKS                       R30 R37 K28 ["StartKeypoint"]
      247 SETTABLEKS                       R31 R37 K29 ["EndKeypoint"]
      249 SETTABLEKS                       R11 R37 K30 ["PlotAbsoluteSize"]
      251 SETTABLEKS                       R32 R37 K31 ["StartKeypointSelected"]
      253 SETTABLEKS                       R33 R37 K32 ["EndKeypointSelected"]
      255 CALL                             R35 2 1
      256 SETTABLE                         R35 R26 R34
      257 FORNLOOP                         R27
      258 JUMPIFNOTEQKNIL                  R9 ; [+2]
      260 LOADB                            R27 0 +1
      261 LOADB                            R27 1
      262 GETUPVAL                         R28 12
      263 GETTABLEKS                       R28 R28 K12 ["createElement"]
      265 GETUPVAL                         R29 16
      266 NEWTABLE                         R30 1 0
      268 GETUPVAL                         R31 12
      269 GETTABLEKS                       R31 R31 K15 ["Tag"]
      271 LOADK                            R32 K34 ["X-Fill"]
      272 SETTABLE                         R32 R30 R31
      273 DUPTABLE                         R31 K38 [{"NumberSequenceInput", "Tooltip", "NumberSequenceModal"}]
      274 GETUPVAL                         R32 12
      275 GETTABLEKS                       R32 R32 K12 ["createElement"]
      277 GETUPVAL                         R33 17
      278 NEWTABLE                         R34 8 0
      280 GETTABLEKS                       R35 R0 K39 ["Disabled"]
      282 SETTABLEKS                       R35 R34 K39 ["Disabled"]
      284 GETUPVAL                         R35 18
      285 SETTABLEKS                       R35 R34 K40 ["LeadingComponent"]
      287 DUPTABLE                         R35 K46 [{"OnClick", "ForwardRef", "Color", "Transparency", "Size"}]
      288 SETTABLEKS                       R15 R35 K41 ["OnClick"]
      290 SETTABLEKS                       R2 R35 K42 ["ForwardRef"]
      292 GETUPVAL                         R36 19
      293 SETTABLEKS                       R36 R35 K43 ["Color"]
      295 GETTABLEKS                       R36 R0 K0 ["Value"]
      297 SETTABLEKS                       R36 R35 K44 ["Transparency"]
      299 GETUPVAL                         R36 20
      300 SETTABLEKS                       R36 R35 K45 ["Size"]
      302 SETTABLEKS                       R35 R34 K47 ["LeadingComponentProps"]
      304 SETTABLEKS                       R22 R34 K48 ["OnFocusLost"]
      306 SETTABLEKS                       R23 R34 K49 ["OnTextChanged"]
      308 GETTABLEKS                       R36 R0 K50 ["AutomaticSize"]
      310 JUMPIFNOT                        R36 ; [+10]
      311 GETIMPORT                        R35 K52 [UDim2.new]
      313 LOADN                            R36 1
      314 LOADN                            R37 0
      315 LOADN                            R38 0
      316 GETTABLEKS                       R40 R0 K54 ["MinimumHeight"]
      318 ORK                              R39 R40 K53 [24]
      319 CALL                             R35 4 1
      320 JUMP                             ; [+5]
      321 GETIMPORT                        R35 K56 [UDim2.fromScale]
      323 LOADN                            R36 1
      324 LOADN                            R37 1
      325 CALL                             R35 2 1
      326 SETTABLEKS                       R35 R34 K45 ["Size"]
      328 SETTABLEKS                       R7 R34 K57 ["Text"]
      330 GETUPVAL                         R35 12
      331 GETTABLEKS                       R35 R35 K15 ["Tag"]
      333 JUMPIFNOT                        R27 ; [+2]
      334 LOADK                            R36 K58 ["PropertyCellError"]
      335 JUMP                             ; [+1]
      336 LOADNIL                          R36
      337 SETTABLE                         R36 R34 R35
      338 CALL                             R32 2 1
      339 SETTABLEKS                       R32 R31 K35 ["NumberSequenceInput"]
      341 GETUPVAL                         R32 12
      342 GETTABLEKS                       R32 R32 K12 ["createElement"]
      344 GETUPVAL                         R33 21
      345 DUPTABLE                         R34 K60 [{"Enabled", "Text"}]
      346 SETTABLEKS                       R27 R34 K59 ["Enabled"]
      348 ORK                              R35 R9 K61 [""]
      349 SETTABLEKS                       R35 R34 K57 ["Text"]
      351 CALL                             R32 2 1
      352 SETTABLEKS                       R32 R31 K36 ["Tooltip"]
      354 GETUPVAL                         R32 12
      355 GETTABLEKS                       R32 R32 K12 ["createElement"]
      357 GETUPVAL                         R33 22
      358 DUPTABLE                         R34 K66 [{"Open", "MaxSize", "MinSize", "ObjectRef", "OnFocusLost"}]
      359 SETTABLEKS                       R5 R34 K62 ["Open"]
      361 GETIMPORT                        R35 K23 [Vector2.new]
      363 LOADN                            R36 800
      364 LOADN                            R37 275
      365 CALL                             R35 2 1
      366 SETTABLEKS                       R35 R34 K63 ["MaxSize"]
      368 GETIMPORT                        R35 K23 [Vector2.new]
      370 LOADN                            R36 600
      371 LOADN                            R37 225
      372 CALL                             R35 2 1
      373 SETTABLEKS                       R35 R34 K64 ["MinSize"]
      375 SETTABLEKS                       R2 R34 K65 ["ObjectRef"]
      377 SETTABLEKS                       R16 R34 K48 ["OnFocusLost"]
      379 DUPTABLE                         R35 K68 [{"Container"}]
      380 GETUPVAL                         R36 12
      381 GETTABLEKS                       R36 R36 K12 ["createElement"]
      383 GETUPVAL                         R37 16
      384 NEWTABLE                         R38 1 0
      386 GETUPVAL                         R39 12
      387 GETTABLEKS                       R39 R39 K15 ["Tag"]
      389 LOADK                            R40 K69 ["X-Pad X-ColumnM X-FitY"]
      390 SETTABLE                         R40 R38 R39
      391 DUPTABLE                         R39 K72 [{"Plot", "KeypointControls"}]
      392 GETUPVAL                         R40 12
      393 GETTABLEKS                       R40 R40 K12 ["createElement"]
      395 GETUPVAL                         R41 16
      396 NEWTABLE                         R42 8 0
      398 LOADB                            R43 1
      399 SETTABLEKS                       R43 R42 K73 ["Active"]
      401 LOADN                            R43 1
      402 SETTABLEKS                       R43 R42 K74 ["LayoutOrder"]
      404 GETIMPORT                        R43 K52 [UDim2.new]
      406 LOADN                            R44 1
      407 LOADN                            R45 0
      408 LOADN                            R46 0
      409 LOADN                            R47 200
      410 CALL                             R43 4 1
      411 SETTABLEKS                       R43 R42 K45 ["Size"]
      413 SETTABLEKS                       R1 R42 K42 ["ForwardRef"]
      415 SETTABLEKS                       R21 R42 K41 ["OnClick"]
      417 GETUPVAL                         R43 12
      418 GETTABLEKS                       R43 R43 K15 ["Tag"]
      420 LOADK                            R44 K75 ["Contrast X-Clip"]
      421 SETTABLE                         R44 R42 R43
      422 GETUPVAL                         R43 12
      423 GETTABLEKS                       R43 R43 K76 ["Change"]
      425 GETTABLEKS                       R43 R43 K77 ["AbsoluteSize"]
      427 NEWCLOSURE                       R44 P15
      428 CAPTURE                          VAL R12
      429 SETTABLE                         R44 R42 R43
      430 MOVE                             R43 R26
      431 CALL                             R40 3 1
      432 SETTABLEKS                       R40 R39 K70 ["Plot"]
      434 GETUPVAL                         R40 12
      435 GETTABLEKS                       R40 R40 K12 ["createElement"]
      437 GETUPVAL                         R41 23
      438 DUPTABLE                         R42 K84 [{["Keypoint"], ["IsKeypointFixed"], ["OnEdit"], ["OnDelete"], ["OnSave"], ["LayoutOrder"] = 2}]
      439 GETTABLEKS                       R43 R13 K85 ["getSelectedKeypoint"]
      441 CALL                             R43 0 1
      442 SETTABLEKS                       R43 R42 K78 ["Keypoint"]
      444 GETTABLEKS                       R43 R13 K86 ["isFixedKeypointSelected"]
      446 CALL                             R43 0 1
      447 SETTABLEKS                       R43 R42 K79 ["IsKeypointFixed"]
      449 SETTABLEKS                       R18 R42 K80 ["OnEdit"]
      451 SETTABLEKS                       R17 R42 K81 ["OnDelete"]
      453 SETTABLEKS                       R16 R42 K82 ["OnSave"]
      455 CALL                             R40 2 1
      456 SETTABLEKS                       R40 R39 K71 ["KeypointControls"]
      458 CALL                             R36 3 1
      459 SETTABLEKS                       R36 R35 K67 ["Container"]
      461 CALL                             R32 3 1
      462 SETTABLEKS                       R32 R31 K37 ["NumberSequenceModal"]
      464 CALL                             R28 3 -1
      465 RETURN                           R28 -1

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
       24 GETTABLEKS                       R5 R1 K10 ["useCallback"]
       26 GETIMPORT                        R6 K4 [require]
       28 GETTABLEKS                       R7 R0 K5 ["Packages"]
       30 GETTABLEKS                       R7 R7 K11 ["Framework"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R7 R6 K12 ["UI"]
       35 GETTABLEKS                       R7 R7 K13 ["Pane"]
       37 GETTABLEKS                       R8 R6 K12 ["UI"]
       39 GETTABLEKS                       R8 R8 K14 ["TextInput"]
       41 GETTABLEKS                       R9 R6 K12 ["UI"]
       43 GETTABLEKS                       R9 R9 K15 ["Tooltip"]
       45 GETIMPORT                        R10 K4 [require]
       47 GETTABLEKS                       R11 R0 K5 ["Packages"]
       49 GETTABLEKS                       R11 R11 K16 ["Dash"]
       51 CALL                             R10 1 1
       52 GETTABLEKS                       R11 R10 K17 ["join"]
       54 GETTABLEKS                       R12 R10 K18 ["map"]
       56 GETIMPORT                        R13 K4 [require]
       58 GETTABLEKS                       R14 R0 K19 ["Src"]
       60 GETTABLEKS                       R14 R14 K20 ["Renderers"]
       62 GETTABLEKS                       R14 R14 K21 ["SequenceRenderers"]
       64 GETTABLEKS                       R14 R14 K22 ["PreviewButton"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K4 [require]
       69 GETIMPORT                        R15 K1 [script]
       71 GETTABLEKS                       R15 R15 K23 ["SequenceLine"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K4 [require]
       76 GETIMPORT                        R16 K1 [script]
       78 GETTABLEKS                       R16 R16 K24 ["KeypointControls"]
       80 CALL                             R15 1 1
       81 GETIMPORT                        R16 K4 [require]
       83 GETTABLEKS                       R17 R0 K19 ["Src"]
       85 GETTABLEKS                       R17 R17 K25 ["Util"]
       87 GETTABLEKS                       R17 R17 K26 ["bind"]
       89 CALL                             R16 1 1
       90 GETIMPORT                        R17 K4 [require]
       92 GETTABLEKS                       R18 R0 K19 ["Src"]
       94 GETTABLEKS                       R18 R18 K20 ["Renderers"]
       96 GETTABLEKS                       R18 R18 K21 ["SequenceRenderers"]
       98 GETTABLEKS                       R18 R18 K27 ["mouseCoordsRelativeToElement"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K4 [require]
      103 GETTABLEKS                       R19 R0 K19 ["Src"]
      105 GETTABLEKS                       R19 R19 K20 ["Renderers"]
      107 GETTABLEKS                       R19 R19 K21 ["SequenceRenderers"]
      109 GETTABLEKS                       R19 R19 K28 ["useKeypointSequence"]
      111 CALL                             R18 1 1
      112 GETIMPORT                        R19 K4 [require]
      114 GETTABLEKS                       R20 R0 K19 ["Src"]
      116 GETTABLEKS                       R20 R20 K20 ["Renderers"]
      118 GETTABLEKS                       R20 R20 K21 ["SequenceRenderers"]
      120 GETTABLEKS                       R20 R20 K29 ["Keypoint"]
      122 CALL                             R19 1 1
      123 GETIMPORT                        R20 K4 [require]
      125 GETTABLEKS                       R21 R0 K19 ["Src"]
      127 GETTABLEKS                       R21 R21 K20 ["Renderers"]
      129 GETTABLEKS                       R21 R21 K30 ["Modal"]
      131 CALL                             R20 1 1
      132 GETIMPORT                        R21 K4 [require]
      134 GETTABLEKS                       R22 R0 K19 ["Src"]
      136 GETTABLEKS                       R22 R22 K25 ["Util"]
      138 GETTABLEKS                       R22 R22 K31 ["roundDecimal"]
      140 CALL                             R21 1 1
      141 GETIMPORT                        R22 K4 [require]
      143 GETTABLEKS                       R23 R0 K19 ["Src"]
      145 GETTABLEKS                       R23 R23 K32 ["Resources"]
      147 GETTABLEKS                       R23 R23 K33 ["PluginStyles"]
      149 CALL                             R22 1 1
      150 GETIMPORT                        R23 K4 [require]
      152 GETTABLEKS                       R24 R0 K19 ["Src"]
      154 GETTABLEKS                       R24 R24 K34 ["Flags"]
      156 GETTABLEKS                       R24 R24 K35 ["getFFlagStyleEditorNumberSequenceUpdate"]
      158 CALL                             R23 1 1
      159 CALL                             R23 0 1
      160 GETIMPORT                        R24 K4 [require]
      162 GETTABLEKS                       R25 R0 K19 ["Src"]
      164 GETTABLEKS                       R25 R25 K34 ["Flags"]
      166 GETTABLEKS                       R25 R25 K36 ["getFFlagStyleEditorFixKeypointHoverDrag"]
      168 CALL                             R24 1 1
      169 CALL                             R24 0 1
      170 GETIMPORT                        R25 K4 [require]
      172 GETTABLEKS                       R26 R0 K19 ["Src"]
      174 GETTABLEKS                       R26 R26 K37 ["Types"]
      176 CALL                             R25 1 1
      177 GETIMPORT                        R26 K4 [require]
      179 GETTABLEKS                       R27 R0 K19 ["Src"]
      181 GETTABLEKS                       R27 R27 K20 ["Renderers"]
      183 GETTABLEKS                       R27 R27 K38 ["RendererTypes"]
      185 CALL                             R26 1 1
      186 GETIMPORT                        R27 K4 [require]
      188 GETTABLEKS                       R28 R0 K19 ["Src"]
      190 GETTABLEKS                       R28 R28 K20 ["Renderers"]
      192 GETTABLEKS                       R28 R28 K21 ["SequenceRenderers"]
      194 GETTABLEKS                       R28 R28 K37 ["Types"]
      196 CALL                             R27 1 1
      197 GETIMPORT                        R28 K41 [ColorSequence.new]
      199 GETIMPORT                        R29 K44 [Color3.fromRGB]
      201 LOADN                            R30 255
      202 LOADN                            R31 255
      203 LOADN                            R32 255
      204 CALL                             R29 3 -1
      205 CALL                             R28 -1 1
      206 LOADK                            R31 K45 ["Icon16"]
      207 NAMECALL                         R29 R22 K46 ["GetAttribute"]
      209 CALL                             R29 2 1
      210 DUPCLOSURE                       R30 K47 [PROTO_0]
      211 CAPTURE                          VAL R21
      212 DUPCLOSURE                       R31 K48 [PROTO_3]
      213 CAPTURE                          VAL R12
      214 DUPCLOSURE                       R32 K49 [PROTO_5]
      215 CAPTURE                          VAL R12
      216 DUPCLOSURE                       R33 K50 [PROTO_7]
      217 DUPCLOSURE                       R34 K51 [PROTO_24]
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R21
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R4
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R17
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R23
      228 CAPTURE                          VAL R33
      229 CAPTURE                          VAL R5
      230 CAPTURE                          VAL R1
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R14
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R8
      236 CAPTURE                          VAL R13
      237 CAPTURE                          VAL R28
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R20
      241 CAPTURE                          VAL R15
      242 RETURN                           R34 1
