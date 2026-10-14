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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["sourcePinDataType"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["PARAMETER_NODE_CLASSNAME"]
        8 JUMPIFEQ                         R2 R3 ; [+3]
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 GETTABLEKS                       R3 R0 K2 ["sourcePinSide"]
       14 JUMPIFNOTEQKS                    R3 K3 ["Input"] ; [+4]
       16 GETTABLEKS                       R2 R0 K4 ["sourcePinDynamicIndex"]
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R2 R1 K5 ["pinDynamicIndex"]
       21 GETTABLEKS                       R4 R0 K2 ["sourcePinSide"]
       23 JUMPIFNOTEQKS                    R4 K3 ["Input"] ; [+4]
       25 GETTABLEKS                       R3 R0 K6 ["sourcePinInputId"]
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R3 R1 K7 ["pinInputId"]
       30 JUMPIFNOTEQKNIL                  R2 ; [+5]
       32 JUMPIFNOTEQKNIL                  R3 ; [+3]
       34 LOADB                            R4 0
       35 RETURN                           R4 1
       36 GETTABLEKS                       R5 R0 K2 ["sourcePinSide"]
       38 JUMPIFNOTEQKS                    R5 K8 ["Output"] ; [+4]
       40 GETTABLEKS                       R4 R0 K9 ["sourcePinNodeId"]
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R4 R1 K10 ["pinNodeId"]
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K11 ["nodePayloadDispatcher"]
       48 GETTABLEKS                       R5 R5 K12 ["get"]
       50 MOVE                             R6 R4
       51 CALL                             R5 1 1
       52 LOADB                            R6 0
       53 JUMPIFEQKNIL                     R5 ; [+7]
       55 GETTABLEKS                       R7 R5 K13 ["isValueNode"]
       57 JUMPIFEQKB                       R7 TRUE ; [+2]
       59 LOADB                            R6 0 +1
       60 LOADB                            R6 1
       61 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 LOADK                            R3 K1 ["global"]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+3]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETTABLEKS                       R4 R2 K2 ["sourcePinSide"]
       11 JUMPIFNOTEQKS                    R4 K3 ["Input"] ; [+3]
       13 LOADK                            R3 K4 ["Output"]
       14 JUMP                             ; [+1]
       15 LOADK                            R3 K3 ["Input"]
       16 GETTABLEKS                       R4 R2 K5 ["sourcePinDataType"]
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 LOADK                            R7 K6 [∞]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K7 ["getMap"]
       24 CALL                             R8 0 3
       25 FORGPREP                         R8
       26 GETTABLEKS                       R13 R12 K8 ["pinSide"]
       28 JUMPIFNOTEQ                      R13 R3 ; [+34]
       30 GETTABLEKS                       R13 R12 K9 ["pinDataType"]
       32 JUMPIFNOTEQ                      R13 R4 ; [+30]
       34 JUMPIF                           R1 ; [+5]
       35 GETUPVAL                         R13 2
       36 MOVE                             R14 R2
       37 MOVE                             R15 R12
       38 CALL                             R13 2 1
       39 JUMPIF                           R13 ; [+23]
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R14 R12 K10 ["pinNodeId"]
       43 CALL                             R13 1 1
       44 LOADB                            R14 0
       45 CALL                             R13 1 1
       46 JUMPIFNOT                        R13 ; [+16]
       47 GETTABLEKS                       R15 R12 K11 ["pinOffset"]
       49 ADD                              R14 R13 R15
       50 SUB                              R15 R0 R14
       51 GETTABLEKS                       R15 R15 K12 ["Magnitude"]
       53 JUMPIFNOTLT                      R15 R7 ; [+9]
       55 GETUPVAL                         R16 4
       56 GETTABLEKS                       R16 R16 K13 ["SNAP_DISTANCE"]
       58 JUMPIFNOTLT                      R15 R16 ; [+4]
       60 MOVE                             R7 R15
       61 MOVE                             R5 R12
       62 MOVE                             R6 R14
       63 FORGLOOP                         R8 2 ; [-38]
       65 RETURN                           R5 2

PROTO_5:
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
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K4 ["sourcePinSide"]
       24 JUMPIFNOTEQKS                    R7 K6 ["Input"] ; [+5]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K7 ["sourcePinInputId"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R6
       31 CALL                             R1 5 1
       32 GETIMPORT                        R2 K10 [table.freeze]
       34 DUPTABLE                         R3 K16 [{"sourcePinNodeId", "sourcePinName", "sourcePinDataType", "sourcePinSide", "sourcePinValue", "sourcePinDynamicIndex", "sourcePinInputId", "specificInputPinNodeId", "specificInputPinName", "specificInputPinInputId", "isCurveDrag"}]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K3 ["sourcePinNodeId"]
       38 SETTABLEKS                       R4 R3 K3 ["sourcePinNodeId"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K5 ["sourcePinName"]
       43 SETTABLEKS                       R4 R3 K5 ["sourcePinName"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K0 ["sourcePinDataType"]
       48 SETTABLEKS                       R4 R3 K0 ["sourcePinDataType"]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K4 ["sourcePinSide"]
       53 SETTABLEKS                       R4 R3 K4 ["sourcePinSide"]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K11 ["sourcePinValue"]
       58 SETTABLEKS                       R4 R3 K11 ["sourcePinValue"]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K2 ["sourcePinDynamicIndex"]
       63 SETTABLEKS                       R4 R3 K2 ["sourcePinDynamicIndex"]
       65 GETUPVAL                         R4 0
       66 GETTABLEKS                       R4 R4 K7 ["sourcePinInputId"]
       68 SETTABLEKS                       R4 R3 K7 ["sourcePinInputId"]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R5 R5 K4 ["sourcePinSide"]
       73 JUMPIFNOTEQKS                    R5 K17 ["Output"] ; [+5]
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K18 ["disconnectedPinNodeId"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R4
       80 SETTABLEKS                       R4 R3 K12 ["specificInputPinNodeId"]
       82 GETUPVAL                         R5 0
       83 GETTABLEKS                       R5 R5 K4 ["sourcePinSide"]
       85 JUMPIFNOTEQKS                    R5 K17 ["Output"] ; [+5]
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R4 R4 K19 ["disconnectedPinName"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R4
       92 SETTABLEKS                       R4 R3 K13 ["specificInputPinName"]
       94 GETUPVAL                         R5 0
       95 GETTABLEKS                       R5 R5 K4 ["sourcePinSide"]
       97 JUMPIFNOTEQKS                    R5 K17 ["Output"] ; [+5]
       99 GETUPVAL                         R4 0
      100 GETTABLEKS                       R4 R4 K20 ["disconnectedPinInputId"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R4
      104 SETTABLEKS                       R4 R3 K14 ["specificInputPinInputId"]
      106 GETUPVAL                         R5 2
      107 CALL                             R5 0 1
      108 JUMPIFNOT                        R5 ; [+4]
      109 GETUPVAL                         R4 0
      110 GETTABLEKS                       R4 R4 K15 ["isCurveDrag"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R4
      114 SETTABLEKS                       R4 R3 K15 ["isCurveDrag"]
      116 CALL                             R2 1 1
      117 GETUPVAL                         R3 3
      118 GETTABLEKS                       R3 R3 K21 ["setMap"]
      120 NEWTABLE                         R4 2 0
      122 SETTABLEKS                       R2 R4 K22 ["global"]
      124 SETTABLE                         R2 R4 R1
      125 CALL                             R3 1 0
      126 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R1 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["sourcePinDataType"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["DEFAULT_PIN_DATA_TYPE"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+41]
       13 GETTABLEKS                       R1 R0 K3 ["sourcePinSide"]
       15 JUMPIFNOTEQKS                    R1 K4 ["Output"] ; [+10]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K5 ["removeNodeOutputConnectionAsync"]
       20 GETTABLEKS                       R2 R0 K6 ["sourcePinNodeId"]
       22 GETTABLEKS                       R3 R0 K7 ["sourcePinName"]
       24 CALL                             R1 2 0
       25 JUMP                             ; [+27]
       26 GETTABLEKS                       R1 R0 K3 ["sourcePinSide"]
       28 JUMPIFNOTEQKS                    R1 K8 ["Input"] ; [+24]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K9 ["removeNodeInputConnectionAsync"]
       33 GETTABLEKS                       R2 R0 K6 ["sourcePinNodeId"]
       35 GETTABLEKS                       R3 R0 K7 ["sourcePinName"]
       37 GETTABLEKS                       R5 R0 K1 ["sourcePinDataType"]
       39 JUMPIFNOTEQKS                    R5 K10 ["Parameter"] ; [+4]
       41 GETTABLEKS                       R4 R0 K11 ["sourcePinDynamicIndex"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R4
       45 GETUPVAL                         R6 3
       46 CALL                             R6 0 1
       47 JUMPIFNOT                        R6 ; [+3]
       48 GETTABLEKS                       R5 R0 K12 ["sourcePinInputId"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R5
       52 CALL                             R1 4 0
       53 GETUPVAL                         R1 0
       54 DUPTABLE                         R2 K17 [{["startPosition"], ["dragState"] = "undecided", ["startDragging"]}]
       55 GETTABLEKS                       R3 R0 K18 ["position"]
       57 SETTABLEKS                       R3 R2 K13 ["startPosition"]
       59 NEWCLOSURE                       R3 P0
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          UPVAL U6
       64 SETTABLEKS                       R3 R2 K16 ["startDragging"]
       66 SETTABLEKS                       R2 R1 K0 ["current"]
       68 RETURN                           R0 0

PROTO_7:
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
       69 GETTABLEKS                       R10 R2 K17 ["sourcePinSide"]
       71 JUMPIFNOTEQKS                    R10 K19 ["Input"] ; [+4]
       73 GETTABLEKS                       R9 R2 K20 ["sourcePinInputId"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R9
       77 CALL                             R4 5 1
       78 GETUPVAL                         R5 3
       79 GETTABLEKS                       R5 R5 K21 ["absToPlot"]
       81 MOVE                             R6 R0
       82 CALL                             R5 1 1
       83 GETUPVAL                         R6 4
       84 MOVE                             R7 R5
       85 CALL                             R6 1 2
       86 JUMPIFNOT                        R6 ; [+59]
       87 JUMPIFNOT                        R7 ; [+58]
       88 GETIMPORT                        R8 K24 [table.clone]
       90 MOVE                             R9 R2
       91 CALL                             R8 1 1
       92 GETTABLEKS                       R9 R6 K25 ["pinName"]
       94 SETTABLEKS                       R9 R8 K26 ["targetPinName"]
       96 SETTABLEKS                       R7 R8 K27 ["targetPinPosition"]
       98 GETTABLEKS                       R9 R6 K28 ["pinNodeId"]
      100 SETTABLEKS                       R9 R8 K29 ["targetPinNodeId"]
      102 GETTABLEKS                       R9 R6 K30 ["pinDynamicIndex"]
      104 SETTABLEKS                       R9 R8 K31 ["targetPinDynamicIndex"]
      106 GETTABLEKS                       R9 R6 K32 ["pinInputId"]
      108 SETTABLEKS                       R9 R8 K33 ["targetPinInputId"]
      110 GETTABLEKS                       R10 R6 K34 ["pinDataType"]
      112 JUMPIFNOTEQKS                    R10 K14 ["Parameter"] ; [+4]
      114 GETTABLEKS                       R9 R6 K30 ["pinDynamicIndex"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R9
      118 GETUPVAL                         R10 2
      119 GETTABLEKS                       R11 R6 K28 ["pinNodeId"]
      121 GETTABLEKS                       R12 R6 K35 ["pinSide"]
      123 GETTABLEKS                       R13 R6 K25 ["pinName"]
      125 MOVE                             R14 R9
      126 GETTABLEKS                       R16 R6 K35 ["pinSide"]
      128 JUMPIFNOTEQKS                    R16 K19 ["Input"] ; [+4]
      130 GETTABLEKS                       R15 R6 K32 ["pinInputId"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R15
      134 CALL                             R10 5 1
      135 GETUPVAL                         R11 1
      136 GETTABLEKS                       R11 R11 K36 ["setMap"]
      138 NEWTABLE                         R12 4 0
      140 SETTABLEKS                       R8 R12 K12 ["global"]
      142 SETTABLE                         R8 R12 R4
      143 SETTABLE                         R8 R12 R10
      144 CALL                             R11 1 0
      145 RETURN                           R0 0
      146 GETIMPORT                        R8 K24 [table.clone]
      148 MOVE                             R9 R2
      149 CALL                             R8 1 1
      150 LOADNIL                          R9
      151 SETTABLEKS                       R9 R8 K26 ["targetPinName"]
      153 SETTABLEKS                       R5 R8 K27 ["targetPinPosition"]
      155 LOADNIL                          R9
      156 SETTABLEKS                       R9 R8 K29 ["targetPinNodeId"]
      158 GETUPVAL                         R9 1
      159 GETTABLEKS                       R9 R9 K36 ["setMap"]
      161 NEWTABLE                         R10 2 0
      163 SETTABLEKS                       R8 R10 K12 ["global"]
      165 SETTABLE                         R8 R10 R4
      166 CALL                             R9 1 0
      167 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setMap"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K3 [task.defer]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 LOADK                            R2 K1 ["global"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 LOADB                            R5 1
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+8]
       16 GETUPVAL                         R4 3
       17 MOVE                             R5 R1
       18 MOVE                             R6 R3
       19 CALL                             R4 2 1
       20 JUMPIFNOT                        R4 ; [+3]
       21 MOVE                             R4 R2
       22 CALL                             R4 0 0
       23 RETURN                           R0 0
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 GETTABLEKS                       R10 R1 K2 ["sourcePinSide"]
       32 JUMPIFNOTEQKS                    R10 K3 ["Output"] ; [+15]
       34 GETTABLEKS                       R6 R1 K4 ["sourcePinNodeId"]
       36 GETTABLEKS                       R7 R1 K5 ["sourcePinName"]
       38 JUMPIFNOT                        R3 ; [+31]
       39 GETTABLEKS                       R4 R3 K6 ["pinNodeId"]
       41 GETTABLEKS                       R5 R3 K7 ["pinName"]
       43 GETTABLEKS                       R8 R3 K8 ["pinDynamicIndex"]
       45 GETTABLEKS                       R9 R3 K9 ["pinInputId"]
       47 JUMP                             ; [+22]
       48 GETTABLEKS                       R10 R1 K2 ["sourcePinSide"]
       50 JUMPIFNOTEQKS                    R10 K10 ["Input"] ; [+15]
       52 GETTABLEKS                       R4 R1 K4 ["sourcePinNodeId"]
       54 GETTABLEKS                       R5 R1 K5 ["sourcePinName"]
       56 GETTABLEKS                       R8 R1 K11 ["sourcePinDynamicIndex"]
       58 GETTABLEKS                       R9 R1 K12 ["sourcePinInputId"]
       60 JUMPIFNOT                        R3 ; [+9]
       61 GETTABLEKS                       R6 R3 K6 ["pinNodeId"]
       63 GETTABLEKS                       R7 R3 K7 ["pinName"]
       65 JUMP                             ; [+4]
       66 GETIMPORT                        R10 K14 [error]
       68 LOADK                            R11 K15 ["Bad sourcePin state"]
       69 CALL                             R10 1 0
       70 GETIMPORT                        R10 K18 [table.freeze]
       72 DUPTABLE                         R11 K21 [{"sourcePinNodeId", "sourcePinName", "sourcePinSide", "sourcePinDataType", "sourcePinValue", "sourcePinDynamicIndex", "sourcePinInputId"}]
       73 GETTABLEKS                       R12 R1 K4 ["sourcePinNodeId"]
       75 SETTABLEKS                       R12 R11 K4 ["sourcePinNodeId"]
       77 GETTABLEKS                       R12 R1 K5 ["sourcePinName"]
       79 SETTABLEKS                       R12 R11 K5 ["sourcePinName"]
       81 GETTABLEKS                       R12 R1 K2 ["sourcePinSide"]
       83 SETTABLEKS                       R12 R11 K2 ["sourcePinSide"]
       85 GETTABLEKS                       R12 R1 K19 ["sourcePinDataType"]
       87 SETTABLEKS                       R12 R11 K19 ["sourcePinDataType"]
       89 GETTABLEKS                       R12 R1 K20 ["sourcePinValue"]
       91 SETTABLEKS                       R12 R11 K20 ["sourcePinValue"]
       93 GETTABLEKS                       R12 R1 K11 ["sourcePinDynamicIndex"]
       95 SETTABLEKS                       R12 R11 K11 ["sourcePinDynamicIndex"]
       97 GETTABLEKS                       R12 R1 K12 ["sourcePinInputId"]
       99 SETTABLEKS                       R12 R11 K12 ["sourcePinInputId"]
      101 CALL                             R10 1 1
      102 JUMPIFNOT                        R4 ; [+25]
      103 JUMPIFNOT                        R5 ; [+24]
      104 JUMPIFNOT                        R6 ; [+23]
      105 JUMPIFNOT                        R7 ; [+22]
      106 GETUPVAL                         R11 4
      107 GETTABLEKS                       R11 R11 K22 ["setNodeConnection"]
      109 MOVE                             R12 R4
      110 MOVE                             R13 R5
      111 MOVE                             R14 R6
      112 MOVE                             R15 R7
      113 GETTABLEKS                       R17 R1 K19 ["sourcePinDataType"]
      115 JUMPIFNOTEQKS                    R17 K23 ["Parameter"] ; [+3]
      117 MOVE                             R16 R8
      118 JUMP                             ; [+1]
      119 LOADNIL                          R16
      120 GETUPVAL                         R18 5
      121 CALL                             R18 0 1
      122 JUMPIFNOT                        R18 ; [+2]
      123 MOVE                             R17 R9
      124 JUMP                             ; [+1]
      125 LOADNIL                          R17
      126 CALL                             R11 6 0
      127 JUMP                             ; [+82]
      128 JUMPIFNOT                        R4 ; [+35]
      129 JUMPIFNOT                        R5 ; [+34]
      130 GETTABLEKS                       R12 R1 K19 ["sourcePinDataType"]
      132 JUMPIFNOTEQKS                    R12 K23 ["Parameter"] ; [+3]
      134 MOVE                             R11 R8
      135 JUMP                             ; [+1]
      136 LOADNIL                          R11
      137 GETUPVAL                         R12 4
      138 GETTABLEKS                       R12 R12 K24 ["removeNodeInputConnectionAsync"]
      140 MOVE                             R13 R4
      141 MOVE                             R14 R5
      142 MOVE                             R15 R11
      143 GETUPVAL                         R17 5
      144 CALL                             R17 0 1
      145 JUMPIFNOT                        R17 ; [+2]
      146 MOVE                             R16 R9
      147 JUMP                             ; [+1]
      148 LOADNIL                          R16
      149 CALL                             R12 4 1
      150 JUMPIF                           R12 ; [+59]
      151 GETUPVAL                         R12 6
      152 CALL                             R12 0 1
      153 JUMPIFNOT                        R12 ; [+3]
      154 GETTABLEKS                       R12 R1 K25 ["isCurveDrag"]
      156 JUMPIF                           R12 ; [+53]
      157 GETUPVAL                         R12 7
      158 GETTABLEKS                       R12 R12 K26 ["showMenu"]
      160 MOVE                             R13 R0
      161 MOVE                             R14 R10
      162 CALL                             R12 2 0
      163 JUMP                             ; [+46]
      164 JUMPIFNOT                        R6 ; [+41]
      165 JUMPIFNOT                        R7 ; [+40]
      166 GETUPVAL                         R11 4
      167 GETTABLEKS                       R11 R11 K27 ["removeNodeOutputConnectionAsync"]
      169 MOVE                             R12 R6
      170 MOVE                             R13 R7
      171 CALL                             R11 2 1
      172 JUMPIF                           R11 ; [+37]
      173 GETUPVAL                         R11 8
      174 CALL                             R11 0 1
      175 JUMPIFNOT                        R11 ; [+17]
      176 GETTABLEKS                       R11 R10 K19 ["sourcePinDataType"]
      178 JUMPIFEQKS                       R11 K23 ["Parameter"] ; [+31]
      180 GETUPVAL                         R11 6
      181 CALL                             R11 0 1
      182 JUMPIFNOT                        R11 ; [+3]
      183 GETTABLEKS                       R11 R1 K25 ["isCurveDrag"]
      185 JUMPIF                           R11 ; [+24]
      186 GETUPVAL                         R11 7
      187 GETTABLEKS                       R11 R11 K26 ["showMenu"]
      189 MOVE                             R12 R0
      190 MOVE                             R13 R10
      191 CALL                             R11 2 0
      192 JUMP                             ; [+17]
      193 GETUPVAL                         R11 6
      194 CALL                             R11 0 1
      195 JUMPIFNOT                        R11 ; [+3]
      196 GETTABLEKS                       R11 R1 K25 ["isCurveDrag"]
      198 JUMPIF                           R11 ; [+11]
      199 GETUPVAL                         R11 7
      200 GETTABLEKS                       R11 R11 K26 ["showMenu"]
      202 MOVE                             R12 R0
      203 MOVE                             R13 R10
      204 CALL                             R11 2 0
      205 JUMP                             ; [+4]
      206 GETIMPORT                        R11 K29 [warn]
      208 LOADK                            R12 K30 ["Bad state"]
      209 CALL                             R11 1 0
      210 MOVE                             R11 R2
      211 CALL                             R11 0 0
      212 RETURN                           R0 0

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
        7 JUMPIFNOT                        R6 ; [+63]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K0 ["get"]
       11 GETTABLEKS                       R8 R6 K1 ["nodeId"]
       13 CALL                             R7 1 1
       14 JUMPIFEQKNIL                     R7 ; [+56]
       16 GETTABLEKS                       R8 R7 K2 ["pendingNetworkPosition"]
       18 LOADNIL                          R9
       19 GETUPVAL                         R10 2
       20 JUMPIFNOT                        R10 ; [+12]
       21 LOADB                            R10 1
       22 JUMPIFEQKNIL                     R8 ; [+8]
       24 GETTABLEKS                       R11 R6 K3 ["position"]
       26 MOVE                             R13 R8
       27 NAMECALL                         R11 R11 K4 ["FuzzyEq"]
       29 CALL                             R11 2 1
       30 NOT                              R10 R11
       31 MOVE                             R9 R10
       32 JUMP                             ; [+8]
       33 GETTABLEKS                       R10 R6 K3 ["position"]
       35 GETTABLEKS                       R11 R7 K2 ["pendingNetworkPosition"]
       37 JUMPIFNOTEQ                      R10 R11 ; [+2]
       39 LOADB                            R9 0 +1
       40 LOADB                            R9 1
       41 JUMPIF                           R9 ; [+29]
       42 GETTABLEKS                       R10 R7 K5 ["delta"]
       44 JUMPIF                           R10 ; [+3]
       45 GETTABLEKS                       R10 R7 K6 ["origin"]
       47 JUMPIFNOT                        R10 ; [+16]
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K7 ["set"]
       51 GETTABLEKS                       R11 R6 K1 ["nodeId"]
       53 DUPTABLE                         R12 K9 [{["delta"], ["origin"], ["pendingNetworkPosition"] = }]
       54 GETTABLEKS                       R13 R7 K5 ["delta"]
       56 SETTABLEKS                       R13 R12 K5 ["delta"]
       58 GETTABLEKS                       R13 R7 K6 ["origin"]
       60 SETTABLEKS                       R13 R12 K6 ["origin"]
       62 CALL                             R10 2 0
       63 JUMP                             ; [+7]
       64 GETUPVAL                         R10 1
       65 GETTABLEKS                       R10 R10 K7 ["set"]
       67 GETTABLEKS                       R11 R6 K1 ["nodeId"]
       69 LOADNIL                          R12
       70 CALL                             R10 2 0
       71 FORGLOOP                         R2 2 ; [-65]
       73 RETURN                           R0 0

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
       21 CAPTURE                          UPVAL U4
       22 CALL                             R2 1 1
       23 NEWCLOSURE                       R3 P3
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1

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
        0 DUPTABLE                         R0 K14 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded", "observeNodePreviewData", "observeNodePosition", "pushAnchor", "observeAnchorPosition", "observeCollapsedPinPosition", "getAnchorData", "onStartDrag", "onMouseUp", "onMouseMoved"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeGlobalCurvePreviewInfo"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K15 ["observe"]
        7 SETTABLEKS                       R1 R0 K1 ["observeCurvePreviewInfo"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K2 ["onDragNodeStart"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K3 ["onDragNodeMoved"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K4 ["onDragNodeEnded"]
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K15 ["observe"]
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
       36 GETTABLEKS                       R1 R1 K16 ["get"]
       38 SETTABLEKS                       R1 R0 K10 ["getAnchorData"]
       40 GETUPVAL                         R1 11
       41 SETTABLEKS                       R1 R0 K11 ["onStartDrag"]
       43 GETUPVAL                         R1 12
       44 SETTABLEKS                       R1 R0 K12 ["onMouseUp"]
       46 GETUPVAL                         R1 13
       47 SETTABLEKS                       R1 R0 K13 ["onMouseMoved"]
       49 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CanvasContext"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K2 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 4
       22 CALL                             R4 0 1
       23 GETUPVAL                         R5 4
       24 CALL                             R5 0 1
       25 GETUPVAL                         R6 4
       26 CALL                             R6 0 1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       30 DUPCLOSURE                       R8 K4 [PROTO_0]
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 NEWTABLE                         R9 0 0
       35 CALL                             R7 2 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       39 NEWCLOSURE                       R9 P1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R7
       44 NEWTABLE                         R10 0 3
       46 GETTABLEKS                       R11 R4 K5 ["observe"]
       48 MOVE                             R12 R7
       49 GETTABLEKS                       R13 R3 K6 ["nodeRenderInfoDispatcher"]
       51 GETTABLEKS                       R13 R13 K5 ["observe"]
       53 SETLIST                          R10 R11 3 [1]
       55 CALL                             R8 2 1
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       59 NEWCLOSURE                       R10 P2
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          VAL R3
       63 NEWTABLE                         R11 0 1
       65 GETTABLEKS                       R12 R3 K7 ["nodePayloadDispatcher"]
       67 GETTABLEKS                       R12 R12 K8 ["get"]
       69 SETLIST                          R11 R12 1 [1]
       71 CALL                             R9 2 1
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       75 NEWCLOSURE                       R11 P3
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R8
       80 CAPTURE                          UPVAL U9
       81 NEWTABLE                         R12 0 4
       83 GETTABLEKS                       R13 R5 K9 ["getMap"]
       85 MOVE                             R14 R8
       86 GETTABLEKS                       R15 R6 K8 ["get"]
       88 MOVE                             R16 R9
       89 SETLIST                          R12 R13 4 [1]
       91 CALL                             R10 2 1
       92 GETUPVAL                         R11 0
       93 GETTABLEKS                       R11 R11 K10 ["useRef"]
       95 LOADNIL                          R12
       96 CALL                             R11 1 1
       97 GETUPVAL                         R12 10
       98 GETTABLEKS                       R12 R12 K11 ["useEventCallback"]
      100 NEWCLOSURE                       R13 P4
      101 CAPTURE                          VAL R11
      102 CAPTURE                          UPVAL U9
      103 CAPTURE                          VAL R3
      104 CAPTURE                          UPVAL U11
      105 CAPTURE                          UPVAL U12
      106 CAPTURE                          UPVAL U13
      107 CAPTURE                          VAL R6
      108 CALL                             R12 1 1
      109 GETUPVAL                         R13 10
      110 GETTABLEKS                       R13 R13 K11 ["useEventCallback"]
      112 NEWCLOSURE                       R14 P5
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R6
      115 CAPTURE                          UPVAL U12
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R10
      118 CALL                             R13 1 1
      119 GETUPVAL                         R14 0
      120 GETTABLEKS                       R14 R14 K3 ["useCallback"]
      122 NEWCLOSURE                       R15 P6
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R3
      128 CAPTURE                          UPVAL U11
      129 CAPTURE                          UPVAL U13
      130 CAPTURE                          VAL R2
      131 CAPTURE                          UPVAL U14
      132 NEWTABLE                         R16 0 8
      134 GETTABLEKS                       R17 R6 K8 ["get"]
      136 GETTABLEKS                       R18 R6 K12 ["setMap"]
      138 MOVE                             R19 R10
      139 GETTABLEKS                       R20 R3 K13 ["setNodeConnection"]
      141 GETTABLEKS                       R21 R3 K14 ["removeNodeInputConnectionAsync"]
      143 GETTABLEKS                       R22 R3 K15 ["removeNodeOutputConnectionAsync"]
      145 GETTABLEKS                       R23 R2 K16 ["showMenu"]
      147 MOVE                             R24 R9
      148 SETLIST                          R16 R17 8 [1]
      150 CALL                             R14 2 1
      151 GETUPVAL                         R15 10
      152 GETTABLEKS                       R15 R15 K11 ["useEventCallback"]
      154 NEWCLOSURE                       R16 P7
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R1
      158 CALL                             R15 1 1
      159 GETUPVAL                         R16 0
      160 GETTABLEKS                       R16 R16 K17 ["useEffect"]
      162 NEWCLOSURE                       R17 P8
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R3
      166 CAPTURE                          UPVAL U15
      167 CAPTURE                          UPVAL U16
      168 NEWTABLE                         R18 0 2
      170 GETTABLEKS                       R19 R3 K6 ["nodeRenderInfoDispatcher"]
      172 GETTABLEKS                       R19 R19 K5 ["observe"]
      174 GETTABLEKS                       R20 R4 K18 ["observeMap"]
      176 SETLIST                          R18 R19 2 [1]
      178 CALL                             R16 2 0
      179 GETUPVAL                         R16 0
      180 GETTABLEKS                       R16 R16 K3 ["useCallback"]
      182 NEWCLOSURE                       R17 P9
      183 CAPTURE                          VAL R5
      184 CAPTURE                          UPVAL U7
      185 CAPTURE                          VAL R8
      186 CAPTURE                          UPVAL U5
      187 CAPTURE                          UPVAL U6
      188 NEWTABLE                         R18 0 2
      190 GETTABLEKS                       R19 R5 K8 ["get"]
      192 MOVE                             R20 R8
      193 SETLIST                          R18 R19 2 [1]
      195 CALL                             R16 2 1
      196 GETUPVAL                         R17 0
      197 GETTABLEKS                       R17 R17 K3 ["useCallback"]
      199 NEWCLOSURE                       R18 P10
      200 CAPTURE                          VAL R8
      201 CAPTURE                          UPVAL U7
      202 CAPTURE                          UPVAL U9
      203 NEWTABLE                         R19 0 2
      205 GETTABLEKS                       R20 R5 K8 ["get"]
      207 MOVE                             R21 R8
      208 SETLIST                          R19 R20 2 [1]
      210 CALL                             R17 2 1
      211 GETUPVAL                         R18 0
      212 GETTABLEKS                       R18 R18 K3 ["useCallback"]
      214 NEWCLOSURE                       R19 P11
      215 CAPTURE                          VAL R5
      216 NEWTABLE                         R20 0 2
      218 GETTABLEKS                       R21 R5 K8 ["get"]
      220 GETTABLEKS                       R22 R5 K19 ["set"]
      222 SETLIST                          R20 R21 2 [1]
      224 CALL                             R18 2 1
      225 GETUPVAL                         R19 0
      226 GETTABLEKS                       R19 R19 K3 ["useCallback"]
      228 NEWCLOSURE                       R20 P12
      229 CAPTURE                          VAL R4
      230 NEWTABLE                         R21 0 2
      232 GETTABLEKS                       R22 R4 K8 ["get"]
      234 GETTABLEKS                       R23 R4 K19 ["set"]
      236 SETLIST                          R21 R22 2 [1]
      238 CALL                             R19 2 1
      239 GETUPVAL                         R20 0
      240 GETTABLEKS                       R20 R20 K3 ["useCallback"]
      242 NEWCLOSURE                       R21 P13
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R7
      245 CAPTURE                          VAL R4
      246 NEWTABLE                         R22 0 3
      248 GETTABLEKS                       R23 R3 K6 ["nodeRenderInfoDispatcher"]
      250 GETTABLEKS                       R23 R23 K18 ["observeMap"]
      252 MOVE                             R24 R7
      253 MOVE                             R25 R19
      254 SETLIST                          R22 R23 3 [1]
      256 CALL                             R20 2 1
      257 GETUPVAL                         R21 0
      258 GETTABLEKS                       R21 R21 K3 ["useCallback"]
      260 NEWCLOSURE                       R22 P14
      261 CAPTURE                          VAL R4
      262 CAPTURE                          VAL R19
      263 NEWTABLE                         R23 0 1
      265 GETTABLEKS                       R24 R4 K8 ["get"]
      267 SETLIST                          R23 R24 1 [1]
      269 CALL                             R21 2 1
      270 GETUPVAL                         R22 0
      271 GETTABLEKS                       R22 R22 K3 ["useCallback"]
      273 NEWCLOSURE                       R23 P15
      274 CAPTURE                          VAL R20
      275 CAPTURE                          VAL R4
      276 CAPTURE                          VAL R21
      277 NEWTABLE                         R24 0 3
      279 GETTABLEKS                       R25 R4 K12 ["setMap"]
      281 MOVE                             R26 R21
      282 MOVE                             R27 R20
      283 SETLIST                          R24 R25 3 [1]
      285 CALL                             R22 2 1
      286 GETUPVAL                         R23 0
      287 GETTABLEKS                       R23 R23 K3 ["useCallback"]
      289 NEWCLOSURE                       R24 P16
      290 CAPTURE                          VAL R4
      291 CAPTURE                          VAL R21
      292 NEWTABLE                         R25 0 2
      294 GETTABLEKS                       R26 R4 K12 ["setMap"]
      296 MOVE                             R27 R21
      297 SETLIST                          R25 R26 2 [1]
      299 CALL                             R23 2 1
      300 GETUPVAL                         R24 0
      301 GETTABLEKS                       R24 R24 K3 ["useCallback"]
      303 NEWCLOSURE                       R25 P17
      304 CAPTURE                          VAL R4
      305 CAPTURE                          VAL R19
      306 CAPTURE                          VAL R3
      307 CAPTURE                          VAL R7
      308 NEWTABLE                         R26 0 5
      310 GETTABLEKS                       R27 R4 K12 ["setMap"]
      312 MOVE                             R28 R19
      313 GETTABLEKS                       R29 R3 K6 ["nodeRenderInfoDispatcher"]
      315 GETTABLEKS                       R29 R29 K5 ["observe"]
      317 MOVE                             R30 R7
      318 GETTABLEKS                       R31 R4 K9 ["getMap"]
      320 SETLIST                          R26 R27 5 [1]
      322 CALL                             R24 2 1
      323 GETUPVAL                         R25 0
      324 GETTABLEKS                       R25 R25 K20 ["useMemo"]
      326 NEWCLOSURE                       R26 P18
      327 CAPTURE                          VAL R6
      328 NEWTABLE                         R27 0 1
      330 GETTABLEKS                       R28 R6 K5 ["observe"]
      332 SETLIST                          R27 R28 1 [1]
      334 CALL                             R25 2 1
      335 GETUPVAL                         R26 0
      336 GETTABLEKS                       R26 R26 K20 ["useMemo"]
      338 NEWCLOSURE                       R27 P19
      339 CAPTURE                          VAL R25
      340 CAPTURE                          VAL R6
      341 CAPTURE                          VAL R22
      342 CAPTURE                          VAL R23
      343 CAPTURE                          VAL R24
      344 CAPTURE                          VAL R4
      345 CAPTURE                          VAL R8
      346 CAPTURE                          VAL R18
      347 CAPTURE                          VAL R16
      348 CAPTURE                          VAL R17
      349 CAPTURE                          VAL R5
      350 CAPTURE                          VAL R12
      351 CAPTURE                          VAL R15
      352 CAPTURE                          VAL R13
      353 NEWTABLE                         R28 0 15
      355 MOVE                             R29 R25
      356 GETTABLEKS                       R30 R6 K5 ["observe"]
      358 MOVE                             R31 R22
      359 MOVE                             R32 R23
      360 MOVE                             R33 R24
      361 GETTABLEKS                       R34 R4 K5 ["observe"]
      363 MOVE                             R35 R8
      364 MOVE                             R36 R18
      365 MOVE                             R37 R16
      366 MOVE                             R38 R17
      367 GETTABLEKS                       R39 R5 K8 ["get"]
      369 MOVE                             R40 R12
      370 MOVE                             R41 R15
      371 MOVE                             R42 R13
      372 MOVE                             R43 R14
      373 SETLIST                          R28 R29 15 [1]
      375 CALL                             R26 2 1
      376 GETUPVAL                         R27 0
      377 GETTABLEKS                       R27 R27 K21 ["createElement"]
      379 GETUPVAL                         R28 17
      380 GETTABLEKS                       R28 R28 K22 ["Provider"]
      382 DUPTABLE                         R29 K24 [{"value"}]
      383 SETTABLEKS                       R26 R29 K23 ["value"]
      385 GETTABLEKS                       R30 R0 K25 ["children"]
      387 CALL                             R27 3 -1
      388 RETURN                           R27 -1

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
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["GraphContext"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Graphing"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["InsertNodeContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["NodeViewTypes"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K9 ["Parent"]
       42 GETTABLEKS                       R7 R7 K13 ["React"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K9 ["Parent"]
       49 GETTABLEKS                       R8 R8 K14 ["ReactUtils"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K9 ["Parent"]
       56 GETTABLEKS                       R9 R9 K15 ["Signals"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K9 ["Parent"]
       63 GETTABLEKS                       R10 R10 K16 ["SignalsUtils"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K17 ["Util"]
       70 GETTABLEKS                       R11 R11 K18 ["Vector2Utils"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K19 ["Flags"]
       77 GETTABLEKS                       R12 R12 K20 ["getFFlagAnimGraphUIDifferentiatePinCurveDrag"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K19 ["Flags"]
       84 GETTABLEKS                       R13 R13 K21 ["getFFlagAnimGraphUIDisableDisconnectedParameterOutputDragging"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K19 ["Flags"]
       91 GETTABLEKS                       R14 R14 K22 ["getFFlagAnimGraphUIInputIds"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K19 ["Flags"]
       98 GETTABLEKS                       R15 R15 K23 ["getFFlagAnimGraphUI_RunTimeDebug"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K19 ["Flags"]
      105 GETTABLEKS                       R16 R16 K24 ["getFFlagAnimGraphUI_ValueNodeInputProperties"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K17 ["Util"]
      112 GETTABLEKS                       R17 R17 K25 ["getPinAnchorKey"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K26 ["Hooks"]
      119 GETTABLEKS                       R18 R18 K27 ["useSignalDispatcher"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K29 [game]
      124 LOADK                            R20 K30 ["AnimGraphUI_FixFrozenNode"]
      125 LOADB                            R21 0
      126 NAMECALL                         R18 R18 K31 ["DefineFastFlag"]
      128 CALL                             R18 3 1
      129 DUPTABLE                         R19 K46 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "pushAnchor", "getAnchorData", "observeNodePreviewData", "observeAnchorPosition", "observeNodePosition", "observeCollapsedPinPosition", "onStartDrag", "onMouseUp", "onMouseMoved", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded"}]
      130 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      132 LOADK                            R21 K32 ["observeGlobalCurvePreviewInfo"]
      133 CALL                             R20 1 1
      134 SETTABLEKS                       R20 R19 K32 ["observeGlobalCurvePreviewInfo"]
      136 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      138 LOADK                            R21 K33 ["observeCurvePreviewInfo"]
      139 CALL                             R20 1 1
      140 SETTABLEKS                       R20 R19 K33 ["observeCurvePreviewInfo"]
      142 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      144 LOADK                            R21 K34 ["pushAnchor"]
      145 CALL                             R20 1 1
      146 SETTABLEKS                       R20 R19 K34 ["pushAnchor"]
      148 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      150 LOADK                            R21 K35 ["getAnchorData"]
      151 CALL                             R20 1 1
      152 SETTABLEKS                       R20 R19 K35 ["getAnchorData"]
      154 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      156 LOADK                            R21 K36 ["observeNodePreviewData"]
      157 CALL                             R20 1 1
      158 SETTABLEKS                       R20 R19 K36 ["observeNodePreviewData"]
      160 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      162 LOADK                            R21 K37 ["observeAnchorPosition"]
      163 CALL                             R20 1 1
      164 SETTABLEKS                       R20 R19 K37 ["observeAnchorPosition"]
      166 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      168 LOADK                            R21 K38 ["observeNodePosition"]
      169 CALL                             R20 1 1
      170 SETTABLEKS                       R20 R19 K38 ["observeNodePosition"]
      172 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      174 LOADK                            R21 K39 ["observeCollapsedPinPosition"]
      175 CALL                             R20 1 1
      176 SETTABLEKS                       R20 R19 K39 ["observeCollapsedPinPosition"]
      178 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      180 LOADK                            R21 K40 ["onStartDrag"]
      181 CALL                             R20 1 1
      182 SETTABLEKS                       R20 R19 K40 ["onStartDrag"]
      184 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      186 LOADK                            R21 K41 ["onMouseUp"]
      187 CALL                             R20 1 1
      188 SETTABLEKS                       R20 R19 K41 ["onMouseUp"]
      190 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      192 LOADK                            R21 K42 ["onMouseMoved"]
      193 CALL                             R20 1 1
      194 SETTABLEKS                       R20 R19 K42 ["onMouseMoved"]
      196 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      198 LOADK                            R21 K43 ["onDragNodeStart"]
      199 CALL                             R20 1 1
      200 SETTABLEKS                       R20 R19 K43 ["onDragNodeStart"]
      202 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      204 LOADK                            R21 K44 ["onDragNodeMoved"]
      205 CALL                             R20 1 1
      206 SETTABLEKS                       R20 R19 K44 ["onDragNodeMoved"]
      208 GETTABLEKS                       R20 R7 K47 ["createUnimplemented"]
      210 LOADK                            R21 K45 ["onDragNodeEnded"]
      211 CALL                             R20 1 1
      212 SETTABLEKS                       R20 R19 K45 ["onDragNodeEnded"]
      214 GETTABLEKS                       R20 R6 K48 ["createContext"]
      216 MOVE                             R21 R19
      217 CALL                             R20 1 1
      218 DUPCLOSURE                       R21 K49 [PROTO_32]
      219 CAPTURE                          VAL R6
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R9
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R13
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R11
      233 CAPTURE                          VAL R12
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R18
      236 CAPTURE                          VAL R20
      237 DUPCLOSURE                       R22 K50 [PROTO_35]
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R20
      240 CAPTURE                          VAL R7
      241 DUPTABLE                         R23 K54 [{"Context", "Provider", "InputDetector"}]
      242 SETTABLEKS                       R20 R23 K51 ["Context"]
      244 SETTABLEKS                       R21 R23 K52 ["Provider"]
      246 SETTABLEKS                       R22 R23 K53 ["InputDetector"]
      248 RETURN                           R23 1
