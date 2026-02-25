PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        3 NAMECALL                         R1 R1 K1 ["JSONDecode"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["USERS_SEARCH_URL"]
        4 GETTABLEKS                       R3 R4 K1 ["Prefix"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K0 ["USERS_SEARCH_URL"]
        9 GETTABLEKS                       R4 R5 K2 ["Url"]
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R1 ; [+12]
       13 DUPTABLE                         R5 K7 [{"keyword", "limit", "sortOrder", "cursor"}]
       14 SETTABLEKS                       R0 R5 K3 ["keyword"]
       16 LOADK                            R6 K8 ["10"]
       17 SETTABLEKS                       R6 R5 K4 ["limit"]
       19 LOADK                            R6 K9 ["Asc"]
       20 SETTABLEKS                       R6 R5 K5 ["sortOrder"]
       22 SETTABLEKS                       R1 R5 K6 ["cursor"]
       24 JUMP                             ; [+9]
       25 DUPTABLE                         R5 K10 [{"keyword", "limit", "sortOrder"}]
       26 SETTABLEKS                       R0 R5 K3 ["keyword"]
       28 LOADK                            R6 K8 ["10"]
       29 SETTABLEKS                       R6 R5 K4 ["limit"]
       31 LOADK                            R6 K9 ["Asc"]
       32 SETTABLEKS                       R6 R5 K5 ["sortOrder"]
       34 CALL                             R2 3 1
       35 GETUPVAL                         R3 2
       36 DUPTABLE                         R5 K13 [{"Method", "Url", "Headers"}]
       37 LOADK                            R6 K14 ["GET"]
       38 SETTABLEKS                       R6 R5 K11 ["Method"]
       40 SETTABLEKS                       R2 R5 K2 ["Url"]
       42 GETUPVAL                         R6 3
       43 SETTABLEKS                       R6 R5 K12 ["Headers"]
       45 NAMECALL                         R3 R3 K15 ["request"]
       47 CALL                             R3 2 1
       48 DUPCLOSURE                       R5 K16 [PROTO_0]
       49 CAPTURE                          UPVAL U4
       50 NAMECALL                         R3 R3 K17 ["andThen"]
       52 CALL                             R3 2 1
       53 DUPCLOSURE                       R5 K18 [PROTO_1]
       54 NAMECALL                         R3 R3 K19 ["catch"]
       56 CALL                             R3 2 -1
       57 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Networking"]
       13 GETTABLEKS                       R3 R4 K8 ["Urls"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R1 R2 K8 ["Urls"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K7 ["Networking"]
       24 GETTABLEKS                       R4 R5 K8 ["Urls"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R2 R3 K9 ["composeUrlWithArgs"]
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Src"]
       33 GETTABLEKS                       R6 R7 K10 ["Util"]
       35 GETTABLEKS                       R5 R6 K7 ["Networking"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R3 R4 K7 ["Networking"]
       40 GETTABLEKS                       R4 R3 K11 ["new"]
       42 DUPTABLE                         R5 K13 [{"isInternal"}]
       43 LOADB                            R6 1
       44 SETTABLEKS                       R6 R5 K12 ["isInternal"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K15 [game]
       49 LOADK                            R7 K16 ["HttpService"]
       50 NAMECALL                         R5 R5 K17 ["GetService"]
       52 CALL                             R5 2 1
       53 NEWTABLE                         R6 1 0
       55 LOADK                            R7 K18 ["application/json"]
       56 SETTABLEKS                       R7 R6 K19 ["Content-Type"]
       58 DUPCLOSURE                       R7 K20 [PROTO_2]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 RETURN                           R7 1
