PROTO_0:
        0 LOADB                            R2 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+6]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["categoryIsFreeAsset"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["categoryIsPackage"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADN                            R1 4
        7 RETURN                           R1 1
        8 LOADN                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SORT_OPTIONS"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["getDefaultSortForCategory"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 GETTABLE                         R1 R2 R3
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getDefaultSortForCategory"]
        3 GETTABLEKS                       R2 R0 K1 ["categoryName"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 GETTABLEKS                       R2 R2 K7 ["Category"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 8 0
       20 NEWTABLE                         R3 0 5
       22 DUPTABLE                         R4 K11 [{["name"] = "Relevance", ["sort"] = "Relevance"}]
       23 DUPTABLE                         R5 K13 [{["name"] = "MostTaken", ["sort"] = "MostTaken"}]
       24 DUPTABLE                         R6 K15 [{["name"] = "Favorites", ["sort"] = "Favorites"}]
       25 DUPTABLE                         R7 K17 [{["name"] = "Updated", ["sort"] = "Updated"}]
       26 DUPTABLE                         R8 K19 [{["name"] = "Ratings", ["sort"] = "Ratings"}]
       27 SETLIST                          R3 R4 5 [1]
       29 SETTABLEKS                       R3 R2 K20 ["SORT_OPTIONS"]
       31 DUPCLOSURE                       R3 K21 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R3 R2 K22 ["canSort"]
       35 DUPCLOSURE                       R3 K23 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R3 R2 K24 ["getDefaultSortForCategory"]
       39 DUPCLOSURE                       R3 K25 [PROTO_2]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R3 R2 K26 ["getDefaultSortNameForCategory"]
       43 DUPCLOSURE                       R3 K27 [PROTO_3]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R3 R2 K28 ["getDefaultSortForGroups"]
       47 RETURN                           R2 1
