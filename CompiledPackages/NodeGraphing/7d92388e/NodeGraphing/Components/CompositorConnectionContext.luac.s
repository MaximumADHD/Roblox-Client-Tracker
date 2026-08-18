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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sourcePinDataType"]
        3 JUMPIFNOTEQKS                    R1 K1 ["Parameter"] ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["sourcePinDynamicIndex"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R0
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["sourcePinNodeId"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["sourcePinSide"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K5 ["sourcePinName"]
       20 MOVE                             R5 R0
       21 CALL                             R1 4 1
       22 GETIMPORT                        R2 K8 [table.freeze]
       24 DUPTABLE                         R3 K13 [{"sourcePinNodeId", "sourcePinName", "sourcePinDataType", "sourcePinSide", "sourcePinValue", "sourcePinDynamicIndex", "specificInputPinNodeId", "specificInputPinName", "isCurveDrag"}]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K3 ["sourcePinNodeId"]
       28 SETTABLEKS                       R4 R3 K3 ["sourcePinNodeId"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K5 ["sourcePinName"]
       33 SETTABLEKS                       R4 R3 K5 ["sourcePinName"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K0 ["sourcePinDataType"]
       38 SETTABLEKS                       R4 R3 K0 ["sourcePinDataType"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K4 ["sourcePinSide"]
       43 SETTABLEKS                       R4 R3 K4 ["sourcePinSide"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K9 ["sourcePinValue"]
       48 SETTABLEKS                       R4 R3 K9 ["sourcePinValue"]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K2 ["sourcePinDynamicIndex"]
       53 SETTABLEKS                       R4 R3 K2 ["sourcePinDynamicIndex"]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K4 ["sourcePinSide"]
       58 JUMPIFNOTEQKS                    R5 K14 ["Output"] ; [+5]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K15 ["disconnectedPinNodeId"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R4
       65 SETTABLEKS                       R4 R3 K10 ["specificInputPinNodeId"]
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R5 R5 K4 ["sourcePinSide"]
       70 JUMPIFNOTEQKS                    R5 K14 ["Output"] ; [+5]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K16 ["disconnectedPinName"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R4
       77 SETTABLEKS                       R4 R3 K11 ["specificInputPinName"]
       79 GETUPVAL                         R5 2
       80 CALL                             R5 0 1
       81 JUMPIFNOT                        R5 ; [+4]
       82 GETUPVAL                         R4 0
       83 GETTABLEKS                       R4 R4 K12 ["isCurveDrag"]
       85 JUMP                             ; [+1]
       86 LOADNIL                          R4
       87 SETTABLEKS                       R4 R3 K12 ["isCurveDrag"]
       89 CALL                             R2 1 1
       90 GETUPVAL                         R3 3
       91 GETTABLEKS                       R3 R3 K17 ["setMap"]
       93 NEWTABLE                         R4 2 0
       95 SETTABLEKS                       R2 R4 K18 ["global"]
       97 SETTABLE                         R2 R4 R1
       98 CALL                             R3 1 0
       99 RETURN                           R0 0

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
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 SETTABLEKS                       R3 R2 K13 ["startDragging"]
       54 SETTABLEKS                       R2 R1 K0 ["current"]
       56 RETURN                           R0 0

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
       53 GETTABLEKS                       R4 R2 K13 ["sourcePinDataType"]
       55 JUMPIFNOTEQKS                    R4 K14 ["Parameter"] ; [+4]
       57 GETTABLEKS                       R3 R2 K15 ["sourcePinDynamicIndex"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R3
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R5 R2 K16 ["sourcePinNodeId"]
       64 GETTABLEKS                       R6 R2 K17 ["sourcePinSide"]
       66 GETTABLEKS                       R7 R2 K18 ["sourcePinName"]
       68 MOVE                             R8 R3
       69 CALL                             R4 4 1
       70 GETUPVAL                         R5 3
       71 GETTABLEKS                       R5 R5 K19 ["absToPlot"]
       73 MOVE                             R6 R0
       74 CALL                             R5 1 1
       75 GETUPVAL                         R6 4
       76 MOVE                             R7 R5
       77 CALL                             R6 1 2
       78 JUMPIFNOT                        R6 ; [+47]
       79 JUMPIFNOT                        R7 ; [+46]
       80 GETIMPORT                        R8 K22 [table.clone]
       82 MOVE                             R9 R2
       83 CALL                             R8 1 1
       84 GETTABLEKS                       R9 R6 K23 ["pinName"]
       86 SETTABLEKS                       R9 R8 K24 ["targetPinName"]
       88 SETTABLEKS                       R7 R8 K25 ["targetPinPosition"]
       90 GETTABLEKS                       R9 R6 K26 ["pinNodeId"]
       92 SETTABLEKS                       R9 R8 K27 ["targetPinNodeId"]
       94 GETTABLEKS                       R9 R6 K28 ["pinDynamicIndex"]
       96 SETTABLEKS                       R9 R8 K29 ["targetPinDynamicIndex"]
       98 GETTABLEKS                       R10 R6 K30 ["pinDataType"]
      100 JUMPIFNOTEQKS                    R10 K14 ["Parameter"] ; [+4]
      102 GETTABLEKS                       R9 R6 K28 ["pinDynamicIndex"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R9
      106 GETUPVAL                         R10 2
      107 GETTABLEKS                       R11 R6 K26 ["pinNodeId"]
      109 GETTABLEKS                       R12 R6 K31 ["pinSide"]
      111 GETTABLEKS                       R13 R6 K23 ["pinName"]
      113 MOVE                             R14 R9
      114 CALL                             R10 4 1
      115 GETUPVAL                         R11 1
      116 GETTABLEKS                       R11 R11 K32 ["setMap"]
      118 NEWTABLE                         R12 4 0
      120 SETTABLEKS                       R8 R12 K12 ["global"]
      122 SETTABLE                         R8 R12 R4
      123 SETTABLE                         R8 R12 R10
      124 CALL                             R11 1 0
      125 RETURN                           R0 0
      126 GETIMPORT                        R8 K22 [table.clone]
      128 MOVE                             R9 R2
      129 CALL                             R8 1 1
      130 LOADNIL                          R9
      131 SETTABLEKS                       R9 R8 K24 ["targetPinName"]
      133 SETTABLEKS                       R5 R8 K25 ["targetPinPosition"]
      135 LOADNIL                          R9
      136 SETTABLEKS                       R9 R8 K27 ["targetPinNodeId"]
      138 GETUPVAL                         R9 1
      139 GETTABLEKS                       R9 R9 K32 ["setMap"]
      141 NEWTABLE                         R10 2 0
      143 SETTABLEKS                       R8 R10 K12 ["global"]
      145 SETTABLE                         R8 R10 R4
      146 CALL                             R9 1 0
      147 RETURN                           R0 0

PROTO_7:
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
       35 GETTABLEKS                       R2 R0 K0 ["sourcePinDataType"]
       37 JUMPIFNOTEQKS                    R2 K9 ["Parameter"] ; [+4]
       39 GETTABLEKS                       R1 R0 K10 ["sourcePinDynamicIndex"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R1
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R3 R0 K5 ["sourcePinNodeId"]
       46 GETTABLEKS                       R4 R0 K2 ["sourcePinSide"]
       48 GETTABLEKS                       R5 R0 K6 ["sourcePinName"]
       50 MOVE                             R6 R1
       51 CALL                             R2 4 1
       52 GETIMPORT                        R3 K13 [table.freeze]
       54 DUPTABLE                         R4 K18 [{"sourcePinNodeId", "sourcePinName", "sourcePinDataType", "sourcePinSide", "sourcePinValue", "sourcePinDynamicIndex", "specificInputPinNodeId", "specificInputPinName", "isCurveDrag"}]
       55 GETTABLEKS                       R5 R0 K5 ["sourcePinNodeId"]
       57 SETTABLEKS                       R5 R4 K5 ["sourcePinNodeId"]
       59 GETTABLEKS                       R5 R0 K6 ["sourcePinName"]
       61 SETTABLEKS                       R5 R4 K6 ["sourcePinName"]
       63 GETTABLEKS                       R5 R0 K0 ["sourcePinDataType"]
       65 SETTABLEKS                       R5 R4 K0 ["sourcePinDataType"]
       67 GETTABLEKS                       R5 R0 K2 ["sourcePinSide"]
       69 SETTABLEKS                       R5 R4 K2 ["sourcePinSide"]
       71 GETTABLEKS                       R5 R0 K14 ["sourcePinValue"]
       73 SETTABLEKS                       R5 R4 K14 ["sourcePinValue"]
       75 GETTABLEKS                       R5 R0 K10 ["sourcePinDynamicIndex"]
       77 SETTABLEKS                       R5 R4 K10 ["sourcePinDynamicIndex"]
       79 GETTABLEKS                       R6 R0 K2 ["sourcePinSide"]
       81 JUMPIFNOTEQKS                    R6 K3 ["Output"] ; [+4]
       83 GETTABLEKS                       R5 R0 K19 ["disconnectedPinNodeId"]
       85 JUMP                             ; [+1]
       86 LOADNIL                          R5
       87 SETTABLEKS                       R5 R4 K15 ["specificInputPinNodeId"]
       89 GETTABLEKS                       R6 R0 K2 ["sourcePinSide"]
       91 JUMPIFNOTEQKS                    R6 K3 ["Output"] ; [+4]
       93 GETTABLEKS                       R5 R0 K20 ["disconnectedPinName"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R5
       97 SETTABLEKS                       R5 R4 K16 ["specificInputPinName"]
       99 GETTABLEKS                       R6 R0 K19 ["disconnectedPinNodeId"]
      101 JUMPIFNOTEQKNIL                  R6 ; [+2]
      103 LOADB                            R5 0 +1
      104 LOADB                            R5 1
      105 SETTABLEKS                       R5 R4 K17 ["isCurveDrag"]
      107 CALL                             R3 1 1
      108 GETUPVAL                         R4 4
      109 GETTABLEKS                       R4 R4 K21 ["setMap"]
      111 NEWTABLE                         R5 2 0
      113 SETTABLEKS                       R3 R5 K22 ["global"]
      115 SETTABLE                         R3 R5 R2
      116 CALL                             R4 1 0
      117 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 LOADK                            R2 K1 ["global"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R1 K2 ["sourcePinDataType"]
       10 JUMPIFNOTEQKS                    R3 K3 ["Parameter"] ; [+4]
       12 GETTABLEKS                       R2 R1 K4 ["sourcePinDynamicIndex"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R4 R1 K5 ["sourcePinNodeId"]
       19 GETTABLEKS                       R5 R1 K6 ["sourcePinSide"]
       21 GETTABLEKS                       R6 R1 K7 ["sourcePinName"]
       23 MOVE                             R7 R2
       24 CALL                             R3 4 1
       25 GETUPVAL                         R4 2
       26 MOVE                             R5 R0
       27 CALL                             R4 1 2
       28 JUMPIFNOT                        R4 ; [+47]
       29 JUMPIFNOT                        R5 ; [+46]
       30 GETIMPORT                        R6 K10 [table.clone]
       32 MOVE                             R7 R1
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R4 K11 ["pinName"]
       36 SETTABLEKS                       R7 R6 K12 ["targetPinName"]
       38 SETTABLEKS                       R5 R6 K13 ["targetPinPosition"]
       40 GETTABLEKS                       R7 R4 K14 ["pinNodeId"]
       42 SETTABLEKS                       R7 R6 K15 ["targetPinNodeId"]
       44 GETTABLEKS                       R7 R4 K16 ["pinDynamicIndex"]
       46 SETTABLEKS                       R7 R6 K17 ["targetPinDynamicIndex"]
       48 GETTABLEKS                       R8 R4 K18 ["pinDataType"]
       50 JUMPIFNOTEQKS                    R8 K3 ["Parameter"] ; [+4]
       52 GETTABLEKS                       R7 R4 K16 ["pinDynamicIndex"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R7
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R9 R4 K14 ["pinNodeId"]
       59 GETTABLEKS                       R10 R4 K19 ["pinSide"]
       61 GETTABLEKS                       R11 R4 K11 ["pinName"]
       63 MOVE                             R12 R7
       64 CALL                             R8 4 1
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R9 R9 K20 ["setMap"]
       68 NEWTABLE                         R10 4 0
       70 SETTABLEKS                       R6 R10 K1 ["global"]
       72 SETTABLE                         R6 R10 R3
       73 SETTABLE                         R6 R10 R8
       74 CALL                             R9 1 0
       75 RETURN                           R0 0
       76 GETIMPORT                        R6 K10 [table.clone]
       78 MOVE                             R7 R1
       79 CALL                             R6 1 1
       80 LOADNIL                          R7
       81 SETTABLEKS                       R7 R6 K12 ["targetPinName"]
       83 SETTABLEKS                       R0 R6 K13 ["targetPinPosition"]
       85 LOADNIL                          R7
       86 SETTABLEKS                       R7 R6 K15 ["targetPinNodeId"]
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K20 ["setMap"]
       91 NEWTABLE                         R8 2 0
       93 SETTABLEKS                       R6 R8 K1 ["global"]
       95 SETTABLE                         R6 R8 R3
       96 CALL                             R7 1 0
       97 RETURN                           R0 0

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
       18 JUMPIFNOTEQKS                    R8 K3 ["Output"] ; [+13]
       20 GETTABLEKS                       R5 R1 K4 ["sourcePinNodeId"]
       22 GETTABLEKS                       R6 R1 K5 ["sourcePinName"]
       24 JUMPIFNOT                        R2 ; [+27]
       25 GETTABLEKS                       R3 R2 K6 ["pinNodeId"]
       27 GETTABLEKS                       R4 R2 K7 ["pinName"]
       29 GETTABLEKS                       R7 R2 K8 ["pinDynamicIndex"]
       31 JUMP                             ; [+20]
       32 GETTABLEKS                       R8 R1 K2 ["sourcePinSide"]
       34 JUMPIFNOTEQKS                    R8 K9 ["Input"] ; [+13]
       36 GETTABLEKS                       R3 R1 K4 ["sourcePinNodeId"]
       38 GETTABLEKS                       R4 R1 K5 ["sourcePinName"]
       40 GETTABLEKS                       R7 R1 K10 ["sourcePinDynamicIndex"]
       42 JUMPIFNOT                        R2 ; [+9]
       43 GETTABLEKS                       R5 R2 K6 ["pinNodeId"]
       45 GETTABLEKS                       R6 R2 K7 ["pinName"]
       47 JUMP                             ; [+4]
       48 GETIMPORT                        R8 K12 [error]
       50 LOADK                            R9 K13 ["Bad sourcePin state"]
       51 CALL                             R8 1 0
       52 GETIMPORT                        R8 K16 [table.freeze]
       54 DUPTABLE                         R9 K19 [{"sourcePinNodeId", "sourcePinName", "sourcePinSide", "sourcePinDataType", "sourcePinValue", "sourcePinDynamicIndex"}]
       55 GETTABLEKS                       R10 R1 K4 ["sourcePinNodeId"]
       57 SETTABLEKS                       R10 R9 K4 ["sourcePinNodeId"]
       59 GETTABLEKS                       R10 R1 K5 ["sourcePinName"]
       61 SETTABLEKS                       R10 R9 K5 ["sourcePinName"]
       63 GETTABLEKS                       R10 R1 K2 ["sourcePinSide"]
       65 SETTABLEKS                       R10 R9 K2 ["sourcePinSide"]
       67 GETTABLEKS                       R10 R1 K17 ["sourcePinDataType"]
       69 SETTABLEKS                       R10 R9 K17 ["sourcePinDataType"]
       71 GETTABLEKS                       R10 R1 K18 ["sourcePinValue"]
       73 SETTABLEKS                       R10 R9 K18 ["sourcePinValue"]
       75 GETTABLEKS                       R10 R1 K10 ["sourcePinDynamicIndex"]
       77 SETTABLEKS                       R10 R9 K10 ["sourcePinDynamicIndex"]
       79 CALL                             R8 1 1
       80 JUMPIFNOT                        R3 ; [+19]
       81 JUMPIFNOT                        R4 ; [+18]
       82 JUMPIFNOT                        R5 ; [+17]
       83 JUMPIFNOT                        R6 ; [+16]
       84 GETUPVAL                         R9 2
       85 GETTABLEKS                       R9 R9 K20 ["setNodeConnection"]
       87 MOVE                             R10 R3
       88 MOVE                             R11 R4
       89 MOVE                             R12 R5
       90 MOVE                             R13 R6
       91 GETTABLEKS                       R15 R1 K17 ["sourcePinDataType"]
       93 JUMPIFNOTEQKS                    R15 K21 ["Parameter"] ; [+3]
       95 MOVE                             R14 R7
       96 JUMP                             ; [+1]
       97 LOADNIL                          R14
       98 CALL                             R9 5 0
       99 JUMP                             ; [+76]
      100 JUMPIFNOT                        R3 ; [+29]
      101 JUMPIFNOT                        R4 ; [+28]
      102 GETTABLEKS                       R10 R1 K17 ["sourcePinDataType"]
      104 JUMPIFNOTEQKS                    R10 K21 ["Parameter"] ; [+3]
      106 MOVE                             R9 R7
      107 JUMP                             ; [+1]
      108 LOADNIL                          R9
      109 GETUPVAL                         R10 2
      110 GETTABLEKS                       R10 R10 K22 ["removeNodeInputConnectionAsync"]
      112 MOVE                             R11 R3
      113 MOVE                             R12 R4
      114 MOVE                             R13 R9
      115 CALL                             R10 3 1
      116 JUMPIF                           R10 ; [+59]
      117 GETUPVAL                         R10 3
      118 CALL                             R10 0 1
      119 JUMPIFNOT                        R10 ; [+3]
      120 GETTABLEKS                       R10 R1 K23 ["isCurveDrag"]
      122 JUMPIF                           R10 ; [+53]
      123 GETUPVAL                         R10 4
      124 GETTABLEKS                       R10 R10 K24 ["showMenu"]
      126 MOVE                             R11 R0
      127 MOVE                             R12 R8
      128 CALL                             R10 2 0
      129 JUMP                             ; [+46]
      130 JUMPIFNOT                        R5 ; [+41]
      131 JUMPIFNOT                        R6 ; [+40]
      132 GETUPVAL                         R9 2
      133 GETTABLEKS                       R9 R9 K25 ["removeNodeOutputConnectionAsync"]
      135 MOVE                             R10 R5
      136 MOVE                             R11 R6
      137 CALL                             R9 2 1
      138 JUMPIF                           R9 ; [+37]
      139 GETUPVAL                         R9 5
      140 CALL                             R9 0 1
      141 JUMPIFNOT                        R9 ; [+17]
      142 GETTABLEKS                       R9 R8 K17 ["sourcePinDataType"]
      144 JUMPIFEQKS                       R9 K21 ["Parameter"] ; [+31]
      146 GETUPVAL                         R9 3
      147 CALL                             R9 0 1
      148 JUMPIFNOT                        R9 ; [+3]
      149 GETTABLEKS                       R9 R1 K23 ["isCurveDrag"]
      151 JUMPIF                           R9 ; [+24]
      152 GETUPVAL                         R9 4
      153 GETTABLEKS                       R9 R9 K24 ["showMenu"]
      155 MOVE                             R10 R0
      156 MOVE                             R11 R8
      157 CALL                             R9 2 0
      158 JUMP                             ; [+17]
      159 GETUPVAL                         R9 3
      160 CALL                             R9 0 1
      161 JUMPIFNOT                        R9 ; [+3]
      162 GETTABLEKS                       R9 R1 K23 ["isCurveDrag"]
      164 JUMPIF                           R9 ; [+11]
      165 GETUPVAL                         R9 4
      166 GETTABLEKS                       R9 R9 K24 ["showMenu"]
      168 MOVE                             R10 R0
      169 MOVE                             R11 R8
      170 CALL                             R9 2 0
      171 JUMP                             ; [+4]
      172 GETIMPORT                        R9 K27 [warn]
      174 LOADK                            R10 K28 ["Bad state"]
      175 CALL                             R9 1 0
      176 GETUPVAL                         R9 0
      177 GETTABLEKS                       R9 R9 K29 ["setMap"]
      179 NEWTABLE                         R10 0 0
      181 CALL                             R9 1 0
      182 GETUPVAL                         R9 6
      183 JUMPIFNOT                        R9 ; [+5]
      184 GETIMPORT                        R9 K32 [task.defer]
      186 NEWCLOSURE                       R10 P0
      187 CAPTURE                          UPVAL U7
      188 CALL                             R9 1 0
      189 RETURN                           R0 0

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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observe"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["Experimental"]
        8 GETTABLEKS                       R2 R2 K2 ["createComputed"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setMap"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observe"]
        3 LOADK                            R1 K1 ["global"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_31:
        0 DUPTABLE                         R0 K16 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded", "observeNodePreviewData", "observeNodePosition", "pushAnchor", "observeAnchorPosition", "observeCollapsedPinPosition", "getAnchorData", "onStartDrag", "onMouseUp", "onMouseMoved", "DEPRECATED_onDragMoved", "DEPRECATED_onDragEnded"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeGlobalCurvePreviewInfo"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K17 ["observe"]
        7 SETTABLEKS                       R1 R0 K1 ["observeCurvePreviewInfo"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K2 ["onDragNodeStart"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K3 ["onDragNodeMoved"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K4 ["onDragNodeEnded"]
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K17 ["observe"]
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
       36 GETTABLEKS                       R1 R1 K18 ["get"]
       38 SETTABLEKS                       R1 R0 K10 ["getAnchorData"]
       40 GETUPVAL                         R2 11
       41 JUMPIFNOT                        R2 ; [+2]
       42 GETUPVAL                         R1 12
       43 JUMP                             ; [+1]
       44 GETUPVAL                         R1 13
       45 SETTABLEKS                       R1 R0 K11 ["onStartDrag"]
       47 GETUPVAL                         R1 14
       48 SETTABLEKS                       R1 R0 K12 ["onMouseUp"]
       50 GETUPVAL                         R1 15
       51 SETTABLEKS                       R1 R0 K13 ["onMouseMoved"]
       53 GETUPVAL                         R1 16
       54 SETTABLEKS                       R1 R0 K14 ["DEPRECATED_onDragMoved"]
       56 GETUPVAL                         R1 17
       57 SETTABLEKS                       R1 R0 K15 ["DEPRECATED_onDragEnded"]
       59 RETURN                           R0 1

PROTO_32:
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
      100 JUMPIFNOT                        R13 ; [+11]
      101 GETUPVAL                         R12 10
      102 GETTABLEKS                       R12 R12 K10 ["useEventCallback"]
      104 NEWCLOSURE                       R13 P4
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R6
      107 CAPTURE                          UPVAL U12
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R9
      110 CALL                             R12 1 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R12
      113 GETUPVAL                         R14 0
      114 JUMPIF                           R14 ; [+17]
      115 GETUPVAL                         R13 1
      116 GETTABLEKS                       R13 R13 K3 ["useCallback"]
      118 NEWCLOSURE                       R14 P5
      119 CAPTURE                          UPVAL U11
      120 CAPTURE                          UPVAL U9
      121 CAPTURE                          VAL R3
      122 CAPTURE                          UPVAL U12
      123 CAPTURE                          VAL R6
      124 NEWTABLE                         R15 0 1
      126 GETTABLEKS                       R16 R6 K11 ["setMap"]
      128 SETLIST                          R15 R16 1 [1]
      130 CALL                             R13 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R13
      133 GETUPVAL                         R15 0
      134 JUMPIFNOT                        R15 ; [+2]
      135 LOADNIL                          R14
      136 JUMP                             ; [+15]
      137 GETUPVAL                         R14 1
      138 GETTABLEKS                       R14 R14 K3 ["useCallback"]
      140 NEWCLOSURE                       R15 P6
      141 CAPTURE                          VAL R6
      142 CAPTURE                          UPVAL U12
      143 CAPTURE                          VAL R9
      144 NEWTABLE                         R16 0 2
      146 MOVE                             R17 R9
      147 GETTABLEKS                       R18 R6 K11 ["setMap"]
      149 SETLIST                          R16 R17 2 [1]
      151 CALL                             R14 2 1
      152 GETUPVAL                         R15 1
      153 GETTABLEKS                       R15 R15 K3 ["useCallback"]
      155 NEWCLOSURE                       R16 P7
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R3
      159 CAPTURE                          UPVAL U13
      160 CAPTURE                          VAL R2
      161 CAPTURE                          UPVAL U14
      162 CAPTURE                          UPVAL U0
      163 CAPTURE                          VAL R10
      164 NEWTABLE                         R17 0 7
      166 GETTABLEKS                       R18 R6 K8 ["get"]
      168 GETTABLEKS                       R19 R6 K11 ["setMap"]
      170 MOVE                             R20 R9
      171 GETTABLEKS                       R21 R3 K12 ["setNodeConnection"]
      173 GETTABLEKS                       R22 R3 K13 ["removeNodeInputConnectionAsync"]
      175 GETTABLEKS                       R23 R3 K14 ["removeNodeOutputConnectionAsync"]
      177 GETTABLEKS                       R24 R2 K15 ["showMenu"]
      179 SETLIST                          R17 R18 7 [1]
      181 CALL                             R15 2 1
      182 GETUPVAL                         R16 10
      183 GETTABLEKS                       R16 R16 K10 ["useEventCallback"]
      185 NEWCLOSURE                       R17 P8
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R1
      189 CALL                             R16 1 1
      190 GETUPVAL                         R17 1
      191 GETTABLEKS                       R17 R17 K16 ["useEffect"]
      193 NEWCLOSURE                       R18 P9
      194 CAPTURE                          UPVAL U8
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R3
      197 CAPTURE                          UPVAL U15
      198 NEWTABLE                         R19 0 2
      200 GETTABLEKS                       R20 R3 K6 ["nodeRenderInfoDispatcher"]
      202 GETTABLEKS                       R20 R20 K5 ["observe"]
      204 GETTABLEKS                       R21 R4 K17 ["observeMap"]
      206 SETLIST                          R19 R20 2 [1]
      208 CALL                             R17 2 0
      209 GETUPVAL                         R17 1
      210 GETTABLEKS                       R17 R17 K3 ["useCallback"]
      212 NEWCLOSURE                       R18 P10
      213 CAPTURE                          VAL R5
      214 CAPTURE                          UPVAL U8
      215 CAPTURE                          VAL R8
      216 CAPTURE                          UPVAL U6
      217 CAPTURE                          UPVAL U7
      218 NEWTABLE                         R19 0 2
      220 GETTABLEKS                       R20 R5 K8 ["get"]
      222 MOVE                             R21 R8
      223 SETLIST                          R19 R20 2 [1]
      225 CALL                             R17 2 1
      226 GETUPVAL                         R18 1
      227 GETTABLEKS                       R18 R18 K3 ["useCallback"]
      229 NEWCLOSURE                       R19 P11
      230 CAPTURE                          VAL R8
      231 CAPTURE                          UPVAL U8
      232 CAPTURE                          UPVAL U9
      233 NEWTABLE                         R20 0 2
      235 GETTABLEKS                       R21 R5 K8 ["get"]
      237 MOVE                             R22 R8
      238 SETLIST                          R20 R21 2 [1]
      240 CALL                             R18 2 1
      241 GETUPVAL                         R19 1
      242 GETTABLEKS                       R19 R19 K3 ["useCallback"]
      244 NEWCLOSURE                       R20 P12
      245 CAPTURE                          VAL R5
      246 NEWTABLE                         R21 0 2
      248 GETTABLEKS                       R22 R5 K8 ["get"]
      250 GETTABLEKS                       R23 R5 K18 ["set"]
      252 SETLIST                          R21 R22 2 [1]
      254 CALL                             R19 2 1
      255 GETUPVAL                         R20 1
      256 GETTABLEKS                       R20 R20 K3 ["useCallback"]
      258 NEWCLOSURE                       R21 P13
      259 CAPTURE                          VAL R4
      260 NEWTABLE                         R22 0 2
      262 GETTABLEKS                       R23 R4 K8 ["get"]
      264 GETTABLEKS                       R24 R4 K18 ["set"]
      266 SETLIST                          R22 R23 2 [1]
      268 CALL                             R20 2 1
      269 GETUPVAL                         R21 1
      270 GETTABLEKS                       R21 R21 K3 ["useCallback"]
      272 NEWCLOSURE                       R22 P14
      273 CAPTURE                          VAL R3
      274 CAPTURE                          VAL R7
      275 CAPTURE                          VAL R4
      276 NEWTABLE                         R23 0 3
      278 GETTABLEKS                       R24 R3 K6 ["nodeRenderInfoDispatcher"]
      280 GETTABLEKS                       R24 R24 K17 ["observeMap"]
      282 MOVE                             R25 R7
      283 MOVE                             R26 R20
      284 SETLIST                          R23 R24 3 [1]
      286 CALL                             R21 2 1
      287 GETUPVAL                         R22 1
      288 GETTABLEKS                       R22 R22 K3 ["useCallback"]
      290 NEWCLOSURE                       R23 P15
      291 CAPTURE                          VAL R4
      292 CAPTURE                          VAL R20
      293 NEWTABLE                         R24 0 1
      295 GETTABLEKS                       R25 R4 K8 ["get"]
      297 SETLIST                          R24 R25 1 [1]
      299 CALL                             R22 2 1
      300 GETUPVAL                         R23 1
      301 GETTABLEKS                       R23 R23 K3 ["useCallback"]
      303 NEWCLOSURE                       R24 P16
      304 CAPTURE                          VAL R21
      305 CAPTURE                          VAL R4
      306 CAPTURE                          VAL R22
      307 NEWTABLE                         R25 0 3
      309 GETTABLEKS                       R26 R4 K11 ["setMap"]
      311 MOVE                             R27 R22
      312 MOVE                             R28 R21
      313 SETLIST                          R25 R26 3 [1]
      315 CALL                             R23 2 1
      316 GETUPVAL                         R24 1
      317 GETTABLEKS                       R24 R24 K3 ["useCallback"]
      319 NEWCLOSURE                       R25 P17
      320 CAPTURE                          VAL R4
      321 CAPTURE                          VAL R22
      322 NEWTABLE                         R26 0 2
      324 GETTABLEKS                       R27 R4 K11 ["setMap"]
      326 MOVE                             R28 R22
      327 SETLIST                          R26 R27 2 [1]
      329 CALL                             R24 2 1
      330 GETUPVAL                         R25 1
      331 GETTABLEKS                       R25 R25 K3 ["useCallback"]
      333 NEWCLOSURE                       R26 P18
      334 CAPTURE                          VAL R4
      335 CAPTURE                          VAL R20
      336 CAPTURE                          VAL R3
      337 CAPTURE                          VAL R7
      338 NEWTABLE                         R27 0 5
      340 GETTABLEKS                       R28 R4 K11 ["setMap"]
      342 MOVE                             R29 R20
      343 GETTABLEKS                       R30 R3 K6 ["nodeRenderInfoDispatcher"]
      345 GETTABLEKS                       R30 R30 K5 ["observe"]
      347 MOVE                             R31 R7
      348 GETTABLEKS                       R32 R4 K7 ["getMap"]
      350 SETLIST                          R27 R28 5 [1]
      352 CALL                             R25 2 1
      353 GETUPVAL                         R26 1
      354 GETTABLEKS                       R26 R26 K19 ["useMemo"]
      356 NEWCLOSURE                       R27 P19
      357 CAPTURE                          VAL R6
      358 NEWTABLE                         R28 0 1
      360 GETTABLEKS                       R29 R6 K5 ["observe"]
      362 SETLIST                          R28 R29 1 [1]
      364 CALL                             R26 2 1
      365 GETUPVAL                         R27 1
      366 GETTABLEKS                       R27 R27 K19 ["useMemo"]
      368 NEWCLOSURE                       R28 P20
      369 CAPTURE                          VAL R26
      370 CAPTURE                          VAL R6
      371 CAPTURE                          VAL R23
      372 CAPTURE                          VAL R24
      373 CAPTURE                          VAL R25
      374 CAPTURE                          VAL R4
      375 CAPTURE                          VAL R8
      376 CAPTURE                          VAL R19
      377 CAPTURE                          VAL R17
      378 CAPTURE                          VAL R18
      379 CAPTURE                          VAL R5
      380 CAPTURE                          UPVAL U0
      381 CAPTURE                          VAL R11
      382 CAPTURE                          VAL R13
      383 CAPTURE                          VAL R16
      384 CAPTURE                          VAL R12
      385 CAPTURE                          VAL R14
      386 CAPTURE                          VAL R15
      387 NEWTABLE                         R29 0 17
      389 MOVE                             R30 R26
      390 GETTABLEKS                       R31 R6 K5 ["observe"]
      392 MOVE                             R32 R23
      393 MOVE                             R33 R24
      394 MOVE                             R34 R25
      395 GETTABLEKS                       R35 R4 K5 ["observe"]
      397 MOVE                             R36 R8
      398 MOVE                             R37 R19
      399 MOVE                             R38 R17
      400 MOVE                             R39 R18
      401 GETTABLEKS                       R40 R5 K8 ["get"]
      403 MOVE                             R41 R11
      404 MOVE                             R42 R13
      405 MOVE                             R43 R16
      406 MOVE                             R44 R12
      407 MOVE                             R45 R14
      408 SETLIST                          R29 R30 16 [1]
      410 MOVE                             R30 R15
      411 SETLIST                          R29 R30 1 [17]
      413 CALL                             R27 2 1
      414 GETUPVAL                         R28 1
      415 GETTABLEKS                       R28 R28 K20 ["createElement"]
      417 GETUPVAL                         R29 16
      418 GETTABLEKS                       R29 R29 K21 ["Provider"]
      420 DUPTABLE                         R30 K23 [{"value"}]
      421 SETTABLEKS                       R27 R30 K22 ["value"]
      423 GETTABLEKS                       R31 R0 K24 ["children"]
      425 CALL                             R28 3 -1
      426 RETURN                           R28 -1

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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
       84 GETTABLEKS                       R13 R13 K21 ["getFFlagAnimGraphUIDifferentiatePinCurveDrag"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K7 ["Flags"]
       91 GETTABLEKS                       R14 R14 K22 ["getFFlagAnimGraphUIDisableDisconnectedParameterOutputDragging"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K7 ["Flags"]
       98 GETTABLEKS                       R15 R15 K23 ["getFFlagAnimGraphUIDisconnectOnStartDrag"]
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
      122 DUPTABLE                         R18 K44 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "pushAnchor", "getAnchorData", "observeNodePreviewData", "observeAnchorPosition", "observeNodePosition", "observeCollapsedPinPosition", "onStartDrag", "onMouseUp", "onMouseMoved", "DEPRECATED_onDragMoved", "DEPRECATED_onDragEnded", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded"}]
      123 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      125 LOADK                            R20 K28 ["observeGlobalCurvePreviewInfo"]
      126 CALL                             R19 1 1
      127 SETTABLEKS                       R19 R18 K28 ["observeGlobalCurvePreviewInfo"]
      129 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      131 LOADK                            R20 K29 ["observeCurvePreviewInfo"]
      132 CALL                             R19 1 1
      133 SETTABLEKS                       R19 R18 K29 ["observeCurvePreviewInfo"]
      135 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      137 LOADK                            R20 K30 ["pushAnchor"]
      138 CALL                             R19 1 1
      139 SETTABLEKS                       R19 R18 K30 ["pushAnchor"]
      141 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      143 LOADK                            R20 K31 ["getAnchorData"]
      144 CALL                             R19 1 1
      145 SETTABLEKS                       R19 R18 K31 ["getAnchorData"]
      147 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      149 LOADK                            R20 K32 ["observeNodePreviewData"]
      150 CALL                             R19 1 1
      151 SETTABLEKS                       R19 R18 K32 ["observeNodePreviewData"]
      153 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      155 LOADK                            R20 K33 ["observeAnchorPosition"]
      156 CALL                             R19 1 1
      157 SETTABLEKS                       R19 R18 K33 ["observeAnchorPosition"]
      159 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      161 LOADK                            R20 K34 ["observeNodePosition"]
      162 CALL                             R19 1 1
      163 SETTABLEKS                       R19 R18 K34 ["observeNodePosition"]
      165 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      167 LOADK                            R20 K35 ["observeCollapsedPinPosition"]
      168 CALL                             R19 1 1
      169 SETTABLEKS                       R19 R18 K35 ["observeCollapsedPinPosition"]
      171 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      173 LOADK                            R20 K36 ["onStartDrag"]
      174 CALL                             R19 1 1
      175 SETTABLEKS                       R19 R18 K36 ["onStartDrag"]
      177 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      179 LOADK                            R20 K37 ["onMouseUp"]
      180 CALL                             R19 1 1
      181 SETTABLEKS                       R19 R18 K37 ["onMouseUp"]
      183 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      185 LOADK                            R20 K38 ["onMouseMoved"]
      186 CALL                             R19 1 1
      187 SETTABLEKS                       R19 R18 K38 ["onMouseMoved"]
      189 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      191 LOADK                            R20 K46 ["onDragMoved"]
      192 CALL                             R19 1 1
      193 SETTABLEKS                       R19 R18 K39 ["DEPRECATED_onDragMoved"]
      195 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      197 LOADK                            R20 K47 ["onDragEnded"]
      198 CALL                             R19 1 1
      199 SETTABLEKS                       R19 R18 K40 ["DEPRECATED_onDragEnded"]
      201 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      203 LOADK                            R20 K41 ["onDragNodeStart"]
      204 CALL                             R19 1 1
      205 SETTABLEKS                       R19 R18 K41 ["onDragNodeStart"]
      207 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      209 LOADK                            R20 K42 ["onDragNodeMoved"]
      210 CALL                             R19 1 1
      211 SETTABLEKS                       R19 R18 K42 ["onDragNodeMoved"]
      213 GETTABLEKS                       R19 R8 K45 ["createUnimplemented"]
      215 LOADK                            R20 K43 ["onDragNodeEnded"]
      216 CALL                             R19 1 1
      217 SETTABLEKS                       R19 R18 K43 ["onDragNodeEnded"]
      219 GETTABLEKS                       R19 R7 K48 ["createContext"]
      221 MOVE                             R20 R18
      222 CALL                             R19 1 1
      223 DUPCLOSURE                       R20 K49 [PROTO_32]
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R5
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R15
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R10
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R16
      237 CAPTURE                          VAL R12
      238 CAPTURE                          VAL R13
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R19
      241 DUPCLOSURE                       R21 K50 [PROTO_35]
      242 CAPTURE                          VAL R7
      243 CAPTURE                          VAL R19
      244 CAPTURE                          VAL R8
      245 DUPTABLE                         R22 K54 [{"Context", "Provider", "InputDetector"}]
      246 SETTABLEKS                       R19 R22 K51 ["Context"]
      248 SETTABLEKS                       R20 R22 K52 ["Provider"]
      250 SETTABLEKS                       R21 R22 K53 ["InputDetector"]
      252 RETURN                           R22 1
