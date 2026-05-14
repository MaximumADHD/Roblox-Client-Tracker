PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"gameInfo"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["gameInfo"]
       14 GETTABLEKS                       R7 R1 K2 ["gameInfo"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["gameInfo"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selectedGame"}]
        7 GETTABLEKS                       R5 R1 K2 ["selectedGame"]
        9 SETTABLEKS                       R5 R4 K2 ["selectedGame"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"gameInfo"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["gameInfo"]
       14 GETTABLEKS                       R7 R1 K2 ["gameInfo"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["gameInfo"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"placeInfo"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["placeInfo"]
       14 GETTABLEKS                       R7 R1 K2 ["placeInfo"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["placeInfo"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"placeInfo"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["placeInfo"]
       14 GETTABLEKS                       R7 R1 K2 ["placeInfo"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["placeInfo"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"gameInfo", "placeInfo"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["gameInfo"]
       14 GETTABLEKS                       R7 R1 K2 ["gameInfo"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["gameInfo"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       22 GETTABLEKS                       R5 R5 K1 ["join"]
       24 GETTABLEKS                       R6 R0 K3 ["placeInfo"]
       26 GETTABLEKS                       R7 R1 K3 ["placeInfo"]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K3 ["placeInfo"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"gameConfiguration"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["gameConfiguration"]
       14 GETTABLEKS                       R7 R1 K2 ["gameConfiguration"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["gameConfiguration"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Resources"]
       29 GETTABLEKS                       R4 R4 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K15 [{"placeInfo", "gameInfo", "selectedGame", "gameConfiguration"}]
       33 DUPTABLE                         R5 K19 [{"places", "parentGame", "queryState"}]
       34 NEWTABLE                         R6 0 0
       36 SETTABLEKS                       R6 R5 K16 ["places"]
       38 NEWTABLE                         R6 0 0
       40 SETTABLEKS                       R6 R5 K17 ["parentGame"]
       42 GETTABLEKS                       R6 R3 K20 ["QUERY_STATE"]
       44 GETTABLEKS                       R6 R6 K21 ["QUERY_STATE_NONE"]
       46 SETTABLEKS                       R6 R5 K18 ["queryState"]
       48 SETTABLEKS                       R5 R4 K11 ["placeInfo"]
       50 DUPTABLE                         R5 K23 [{"games", "queryState"}]
       51 NEWTABLE                         R6 0 0
       53 SETTABLEKS                       R6 R5 K22 ["games"]
       55 GETTABLEKS                       R6 R3 K20 ["QUERY_STATE"]
       57 GETTABLEKS                       R6 R6 K21 ["QUERY_STATE_NONE"]
       59 SETTABLEKS                       R6 R5 K18 ["queryState"]
       61 SETTABLEKS                       R5 R4 K12 ["gameInfo"]
       63 NEWTABLE                         R5 0 0
       65 SETTABLEKS                       R5 R4 K13 ["selectedGame"]
       67 DUPTABLE                         R5 K25 [{"optInRegions"}]
       68 NEWTABLE                         R6 0 0
       70 SETTABLEKS                       R6 R5 K24 ["optInRegions"]
       72 SETTABLEKS                       R5 R4 K14 ["gameConfiguration"]
       74 GETTABLEKS                       R5 R1 K26 ["createReducer"]
       76 MOVE                             R6 R4
       77 DUPTABLE                         R7 K34 [{"SetChooseGameQueryState", "SetSelectedGame", "SetGameInfo", "SetPlaceInfo", "SetChoosePlaceQueryState", "ResetInfo", "SetGameConfiguration"}]
       78 DUPCLOSURE                       R8 K35 [PROTO_0]
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R8 R7 K27 ["SetChooseGameQueryState"]
       82 DUPCLOSURE                       R8 K36 [PROTO_1]
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R8 R7 K28 ["SetSelectedGame"]
       86 DUPCLOSURE                       R8 K37 [PROTO_2]
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R8 R7 K29 ["SetGameInfo"]
       90 DUPCLOSURE                       R8 K38 [PROTO_3]
       91 CAPTURE                          VAL R2
       92 SETTABLEKS                       R8 R7 K30 ["SetPlaceInfo"]
       94 DUPCLOSURE                       R8 K39 [PROTO_4]
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R8 R7 K31 ["SetChoosePlaceQueryState"]
       98 DUPCLOSURE                       R8 K40 [PROTO_5]
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R8 R7 K32 ["ResetInfo"]
      102 DUPCLOSURE                       R8 K41 [PROTO_6]
      103 CAPTURE                          VAL R2
      104 SETTABLEKS                       R8 R7 K33 ["SetGameConfiguration"]
      106 CALL                             R5 2 -1
      107 RETURN                           R5 -1
