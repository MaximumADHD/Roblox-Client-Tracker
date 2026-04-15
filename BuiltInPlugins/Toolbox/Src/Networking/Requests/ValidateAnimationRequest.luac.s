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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["assetId"]
        6 FASTCALL1                        TONUMBER R2 ; [+2]
        7 GETIMPORT                        R1 K2 [tonumber]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+7]
       11 GETUPVAL                         R3 2
       12 LOADB                            R4 0
       13 CALL                             R3 1 -1
       14 NAMECALL                         R1 R0 K3 ["dispatch"]
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 NEWCLOSURE                       R2 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K4 ["networkInterface"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K0 ["assetId"]
       30 NAMECALL                         R3 R3 K5 ["validateAnimation"]
       32 CALL                             R3 2 1
       33 MOVE                             R5 R1
       34 MOVE                             R6 R2
       35 NAMECALL                         R3 R3 K6 ["andThen"]
       37 CALL                             R3 3 -1
       38 RETURN                           R3 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

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
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R6 R0 K3 ["Src"]
       24 GETTABLEKS                       R5 R6 K8 ["Flags"]
       26 GETTABLEKS                       R4 R5 K9 ["getFFlagToolboxFixAnimationIdCrash"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K10 [PROTO_3]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 RETURN                           R4 1
