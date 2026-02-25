PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assertNullableType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["table"]
        5 LOADK                            R4 K2 ["SetGameInfo arg"]
        6 CALL                             R1 3 0
        7 MOVE                             R1 R0
        8 JUMPIF                           R1 ; [+2]
        9 NEWTABLE                         R1 0 0
       11 GETTABLEKS                       R2 R1 K3 ["minimumAge"]
       13 GETTABLEKS                       R3 R1 K4 ["games"]
       15 GETTABLEKS                       R4 R1 K5 ["nextPageCursor"]
       17 GETTABLEKS                       R5 R1 K6 ["previousPageCursor"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K7 ["assertType"]
       22 MOVE                             R7 R3
       23 LOADK                            R8 K1 ["table"]
       24 LOADK                            R9 K8 ["SetGameInfo.games"]
       25 CALL                             R6 3 0
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K0 ["assertNullableType"]
       29 MOVE                             R7 R4
       30 LOADK                            R8 K9 ["string"]
       31 LOADK                            R9 K10 ["SetGameInfo.nextPageCursor"]
       32 CALL                             R6 3 0
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K0 ["assertNullableType"]
       36 MOVE                             R7 R5
       37 LOADK                            R8 K9 ["string"]
       38 LOADK                            R9 K11 ["SetGameInfo.previousPageCursor"]
       39 CALL                             R6 3 0
       40 DUPTABLE                         R6 K13 [{"gameInfo"}]
       41 DUPTABLE                         R7 K15 [{"minimumAge", "games", "queryState", "nextPageCursor", "previousPageCursor"}]
       42 SETTABLEKS                       R2 R7 K3 ["minimumAge"]
       44 SETTABLEKS                       R3 R7 K4 ["games"]
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R9 R10 K16 ["QUERY_STATE"]
       49 GETTABLEKS                       R8 R9 K17 ["QUERY_STATE_SUCCESS"]
       51 SETTABLEKS                       R8 R7 K14 ["queryState"]
       53 MOVE                             R8 R4
       54 JUMPIF                           R8 ; [+3]
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R8 R9 K18 ["None"]
       58 SETTABLEKS                       R8 R7 K5 ["nextPageCursor"]
       60 MOVE                             R8 R5
       61 JUMPIF                           R8 ; [+3]
       62 GETUPVAL                         R9 2
       63 GETTABLEKS                       R8 R9 K18 ["None"]
       65 SETTABLEKS                       R8 R7 K6 ["previousPageCursor"]
       67 SETTABLEKS                       R7 R6 K12 ["gameInfo"]
       69 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Resources"]
       22 GETTABLEKS                       R3 R4 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K7 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Util"]
       31 GETTABLEKS                       R4 R5 K11 ["AssertType"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R6 R7 K2 ["Parent"]
       40 GETTABLEKS                       R5 R6 K12 ["Action"]
       42 CALL                             R4 1 1
       43 MOVE                             R5 R4
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R6 R7 K13 ["Name"]
       48 DUPCLOSURE                       R7 K14 [PROTO_0]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R1
       52 CALL                             R5 2 -1
       53 RETURN                           R5 -1
