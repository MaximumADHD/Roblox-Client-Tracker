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
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K2 ["sendMouseButtonEvent"]
       23 GETTABLEKS                       R4 R0 K3 ["X"]
       25 GETTABLEKS                       R5 R0 K4 ["Y"]
       27 MOVE                             R6 R2
       28 LOADB                            R7 0
       29 MOVE                             R8 R1
       30 CALL                             R3 5 0
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R3 R4 K5 ["waitForInputEventsProcessed"]
       34 CALL                             R3 0 0
       35 RETURN                           R0 0

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

PROTO_18:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["enable"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["disable"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["VirtualInputManager"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Rhodium"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["VirtualInputUtils"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R1 K11 ["InputVisualizer"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K12 ["new"]
       25 CALL                             R4 0 1
       26 NEWTABLE                         R5 16 0
       28 DUPCLOSURE                       R6 K13 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R6 R5 K14 ["sendMouseButtonEvent"]
       33 DUPCLOSURE                       R6 K15 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R6 R5 K16 ["SendMouseMoveEvent"]
       38 DUPCLOSURE                       R6 K17 [PROTO_2]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R6 R5 K18 ["SendMouseWheelEvent"]
       43 DUPCLOSURE                       R6 K19 [PROTO_3]
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R6 R5 K20 ["mouseWheel"]
       47 DUPCLOSURE                       R6 K21 [PROTO_4]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 DUPCLOSURE                       R7 K22 [PROTO_6]
       52 CAPTURE                          VAL R6
       53 DUPCLOSURE                       R8 K23 [PROTO_7]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R6
       56 SETTABLEKS                       R8 R5 K24 ["click"]
       58 DUPCLOSURE                       R8 K25 [PROTO_8]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R8 R5 K26 ["multiClick"]
       63 DUPCLOSURE                       R8 K27 [PROTO_9]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R8 R5 K28 ["rightClick"]
       68 DUPCLOSURE                       R8 K29 [PROTO_10]
       69 CAPTURE                          VAL R5
       70 SETTABLEKS                       R8 R5 K30 ["mouseLeftDown"]
       72 DUPCLOSURE                       R8 K31 [PROTO_11]
       73 CAPTURE                          VAL R5
       74 SETTABLEKS                       R8 R5 K32 ["mouseLeftUp"]
       76 DUPCLOSURE                       R8 K33 [PROTO_12]
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R8 R5 K34 ["mouseRightDown"]
       80 DUPCLOSURE                       R8 K35 [PROTO_13]
       81 CAPTURE                          VAL R5
       82 SETTABLEKS                       R8 R5 K36 ["mouseRightUp"]
       84 DUPCLOSURE                       R8 K37 [PROTO_14]
       85 CAPTURE                          VAL R5
       86 SETTABLEKS                       R8 R5 K38 ["mouseMove"]
       88 DUPCLOSURE                       R8 K39 [PROTO_16]
       89 CAPTURE                          VAL R5
       90 DUPCLOSURE                       R9 K40 [PROTO_17]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R5
       93 SETTABLEKS                       R9 R5 K41 ["mouseDrag"]
       95 DUPCLOSURE                       R9 K42 [PROTO_18]
       96 CAPTURE                          VAL R4
       97 SETTABLEKS                       R9 R5 K43 ["__setInputVisualizerEnabled"]
       99 RETURN                           R5 1
