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
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["releaseKey"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K2 ["waitForInputEventsProcessed"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

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
       18 NEWTABLE                         R3 4 0
       20 DUPCLOSURE                       R4 K11 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R4 R3 K12 ["SendKeyEvent"]
       25 DUPCLOSURE                       R4 K13 [PROTO_1]
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R4 R3 K14 ["pressKey"]
       29 DUPCLOSURE                       R4 K15 [PROTO_2]
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R4 R3 K16 ["releaseKey"]
       33 DUPCLOSURE                       R4 K17 [PROTO_3]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R4 R3 K18 ["hitKey"]
       38 RETURN                           R3 1
