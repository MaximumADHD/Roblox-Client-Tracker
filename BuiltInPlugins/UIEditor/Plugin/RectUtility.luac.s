PROTO_0:
        0 GETTABLEKS                       R7 R3 K0 ["X"]
        2 GETTABLEKS                       R8 R1 K0 ["X"]
        4 SUB                              R6 R7 R8
        5 GETTABLEKS                       R8 R2 K1 ["Y"]
        7 GETTABLEKS                       R9 R1 K1 ["Y"]
        9 SUB                              R7 R8 R9
       10 MUL                              R5 R6 R7
       11 GETTABLEKS                       R8 R3 K1 ["Y"]
       13 GETTABLEKS                       R9 R1 K1 ["Y"]
       15 SUB                              R7 R8 R9
       16 GETTABLEKS                       R9 R2 K0 ["X"]
       18 GETTABLEKS                       R10 R1 K0 ["X"]
       20 SUB                              R8 R9 R10
       21 MUL                              R6 R7 R8
       22 SUB                              R4 R5 R6
       23 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["Min"]
        2 GETIMPORT                        R4 K3 [Vector2.new]
        4 GETTABLEKS                       R6 R3 K4 ["X"]
        6 GETTABLEKS                       R7 R1 K5 ["Width"]
        8 ADD                              R5 R6 R7
        9 GETTABLEKS                       R6 R3 K6 ["Y"]
       11 CALL                             R4 2 1
       12 GETTABLEKS                       R5 R1 K7 ["Max"]
       14 GETIMPORT                        R6 K3 [Vector2.new]
       16 GETTABLEKS                       R8 R5 K4 ["X"]
       18 GETTABLEKS                       R9 R1 K5 ["Width"]
       20 SUB                              R7 R8 R9
       21 GETTABLEKS                       R8 R5 K6 ["Y"]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 0
       25 MOVE                             R9 R3
       26 MOVE                             R10 R4
       27 MOVE                             R11 R2
       28 NAMECALL                         R7 R7 K8 ["pointOnSideOfLine"]
       30 CALL                             R7 4 1
       31 GETUPVAL                         R8 0
       32 MOVE                             R10 R4
       33 MOVE                             R11 R5
       34 MOVE                             R12 R2
       35 NAMECALL                         R8 R8 K8 ["pointOnSideOfLine"]
       37 CALL                             R8 4 1
       38 GETUPVAL                         R9 0
       39 MOVE                             R11 R5
       40 MOVE                             R12 R6
       41 MOVE                             R13 R2
       42 NAMECALL                         R9 R9 K8 ["pointOnSideOfLine"]
       44 CALL                             R9 4 1
       45 GETUPVAL                         R10 0
       46 MOVE                             R12 R6
       47 MOVE                             R13 R3
       48 MOVE                             R14 R2
       49 NAMECALL                         R10 R10 K8 ["pointOnSideOfLine"]
       51 CALL                             R10 4 1
       52 LOADB                            R11 0
       53 LOADN                            R12 0
       54 JUMPIFNOTLE                      R7 R12 ; [+14]
       56 LOADB                            R11 0
       57 LOADN                            R12 0
       58 JUMPIFNOTLE                      R8 R12 ; [+10]
       60 LOADB                            R11 0
       61 LOADN                            R12 0
       62 JUMPIFNOTLE                      R9 R12 ; [+6]
       64 LOADN                            R12 0
       65 JUMPIFLE                         R10 R12 ; [+2]
       67 LOADB                            R11 0 +1
       68 LOADB                            R11 1
       69 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["pointOnSideOfLine"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["containsPoint"]
       10 RETURN                           R0 1
