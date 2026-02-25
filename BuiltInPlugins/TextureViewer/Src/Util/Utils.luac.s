PROTO_0:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R4 K3 ["%."]
        3 ORK                              R5 R1 K4 [0]
        4 LOADK                            R6 K5 ["f"]
        5 CONCAT                           R3 R4 R6
        6 MOVE                             R4 R0
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%?id="]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+5]
        6 GETIMPORT                        R1 K2 [string.match]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K4 ["rbxassetid://"]
       10 CALL                             R1 2 1
       11 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["?id="]
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R2 ; [+8]
        6 ADDK                             R5 R2 K4 [1]
        7 FASTCALL2                        STRING_SUB R0 R5 ; [+4]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K6 [string.sub]
       12 CALL                             R3 2 1
       13 RETURN                           R3 1
       14 GETIMPORT                        R3 K2 [string.find]
       16 MOVE                             R4 R0
       17 LOADK                            R5 K7 ["rbxassetid://"]
       18 CALL                             R3 2 2
       19 MOVE                             R1 R3
       20 MOVE                             R2 R4
       21 JUMPIFNOT                        R2 ; [+8]
       22 ADDK                             R5 R2 K4 [1]
       23 FASTCALL2                        STRING_SUB R0 R5 ; [+4]
       25 MOVE                             R4 R0
       26 GETIMPORT                        R3 K6 [string.sub]
       28 CALL                             R3 2 1
       29 RETURN                           R3 1
       30 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["round"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["doesTextureAliasContainId"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["parseIdFromTextureAlias"]
       12 RETURN                           R0 1
