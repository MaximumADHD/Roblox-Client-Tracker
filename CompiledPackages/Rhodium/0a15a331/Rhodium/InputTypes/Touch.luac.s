PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["__handleGuiInset"]
        3 MOVE                             R5 R2
        4 MOVE                             R6 R3
        5 CALL                             R4 2 2
        6 MOVE                             R2 R4
        7 MOVE                             R3 R5
        8 GETUPVAL                         R4 1
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 MOVE                             R8 R2
       12 MOVE                             R9 R3
       13 NAMECALL                         R4 R4 K1 ["SendTouchEvent"]
       15 CALL                             R4 5 0
       16 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 [123456]
        1 ORK                              R4 R1 K1 [0]
        2 ADD                              R2 R3 R4
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["SendTouchEvent"]
        6 MOVE                             R4 R2
        7 LOADN                            R5 0
        8 GETTABLEKS                       R6 R0 K3 ["X"]
       10 GETTABLEKS                       R7 R0 K4 ["Y"]
       12 CALL                             R3 4 0
       13 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 [123456]
        1 ORK                              R4 R1 K1 [0]
        2 ADD                              R2 R3 R4
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["SendTouchEvent"]
        6 MOVE                             R4 R2
        7 LOADN                            R5 1
        8 GETTABLEKS                       R6 R0 K3 ["X"]
       10 GETTABLEKS                       R7 R0 K4 ["Y"]
       12 CALL                             R3 4 0
       13 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 [123456]
        1 ORK                              R4 R1 K1 [0]
        2 ADD                              R2 R3 R4
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["SendTouchEvent"]
        6 MOVE                             R4 R2
        7 LOADN                            R5 2
        8 GETTABLEKS                       R6 R0 K3 ["X"]
       10 GETTABLEKS                       R7 R0 K4 ["Y"]
       12 CALL                             R3 4 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+9]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["touchStart"]
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 CALL                             R1 2 0
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 0
       10 JUMP                             ; [+39]
       11 GETUPVAL                         R2 4
       12 ADD                              R1 R2 R0
       13 SETUPVAL                         R1 4
       14 GETUPVAL                         R1 5
       15 JUMPIFNOT                        R1 ; [+20]
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 5
       18 JUMPIFNOTLT                      R1 R2 ; [+17]
       20 GETUPVAL                         R2 4
       21 GETUPVAL                         R3 5
       22 DIV                              R1 R2 R3
       23 GETUPVAL                         R5 6
       24 GETUPVAL                         R6 2
       25 SUB                              R4 R5 R6
       26 MUL                              R3 R4 R1
       27 GETUPVAL                         R4 2
       28 ADD                              R2 R3 R4
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R3 R4 K1 ["touchMove"]
       32 MOVE                             R4 R2
       33 GETUPVAL                         R5 3
       34 CALL                             R3 2 0
       35 JUMP                             ; [+14]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R1 R2 K1 ["touchMove"]
       39 GETUPVAL                         R2 6
       40 GETUPVAL                         R3 3
       41 CALL                             R1 2 0
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R1 R2 K2 ["touchStop"]
       45 GETUPVAL                         R2 6
       46 GETUPVAL                         R3 3
       47 CALL                             R1 2 0
       48 LOADB                            R1 1
       49 RETURN                           R1 1
       50 LOADB                            R1 0
       51 RETURN                           R1 1

PROTO_5:
        0 LOADN                            R4 0
        1 LOADB                            R5 0
        2 LOADK                            R7 K0 [123456]
        3 ORK                              R8 R3 K1 [0]
        4 ADD                              R6 R7 R8
        5 NEWCLOSURE                       R7 P0
        6 CAPTURE                          REF R5
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R6
       10 CAPTURE                          REF R4
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R1
       13 CLOSEUPVALS                      R4
       14 RETURN                           R7 1

PROTO_6:
        0 LOADK                            R6 K0 [123456]
        1 ORK                              R7 R4 K1 [0]
        2 ADD                              R5 R6 R7
        3 JUMPIFNOTEQKB                    R3 TRUE ; [+20]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["__asyncRun"]
        8 LOADN                            R8 0
        9 LOADB                            R9 0
       10 LOADK                            R11 K0 [123456]
       11 ORK                              R12 R5 K1 [0]
       12 ADD                              R10 R11 R12
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          REF R9
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R10
       18 CAPTURE                          REF R8
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 CLOSEUPVALS                      R8
       22 CALL                             R6 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K3 ["__syncRun"]
       27 LOADN                            R8 0
       28 LOADB                            R9 0
       29 LOADK                            R11 K0 [123456]
       30 ORK                              R12 R5 K1 [0]
       31 ADD                              R10 R11 R12
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          REF R9
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R10
       37 CAPTURE                          REF R8
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 CLOSEUPVALS                      R8
       41 CALL                             R6 1 0
       42 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R7 K2 [Vector2.new]
        2 MOVE                             R8 R1
        3 MOVE                             R9 R2
        4 CALL                             R7 2 1
        5 ADD                              R6 R0 R7
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K3 ["swipe"]
        9 MOVE                             R8 R0
       10 MOVE                             R9 R6
       11 MOVE                             R10 R3
       12 MOVE                             R11 R4
       13 MOVE                             R12 R5
       14 CALL                             R7 5 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["touchStart"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["waitForInputEventsProcessed"]
        8 CALL                             R1 0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["touchStop"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K1 ["waitForInputEventsProcessed"]
       17 CALL                             R1 0 0
       18 RETURN                           R0 0

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
       18 NEWTABLE                         R2 8 0
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K11 ["SendTouchEvent"]
       25 DUPCLOSURE                       R3 K12 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R3 R2 K13 ["touchStart"]
       29 DUPCLOSURE                       R3 K14 [PROTO_2]
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R3 R2 K15 ["touchMove"]
       33 DUPCLOSURE                       R3 K16 [PROTO_3]
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R3 R2 K17 ["touchStop"]
       37 DUPCLOSURE                       R3 K18 [PROTO_5]
       38 CAPTURE                          VAL R2
       39 DUPCLOSURE                       R4 K19 [PROTO_6]
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R4 R2 K20 ["swipe"]
       44 DUPCLOSURE                       R4 K21 [PROTO_7]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R4 R2 K22 ["touchScroll"]
       48 DUPCLOSURE                       R4 K23 [PROTO_8]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R4 R2 K24 ["tap"]
       53 RETURN                           R2 1
