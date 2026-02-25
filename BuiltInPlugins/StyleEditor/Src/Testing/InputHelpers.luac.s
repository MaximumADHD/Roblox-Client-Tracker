PROTO_0:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETTABLEKS                       R6 R0 K3 ["AbsolutePosition"]
        4 GETTABLEKS                       R5 R6 K4 ["X"]
        6 GETTABLEKS                       R8 R0 K5 ["AbsoluteSize"]
        8 GETTABLEKS                       R7 R8 K4 ["X"]
       10 GETTABLEKS                       R9 R1 K4 ["X"]
       12 GETTABLEKS                       R8 R9 K6 ["Scale"]
       14 MUL                              R6 R7 R8
       15 ADD                              R4 R5 R6
       16 GETTABLEKS                       R6 R1 K4 ["X"]
       18 GETTABLEKS                       R5 R6 K7 ["Offset"]
       20 ADD                              R3 R4 R5
       21 GETTABLEKS                       R7 R0 K3 ["AbsolutePosition"]
       23 GETTABLEKS                       R6 R7 K8 ["Y"]
       25 GETTABLEKS                       R9 R0 K5 ["AbsoluteSize"]
       27 GETTABLEKS                       R8 R9 K8 ["Y"]
       29 GETTABLEKS                       R10 R1 K8 ["Y"]
       31 GETTABLEKS                       R9 R10 K6 ["Scale"]
       33 MUL                              R7 R8 R9
       34 ADD                              R5 R6 R7
       35 GETTABLEKS                       R7 R1 K8 ["Y"]
       37 GETTABLEKS                       R6 R7 K7 ["Offset"]
       39 ADD                              R4 R5 R6
       40 CALL                             R2 2 -1
       41 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["LayerCollector"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstAncestorWhichIsA"]
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K4 [Vector2.new]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K5 ["AbsolutePosition"]
       10 GETTABLEKS                       R4 R5 K6 ["X"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K7 ["AbsoluteSize"]
       15 GETTABLEKS                       R6 R7 K6 ["X"]
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R8 R9 K6 ["X"]
       20 GETTABLEKS                       R7 R8 K8 ["Scale"]
       22 MUL                              R5 R6 R7
       23 ADD                              R3 R4 R5
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K6 ["X"]
       27 GETTABLEKS                       R4 R5 K9 ["Offset"]
       29 ADD                              R2 R3 R4
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K5 ["AbsolutePosition"]
       33 GETTABLEKS                       R5 R6 K10 ["Y"]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R8 R9 K7 ["AbsoluteSize"]
       38 GETTABLEKS                       R7 R8 K10 ["Y"]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R9 R10 K10 ["Y"]
       43 GETTABLEKS                       R8 R9 K8 ["Scale"]
       45 MUL                              R6 R7 R8
       46 ADD                              R4 R5 R6
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R6 R7 K10 ["Y"]
       50 GETTABLEKS                       R5 R6 K9 ["Offset"]
       52 ADD                              R3 R4 R5
       53 CALL                             R1 2 1
       54 GETUPVAL                         R2 2
       55 GETTABLEKS                       R4 R1 K6 ["X"]
       57 GETTABLEKS                       R5 R1 K10 ["Y"]
       59 MOVE                             R6 R0
       60 NAMECALL                         R2 R2 K11 ["SendMouseMoveEvent"]
       62 CALL                             R2 4 0
       63 GETUPVAL                         R2 2
       64 NAMECALL                         R2 R2 K12 ["WaitForInputEventsProcessed"]
       66 CALL                             R2 1 0
       67 GETUPVAL                         R2 2
       68 GETTABLEKS                       R4 R1 K6 ["X"]
       70 GETTABLEKS                       R5 R1 K10 ["Y"]
       72 LOADN                            R6 0
       73 LOADB                            R7 1
       74 MOVE                             R8 R0
       75 LOADN                            R9 1
       76 NAMECALL                         R2 R2 K13 ["SendMouseButtonEvent"]
       78 CALL                             R2 7 0
       79 GETUPVAL                         R2 2
       80 NAMECALL                         R2 R2 K12 ["WaitForInputEventsProcessed"]
       82 CALL                             R2 1 0
       83 GETUPVAL                         R2 2
       84 GETTABLEKS                       R4 R1 K6 ["X"]
       86 GETTABLEKS                       R5 R1 K10 ["Y"]
       88 LOADN                            R6 0
       89 LOADB                            R7 0
       90 MOVE                             R8 R0
       91 LOADN                            R9 1
       92 NAMECALL                         R2 R2 K13 ["SendMouseButtonEvent"]
       94 CALL                             R2 7 0
       95 GETUPVAL                         R2 2
       96 NAMECALL                         R2 R2 K12 ["WaitForInputEventsProcessed"]
       98 CALL                             R2 1 0
       99 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["AbsolutePosition"]
        4 GETTABLEKS                       R3 R4 K1 ["X"]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R5 R6 K1 ["X"]
       11 MULK                             R4 R5 K2 [0.5]
       12 ADD                              R2 R3 R4
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K0 ["AbsolutePosition"]
       16 GETTABLEKS                       R4 R5 K4 ["Y"]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K3 ["AbsoluteSize"]
       21 GETTABLEKS                       R6 R7 K4 ["Y"]
       23 MULK                             R5 R6 K2 [0.5]
       24 ADD                              R3 R4 R5
       25 GETUPVAL                         R4 1
       26 LOADK                            R6 K5 ["LayerCollector"]
       27 NAMECALL                         R4 R4 K6 ["FindFirstAncestorWhichIsA"]
       29 CALL                             R4 2 1
       30 NAMECALL                         R0 R0 K7 ["SendMouseMoveEvent"]
       32 CALL                             R0 4 0
       33 GETUPVAL                         R0 0
       34 NAMECALL                         R0 R0 K8 ["WaitForInputEventsProcessed"]
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["X"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Y"]
        7 GETUPVAL                         R4 2
        8 NAMECALL                         R0 R0 K2 ["SendMouseMoveEvent"]
       10 CALL                             R0 4 0
       11 GETUPVAL                         R0 0
       12 NAMECALL                         R0 R0 K3 ["WaitForInputEventsProcessed"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["X"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Y"]
        7 LOADN                            R4 0
        8 LOADB                            R5 1
        9 GETUPVAL                         R6 2
       10 LOADN                            R7 0
       11 NAMECALL                         R0 R0 K2 ["SendMouseButtonEvent"]
       13 CALL                             R0 7 0
       14 GETUPVAL                         R0 0
       15 NAMECALL                         R0 R0 K3 ["WaitForInputEventsProcessed"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["WaitForInputEventsProcessed"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["X"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["Y"]
       11 GETUPVAL                         R4 2
       12 NAMECALL                         R0 R0 K3 ["SendMouseMoveEvent"]
       14 CALL                             R0 4 0
       15 GETUPVAL                         R0 0
       16 NAMECALL                         R0 R0 K0 ["WaitForInputEventsProcessed"]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K1 ["X"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K2 ["Y"]
       26 GETUPVAL                         R4 2
       27 NAMECALL                         R0 R0 K3 ["SendMouseMoveEvent"]
       29 CALL                             R0 4 0
       30 GETUPVAL                         R0 0
       31 NAMECALL                         R0 R0 K0 ["WaitForInputEventsProcessed"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["X"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Y"]
        7 LOADN                            R4 0
        8 LOADB                            R5 0
        9 GETUPVAL                         R6 2
       10 LOADN                            R7 0
       11 NAMECALL                         R0 R0 K2 ["SendMouseButtonEvent"]
       13 CALL                             R0 7 0
       14 GETUPVAL                         R0 0
       15 NAMECALL                         R0 R0 K3 ["WaitForInputEventsProcessed"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getPosInElement"]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R4 K3 [UDim2.fromScale]
        6 LOADK                            R5 K4 [0.5]
        7 LOADK                            R6 K4 [0.5]
        8 CALL                             R4 2 -1
        9 CALL                             R2 -1 1
       10 LOADK                            R5 K5 ["LayerCollector"]
       11 NAMECALL                         R3 R0 K6 ["FindFirstAncestorWhichIsA"]
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 1
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 CALL                             R4 1 0
       20 GETUPVAL                         R4 1
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 CALL                             R4 1 0
       26 GETUPVAL                         R4 1
       27 NEWCLOSURE                       R5 P2
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 CALL                             R4 1 0
       32 GETUPVAL                         R4 1
       33 NEWCLOSURE                       R5 P3
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 CALL                             R4 1 0
       38 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["change"]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R2 K3 [{"target"}]
        9 DUPTABLE                         R3 K5 [{"Text"}]
       10 GETUPVAL                         R4 2
       11 SETTABLEKS                       R4 R3 K4 ["Text"]
       13 SETTABLEKS                       R3 R2 K2 ["target"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R3 3
       18 JUMPIFEQKB                       R3 TRUE ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 NAMECALL                         R0 R0 K6 ["ReleaseFocus"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["VirtualInputManager"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R5 R1 K9 ["Packages"]
       19 GETTABLEKS                       R4 R5 K10 ["Dev"]
       21 GETTABLEKS                       R3 R4 K11 ["ReactTestingLibrary"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K12 ["act"]
       26 GETTABLEKS                       R4 R2 K13 ["fireEvent"]
       28 NEWTABLE                         R5 8 0
       30 DUPCLOSURE                       R6 K14 [PROTO_0]
       31 SETTABLEKS                       R6 R5 K15 ["getPosInElement"]
       33 DUPCLOSURE                       R6 K16 [PROTO_2]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R6 R5 K17 ["clickInObject"]
       38 DUPCLOSURE                       R6 K18 [PROTO_4]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R6 R5 K19 ["hoverOverGuiBase"]
       43 DUPCLOSURE                       R6 K20 [PROTO_9]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R6 R5 K21 ["clickAndDragElementTo"]
       49 DUPCLOSURE                       R6 K22 [PROTO_11]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R6 R5 K23 ["focusAndType"]
       54 RETURN                           R5 1
