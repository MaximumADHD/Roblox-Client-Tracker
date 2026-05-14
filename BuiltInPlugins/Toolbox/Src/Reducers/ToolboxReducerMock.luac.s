PROTO_0:
        0 DUPTABLE                         R2 K6 [{"assets", "networkErrors", "pageInfo", "voting", "purchase", "packages"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 JUMPIFNOT                        R4 ; [+2]
        4 GETTABLEKS                       R4 R0 K0 ["assets"]
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R3 R2 K0 ["assets"]
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R0
       12 JUMPIFNOT                        R4 ; [+2]
       13 GETTABLEKS                       R4 R0 K1 ["networkErrors"]
       15 MOVE                             R5 R1
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K1 ["networkErrors"]
       19 GETUPVAL                         R3 2
       20 MOVE                             R4 R0
       21 JUMPIFNOT                        R4 ; [+2]
       22 GETTABLEKS                       R4 R0 K2 ["pageInfo"]
       24 MOVE                             R5 R1
       25 CALL                             R3 2 1
       26 SETTABLEKS                       R3 R2 K2 ["pageInfo"]
       28 GETUPVAL                         R3 3
       29 MOVE                             R4 R0
       30 JUMPIFNOT                        R4 ; [+2]
       31 GETTABLEKS                       R4 R0 K3 ["voting"]
       33 MOVE                             R5 R1
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K3 ["voting"]
       37 GETUPVAL                         R3 4
       38 MOVE                             R4 R0
       39 JUMPIFNOT                        R4 ; [+2]
       40 GETTABLEKS                       R4 R0 K4 ["purchase"]
       42 MOVE                             R5 R1
       43 CALL                             R3 2 1
       44 SETTABLEKS                       R3 R2 K4 ["purchase"]
       46 GETUPVAL                         R3 5
       47 MOVE                             R4 R0
       48 JUMPIFNOT                        R4 ; [+2]
       49 GETTABLEKS                       R4 R0 K5 ["packages"]
       51 MOVE                             R5 R1
       52 CALL                             R3 2 1
       53 SETTABLEKS                       R3 R2 K5 ["packages"]
       55 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Reducers"]
       15 GETTABLEKS                       R2 R2 K7 ["AssetsMock"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Reducers"]
       24 GETTABLEKS                       R3 R3 K8 ["NetworkErrorsMock"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K6 ["Reducers"]
       33 GETTABLEKS                       R4 R4 K9 ["PageInfoMock"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K6 ["Reducers"]
       42 GETTABLEKS                       R5 R5 K10 ["VotingReducerMock"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K6 ["Reducers"]
       51 GETTABLEKS                       R6 R6 K11 ["PurchaseMock"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R7 R0 K5 ["Src"]
       58 GETTABLEKS                       R7 R7 K6 ["Reducers"]
       60 GETTABLEKS                       R7 R7 K12 ["PackagesMock"]
       62 CALL                             R6 1 1
       63 DUPCLOSURE                       R7 K13 [PROTO_0]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 RETURN                           R7 1
