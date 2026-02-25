PROTO_0:
        0 LOADN                            R6 3
        1 SUBK                             R7 R0 K0 [1]
        2 MUL                              R5 R6 R7
        3 ADDK                             R4 R5 K0 [1]
        4 GETTABLE                         R3 R1 R4
        5 GETTABLEKS                       R2 R3 K1 ["position"]
        7 LOADN                            R7 3
        8 SUBK                             R8 R0 K0 [1]
        9 MUL                              R6 R7 R8
       10 ADDK                             R5 R6 K2 [2]
       11 GETTABLE                         R4 R1 R5
       12 GETTABLEKS                       R3 R4 K1 ["position"]
       14 LOADN                            R8 3
       15 SUBK                             R9 R0 K0 [1]
       16 MUL                              R7 R8 R9
       17 ADDK                             R6 R7 K3 [3]
       18 GETTABLE                         R5 R1 R6
       19 GETTABLEKS                       R4 R5 K1 ["position"]
       21 ADD                              R7 R2 R3
       22 ADD                              R6 R7 R4
       23 DIVK                             R5 R6 K3 [3]
       24 SUB                              R7 R5 R2
       25 GETTABLEKS                       R6 R7 K4 ["Unit"]
       27 SUB                              R8 R3 R2
       28 SUB                              R10 R4 R2
       29 NAMECALL                         R8 R8 K5 ["Cross"]
       31 CALL                             R8 2 1
       32 GETTABLEKS                       R7 R8 K4 ["Unit"]
       34 MOVE                             R10 R7
       35 NAMECALL                         R8 R6 K5 ["Cross"]
       37 CALL                             R8 2 1
       38 GETIMPORT                        R9 K8 [CFrame.new]
       40 GETTABLEKS                       R10 R5 K9 ["x"]
       42 GETTABLEKS                       R11 R5 K10 ["y"]
       44 GETTABLEKS                       R12 R5 K11 ["z"]
       46 GETTABLEKS                       R13 R8 K9 ["x"]
       48 GETTABLEKS                       R14 R6 K9 ["x"]
       50 GETTABLEKS                       R15 R7 K9 ["x"]
       52 GETTABLEKS                       R16 R8 K10 ["y"]
       54 GETTABLEKS                       R17 R6 K10 ["y"]
       56 GETTABLEKS                       R18 R7 K10 ["y"]
       58 GETTABLEKS                       R19 R8 K11 ["z"]
       60 GETTABLEKS                       R20 R6 K11 ["z"]
       62 GETTABLEKS                       R21 R7 K11 ["z"]
       64 CALL                             R9 12 -1
       65 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
