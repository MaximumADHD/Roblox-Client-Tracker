PROTO_0:
        0 LOADN                            R5 3
        1 SUBK                             R6 R0 K0 [1]
        2 MUL                              R4 R5 R6
        3 ADDK                             R3 R4 K0 [1]
        4 GETTABLE                         R2 R1 R3
        5 GETTABLEKS                       R2 R2 K1 ["position"]
        7 LOADN                            R6 3
        8 SUBK                             R7 R0 K0 [1]
        9 MUL                              R5 R6 R7
       10 ADDK                             R4 R5 K2 [2]
       11 GETTABLE                         R3 R1 R4
       12 GETTABLEKS                       R3 R3 K1 ["position"]
       14 LOADN                            R7 3
       15 SUBK                             R8 R0 K0 [1]
       16 MUL                              R6 R7 R8
       17 ADDK                             R5 R6 K3 [3]
       18 GETTABLE                         R4 R1 R5
       19 GETTABLEKS                       R4 R4 K1 ["position"]
       21 ADD                              R7 R2 R3
       22 ADD                              R6 R7 R4
       23 DIVK                             R5 R6 K3 [3]
       24 SUB                              R6 R5 R2
       25 GETTABLEKS                       R6 R6 K4 ["Unit"]
       27 SUB                              R7 R3 R2
       28 SUB                              R9 R4 R2
       29 NAMECALL                         R7 R7 K5 ["Cross"]
       31 CALL                             R7 2 1
       32 GETTABLEKS                       R7 R7 K4 ["Unit"]
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
