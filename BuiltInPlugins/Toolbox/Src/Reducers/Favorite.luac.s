PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 GETTABLEKS                       R3 R0 K2 ["assetIdToCountsMap"]
        7 NEWTABLE                         R4 1 0
        9 GETTABLEKS                       R5 R1 K3 ["assetId"]
       11 GETTABLEKS                       R6 R1 K4 ["favoriteCounts"]
       13 SETTABLE                         R6 R4 R5
       14 CALL                             R2 2 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["Dictionary"]
       18 GETTABLEKS                       R3 R4 K1 ["join"]
       20 MOVE                             R4 R0
       21 DUPTABLE                         R5 K5 [{"assetIdToCountsMap"}]
       22 SETTABLEKS                       R2 R5 K2 ["assetIdToCountsMap"]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 GETTABLEKS                       R3 R0 K2 ["assetIdToFavoritedMap"]
        7 NEWTABLE                         R4 1 0
        9 GETTABLEKS                       R5 R1 K3 ["assetId"]
       11 GETTABLEKS                       R6 R1 K4 ["favorited"]
       13 SETTABLE                         R6 R4 R5
       14 CALL                             R2 2 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["Dictionary"]
       18 GETTABLEKS                       R3 R4 K1 ["join"]
       20 MOVE                             R4 R0
       21 DUPTABLE                         R5 K5 [{"assetIdToFavoritedMap"}]
       22 SETTABLEKS                       R2 R5 K2 ["assetIdToFavoritedMap"]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["assetId"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R4 K2 ["join"]
        7 GETTABLEKS                       R4 R0 K3 ["assetIdToCountsMap"]
        9 NEWTABLE                         R5 1 0
       11 GETTABLEKS                       R6 R1 K0 ["assetId"]
       13 GETTABLEKS                       R10 R0 K3 ["assetIdToCountsMap"]
       15 GETTABLE                         R9 R10 R2
       16 ORK                              R8 R9 K5 [0]
       17 ADDK                             R7 R8 K4 [1]
       18 SETTABLE                         R7 R5 R6
       19 CALL                             R3 2 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K1 ["Dictionary"]
       23 GETTABLEKS                       R4 R5 K2 ["join"]
       25 GETTABLEKS                       R5 R0 K6 ["assetIdToFavoritedMap"]
       27 NEWTABLE                         R6 1 0
       29 GETTABLEKS                       R7 R1 K0 ["assetId"]
       31 LOADB                            R8 1
       32 SETTABLE                         R8 R6 R7
       33 CALL                             R4 2 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K1 ["Dictionary"]
       37 GETTABLEKS                       R5 R6 K2 ["join"]
       39 MOVE                             R6 R0
       40 DUPTABLE                         R7 K7 [{"assetIdToCountsMap", "assetIdToFavoritedMap"}]
       41 SETTABLEKS                       R3 R7 K3 ["assetIdToCountsMap"]
       43 SETTABLEKS                       R4 R7 K6 ["assetIdToFavoritedMap"]
       45 CALL                             R5 2 -1
       46 RETURN                           R5 -1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["assetId"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R4 K2 ["join"]
        7 GETTABLEKS                       R4 R0 K3 ["assetIdToCountsMap"]
        9 NEWTABLE                         R5 1 0
       11 GETTABLEKS                       R6 R1 K0 ["assetId"]
       13 GETTABLEKS                       R10 R0 K3 ["assetIdToCountsMap"]
       15 GETTABLE                         R9 R10 R2
       16 ORK                              R8 R9 K5 [0]
       17 SUBK                             R7 R8 K4 [1]
       18 SETTABLE                         R7 R5 R6
       19 CALL                             R3 2 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K1 ["Dictionary"]
       23 GETTABLEKS                       R4 R5 K2 ["join"]
       25 GETTABLEKS                       R5 R0 K6 ["assetIdToFavoritedMap"]
       27 NEWTABLE                         R6 1 0
       29 GETTABLEKS                       R7 R1 K0 ["assetId"]
       31 LOADB                            R8 0
       32 SETTABLE                         R8 R6 R7
       33 CALL                             R4 2 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K1 ["Dictionary"]
       37 GETTABLEKS                       R5 R6 K2 ["join"]
       39 MOVE                             R6 R0
       40 DUPTABLE                         R7 K7 [{"assetIdToCountsMap", "assetIdToFavoritedMap"}]
       41 SETTABLEKS                       R3 R7 K3 ["assetIdToCountsMap"]
       43 SETTABLEKS                       R4 R7 K6 ["assetIdToFavoritedMap"]
       45 CALL                             R5 2 -1
       46 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Rodux"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R5 K9 ["Actions"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["GetFavoriteCounts"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R4 K11 ["GetFavorited"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R4 K12 ["CreateFavorite"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R4 K13 ["DeleteFavorite"]
       44 CALL                             R8 1 1
       45 GETTABLEKS                       R9 R2 K14 ["createReducer"]
       47 DUPTABLE                         R10 K17 [{"assetIdToCountsMap", "assetIdToFavoritedMap"}]
       48 NEWTABLE                         R11 0 0
       50 SETTABLEKS                       R11 R10 K15 ["assetIdToCountsMap"]
       52 NEWTABLE                         R11 0 0
       54 SETTABLEKS                       R11 R10 K16 ["assetIdToFavoritedMap"]
       56 NEWTABLE                         R11 4 0
       58 GETTABLEKS                       R12 R5 K18 ["name"]
       60 DUPCLOSURE                       R13 K19 [PROTO_0]
       61 CAPTURE                          VAL R3
       62 SETTABLE                         R13 R11 R12
       63 GETTABLEKS                       R12 R6 K18 ["name"]
       65 DUPCLOSURE                       R13 K20 [PROTO_1]
       66 CAPTURE                          VAL R3
       67 SETTABLE                         R13 R11 R12
       68 GETTABLEKS                       R12 R7 K18 ["name"]
       70 DUPCLOSURE                       R13 K21 [PROTO_2]
       71 CAPTURE                          VAL R3
       72 SETTABLE                         R13 R11 R12
       73 GETTABLEKS                       R12 R8 K18 ["name"]
       75 DUPCLOSURE                       R13 K22 [PROTO_3]
       76 CAPTURE                          VAL R3
       77 SETTABLE                         R13 R11 R12
       78 CALL                             R9 2 1
       79 RETURN                           R9 1
