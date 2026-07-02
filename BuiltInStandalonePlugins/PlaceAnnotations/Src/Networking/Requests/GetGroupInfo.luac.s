PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        3 NAMECALL                         R1 R1 K1 ["JSONDecode"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GROUPS_INFO_URL"]
        4 GETTABLEKS                       R2 R2 K1 ["Prefix"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["GROUPS_INFO_URL"]
        9 GETTABLEKS                       R3 R3 K2 ["Url"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 CALL                             R1 -1 1
       14 GETUPVAL                         R2 2
       15 DUPTABLE                         R4 K6 [{["Method"] = "GET", ["Url"], ["Headers"]}]
       16 SETTABLEKS                       R1 R4 K2 ["Url"]
       18 GETUPVAL                         R5 3
       19 SETTABLEKS                       R5 R4 K5 ["Headers"]
       21 NAMECALL                         R2 R2 K7 ["request"]
       23 CALL                             R2 2 1
       24 DUPCLOSURE                       R4 K8 [PROTO_0]
       25 CAPTURE                          UPVAL U4
       26 NAMECALL                         R2 R2 K9 ["andThen"]
       28 CALL                             R2 2 1
       29 DUPCLOSURE                       R4 K10 [PROTO_1]
       30 NAMECALL                         R2 R2 K11 ["catch"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

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
       27 GETTABLEKS                       R2 R2 K9 ["composeUrl"]
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
       61 SETGLOBAL                        R7 K22 ["GetGroupInfo"]
       63 GETGLOBAL                        R7 K22 ["GetGroupInfo"]
       65 RETURN                           R7 1
