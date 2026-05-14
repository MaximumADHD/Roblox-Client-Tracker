PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R5 R1 K1 ["groups"]
       11 CALL                             R4 1 -1
       12 NAMECALL                         R2 R2 K2 ["dispatch"]
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getMyGroups"]
        3 CALL                             R1 1 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U4
       12 NAMECALL                         R1 R1 K1 ["andThen"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetMyGroups"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Actions"]
       24 GETTABLEKS                       R3 R3 K8 ["NetworkError"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K9 ["Packages"]
       31 GETTABLEKS                       R4 R4 K10 ["Framework"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R3 R3 K11 ["Util"]
       36 GETTABLEKS                       R3 R3 K12 ["sendResultToKibana"]
       38 GETIMPORT                        R4 K14 [game]
       40 LOADK                            R6 K15 ["NewPackageAnalyticsWithRefactor2"]
       41 NAMECALL                         R4 R4 K16 ["GetFastFlag"]
       43 CALL                             R4 2 1
       44 DUPCLOSURE                       R5 K17 [PROTO_3]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 RETURN                           R5 1
