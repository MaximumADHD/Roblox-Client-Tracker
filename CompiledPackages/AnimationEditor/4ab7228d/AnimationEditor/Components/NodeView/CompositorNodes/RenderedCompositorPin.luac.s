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
        1 GETTABLEKS                       R0 R1 K0 ["getPinAnchorKey"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["pinNodeId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["pinSide"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["pinName"]
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeCurvePreviewInfo"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+27]
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+12]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K2 ["Color"]
       10 GETTABLEKS                       R3 R4 K3 ["Extended"]
       12 GETTABLEKS                       R2 R3 K4 ["Green"]
       14 GETTABLEKS                       R1 R2 K5 ["Green_800"]
       16 GETTABLEKS                       R0 R1 K6 ["Color3"]
       18 RETURN                           R0 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K2 ["Color"]
       22 GETTABLEKS                       R3 R4 K3 ["Extended"]
       24 GETTABLEKS                       R2 R3 K7 ["Gray"]
       26 GETTABLEKS                       R1 R2 K8 ["Gray_1100"]
       28 GETTABLEKS                       R0 R1 K6 ["Color3"]
       30 RETURN                           R0 1
       31 GETUPVAL                         R0 1
       32 JUMPIFNOT                        R0 ; [+12]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K2 ["Color"]
       36 GETTABLEKS                       R3 R4 K3 ["Extended"]
       38 GETTABLEKS                       R2 R3 K7 ["Gray"]
       40 GETTABLEKS                       R1 R2 K9 ["Gray_600"]
       42 GETTABLEKS                       R0 R1 K6 ["Color3"]
       44 RETURN                           R0 1
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R3 R4 K2 ["Color"]
       48 GETTABLEKS                       R2 R3 K10 ["Surface"]
       50 GETTABLEKS                       R1 R2 K11 ["Surface_100"]
       52 GETTABLEKS                       R0 R1 K6 ["Color3"]
       54 RETURN                           R0 1

PROTO_24:
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
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K2 ["Color"]
       20 GETTABLEKS                       R3 R4 K3 ["Extended"]
       22 GETTABLEKS                       R2 R3 K7 ["Gray"]
       24 GETTABLEKS                       R1 R2 K8 ["Gray_600"]
       26 GETTABLEKS                       R0 R1 K6 ["Color3"]
       28 RETURN                           R0 1

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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
       47 GETUPVAL                         R5 5
       48 GETTABLEKS                       R6 R4 K11 ["observeNodePosition"]
       50 GETTABLEKS                       R7 R0 K0 ["pinNodeId"]
       52 CALL                             R6 1 1
       53 JUMPIFNOT                        R2 ; [+6]
       54 GETTABLEKS                       R8 R2 K12 ["size"]
       56 JUMPIFNOT                        R8 ; [+3]
       57 GETTABLEKS                       R7 R2 K12 ["size"]
       59 JUMP                             ; [+2]
       60 GETIMPORT                        R7 K15 [Vector2.zero]
       62 CALL                             R5 2 1
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R6 R7 K7 ["useMemo"]
       66 NEWCLOSURE                       R7 P1
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R8 0 3
       71 GETTABLEKS                       R9 R0 K0 ["pinNodeId"]
       73 GETTABLEKS                       R10 R0 K16 ["pinSide"]
       75 GETTABLEKS                       R11 R0 K17 ["pinName"]
       77 SETLIST                          R8 R9 3 [1]
       79 CALL                             R6 2 1
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R7 R8 K7 ["useMemo"]
       83 NEWCLOSURE                       R8 P2
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R0
       86 NEWTABLE                         R9 0 3
       88 MOVE                             R10 R2
       89 GETTABLEKS                       R11 R0 K16 ["pinSide"]
       91 GETTABLEKS                       R12 R0 K17 ["pinName"]
       93 SETLIST                          R9 R10 3 [1]
       95 CALL                             R7 2 1
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R8 R9 K7 ["useMemo"]
       99 NEWCLOSURE                       R9 P3
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U6
      103 NEWTABLE                         R10 0 3
      105 MOVE                             R11 R7
      106 GETTABLEKS                       R12 R0 K16 ["pinSide"]
      108 GETTABLEKS                       R13 R0 K17 ["pinName"]
      110 SETLIST                          R10 R11 3 [1]
      112 CALL                             R8 2 1
      113 GETUPVAL                         R10 0
      114 GETTABLEKS                       R9 R10 K18 ["useEffect"]
      116 NEWCLOSURE                       R10 P4
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R6
      122 NEWTABLE                         R11 0 8
      124 JUMPIFEQKNIL                     R2 ; [+2]
      126 LOADB                            R12 0 +1
      127 LOADB                            R12 1
      128 GETTABLEKS                       R13 R0 K0 ["pinNodeId"]
      130 GETTABLEKS                       R14 R0 K19 ["pinDataType"]
      132 GETTABLEKS                       R15 R0 K17 ["pinName"]
      134 GETTABLEKS                       R16 R0 K16 ["pinSide"]
      136 MOVE                             R17 R6
      137 GETTABLEKS                       R18 R5 K20 ["pinPosition"]
      139 GETTABLEKS                       R19 R4 K21 ["pushAnchor"]
      141 SETLIST                          R11 R12 8 [1]
      143 CALL                             R9 2 0
      144 GETUPVAL                         R10 2
      145 GETTABLEKS                       R9 R10 K6 ["useSignalState"]
      147 GETUPVAL                         R11 0
      148 GETTABLEKS                       R10 R11 K7 ["useMemo"]
      150 NEWCLOSURE                       R11 P5
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R6
      153 NEWTABLE                         R12 0 2
      155 MOVE                             R13 R6
      156 GETTABLEKS                       R14 R4 K22 ["observeCurvePreviewInfo"]
      158 SETLIST                          R12 R13 2 [1]
      160 CALL                             R10 2 -1
      161 CALL                             R9 -1 1
      162 GETUPVAL                         R11 2
      163 GETTABLEKS                       R10 R11 K6 ["useSignalState"]
      165 GETUPVAL                         R12 0
      166 GETTABLEKS                       R11 R12 K7 ["useMemo"]
      168 NEWCLOSURE                       R12 P6
      169 CAPTURE                          VAL R8
      170 CAPTURE                          UPVAL U7
      171 CAPTURE                          VAL R4
      172 NEWTABLE                         R13 0 2
      174 MOVE                             R14 R8
      175 GETTABLEKS                       R15 R4 K22 ["observeCurvePreviewInfo"]
      177 SETLIST                          R13 R14 2 [1]
      179 CALL                             R11 2 -1
      180 CALL                             R10 -1 1
      181 GETUPVAL                         R12 2
      182 GETTABLEKS                       R11 R12 K6 ["useSignalState"]
      184 GETUPVAL                         R13 0
      185 GETTABLEKS                       R12 R13 K7 ["useMemo"]
      187 NEWCLOSURE                       R13 P7
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R0
      190 CAPTURE                          UPVAL U7
      191 CAPTURE                          UPVAL U8
      192 NEWTABLE                         R14 0 3
      194 GETTABLEKS                       R15 R0 K0 ["pinNodeId"]
      196 GETTABLEKS                       R16 R0 K17 ["pinName"]
      198 GETTABLEKS                       R17 R1 K8 ["observeGraphNodeById"]
      200 SETLIST                          R14 R15 3 [1]
      202 CALL                             R12 2 -1
      203 CALL                             R11 -1 1
      204 GETUPVAL                         R13 0
      205 GETTABLEKS                       R12 R13 K7 ["useMemo"]
      207 NEWCLOSURE                       R13 P8
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R0
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R11
      212 NEWTABLE                         R14 0 6
      214 MOVE                             R15 R11
      215 MOVE                             R16 R9
      216 MOVE                             R17 R10
      217 GETTABLEKS                       R18 R0 K0 ["pinNodeId"]
      219 GETTABLEKS                       R19 R0 K17 ["pinName"]
      221 GETTABLEKS                       R20 R0 K16 ["pinSide"]
      223 SETLIST                          R14 R15 6 [1]
      225 CALL                             R12 2 1
      226 GETUPVAL                         R14 0
      227 GETTABLEKS                       R13 R14 K7 ["useMemo"]
      229 NEWCLOSURE                       R14 P9
      230 CAPTURE                          VAL R0
      231 CAPTURE                          VAL R12
      232 CAPTURE                          VAL R3
      233 NEWTABLE                         R15 0 3
      235 MOVE                             R16 R12
      236 GETTABLEKS                       R17 R0 K19 ["pinDataType"]
      238 MOVE                             R18 R3
      239 SETLIST                          R15 R16 3 [1]
      241 CALL                             R13 2 1
      242 GETUPVAL                         R15 0
      243 GETTABLEKS                       R14 R15 K7 ["useMemo"]
      245 NEWCLOSURE                       R15 P10
      246 CAPTURE                          VAL R0
      247 CAPTURE                          VAL R3
      248 NEWTABLE                         R16 0 2
      250 GETTABLEKS                       R17 R0 K19 ["pinDataType"]
      252 MOVE                             R18 R3
      253 SETLIST                          R16 R17 2 [1]
      255 CALL                             R14 2 1
      256 GETUPVAL                         R16 0
      257 GETTABLEKS                       R15 R16 K23 ["useCallback"]
      259 NEWCLOSURE                       R16 P11
      260 CAPTURE                          VAL R4
      261 CAPTURE                          VAL R0
      262 NEWTABLE                         R17 0 5
      264 GETTABLEKS                       R18 R0 K0 ["pinNodeId"]
      266 GETTABLEKS                       R19 R0 K16 ["pinSide"]
      268 GETTABLEKS                       R20 R0 K19 ["pinDataType"]
      270 GETTABLEKS                       R21 R0 K17 ["pinName"]
      272 GETTABLEKS                       R22 R4 K24 ["onStartDrag"]
      274 SETLIST                          R17 R18 5 [1]
      276 CALL                             R15 2 1
      277 GETUPVAL                         R17 0
      278 GETTABLEKS                       R16 R17 K25 ["useState"]
      280 LOADNIL                          R17
      281 CALL                             R16 1 2
      282 GETUPVAL                         R19 0
      283 GETTABLEKS                       R18 R19 K18 ["useEffect"]
      285 NEWCLOSURE                       R19 P12
      286 CAPTURE                          VAL R16
      287 CAPTURE                          VAL R0
      288 NEWTABLE                         R20 0 2
      290 MOVE                             R21 R16
      291 GETTABLEKS                       R22 R0 K17 ["pinName"]
      293 SETLIST                          R20 R21 2 [1]
      295 CALL                             R18 2 0
      296 GETUPVAL                         R19 0
      297 GETTABLEKS                       R18 R19 K26 ["createElement"]
      299 GETUPVAL                         R19 9
      300 DUPTABLE                         R20 K36 [{"Position", "positionerRef", "ZIndex", "Color3", "OutlineColor3", "OutlineThickness", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      301 GETTABLEKS                       R21 R0 K27 ["Position"]
      303 SETTABLEKS                       R21 R20 K27 ["Position"]
      305 GETTABLEKS                       R21 R5 K37 ["setPositionerFrame"]
      307 SETTABLEKS                       R21 R20 K28 ["positionerRef"]
      309 GETUPVAL                         R23 10
      310 GETTABLEKS                       R22 R23 K38 ["NODEVIEW_ZINDEX"]
      312 GETTABLEKS                       R21 R22 K39 ["Anchors"]
      314 SETTABLEKS                       R21 R20 K29 ["ZIndex"]
      316 SETTABLEKS                       R13 R20 K30 ["Color3"]
      318 SETTABLEKS                       R14 R20 K31 ["OutlineColor3"]
      320 LOADN                            R21 1
      321 SETTABLEKS                       R21 R20 K32 ["OutlineThickness"]
      323 SETTABLEKS                       R15 R20 K33 ["OnDragStart"]
      325 GETTABLEKS                       R21 R4 K40 ["onDragMoved"]
      327 SETTABLEKS                       R21 R20 K34 ["OnDragMoved"]
      329 GETTABLEKS                       R21 R4 K41 ["onDragEnded"]
      331 SETTABLEKS                       R21 R20 K35 ["OnDragEnded"]
      333 DUPTABLE                         R21 K43 [{"DebugMarker"}]
      334 GETUPVAL                         R23 0
      335 GETTABLEKS                       R22 R23 K26 ["createElement"]
      337 GETUPVAL                         R24 3
      338 GETTABLEKS                       R23 R24 K44 ["View"]
      340 DUPTABLE                         R24 K48 [{"tag", "testId", "ref"}]
      341 LOADK                            R25 K49 ["size-full"]
      342 SETTABLEKS                       R25 R24 K45 ["tag"]
      344 LOADK                            R25 K50 ["RenderedCompositorPin-DebugMarker"]
      345 SETTABLEKS                       R25 R24 K46 ["testId"]
      347 SETTABLEKS                       R17 R24 K47 ["ref"]
      349 CALL                             R22 2 1
      350 SETTABLEKS                       R22 R21 K42 ["DebugMarker"]
      352 CALL                             R18 3 -1
      353 RETURN                           R18 -1

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
       25 GETTABLEKS                       R5 R0 K11 ["Util"]
       27 GETTABLEKS                       R4 R5 K12 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Parent"]
       34 GETTABLEKS                       R5 R6 K14 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       41 GETTABLEKS                       R6 R7 K15 ["NativeGraphContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       48 GETTABLEKS                       R8 R9 K15 ["NativeGraphContext"]
       50 GETTABLEKS                       R7 R8 K16 ["NativeGraphUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K17 ["NodeViewTypes"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K13 ["Parent"]
       62 GETTABLEKS                       R9 R10 K18 ["React"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K13 ["Parent"]
       69 GETTABLEKS                       R10 R11 K19 ["Signals"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETIMPORT                        R18 K1 [script]
       76 GETTABLEKS                       R17 R18 K13 ["Parent"]
       78 GETTABLEKS                       R16 R17 K13 ["Parent"]
       80 GETTABLEKS                       R15 R16 K13 ["Parent"]
       82 GETTABLEKS                       R14 R15 K13 ["Parent"]
       84 GETTABLEKS                       R13 R14 K11 ["Util"]
       86 GETTABLEKS                       R12 R13 K19 ["Signals"]
       88 GETTABLEKS                       R11 R12 K20 ["SignalsInstanceUtils"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R13 R0 K13 ["Parent"]
       95 GETTABLEKS                       R12 R13 K21 ["SignalsReact"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R14 R0 K22 ["Hooks"]
      102 GETTABLEKS                       R13 R14 K23 ["useProperty"]
      104 CALL                             R12 1 1
      105 DUPCLOSURE                       R13 K24 [PROTO_4]
      106 CAPTURE                          VAL R8
      107 DUPCLOSURE                       R14 K25 [PROTO_11]
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R8
      112 DUPCLOSURE                       R15 K26 [PROTO_27]
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R3
      124 RETURN                           R15 1
