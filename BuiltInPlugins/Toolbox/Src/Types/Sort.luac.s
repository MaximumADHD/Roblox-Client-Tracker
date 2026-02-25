PROTO_0:
        0 LOADB                            R2 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+6]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["categoryIsFreeAsset"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["categoryIsPackage"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADN                            R1 4
        7 RETURN                           R1 1
        8 LOADN                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["SORT_OPTIONS"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["getDefaultSortForCategory"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 GETTABLE                         R1 R2 R3
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getDefaultSortForCategory"]
        3 GETTABLEKS                       R2 R0 K1 ["categoryName"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Types"]
       15 GETTABLEKS                       R2 R3 K7 ["Category"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 8 0
       20 NEWTABLE                         R3 0 5
       22 DUPTABLE                         R4 K10 [{"name", "sort"}]
       23 LOADK                            R5 K11 ["Relevance"]
       24 SETTABLEKS                       R5 R4 K8 ["name"]
       26 LOADK                            R5 K11 ["Relevance"]
       27 SETTABLEKS                       R5 R4 K9 ["sort"]
       29 DUPTABLE                         R5 K10 [{"name", "sort"}]
       30 LOADK                            R6 K12 ["MostTaken"]
       31 SETTABLEKS                       R6 R5 K8 ["name"]
       33 LOADK                            R6 K12 ["MostTaken"]
       34 SETTABLEKS                       R6 R5 K9 ["sort"]
       36 DUPTABLE                         R6 K10 [{"name", "sort"}]
       37 LOADK                            R7 K13 ["Favorites"]
       38 SETTABLEKS                       R7 R6 K8 ["name"]
       40 LOADK                            R7 K13 ["Favorites"]
       41 SETTABLEKS                       R7 R6 K9 ["sort"]
       43 DUPTABLE                         R7 K10 [{"name", "sort"}]
       44 LOADK                            R8 K14 ["Updated"]
       45 SETTABLEKS                       R8 R7 K8 ["name"]
       47 LOADK                            R8 K14 ["Updated"]
       48 SETTABLEKS                       R8 R7 K9 ["sort"]
       50 DUPTABLE                         R8 K10 [{"name", "sort"}]
       51 LOADK                            R9 K15 ["Ratings"]
       52 SETTABLEKS                       R9 R8 K8 ["name"]
       54 LOADK                            R9 K15 ["Ratings"]
       55 SETTABLEKS                       R9 R8 K9 ["sort"]
       57 SETLIST                          R3 R4 5 [1]
       59 SETTABLEKS                       R3 R2 K16 ["SORT_OPTIONS"]
       61 DUPCLOSURE                       R3 K17 [PROTO_0]
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R3 R2 K18 ["canSort"]
       65 DUPCLOSURE                       R3 K19 [PROTO_1]
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R3 R2 K20 ["getDefaultSortForCategory"]
       69 DUPCLOSURE                       R3 K21 [PROTO_2]
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R3 R2 K22 ["getDefaultSortNameForCategory"]
       73 DUPCLOSURE                       R3 K23 [PROTO_3]
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R3 R2 K24 ["getDefaultSortForGroups"]
       77 RETURN                           R2 1
