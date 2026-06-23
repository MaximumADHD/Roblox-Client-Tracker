PROTO_0:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["pendingNetworkPosition"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETTABLEKS                       R3 R0 K1 ["position"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R4 R1 K2 ["delta"]
       13 JUMPIF                           R4 ; [+2]
       14 GETIMPORT                        R4 K5 [Vector2.zero]
       16 JUMPIFNOT                        R2 ; [+13]
       17 GETUPVAL                         R6 0
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+6]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K6 ["isValidVector2"]
       23 MOVE                             R6 R2
       24 CALL                             R5 1 1
       25 JUMP                             ; [+1]
       26 LOADB                            R5 1
       27 JUMPIFNOT                        R5 ; [+2]
       28 ADD                              R5 R2 R4
       29 RETURN                           R5 1
       30 JUMPIFNOT                        R3 ; [+13]
       31 GETUPVAL                         R6 0
       32 CALL                             R6 0 1
       33 JUMPIFNOT                        R6 ; [+6]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K6 ["isValidVector2"]
       37 MOVE                             R6 R3
       38 CALL                             R5 1 1
       39 JUMP                             ; [+1]
       40 LOADB                            R5 1
       41 JUMPIFNOT                        R5 ; [+2]
       42 ADD                              R5 R3 R4
       43 RETURN                           R5 1
       44 LOADNIL                          R5
       45 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R1
        8 MOVE                             R5 R2
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observe"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["observe"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["Experimental"]
       15 GETTABLEKS                       R3 R3 K3 ["createComputed"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U3
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 LOADK                            R2 K1 ["global"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R3 R1 K2 ["sourcePinSide"]
       11 JUMPIFNOTEQKS                    R3 K3 ["Input"] ; [+3]
       13 LOADK                            R2 K4 ["Output"]
       14 JUMP                             ; [+1]
       15 LOADK                            R2 K3 ["Input"]
       16 GETTABLEKS                       R3 R1 K5 ["sourcePinDataType"]
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 LOADK                            R6 K6 [∞]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R7 R7 K7 ["getMap"]
       24 CALL                             R7 0 3
       25 FORGPREP                         R7
       26 GETTABLEKS                       R12 R11 K8 ["pinSide"]
       28 JUMPIFNOTEQ                      R12 R2 ; [+28]
       30 GETTABLEKS                       R12 R11 K9 ["pinDataType"]
       32 JUMPIFNOTEQ                      R12 R3 ; [+24]
       34 GETUPVAL                         R12 2
       35 GETTABLEKS                       R13 R11 K10 ["pinNodeId"]
       37 CALL                             R12 1 1
       38 LOADB                            R13 0
       39 CALL                             R12 1 1
       40 JUMPIFNOT                        R12 ; [+16]
       41 GETTABLEKS                       R14 R11 K11 ["pinOffset"]
       43 ADD                              R13 R12 R14
       44 SUB                              R14 R0 R13
       45 GETTABLEKS                       R14 R14 K12 ["Magnitude"]
       47 JUMPIFNOTLT                      R14 R6 ; [+9]
       49 GETUPVAL                         R15 3
       50 GETTABLEKS                       R15 R15 K13 ["SNAP_DISTANCE"]
       52 JUMPIFNOTLT                      R14 R15 ; [+4]
       54 MOVE                             R6 R14
       55 MOVE                             R4 R11
       56 MOVE                             R5 R13
       57 FORGLOOP                         R7 2 ; [-32]
       59 RETURN                           R4 2

PROTO_4:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+14]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOTEQKS                    R2 K0 ["Parameter"] ; [+3]
        8 GETUPVAL                         R0 2
        9 JUMP                             ; [+1]
       10 LOADNIL                          R0
       11 GETUPVAL                         R2 3
       12 GETUPVAL                         R3 4
       13 GETUPVAL                         R4 5
       14 GETUPVAL                         R5 6
       15 MOVE                             R6 R0
       16 CALL                             R2 4 1
       17 MOVE                             R1 R2
       18 JUMP                             ; [+6]
       19 GETUPVAL                         R2 3
       20 GETUPVAL                         R3 4
       21 GETUPVAL                         R4 5
       22 GETUPVAL                         R5 6
       23 CALL                             R2 3 1
       24 MOVE                             R1 R2
       25 GETIMPORT                        R2 K3 [table.freeze]
       27 DUPTABLE                         R3 K10 [{"sourcePinNodeId", "sourcePinName", "sourcePinDataType", "sourcePinSide", "sourcePinValue", "sourcePinDynamicIndex"}]
       28 GETUPVAL                         R4 4
       29 SETTABLEKS                       R4 R3 K4 ["sourcePinNodeId"]
       31 GETUPVAL                         R4 6
       32 SETTABLEKS                       R4 R3 K5 ["sourcePinName"]
       34 GETUPVAL                         R4 1
       35 SETTABLEKS                       R4 R3 K6 ["sourcePinDataType"]
       37 GETUPVAL                         R4 5
       38 SETTABLEKS                       R4 R3 K7 ["sourcePinSide"]
       40 GETUPVAL                         R4 7
       41 SETTABLEKS                       R4 R3 K8 ["sourcePinValue"]
       43 GETUPVAL                         R5 0
       44 CALL                             R5 0 1
       45 JUMPIFNOT                        R5 ; [+2]
       46 GETUPVAL                         R4 2
       47 JUMP                             ; [+1]
       48 LOADNIL                          R4
       49 SETTABLEKS                       R4 R3 K9 ["sourcePinDynamicIndex"]
       51 CALL                             R2 1 1
       52 GETUPVAL                         R3 8
       53 GETTABLEKS                       R3 R3 K11 ["setMap"]
       55 NEWTABLE                         R4 2 0
       57 SETTABLEKS                       R2 R4 K12 ["global"]
       59 SETTABLE                         R2 R4 R1
       60 CALL                             R3 1 0
       61 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["current"]
        3 JUMPIFEQKNIL                     R7 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R7 1
        7 CALL                             R7 0 1
        8 JUMPIFNOT                        R7 ; [+22]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R7 R7 K1 ["DEFAULT_PIN_DATA_TYPE"]
       12 JUMPIFNOTEQ                      R2 R7 ; [+18]
       14 JUMPIFNOTEQKS                    R3 K2 ["Output"] ; [+8]
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R7 R7 K3 ["removeNodeOutputConnectionAsync"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 CALL                             R7 2 0
       22 JUMP                             ; [+8]
       23 JUMPIFNOTEQKS                    R3 K4 ["Input"] ; [+7]
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K5 ["removeNodeInputConnectionAsync"]
       28 MOVE                             R8 R0
       29 MOVE                             R9 R1
       30 CALL                             R7 2 0
       31 GETUPVAL                         R7 0
       32 DUPTABLE                         R8 K9 [{"startPosition", "dragState", "startDragging"}]
       33 SETTABLEKS                       R6 R8 K6 ["startPosition"]
       35 LOADK                            R9 K10 ["undecided"]
       36 SETTABLEKS                       R9 R8 K7 ["dragState"]
       38 NEWCLOSURE                       R9 P0
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          UPVAL U6
       48 SETTABLEKS                       R9 R8 K8 ["startDragging"]
       50 SETTABLEKS                       R8 R7 K0 ["current"]
       52 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K1 ["dragState"]
        8 JUMPIFNOTEQKS                    R2 K2 ["undecided"] ; [+36]
       10 GETTABLEKS                       R4 R0 K3 ["X"]
       12 GETTABLEKS                       R5 R1 K4 ["startPosition"]
       14 GETTABLEKS                       R5 R5 K3 ["X"]
       16 SUB                              R3 R4 R5
       17 FASTCALL1                        MATH_ABS R3 ; [+2]
       18 GETIMPORT                        R2 K7 [math.abs]
       20 CALL                             R2 1 1
       21 LOADN                            R3 3
       22 JUMPIFNOTLE                      R2 R3 ; [+16]
       24 GETTABLEKS                       R4 R0 K8 ["Y"]
       26 GETTABLEKS                       R5 R1 K4 ["startPosition"]
       28 GETTABLEKS                       R5 R5 K8 ["Y"]
       30 SUB                              R3 R4 R5
       31 FASTCALL1                        MATH_ABS R3 ; [+2]
       32 GETIMPORT                        R2 K7 [math.abs]
       34 CALL                             R2 1 1
       35 LOADN                            R3 3
       36 JUMPIFNOTLE                      R2 R3 ; [+2]
       38 RETURN                           R0 0
       39 LOADK                            R2 K9 ["dragging"]
       40 SETTABLEKS                       R2 R1 K1 ["dragState"]
       42 GETTABLEKS                       R2 R1 K10 ["startDragging"]
       44 CALL                             R2 0 0
       45 GETUPVAL                         R2 1
       46 GETTABLEKS                       R2 R2 K11 ["get"]
       48 LOADK                            R3 K12 ["global"]
       49 CALL                             R2 1 1
       50 JUMPIFNOTEQKNIL                  R2 ; [+2]
       52 RETURN                           R0 0
       53 LOADNIL                          R3
       54 GETUPVAL                         R4 2
       55 CALL                             R4 0 1
       56 JUMPIFNOT                        R4 ; [+19]
       57 GETTABLEKS                       R5 R2 K13 ["sourcePinDataType"]
       59 JUMPIFNOTEQKS                    R5 K14 ["Parameter"] ; [+4]
       61 GETTABLEKS                       R4 R2 K15 ["sourcePinDynamicIndex"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R4
       65 GETUPVAL                         R5 3
       66 GETTABLEKS                       R6 R2 K16 ["sourcePinNodeId"]
       68 GETTABLEKS                       R7 R2 K17 ["sourcePinSide"]
       70 GETTABLEKS                       R8 R2 K18 ["sourcePinName"]
       72 MOVE                             R9 R4
       73 CALL                             R5 4 1
       74 MOVE                             R3 R5
       75 JUMP                             ; [+9]
       76 GETUPVAL                         R4 3
       77 GETTABLEKS                       R5 R2 K16 ["sourcePinNodeId"]
       79 GETTABLEKS                       R6 R2 K17 ["sourcePinSide"]
       81 GETTABLEKS                       R7 R2 K18 ["sourcePinName"]
       83 CALL                             R4 3 1
       84 MOVE                             R3 R4
       85 GETUPVAL                         R4 4
       86 GETTABLEKS                       R4 R4 K19 ["absToPlot"]
       88 MOVE                             R5 R0
       89 CALL                             R4 1 1
       90 GETUPVAL                         R5 5
       91 MOVE                             R6 R4
       92 CALL                             R5 1 2
       93 JUMPIFNOT                        R5 ; [+62]
       94 JUMPIFNOT                        R6 ; [+61]
       95 GETIMPORT                        R7 K22 [table.clone]
       97 MOVE                             R8 R2
       98 CALL                             R7 1 1
       99 GETTABLEKS                       R8 R5 K23 ["pinName"]
      101 SETTABLEKS                       R8 R7 K24 ["targetPinName"]
      103 SETTABLEKS                       R6 R7 K25 ["targetPinPosition"]
      105 GETTABLEKS                       R8 R5 K26 ["pinNodeId"]
      107 SETTABLEKS                       R8 R7 K27 ["targetPinNodeId"]
      109 GETTABLEKS                       R8 R5 K28 ["pinDynamicIndex"]
      111 SETTABLEKS                       R8 R7 K29 ["targetPinDynamicIndex"]
      113 LOADNIL                          R8
      114 GETUPVAL                         R9 2
      115 CALL                             R9 0 1
      116 JUMPIFNOT                        R9 ; [+19]
      117 GETTABLEKS                       R10 R5 K30 ["pinDataType"]
      119 JUMPIFNOTEQKS                    R10 K14 ["Parameter"] ; [+4]
      121 GETTABLEKS                       R9 R5 K28 ["pinDynamicIndex"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R9
      125 GETUPVAL                         R10 3
      126 GETTABLEKS                       R11 R5 K26 ["pinNodeId"]
      128 GETTABLEKS                       R12 R5 K31 ["pinSide"]
      130 GETTABLEKS                       R13 R5 K23 ["pinName"]
      132 MOVE                             R14 R9
      133 CALL                             R10 4 1
      134 MOVE                             R8 R10
      135 JUMP                             ; [+9]
      136 GETUPVAL                         R9 3
      137 GETTABLEKS                       R10 R5 K26 ["pinNodeId"]
      139 GETTABLEKS                       R11 R5 K31 ["pinSide"]
      141 GETTABLEKS                       R12 R5 K23 ["pinName"]
      143 CALL                             R9 3 1
      144 MOVE                             R8 R9
      145 GETUPVAL                         R9 1
      146 GETTABLEKS                       R9 R9 K32 ["setMap"]
      148 NEWTABLE                         R10 4 0
      150 SETTABLEKS                       R7 R10 K12 ["global"]
      152 SETTABLE                         R7 R10 R3
      153 SETTABLE                         R7 R10 R8
      154 CALL                             R9 1 0
      155 RETURN                           R0 0
      156 GETIMPORT                        R7 K22 [table.clone]
      158 MOVE                             R8 R2
      159 CALL                             R7 1 1
      160 LOADNIL                          R8
      161 SETTABLEKS                       R8 R7 K24 ["targetPinName"]
      163 SETTABLEKS                       R4 R7 K25 ["targetPinPosition"]
      165 LOADNIL                          R8
      166 SETTABLEKS                       R8 R7 K27 ["targetPinNodeId"]
      168 GETUPVAL                         R8 1
      169 GETTABLEKS                       R8 R8 K32 ["setMap"]
      171 NEWTABLE                         R9 2 0
      173 SETTABLEKS                       R7 R9 K12 ["global"]
      175 SETTABLE                         R7 R9 R3
      176 CALL                             R8 1 0
      177 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R7 0
        1 CALL                             R7 0 1
        2 JUMPIFNOT                        R7 ; [+22]
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R7 R7 K0 ["DEFAULT_PIN_DATA_TYPE"]
        6 JUMPIFNOTEQ                      R2 R7 ; [+18]
        8 JUMPIFNOTEQKS                    R3 K1 ["Output"] ; [+8]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R7 R7 K2 ["removeNodeOutputConnectionAsync"]
       13 MOVE                             R8 R0
       14 MOVE                             R9 R1
       15 CALL                             R7 2 0
       16 JUMP                             ; [+8]
       17 JUMPIFNOTEQKS                    R3 K3 ["Input"] ; [+7]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K4 ["removeNodeInputConnectionAsync"]
       22 MOVE                             R8 R0
       23 MOVE                             R9 R1
       24 CALL                             R7 2 0
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 GETUPVAL                         R9 3
       28 CALL                             R9 0 1
       29 JUMPIFNOT                        R9 ; [+13]
       30 JUMPIFNOTEQKS                    R2 K5 ["Parameter"] ; [+3]
       32 MOVE                             R7 R5
       33 JUMP                             ; [+1]
       34 LOADNIL                          R7
       35 GETUPVAL                         R9 4
       36 MOVE                             R10 R0
       37 MOVE                             R11 R3
       38 MOVE                             R12 R1
       39 MOVE                             R13 R7
       40 CALL                             R9 4 1
       41 MOVE                             R8 R9
       42 JUMP                             ; [+6]
       43 GETUPVAL                         R9 4
       44 MOVE                             R10 R0
       45 MOVE                             R11 R3
       46 MOVE                             R12 R1
       47 CALL                             R9 3 1
       48 MOVE                             R8 R9
       49 GETIMPORT                        R9 K8 [table.freeze]
       51 DUPTABLE                         R10 K15 [{"sourcePinNodeId", "sourcePinName", "sourcePinDataType", "sourcePinSide", "sourcePinValue", "sourcePinDynamicIndex"}]
       52 SETTABLEKS                       R0 R10 K9 ["sourcePinNodeId"]
       54 SETTABLEKS                       R1 R10 K10 ["sourcePinName"]
       56 SETTABLEKS                       R2 R10 K11 ["sourcePinDataType"]
       58 SETTABLEKS                       R3 R10 K12 ["sourcePinSide"]
       60 SETTABLEKS                       R4 R10 K13 ["sourcePinValue"]
       62 GETUPVAL                         R12 3
       63 CALL                             R12 0 1
       64 JUMPIFNOT                        R12 ; [+2]
       65 MOVE                             R11 R5
       66 JUMP                             ; [+1]
       67 LOADNIL                          R11
       68 SETTABLEKS                       R11 R10 K14 ["sourcePinDynamicIndex"]
       70 CALL                             R9 1 1
       71 GETUPVAL                         R10 5
       72 GETTABLEKS                       R10 R10 K16 ["setMap"]
       74 NEWTABLE                         R11 2 0
       76 SETTABLEKS                       R9 R11 K17 ["global"]
       78 SETTABLE                         R9 R11 R8
       79 CALL                             R10 1 0
       80 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 LOADK                            R2 K1 ["global"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+19]
       12 GETTABLEKS                       R4 R1 K2 ["sourcePinDataType"]
       14 JUMPIFNOTEQKS                    R4 K3 ["Parameter"] ; [+4]
       16 GETTABLEKS                       R3 R1 K4 ["sourcePinDynamicIndex"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R5 R1 K5 ["sourcePinNodeId"]
       23 GETTABLEKS                       R6 R1 K6 ["sourcePinSide"]
       25 GETTABLEKS                       R7 R1 K7 ["sourcePinName"]
       27 MOVE                             R8 R3
       28 CALL                             R4 4 1
       29 MOVE                             R2 R4
       30 JUMP                             ; [+9]
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R4 R1 K5 ["sourcePinNodeId"]
       34 GETTABLEKS                       R5 R1 K6 ["sourcePinSide"]
       36 GETTABLEKS                       R6 R1 K7 ["sourcePinName"]
       38 CALL                             R3 3 1
       39 MOVE                             R2 R3
       40 GETUPVAL                         R3 3
       41 MOVE                             R4 R0
       42 CALL                             R3 1 2
       43 JUMPIFNOT                        R3 ; [+62]
       44 JUMPIFNOT                        R4 ; [+61]
       45 GETIMPORT                        R5 K10 [table.clone]
       47 MOVE                             R6 R1
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R6 R3 K11 ["pinName"]
       51 SETTABLEKS                       R6 R5 K12 ["targetPinName"]
       53 SETTABLEKS                       R4 R5 K13 ["targetPinPosition"]
       55 GETTABLEKS                       R6 R3 K14 ["pinNodeId"]
       57 SETTABLEKS                       R6 R5 K15 ["targetPinNodeId"]
       59 GETTABLEKS                       R6 R3 K16 ["pinDynamicIndex"]
       61 SETTABLEKS                       R6 R5 K17 ["targetPinDynamicIndex"]
       63 LOADNIL                          R6
       64 GETUPVAL                         R7 1
       65 CALL                             R7 0 1
       66 JUMPIFNOT                        R7 ; [+19]
       67 GETTABLEKS                       R8 R3 K18 ["pinDataType"]
       69 JUMPIFNOTEQKS                    R8 K3 ["Parameter"] ; [+4]
       71 GETTABLEKS                       R7 R3 K16 ["pinDynamicIndex"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R7
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R9 R3 K14 ["pinNodeId"]
       78 GETTABLEKS                       R10 R3 K19 ["pinSide"]
       80 GETTABLEKS                       R11 R3 K11 ["pinName"]
       82 MOVE                             R12 R7
       83 CALL                             R8 4 1
       84 MOVE                             R6 R8
       85 JUMP                             ; [+9]
       86 GETUPVAL                         R7 2
       87 GETTABLEKS                       R8 R3 K14 ["pinNodeId"]
       89 GETTABLEKS                       R9 R3 K19 ["pinSide"]
       91 GETTABLEKS                       R10 R3 K11 ["pinName"]
       93 CALL                             R7 3 1
       94 MOVE                             R6 R7
       95 GETUPVAL                         R7 0
       96 GETTABLEKS                       R7 R7 K20 ["setMap"]
       98 NEWTABLE                         R8 4 0
      100 SETTABLEKS                       R5 R8 K1 ["global"]
      102 SETTABLE                         R5 R8 R2
      103 SETTABLE                         R5 R8 R6
      104 CALL                             R7 1 0
      105 RETURN                           R0 0
      106 GETIMPORT                        R5 K10 [table.clone]
      108 MOVE                             R6 R1
      109 CALL                             R5 1 1
      110 LOADNIL                          R6
      111 SETTABLEKS                       R6 R5 K12 ["targetPinName"]
      113 SETTABLEKS                       R0 R5 K13 ["targetPinPosition"]
      115 LOADNIL                          R6
      116 SETTABLEKS                       R6 R5 K15 ["targetPinNodeId"]
      118 GETUPVAL                         R6 0
      119 GETTABLEKS                       R6 R6 K20 ["setMap"]
      121 NEWTABLE                         R7 2 0
      123 SETTABLEKS                       R5 R7 K1 ["global"]
      125 SETTABLE                         R5 R7 R2
      126 CALL                             R6 1 0
      127 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 LOADK                            R2 K1 ["global"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 GETTABLEKS                       R8 R1 K2 ["sourcePinSide"]
       18 JUMPIFNOTEQKS                    R8 K3 ["Output"] ; [+16]
       20 GETTABLEKS                       R5 R1 K4 ["sourcePinNodeId"]
       22 GETTABLEKS                       R6 R1 K5 ["sourcePinName"]
       24 JUMPIFNOT                        R2 ; [+33]
       25 GETTABLEKS                       R3 R2 K6 ["pinNodeId"]
       27 GETTABLEKS                       R4 R2 K7 ["pinName"]
       29 GETUPVAL                         R8 2
       30 CALL                             R8 0 1
       31 JUMPIFNOT                        R8 ; [+26]
       32 GETTABLEKS                       R7 R2 K8 ["pinDynamicIndex"]
       34 JUMP                             ; [+23]
       35 GETTABLEKS                       R8 R1 K2 ["sourcePinSide"]
       37 JUMPIFNOTEQKS                    R8 K9 ["Input"] ; [+16]
       39 GETTABLEKS                       R3 R1 K4 ["sourcePinNodeId"]
       41 GETTABLEKS                       R4 R1 K5 ["sourcePinName"]
       43 GETUPVAL                         R8 2
       44 CALL                             R8 0 1
       45 JUMPIFNOT                        R8 ; [+2]
       46 GETTABLEKS                       R7 R1 K10 ["sourcePinDynamicIndex"]
       48 JUMPIFNOT                        R2 ; [+9]
       49 GETTABLEKS                       R5 R2 K6 ["pinNodeId"]
       51 GETTABLEKS                       R6 R2 K7 ["pinName"]
       53 JUMP                             ; [+4]
       54 GETIMPORT                        R8 K12 [error]
       56 LOADK                            R9 K13 ["Bad sourcePin state"]
       57 CALL                             R8 1 0
       58 GETIMPORT                        R8 K16 [table.freeze]
       60 DUPTABLE                         R9 K19 [{"sourcePinNodeId", "sourcePinName", "sourcePinSide", "sourcePinDataType", "sourcePinValue", "sourcePinDynamicIndex"}]
       61 GETTABLEKS                       R10 R1 K4 ["sourcePinNodeId"]
       63 SETTABLEKS                       R10 R9 K4 ["sourcePinNodeId"]
       65 GETTABLEKS                       R10 R1 K5 ["sourcePinName"]
       67 SETTABLEKS                       R10 R9 K5 ["sourcePinName"]
       69 GETTABLEKS                       R10 R1 K2 ["sourcePinSide"]
       71 SETTABLEKS                       R10 R9 K2 ["sourcePinSide"]
       73 GETTABLEKS                       R10 R1 K17 ["sourcePinDataType"]
       75 SETTABLEKS                       R10 R9 K17 ["sourcePinDataType"]
       77 GETTABLEKS                       R10 R1 K18 ["sourcePinValue"]
       79 SETTABLEKS                       R10 R9 K18 ["sourcePinValue"]
       81 GETUPVAL                         R11 2
       82 CALL                             R11 0 1
       83 JUMPIFNOT                        R11 ; [+3]
       84 GETTABLEKS                       R10 R1 K10 ["sourcePinDynamicIndex"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R10
       88 SETTABLEKS                       R10 R9 K10 ["sourcePinDynamicIndex"]
       90 CALL                             R8 1 1
       91 JUMPIFNOT                        R3 ; [+22]
       92 JUMPIFNOT                        R4 ; [+21]
       93 JUMPIFNOT                        R5 ; [+20]
       94 JUMPIFNOT                        R6 ; [+19]
       95 GETUPVAL                         R9 3
       96 GETTABLEKS                       R9 R9 K20 ["setNodeConnection"]
       98 MOVE                             R10 R3
       99 MOVE                             R11 R4
      100 MOVE                             R12 R5
      101 MOVE                             R13 R6
      102 GETUPVAL                         R15 2
      103 CALL                             R15 0 1
      104 JUMPIFNOT                        R15 ; [+6]
      105 GETTABLEKS                       R15 R1 K17 ["sourcePinDataType"]
      107 JUMPIFNOTEQKS                    R15 K21 ["Parameter"] ; [+3]
      109 MOVE                             R14 R7
      110 JUMP                             ; [+1]
      111 LOADNIL                          R14
      112 CALL                             R9 5 0
      113 JUMP                             ; [+66]
      114 JUMPIFNOT                        R3 ; [+31]
      115 JUMPIFNOT                        R4 ; [+30]
      116 GETUPVAL                         R10 2
      117 CALL                             R10 0 1
      118 JUMPIFNOT                        R10 ; [+6]
      119 GETTABLEKS                       R10 R1 K17 ["sourcePinDataType"]
      121 JUMPIFNOTEQKS                    R10 K21 ["Parameter"] ; [+3]
      123 MOVE                             R9 R7
      124 JUMP                             ; [+1]
      125 LOADNIL                          R9
      126 GETUPVAL                         R10 3
      127 GETTABLEKS                       R10 R10 K22 ["removeNodeInputConnectionAsync"]
      129 MOVE                             R11 R3
      130 MOVE                             R12 R4
      131 GETUPVAL                         R14 2
      132 CALL                             R14 0 1
      133 JUMPIFNOT                        R14 ; [+2]
      134 MOVE                             R13 R9
      135 JUMP                             ; [+1]
      136 LOADNIL                          R13
      137 CALL                             R10 3 1
      138 JUMPIF                           R10 ; [+41]
      139 GETUPVAL                         R10 4
      140 GETTABLEKS                       R10 R10 K23 ["showMenu"]
      142 MOVE                             R11 R0
      143 MOVE                             R12 R8
      144 CALL                             R10 2 0
      145 JUMP                             ; [+34]
      146 JUMPIFNOT                        R5 ; [+29]
      147 JUMPIFNOT                        R6 ; [+28]
      148 GETUPVAL                         R9 3
      149 GETTABLEKS                       R9 R9 K24 ["removeNodeOutputConnectionAsync"]
      151 MOVE                             R10 R5
      152 MOVE                             R11 R6
      153 CALL                             R9 2 1
      154 JUMPIF                           R9 ; [+25]
      155 GETUPVAL                         R9 5
      156 CALL                             R9 0 1
      157 JUMPIFNOT                        R9 ; [+11]
      158 GETTABLEKS                       R9 R8 K17 ["sourcePinDataType"]
      160 JUMPIFEQKS                       R9 K21 ["Parameter"] ; [+19]
      162 GETUPVAL                         R9 4
      163 GETTABLEKS                       R9 R9 K23 ["showMenu"]
      165 MOVE                             R10 R0
      166 MOVE                             R11 R8
      167 CALL                             R9 2 0
      168 JUMP                             ; [+11]
      169 GETUPVAL                         R9 4
      170 GETTABLEKS                       R9 R9 K23 ["showMenu"]
      172 MOVE                             R10 R0
      173 MOVE                             R11 R8
      174 CALL                             R9 2 0
      175 JUMP                             ; [+4]
      176 GETIMPORT                        R9 K26 [warn]
      178 LOADK                            R10 K27 ["Bad state"]
      179 CALL                             R9 1 0
      180 GETUPVAL                         R9 0
      181 GETTABLEKS                       R9 R9 K28 ["setMap"]
      183 NEWTABLE                         R10 0 0
      185 CALL                             R9 1 0
      186 GETUPVAL                         R9 6
      187 JUMPIFNOT                        R9 ; [+5]
      188 GETIMPORT                        R9 K31 [task.defer]
      190 NEWCLOSURE                       R10 P0
      191 CAPTURE                          UPVAL U7
      192 CALL                             R9 1 0
      193 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K1 ["dragState"]
        8 JUMPIFEQKS                       R2 K2 ["dragging"] ; [+5]
       10 GETTABLEKS                       R2 R1 K1 ["dragState"]
       12 JUMPIFNOTEQKS                    R2 K3 ["toggled"] ; [+9]
       14 GETUPVAL                         R2 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K4 ["absToPlot"]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R2 R1 K1 ["dragState"]
       24 JUMPIFNOTEQKS                    R2 K5 ["undecided"] ; [+8]
       26 LOADK                            R2 K3 ["toggled"]
       27 SETTABLEKS                       R2 R1 K1 ["dragState"]
       29 GETTABLEKS                       R2 R1 K6 ["startDragging"]
       31 CALL                             R2 0 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R2 R1 K1 ["dragState"]
       35 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeMap"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       13 MOVE                             R9 R2
       14 MOVE                             R10 R6
       15 GETIMPORT                        R8 K3 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 2 ; [-8]
       20 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observe"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 JUMPIFNOT                        R6 ; [+46]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K0 ["get"]
       11 GETTABLEKS                       R8 R6 K1 ["nodeId"]
       13 CALL                             R7 1 1
       14 JUMPIFEQKNIL                     R7 ; [+39]
       16 GETTABLEKS                       R8 R6 K2 ["position"]
       18 GETTABLEKS                       R9 R7 K3 ["pendingNetworkPosition"]
       20 JUMPIFNOTEQ                      R8 R9 ; [+33]
       22 GETTABLEKS                       R8 R7 K4 ["delta"]
       24 JUMPIF                           R8 ; [+3]
       25 GETTABLEKS                       R8 R7 K5 ["origin"]
       27 JUMPIFNOT                        R8 ; [+19]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K6 ["set"]
       31 GETTABLEKS                       R9 R6 K1 ["nodeId"]
       33 DUPTABLE                         R10 K7 [{"delta", "origin", "pendingNetworkPosition"}]
       34 GETTABLEKS                       R11 R7 K4 ["delta"]
       36 SETTABLEKS                       R11 R10 K4 ["delta"]
       38 GETTABLEKS                       R11 R7 K5 ["origin"]
       40 SETTABLEKS                       R11 R10 K5 ["origin"]
       42 LOADNIL                          R11
       43 SETTABLEKS                       R11 R10 K3 ["pendingNetworkPosition"]
       45 CALL                             R8 2 0
       46 JUMP                             ; [+7]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K6 ["set"]
       50 GETTABLEKS                       R9 R6 K1 ["nodeId"]
       52 LOADNIL                          R10
       53 CALL                             R8 2 0
       54 FORGLOOP                         R2 2 ; [-48]
       56 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Experimental"]
        3 GETTABLEKS                       R0 R0 K1 ["createComputed"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["forEach"]
       11 MOVE                             R2 R0
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K3 ["createEffect"]
       18 NEWCLOSURE                       R3 P2
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U1
       21 CALL                             R2 1 1
       22 NEWCLOSURE                       R3 P3
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+16]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["isValidVector2"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 JUMPIFNOT                        R2 ; [+8]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K0 ["isValidVector2"]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K1 ["pinOffset"]
       21 CALL                             R2 1 1
       22 JUMPIF                           R2 ; [+2]
       23 LOADNIL                          R2
       24 RETURN                           R2 1
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K1 ["pinOffset"]
       28 ADD                              R2 R1 R3
       29 RETURN                           R2 1

PROTO_18:
        0 JUMPIFNOT                        R0 ; [+16]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["pinNodeId"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["Experimental"]
        8 GETTABLEKS                       R2 R2 K2 ["createComputed"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K3 ["of"]
       20 LOADNIL                          R2
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observe"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["switchMap"]
        8 MOVE                             R3 R1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETIMPORT                        R3 K2 [Vector2.new]
        6 LOADN                            R4 0
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K4 ["WELL_KNOWN_HEADER_HEIGHT"]
       10 MINUS                            R6 R7
       11 DIVK                             R5 R6 K3 [2]
       12 CALL                             R3 2 1
       13 ADD                              R2 R1 R3
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Experimental"]
        6 GETTABLEKS                       R2 R2 K1 ["createComputed"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQ                      R0 R1 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["set"]
       11 GETUPVAL                         R1 1
       12 LOADNIL                          R2
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["set"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 DUPTABLE                         R4 K5 [{"selectedNodesOffset", "origin", "delta", "pendingNetworkPosition"}]
        6 MOVE                             R5 R2
        7 JUMPIF                           R5 ; [+5]
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETTABLEKS                       R5 R3 K1 ["selectedNodesOffset"]
       11 JUMPIF                           R5 ; [+1]
       12 LOADNIL                          R5
       13 SETTABLEKS                       R5 R4 K1 ["selectedNodesOffset"]
       15 JUMPIFNOT                        R3 ; [+3]
       16 GETTABLEKS                       R5 R3 K2 ["origin"]
       18 JUMP                             ; [+1]
       19 MOVE                             R5 R1
       20 SETTABLEKS                       R5 R4 K2 ["origin"]
       22 JUMPIFNOT                        R3 ; [+7]
       23 GETTABLEKS                       R6 R3 K2 ["origin"]
       25 JUMPIFNOT                        R6 ; [+4]
       26 GETTABLEKS                       R6 R3 K2 ["origin"]
       28 SUB                              R5 R1 R6
       29 JUMP                             ; [+2]
       30 GETIMPORT                        R5 K8 [Vector2.zero]
       32 SETTABLEKS                       R5 R4 K3 ["delta"]
       34 JUMPIFNOT                        R3 ; [+3]
       35 GETTABLEKS                       R5 R3 K4 ["pendingNetworkPosition"]
       37 JUMPIF                           R5 ; [+1]
       38 LOADNIL                          R5
       39 SETTABLEKS                       R5 R4 K4 ["pendingNetworkPosition"]
       41 RETURN                           R4 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLE                         R3 R1 R0
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["get"]
       12 MOVE                             R5 R0
       13 CALL                             R4 1 -1
       14 CALL                             R2 -1 1
       15 JUMPIF                           R2 ; [+3]
       16 NEWTABLE                         R3 0 0
       18 RETURN                           R3 1
       19 NEWTABLE                         R3 0 0
       21 GETTABLE                         R4 R1 R0
       22 GETTABLEKS                       R4 R4 K3 ["isSelected"]
       24 JUMPIFNOT                        R4 ; [+22]
       25 MOVE                             R4 R1
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETTABLEKS                       R9 R8 K3 ["isSelected"]
       31 JUMPIFNOT                        R9 ; [+13]
       32 JUMPIFEQ                         R7 R0 ; [+12]
       34 GETUPVAL                         R9 1
       35 MOVE                             R10 R8
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R11 R11 K2 ["get"]
       39 MOVE                             R12 R7
       40 CALL                             R11 1 -1
       41 CALL                             R9 -1 1
       42 JUMPIFNOT                        R9 ; [+2]
       43 SUB                              R10 R9 R2
       44 SETTABLE                         R10 R3 R7
       45 FORGLOOP                         R4 2 ; [-17]
       47 RETURN                           R3 1

PROTO_26:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K3 ["getMap"]
        5 CALL                             R4 0 -1
        6 CALL                             R3 -1 1
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 CALL                             R4 3 1
       12 SETTABLE                         R4 R3 R0
       13 GETTABLEKS                       R5 R4 K4 ["selectedNodesOffset"]
       15 JUMPIFNOT                        R5 ; [+31]
       16 GETTABLEKS                       R5 R4 K4 ["selectedNodesOffset"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K5 ["get"]
       24 MOVE                             R11 R8
       25 CALL                             R10 1 1
       26 DUPTABLE                         R11 K9 [{"selectedNodesOffset", "origin", "delta", "pendingNetworkPosition"}]
       27 LOADNIL                          R12
       28 SETTABLEKS                       R12 R11 K4 ["selectedNodesOffset"]
       30 LOADNIL                          R12
       31 SETTABLEKS                       R12 R11 K6 ["origin"]
       33 GETTABLEKS                       R12 R4 K7 ["delta"]
       35 SETTABLEKS                       R12 R11 K7 ["delta"]
       37 JUMPIFNOT                        R10 ; [+3]
       38 GETTABLEKS                       R12 R10 K8 ["pendingNetworkPosition"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R12
       42 SETTABLEKS                       R12 R11 K8 ["pendingNetworkPosition"]
       44 SETTABLE                         R11 R3 R8
       45 FORGLOOP                         R5 2 ; [-25]
       47 RETURN                           R3 1

PROTO_27:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["setMap"]
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 MOVE                             R8 R3
       12 CALL                             R5 3 -1
       13 CALL                             R4 -1 0
       14 LOADB                            R4 1
       15 SETTABLE                         R4 R2 R0
       16 MOVE                             R4 R3
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 LOADB                            R9 1
       21 SETTABLE                         R9 R2 R7
       22 FORGLOOP                         R4 2 ; [-3]
       24 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setMap"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETUPVAL                         R3 1
        4 SETTABLE                         R1 R3 R0
        5 GETUPVAL                         R3 0
        6 DUPTABLE                         R4 K3 [{"origin", "delta", "pendingNetworkPosition"}]
        7 LOADNIL                          R5
        8 SETTABLEKS                       R5 R4 K0 ["origin"]
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K1 ["delta"]
       13 SETTABLEKS                       R1 R4 K2 ["pendingNetworkPosition"]
       15 SETTABLE                         R4 R3 R0
       16 RETURN                           R0 0
       17 JUMPIFNOT                        R2 ; [+13]
       18 GETTABLEKS                       R3 R2 K2 ["pendingNetworkPosition"]
       20 JUMPIFNOT                        R3 ; [+10]
       21 GETUPVAL                         R3 0
       22 DUPTABLE                         R4 K4 [{"pendingNetworkPosition"}]
       23 MOVE                             R5 R2
       24 JUMPIFNOT                        R5 ; [+2]
       25 GETTABLEKS                       R5 R2 K2 ["pendingNetworkPosition"]
       27 SETTABLEKS                       R5 R4 K2 ["pendingNetworkPosition"]
       29 SETTABLE                         R4 R3 R0
       30 RETURN                           R0 0
       31 GETUPVAL                         R3 0
       32 LOADNIL                          R4
       33 SETTABLE                         R4 R3 R0
       34 RETURN                           R0 0

PROTO_30:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K2 [table.clone]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K3 ["getMap"]
        7 CALL                             R4 0 -1
        8 CALL                             R3 -1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R2
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 CALL                             R5 2 1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K4 ["nodeRenderInfoDispatcher"]
       19 GETTABLEKS                       R6 R6 K5 ["observe"]
       21 MOVE                             R7 R0
       22 CALL                             R6 1 1
       23 LOADB                            R7 0
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 3
       26 MOVE                             R8 R6
       27 MOVE                             R9 R5
       28 CALL                             R7 2 1
       29 MOVE                             R8 R4
       30 MOVE                             R9 R0
       31 MOVE                             R10 R7
       32 CALL                             R8 2 0
       33 GETTABLEKS                       R8 R5 K6 ["selectedNodesOffset"]
       35 JUMPIFNOT                        R8 ; [+15]
       36 GETTABLEKS                       R8 R5 K6 ["selectedNodesOffset"]
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 FORGPREP                         R8
       41 JUMPIFNOT                        R7 ; [+2]
       42 ADD                              R13 R7 R12
       43 JUMP                             ; [+1]
       44 LOADNIL                          R13
       45 MOVE                             R14 R4
       46 MOVE                             R15 R11
       47 MOVE                             R16 R13
       48 CALL                             R14 2 0
       49 FORGLOOP                         R8 2 ; [-9]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R8 R8 K7 ["setMap"]
       54 MOVE                             R9 R3
       55 CALL                             R8 1 0
       56 RETURN                           R2 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observe"]
        3 LOADK                            R1 K1 ["global"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_32:
        0 DUPTABLE                         R0 K15 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded", "observeNodePreviewData", "observeNodePosition", "pushAnchor", "observeAnchorPosition", "observeCollapsedPinPosition", "onStartDrag", "onMouseUp", "onMouseMoved", "DEPRECATED_onDragMoved", "DEPRECATED_onDragEnded"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeGlobalCurvePreviewInfo"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K16 ["observe"]
        7 SETTABLEKS                       R1 R0 K1 ["observeCurvePreviewInfo"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K2 ["onDragNodeStart"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K3 ["onDragNodeMoved"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K4 ["onDragNodeEnded"]
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K16 ["observe"]
       21 SETTABLEKS                       R1 R0 K5 ["observeNodePreviewData"]
       23 GETUPVAL                         R1 6
       24 SETTABLEKS                       R1 R0 K6 ["observeNodePosition"]
       26 GETUPVAL                         R1 7
       27 SETTABLEKS                       R1 R0 K7 ["pushAnchor"]
       29 GETUPVAL                         R1 8
       30 SETTABLEKS                       R1 R0 K8 ["observeAnchorPosition"]
       32 GETUPVAL                         R1 9
       33 SETTABLEKS                       R1 R0 K9 ["observeCollapsedPinPosition"]
       35 GETUPVAL                         R2 10
       36 JUMPIFNOT                        R2 ; [+2]
       37 GETUPVAL                         R1 11
       38 JUMP                             ; [+1]
       39 GETUPVAL                         R1 12
       40 SETTABLEKS                       R1 R0 K10 ["onStartDrag"]
       42 GETUPVAL                         R1 13
       43 SETTABLEKS                       R1 R0 K11 ["onMouseUp"]
       45 GETUPVAL                         R1 14
       46 SETTABLEKS                       R1 R0 K12 ["onMouseMoved"]
       48 GETUPVAL                         R1 15
       49 SETTABLEKS                       R1 R0 K13 ["DEPRECATED_onDragMoved"]
       51 GETUPVAL                         R1 16
       52 SETTABLEKS                       R1 R0 K14 ["DEPRECATED_onDragEnded"]
       54 RETURN                           R0 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useContext"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["CanvasContext"]
        8 CALL                             R1 1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K0 ["useContext"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["Context"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K0 ["useContext"]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K2 ["Context"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 5
       26 CALL                             R4 0 1
       27 GETUPVAL                         R5 5
       28 CALL                             R5 0 1
       29 GETUPVAL                         R6 5
       30 CALL                             R6 0 1
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       34 DUPCLOSURE                       R8 K4 [PROTO_0]
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 NEWTABLE                         R9 0 0
       39 CALL                             R7 2 1
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          VAL R7
       48 NEWTABLE                         R10 0 3
       50 GETTABLEKS                       R11 R4 K5 ["observe"]
       52 MOVE                             R12 R7
       53 GETTABLEKS                       R13 R3 K6 ["nodeRenderInfoDispatcher"]
       55 GETTABLEKS                       R13 R13 K5 ["observe"]
       57 SETLIST                          R10 R11 3 [1]
       59 CALL                             R8 2 1
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       63 NEWCLOSURE                       R10 P2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R8
       67 CAPTURE                          UPVAL U9
       68 NEWTABLE                         R11 0 3
       70 GETTABLEKS                       R12 R5 K7 ["getMap"]
       72 MOVE                             R13 R8
       73 GETTABLEKS                       R14 R6 K8 ["get"]
       75 SETLIST                          R11 R12 3 [1]
       77 CALL                             R9 2 1
       78 GETUPVAL                         R10 1
       79 GETTABLEKS                       R10 R10 K9 ["useRef"]
       81 LOADNIL                          R11
       82 CALL                             R10 1 1
       83 GETUPVAL                         R12 0
       84 JUMPIFNOT                        R12 ; [+13]
       85 GETUPVAL                         R11 10
       86 GETTABLEKS                       R11 R11 K10 ["useEventCallback"]
       88 NEWCLOSURE                       R12 P3
       89 CAPTURE                          VAL R10
       90 CAPTURE                          UPVAL U11
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          VAL R3
       93 CAPTURE                          UPVAL U12
       94 CAPTURE                          UPVAL U13
       95 CAPTURE                          VAL R6
       96 CALL                             R11 1 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R11
       99 GETUPVAL                         R13 0
      100 JUMPIFNOT                        R13 ; [+12]
      101 GETUPVAL                         R12 10
      102 GETTABLEKS                       R12 R12 K10 ["useEventCallback"]
      104 NEWCLOSURE                       R13 P4
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R6
      107 CAPTURE                          UPVAL U12
      108 CAPTURE                          UPVAL U13
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R9
      111 CALL                             R12 1 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R12
      114 GETUPVAL                         R14 0
      115 JUMPIFNOT                        R14 ; [+2]
      116 LOADNIL                          R13
      117 JUMP                             ; [+17]
      118 GETUPVAL                         R13 1
      119 GETTABLEKS                       R13 R13 K3 ["useCallback"]
      121 NEWCLOSURE                       R14 P5
      122 CAPTURE                          UPVAL U11
      123 CAPTURE                          UPVAL U9
      124 CAPTURE                          VAL R3
      125 CAPTURE                          UPVAL U12
      126 CAPTURE                          UPVAL U13
      127 CAPTURE                          VAL R6
      128 NEWTABLE                         R15 0 1
      130 GETTABLEKS                       R16 R6 K11 ["setMap"]
      132 SETLIST                          R15 R16 1 [1]
      134 CALL                             R13 2 1
      135 GETUPVAL                         R15 0
      136 JUMPIFNOT                        R15 ; [+2]
      137 LOADNIL                          R14
      138 JUMP                             ; [+16]
      139 GETUPVAL                         R14 1
      140 GETTABLEKS                       R14 R14 K3 ["useCallback"]
      142 NEWCLOSURE                       R15 P6
      143 CAPTURE                          VAL R6
      144 CAPTURE                          UPVAL U12
      145 CAPTURE                          UPVAL U13
      146 CAPTURE                          VAL R9
      147 NEWTABLE                         R16 0 2
      149 MOVE                             R17 R9
      150 GETTABLEKS                       R18 R6 K11 ["setMap"]
      152 SETLIST                          R16 R17 2 [1]
      154 CALL                             R14 2 1
      155 GETUPVAL                         R15 1
      156 GETTABLEKS                       R15 R15 K3 ["useCallback"]
      158 NEWCLOSURE                       R16 P7
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R9
      161 CAPTURE                          UPVAL U12
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R2
      164 CAPTURE                          UPVAL U14
      165 CAPTURE                          UPVAL U0
      166 CAPTURE                          VAL R10
      167 NEWTABLE                         R17 0 7
      169 GETTABLEKS                       R18 R6 K8 ["get"]
      171 GETTABLEKS                       R19 R6 K11 ["setMap"]
      173 MOVE                             R20 R9
      174 GETTABLEKS                       R21 R3 K12 ["setNodeConnection"]
      176 GETTABLEKS                       R22 R3 K13 ["removeNodeInputConnectionAsync"]
      178 GETTABLEKS                       R23 R3 K14 ["removeNodeOutputConnectionAsync"]
      180 GETTABLEKS                       R24 R2 K15 ["showMenu"]
      182 SETLIST                          R17 R18 7 [1]
      184 CALL                             R15 2 1
      185 GETUPVAL                         R16 10
      186 GETTABLEKS                       R16 R16 K10 ["useEventCallback"]
      188 NEWCLOSURE                       R17 P8
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R1
      192 CALL                             R16 1 1
      193 GETUPVAL                         R17 1
      194 GETTABLEKS                       R17 R17 K16 ["useEffect"]
      196 NEWCLOSURE                       R18 P9
      197 CAPTURE                          UPVAL U8
      198 CAPTURE                          VAL R4
      199 CAPTURE                          VAL R3
      200 CAPTURE                          UPVAL U15
      201 NEWTABLE                         R19 0 2
      203 GETTABLEKS                       R20 R3 K6 ["nodeRenderInfoDispatcher"]
      205 GETTABLEKS                       R20 R20 K5 ["observe"]
      207 GETTABLEKS                       R21 R4 K17 ["observeMap"]
      209 SETLIST                          R19 R20 2 [1]
      211 CALL                             R17 2 0
      212 GETUPVAL                         R17 1
      213 GETTABLEKS                       R17 R17 K3 ["useCallback"]
      215 NEWCLOSURE                       R18 P10
      216 CAPTURE                          VAL R5
      217 CAPTURE                          UPVAL U8
      218 CAPTURE                          VAL R8
      219 CAPTURE                          UPVAL U6
      220 CAPTURE                          UPVAL U7
      221 NEWTABLE                         R19 0 2
      223 GETTABLEKS                       R20 R5 K8 ["get"]
      225 MOVE                             R21 R8
      226 SETLIST                          R19 R20 2 [1]
      228 CALL                             R17 2 1
      229 GETUPVAL                         R18 1
      230 GETTABLEKS                       R18 R18 K3 ["useCallback"]
      232 NEWCLOSURE                       R19 P11
      233 CAPTURE                          VAL R8
      234 CAPTURE                          UPVAL U8
      235 CAPTURE                          UPVAL U9
      236 NEWTABLE                         R20 0 2
      238 GETTABLEKS                       R21 R5 K8 ["get"]
      240 MOVE                             R22 R8
      241 SETLIST                          R20 R21 2 [1]
      243 CALL                             R18 2 1
      244 GETUPVAL                         R19 1
      245 GETTABLEKS                       R19 R19 K3 ["useCallback"]
      247 NEWCLOSURE                       R20 P12
      248 CAPTURE                          VAL R5
      249 NEWTABLE                         R21 0 2
      251 GETTABLEKS                       R22 R5 K8 ["get"]
      253 GETTABLEKS                       R23 R5 K18 ["set"]
      255 SETLIST                          R21 R22 2 [1]
      257 CALL                             R19 2 1
      258 GETUPVAL                         R20 1
      259 GETTABLEKS                       R20 R20 K3 ["useCallback"]
      261 NEWCLOSURE                       R21 P13
      262 CAPTURE                          VAL R4
      263 NEWTABLE                         R22 0 2
      265 GETTABLEKS                       R23 R4 K8 ["get"]
      267 GETTABLEKS                       R24 R4 K18 ["set"]
      269 SETLIST                          R22 R23 2 [1]
      271 CALL                             R20 2 1
      272 GETUPVAL                         R21 1
      273 GETTABLEKS                       R21 R21 K3 ["useCallback"]
      275 NEWCLOSURE                       R22 P14
      276 CAPTURE                          VAL R3
      277 CAPTURE                          VAL R7
      278 CAPTURE                          VAL R4
      279 NEWTABLE                         R23 0 3
      281 GETTABLEKS                       R24 R3 K6 ["nodeRenderInfoDispatcher"]
      283 GETTABLEKS                       R24 R24 K17 ["observeMap"]
      285 MOVE                             R25 R7
      286 MOVE                             R26 R20
      287 SETLIST                          R23 R24 3 [1]
      289 CALL                             R21 2 1
      290 GETUPVAL                         R22 1
      291 GETTABLEKS                       R22 R22 K3 ["useCallback"]
      293 NEWCLOSURE                       R23 P15
      294 CAPTURE                          VAL R4
      295 CAPTURE                          VAL R20
      296 NEWTABLE                         R24 0 1
      298 GETTABLEKS                       R25 R4 K8 ["get"]
      300 SETLIST                          R24 R25 1 [1]
      302 CALL                             R22 2 1
      303 GETUPVAL                         R23 1
      304 GETTABLEKS                       R23 R23 K3 ["useCallback"]
      306 NEWCLOSURE                       R24 P16
      307 CAPTURE                          VAL R21
      308 CAPTURE                          VAL R4
      309 CAPTURE                          VAL R22
      310 NEWTABLE                         R25 0 3
      312 GETTABLEKS                       R26 R4 K11 ["setMap"]
      314 MOVE                             R27 R22
      315 MOVE                             R28 R21
      316 SETLIST                          R25 R26 3 [1]
      318 CALL                             R23 2 1
      319 GETUPVAL                         R24 1
      320 GETTABLEKS                       R24 R24 K3 ["useCallback"]
      322 NEWCLOSURE                       R25 P17
      323 CAPTURE                          VAL R4
      324 CAPTURE                          VAL R22
      325 NEWTABLE                         R26 0 2
      327 GETTABLEKS                       R27 R4 K11 ["setMap"]
      329 MOVE                             R28 R22
      330 SETLIST                          R26 R27 2 [1]
      332 CALL                             R24 2 1
      333 GETUPVAL                         R25 1
      334 GETTABLEKS                       R25 R25 K3 ["useCallback"]
      336 NEWCLOSURE                       R26 P18
      337 CAPTURE                          VAL R4
      338 CAPTURE                          VAL R20
      339 CAPTURE                          VAL R3
      340 CAPTURE                          VAL R7
      341 NEWTABLE                         R27 0 5
      343 GETTABLEKS                       R28 R4 K11 ["setMap"]
      345 MOVE                             R29 R20
      346 GETTABLEKS                       R30 R3 K6 ["nodeRenderInfoDispatcher"]
      348 GETTABLEKS                       R30 R30 K5 ["observe"]
      350 MOVE                             R31 R7
      351 GETTABLEKS                       R32 R4 K7 ["getMap"]
      353 SETLIST                          R27 R28 5 [1]
      355 CALL                             R25 2 1
      356 GETUPVAL                         R26 1
      357 GETTABLEKS                       R26 R26 K19 ["useMemo"]
      359 NEWCLOSURE                       R27 P19
      360 CAPTURE                          VAL R6
      361 NEWTABLE                         R28 0 1
      363 GETTABLEKS                       R29 R6 K5 ["observe"]
      365 SETLIST                          R28 R29 1 [1]
      367 CALL                             R26 2 1
      368 GETUPVAL                         R27 1
      369 GETTABLEKS                       R27 R27 K19 ["useMemo"]
      371 NEWCLOSURE                       R28 P20
      372 CAPTURE                          VAL R26
      373 CAPTURE                          VAL R6
      374 CAPTURE                          VAL R23
      375 CAPTURE                          VAL R24
      376 CAPTURE                          VAL R25
      377 CAPTURE                          VAL R4
      378 CAPTURE                          VAL R8
      379 CAPTURE                          VAL R19
      380 CAPTURE                          VAL R17
      381 CAPTURE                          VAL R18
      382 CAPTURE                          UPVAL U0
      383 CAPTURE                          VAL R11
      384 CAPTURE                          VAL R13
      385 CAPTURE                          VAL R16
      386 CAPTURE                          VAL R12
      387 CAPTURE                          VAL R14
      388 CAPTURE                          VAL R15
      389 NEWTABLE                         R29 0 17
      391 MOVE                             R30 R26
      392 GETTABLEKS                       R31 R6 K5 ["observe"]
      394 MOVE                             R32 R23
      395 MOVE                             R33 R24
      396 MOVE                             R34 R25
      397 GETTABLEKS                       R35 R4 K5 ["observe"]
      399 MOVE                             R36 R8
      400 MOVE                             R37 R19
      401 MOVE                             R38 R17
      402 MOVE                             R39 R18
      403 MOVE                             R40 R11
      404 MOVE                             R41 R16
      405 MOVE                             R42 R12
      406 MOVE                             R43 R14
      407 MOVE                             R44 R13
      408 MOVE                             R45 R14
      409 SETLIST                          R29 R30 16 [1]
      411 MOVE                             R30 R15
      412 SETLIST                          R29 R30 1 [17]
      414 CALL                             R27 2 1
      415 GETUPVAL                         R28 1
      416 GETTABLEKS                       R28 R28 K20 ["createElement"]
      418 GETUPVAL                         R29 16
      419 GETTABLEKS                       R29 R29 K21 ["Provider"]
      421 DUPTABLE                         R30 K23 [{"value"}]
      422 SETTABLEKS                       R27 R30 K22 ["value"]
      424 GETTABLEKS                       R31 R0 K24 ["children"]
      426 CALL                             R28 3 -1
      427 RETURN                           R28 -1

PROTO_34:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+16]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["onMouseMoved"]
        9 GETIMPORT                        R3 K7 [Vector2.new]
       11 GETTABLEKS                       R4 R1 K8 ["Position"]
       13 GETTABLEKS                       R4 R4 K9 ["X"]
       15 GETTABLEKS                       R5 R1 K8 ["Position"]
       17 GETTABLEKS                       R5 R5 K10 ["Y"]
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+16]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["onMouseUp"]
        9 GETIMPORT                        R3 K7 [Vector2.new]
       11 GETTABLEKS                       R4 R1 K8 ["Position"]
       13 GETTABLEKS                       R4 R4 K9 ["X"]
       15 GETTABLEKS                       R5 R1 K8 ["Position"]
       17 GETTABLEKS                       R5 R5 K10 ["Y"]
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["useEventCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K1 ["useEventCallback"]
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          VAL R1
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K2 ["createElement"]
       20 LOADK                            R5 K3 ["Frame"]
       21 NEWTABLE                         R6 8 0
       23 LOADN                            R7 1
       24 SETTABLEKS                       R7 R6 K4 ["BackgroundTransparency"]
       26 GETIMPORT                        R7 K7 [UDim2.fromScale]
       28 LOADN                            R8 1
       29 LOADN                            R9 1
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K8 ["Size"]
       33 GETTABLEKS                       R7 R0 K9 ["ZIndex"]
       35 SETTABLEKS                       R7 R6 K9 ["ZIndex"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K10 ["Event"]
       40 GETTABLEKS                       R7 R7 K11 ["InputChanged"]
       42 SETTABLE                         R2 R6 R7
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K10 ["Event"]
       46 GETTABLEKS                       R7 R7 K12 ["InputEnded"]
       48 SETTABLE                         R3 R6 R7
       49 CALL                             R4 2 -1
       50 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R3 K8 ["FFlagAnimGraphUI_ClickTogglePins"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["GraphContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R5 K12 ["Graphing"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Components"]
       37 GETTABLEKS                       R6 R6 K13 ["InsertNodeContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K14 ["NodeViewTypes"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Parent"]
       49 GETTABLEKS                       R8 R8 K15 ["React"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K11 ["Parent"]
       56 GETTABLEKS                       R9 R9 K16 ["ReactUtils"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K11 ["Parent"]
       63 GETTABLEKS                       R10 R10 K17 ["Signals"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K11 ["Parent"]
       70 GETTABLEKS                       R11 R11 K18 ["SignalsUtils"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K19 ["Util"]
       77 GETTABLEKS                       R12 R12 K20 ["Vector2Utils"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K7 ["Flags"]
       84 GETTABLEKS                       R13 R13 K21 ["getFFlagAnimGraphUIDisableDisconnectedParameterOutputDragging"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K7 ["Flags"]
       91 GETTABLEKS                       R14 R14 K22 ["getFFlagAnimGraphUIDisconnectOnStartDrag"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K7 ["Flags"]
       98 GETTABLEKS                       R15 R15 K23 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K7 ["Flags"]
      105 GETTABLEKS                       R16 R16 K24 ["getFFlagAnimGraphUI_RunTimeDebug"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K19 ["Util"]
      112 GETTABLEKS                       R17 R17 K25 ["getPinAnchorKey"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K26 ["Hooks"]
      119 GETTABLEKS                       R18 R18 K27 ["useSignalDispatcher"]
      121 CALL                             R17 1 1
      122 DUPTABLE                         R18 K43 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "pushAnchor", "observeNodePreviewData", "observeAnchorPosition", "observeNodePosition", "observeCollapsedPinPosition", "onStartDrag", "onMouseUp", "onMouseMoved", "DEPRECATED_onDragMoved", "DEPRECATED_onDragEnded", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded"}]
      123 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      125 LOADK                            R20 K28 ["observeGlobalCurvePreviewInfo"]
      126 CALL                             R19 1 1
      127 SETTABLEKS                       R19 R18 K28 ["observeGlobalCurvePreviewInfo"]
      129 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      131 LOADK                            R20 K29 ["observeCurvePreviewInfo"]
      132 CALL                             R19 1 1
      133 SETTABLEKS                       R19 R18 K29 ["observeCurvePreviewInfo"]
      135 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      137 LOADK                            R20 K30 ["pushAnchor"]
      138 CALL                             R19 1 1
      139 SETTABLEKS                       R19 R18 K30 ["pushAnchor"]
      141 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      143 LOADK                            R20 K31 ["observeNodePreviewData"]
      144 CALL                             R19 1 1
      145 SETTABLEKS                       R19 R18 K31 ["observeNodePreviewData"]
      147 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      149 LOADK                            R20 K32 ["observeAnchorPosition"]
      150 CALL                             R19 1 1
      151 SETTABLEKS                       R19 R18 K32 ["observeAnchorPosition"]
      153 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      155 LOADK                            R20 K33 ["observeNodePosition"]
      156 CALL                             R19 1 1
      157 SETTABLEKS                       R19 R18 K33 ["observeNodePosition"]
      159 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      161 LOADK                            R20 K34 ["observeCollapsedPinPosition"]
      162 CALL                             R19 1 1
      163 SETTABLEKS                       R19 R18 K34 ["observeCollapsedPinPosition"]
      165 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      167 LOADK                            R20 K35 ["onStartDrag"]
      168 CALL                             R19 1 1
      169 SETTABLEKS                       R19 R18 K35 ["onStartDrag"]
      171 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      173 LOADK                            R20 K36 ["onMouseUp"]
      174 CALL                             R19 1 1
      175 SETTABLEKS                       R19 R18 K36 ["onMouseUp"]
      177 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      179 LOADK                            R20 K37 ["onMouseMoved"]
      180 CALL                             R19 1 1
      181 SETTABLEKS                       R19 R18 K37 ["onMouseMoved"]
      183 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      185 LOADK                            R20 K45 ["onDragMoved"]
      186 CALL                             R19 1 1
      187 SETTABLEKS                       R19 R18 K38 ["DEPRECATED_onDragMoved"]
      189 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      191 LOADK                            R20 K46 ["onDragEnded"]
      192 CALL                             R19 1 1
      193 SETTABLEKS                       R19 R18 K39 ["DEPRECATED_onDragEnded"]
      195 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      197 LOADK                            R20 K40 ["onDragNodeStart"]
      198 CALL                             R19 1 1
      199 SETTABLEKS                       R19 R18 K40 ["onDragNodeStart"]
      201 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      203 LOADK                            R20 K41 ["onDragNodeMoved"]
      204 CALL                             R19 1 1
      205 SETTABLEKS                       R19 R18 K41 ["onDragNodeMoved"]
      207 GETTABLEKS                       R19 R8 K44 ["createUnimplemented"]
      209 LOADK                            R20 K42 ["onDragNodeEnded"]
      210 CALL                             R19 1 1
      211 SETTABLEKS                       R19 R18 K42 ["onDragNodeEnded"]
      213 GETTABLEKS                       R19 R7 K47 ["createContext"]
      215 MOVE                             R20 R18
      216 CALL                             R19 1 1
      217 DUPCLOSURE                       R20 K48 [PROTO_33]
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R4
      221 CAPTURE                          VAL R5
      222 CAPTURE                          VAL R3
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R8
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R9
      234 CAPTURE                          VAL R19
      235 DUPCLOSURE                       R21 K49 [PROTO_36]
      236 CAPTURE                          VAL R7
      237 CAPTURE                          VAL R19
      238 CAPTURE                          VAL R8
      239 DUPTABLE                         R22 K53 [{"Context", "Provider", "InputDetector"}]
      240 SETTABLEKS                       R19 R22 K50 ["Context"]
      242 SETTABLEKS                       R20 R22 K51 ["Provider"]
      244 SETTABLEKS                       R21 R22 K52 ["InputDetector"]
      246 RETURN                           R22 1
