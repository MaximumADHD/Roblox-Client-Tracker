PROTO_0:
        0 DUPTABLE                         R0 K1 [{"sortSelection"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["sortSelection"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"sortSelection"}]
        7 GETTABLEKS                       R5 R1 K2 ["sortSelection"]
        9 SETTABLEKS                       R5 R4 K2 ["sortSelection"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Actions"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["SetSortSelection"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_0]
       31 GETTABLEKS                       R6 R1 K13 ["createReducer"]
       33 DUPTABLE                         R7 K15 [{"sortSelection"}]
       34 LOADNIL                          R8
       35 SETTABLEKS                       R8 R7 K14 ["sortSelection"]
       37 NEWTABLE                         R8 1 0
       39 GETTABLEKS                       R9 R4 K16 ["name"]
       41 DUPCLOSURE                       R10 K17 [PROTO_1]
       42 CAPTURE                          VAL R2
       43 SETTABLE                         R10 R8 R9
       44 CALL                             R6 2 1
       45 RETURN                           R6 1
