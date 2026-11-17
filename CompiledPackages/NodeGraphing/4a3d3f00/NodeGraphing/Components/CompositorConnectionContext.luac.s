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
       16 JUMPIFNOT                        R2 ; [+8]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K6 ["isValidVector2"]
       20 MOVE                             R6 R2
       21 CALL                             R5 1 1
       22 JUMPIFNOT                        R5 ; [+2]
       23 ADD                              R5 R2 R4
       24 RETURN                           R5 1
       25 JUMPIFNOT                        R3 ; [+8]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K6 ["isValidVector2"]
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 JUMPIFNOT                        R5 ; [+2]
       32 ADD                              R5 R3 R4
       33 RETURN                           R5 1
       34 LOADNIL                          R5
       35 RETURN                           R5 1

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
       20 LOADK                            R7 K6 [Infinity]
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
      106 GETUPVAL                         R4 0
      107 GETTABLEKS                       R4 R4 K15 ["isCurveDrag"]
      109 SETTABLEKS                       R4 R3 K15 ["isCurveDrag"]
      111 CALL                             R2 1 1
      112 GETUPVAL                         R3 2
      113 GETTABLEKS                       R3 R3 K21 ["setMap"]
      115 NEWTABLE                         R4 2 0
      117 SETTABLEKS                       R2 R4 K22 ["global"]
      119 SETTABLE                         R2 R4 R1
      120 CALL                             R3 1 0
      121 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R1 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["sourcePinDataType"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["DEFAULT_PIN_DATA_TYPE"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+44]
       13 GETUPVAL                         R1 2
       14 CALL                             R1 0 1
       15 JUMPIF                           R1 ; [+40]
       16 GETTABLEKS                       R1 R0 K3 ["sourcePinSide"]
       18 JUMPIFNOTEQKS                    R1 K4 ["Output"] ; [+10]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K5 ["removeNodeOutputConnectionAsync"]
       23 GETTABLEKS                       R2 R0 K6 ["sourcePinNodeId"]
       25 GETTABLEKS                       R3 R0 K7 ["sourcePinName"]
       27 CALL                             R1 2 0
       28 JUMP                             ; [+27]
       29 GETTABLEKS                       R1 R0 K3 ["sourcePinSide"]
       31 JUMPIFNOTEQKS                    R1 K8 ["Input"] ; [+24]
       33 GETUPVAL                         R1 3
       34 GETTABLEKS                       R1 R1 K9 ["removeNodeInputConnectionAsync"]
       36 GETTABLEKS                       R2 R0 K6 ["sourcePinNodeId"]
       38 GETTABLEKS                       R3 R0 K7 ["sourcePinName"]
       40 GETTABLEKS                       R5 R0 K1 ["sourcePinDataType"]
       42 JUMPIFNOTEQKS                    R5 K10 ["Parameter"] ; [+4]
       44 GETTABLEKS                       R4 R0 K11 ["sourcePinDynamicIndex"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R4
       48 GETUPVAL                         R6 4
       49 CALL                             R6 0 1
       50 JUMPIFNOT                        R6 ; [+3]
       51 GETTABLEKS                       R5 R0 K12 ["sourcePinInputId"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R5
       55 CALL                             R1 4 0
       56 GETUPVAL                         R1 0
       57 DUPTABLE                         R2 K17 [{["startPosition"], ["dragState"] = "undecided", ["startDragging"]}]
       58 GETTABLEKS                       R3 R0 K18 ["position"]
       60 SETTABLEKS                       R3 R2 K13 ["startPosition"]
       62 NEWCLOSURE                       R3 P0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          UPVAL U6
       66 SETTABLEKS                       R3 R2 K16 ["startDragging"]
       68 SETTABLEKS                       R2 R1 K0 ["current"]
       70 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K3 ["targetPinPosition"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K4 ["targetPinName"]
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K5 ["targetPinNodeId"]
       13 LOADB                            R1 1
       14 SETTABLEKS                       R1 R0 K6 ["awaitingMenuChoice"]
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K7 ["sourcePinNodeId"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K8 ["sourcePinSide"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K9 ["sourcePinName"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K10 ["sourcePinDataType"]
       29 JUMPIFNOTEQKS                    R6 K11 ["Parameter"] ; [+5]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K12 ["sourcePinDynamicIndex"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R5
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K8 ["sourcePinSide"]
       39 JUMPIFNOTEQKS                    R7 K13 ["Input"] ; [+5]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K14 ["sourcePinInputId"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R6
       46 CALL                             R1 5 1
       47 GETUPVAL                         R2 2
       48 GETTABLEKS                       R2 R2 K15 ["setMap"]
       50 NEWTABLE                         R3 2 0
       52 SETTABLEKS                       R0 R3 K16 ["global"]
       54 SETTABLE                         R0 R3 R1
       55 CALL                             R2 1 0
       56 GETIMPORT                        R2 K19 [task.defer]
       58 NEWCLOSURE                       R3 P0
       59 CAPTURE                          UPVAL U3
       60 CALL                             R2 1 0
       61 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["nodePayloadDispatcher"]
        5 GETTABLEKS                       R0 R0 K1 ["get"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R0
       11 JUMPIFEQKNIL                     R0 ; [+4]
       13 GETUPVAL                         R1 2
       14 JUMPIFNOTEQKNIL                  R1 ; [+3]
       16 LOADB                            R1 0
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 3
       19 JUMPIFNOT                        R2 ; [+8]
       20 GETTABLEKS                       R2 R0 K2 ["inputConnectionsByInputId"]
       22 JUMPIFNOT                        R2 ; [+5]
       23 GETTABLEKS                       R2 R0 K2 ["inputConnectionsByInputId"]
       25 GETUPVAL                         R3 3
       26 GETTABLE                         R1 R2 R3
       27 JUMP                             ; [+4]
       28 GETTABLEKS                       R2 R0 K3 ["inputPinToConnectionMap"]
       30 GETUPVAL                         R3 2
       31 GETTABLE                         R1 R2 R3
       32 LOADB                            R2 0
       33 JUMPIFEQKNIL                     R1 ; [+14]
       35 LOADB                            R2 0
       36 GETTABLEKS                       R3 R1 K4 ["outputNodeId"]
       38 GETUPVAL                         R4 4
       39 JUMPIFNOTEQ                      R3 R4 ; [+8]
       41 GETTABLEKS                       R3 R1 K5 ["outputNodePinId"]
       43 GETUPVAL                         R4 5
       44 JUMPIFEQ                         R3 R4 ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["removeNodeInputConnectionAsync"]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 LOADNIL                          R3
       10 GETUPVAL                         R5 3
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 GETUPVAL                         R4 4
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 CALL                             R0 4 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 5
       19 JUMPIFNOT                        R0 ; [+8]
       20 GETUPVAL                         R0 6
       21 JUMPIFNOT                        R0 ; [+6]
       22 GETUPVAL                         R0 2
       23 GETTABLEKS                       R0 R0 K1 ["removeNodeOutputConnectionAsync"]
       25 GETUPVAL                         R1 5
       26 GETUPVAL                         R2 6
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 LOADK                            R2 K1 ["global"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+9]
       11 GETTABLEKS                       R3 R1 K2 ["sourcePinDataType"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["DEFAULT_PIN_DATA_TYPE"]
       16 JUMPIFEQ                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U3
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U3
       28 GETUPVAL                         R5 5
       29 MOVE                             R6 R0
       30 LOADB                            R7 1
       31 CALL                             R5 2 1
       32 JUMPIFNOT                        R5 ; [+8]
       33 GETUPVAL                         R6 6
       34 MOVE                             R7 R1
       35 MOVE                             R8 R5
       36 CALL                             R6 2 1
       37 JUMPIFNOT                        R6 ; [+3]
       38 MOVE                             R6 R3
       39 CALL                             R6 0 0
       40 RETURN                           R0 0
       41 LOADNIL                          R6
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 LOADNIL                          R10
       46 LOADNIL                          R11
       47 GETTABLEKS                       R12 R1 K4 ["sourcePinSide"]
       49 JUMPIFNOTEQKS                    R12 K5 ["Output"] ; [+15]
       51 GETTABLEKS                       R8 R1 K6 ["sourcePinNodeId"]
       53 GETTABLEKS                       R9 R1 K7 ["sourcePinName"]
       55 JUMPIFNOT                        R5 ; [+31]
       56 GETTABLEKS                       R6 R5 K8 ["pinNodeId"]
       58 GETTABLEKS                       R7 R5 K9 ["pinName"]
       60 GETTABLEKS                       R10 R5 K10 ["pinDynamicIndex"]
       62 GETTABLEKS                       R11 R5 K11 ["pinInputId"]
       64 JUMP                             ; [+22]
       65 GETTABLEKS                       R12 R1 K4 ["sourcePinSide"]
       67 JUMPIFNOTEQKS                    R12 K12 ["Input"] ; [+15]
       69 GETTABLEKS                       R6 R1 K6 ["sourcePinNodeId"]
       71 GETTABLEKS                       R7 R1 K7 ["sourcePinName"]
       73 GETTABLEKS                       R10 R1 K13 ["sourcePinDynamicIndex"]
       75 GETTABLEKS                       R11 R1 K14 ["sourcePinInputId"]
       77 JUMPIFNOT                        R5 ; [+9]
       78 GETTABLEKS                       R8 R5 K8 ["pinNodeId"]
       80 GETTABLEKS                       R9 R5 K9 ["pinName"]
       82 JUMP                             ; [+4]
       83 GETIMPORT                        R12 K16 [error]
       85 LOADK                            R13 K17 ["Bad sourcePin state"]
       86 CALL                             R12 1 0
       87 GETIMPORT                        R12 K20 [table.freeze]
       89 DUPTABLE                         R13 K22 [{"sourcePinNodeId", "sourcePinName", "sourcePinSide", "sourcePinDataType", "sourcePinValue", "sourcePinDynamicIndex", "sourcePinInputId"}]
       90 GETTABLEKS                       R14 R1 K6 ["sourcePinNodeId"]
       92 SETTABLEKS                       R14 R13 K6 ["sourcePinNodeId"]
       94 GETTABLEKS                       R14 R1 K7 ["sourcePinName"]
       96 SETTABLEKS                       R14 R13 K7 ["sourcePinName"]
       98 GETTABLEKS                       R14 R1 K4 ["sourcePinSide"]
      100 SETTABLEKS                       R14 R13 K4 ["sourcePinSide"]
      102 GETTABLEKS                       R14 R1 K2 ["sourcePinDataType"]
      104 SETTABLEKS                       R14 R13 K2 ["sourcePinDataType"]
      106 GETTABLEKS                       R14 R1 K21 ["sourcePinValue"]
      108 SETTABLEKS                       R14 R13 K21 ["sourcePinValue"]
      110 GETTABLEKS                       R14 R1 K13 ["sourcePinDynamicIndex"]
      112 SETTABLEKS                       R14 R13 K13 ["sourcePinDynamicIndex"]
      114 GETTABLEKS                       R14 R1 K14 ["sourcePinInputId"]
      116 SETTABLEKS                       R14 R13 K14 ["sourcePinInputId"]
      118 CALL                             R12 1 1
      119 NEWCLOSURE                       R13 P2
      120 CAPTURE                          REF R6
      121 CAPTURE                          UPVAL U7
      122 CAPTURE                          REF R7
      123 CAPTURE                          REF R11
      124 CAPTURE                          REF R8
      125 CAPTURE                          REF R9
      126 JUMPIFNOT                        R2 ; [+46]
      127 JUMPIFNOT                        R6 ; [+8]
      128 GETUPVAL                         R15 7
      129 GETTABLEKS                       R15 R15 K23 ["nodePayloadDispatcher"]
      131 GETTABLEKS                       R15 R15 K0 ["get"]
      133 MOVE                             R16 R6
      134 CALL                             R15 1 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R15
      137 JUMPIFEQKNIL                     R15 ; [+3]
      139 JUMPIFNOTEQKNIL                  R7 ; [+3]
      141 LOADB                            R14 0
      142 JUMP                             ; [+25]
      143 JUMPIFNOT                        R11 ; [+7]
      144 GETTABLEKS                       R17 R15 K24 ["inputConnectionsByInputId"]
      146 JUMPIFNOT                        R17 ; [+4]
      147 GETTABLEKS                       R17 R15 K24 ["inputConnectionsByInputId"]
      149 GETTABLE                         R16 R17 R11
      150 JUMP                             ; [+3]
      151 GETTABLEKS                       R17 R15 K25 ["inputPinToConnectionMap"]
      153 GETTABLE                         R16 R17 R7
      154 LOADB                            R14 0
      155 JUMPIFEQKNIL                     R16 ; [+12]
      157 LOADB                            R14 0
      158 GETTABLEKS                       R17 R16 K26 ["outputNodeId"]
      160 JUMPIFNOTEQ                      R17 R8 ; [+7]
      162 GETTABLEKS                       R17 R16 K27 ["outputNodePinId"]
      164 JUMPIFEQ                         R17 R9 ; [+2]
      166 LOADB                            R14 0 +1
      167 LOADB                            R14 1
      168 JUMPIFNOT                        R14 ; [+4]
      169 MOVE                             R14 R3
      170 CALL                             R14 0 0
      171 CLOSEUPVALS                      R6
      172 RETURN                           R0 0
      173 JUMPIFNOT                        R6 ; [+25]
      174 JUMPIFNOT                        R7 ; [+24]
      175 JUMPIFNOT                        R8 ; [+23]
      176 JUMPIFNOT                        R9 ; [+22]
      177 GETUPVAL                         R14 7
      178 GETTABLEKS                       R14 R14 K28 ["setNodeConnection"]
      180 MOVE                             R15 R6
      181 MOVE                             R16 R7
      182 MOVE                             R17 R8
      183 MOVE                             R18 R9
      184 GETTABLEKS                       R20 R1 K2 ["sourcePinDataType"]
      186 JUMPIFNOTEQKS                    R20 K29 ["Parameter"] ; [+3]
      188 MOVE                             R19 R10
      189 JUMP                             ; [+1]
      190 LOADNIL                          R19
      191 GETUPVAL                         R21 8
      192 CALL                             R21 0 1
      193 JUMPIFNOT                        R21 ; [+2]
      194 MOVE                             R20 R11
      195 JUMP                             ; [+1]
      196 LOADNIL                          R20
      197 CALL                             R14 6 0
      198 JUMP                             ; [+116]
      199 JUMPIFNOT                        R2 ; [+21]
      200 GETTABLEKS                       R14 R1 K30 ["isCurveDrag"]
      202 JUMPIF                           R14 ; [+18]
      203 GETUPVAL                         R14 9
      204 GETTABLEKS                       R14 R14 K31 ["showMenuWithDismissAction"]
      206 MOVE                             R15 R0
      207 MOVE                             R16 R12
      208 NEWCLOSURE                       R17 P3
      209 CAPTURE                          REF R6
      210 CAPTURE                          REF R7
      211 CAPTURE                          UPVAL U7
      212 CAPTURE                          UPVAL U8
      213 CAPTURE                          REF R11
      214 CAPTURE                          REF R8
      215 CAPTURE                          REF R9
      216 CALL                             R14 3 0
      217 MOVE                             R14 R4
      218 CALL                             R14 0 0
      219 CLOSEUPVALS                      R6
      220 RETURN                           R0 0
      221 JUMPIFNOT                        R6 ; [+32]
      222 JUMPIFNOT                        R7 ; [+31]
      223 GETTABLEKS                       R15 R1 K2 ["sourcePinDataType"]
      225 JUMPIFNOTEQKS                    R15 K29 ["Parameter"] ; [+3]
      227 MOVE                             R14 R10
      228 JUMP                             ; [+1]
      229 LOADNIL                          R14
      230 GETUPVAL                         R15 7
      231 GETTABLEKS                       R15 R15 K32 ["removeNodeInputConnectionAsync"]
      233 MOVE                             R16 R6
      234 MOVE                             R17 R7
      235 MOVE                             R18 R14
      236 GETUPVAL                         R20 8
      237 CALL                             R20 0 1
      238 JUMPIFNOT                        R20 ; [+2]
      239 MOVE                             R19 R11
      240 JUMP                             ; [+1]
      241 LOADNIL                          R19
      242 CALL                             R15 4 1
      243 JUMPIF                           R15 ; [+71]
      244 GETTABLEKS                       R15 R1 K30 ["isCurveDrag"]
      246 JUMPIF                           R15 ; [+68]
      247 GETUPVAL                         R15 9
      248 GETTABLEKS                       R15 R15 K33 ["showMenu"]
      250 MOVE                             R16 R0
      251 MOVE                             R17 R12
      252 CALL                             R15 2 0
      253 JUMP                             ; [+61]
      254 JUMPIFNOT                        R8 ; [+56]
      255 JUMPIFNOT                        R9 ; [+55]
      256 GETUPVAL                         R15 10
      257 CALL                             R15 0 1
      258 JUMPIFNOT                        R15 ; [+31]
      259 GETTABLEKS                       R15 R1 K2 ["sourcePinDataType"]
      261 JUMPIFNOTEQKS                    R15 K29 ["Parameter"] ; [+28]
      263 LOADB                            R14 0
      264 GETTABLEKS                       R15 R1 K34 ["specificInputPinNodeId"]
      266 JUMPIFEQKNIL                     R15 ; [+29]
      268 LOADB                            R14 0
      269 GETTABLEKS                       R15 R1 K35 ["specificInputPinName"]
      271 JUMPIFEQKNIL                     R15 ; [+24]
      273 GETUPVAL                         R14 7
      274 GETTABLEKS                       R14 R14 K32 ["removeNodeInputConnectionAsync"]
      276 GETTABLEKS                       R15 R1 K34 ["specificInputPinNodeId"]
      278 GETTABLEKS                       R16 R1 K35 ["specificInputPinName"]
      280 LOADNIL                          R17
      281 GETUPVAL                         R19 8
      282 CALL                             R19 0 1
      283 JUMPIFNOT                        R19 ; [+3]
      284 GETTABLEKS                       R18 R1 K36 ["specificInputPinInputId"]
      286 JUMP                             ; [+1]
      287 LOADNIL                          R18
      288 CALL                             R14 4 1
      289 JUMP                             ; [+6]
      290 GETUPVAL                         R14 7
      291 GETTABLEKS                       R14 R14 K37 ["removeNodeOutputConnectionAsync"]
      293 MOVE                             R15 R8
      294 MOVE                             R16 R9
      295 CALL                             R14 2 1
      296 JUMPIF                           R14 ; [+18]
      297 GETTABLEKS                       R15 R12 K2 ["sourcePinDataType"]
      299 JUMPIFEQKS                       R15 K29 ["Parameter"] ; [+15]
      301 GETTABLEKS                       R15 R1 K30 ["isCurveDrag"]
      303 JUMPIF                           R15 ; [+11]
      304 GETUPVAL                         R15 9
      305 GETTABLEKS                       R15 R15 K33 ["showMenu"]
      307 MOVE                             R16 R0
      308 MOVE                             R17 R12
      309 CALL                             R15 2 0
      310 JUMP                             ; [+4]
      311 GETIMPORT                        R14 K39 [warn]
      313 LOADK                            R15 K40 ["Bad state"]
      314 CALL                             R14 1 0
      315 MOVE                             R14 R3
      316 CALL                             R14 0 0
      317 CLOSEUPVALS                      R6
      318 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 LOADK                            R1 K1 ["global"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["visibleMenuState"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+11]
       10 JUMPIFNOT                        R0 ; [+9]
       11 GETTABLEKS                       R1 R0 K3 ["awaitingMenuChoice"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["setMap"]
       17 NEWTABLE                         R2 0 0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observe"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 JUMPIFNOT                        R6 ; [+48]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K0 ["get"]
       11 GETTABLEKS                       R8 R6 K1 ["nodeId"]
       13 CALL                             R7 1 1
       14 JUMPIFEQKNIL                     R7 ; [+41]
       16 GETTABLEKS                       R8 R7 K2 ["pendingNetworkPosition"]
       18 JUMPIFEQKNIL                     R8 ; [+37]
       20 GETTABLEKS                       R9 R6 K3 ["position"]
       22 MOVE                             R11 R8
       23 NAMECALL                         R9 R9 K4 ["FuzzyEq"]
       25 CALL                             R9 2 1
       26 JUMPIFNOT                        R9 ; [+29]
       27 GETTABLEKS                       R9 R7 K5 ["delta"]
       29 JUMPIF                           R9 ; [+3]
       30 GETTABLEKS                       R9 R7 K6 ["origin"]
       32 JUMPIFNOT                        R9 ; [+16]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K7 ["set"]
       36 GETTABLEKS                       R10 R6 K1 ["nodeId"]
       38 DUPTABLE                         R11 K9 [{["delta"], ["origin"], ["pendingNetworkPosition"] = }]
       39 GETTABLEKS                       R12 R7 K5 ["delta"]
       41 SETTABLEKS                       R12 R11 K5 ["delta"]
       43 GETTABLEKS                       R12 R7 K6 ["origin"]
       45 SETTABLEKS                       R12 R11 K6 ["origin"]
       47 CALL                             R9 2 0
       48 JUMP                             ; [+7]
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R9 R9 K7 ["set"]
       52 GETTABLEKS                       R10 R6 K1 ["nodeId"]
       54 LOADNIL                          R11
       55 CALL                             R9 2 0
       56 FORGLOOP                         R2 2 ; [-50]
       58 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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
       16 GETTABLEKS                       R3 R3 K1 ["isValidVector2"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 JUMPIFNOT                        R3 ; [+7]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K1 ["isValidVector2"]
       24 GETTABLEKS                       R4 R1 K2 ["pinOffset"]
       26 CALL                             R3 1 1
       27 JUMPIF                           R3 ; [+2]
       28 LOADNIL                          R3
       29 RETURN                           R3 1
       30 GETTABLEKS                       R4 R1 K2 ["pinOffset"]
       32 ADD                              R3 R2 R4
       33 RETURN                           R3 1

PROTO_23:
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
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

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

PROTO_37:
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
       32 NEWTABLE                         R9 0 0
       34 CALL                             R7 2 1
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       38 NEWCLOSURE                       R9 P1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          VAL R7
       43 NEWTABLE                         R10 0 3
       45 GETTABLEKS                       R11 R4 K5 ["observe"]
       47 MOVE                             R12 R7
       48 GETTABLEKS                       R13 R3 K6 ["nodeRenderInfoDispatcher"]
       50 GETTABLEKS                       R13 R13 K5 ["observe"]
       52 SETLIST                          R10 R11 3 [1]
       54 CALL                             R8 2 1
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       58 NEWCLOSURE                       R10 P2
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          VAL R3
       62 NEWTABLE                         R11 0 1
       64 GETTABLEKS                       R12 R3 K7 ["nodePayloadDispatcher"]
       66 GETTABLEKS                       R12 R12 K8 ["get"]
       68 SETLIST                          R11 R12 1 [1]
       70 CALL                             R9 2 1
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       74 NEWCLOSURE                       R11 P3
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R8
       79 CAPTURE                          UPVAL U8
       80 NEWTABLE                         R12 0 4
       82 GETTABLEKS                       R13 R5 K9 ["getMap"]
       84 MOVE                             R14 R8
       85 GETTABLEKS                       R15 R6 K8 ["get"]
       87 MOVE                             R16 R9
       88 SETLIST                          R12 R13 4 [1]
       90 CALL                             R10 2 1
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K10 ["useRef"]
       94 LOADNIL                          R12
       95 CALL                             R11 1 1
       96 GETUPVAL                         R12 9
       97 GETTABLEKS                       R12 R12 K11 ["useEventCallback"]
       99 NEWCLOSURE                       R13 P4
      100 CAPTURE                          VAL R11
      101 CAPTURE                          UPVAL U8
      102 CAPTURE                          UPVAL U10
      103 CAPTURE                          VAL R3
      104 CAPTURE                          UPVAL U11
      105 CAPTURE                          UPVAL U12
      106 CAPTURE                          VAL R6
      107 CALL                             R12 1 1
      108 GETUPVAL                         R13 9
      109 GETTABLEKS                       R13 R13 K11 ["useEventCallback"]
      111 NEWCLOSURE                       R14 P5
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R6
      114 CAPTURE                          UPVAL U12
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R10
      117 CALL                             R13 1 1
      118 GETUPVAL                         R14 0
      119 GETTABLEKS                       R14 R14 K3 ["useCallback"]
      121 NEWCLOSURE                       R15 P6
      122 CAPTURE                          VAL R6
      123 CAPTURE                          UPVAL U10
      124 CAPTURE                          UPVAL U8
      125 CAPTURE                          VAL R11
      126 CAPTURE                          UPVAL U12
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R3
      130 CAPTURE                          UPVAL U11
      131 CAPTURE                          VAL R2
      132 CAPTURE                          UPVAL U13
      133 NEWTABLE                         R16 0 10
      135 GETTABLEKS                       R17 R6 K8 ["get"]
      137 GETTABLEKS                       R18 R6 K12 ["setMap"]
      139 MOVE                             R19 R10
      140 GETTABLEKS                       R20 R3 K13 ["setNodeConnection"]
      142 GETTABLEKS                       R21 R3 K14 ["removeNodeInputConnectionAsync"]
      144 GETTABLEKS                       R22 R3 K15 ["removeNodeOutputConnectionAsync"]
      146 GETTABLEKS                       R23 R2 K16 ["showMenu"]
      148 GETTABLEKS                       R24 R2 K17 ["showMenuWithDismissAction"]
      150 GETTABLEKS                       R25 R3 K7 ["nodePayloadDispatcher"]
      152 GETTABLEKS                       R25 R25 K8 ["get"]
      154 MOVE                             R26 R9
      155 SETLIST                          R16 R17 10 [1]
      157 CALL                             R14 2 1
      158 GETUPVAL                         R15 0
      159 GETTABLEKS                       R15 R15 K18 ["useEffect"]
      161 NEWCLOSURE                       R16 P7
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R2
      164 NEWTABLE                         R17 0 3
      166 GETTABLEKS                       R18 R2 K19 ["visibleMenuState"]
      168 GETTABLEKS                       R19 R6 K8 ["get"]
      170 GETTABLEKS                       R20 R6 K12 ["setMap"]
      172 SETLIST                          R17 R18 3 [1]
      174 CALL                             R15 2 0
      175 GETUPVAL                         R15 9
      176 GETTABLEKS                       R15 R15 K11 ["useEventCallback"]
      178 NEWCLOSURE                       R16 P8
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R1
      182 CALL                             R15 1 1
      183 GETUPVAL                         R16 0
      184 GETTABLEKS                       R16 R16 K18 ["useEffect"]
      186 NEWCLOSURE                       R17 P9
      187 CAPTURE                          UPVAL U6
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R3
      190 CAPTURE                          UPVAL U14
      191 NEWTABLE                         R18 0 2
      193 GETTABLEKS                       R19 R3 K6 ["nodeRenderInfoDispatcher"]
      195 GETTABLEKS                       R19 R19 K5 ["observe"]
      197 GETTABLEKS                       R20 R4 K20 ["observeMap"]
      199 SETLIST                          R18 R19 2 [1]
      201 CALL                             R16 2 0
      202 GETUPVAL                         R16 0
      203 GETTABLEKS                       R16 R16 K3 ["useCallback"]
      205 NEWCLOSURE                       R17 P10
      206 CAPTURE                          VAL R5
      207 CAPTURE                          UPVAL U6
      208 CAPTURE                          VAL R8
      209 CAPTURE                          UPVAL U5
      210 NEWTABLE                         R18 0 2
      212 GETTABLEKS                       R19 R5 K8 ["get"]
      214 MOVE                             R20 R8
      215 SETLIST                          R18 R19 2 [1]
      217 CALL                             R16 2 1
      218 GETUPVAL                         R17 0
      219 GETTABLEKS                       R17 R17 K3 ["useCallback"]
      221 NEWCLOSURE                       R18 P11
      222 CAPTURE                          VAL R8
      223 CAPTURE                          UPVAL U6
      224 CAPTURE                          UPVAL U8
      225 NEWTABLE                         R19 0 2
      227 GETTABLEKS                       R20 R5 K8 ["get"]
      229 MOVE                             R21 R8
      230 SETLIST                          R19 R20 2 [1]
      232 CALL                             R17 2 1
      233 GETUPVAL                         R18 0
      234 GETTABLEKS                       R18 R18 K3 ["useCallback"]
      236 NEWCLOSURE                       R19 P12
      237 CAPTURE                          VAL R5
      238 NEWTABLE                         R20 0 2
      240 GETTABLEKS                       R21 R5 K8 ["get"]
      242 GETTABLEKS                       R22 R5 K21 ["set"]
      244 SETLIST                          R20 R21 2 [1]
      246 CALL                             R18 2 1
      247 GETUPVAL                         R19 0
      248 GETTABLEKS                       R19 R19 K3 ["useCallback"]
      250 NEWCLOSURE                       R20 P13
      251 CAPTURE                          VAL R4
      252 NEWTABLE                         R21 0 2
      254 GETTABLEKS                       R22 R4 K8 ["get"]
      256 GETTABLEKS                       R23 R4 K21 ["set"]
      258 SETLIST                          R21 R22 2 [1]
      260 CALL                             R19 2 1
      261 GETUPVAL                         R20 0
      262 GETTABLEKS                       R20 R20 K3 ["useCallback"]
      264 NEWCLOSURE                       R21 P14
      265 CAPTURE                          VAL R3
      266 CAPTURE                          VAL R7
      267 CAPTURE                          VAL R4
      268 NEWTABLE                         R22 0 3
      270 GETTABLEKS                       R23 R3 K6 ["nodeRenderInfoDispatcher"]
      272 GETTABLEKS                       R23 R23 K20 ["observeMap"]
      274 MOVE                             R24 R7
      275 MOVE                             R25 R19
      276 SETLIST                          R22 R23 3 [1]
      278 CALL                             R20 2 1
      279 GETUPVAL                         R21 0
      280 GETTABLEKS                       R21 R21 K3 ["useCallback"]
      282 NEWCLOSURE                       R22 P15
      283 CAPTURE                          VAL R4
      284 CAPTURE                          VAL R19
      285 NEWTABLE                         R23 0 1
      287 GETTABLEKS                       R24 R4 K8 ["get"]
      289 SETLIST                          R23 R24 1 [1]
      291 CALL                             R21 2 1
      292 GETUPVAL                         R22 0
      293 GETTABLEKS                       R22 R22 K3 ["useCallback"]
      295 NEWCLOSURE                       R23 P16
      296 CAPTURE                          VAL R20
      297 CAPTURE                          VAL R4
      298 CAPTURE                          VAL R21
      299 NEWTABLE                         R24 0 3
      301 GETTABLEKS                       R25 R4 K12 ["setMap"]
      303 MOVE                             R26 R21
      304 MOVE                             R27 R20
      305 SETLIST                          R24 R25 3 [1]
      307 CALL                             R22 2 1
      308 GETUPVAL                         R23 0
      309 GETTABLEKS                       R23 R23 K3 ["useCallback"]
      311 NEWCLOSURE                       R24 P17
      312 CAPTURE                          VAL R4
      313 CAPTURE                          VAL R21
      314 NEWTABLE                         R25 0 2
      316 GETTABLEKS                       R26 R4 K12 ["setMap"]
      318 MOVE                             R27 R21
      319 SETLIST                          R25 R26 2 [1]
      321 CALL                             R23 2 1
      322 GETUPVAL                         R24 0
      323 GETTABLEKS                       R24 R24 K3 ["useCallback"]
      325 NEWCLOSURE                       R25 P18
      326 CAPTURE                          VAL R4
      327 CAPTURE                          VAL R19
      328 CAPTURE                          VAL R3
      329 CAPTURE                          VAL R7
      330 NEWTABLE                         R26 0 5
      332 GETTABLEKS                       R27 R4 K12 ["setMap"]
      334 MOVE                             R28 R19
      335 GETTABLEKS                       R29 R3 K6 ["nodeRenderInfoDispatcher"]
      337 GETTABLEKS                       R29 R29 K5 ["observe"]
      339 MOVE                             R30 R7
      340 GETTABLEKS                       R31 R4 K9 ["getMap"]
      342 SETLIST                          R26 R27 5 [1]
      344 CALL                             R24 2 1
      345 GETUPVAL                         R25 0
      346 GETTABLEKS                       R25 R25 K22 ["useMemo"]
      348 NEWCLOSURE                       R26 P19
      349 CAPTURE                          VAL R6
      350 NEWTABLE                         R27 0 1
      352 GETTABLEKS                       R28 R6 K5 ["observe"]
      354 SETLIST                          R27 R28 1 [1]
      356 CALL                             R25 2 1
      357 GETUPVAL                         R26 0
      358 GETTABLEKS                       R26 R26 K22 ["useMemo"]
      360 NEWCLOSURE                       R27 P20
      361 CAPTURE                          VAL R25
      362 CAPTURE                          VAL R6
      363 CAPTURE                          VAL R22
      364 CAPTURE                          VAL R23
      365 CAPTURE                          VAL R24
      366 CAPTURE                          VAL R4
      367 CAPTURE                          VAL R8
      368 CAPTURE                          VAL R18
      369 CAPTURE                          VAL R16
      370 CAPTURE                          VAL R17
      371 CAPTURE                          VAL R5
      372 CAPTURE                          VAL R12
      373 CAPTURE                          VAL R15
      374 CAPTURE                          VAL R13
      375 NEWTABLE                         R28 0 15
      377 MOVE                             R29 R25
      378 GETTABLEKS                       R30 R6 K5 ["observe"]
      380 MOVE                             R31 R22
      381 MOVE                             R32 R23
      382 MOVE                             R33 R24
      383 GETTABLEKS                       R34 R4 K5 ["observe"]
      385 MOVE                             R35 R8
      386 MOVE                             R36 R18
      387 MOVE                             R37 R16
      388 MOVE                             R38 R17
      389 GETTABLEKS                       R39 R5 K8 ["get"]
      391 MOVE                             R40 R12
      392 MOVE                             R41 R15
      393 MOVE                             R42 R13
      394 MOVE                             R43 R14
      395 SETLIST                          R28 R29 15 [1]
      397 CALL                             R26 2 1
      398 GETUPVAL                         R27 0
      399 GETTABLEKS                       R27 R27 K23 ["createElement"]
      401 GETUPVAL                         R28 15
      402 GETTABLEKS                       R28 R28 K24 ["Provider"]
      404 DUPTABLE                         R29 K26 [{"value"}]
      405 SETTABLEKS                       R26 R29 K25 ["value"]
      407 GETTABLEKS                       R30 R0 K27 ["children"]
      409 CALL                             R27 3 -1
      410 RETURN                           R27 -1

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
       77 GETTABLEKS                       R12 R12 K20 ["getFFlagAnimGraphUIInputIds"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K19 ["Flags"]
       84 GETTABLEKS                       R13 R13 K21 ["getFFlagAnimGraphUIKeepParameterNoodlesOnDrag"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K19 ["Flags"]
       91 GETTABLEKS                       R14 R14 K22 ["getFFlagAnimGraphUI_FixUndoHistory"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K19 ["Flags"]
       98 GETTABLEKS                       R15 R15 K23 ["getFFlagAnimGraphUI_ValueNodeInputProperties"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K17 ["Util"]
      105 GETTABLEKS                       R16 R16 K24 ["getPinAnchorKey"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      112 GETTABLEKS                       R17 R17 K26 ["useSignalDispatcher"]
      114 CALL                             R16 1 1
      115 DUPTABLE                         R17 K41 [{"observeGlobalCurvePreviewInfo", "observeCurvePreviewInfo", "pushAnchor", "getAnchorData", "observeNodePreviewData", "observeAnchorPosition", "observeNodePosition", "observeCollapsedPinPosition", "onStartDrag", "onMouseUp", "onMouseMoved", "onDragNodeStart", "onDragNodeMoved", "onDragNodeEnded"}]
      116 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      118 LOADK                            R19 K27 ["observeGlobalCurvePreviewInfo"]
      119 CALL                             R18 1 1
      120 SETTABLEKS                       R18 R17 K27 ["observeGlobalCurvePreviewInfo"]
      122 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      124 LOADK                            R19 K28 ["observeCurvePreviewInfo"]
      125 CALL                             R18 1 1
      126 SETTABLEKS                       R18 R17 K28 ["observeCurvePreviewInfo"]
      128 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      130 LOADK                            R19 K29 ["pushAnchor"]
      131 CALL                             R18 1 1
      132 SETTABLEKS                       R18 R17 K29 ["pushAnchor"]
      134 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      136 LOADK                            R19 K30 ["getAnchorData"]
      137 CALL                             R18 1 1
      138 SETTABLEKS                       R18 R17 K30 ["getAnchorData"]
      140 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      142 LOADK                            R19 K31 ["observeNodePreviewData"]
      143 CALL                             R18 1 1
      144 SETTABLEKS                       R18 R17 K31 ["observeNodePreviewData"]
      146 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      148 LOADK                            R19 K32 ["observeAnchorPosition"]
      149 CALL                             R18 1 1
      150 SETTABLEKS                       R18 R17 K32 ["observeAnchorPosition"]
      152 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      154 LOADK                            R19 K33 ["observeNodePosition"]
      155 CALL                             R18 1 1
      156 SETTABLEKS                       R18 R17 K33 ["observeNodePosition"]
      158 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      160 LOADK                            R19 K34 ["observeCollapsedPinPosition"]
      161 CALL                             R18 1 1
      162 SETTABLEKS                       R18 R17 K34 ["observeCollapsedPinPosition"]
      164 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      166 LOADK                            R19 K35 ["onStartDrag"]
      167 CALL                             R18 1 1
      168 SETTABLEKS                       R18 R17 K35 ["onStartDrag"]
      170 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      172 LOADK                            R19 K36 ["onMouseUp"]
      173 CALL                             R18 1 1
      174 SETTABLEKS                       R18 R17 K36 ["onMouseUp"]
      176 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      178 LOADK                            R19 K37 ["onMouseMoved"]
      179 CALL                             R18 1 1
      180 SETTABLEKS                       R18 R17 K37 ["onMouseMoved"]
      182 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      184 LOADK                            R19 K38 ["onDragNodeStart"]
      185 CALL                             R18 1 1
      186 SETTABLEKS                       R18 R17 K38 ["onDragNodeStart"]
      188 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      190 LOADK                            R19 K39 ["onDragNodeMoved"]
      191 CALL                             R18 1 1
      192 SETTABLEKS                       R18 R17 K39 ["onDragNodeMoved"]
      194 GETTABLEKS                       R18 R7 K42 ["createUnimplemented"]
      196 LOADK                            R19 K40 ["onDragNodeEnded"]
      197 CALL                             R18 1 1
      198 SETTABLEKS                       R18 R17 K40 ["onDragNodeEnded"]
      200 GETTABLEKS                       R18 R6 K43 ["createContext"]
      202 MOVE                             R19 R17
      203 CALL                             R18 1 1
      204 DUPCLOSURE                       R19 K44 [PROTO_37]
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R4
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R16
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R14
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R12
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R18
      221 DUPCLOSURE                       R20 K45 [PROTO_40]
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R7
      225 DUPTABLE                         R21 K49 [{"Context", "Provider", "InputDetector"}]
      226 SETTABLEKS                       R18 R21 K46 ["Context"]
      228 SETTABLEKS                       R19 R21 K47 ["Provider"]
      230 SETTABLEKS                       R20 R21 K48 ["InputDetector"]
      232 RETURN                           R21 1
