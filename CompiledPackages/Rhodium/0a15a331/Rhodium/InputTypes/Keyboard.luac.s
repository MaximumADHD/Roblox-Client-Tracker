PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getCurrentWindow"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 MOVE                             R6 R0
        6 MOVE                             R7 R1
        7 MOVE                             R8 R2
        8 MOVE                             R9 R3
        9 NAMECALL                         R4 R4 K1 ["SendKeyEvent"]
       11 CALL                             R4 5 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SendKeyEvent"]
        3 LOADB                            R2 1
        4 MOVE                             R3 R0
        5 LOADB                            R4 0
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SendKeyEvent"]
        3 LOADB                            R2 0
        4 MOVE                             R3 R0
        5 LOADB                            R4 0
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["pressKey"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["waitForInputEventsProcessed"]
        8 CALL                             R1 0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["releaseKey"]
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
       18 NEWTABLE                         R2 4 0
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K11 ["SendKeyEvent"]
       25 DUPCLOSURE                       R3 K12 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R3 R2 K13 ["pressKey"]
       29 DUPCLOSURE                       R3 K14 [PROTO_2]
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R3 R2 K15 ["releaseKey"]
       33 DUPCLOSURE                       R3 K16 [PROTO_3]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R3 R2 K17 ["hitKey"]
       38 RETURN                           R2 1
