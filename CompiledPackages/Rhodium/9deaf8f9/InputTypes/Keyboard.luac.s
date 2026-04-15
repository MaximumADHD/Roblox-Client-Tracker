PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 GETUPVAL                         R9 1
        5 GETTABLEKS                       R8 R9 K0 ["getCurrentWindow"]
        7 CALL                             R8 0 -1
        8 NAMECALL                         R3 R3 K1 ["SendKeyEvent"]
       10 CALL                             R3 -1 0
       11 RETURN                           R0 0

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
       10 RETURN                           R0 0

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
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R3 R2 K11 ["SendKeyEvent"]
       25 DUPCLOSURE                       R3 K12 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R3 R2 K13 ["pressKey"]
       29 DUPCLOSURE                       R3 K14 [PROTO_2]
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R3 R2 K15 ["releaseKey"]
       33 DUPCLOSURE                       R3 K16 [PROTO_3]
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R3 R2 K17 ["hitKey"]
       37 RETURN                           R2 1
