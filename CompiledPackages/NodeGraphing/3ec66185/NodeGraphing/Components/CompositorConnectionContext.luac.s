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
        4 JUMPIFNOT                        R2 ; [+24]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["sourcePinDataType"]
        8 JUMPIFNOTEQKS                    R2 K1 ["Parameter"] ; [+5]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R0 R2 K2 ["sourcePinDynamicIndex"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R0
       15 GETUPVAL                         R2 2
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["sourcePinNodeId"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K4 ["sourcePinSide"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K5 ["sourcePinName"]
       25 MOVE                             R6 R0
       26 CALL                             R2 4 1
       27 MOVE                             R1 R2
       28 JUMP                             ; [+12]
       29 GETUPVAL                         R2 2
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K3 ["sourcePinNodeId"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K4 ["sourcePinSide"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K5 ["sourcePinName"]
       39 CALL                             R2 3 1
       40 MOVE                             R1 R2
       41 GETIMPORT                        R2 K8 [table.freeze]
       43 DUPTABLE                         R3 K12 [{"sourcePinNodeId", "sourcePinName", "sourcePinDataType", "sourcePinSide", "sourcePinValue", "sourcePinDynamicIndex", "specificInputPinNodeId", "specificInputPinName"}]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K3 ["sourcePinNodeId"]
       47 SETTABLEKS                       R4 R3 K3 ["sourcePinNodeId"]
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K5 ["sourcePinName"]
       52 SETTABLEKS                       R4 R3 K5 ["sourcePinName"]
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R4 R4 K0 ["sourcePinDataType"]
       57 SETTABLEKS                       R4 R3 K0 ["sourcePinDataType"]
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R4 R4 K4 ["sourcePinSide"]
       62 SETTABLEKS                       R4 R3 K4 ["sourcePinSide"]
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R4 R4 K9 ["sourcePinValue"]
       67 SETTABLEKS                       R4 R3 K9 ["sourcePinValue"]
       69 GETUPVAL                         R5 0
       70 CALL                             R5 0 1
       71 JUMPIFNOT                        R5 ; [+4]
       72 GETUPVAL                         R4 1
       73 GETTABLEKS                       R4 R4 K2 ["sourcePinDynamicIndex"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R4
       77 SETTABLEKS                       R4 R3 K2 ["sourcePinDynamicIndex"]
       79 GETUPVAL                         R5 1
       80 GETTABLEKS                       R5 R5 K4 ["sourcePinSide"]
       82 JUMPIFNOTEQKS                    R5 K13 ["Output"] ; [+5]
       84 GETUPVAL                         R4 1
       85 GETTABLEKS                       R4 R4 K14 ["disconnectedPinNodeId"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R4
       89 SETTABLEKS                       R4 R3 K10 ["specificInputPinNodeId"]
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R5 R5 K4 ["sourcePinSide"]
       94 JUMPIFNOTEQKS                    R5 K13 ["Output"] ; [+5]
       96 GETUPVAL                         R4 1
       97 GETTABLEKS                       R4 R4 K15 ["disconnectedPinName"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R4
      101 SETTABLEKS                       R4 R3 K11 ["specificInputPinName"]
      103 CALL                             R2 1 1
      104 GETUPVAL                         R3 3
      105 GETTABLEKS                       R3 R3 K16 ["setMap"]
      107 NEWTABLE                         R4 2 0
      109 SETTABLEKS                       R2 R4 K17 ["global"]
      111 SETTABLE                         R2 R4 R1
      112 CALL                             R3 1 0
      113 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+32]
        9 GETTABLEKS                       R1 R0 K1 ["sourcePinDataType"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["DEFAULT_PIN_DATA_TYPE"]
       14 JUMPIFNOTEQ                      R1 R2 ; [+26]
       16 GETTABLEKS                       R1 R0 K3 ["sourcePinSide"]
       18 JUMPIFNOTEQKS                    R1 K4 ["Output"] ; [+10]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K5 ["removeNodeOutputConnectionAsync"]
       23 GETTABLEKS                       R2 R0 K6 ["sourcePinNodeId"]
       25 GETTABLEKS                       R3 R0 K7 ["sourcePinName"]
       27 CALL                             R1 2 0
       28 JUMP                             ; [+12]
       29 GETTABLEKS                       R1 R0 K3 ["sourcePinSide"]
       31 JUMPIFNOTEQKS                    R1 K8 ["Input"] ; [+9]
       33 GETUPVAL                         R1 3
       34 GETTABLEKS                       R1 R1 K9 ["removeNodeInputConnectionAsync"]
       36 GETTABLEKS                       R2 R0 K6 ["sourcePinNodeId"]
       38 GETTABLEKS                       R3 R0 K7 ["sourcePinName"]
       40 CALL                             R1 2 0
       41 GETUPVAL                         R1 0
       42 DUPTABLE                         R2 K14 [{["startPosition"], ["dragState"] = "undecided", ["startDragging"]}]
       43 GETTABLEKS                       R3 R0 K15 ["position"]
       45 SETTABLEKS                       R3 R2 K10 ["startPosition"]
       47 NEWCLOSURE                       R3 P0
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 SETTABLEKS                       R3 R2 K13 ["startDragging"]
       54 SETTABLEKS                       R2 R1 K0 ["current"]
       56 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       32 DUPTABLE                         R8 K10 [{["startPosition"], ["dragState"] = "undecided", ["startDragging"]}]
       33 SETTABLEKS                       R6 R8 K6 ["startPosition"]
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R5
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U6
       45 SETTABLEKS                       R9 R8 K9 ["startDragging"]
       47 SETTABLEKS                       R8 R7 K0 ["current"]
       49 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+32]
        3 GETTABLEKS                       R1 R0 K0 ["sourcePinDataType"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["DEFAULT_PIN_DATA_TYPE"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+26]
       10 GETTABLEKS                       R1 R0 K2 ["sourcePinSide"]
       12 JUMPIFNOTEQKS                    R1 K3 ["Output"] ; [+10]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K4 ["removeNodeOutputConnectionAsync"]
       17 GETTABLEKS                       R2 R0 K5 ["sourcePinNodeId"]
       19 GETTABLEKS                       R3 R0 K6 ["sourcePinName"]
       21 CALL                             R1 2 0
       22 JUMP                             ; [+12]
       23 GETTABLEKS                       R1 R0 K2 ["sourcePinSide"]
       25 JUMPIFNOTEQKS                    R1 K7 ["Input"] ; [+9]
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K8 ["removeNodeInputConnectionAsync"]
       30 GETTABLEKS                       R2 R0 K5 ["sourcePinNodeId"]
       32 GETTABLEKS                       R3 R0 K6 ["sourcePinName"]
       34 CALL                             R1 2 0
       35 LOADNIL                          R1
       36 LOADNIL                          R2
       37 GETUPVAL                         R3 3
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+19]
       40 GETTABLEKS                       R3 R0 K0 ["sourcePinDataType"]
       42 JUMPIFNOTEQKS                    R3 K9 ["Parameter"] ; [+4]
       44 GETTABLEKS                       R1 R0 K10 ["sourcePinDynamicIndex"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R1
       48 GETUPVAL                         R3 4
       49 GETTABLEKS                       R4 R0 K5 ["sourcePinNodeId"]
       51 GETTABLEKS                       R5 R0 K2 ["sourcePinSide"]
       53 GETTABLEKS                       R6 R0 K6 ["sourcePinName"]
       55 MOVE                             R7 R1
       56 CALL                             R3 4 1
       57 MOVE                             R2 R3
       58 JUMP                             ; [+9]
       59 GETUPVAL                         R3 4
       60 GETTABLEKS                       R4 R0 K5 ["sourcePinNodeId"]
       62 GETTABLEKS                       R5 R0 K2 ["sourcePinSide"]
       64 GETTABLEKS                       R6 R0 K6 ["sourcePinName"]
       66 CALL                             R3 3 1
       67 MOVE                             R2 R3
       68 GETIMPORT                        R3 K13 [table.freeze]
       70 DUPTABLE                         R4 K17 [{"sourcePinNodeId", "sourcePinName", "sourcePinDataType", "sourcePinSide", "sourcePinValue", "sourcePinDynamicIndex", "specificInputPinNodeId", "specificInputPinName"}]
       71 GETTABLEKS                       R5 R0 K5 ["sourcePinNodeId"]
       73 SETTABLEKS                       R5 R4 K5 ["sourcePinNodeId"]
       75 GETTABLEKS                       R5 R0 K6 ["sourcePinName"]
       77 SETTABLEKS                       R5 R4 K6 ["sourcePinName"]
       79 GETTABLEKS                       R5 R0 K0 ["sourcePinDataType"]
       81 SETTABLEKS                       R5 R4 K0 ["sourcePinDataType"]
       83 GETTABLEKS                       R5 R0 K2 ["sourcePinSide"]
       85 SETTABLEKS                       R5 R4 K2 ["sourcePinSide"]
       87 GETTABLEKS                       R5 R0 K14 ["sourcePinValue"]
       89 SETTABLEKS                       R5 R4 K14 ["sourcePinValue"]
       91 GETUPVAL                         R6 3
       92 CALL                             R6 0 1
       93 JUMPIFNOT                        R6 ; [+3]
       94 GETTABLEKS                       R5 R0 K10 ["sourcePinDynamicIndex"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R5
       98 SETTABLEKS                       R5 R4 K10 ["sourcePinDynamicIndex"]
      100 GETTABLEKS                       R6 R0 K2 ["sourcePinSide"]
      102 JUMPIFNOTEQKS                    R6 K3 ["Output"] ; [+4]
      104 GETTABLEKS                       R5 R0 K18 ["disconnectedPinNodeId"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R5
      108 SETTABLEKS                       R5 R4 K15 ["specificInputPinNodeId"]
      110 GETTABLEKS                       R6 R0 K2 ["sourcePinSide"]
      112 JUMPIFNOTEQKS                    R6 K3 ["Output"] ; [+4]
      114 GETTABLEKS                       R5 R0 K19 ["disconnectedPinName"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R5
      118 SETTABLEKS                       R5 R4 K16 ["specificInputPinName"]
      120 CALL                             R3 1 1
      121 GETUPVAL                         R4 5
      122 GETTABLEKS                       R4 R4 K20 ["setMap"]
      124 NEWTABLE                         R5 2 0
      126 SETTABLEKS                       R3 R5 K21 ["global"]
      128 SETTABLE                         R3 R5 R2
      129 CALL                             R4 1 0
      130 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observe"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 JUMPIFNOT                        R6 ; [+43]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K0 ["get"]
       11 GETTABLEKS                       R8 R6 K1 ["nodeId"]
       13 CALL                             R7 1 1
       14 JUMPIFEQKNIL                     R7 ; [+36]
       16 GETTABLEKS                       R8 R6 K2 ["position"]
       18 GETTABLEKS                       R9 R7 K3 ["pendingNetworkPosition"]
       20 JUMPIFNOTEQ                      R8 R9 ; [+30]
       22 GETTABLEKS                       R8 R7 K4 ["delta"]
       24 JUMPIF                           R8 ; [+3]
       25 GETTABLEKS                       R8 R7 K5 ["origin"]
       27 JUMPIFNOT                        R8 ; [+16]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K6 ["set"]
       31 GETTABLEKS                       R9 R6 K1 ["nodeId"]
       33 DUPTABLE                         R10 K8 [{["delta"], ["origin"], ["pendingNetworkPosition"] = }]
       34 GETTABLEKS                       R11 R7 K4 ["delta"]
       36 SETTABLEKS                       R11 R10 K4 ["delta"]
       38 GETTABLEKS                       R11 R7 K5 ["origin"]
       40 SETTABLEKS                       R11 R10 K5 ["origin"]
       42 CALL                             R8 2 0
       43 JUMP                             ; [+7]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K6 ["set"]
       47 GETTABLEKS                       R9 R6 K1 ["nodeId"]
       49 LOADNIL                          R10
       50 CALL                             R8 2 0
       51 FORGLOOP                         R2 2 ; [-45]
       53 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R1 K0 ["pinNodeId"]
        9 CALL                             R2 1 1
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 JUMPIF                           R2 ; [+2]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 GETUPVAL                         R3 2
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+15]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K1 ["isValidVector2"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K1 ["isValidVector2"]
       27 GETTABLEKS                       R4 R1 K2 ["pinOffset"]
       29 CALL                             R3 1 1
       30 JUMPIF                           R3 ; [+2]
       31 LOADNIL                          R3
       32 RETURN                           R3 1
       33 GETTABLEKS                       R4 R1 K2 ["pinOffset"]
       35 ADD                              R3 R2 R4
       36 RETURN                           R3 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observe"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+12]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["Experimental"]
       11 GETTABLEKS                       R2 R2 K2 ["createComputed"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K3 ["switchMap"]
       23 MOVE                             R3 R1
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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
       15 JUMPIFNOT                        R5 ; [+25]
       16 GETTABLEKS                       R5 R4 K4 ["selectedNodesOffset"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K5 ["get"]
       24 MOVE                             R11 R8
       25 CALL                             R10 1 1
       26 DUPTABLE                         R11 K10 [{["selectedNodesOffset"] = , ["origin"] = , ["delta"], ["pendingNetworkPosition"]}]
       27 GETTABLEKS                       R12 R4 K8 ["delta"]
       29 SETTABLEKS                       R12 R11 K8 ["delta"]
       31 JUMPIFNOT                        R10 ; [+3]
       32 GETTABLEKS                       R12 R10 K9 ["pendingNetworkPosition"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R12
       36 SETTABLEKS                       R12 R11 K9 ["pendingNetworkPosition"]
       38 SETTABLE                         R11 R3 R8
       39 FORGLOOP                         R5 2 ; [-19]
       41 RETURN                           R3 1

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setMap"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R3 1
        4 SETTABLE                         R1 R3 R0
        5 GETUPVAL                         R3 0
        6 DUPTABLE                         R4 K4 [{[1] = , ["delta"] = , ["pendingNetworkPosition"]}]
        7 SETTABLEKS                       R1 R4 K3 ["pendingNetworkPosition"]
        9 SETTABLE                         R4 R3 R0
       10 RETURN                           R0 0
       11 JUMPIFNOT                        R2 ; [+13]
       12 GETTABLEKS                       R3 R2 K3 ["pendingNetworkPosition"]
       14 JUMPIFNOT                        R3 ; [+10]
       15 GETUPVAL                         R3 0
       16 DUPTABLE                         R4 K5 [{"pendingNetworkPosition"}]
       17 MOVE                             R5 R2
       18 JUMPIFNOT                        R5 ; [+2]
       19 GETTABLEKS                       R5 R2 K3 ["pendingNetworkPosition"]
       21 SETTABLEKS                       R5 R4 K3 ["pendingNetworkPosition"]
       23 SETTABLE                         R4 R3 R0
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 0
       26 LOADNIL                          R4
       27 SETTABLE                         R4 R3 R0
       28 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observe"]
        3 LOADK                            R1 K1 ["global"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_36:
        0 DUPTABLE                         R0 K17 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded", "observeNodePreviewData", "observeNodePosition", "pushAnchor", "observeAnchorPosition", "observeCollapsedPinPosition", "getAnchorData", "onStartDrag", "DEPRECATED_onStartDrag", "onMouseUp", "onMouseMoved", "DEPRECATED_onDragMoved", "DEPRECATED_onDragEnded"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeGlobalCurvePreviewInfo"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K18 ["observe"]
        7 SETTABLEKS                       R1 R0 K1 ["observeCurvePreviewInfo"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K2 ["onDragNodeStart"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K3 ["onDragNodeMoved"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K4 ["onDragNodeEnded"]
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K18 ["observe"]
       21 SETTABLEKS                       R1 R0 K5 ["observeNodePreviewData"]
       23 GETUPVAL                         R1 6
       24 SETTABLEKS                       R1 R0 K6 ["observeNodePosition"]
       26 GETUPVAL                         R1 7
       27 SETTABLEKS                       R1 R0 K7 ["pushAnchor"]
       29 GETUPVAL                         R1 8
       30 SETTABLEKS                       R1 R0 K8 ["observeAnchorPosition"]
       32 GETUPVAL                         R1 9
       33 SETTABLEKS                       R1 R0 K9 ["observeCollapsedPinPosition"]
       35 GETUPVAL                         R1 10
       36 GETTABLEKS                       R1 R1 K19 ["get"]
       38 SETTABLEKS                       R1 R0 K10 ["getAnchorData"]
       40 GETUPVAL                         R2 11
       41 JUMPIFNOT                        R2 ; [+2]
       42 GETUPVAL                         R1 12
       43 JUMP                             ; [+1]
       44 GETUPVAL                         R1 13
       45 SETTABLEKS                       R1 R0 K11 ["onStartDrag"]
       47 GETUPVAL                         R2 11
       48 JUMPIFNOT                        R2 ; [+2]
       49 GETUPVAL                         R1 14
       50 JUMP                             ; [+1]
       51 GETUPVAL                         R1 15
       52 SETTABLEKS                       R1 R0 K12 ["DEPRECATED_onStartDrag"]
       54 GETUPVAL                         R1 16
       55 SETTABLEKS                       R1 R0 K13 ["onMouseUp"]
       57 GETUPVAL                         R1 17
       58 SETTABLEKS                       R1 R0 K14 ["onMouseMoved"]
       60 GETUPVAL                         R1 18
       61 SETTABLEKS                       R1 R0 K15 ["DEPRECATED_onDragMoved"]
       63 GETUPVAL                         R1 19
       64 SETTABLEKS                       R1 R0 K16 ["DEPRECATED_onDragEnded"]
       66 RETURN                           R0 1

PROTO_37:
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
       83 GETUPVAL                         R12 10
       84 CALL                             R12 0 1
       85 JUMPIFNOT                        R12 ; [+15]
       86 GETUPVAL                         R12 0
       87 JUMPIFNOT                        R12 ; [+13]
       88 GETUPVAL                         R11 11
       89 GETTABLEKS                       R11 R11 K10 ["useEventCallback"]
       91 NEWCLOSURE                       R12 P3
       92 CAPTURE                          VAL R10
       93 CAPTURE                          UPVAL U12
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          VAL R3
       96 CAPTURE                          UPVAL U13
       97 CAPTURE                          UPVAL U14
       98 CAPTURE                          VAL R6
       99 CALL                             R11 1 1
      100 JUMP                             ; [+1]
      101 LOADNIL                          R11
      102 GETUPVAL                         R13 10
      103 CALL                             R13 0 1
      104 JUMPIF                           R13 ; [+15]
      105 GETUPVAL                         R13 0
      106 JUMPIFNOT                        R13 ; [+13]
      107 GETUPVAL                         R12 11
      108 GETTABLEKS                       R12 R12 K10 ["useEventCallback"]
      110 NEWCLOSURE                       R13 P4
      111 CAPTURE                          VAL R10
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          UPVAL U9
      114 CAPTURE                          VAL R3
      115 CAPTURE                          UPVAL U13
      116 CAPTURE                          UPVAL U14
      117 CAPTURE                          VAL R6
      118 CALL                             R12 1 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R12
      121 GETUPVAL                         R14 0
      122 JUMPIFNOT                        R14 ; [+12]
      123 GETUPVAL                         R13 11
      124 GETTABLEKS                       R13 R13 K10 ["useEventCallback"]
      126 NEWCLOSURE                       R14 P5
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R6
      129 CAPTURE                          UPVAL U13
      130 CAPTURE                          UPVAL U14
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R9
      133 CALL                             R13 1 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R13
      136 GETUPVAL                         R15 10
      137 CALL                             R15 0 1
      138 JUMPIFNOT                        R15 ; [+20]
      139 GETUPVAL                         R15 0
      140 JUMPIF                           R15 ; [+18]
      141 GETUPVAL                         R14 1
      142 GETTABLEKS                       R14 R14 K3 ["useCallback"]
      144 NEWCLOSURE                       R15 P6
      145 CAPTURE                          UPVAL U12
      146 CAPTURE                          UPVAL U9
      147 CAPTURE                          VAL R3
      148 CAPTURE                          UPVAL U13
      149 CAPTURE                          UPVAL U14
      150 CAPTURE                          VAL R6
      151 NEWTABLE                         R16 0 1
      153 GETTABLEKS                       R17 R6 K11 ["setMap"]
      155 SETLIST                          R16 R17 1 [1]
      157 CALL                             R14 2 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R14
      160 GETUPVAL                         R16 10
      161 CALL                             R16 0 1
      162 JUMPIF                           R16 ; [+2]
      163 GETUPVAL                         R16 0
      164 JUMPIFNOT                        R16 ; [+2]
      165 LOADNIL                          R15
      166 JUMP                             ; [+17]
      167 GETUPVAL                         R15 1
      168 GETTABLEKS                       R15 R15 K3 ["useCallback"]
      170 NEWCLOSURE                       R16 P7
      171 CAPTURE                          UPVAL U12
      172 CAPTURE                          UPVAL U9
      173 CAPTURE                          VAL R3
      174 CAPTURE                          UPVAL U13
      175 CAPTURE                          UPVAL U14
      176 CAPTURE                          VAL R6
      177 NEWTABLE                         R17 0 1
      179 GETTABLEKS                       R18 R6 K11 ["setMap"]
      181 SETLIST                          R17 R18 1 [1]
      183 CALL                             R15 2 1
      184 GETUPVAL                         R17 0
      185 JUMPIFNOT                        R17 ; [+2]
      186 LOADNIL                          R16
      187 JUMP                             ; [+16]
      188 GETUPVAL                         R16 1
      189 GETTABLEKS                       R16 R16 K3 ["useCallback"]
      191 NEWCLOSURE                       R17 P8
      192 CAPTURE                          VAL R6
      193 CAPTURE                          UPVAL U13
      194 CAPTURE                          UPVAL U14
      195 CAPTURE                          VAL R9
      196 NEWTABLE                         R18 0 2
      198 MOVE                             R19 R9
      199 GETTABLEKS                       R20 R6 K11 ["setMap"]
      201 SETLIST                          R18 R19 2 [1]
      203 CALL                             R16 2 1
      204 GETUPVAL                         R17 1
      205 GETTABLEKS                       R17 R17 K3 ["useCallback"]
      207 NEWCLOSURE                       R18 P9
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R9
      210 CAPTURE                          UPVAL U13
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R2
      213 CAPTURE                          UPVAL U15
      214 CAPTURE                          UPVAL U0
      215 CAPTURE                          VAL R10
      216 NEWTABLE                         R19 0 7
      218 GETTABLEKS                       R20 R6 K8 ["get"]
      220 GETTABLEKS                       R21 R6 K11 ["setMap"]
      222 MOVE                             R22 R9
      223 GETTABLEKS                       R23 R3 K12 ["setNodeConnection"]
      225 GETTABLEKS                       R24 R3 K13 ["removeNodeInputConnectionAsync"]
      227 GETTABLEKS                       R25 R3 K14 ["removeNodeOutputConnectionAsync"]
      229 GETTABLEKS                       R26 R2 K15 ["showMenu"]
      231 SETLIST                          R19 R20 7 [1]
      233 CALL                             R17 2 1
      234 GETUPVAL                         R18 11
      235 GETTABLEKS                       R18 R18 K10 ["useEventCallback"]
      237 NEWCLOSURE                       R19 P10
      238 CAPTURE                          VAL R10
      239 CAPTURE                          VAL R17
      240 CAPTURE                          VAL R1
      241 CALL                             R18 1 1
      242 GETUPVAL                         R19 1
      243 GETTABLEKS                       R19 R19 K16 ["useEffect"]
      245 NEWCLOSURE                       R20 P11
      246 CAPTURE                          UPVAL U8
      247 CAPTURE                          VAL R4
      248 CAPTURE                          VAL R3
      249 CAPTURE                          UPVAL U16
      250 NEWTABLE                         R21 0 2
      252 GETTABLEKS                       R22 R3 K6 ["nodeRenderInfoDispatcher"]
      254 GETTABLEKS                       R22 R22 K5 ["observe"]
      256 GETTABLEKS                       R23 R4 K17 ["observeMap"]
      258 SETLIST                          R21 R22 2 [1]
      260 CALL                             R19 2 0
      261 GETUPVAL                         R19 1
      262 GETTABLEKS                       R19 R19 K3 ["useCallback"]
      264 NEWCLOSURE                       R20 P12
      265 CAPTURE                          VAL R5
      266 CAPTURE                          UPVAL U10
      267 CAPTURE                          UPVAL U8
      268 CAPTURE                          VAL R8
      269 CAPTURE                          UPVAL U6
      270 CAPTURE                          UPVAL U7
      271 NEWTABLE                         R21 0 2
      273 GETTABLEKS                       R22 R5 K8 ["get"]
      275 MOVE                             R23 R8
      276 SETLIST                          R21 R22 2 [1]
      278 CALL                             R19 2 1
      279 GETUPVAL                         R20 1
      280 GETTABLEKS                       R20 R20 K3 ["useCallback"]
      282 NEWCLOSURE                       R21 P13
      283 CAPTURE                          VAL R8
      284 CAPTURE                          UPVAL U8
      285 CAPTURE                          UPVAL U9
      286 NEWTABLE                         R22 0 2
      288 GETTABLEKS                       R23 R5 K8 ["get"]
      290 MOVE                             R24 R8
      291 SETLIST                          R22 R23 2 [1]
      293 CALL                             R20 2 1
      294 GETUPVAL                         R21 1
      295 GETTABLEKS                       R21 R21 K3 ["useCallback"]
      297 NEWCLOSURE                       R22 P14
      298 CAPTURE                          VAL R5
      299 NEWTABLE                         R23 0 2
      301 GETTABLEKS                       R24 R5 K8 ["get"]
      303 GETTABLEKS                       R25 R5 K18 ["set"]
      305 SETLIST                          R23 R24 2 [1]
      307 CALL                             R21 2 1
      308 GETUPVAL                         R22 1
      309 GETTABLEKS                       R22 R22 K3 ["useCallback"]
      311 NEWCLOSURE                       R23 P15
      312 CAPTURE                          VAL R4
      313 NEWTABLE                         R24 0 2
      315 GETTABLEKS                       R25 R4 K8 ["get"]
      317 GETTABLEKS                       R26 R4 K18 ["set"]
      319 SETLIST                          R24 R25 2 [1]
      321 CALL                             R22 2 1
      322 GETUPVAL                         R23 1
      323 GETTABLEKS                       R23 R23 K3 ["useCallback"]
      325 NEWCLOSURE                       R24 P16
      326 CAPTURE                          VAL R3
      327 CAPTURE                          VAL R7
      328 CAPTURE                          VAL R4
      329 NEWTABLE                         R25 0 3
      331 GETTABLEKS                       R26 R3 K6 ["nodeRenderInfoDispatcher"]
      333 GETTABLEKS                       R26 R26 K17 ["observeMap"]
      335 MOVE                             R27 R7
      336 MOVE                             R28 R22
      337 SETLIST                          R25 R26 3 [1]
      339 CALL                             R23 2 1
      340 GETUPVAL                         R24 1
      341 GETTABLEKS                       R24 R24 K3 ["useCallback"]
      343 NEWCLOSURE                       R25 P17
      344 CAPTURE                          VAL R4
      345 CAPTURE                          VAL R22
      346 NEWTABLE                         R26 0 1
      348 GETTABLEKS                       R27 R4 K8 ["get"]
      350 SETLIST                          R26 R27 1 [1]
      352 CALL                             R24 2 1
      353 GETUPVAL                         R25 1
      354 GETTABLEKS                       R25 R25 K3 ["useCallback"]
      356 NEWCLOSURE                       R26 P18
      357 CAPTURE                          VAL R23
      358 CAPTURE                          VAL R4
      359 CAPTURE                          VAL R24
      360 NEWTABLE                         R27 0 3
      362 GETTABLEKS                       R28 R4 K11 ["setMap"]
      364 MOVE                             R29 R24
      365 MOVE                             R30 R23
      366 SETLIST                          R27 R28 3 [1]
      368 CALL                             R25 2 1
      369 GETUPVAL                         R26 1
      370 GETTABLEKS                       R26 R26 K3 ["useCallback"]
      372 NEWCLOSURE                       R27 P19
      373 CAPTURE                          VAL R4
      374 CAPTURE                          VAL R24
      375 NEWTABLE                         R28 0 2
      377 GETTABLEKS                       R29 R4 K11 ["setMap"]
      379 MOVE                             R30 R24
      380 SETLIST                          R28 R29 2 [1]
      382 CALL                             R26 2 1
      383 GETUPVAL                         R27 1
      384 GETTABLEKS                       R27 R27 K3 ["useCallback"]
      386 NEWCLOSURE                       R28 P20
      387 CAPTURE                          VAL R4
      388 CAPTURE                          VAL R22
      389 CAPTURE                          VAL R3
      390 CAPTURE                          VAL R7
      391 NEWTABLE                         R29 0 5
      393 GETTABLEKS                       R30 R4 K11 ["setMap"]
      395 MOVE                             R31 R22
      396 GETTABLEKS                       R32 R3 K6 ["nodeRenderInfoDispatcher"]
      398 GETTABLEKS                       R32 R32 K5 ["observe"]
      400 MOVE                             R33 R7
      401 GETTABLEKS                       R34 R4 K7 ["getMap"]
      403 SETLIST                          R29 R30 5 [1]
      405 CALL                             R27 2 1
      406 GETUPVAL                         R28 1
      407 GETTABLEKS                       R28 R28 K19 ["useMemo"]
      409 NEWCLOSURE                       R29 P21
      410 CAPTURE                          VAL R6
      411 NEWTABLE                         R30 0 1
      413 GETTABLEKS                       R31 R6 K5 ["observe"]
      415 SETLIST                          R30 R31 1 [1]
      417 CALL                             R28 2 1
      418 GETUPVAL                         R29 1
      419 GETTABLEKS                       R29 R29 K19 ["useMemo"]
      421 NEWCLOSURE                       R30 P22
      422 CAPTURE                          VAL R28
      423 CAPTURE                          VAL R6
      424 CAPTURE                          VAL R25
      425 CAPTURE                          VAL R26
      426 CAPTURE                          VAL R27
      427 CAPTURE                          VAL R4
      428 CAPTURE                          VAL R8
      429 CAPTURE                          VAL R21
      430 CAPTURE                          VAL R19
      431 CAPTURE                          VAL R20
      432 CAPTURE                          VAL R5
      433 CAPTURE                          UPVAL U0
      434 CAPTURE                          VAL R11
      435 CAPTURE                          VAL R14
      436 CAPTURE                          VAL R12
      437 CAPTURE                          VAL R15
      438 CAPTURE                          VAL R18
      439 CAPTURE                          VAL R13
      440 CAPTURE                          VAL R16
      441 CAPTURE                          VAL R17
      442 NEWTABLE                         R31 0 19
      444 MOVE                             R32 R28
      445 GETTABLEKS                       R33 R6 K5 ["observe"]
      447 MOVE                             R34 R25
      448 MOVE                             R35 R26
      449 MOVE                             R36 R27
      450 GETTABLEKS                       R37 R4 K5 ["observe"]
      452 MOVE                             R38 R8
      453 MOVE                             R39 R21
      454 MOVE                             R40 R19
      455 MOVE                             R41 R20
      456 GETTABLEKS                       R42 R5 K8 ["get"]
      458 MOVE                             R43 R11
      459 MOVE                             R44 R14
      460 MOVE                             R45 R12
      461 MOVE                             R46 R15
      462 MOVE                             R47 R18
      463 SETLIST                          R31 R32 16 [1]
      465 MOVE                             R32 R13
      466 MOVE                             R33 R16
      467 MOVE                             R34 R17
      468 SETLIST                          R31 R32 3 [17]
      470 CALL                             R29 2 1
      471 GETUPVAL                         R30 1
      472 GETTABLEKS                       R30 R30 K20 ["createElement"]
      474 GETUPVAL                         R31 17
      475 GETTABLEKS                       R31 R31 K21 ["Provider"]
      477 DUPTABLE                         R32 K23 [{"value"}]
      478 SETTABLEKS                       R29 R32 K22 ["value"]
      480 GETTABLEKS                       R33 R0 K24 ["children"]
      482 CALL                             R30 3 -1
      483 RETURN                           R30 -1

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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
       98 GETTABLEKS                       R15 R15 K23 ["getFFlagAnimGraphUIImplementNoodleDragging"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K7 ["Flags"]
      105 GETTABLEKS                       R16 R16 K24 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K7 ["Flags"]
      112 GETTABLEKS                       R17 R17 K25 ["getFFlagAnimGraphUI_RunTimeDebug"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K19 ["Util"]
      119 GETTABLEKS                       R18 R18 K26 ["getPinAnchorKey"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K5 [require]
      124 GETTABLEKS                       R19 R0 K27 ["Hooks"]
      126 GETTABLEKS                       R19 R19 K28 ["useSignalDispatcher"]
      128 CALL                             R18 1 1
      129 DUPTABLE                         R19 K46 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "pushAnchor", "getAnchorData", "observeNodePreviewData", "observeAnchorPosition", "observeNodePosition", "observeCollapsedPinPosition", "onStartDrag", "DEPRECATED_onStartDrag", "onMouseUp", "onMouseMoved", "DEPRECATED_onDragMoved", "DEPRECATED_onDragEnded", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded"}]
      130 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      132 LOADK                            R21 K29 ["observeGlobalCurvePreviewInfo"]
      133 CALL                             R20 1 1
      134 SETTABLEKS                       R20 R19 K29 ["observeGlobalCurvePreviewInfo"]
      136 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      138 LOADK                            R21 K30 ["observeCurvePreviewInfo"]
      139 CALL                             R20 1 1
      140 SETTABLEKS                       R20 R19 K30 ["observeCurvePreviewInfo"]
      142 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      144 LOADK                            R21 K31 ["pushAnchor"]
      145 CALL                             R20 1 1
      146 SETTABLEKS                       R20 R19 K31 ["pushAnchor"]
      148 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      150 LOADK                            R21 K32 ["getAnchorData"]
      151 CALL                             R20 1 1
      152 SETTABLEKS                       R20 R19 K32 ["getAnchorData"]
      154 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      156 LOADK                            R21 K33 ["observeNodePreviewData"]
      157 CALL                             R20 1 1
      158 SETTABLEKS                       R20 R19 K33 ["observeNodePreviewData"]
      160 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      162 LOADK                            R21 K34 ["observeAnchorPosition"]
      163 CALL                             R20 1 1
      164 SETTABLEKS                       R20 R19 K34 ["observeAnchorPosition"]
      166 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      168 LOADK                            R21 K35 ["observeNodePosition"]
      169 CALL                             R20 1 1
      170 SETTABLEKS                       R20 R19 K35 ["observeNodePosition"]
      172 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      174 LOADK                            R21 K36 ["observeCollapsedPinPosition"]
      175 CALL                             R20 1 1
      176 SETTABLEKS                       R20 R19 K36 ["observeCollapsedPinPosition"]
      178 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      180 LOADK                            R21 K37 ["onStartDrag"]
      181 CALL                             R20 1 1
      182 SETTABLEKS                       R20 R19 K37 ["onStartDrag"]
      184 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      186 LOADK                            R21 K38 ["DEPRECATED_onStartDrag"]
      187 CALL                             R20 1 1
      188 SETTABLEKS                       R20 R19 K38 ["DEPRECATED_onStartDrag"]
      190 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      192 LOADK                            R21 K39 ["onMouseUp"]
      193 CALL                             R20 1 1
      194 SETTABLEKS                       R20 R19 K39 ["onMouseUp"]
      196 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      198 LOADK                            R21 K40 ["onMouseMoved"]
      199 CALL                             R20 1 1
      200 SETTABLEKS                       R20 R19 K40 ["onMouseMoved"]
      202 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      204 LOADK                            R21 K48 ["onDragMoved"]
      205 CALL                             R20 1 1
      206 SETTABLEKS                       R20 R19 K41 ["DEPRECATED_onDragMoved"]
      208 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      210 LOADK                            R21 K49 ["onDragEnded"]
      211 CALL                             R20 1 1
      212 SETTABLEKS                       R20 R19 K42 ["DEPRECATED_onDragEnded"]
      214 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      216 LOADK                            R21 K43 ["onDragNodeStart"]
      217 CALL                             R20 1 1
      218 SETTABLEKS                       R20 R19 K43 ["onDragNodeStart"]
      220 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      222 LOADK                            R21 K44 ["onDragNodeMoved"]
      223 CALL                             R20 1 1
      224 SETTABLEKS                       R20 R19 K44 ["onDragNodeMoved"]
      226 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      228 LOADK                            R21 K45 ["onDragNodeEnded"]
      229 CALL                             R20 1 1
      230 SETTABLEKS                       R20 R19 K45 ["onDragNodeEnded"]
      232 GETTABLEKS                       R20 R7 K50 ["createContext"]
      234 MOVE                             R21 R19
      235 CALL                             R20 1 1
      236 DUPCLOSURE                       R21 K51 [PROTO_37]
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R4
      240 CAPTURE                          VAL R5
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R18
      243 CAPTURE                          VAL R16
      244 CAPTURE                          VAL R11
      245 CAPTURE                          VAL R10
      246 CAPTURE                          VAL R1
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R8
      249 CAPTURE                          VAL R13
      250 CAPTURE                          VAL R15
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R9
      254 CAPTURE                          VAL R20
      255 DUPCLOSURE                       R22 K52 [PROTO_40]
      256 CAPTURE                          VAL R7
      257 CAPTURE                          VAL R20
      258 CAPTURE                          VAL R8
      259 DUPTABLE                         R23 K56 [{"Context", "Provider", "InputDetector"}]
      260 SETTABLEKS                       R20 R23 K53 ["Context"]
      262 SETTABLEKS                       R21 R23 K54 ["Provider"]
      264 SETTABLEKS                       R22 R23 K55 ["InputDetector"]
      266 RETURN                           R23 1
