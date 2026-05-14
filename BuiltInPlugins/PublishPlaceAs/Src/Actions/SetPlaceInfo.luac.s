PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assertNullableType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["table"]
        5 LOADK                            R4 K2 ["SetPlaceInfo arg"]
        6 CALL                             R1 3 0
        7 MOVE                             R1 R0
        8 JUMPIF                           R1 ; [+2]
        9 NEWTABLE                         R1 0 0
       11 GETTABLEKS                       R2 R1 K3 ["places"]
       13 GETTABLEKS                       R3 R1 K4 ["nextPageCursor"]
       15 GETTABLEKS                       R4 R1 K5 ["previousPageCursor"]
       17 GETTABLEKS                       R5 R1 K6 ["parentGame"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K7 ["assertType"]
       22 MOVE                             R7 R2
       23 LOADK                            R8 K1 ["table"]
       24 LOADK                            R9 K8 ["SetPlaceInfo.places"]
       25 CALL                             R6 3 0
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K0 ["assertNullableType"]
       29 MOVE                             R7 R3
       30 LOADK                            R8 K9 ["string"]
       31 LOADK                            R9 K10 ["SetPlaceInfo.nextPageCursor"]
       32 CALL                             R6 3 0
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K0 ["assertNullableType"]
       36 MOVE                             R7 R4
       37 LOADK                            R8 K9 ["string"]
       38 LOADK                            R9 K11 ["SetPlaceInfo.previousPageCursor"]
       39 CALL                             R6 3 0
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K0 ["assertNullableType"]
       43 MOVE                             R7 R5
       44 LOADK                            R8 K1 ["table"]
       45 LOADK                            R9 K12 ["SetPlaceInfo.parentGame { name : String, universeId : Number }"]
       46 CALL                             R6 3 0
       47 JUMPIFEQKNIL                     R5 ; [+17]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K7 ["assertType"]
       52 GETTABLEKS                       R7 R5 K13 ["name"]
       54 LOADK                            R8 K9 ["string"]
       55 LOADK                            R9 K14 ["SetPlaceInfo.parentGame.name"]
       56 CALL                             R6 3 0
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K7 ["assertType"]
       60 GETTABLEKS                       R7 R5 K15 ["universeId"]
       62 LOADK                            R8 K16 ["number"]
       63 LOADK                            R9 K17 ["SetPlaceInfo.parentGame.universeId"]
       64 CALL                             R6 3 0
       65 DUPTABLE                         R6 K19 [{"placeInfo"}]
       66 DUPTABLE                         R7 K21 [{"places", "queryState", "nextPageCursor", "previousPageCursor", "parentGame"}]
       67 SETTABLEKS                       R2 R7 K3 ["places"]
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K22 ["QUERY_STATE"]
       72 GETTABLEKS                       R8 R8 K23 ["QUERY_STATE_SUCCESS"]
       74 SETTABLEKS                       R8 R7 K20 ["queryState"]
       76 MOVE                             R8 R3
       77 JUMPIF                           R8 ; [+3]
       78 GETUPVAL                         R8 2
       79 GETTABLEKS                       R8 R8 K24 ["None"]
       81 SETTABLEKS                       R8 R7 K4 ["nextPageCursor"]
       83 MOVE                             R8 R4
       84 JUMPIF                           R8 ; [+3]
       85 GETUPVAL                         R8 2
       86 GETTABLEKS                       R8 R8 K24 ["None"]
       88 SETTABLEKS                       R8 R7 K5 ["previousPageCursor"]
       90 MOVE                             R8 R5
       91 JUMPIF                           R8 ; [+3]
       92 GETUPVAL                         R8 2
       93 GETTABLEKS                       R8 R8 K24 ["None"]
       95 SETTABLEKS                       R8 R7 K6 ["parentGame"]
       97 SETTABLEKS                       R7 R6 K18 ["placeInfo"]
       99 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["AssertType"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Resources"]
       31 GETTABLEKS                       R4 R4 K11 ["Constants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K2 ["Parent"]
       40 GETTABLEKS                       R5 R5 K12 ["Action"]
       42 CALL                             R4 1 1
       43 MOVE                             R5 R4
       44 GETIMPORT                        R6 K1 [script]
       46 GETTABLEKS                       R6 R6 K13 ["Name"]
       48 DUPCLOSURE                       R7 K14 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R1
       52 CALL                             R5 2 -1
       53 RETURN                           R5 -1
