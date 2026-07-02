PROTO_0:
        0 DUPTABLE                         R0 K1 [{"_networkImp"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["new"]
        4 DUPTABLE                         R2 K5 [{["isInternal"] = True}]
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R1 R0 K0 ["_networkImp"]
        8 GETUPVAL                         R3 1
        9 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K7 [setmetatable]
       14 CALL                             R1 2 0
       15 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_networkImp"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["get"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R0 K0 ["_networkImp"]
        8 MOVE                             R5 R2
        9 LOADN                            R6 5
       10 NAMECALL                         R3 R3 K2 ["handleRetry"]
       12 CALL                             R3 3 1
       13 GETTABLEKS                       R4 R0 K0 ["_networkImp"]
       15 MOVE                             R6 R3
       16 NAMECALL                         R4 R4 K3 ["parseJson"]
       18 CALL                             R4 2 -1
       19 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["composeUrl"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["ITEM_CONFIGURATION_URL"]
        6 LOADK                            R6 K2 ["v1/creations/get-assets"]
        7 DUPTABLE                         R7 K9 [{["assetType"], ["isArchived"] = False, ["limit"], ["cursor"], ["groupId"]}]
        8 SETTABLEKS                       R0 R7 K3 ["assetType"]
       10 SETTABLEKS                       R1 R7 K6 ["limit"]
       12 SETTABLEKS                       R2 R7 K7 ["cursor"]
       14 SETTABLEKS                       R3 R7 K8 ["groupId"]
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["composeUrl"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["ITEM_CONFIGURATION_URL"]
        6 LOADK                            R5 K2 ["v1/creations/get-assets"]
        7 DUPTABLE                         R6 K11 [{["assetType"] = "Animation", ["isArchived"] = False, ["limit"] = 25, ["cursor"], ["groupId"]}]
        8 SETTABLEKS                       R1 R6 K9 ["cursor"]
       10 SETTABLEKS                       R2 R6 K10 ["groupId"]
       12 CALL                             R3 3 1
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R0 K12 ["httpGetJson"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_4:
        0 GETIMPORT                        R5 K2 [string.format]
        2 LOADK                            R6 K3 ["toolbox-service/v1/inventory/user/%d/%s?"]
        3 MOVE                             R7 R4
        4 MOVE                             R8 R0
        5 CALL                             R5 3 1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K4 ["composeUrl"]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K5 ["APIS_URL"]
       12 MOVE                             R8 R5
       13 DUPTABLE                         R9 K10 [{"keyword", "limit", "searchSource", "cursor"}]
       14 SETTABLEKS                       R3 R9 K6 ["keyword"]
       16 SETTABLEKS                       R1 R9 K7 ["limit"]
       18 JUMPIFNOT                        R3 ; [+2]
       19 LOADK                            R10 K6 ["keyword"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R10
       22 SETTABLEKS                       R10 R9 K8 ["searchSource"]
       24 SETTABLEKS                       R2 R9 K9 ["cursor"]
       26 CALL                             R6 3 -1
       27 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["animation"]
        2 LOADN                            R6 30
        3 MOVE                             R7 R1
        4 MOVE                             R8 R3
        5 MOVE                             R9 R2
        6 CALL                             R4 5 1
        7 MOVE                             R7 R4
        8 NAMECALL                         R5 R0 K1 ["httpGetJson"]
       10 CALL                             R5 2 -1
       11 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["composeUrl"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["DEVELOP_URL"]
        6 LOADK                            R4 K2 ["v2/universes/"]
        7 MOVE                             R5 R0
        8 LOADK                            R6 K3 ["/configuration"]
        9 CONCAT                           R3 R4 R6
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_7:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_8:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R3 K3 [0] ; [+4]
        8 GETTABLEKS                       R4 R2 K4 ["GameSettingsAvatar"]
       10 RETURN                           R4 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["composeUrl"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K6 ["DEVELOP_URL"]
       17 LOADK                            R7 K7 ["v2/universes/"]
       18 MOVE                             R8 R3
       19 LOADK                            R9 K8 ["/configuration"]
       20 CONCAT                           R6 R7 R9
       21 CALL                             R4 2 1
       22 MOVE                             R7 R4
       23 NAMECALL                         R5 R0 K9 ["httpGetJson"]
       25 CALL                             R5 2 1
       26 DUPCLOSURE                       R7 K10 [PROTO_7]
       27 NAMECALL                         R5 R5 K11 ["catch"]
       29 CALL                             R5 2 1
       30 NAMECALL                         R5 R5 K12 ["await"]
       32 CALL                             R5 1 1
       33 JUMPIF                           R5 ; [+2]
       34 LOADNIL                          R6
       35 RETURN                           R6 1
       36 GETTABLEKS                       R6 R5 K13 ["responseBody"]
       38 GETTABLEKS                       R6 R6 K14 ["universeAvatarType"]
       40 JUMPIFNOTEQKS                    R6 K15 ["MorphToR6"] ; [+4]
       42 GETIMPORT                        R7 K19 [Enum.GameAvatarType.R6]
       44 RETURN                           R7 1
       45 JUMPIFNOTEQKS                    R6 K20 ["MorphToR15"] ; [+4]
       47 GETIMPORT                        R7 K22 [Enum.GameAvatarType.R15]
       49 RETURN                           R7 1
       50 GETIMPORT                        R7 K24 [Enum.GameAvatarType.PlayerChoice]
       52 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Http"]
       16 GETTABLEKS                       R2 R2 K9 ["Networking"]
       18 GETTABLEKS                       R3 R1 K10 ["ContextServices"]
       20 GETTABLEKS                       R3 R3 K11 ["ContextItem"]
       22 GETTABLEKS                       R4 R1 K12 ["RobloxAPI"]
       24 GETTABLEKS                       R4 R4 K13 ["Url"]
       26 GETTABLEKS                       R4 R4 K14 ["new"]
       28 CALL                             R4 0 1
       29 LOADK                            R7 K15 ["NetworkInterface"]
       30 NAMECALL                         R5 R3 K16 ["extend"]
       32 CALL                             R5 2 1
       33 DUPCLOSURE                       R6 K17 [PROTO_0]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R6 R5 K14 ["new"]
       38 DUPCLOSURE                       R6 K18 [PROTO_1]
       39 SETTABLEKS                       R6 R5 K19 ["httpGetJson"]
       41 DUPCLOSURE                       R6 K20 [PROTO_2]
       42 CAPTURE                          VAL R4
       43 DUPCLOSURE                       R7 K21 [PROTO_3]
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R7 R5 K22 ["getGroupAnimations"]
       47 DUPCLOSURE                       R7 K23 [PROTO_4]
       48 CAPTURE                          VAL R4
       49 DUPCLOSURE                       R8 K24 [PROTO_5]
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R8 R5 K25 ["getUserAnimations"]
       53 DUPCLOSURE                       R8 K26 [PROTO_6]
       54 CAPTURE                          VAL R4
       55 DUPCLOSURE                       R9 K27 [PROTO_8]
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R9 R5 K28 ["getAvatarType"]
       59 RETURN                           R5 1
