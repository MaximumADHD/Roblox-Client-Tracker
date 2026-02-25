PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["AbsolutePosition"]
        5 RETURN                           R0 1
        6 LOADNIL                          R0
        7 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 LOADK                            R2 K0 ["AbsolutePosition"]
        9 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R0 R0 K2 ["Connect"]
       17 CALL                             R0 2 1
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R4 0 1
       12 MOVE                             R5 R0
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["useState"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 2
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R7 0 2
       30 MOVE                             R8 R0
       31 MOVE                             R9 R4
       32 SETLIST                          R7 R8 2 [1]
       34 CALL                             R5 2 0
       35 DUPTABLE                         R5 K6 [{"absolutePosition", "frame", "setFrame"}]
       36 SETTABLEKS                       R3 R5 K3 ["absolutePosition"]
       38 SETTABLEKS                       R0 R5 K4 ["frame"]
       40 SETTABLEKS                       R1 R5 K5 ["setFrame"]
       42 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["frame"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["frame"]
        9 JUMPIFNOT                        R0 ; [+19]
       10 LOADK                            R3 K1 ["CompositorNode"]
       11 NAMECALL                         R1 R0 K2 ["HasTag"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+11]
       15 LOADK                            R4 K3 ["GuiObject"]
       16 NAMECALL                         R2 R0 K4 ["IsA"]
       18 CALL                             R2 2 1
       19 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       21 LOADK                            R3 K5 ["Object tagged with CompositorNode is not GuiObject"]
       22 GETIMPORT                        R1 K7 [assert]
       24 CALL                             R1 2 0
       25 RETURN                           R0 1
       26 GETTABLEKS                       R0 R0 K8 ["Parent"]
       28 JUMPBACK                         ; [-20]
       29 LOADNIL                          R1
       30 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setFrame"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setFrame"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K1 ["frame"]
        8 JUMPIF                           R0 ; [+2]
        9 LOADNIL                          R0
       10 RETURN                           R0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K1 ["frame"]
       14 GETTABLEKS                       R0 R1 K2 ["AncestryChanged"]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 NAMECALL                         R0 R0 K3 ["Connect"]
       21 CALL                             R0 2 1
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["absolutePosition"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["absolutePosition"]
        7 JUMPIF                           R0 ; [+2]
        8 LOADNIL                          R0
        9 RETURN                           R0 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K0 ["absolutePosition"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K0 ["absolutePosition"]
       16 SUB                              R0 R1 R2
       17 GETUPVAL                         R2 2
       18 DIV                              R1 R0 R2
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K1 ["X"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K2 ["Y"]
       25 DIV                              R2 R3 R4
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R4 R5 K1 ["X"]
       29 DIV                              R3 R4 R2
       30 GETIMPORT                        R4 K5 [Vector2.new]
       32 GETTABLEKS                       R6 R1 K1 ["X"]
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R7 R8 K1 ["X"]
       37 MUL                              R5 R6 R7
       38 GETTABLEKS                       R8 R1 K2 ["Y"]
       40 MINUS                            R7 R8
       41 MUL                              R6 R7 R3
       42 CALL                             R4 2 1
       43 GETIMPORT                        R5 K5 [Vector2.new]
       45 GETTABLEKS                       R7 R4 K1 ["X"]
       47 FASTCALL1                        MATH_ROUND R7 ; [+2]
       48 GETIMPORT                        R6 K8 [math.round]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R8 R4 K2 ["Y"]
       53 FASTCALL1                        MATH_ROUND R8 ; [+2]
       54 GETIMPORT                        R7 K8 [math.round]
       56 CALL                             R7 1 1
       57 CALL                             R5 2 1
       58 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 ADD                              R0 R1 R2
       10 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["useSignalState"]
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R6 R3 K1 ["frame"]
       12 LOADK                            R7 K2 ["AbsoluteSize"]
       13 GETIMPORT                        R8 K5 [Vector2.new]
       15 LOADN                            R9 0
       16 LOADN                            R10 0
       17 CALL                             R8 2 -1
       18 CALL                             R5 -1 1
       19 FASTCALL1                        TYPEOF R5 ; [+3]
       20 MOVE                             R9 R5
       21 GETIMPORT                        R8 K7 [typeof]
       23 CALL                             R8 1 1
       24 JUMPIFEQKS                       R8 K3 ["Vector2"] ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 FASTCALL2K                       ASSERT R7 K8 ; [+4]
       30 LOADK                            R8 K8 ["AbsoluteSize is not Vector2"]
       31 GETIMPORT                        R6 K10 [assert]
       33 CALL                             R6 2 0
       34 GETUPVAL                         R7 3
       35 GETTABLEKS                       R6 R7 K11 ["useCallback"]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R8 0 1
       41 GETTABLEKS                       R9 R2 K1 ["frame"]
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R8 3
       47 GETTABLEKS                       R7 R8 K12 ["useEffect"]
       49 NEWCLOSURE                       R8 P1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R9 0 2
       55 MOVE                             R10 R6
       56 GETTABLEKS                       R11 R3 K13 ["setFrame"]
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 0
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R7 R8 K14 ["useMemo"]
       64 NEWCLOSURE                       R8 P2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R1
       69 NEWTABLE                         R9 0 3
       71 GETTABLEKS                       R10 R3 K15 ["absolutePosition"]
       73 GETTABLEKS                       R11 R2 K15 ["absolutePosition"]
       75 MOVE                             R12 R5
       76 SETLIST                          R9 R10 3 [1]
       78 CALL                             R7 2 1
       79 GETUPVAL                         R9 3
       80 GETTABLEKS                       R8 R9 K14 ["useMemo"]
       82 NEWCLOSURE                       R9 P3
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R4
       85 NEWTABLE                         R10 0 2
       87 MOVE                             R11 R4
       88 MOVE                             R12 R7
       89 SETLIST                          R10 R11 2 [1]
       91 CALL                             R8 2 1
       92 DUPTABLE                         R9 K18 [{"pinPosition", "setPositionerFrame"}]
       93 SETTABLEKS                       R8 R9 K16 ["pinPosition"]
       95 GETTABLEKS                       R10 R2 K13 ["setFrame"]
       97 SETTABLEKS                       R10 R9 K17 ["setPositionerFrame"]
       99 RETURN                           R9 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["pinNodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodeRenderInfoById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["pinNodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getPinAnchorKey"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["pinNodeId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["pinSide"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["pinName"]
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["pinSide"]
        7 JUMPIFNOTEQKS                    R0 K1 ["Input"] ; [+9]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["inputPinToConnectionMap"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K3 ["pinName"]
       15 GETTABLE                         R0 R1 R2
       16 RETURN                           R0 1
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R0 R1 K0 ["pinSide"]
       20 JUMPIFNOTEQKS                    R0 K4 ["Output"] ; [+9]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K5 ["outputPinToConnectionMap"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K3 ["pinName"]
       28 GETTABLE                         R0 R1 R2
       29 RETURN                           R0 1
       30 LOADNIL                          R0
       31 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["pinSide"]
        7 JUMPIFNOTEQKS                    R0 K1 ["Input"] ; [+13]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K2 ["getPinAnchorKey"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K3 ["outputNodeId"]
       15 LOADK                            R2 K4 ["Output"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K5 ["outputNodePinId"]
       19 CALL                             R0 3 -1
       20 RETURN                           R0 -1
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R0 R1 K0 ["pinSide"]
       24 JUMPIFNOTEQKS                    R0 K4 ["Output"] ; [+13]
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R0 R1 K2 ["getPinAnchorKey"]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K6 ["inputNodeId"]
       32 LOADK                            R2 K1 ["Input"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K7 ["inputNodePinId"]
       36 CALL                             R0 3 -1
       37 RETURN                           R0 -1
       38 LOADNIL                          R0
       39 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pinPosition"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 1
        8 JUMPIFNOTEQKNIL                  R0 ; [+3]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 DUPTABLE                         R0 K5 [{"pinDataType", "pinName", "pinPosition", "pinSide", "pinNodeId"}]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K1 ["pinDataType"]
       16 SETTABLEKS                       R1 R0 K1 ["pinDataType"]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K2 ["pinName"]
       21 SETTABLEKS                       R1 R0 K2 ["pinName"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K0 ["pinPosition"]
       26 SETTABLEKS                       R1 R0 K0 ["pinPosition"]
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R1 R2 K3 ["pinSide"]
       31 SETTABLEKS                       R1 R0 K3 ["pinSide"]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R1 R2 K4 ["pinNodeId"]
       36 SETTABLEKS                       R1 R0 K4 ["pinNodeId"]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R1 R2 K6 ["pushAnchor"]
       41 GETUPVAL                         R2 4
       42 MOVE                             R3 R0
       43 CALL                             R1 2 -1
       44 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeCurvePreviewInfo"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["of"]
        5 LOADNIL                          R1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K1 ["observeCurvePreviewInfo"]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_21:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["of"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 LOADNIL                          R1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K1 ["pinSide"]
       12 JUMPIFNOTEQKS                    R2 K2 ["Input"] ; [+8]
       14 GETTABLEKS                       R2 R0 K3 ["inputPinToConnectionMap"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K4 ["pinName"]
       19 GETTABLE                         R1 R2 R3
       20 JUMP                             ; [+18]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K1 ["pinSide"]
       24 JUMPIFNOTEQKS                    R2 K5 ["Output"] ; [+8]
       26 GETTABLEKS                       R2 R0 K6 ["outputPinToConnectionMap"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K4 ["pinName"]
       31 GETTABLE                         R1 R2 R3
       32 JUMP                             ; [+6]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R2 R3 K0 ["of"]
       36 LOADB                            R3 0
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1
       39 JUMPIF                           R1 ; [+6]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R2 R3 K0 ["of"]
       43 LOADB                            R3 0
       44 CALL                             R2 1 -1
       45 RETURN                           R2 -1
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R2 R3 K7 ["observeGraphNodeById"]
       49 GETTABLEKS                       R3 R1 K8 ["outputNodeId"]
       51 CALL                             R2 1 1
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R3 R4 K9 ["createComputed"]
       55 NEWCLOSURE                       R4 P0
       56 CAPTURE                          VAL R2
       57 CALL                             R3 1 -1
       58 RETURN                           R3 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["pinNodeId"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["switchMap"]
       10 MOVE                             R2 R0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U3
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+49]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["sourcePinSide"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["pinSide"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+20]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K2 ["sourcePinNodeId"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K3 ["pinNodeId"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+34]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K4 ["sourcePinName"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K5 ["pinName"]
       24 JUMPIFNOTEQ                      R0 R1 ; [+26]
       26 LOADB                            R0 1
       27 RETURN                           R0 1
       28 JUMP                             ; [+22]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R0 R1 K6 ["targetPinNodeId"]
       32 JUMPIFNOT                        R0 ; [+18]
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R0 R1 K6 ["targetPinNodeId"]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R1 R2 K3 ["pinNodeId"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+11]
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R0 R1 K7 ["targetPinName"]
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R1 R2 K5 ["pinName"]
       47 JUMPIFNOTEQ                      R0 R1 ; [+3]
       49 LOADB                            R0 1
       50 RETURN                           R0 1
       51 GETUPVAL                         R0 2
       52 JUMPIFNOT                        R0 ; [+20]
       53 LOADB                            R0 0
       54 GETUPVAL                         R2 2
       55 GETTABLEKS                       R1 R2 K7 ["targetPinName"]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R2 R3 K5 ["pinName"]
       60 JUMPIFNOTEQ                      R1 R2 ; [+11]
       62 GETUPVAL                         R2 2
       63 GETTABLEKS                       R1 R2 K6 ["targetPinNodeId"]
       65 GETUPVAL                         R3 1
       66 GETTABLEKS                       R2 R3 K3 ["pinNodeId"]
       68 JUMPIFEQ                         R1 R2 ; [+2]
       70 LOADB                            R0 0 +1
       71 LOADB                            R0 1
       72 RETURN                           R0 1
       73 GETUPVAL                         R0 3
       74 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+25]
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+12]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K2 ["Color"]
       10 GETTABLEKS                       R3 R4 K3 ["Extended"]
       12 GETTABLEKS                       R2 R3 K4 ["Green"]
       14 GETTABLEKS                       R1 R2 K5 ["Green_800"]
       16 GETTABLEKS                       R0 R1 K6 ["Color3"]
       18 RETURN                           R0 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K2 ["Color"]
       22 GETTABLEKS                       R2 R3 K7 ["Surface"]
       24 GETTABLEKS                       R1 R2 K8 ["Surface_100"]
       26 GETTABLEKS                       R0 R1 K6 ["Color3"]
       28 RETURN                           R0 1
       29 GETUPVAL                         R0 1
       30 JUMPIFNOT                        R0 ; [+26]
       31 GETUPVAL                         R0 3
       32 JUMPIFNOT                        R0 ; [+12]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K2 ["Color"]
       36 GETTABLEKS                       R3 R4 K3 ["Extended"]
       38 GETTABLEKS                       R2 R3 K9 ["Gray"]
       40 GETTABLEKS                       R1 R2 K10 ["Gray_800"]
       42 GETTABLEKS                       R0 R1 K6 ["Color3"]
       44 RETURN                           R0 1
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R4 R5 K2 ["Color"]
       48 GETTABLEKS                       R3 R4 K3 ["Extended"]
       50 GETTABLEKS                       R2 R3 K9 ["Gray"]
       52 GETTABLEKS                       R1 R2 K11 ["Gray_600"]
       54 GETTABLEKS                       R0 R1 K6 ["Color3"]
       56 RETURN                           R0 1
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R3 R4 K2 ["Color"]
       60 GETTABLEKS                       R2 R3 K7 ["Surface"]
       62 GETTABLEKS                       R1 R2 K8 ["Surface_100"]
       64 GETTABLEKS                       R0 R1 K6 ["Color3"]
       66 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+13]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K2 ["Color"]
        8 GETTABLEKS                       R3 R4 K3 ["Extended"]
       10 GETTABLEKS                       R2 R3 K4 ["Green"]
       12 GETTABLEKS                       R1 R2 K5 ["Green_800"]
       14 GETTABLEKS                       R0 R1 K6 ["Color3"]
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 2
       18 JUMPIFNOT                        R0 ; [+12]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K2 ["Color"]
       22 GETTABLEKS                       R3 R4 K3 ["Extended"]
       24 GETTABLEKS                       R2 R3 K7 ["Gray"]
       26 GETTABLEKS                       R1 R2 K8 ["Gray_800"]
       28 GETTABLEKS                       R0 R1 K6 ["Color3"]
       30 RETURN                           R0 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K2 ["Color"]
       34 GETTABLEKS                       R3 R4 K3 ["Extended"]
       36 GETTABLEKS                       R2 R3 K7 ["Gray"]
       38 GETTABLEKS                       R1 R2 K9 ["Gray_600"]
       40 GETTABLEKS                       R0 R1 K6 ["Color3"]
       42 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onStartDrag"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["pinNodeId"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["pinName"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K3 ["pinDataType"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K4 ["pinSide"]
       15 CALL                             R1 4 0
       16 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 LOADK                            R2 K0 ["PinName"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["pinName"]
        9 NAMECALL                         R0 R0 K2 ["SetAttribute"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["pinNodeId"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["Bad pinNodeId"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K4 ["useContext"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K5 ["Context"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K6 ["useSignalState"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K7 ["useMemo"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R5 0 2
       26 GETTABLEKS                       R6 R1 K8 ["observeGraphNodeById"]
       28 GETTABLEKS                       R7 R0 K0 ["pinNodeId"]
       30 SETLIST                          R5 R6 2 [1]
       32 CALL                             R3 2 -1
       33 CALL                             R2 -1 1
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R4 R5 K9 ["Hooks"]
       37 GETTABLEKS                       R3 R4 K10 ["useTokens"]
       39 CALL                             R3 0 1
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K4 ["useContext"]
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R5 R6 K5 ["Context"]
       46 CALL                             R4 1 1
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R5 R6 K6 ["useSignalState"]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R6 R7 K7 ["useMemo"]
       53 NEWCLOSURE                       R7 P1
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R8 0 2
       58 GETTABLEKS                       R9 R1 K11 ["observeNodeRenderInfoById"]
       60 GETTABLEKS                       R10 R0 K0 ["pinNodeId"]
       62 SETLIST                          R8 R9 2 [1]
       64 CALL                             R6 2 -1
       65 CALL                             R5 -1 1
       66 GETUPVAL                         R6 5
       67 GETTABLEKS                       R7 R4 K12 ["observeNodePosition"]
       69 GETTABLEKS                       R8 R0 K0 ["pinNodeId"]
       71 CALL                             R7 1 1
       72 JUMPIFNOT                        R5 ; [+6]
       73 GETTABLEKS                       R9 R5 K13 ["size"]
       75 JUMPIFNOT                        R9 ; [+3]
       76 GETTABLEKS                       R8 R5 K13 ["size"]
       78 JUMP                             ; [+2]
       79 GETIMPORT                        R8 K16 [Vector2.zero]
       81 CALL                             R6 2 1
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R7 R8 K7 ["useMemo"]
       85 NEWCLOSURE                       R8 P2
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          VAL R0
       88 NEWTABLE                         R9 0 3
       90 GETTABLEKS                       R10 R0 K0 ["pinNodeId"]
       92 GETTABLEKS                       R11 R0 K17 ["pinSide"]
       94 GETTABLEKS                       R12 R0 K18 ["pinName"]
       96 SETLIST                          R9 R10 3 [1]
       98 CALL                             R7 2 1
       99 GETUPVAL                         R9 0
      100 GETTABLEKS                       R8 R9 K7 ["useMemo"]
      102 NEWCLOSURE                       R9 P3
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R0
      105 NEWTABLE                         R10 0 3
      107 MOVE                             R11 R2
      108 GETTABLEKS                       R12 R0 K17 ["pinSide"]
      110 GETTABLEKS                       R13 R0 K18 ["pinName"]
      112 SETLIST                          R10 R11 3 [1]
      114 CALL                             R8 2 1
      115 GETUPVAL                         R10 0
      116 GETTABLEKS                       R9 R10 K7 ["useMemo"]
      118 NEWCLOSURE                       R10 P4
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U6
      122 NEWTABLE                         R11 0 3
      124 MOVE                             R12 R8
      125 GETTABLEKS                       R13 R0 K17 ["pinSide"]
      127 GETTABLEKS                       R14 R0 K18 ["pinName"]
      129 SETLIST                          R11 R12 3 [1]
      131 CALL                             R9 2 1
      132 GETUPVAL                         R11 0
      133 GETTABLEKS                       R10 R11 K19 ["useEffect"]
      135 NEWCLOSURE                       R11 P5
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R7
      141 NEWTABLE                         R12 0 8
      143 JUMPIFEQKNIL                     R2 ; [+2]
      145 LOADB                            R13 0 +1
      146 LOADB                            R13 1
      147 GETTABLEKS                       R14 R0 K0 ["pinNodeId"]
      149 GETTABLEKS                       R15 R0 K20 ["pinDataType"]
      151 GETTABLEKS                       R16 R0 K18 ["pinName"]
      153 GETTABLEKS                       R17 R0 K17 ["pinSide"]
      155 MOVE                             R18 R7
      156 GETTABLEKS                       R19 R6 K21 ["pinPosition"]
      158 GETTABLEKS                       R20 R4 K22 ["pushAnchor"]
      160 SETLIST                          R12 R13 8 [1]
      162 CALL                             R10 2 0
      163 GETUPVAL                         R11 2
      164 GETTABLEKS                       R10 R11 K6 ["useSignalState"]
      166 GETUPVAL                         R12 0
      167 GETTABLEKS                       R11 R12 K7 ["useMemo"]
      169 NEWCLOSURE                       R12 P6
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R7
      172 NEWTABLE                         R13 0 2
      174 MOVE                             R14 R7
      175 GETTABLEKS                       R15 R4 K23 ["observeCurvePreviewInfo"]
      177 SETLIST                          R13 R14 2 [1]
      179 CALL                             R11 2 -1
      180 CALL                             R10 -1 1
      181 GETUPVAL                         R12 2
      182 GETTABLEKS                       R11 R12 K6 ["useSignalState"]
      184 GETUPVAL                         R13 0
      185 GETTABLEKS                       R12 R13 K7 ["useMemo"]
      187 NEWCLOSURE                       R13 P7
      188 CAPTURE                          VAL R9
      189 CAPTURE                          UPVAL U7
      190 CAPTURE                          VAL R4
      191 NEWTABLE                         R14 0 2
      193 MOVE                             R15 R9
      194 GETTABLEKS                       R16 R4 K23 ["observeCurvePreviewInfo"]
      196 SETLIST                          R14 R15 2 [1]
      198 CALL                             R12 2 -1
      199 CALL                             R11 -1 1
      200 GETUPVAL                         R13 2
      201 GETTABLEKS                       R12 R13 K6 ["useSignalState"]
      203 GETUPVAL                         R14 0
      204 GETTABLEKS                       R13 R14 K7 ["useMemo"]
      206 NEWCLOSURE                       R14 P8
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R0
      209 CAPTURE                          UPVAL U7
      210 CAPTURE                          UPVAL U8
      211 NEWTABLE                         R15 0 3
      213 GETTABLEKS                       R16 R0 K0 ["pinNodeId"]
      215 GETTABLEKS                       R17 R0 K18 ["pinName"]
      217 GETTABLEKS                       R18 R1 K8 ["observeGraphNodeById"]
      219 SETLIST                          R15 R16 3 [1]
      221 CALL                             R13 2 -1
      222 CALL                             R12 -1 1
      223 GETUPVAL                         R14 2
      224 GETTABLEKS                       R13 R14 K6 ["useSignalState"]
      226 GETUPVAL                         R15 9
      227 GETTABLEKS                       R14 R15 K24 ["useObserveIsDisabled"]
      229 GETTABLEKS                       R15 R0 K0 ["pinNodeId"]
      231 CALL                             R14 1 -1
      232 CALL                             R13 -1 1
      233 GETUPVAL                         R15 0
      234 GETTABLEKS                       R14 R15 K7 ["useMemo"]
      236 NEWCLOSURE                       R15 P9
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R0
      239 CAPTURE                          VAL R11
      240 CAPTURE                          VAL R12
      241 NEWTABLE                         R16 0 6
      243 MOVE                             R17 R12
      244 MOVE                             R18 R10
      245 MOVE                             R19 R11
      246 GETTABLEKS                       R20 R0 K0 ["pinNodeId"]
      248 GETTABLEKS                       R21 R0 K18 ["pinName"]
      250 GETTABLEKS                       R22 R0 K17 ["pinSide"]
      252 SETLIST                          R16 R17 6 [1]
      254 CALL                             R14 2 1
      255 GETUPVAL                         R16 0
      256 GETTABLEKS                       R15 R16 K7 ["useMemo"]
      258 NEWCLOSURE                       R16 P10
      259 CAPTURE                          VAL R0
      260 CAPTURE                          VAL R14
      261 CAPTURE                          VAL R3
      262 CAPTURE                          VAL R13
      263 NEWTABLE                         R17 0 4
      265 MOVE                             R18 R14
      266 GETTABLEKS                       R19 R0 K20 ["pinDataType"]
      268 MOVE                             R20 R3
      269 MOVE                             R21 R13
      270 SETLIST                          R17 R18 4 [1]
      272 CALL                             R15 2 1
      273 GETUPVAL                         R17 0
      274 GETTABLEKS                       R16 R17 K7 ["useMemo"]
      276 NEWCLOSURE                       R17 P11
      277 CAPTURE                          VAL R0
      278 CAPTURE                          VAL R3
      279 CAPTURE                          VAL R13
      280 NEWTABLE                         R18 0 3
      282 GETTABLEKS                       R19 R0 K20 ["pinDataType"]
      284 MOVE                             R20 R3
      285 MOVE                             R21 R13
      286 SETLIST                          R18 R19 3 [1]
      288 CALL                             R16 2 1
      289 GETUPVAL                         R18 0
      290 GETTABLEKS                       R17 R18 K25 ["useCallback"]
      292 NEWCLOSURE                       R18 P12
      293 CAPTURE                          VAL R4
      294 CAPTURE                          VAL R0
      295 NEWTABLE                         R19 0 5
      297 GETTABLEKS                       R20 R0 K0 ["pinNodeId"]
      299 GETTABLEKS                       R21 R0 K17 ["pinSide"]
      301 GETTABLEKS                       R22 R0 K20 ["pinDataType"]
      303 GETTABLEKS                       R23 R0 K18 ["pinName"]
      305 GETTABLEKS                       R24 R4 K26 ["onStartDrag"]
      307 SETLIST                          R19 R20 5 [1]
      309 CALL                             R17 2 1
      310 GETUPVAL                         R19 0
      311 GETTABLEKS                       R18 R19 K27 ["useState"]
      313 LOADNIL                          R19
      314 CALL                             R18 1 2
      315 GETUPVAL                         R21 0
      316 GETTABLEKS                       R20 R21 K19 ["useEffect"]
      318 NEWCLOSURE                       R21 P13
      319 CAPTURE                          VAL R18
      320 CAPTURE                          VAL R0
      321 NEWTABLE                         R22 0 2
      323 MOVE                             R23 R18
      324 GETTABLEKS                       R24 R0 K18 ["pinName"]
      326 SETLIST                          R22 R23 2 [1]
      328 CALL                             R20 2 0
      329 GETUPVAL                         R21 0
      330 GETTABLEKS                       R20 R21 K28 ["createElement"]
      332 GETUPVAL                         R21 10
      333 DUPTABLE                         R22 K38 [{"Position", "positionerRef", "ZIndex", "Color3", "OutlineColor3", "OutlineThickness", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      334 GETTABLEKS                       R23 R0 K29 ["Position"]
      336 SETTABLEKS                       R23 R22 K29 ["Position"]
      338 GETTABLEKS                       R23 R6 K39 ["setPositionerFrame"]
      340 SETTABLEKS                       R23 R22 K30 ["positionerRef"]
      342 GETUPVAL                         R25 11
      343 GETTABLEKS                       R24 R25 K40 ["NODEVIEW_ZINDEX"]
      345 GETTABLEKS                       R23 R24 K41 ["Anchors"]
      347 SETTABLEKS                       R23 R22 K31 ["ZIndex"]
      349 SETTABLEKS                       R15 R22 K32 ["Color3"]
      351 SETTABLEKS                       R16 R22 K33 ["OutlineColor3"]
      353 LOADN                            R23 1
      354 SETTABLEKS                       R23 R22 K34 ["OutlineThickness"]
      356 SETTABLEKS                       R17 R22 K35 ["OnDragStart"]
      358 GETTABLEKS                       R23 R4 K42 ["onDragMoved"]
      360 SETTABLEKS                       R23 R22 K36 ["OnDragMoved"]
      362 GETTABLEKS                       R23 R4 K43 ["onDragEnded"]
      364 SETTABLEKS                       R23 R22 K37 ["OnDragEnded"]
      366 DUPTABLE                         R23 K45 [{"DebugMarker"}]
      367 GETUPVAL                         R25 0
      368 GETTABLEKS                       R24 R25 K28 ["createElement"]
      370 GETUPVAL                         R26 3
      371 GETTABLEKS                       R25 R26 K46 ["View"]
      373 DUPTABLE                         R26 K50 [{"tag", "testId", "ref"}]
      374 LOADK                            R27 K51 ["size-full"]
      375 SETTABLEKS                       R27 R26 K47 ["tag"]
      377 LOADK                            R27 K52 ["RenderedCompositorPin-DebugMarker"]
      378 SETTABLEKS                       R27 R26 K48 ["testId"]
      380 SETTABLEKS                       R19 R26 K49 ["ref"]
      382 CALL                             R24 2 1
      383 SETTABLEKS                       R24 R23 K44 ["DebugMarker"]
      385 CALL                             R20 3 -1
      386 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R4 K10 ["CompositorPin"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R7 R0 K8 ["Components"]
       27 GETTABLEKS                       R6 R7 K9 ["NodeView"]
       29 GETTABLEKS                       R5 R6 K11 ["CompositorNodes"]
       31 GETTABLEKS                       R4 R5 K12 ["CompositorStateUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Util"]
       38 GETTABLEKS                       R5 R6 K14 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Parent"]
       45 GETTABLEKS                       R6 R7 K16 ["Foundation"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       52 GETTABLEKS                       R7 R8 K17 ["NativeGraphContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       59 GETTABLEKS                       R9 R10 K17 ["NativeGraphContext"]
       61 GETTABLEKS                       R8 R9 K18 ["NativeGraphUtils"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K19 ["NodeViewTypes"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R11 R0 K15 ["Parent"]
       73 GETTABLEKS                       R10 R11 K20 ["React"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R12 R0 K15 ["Parent"]
       80 GETTABLEKS                       R11 R12 K21 ["Signals"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETIMPORT                        R19 K1 [script]
       87 GETTABLEKS                       R18 R19 K15 ["Parent"]
       89 GETTABLEKS                       R17 R18 K15 ["Parent"]
       91 GETTABLEKS                       R16 R17 K15 ["Parent"]
       93 GETTABLEKS                       R15 R16 K15 ["Parent"]
       95 GETTABLEKS                       R14 R15 K13 ["Util"]
       97 GETTABLEKS                       R13 R14 K21 ["Signals"]
       99 GETTABLEKS                       R12 R13 K22 ["SignalsInstanceUtils"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R14 R0 K15 ["Parent"]
      106 GETTABLEKS                       R13 R14 K23 ["SignalsReact"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R15 R0 K24 ["Hooks"]
      113 GETTABLEKS                       R14 R15 K25 ["useProperty"]
      115 CALL                             R13 1 1
      116 DUPCLOSURE                       R14 K26 [PROTO_4]
      117 CAPTURE                          VAL R9
      118 DUPCLOSURE                       R15 K27 [PROTO_11]
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R9
      123 DUPCLOSURE                       R16 K28 [PROTO_28]
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R4
      136 RETURN                           R16 1
