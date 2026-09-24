PROTO_0:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["diff"]
        3 MOVE                             R8 R5
        4 MOVE                             R9 R6
        5 CALL                             R7 2 2
        6 MOVE                             R11 R0
        7 MOVE                             R12 R8
        8 NAMECALL                         R9 R2 K1 ["removePlayTesters"]
       10 CALL                             R9 3 0
       11 MOVE                             R11 R0
       12 MOVE                             R12 R3
       13 MOVE                             R13 R4
       14 NAMECALL                         R9 R1 K2 ["setPermissionsDeletesFirst"]
       16 CALL                             R9 4 2
       17 MOVE                             R13 R0
       18 MOVE                             R14 R7
       19 NAMECALL                         R11 R2 K3 ["addPlayTesters"]
       21 CALL                             R11 3 0
       22 RETURN                           R9 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Networking"]
       15 GETTABLEKS                       R2 R2 K7 ["Requests"]
       17 GETTABLEKS                       R2 R2 K8 ["PlayTestersForRequest"]
       19 CALL                             R1 1 1
       20 DUPCLOSURE                       R2 K9 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1
