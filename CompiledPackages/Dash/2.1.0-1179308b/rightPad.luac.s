PROTO_0:
        0 ORK                              R3 R2 K0 [" "]
        1 NAMECALL                         R5 R0 K1 ["len"]
        3 CALL                             R5 1 1
        4 SUB                              R4 R1 R5
        5 NAMECALL                         R6 R3 K1 ["len"]
        7 CALL                             R6 1 1
        8 MOD                              R5 R4 R6
        9 SUB                              R7 R4 R5
       10 NAMECALL                         R8 R3 K1 ["len"]
       12 CALL                             R8 1 1
       13 DIV                              R6 R7 R8
       14 MOVE                             R8 R0
       15 GETIMPORT                        R11 K4 [string.rep]
       17 ORK                              R12 R2 K0 [" "]
       18 MOVE                             R13 R6
       19 CALL                             R11 2 1
       20 MOVE                             R9 R11
       21 LOADN                            R12 1
       22 MOVE                             R13 R5
       23 NAMECALL                         R10 R3 K5 ["sub"]
       25 CALL                             R10 3 1
       26 CONCAT                           R7 R8 R10
       27 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
