PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 NEWTABLE                         R2 4 0
        7 GETTABLEKS                       R3 R1 K1 ["previousPageCursor"]
        9 JUMPIFNOT                        R3 ; [+4]
       10 GETTABLEKS                       R3 R1 K1 ["previousPageCursor"]
       12 SETTABLEKS                       R3 R2 K1 ["previousPageCursor"]
       14 GETTABLEKS                       R3 R1 K2 ["nextPageCursor"]
       16 JUMPIFNOT                        R3 ; [+4]
       17 GETTABLEKS                       R3 R1 K2 ["nextPageCursor"]
       19 SETTABLEKS                       R3 R2 K2 ["nextPageCursor"]
       21 NEWTABLE                         R3 0 0
       23 SETTABLEKS                       R3 R2 K3 ["places"]
       25 GETIMPORT                        R3 K5 [pairs]
       27 GETTABLEKS                       R4 R1 K6 ["data"]
       29 CALL                             R3 1 3
       30 FORGPREP_NEXT                    R3
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K7 ["fromJsonData"]
       34 MOVE                             R9 R7
       35 CALL                             R8 1 2
       36 JUMPIFNOT                        R8 ; [+9]
       37 GETTABLEKS                       R11 R2 K3 ["places"]
       39 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       41 MOVE                             R12 R9
       42 GETIMPORT                        R10 K10 [table.insert]
       44 CALL                             R10 2 0
       45 JUMP                             ; [+6]
       46 GETIMPORT                        R10 K12 [error]
       48 LOADK                            R12 K13 ["Parsing error for ApiFetchPlacesByUniverseId: "]
       49 MOVE                             R13 R9
       50 CONCAT                           R11 R12 R13
       51 CALL                             R10 1 0
       52 FORGLOOP                         R3 2 ; [-22]
       54 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["universeId"]
        2 JUMPIF                           R2 ; [+6]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["reject"]
        6 LOADK                            R4 K2 ["NO UNIVERSE ID - ApiFetchPlacesByGameId"]
        7 CALL                             R3 1 -1
        8 RETURN                           R3 -1
        9 GETTABLEKS                       R4 R1 K4 ["limit"]
       11 ORK                              R3 R4 K3 [10]
       12 GETTABLEKS                       R5 R1 K6 ["sortOrder"]
       14 ORK                              R4 R5 K5 ["Asc"]
       15 GETTABLEKS                       R5 R1 K7 ["cursor"]
       17 DUPTABLE                         R6 K12 [{["Url"], ["Method"] = "GET", ["Params"]}]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K13 ["BuildRobloxUrl"]
       21 LOADK                            R8 K14 ["develop"]
       22 LOADK                            R9 K15 ["v1/universes/%d/places"]
       23 MOVE                             R10 R2
       24 CALL                             R7 3 1
       25 SETTABLEKS                       R7 R6 K8 ["Url"]
       27 DUPTABLE                         R7 K16 [{"sortOrder", "limit", "cursor"}]
       28 SETTABLEKS                       R4 R7 K6 ["sortOrder"]
       30 SETTABLEKS                       R3 R7 K4 ["limit"]
       32 SETTABLEKS                       R5 R7 K7 ["cursor"]
       34 SETTABLEKS                       R7 R6 K11 ["Params"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K17 ["Request"]
       39 MOVE                             R8 R6
       40 CALL                             R7 1 1
       41 DUPCLOSURE                       R9 K18 [PROTO_0]
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 NAMECALL                         R7 R7 K19 ["andThen"]
       46 CALL                             R7 2 -1
       47 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R2 R2 K11 ["Util"]
       26 GETTABLEKS                       R2 R2 K12 ["Promise"]
       28 GETIMPORT                        R3 K8 [require]
       30 GETTABLEKS                       R4 R1 K13 ["Src"]
       32 GETTABLEKS                       R4 R4 K14 ["Network"]
       34 GETTABLEKS                       R4 R4 K15 ["Models"]
       36 GETTABLEKS                       R4 R4 K16 ["PlaceToPublish"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K8 [require]
       41 GETTABLEKS                       R5 R1 K13 ["Src"]
       43 GETTABLEKS                       R5 R5 K14 ["Network"]
       45 GETTABLEKS                       R5 R5 K17 ["Http"]
       47 CALL                             R4 1 1
       48 DUPCLOSURE                       R5 K18 [PROTO_1]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R3
       53 RETURN                           R5 1
