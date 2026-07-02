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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["USERS_SEARCH_URL"]
        4 GETTABLEKS                       R3 R3 K1 ["Prefix"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["USERS_SEARCH_URL"]
        9 GETTABLEKS                       R4 R4 K2 ["Url"]
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R1 ; [+6]
       13 DUPTABLE                         R5 K9 [{["keyword"], ["limit"] = "10", ["sortOrder"] = "Asc", ["cursor"]}]
       14 SETTABLEKS                       R0 R5 K3 ["keyword"]
       16 SETTABLEKS                       R1 R5 K8 ["cursor"]
       18 JUMP                             ; [+3]
       19 DUPTABLE                         R5 K10 [{["keyword"], ["limit"] = "10", ["sortOrder"] = "Asc"}]
       20 SETTABLEKS                       R0 R5 K3 ["keyword"]
       22 CALL                             R2 3 1
       23 GETUPVAL                         R3 2
       24 DUPTABLE                         R5 K14 [{["Method"] = "GET", ["Url"], ["Headers"]}]
       25 SETTABLEKS                       R2 R5 K2 ["Url"]
       27 GETUPVAL                         R6 3
       28 SETTABLEKS                       R6 R5 K13 ["Headers"]
       30 NAMECALL                         R3 R3 K15 ["request"]
       32 CALL                             R3 2 1
       33 DUPCLOSURE                       R5 K16 [PROTO_0]
       34 CAPTURE                          UPVAL U4
       35 NAMECALL                         R3 R3 K17 ["andThen"]
       37 CALL                             R3 2 1
       38 DUPCLOSURE                       R5 K18 [PROTO_1]
       39 NAMECALL                         R3 R3 K19 ["catch"]
       41 CALL                             R3 2 -1
       42 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 GETTABLEKS                       R2 R2 K8 ["Urls"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K8 ["Urls"]
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Networking"]
       24 GETTABLEKS                       R3 R3 K8 ["Urls"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R2 R2 K9 ["composeUrlWithArgs"]
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K10 ["Util"]
       35 GETTABLEKS                       R4 R4 K7 ["Networking"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R3 R3 K7 ["Networking"]
       40 GETTABLEKS                       R4 R3 K11 ["new"]
       42 DUPTABLE                         R5 K14 [{["isInternal"] = True}]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K16 [game]
       46 LOADK                            R7 K17 ["HttpService"]
       47 NAMECALL                         R5 R5 K18 ["GetService"]
       49 CALL                             R5 2 1
       50 NEWTABLE                         R6 1 0
       52 LOADK                            R7 K19 ["application/json"]
       53 SETTABLEKS                       R7 R6 K20 ["Content-Type"]
       55 DUPCLOSURE                       R7 K21 [PROTO_2]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 RETURN                           R7 1
