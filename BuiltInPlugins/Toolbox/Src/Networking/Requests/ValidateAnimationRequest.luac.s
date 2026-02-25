PROTO_0:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 LOADB                            R1 1
        5 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        7 GETTABLEKS                       R2 R3 K1 ["assetType"]
        9 JUMPIFEQKS                       R2 K2 ["Animation"] ; [+2]
       11 LOADB                            R1 0
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R1
       15 CALL                             R4 1 -1
       16 NAMECALL                         R2 R2 K3 ["dispatch"]
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADB                            R4 0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K0 ["networkInterface"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K1 ["assetId"]
       12 NAMECALL                         R3 R3 K2 ["validateAnimation"]
       14 CALL                             R3 2 1
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 NAMECALL                         R3 R3 K3 ["andThen"]
       19 CALL                             R3 3 -1
       20 RETURN                           R3 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["ValidateAnimationResult"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K8 [PROTO_3]
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
