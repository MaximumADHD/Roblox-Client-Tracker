PROTO_0:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        7 NAMECALL                         R1 R1 K1 ["JSONDecode"]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R2 R1 K2 ["roles"]
       12 JUMPIF                           R2 ; [+3]
       13 NEWTABLE                         R2 0 0
       15 RETURN                           R2 1
       16 GETIMPORT                        R2 K4 [pairs]
       18 GETTABLEKS                       R3 R1 K2 ["roles"]
       20 CALL                             R2 1 3
       21 FORGPREP_NEXT                    R2
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R8 R6 K5 ["id"]
       25 NEWTABLE                         R9 4 0
       27 GETUPVAL                         R10 2
       28 GETTABLEKS                       R10 R10 K6 ["RoleName"]
       30 GETTABLEKS                       R11 R6 K7 ["name"]
       32 SETTABLE                         R11 R9 R10
       33 GETUPVAL                         R10 2
       34 GETTABLEKS                       R10 R10 K8 ["RoleId"]
       36 GETTABLEKS                       R11 R6 K5 ["id"]
       38 SETTABLE                         R11 R9 R10
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R10 R10 K9 ["RoleRank"]
       42 GETTABLEKS                       R11 R6 K10 ["rank"]
       44 SETTABLE                         R11 R9 R10
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K11 ["RoleMemberCount"]
       48 GETTABLEKS                       R11 R6 K12 ["memberCount"]
       50 SETTABLE                         R11 R9 R10
       51 SETTABLE                         R9 R7 R8
       52 FORGLOOP                         R2 2 ; [-31]
       54 GETUPVAL                         R2 1
       55 RETURN                           R2 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GROUPS_ROLES_URL"]
        4 GETTABLEKS                       R2 R2 K1 ["Prefix"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["GROUPS_ROLES_URL"]
        9 GETTABLEKS                       R3 R3 K2 ["Url"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 CALL                             R1 -1 1
       14 NEWTABLE                         R2 0 0
       16 GETUPVAL                         R3 2
       17 DUPTABLE                         R5 K6 [{["Method"] = "GET", ["Url"], ["Headers"]}]
       18 SETTABLEKS                       R1 R5 K2 ["Url"]
       20 GETUPVAL                         R6 3
       21 SETTABLEKS                       R6 R5 K5 ["Headers"]
       23 NAMECALL                         R3 R3 K7 ["request"]
       25 CALL                             R3 2 1
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U5
       30 NAMECALL                         R3 R3 K8 ["andThen"]
       32 CALL                             R3 2 1
       33 DUPCLOSURE                       R5 K9 [PROTO_1]
       34 NAMECALL                         R3 R3 K10 ["catch"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 GETTABLEKS                       R2 R2 K8 ["WebKeyConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Networking"]
       22 GETTABLEKS                       R3 R3 K9 ["Urls"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R2 R2 K9 ["Urls"]
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Networking"]
       33 GETTABLEKS                       R4 R4 K9 ["Urls"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R3 R3 K10 ["composeUrl"]
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R5 K11 ["Util"]
       44 GETTABLEKS                       R5 R5 K7 ["Networking"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R4 R4 K7 ["Networking"]
       49 GETTABLEKS                       R5 R4 K12 ["new"]
       51 DUPTABLE                         R6 K15 [{["isInternal"] = True}]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K17 [game]
       55 LOADK                            R8 K18 ["HttpService"]
       56 NAMECALL                         R6 R6 K19 ["GetService"]
       58 CALL                             R6 2 1
       59 NEWTABLE                         R7 1 0
       61 LOADK                            R8 K20 ["application/json"]
       62 SETTABLEKS                       R8 R7 K21 ["Content-Type"]
       64 DUPCLOSURE                       R8 K22 [PROTO_2]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R1
       71 SETGLOBAL                        R8 K23 ["GetGroupRoles"]
       73 GETGLOBAL                        R8 K23 ["GetGroupRoles"]
       75 RETURN                           R8 1
