PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendResultToKibana"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R2 R0 K1 ["responseBody"]
        7 GETTABLEKS                       R2 R2 K2 ["data"]
        9 GETTABLEN                        R1 R2 1
       10 JUMPIFNOT                        R1 ; [+14]
       11 GETTABLEKS                       R2 R1 K3 ["assetId"]
       13 JUMPIFNOT                        R2 ; [+11]
       14 GETTABLEKS                       R2 R1 K4 ["assetVersionNumber"]
       16 JUMPIFNOT                        R2 ; [+8]
       17 GETUPVAL                         R2 1
       18 GETUPVAL                         R4 2
       19 LOADB                            R5 1
       20 CALL                             R4 1 -1
       21 NAMECALL                         R2 R2 K5 ["dispatch"]
       23 CALL                             R2 -1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 1
       26 GETUPVAL                         R4 2
       27 LOADB                            R5 0
       28 CALL                             R4 1 -1
       29 NAMECALL                         R2 R2 K5 ["dispatch"]
       31 CALL                             R2 -1 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sendResultToKibana"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 LOADB                            R4 0
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R1 K1 ["dispatch"]
       11 CALL                             R1 -1 0
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R0
       15 CALL                             R3 1 -1
       16 NAMECALL                         R1 R1 K1 ["dispatch"]
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["postForPackageMetadata"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 NAMECALL                         R1 R1 K1 ["andThen"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

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
       17 GETTABLEKS                       R3 R0 K3 ["Src"]
       19 GETTABLEKS                       R3 R3 K7 ["Util"]
       21 GETTABLEKS                       R3 R3 K8 ["Analytics"]
       23 GETTABLEKS                       R3 R3 K8 ["Analytics"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K6 [require]
       28 GETTABLEKS                       R4 R1 K9 ["SetIsPackage"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K6 [require]
       33 GETTABLEKS                       R5 R1 K10 ["NetworkError"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K11 [PROTO_3]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 RETURN                           R5 1
