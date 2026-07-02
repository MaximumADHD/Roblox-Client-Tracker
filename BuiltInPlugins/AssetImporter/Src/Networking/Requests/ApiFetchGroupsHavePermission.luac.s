PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 DUPTABLE                         R2 K2 [{"groups"}]
        6 NEWTABLE                         R3 0 0
        8 SETTABLEKS                       R3 R2 K1 ["groups"]
       10 GETTABLEKS                       R3 R1 K3 ["data"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K4 ["fromJsonData"]
       18 MOVE                             R9 R7
       19 CALL                             R8 1 2
       20 JUMPIFNOT                        R8 ; [+9]
       21 GETTABLEKS                       R11 R2 K1 ["groups"]
       23 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       25 MOVE                             R12 R9
       26 GETIMPORT                        R10 K7 [table.insert]
       28 CALL                             R10 2 0
       29 JUMP                             ; [+9]
       30 GETIMPORT                        R10 K9 [error]
       32 LOADK                            R12 K10 ["Parsing error for ApiFetchGroupsCanManage: %*"]
       33 MOVE                             R14 R9
       34 NAMECALL                         R12 R12 K11 ["format"]
       36 CALL                             R12 2 1
       37 MOVE                             R11 R12
       38 CALL                             R10 1 0
       39 FORGLOOP                         R3 2 ; [-25]
       41 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{[1], ["Method"] = "GET"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["BuildRobloxUrl"]
        4 LOADK                            R2 K5 ["develop"]
        5 LOADK                            R3 K6 ["v1/user/groups/canmanage"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K0 ["Url"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K7 ["Request"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 NAMECALL                         R1 R1 K9 ["andThen"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["HttpService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K6 ["Src"]
       24 GETTABLEKS                       R4 R4 K11 ["Networking"]
       26 GETTABLEKS                       R4 R4 K12 ["Http"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R0 K6 ["Src"]
       33 GETTABLEKS                       R5 R5 K11 ["Networking"]
       35 GETTABLEKS                       R5 R5 K13 ["Models"]
       37 GETTABLEKS                       R5 R5 K14 ["Group"]
       39 CALL                             R4 1 1
       40 DUPCLOSURE                       R5 K15 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 RETURN                           R5 1
