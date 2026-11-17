PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        3 NAMECALL                         R1 R1 K1 ["JSONDecode"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["GROUPS_ROLES_USERS_URL"]
        4 GETTABLEKS                       R4 R4 K1 ["Prefix"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K0 ["GROUPS_ROLES_USERS_URL"]
        9 GETTABLEKS                       R5 R5 K2 ["Url"]
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 CALL                             R5 2 1
       14 JUMPIFNOT                        R2 ; [+4]
       15 DUPTABLE                         R6 K8 [{["limit"] = "100", ["sortOrder"] = "Asc", ["cursor"]}]
       16 SETTABLEKS                       R2 R6 K7 ["cursor"]
       18 JUMP                             ; [+1]
       19 DUPTABLE                         R6 K9 [{["limit"] = "100", ["sortOrder"] = "Asc"}]
       20 CALL                             R3 3 1
       21 GETUPVAL                         R4 2
       22 DUPTABLE                         R6 K13 [{["Method"] = "GET", ["Url"], ["Headers"]}]
       23 SETTABLEKS                       R3 R6 K2 ["Url"]
       25 GETUPVAL                         R7 3
       26 SETTABLEKS                       R7 R6 K12 ["Headers"]
       28 NAMECALL                         R4 R4 K14 ["request"]
       30 CALL                             R4 2 1
       31 DUPCLOSURE                       R6 K15 [PROTO_0]
       32 CAPTURE                          UPVAL U4
       33 NAMECALL                         R4 R4 K16 ["andThen"]
       35 CALL                             R4 2 1
       36 DUPCLOSURE                       R6 K17 [PROTO_1]
       37 NAMECALL                         R4 R4 K18 ["catch"]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

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
