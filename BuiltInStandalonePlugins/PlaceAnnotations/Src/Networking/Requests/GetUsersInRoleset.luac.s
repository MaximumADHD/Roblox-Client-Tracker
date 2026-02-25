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
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["GROUPS_ROLES_USERS_URL"]
        4 GETTABLEKS                       R4 R5 K1 ["Prefix"]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K0 ["GROUPS_ROLES_USERS_URL"]
        9 GETTABLEKS                       R5 R6 K2 ["Url"]
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 CALL                             R5 2 1
       14 JUMPIFNOT                        R2 ; [+10]
       15 DUPTABLE                         R6 K6 [{"limit", "sortOrder", "cursor"}]
       16 LOADK                            R7 K7 ["100"]
       17 SETTABLEKS                       R7 R6 K3 ["limit"]
       19 LOADK                            R7 K8 ["Asc"]
       20 SETTABLEKS                       R7 R6 K4 ["sortOrder"]
       22 SETTABLEKS                       R2 R6 K5 ["cursor"]
       24 JUMP                             ; [+7]
       25 DUPTABLE                         R6 K9 [{"limit", "sortOrder"}]
       26 LOADK                            R7 K7 ["100"]
       27 SETTABLEKS                       R7 R6 K3 ["limit"]
       29 LOADK                            R7 K8 ["Asc"]
       30 SETTABLEKS                       R7 R6 K4 ["sortOrder"]
       32 CALL                             R3 3 1
       33 GETUPVAL                         R4 2
       34 DUPTABLE                         R6 K12 [{"Method", "Url", "Headers"}]
       35 LOADK                            R7 K13 ["GET"]
       36 SETTABLEKS                       R7 R6 K10 ["Method"]
       38 SETTABLEKS                       R3 R6 K2 ["Url"]
       40 GETUPVAL                         R7 3
       41 SETTABLEKS                       R7 R6 K11 ["Headers"]
       43 NAMECALL                         R4 R4 K14 ["request"]
       45 CALL                             R4 2 1
       46 DUPCLOSURE                       R6 K15 [PROTO_0]
       47 CAPTURE                          UPVAL U4
       48 NAMECALL                         R4 R4 K16 ["andThen"]
       50 CALL                             R4 2 1
       51 DUPCLOSURE                       R6 K17 [PROTO_1]
       52 NAMECALL                         R4 R4 K18 ["catch"]
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1

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
