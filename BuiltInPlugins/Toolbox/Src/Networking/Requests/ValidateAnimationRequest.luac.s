PROTO_0:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 LOADB                            R1 1
        5 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        7 GETTABLEKS                       R2 R2 K1 ["assetType"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["assetId"]
        3 FASTCALL1                        TONUMBER R2 ; [+2]
        4 GETIMPORT                        R1 K2 [tonumber]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+7]
        8 GETUPVAL                         R3 1
        9 LOADB                            R4 0
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R0 K3 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["networkInterface"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K0 ["assetId"]
       27 NAMECALL                         R3 R3 K5 ["validateAnimation"]
       29 CALL                             R3 2 1
       30 MOVE                             R5 R1
       31 MOVE                             R6 R2
       32 NAMECALL                         R3 R3 K6 ["andThen"]
       34 CALL                             R3 3 -1
       35 RETURN                           R3 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["ValidateAnimationResult"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K8 [PROTO_3]
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
