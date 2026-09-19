PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["__handleGuiInset"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 CALL                             R5 2 2
        6 MOVE                             R0 R5
        7 MOVE                             R1 R6
        8 GETUPVAL                         R5 1
        9 MOVE                             R7 R0
       10 MOVE                             R8 R1
       11 MOVE                             R9 R2
       12 MOVE                             R10 R3
       13 GETUPVAL                         R11 0
       14 GETTABLEKS                       R11 R11 K1 ["getCurrentWindow"]
       16 CALL                             R11 0 1
       17 ORK                              R12 R4 K2 [0]
       18 NAMECALL                         R5 R5 K3 ["SendMouseButtonEvent"]
       20 CALL                             R5 7 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["__handleGuiInset"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 2
        6 MOVE                             R0 R2
        7 MOVE                             R1 R3
        8 GETUPVAL                         R2 1
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K1 ["getCurrentWindow"]
       14 CALL                             R6 0 -1
       15 NAMECALL                         R2 R2 K2 ["SendMouseMoveEvent"]
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["__handleGuiInset"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 2
        6 MOVE                             R0 R3
        7 MOVE                             R1 R4
        8 GETUPVAL                         R3 1
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K1 ["getCurrentWindow"]
       15 CALL                             R8 0 -1
       16 NAMECALL                         R3 R3 K2 ["SendMouseWheelEvent"]
       18 CALL                             R3 -1 0
       19 RETURN                           R0 0

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
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K0 ["SendMouseWheelEvent"]
       13 GETTABLEKS                       R7 R0 K1 ["x"]
       15 GETTABLEKS                       R8 R0 K2 ["y"]
       17 MOVE                             R9 R2
       18 CALL                             R6 3 0
       19 FORNLOOP                         R3
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R6 R6 K0 ["getCurrentWindow"]
        5 CALL                             R6 0 -1
        6 NAMECALL                         R3 R3 K1 ["click"]
        8 CALL                             R3 -1 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["sendMouseButtonEvent"]
       12 GETTABLEKS                       R4 R0 K3 ["x"]
       14 GETTABLEKS                       R5 R0 K4 ["y"]
       16 MOVE                             R6 R2
       17 LOADB                            R7 1
       18 MOVE                             R8 R1
       19 CALL                             R3 5 0
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K2 ["sendMouseButtonEvent"]
       23 GETTABLEKS                       R4 R0 K3 ["x"]
       25 GETTABLEKS                       R5 R0 K4 ["y"]
       27 MOVE                             R6 R2
       28 LOADB                            R7 0
       29 MOVE                             R8 R1
       30 CALL                             R3 5 0
       31 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 0
        4 LOADB                            R0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 LOADN                            R1 1
        8 JUMPIFNOTLE                      R1 R0 ; [+45]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R2 4
       13 GETUPVAL                         R3 5
       14 MOVE                             R5 R0
       15 GETUPVAL                         R6 6
       16 GETTABLEKS                       R6 R6 K0 ["getCurrentWindow"]
       18 CALL                             R6 0 -1
       19 NAMECALL                         R3 R3 K1 ["click"]
       21 CALL                             R3 -1 0
       22 GETUPVAL                         R3 7
       23 GETTABLEKS                       R3 R3 K2 ["sendMouseButtonEvent"]
       25 GETTABLEKS                       R4 R0 K3 ["x"]
       27 GETTABLEKS                       R5 R0 K4 ["y"]
       29 MOVE                             R6 R2
       30 LOADB                            R7 1
       31 MOVE                             R8 R1
       32 CALL                             R3 5 0
       33 GETUPVAL                         R3 7
       34 GETTABLEKS                       R3 R3 K2 ["sendMouseButtonEvent"]
       36 GETTABLEKS                       R4 R0 K3 ["x"]
       38 GETTABLEKS                       R5 R0 K4 ["y"]
       40 MOVE                             R6 R2
       41 LOADB                            R7 0
       42 MOVE                             R8 R1
       43 CALL                             R3 5 0
       44 GETUPVAL                         R1 1
       45 SUBK                             R0 R1 K5 [1]
       46 SETUPVAL                         R0 1
       47 GETUPVAL                         R1 3
       48 ADDK                             R0 R1 K5 [1]
       49 SETUPVAL                         R0 3
       50 LOADB                            R0 1
       51 SETUPVAL                         R0 0
       52 LOADB                            R0 0
       53 RETURN                           R0 1
       54 GETUPVAL                         R0 1
       55 JUMPIFNOTEQKN                    R0 K6 [0] ; [+3]
       57 LOADB                            R0 1
       58 RETURN                           R0 1
       59 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R3 1
        1 LOADN                            R4 0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          REF R3
        4 CAPTURE                          REF R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          REF R4
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CLOSEUPVALS                      R1
       12 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__syncRun"]
        3 LOADN                            R3 1
        4 LOADB                            R4 1
        5 LOADN                            R5 0
        6 LOADN                            R6 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          REF R4
        9 CAPTURE                          REF R3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          REF R5
       12 CAPTURE                          VAL R6
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U2
       16 CLOSEUPVALS                      R3
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["__syncRun"]
        3 MOVE                             R4 R1
        4 LOADB                            R5 1
        5 LOADN                            R6 0
        6 LOADN                            R7 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          REF R5
        9 CAPTURE                          REF R4
       10 CAPTURE                          VAL R0
       11 CAPTURE                          REF R6
       12 CAPTURE                          VAL R7
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U2
       16 CLOSEUPVALS                      R4
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__syncRun"]
        3 LOADN                            R3 1
        4 LOADB                            R4 1
        5 LOADN                            R5 0
        6 LOADN                            R6 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          REF R4
        9 CAPTURE                          REF R3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          REF R5
       12 CAPTURE                          VAL R6
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U2
       16 CLOSEUPVALS                      R3
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendMouseButtonEvent"]
        3 GETTABLEKS                       R2 R0 K1 ["x"]
        5 GETTABLEKS                       R3 R0 K2 ["y"]
        7 LOADN                            R4 0
        8 LOADB                            R5 1
        9 CALL                             R1 4 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendMouseButtonEvent"]
        3 GETTABLEKS                       R2 R0 K1 ["x"]
        5 GETTABLEKS                       R3 R0 K2 ["y"]
        7 LOADN                            R4 0
        8 LOADB                            R5 0
        9 CALL                             R1 4 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendMouseButtonEvent"]
        3 GETTABLEKS                       R2 R0 K1 ["x"]
        5 GETTABLEKS                       R3 R0 K2 ["y"]
        7 LOADN                            R4 1
        8 LOADB                            R5 1
        9 CALL                             R1 4 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendMouseButtonEvent"]
        3 GETTABLEKS                       R2 R0 K1 ["x"]
        5 GETTABLEKS                       R3 R0 K2 ["y"]
        7 LOADN                            R4 1
        8 LOADB                            R5 0
        9 CALL                             R1 4 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SendMouseMoveEvent"]
        3 GETTABLEKS                       R2 R0 K1 ["X"]
        5 GETTABLEKS                       R3 R0 K2 ["Y"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["mouseLeftDown"]
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
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["mouseMove"]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 0
       33 JUMP                             ; [+12]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K1 ["mouseMove"]
       37 GETUPVAL                         R2 5
       38 CALL                             R1 1 0
       39 GETUPVAL                         R1 1
       40 GETTABLEKS                       R1 R1 K2 ["mouseLeftUp"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["__syncRun"]
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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["VirtualInputUtils"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K7 [game]
       14 LOADK                            R3 K8 ["VirtualInputManager"]
       15 NAMECALL                         R1 R1 K9 ["GetService"]
       17 CALL                             R1 2 1
       18 GETIMPORT                        R2 K1 [require]
       20 GETIMPORT                        R3 K3 [script]
       22 GETTABLEKS                       R3 R3 K4 ["Parent"]
       24 GETTABLEKS                       R3 R3 K4 ["Parent"]
       26 GETTABLEKS                       R3 R3 K10 ["InputVisualizer"]
       28 CALL                             R2 1 1
       29 NAMECALL                         R2 R2 K11 ["new"]
       31 CALL                             R2 1 1
       32 NEWTABLE                         R3 16 0
       34 DUPCLOSURE                       R4 K12 [PROTO_0]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R4 R3 K13 ["sendMouseButtonEvent"]
       39 DUPCLOSURE                       R4 K14 [PROTO_1]
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R4 R3 K15 ["SendMouseMoveEvent"]
       44 DUPCLOSURE                       R4 K16 [PROTO_2]
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R4 R3 K17 ["SendMouseWheelEvent"]
       49 DUPCLOSURE                       R4 K18 [PROTO_3]
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R4 R3 K19 ["mouseWheel"]
       53 DUPCLOSURE                       R4 K20 [PROTO_4]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R3
       57 DUPCLOSURE                       R5 K21 [PROTO_6]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R3
       61 DUPCLOSURE                       R6 K22 [PROTO_7]
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R6 R3 K23 ["click"]
       67 DUPCLOSURE                       R6 K24 [PROTO_8]
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R6 R3 K25 ["multiClick"]
       73 DUPCLOSURE                       R6 K26 [PROTO_9]
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R3
       77 SETTABLEKS                       R6 R3 K27 ["rightClick"]
       79 DUPCLOSURE                       R6 K28 [PROTO_10]
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R6 R3 K29 ["mouseLeftDown"]
       83 DUPCLOSURE                       R6 K30 [PROTO_11]
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R6 R3 K31 ["mouseLeftUp"]
       87 DUPCLOSURE                       R6 K32 [PROTO_12]
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R6 R3 K33 ["mouseRightDown"]
       91 DUPCLOSURE                       R6 K34 [PROTO_13]
       92 CAPTURE                          VAL R3
       93 SETTABLEKS                       R6 R3 K35 ["mouseRightUp"]
       95 DUPCLOSURE                       R6 K36 [PROTO_14]
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R6 R3 K37 ["mouseMove"]
       99 DUPCLOSURE                       R6 K38 [PROTO_16]
      100 CAPTURE                          VAL R3
      101 DUPCLOSURE                       R7 K39 [PROTO_17]
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R3
      104 SETTABLEKS                       R7 R3 K40 ["mouseDrag"]
      106 RETURN                           R3 1
