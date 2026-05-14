PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["sendResultToKibana"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R2 R0 K1 ["responseBody"]
        9 GETTABLEKS                       R2 R2 K2 ["data"]
       11 GETTABLEN                        R1 R2 1
       12 JUMPIFNOT                        R1 ; [+14]
       13 GETTABLEKS                       R2 R1 K3 ["assetId"]
       15 JUMPIFNOT                        R2 ; [+11]
       16 GETTABLEKS                       R2 R1 K4 ["assetVersionNumber"]
       18 JUMPIFNOT                        R2 ; [+8]
       19 GETUPVAL                         R2 2
       20 GETUPVAL                         R4 3
       21 LOADB                            R5 1
       22 CALL                             R4 1 -1
       23 NAMECALL                         R2 R2 K5 ["dispatch"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 2
       28 GETUPVAL                         R4 3
       29 LOADB                            R5 0
       30 CALL                             R4 1 -1
       31 NAMECALL                         R2 R2 K5 ["dispatch"]
       33 CALL                             R2 -1 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["sendResultToKibana"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R3 3
        9 LOADB                            R4 0
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R1 K1 ["dispatch"]
       13 CALL                             R1 -1 0
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R3 4
       16 MOVE                             R4 R0
       17 CALL                             R3 1 -1
       18 NAMECALL                         R1 R1 K1 ["dispatch"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["postForPackageMetadata"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 NAMECALL                         R1 R1 K1 ["andThen"]
       18 CALL                             R1 3 -1
       19 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["HttpService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETTABLEKS                       R2 R0 K7 ["Src"]
       19 GETTABLEKS                       R2 R2 K8 ["Actions"]
       21 GETIMPORT                        R3 K10 [require]
       23 GETTABLEKS                       R4 R0 K7 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["Analytics"]
       29 GETTABLEKS                       R4 R4 K12 ["Analytics"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K10 [require]
       34 GETTABLEKS                       R5 R2 K13 ["SetIsPackage"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R6 R2 K14 ["NetworkError"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [game]
       44 LOADK                            R8 K15 ["NewPackageAnalyticsWithRefactor2"]
       45 NAMECALL                         R6 R6 K16 ["GetFastFlag"]
       47 CALL                             R6 2 1
       48 DUPCLOSURE                       R7 K17 [PROTO_3]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 RETURN                           R7 1
