PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["__handleGuiInset"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 CALL                             R5 2 2
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K1 ["getCurrentWindow"]
        9 CALL                             R7 0 1
       10 GETUPVAL                         R8 1
       11 MOVE                             R10 R5
       12 MOVE                             R11 R6
       13 MOVE                             R12 R2
       14 MOVE                             R13 R3
       15 MOVE                             R14 R7
       16 ORK                              R15 R4 K2 [0]
       17 NAMECALL                         R8 R8 K3 ["SendMouseButtonEvent"]
       19 CALL                             R8 7 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__handleGuiInset"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 2
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["getCurrentWindow"]
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 1
       11 MOVE                             R7 R2
       12 MOVE                             R8 R3
       13 MOVE                             R9 R4
       14 NAMECALL                         R5 R5 K2 ["SendMouseMoveEvent"]
       16 CALL                             R5 4 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["__handleGuiInset"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 2
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K1 ["getCurrentWindow"]
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 1
       11 MOVE                             R8 R3
       12 MOVE                             R9 R4
       13 MOVE                             R10 R2
       14 MOVE                             R11 R5
       15 NAMECALL                         R6 R6 K2 ["SendMouseWheelEvent"]
       17 CALL                             R6 5 0
       18 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R2 0
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R1 R3 ; [+3]
        4 LOADB                            R2 1
        5 MINUS                            R1 R1
        6 LOADN                            R5 1
        7 MOVE                             R3 R1
        8 LOADN                            R4 1
        9 FORNPREP                         R3
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K0 ["SendMouseWheelEvent"]
       13 GETTABLEKS                       R7 R0 K1 ["X"]
       15 GETTABLEKS                       R8 R0 K2 ["Y"]
       17 MOVE                             R9 R2
       18 CALL                             R6 3 0
       19 FORNLOOP                         R3
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 GETUPVAL                         R7 1
        3 GETTABLEKS                       R6 R7 K0 ["getCurrentWindow"]
        5 CALL                             R6 0 -1
        6 NAMECALL                         R3 R3 K1 ["click"]
        8 CALL                             R3 -1 0
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["sendMouseButtonEvent"]
       12 GETTABLEKS                       R4 R0 K3 ["X"]
       14 GETTABLEKS                       R5 R0 K4 ["Y"]
       16 MOVE                             R6 R2
       17 LOADB                            R7 1
       18 MOVE                             R8 R1
       19 CALL                             R3 5 0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K5 ["waitForInputEventsProcessed"]
       23 CALL                             R3 0 0
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K2 ["sendMouseButtonEvent"]
       27 GETTABLEKS                       R4 R0 K3 ["X"]
       29 GETTABLEKS                       R5 R0 K4 ["Y"]
       31 MOVE                             R6 R2
       32 LOADB                            R7 0
       33 MOVE                             R8 R1
       34 CALL                             R3 5 0
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R3 R4 K5 ["waitForInputEventsProcessed"]
       38 CALL                             R3 0 0
       39 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 0
        4 LOADB                            R0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 LOADN                            R1 1
        8 JUMPIFNOTLE                      R1 R0 ; [+16]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R2 4
       13 GETUPVAL                         R3 5
       14 CALL                             R0 3 0
       15 GETUPVAL                         R1 1
       16 SUBK                             R0 R1 K0 [1]
       17 SETUPVAL                         R0 1
       18 GETUPVAL                         R1 4
       19 ADDK                             R0 R1 K0 [1]
       20 SETUPVAL                         R0 4
       21 LOADB                            R0 1
       22 SETUPVAL                         R0 0
       23 LOADB                            R0 0
       24 RETURN                           R0 1
       25 GETUPVAL                         R0 1
       26 JUMPIFNOTEQKN                    R0 K1 [0] ; [+3]
       28 LOADB                            R0 1
       29 RETURN                           R0 1
       30 LOADB                            R0 0
       31 RETURN                           R0 1

PROTO_6:
        0 LOADB                            R3 1
        1 LOADN                            R4 0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          REF R3
        4 CAPTURE                          REF R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          REF R4
        8 CAPTURE                          VAL R2
        9 CLOSEUPVALS                      R1
       10 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["__syncRun"]
        3 LOADN                            R3 1
        4 LOADB                            R4 1
        5 LOADN                            R5 0
        6 LOADN                            R6 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          REF R4
        9 CAPTURE                          REF R3
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R5
       13 CAPTURE                          VAL R6
       14 CLOSEUPVALS                      R3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__syncRun"]
        3 MOVE                             R4 R1
        4 LOADB                            R5 1
        5 LOADN                            R6 0
        6 LOADN                            R7 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          REF R5
        9 CAPTURE                          REF R4
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R6
       13 CAPTURE                          VAL R7
       14 CLOSEUPVALS                      R4
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["__syncRun"]
        3 LOADN                            R3 1
        4 LOADB                            R4 1
        5 LOADN                            R5 0
        6 LOADN                            R6 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          REF R4
        9 CAPTURE                          REF R3
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R5
       13 CAPTURE                          VAL R6
       14 CLOSEUPVALS                      R3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendMouseButtonEvent"]
        3 GETTABLEKS                       R2 R0 K1 ["X"]
        5 GETTABLEKS                       R3 R0 K2 ["Y"]
        7 LOADN                            R4 0
        8 LOADB                            R5 1
        9 CALL                             R1 4 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendMouseButtonEvent"]
        3 GETTABLEKS                       R2 R0 K1 ["X"]
        5 GETTABLEKS                       R3 R0 K2 ["Y"]
        7 LOADN                            R4 0
        8 LOADB                            R5 0
        9 CALL                             R1 4 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendMouseButtonEvent"]
        3 GETTABLEKS                       R2 R0 K1 ["X"]
        5 GETTABLEKS                       R3 R0 K2 ["Y"]
        7 LOADN                            R4 1
        8 LOADB                            R5 1
        9 CALL                             R1 4 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["sendMouseButtonEvent"]
        3 GETTABLEKS                       R2 R0 K1 ["X"]
        5 GETTABLEKS                       R3 R0 K2 ["Y"]
        7 LOADN                            R4 1
        8 LOADB                            R5 0
        9 CALL                             R1 4 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SendMouseMoveEvent"]
        3 GETTABLEKS                       R2 R0 K1 ["X"]
        5 GETTABLEKS                       R3 R0 K2 ["Y"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+8]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["mouseLeftDown"]
        5 GETUPVAL                         R2 2
        6 CALL                             R1 1 0
        7 LOADB                            R1 1
        8 SETUPVAL                         R1 0
        9 JUMP                             ; [+36]
       10 GETUPVAL                         R2 3
       11 ADD                              R1 R2 R0
       12 SETUPVAL                         R1 3
       13 GETUPVAL                         R1 4
       14 JUMPIFNOT                        R1 ; [+19]
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R2 4
       17 JUMPIFNOTLT                      R1 R2 ; [+16]
       19 GETUPVAL                         R2 3
       20 GETUPVAL                         R3 4
       21 DIV                              R1 R2 R3
       22 GETUPVAL                         R5 5
       23 GETUPVAL                         R6 2
       24 SUB                              R4 R5 R6
       25 MUL                              R3 R4 R1
       26 GETUPVAL                         R4 2
       27 ADD                              R2 R3 R4
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K1 ["mouseMove"]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 0
       33 JUMP                             ; [+12]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R1 R2 K1 ["mouseMove"]
       37 GETUPVAL                         R2 5
       38 CALL                             R1 1 0
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R1 R2 K2 ["mouseLeftUp"]
       42 GETUPVAL                         R2 5
       43 CALL                             R1 1 0
       44 LOADB                            R1 1
       45 RETURN                           R1 1
       46 LOADB                            R1 0
       47 RETURN                           R1 1

PROTO_16:
        0 LOADN                            R3 0
        1 LOADB                            R4 0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          REF R4
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          REF R3
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R1
        9 CLOSEUPVALS                      R3
       10 RETURN                           R5 1

PROTO_17:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["__syncRun"]
        3 LOADN                            R5 0
        4 LOADB                            R6 0
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          REF R6
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          REF R5
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 CLOSEUPVALS                      R5
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["VirtualInputUtils"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K7 [game]
       14 LOADK                            R3 K8 ["VirtualInputManager"]
       15 NAMECALL                         R1 R1 K9 ["GetService"]
       17 CALL                             R1 2 1
       18 GETIMPORT                        R2 K1 [require]
       20 GETIMPORT                        R6 K3 [script]
       22 GETTABLEKS                       R5 R6 K4 ["Parent"]
       24 GETTABLEKS                       R4 R5 K4 ["Parent"]
       26 GETTABLEKS                       R3 R4 K10 ["InputVisualizer"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R2 K11 ["new"]
       31 CALL                             R3 0 1
       32 NEWTABLE                         R4 16 0
       34 DUPCLOSURE                       R5 K12 [PROTO_0]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R5 R4 K13 ["sendMouseButtonEvent"]
       39 DUPCLOSURE                       R5 K14 [PROTO_1]
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R5 R4 K15 ["SendMouseMoveEvent"]
       44 DUPCLOSURE                       R5 K16 [PROTO_2]
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R5 R4 K17 ["SendMouseWheelEvent"]
       49 DUPCLOSURE                       R5 K18 [PROTO_3]
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R5 R4 K19 ["mouseWheel"]
       53 DUPCLOSURE                       R5 K20 [PROTO_4]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R4
       57 DUPCLOSURE                       R6 K21 [PROTO_6]
       58 CAPTURE                          VAL R5
       59 DUPCLOSURE                       R7 K22 [PROTO_7]
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R7 R4 K23 ["click"]
       64 DUPCLOSURE                       R7 K24 [PROTO_8]
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R7 R4 K25 ["multiClick"]
       69 DUPCLOSURE                       R7 K26 [PROTO_9]
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R5
       72 SETTABLEKS                       R7 R4 K27 ["rightClick"]
       74 DUPCLOSURE                       R7 K28 [PROTO_10]
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R7 R4 K29 ["mouseLeftDown"]
       78 DUPCLOSURE                       R7 K30 [PROTO_11]
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R7 R4 K31 ["mouseLeftUp"]
       82 DUPCLOSURE                       R7 K32 [PROTO_12]
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R7 R4 K33 ["mouseRightDown"]
       86 DUPCLOSURE                       R7 K34 [PROTO_13]
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R7 R4 K35 ["mouseRightUp"]
       90 DUPCLOSURE                       R7 K36 [PROTO_14]
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R7 R4 K37 ["mouseMove"]
       94 DUPCLOSURE                       R7 K38 [PROTO_16]
       95 CAPTURE                          VAL R4
       96 DUPCLOSURE                       R8 K39 [PROTO_17]
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R8 R4 K40 ["mouseDrag"]
      101 RETURN                           R4 1
