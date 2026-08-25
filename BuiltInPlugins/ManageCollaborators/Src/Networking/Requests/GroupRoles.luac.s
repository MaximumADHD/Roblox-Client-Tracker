PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 GETIMPORT                        R2 K2 [pairs]
        7 GETTABLEKS                       R3 R1 K3 ["roles"]
        9 CALL                             R2 1 3
       10 FORGPREP_NEXT                    R2
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K4 ["fflagManageCollaboratorsFilterDefaultMemberRoleset"]
       14 JUMPIFNOT                        R7 ; [+7]
       15 GETTABLEKS                       R7 R6 K5 ["id"]
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R8 R8 K6 ["GroupDefaultMemberRolesetId"]
       20 JUMPIFEQ                         R7 R8 ; [+27]
       22 GETUPVAL                         R8 3
       23 NEWTABLE                         R9 4 0
       25 GETUPVAL                         R10 4
       26 GETTABLEKS                       R10 R10 K7 ["RoleName"]
       28 GETTABLEKS                       R11 R6 K8 ["name"]
       30 SETTABLE                         R11 R9 R10
       31 GETUPVAL                         R10 4
       32 GETTABLEKS                       R10 R10 K9 ["RoleId"]
       34 GETTABLEKS                       R11 R6 K5 ["id"]
       36 SETTABLE                         R11 R9 R10
       37 GETUPVAL                         R10 4
       38 GETTABLEKS                       R10 R10 K10 ["RoleRank"]
       40 GETTABLEKS                       R11 R6 K11 ["rank"]
       42 SETTABLE                         R11 R9 R10
       43 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       45 GETIMPORT                        R7 K14 [table.insert]
       47 CALL                             R7 2 0
       48 FORGLOOP                         R2 2 ; [-38]
       50 GETUPVAL                         R2 3
       51 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["fflagIncludePrivateRoles"]
        5 JUMPIFNOT                        R3 ; [+2]
        6 LOADK                            R2 K1 ["v1/groups/%d/roles?includePrivate=true"]
        7 JUMP                             ; [+1]
        8 LOADK                            R2 K2 ["v1/groups/%d/roles"]
        9 DUPTABLE                         R3 K6 [{["Url"], ["Method"] = "GET"}]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K7 ["BuildRobloxUrl"]
       13 LOADK                            R5 K8 ["groups"]
       14 MOVE                             R6 R2
       15 MOVE                             R7 R0
       16 CALL                             R4 3 1
       17 SETTABLEKS                       R4 R3 K3 ["Url"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K9 ["Request"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U4
       30 NAMECALL                         R4 R4 K10 ["andThen"]
       32 CALL                             R4 2 -1
       33 RETURN                           R4 -1

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
       19 GETTABLEKS                       R3 R1 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Networking"]
       23 GETTABLEKS                       R3 R3 K11 ["Http"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R4 R1 K12 ["Bin"]
       30 GETTABLEKS                       R4 R4 K13 ["defineLuaFlags"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K8 [require]
       35 GETIMPORT                        R5 K5 [script]
       37 GETTABLEKS                       R5 R5 K6 ["Parent"]
       39 GETTABLEKS                       R5 R5 K14 ["Constants"]
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R5 R4 K15 ["webKeys"]
       44 GETIMPORT                        R6 K8 [require]
       46 GETTABLEKS                       R7 R1 K9 ["Src"]
       48 GETTABLEKS                       R7 R7 K16 ["Util"]
       50 GETTABLEKS                       R7 R7 K17 ["PermissionsConstants"]
       52 CALL                             R6 1 1
       53 NEWTABLE                         R7 1 0
       55 DUPCLOSURE                       R8 K18 [PROTO_1]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R8 R7 K19 ["Get"]
       63 RETURN                           R7 1
