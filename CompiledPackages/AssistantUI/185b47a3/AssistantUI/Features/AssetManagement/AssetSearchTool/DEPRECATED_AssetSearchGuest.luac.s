PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["SearchCreatorInventory"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 CALL                             R5 5 -1
        9 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetGroups"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["PostAsyncFullUrl"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 DUPTABLE                         R1 K4 [{"userId", "gameId", "creatorType", "creatorId"}]
        1 GETTABLEKS                       R3 R0 K5 ["getUserId"]
        3 CALL                             R3 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R2 K7 [tostring]
        7 CALL                             R2 -1 1
        8 SETTABLEKS                       R2 R1 K0 ["userId"]
       10 GETTABLEKS                       R2 R0 K8 ["getGameId"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K1 ["gameId"]
       15 GETIMPORT                        R2 K10 [game]
       17 GETTABLEKS                       R2 R2 K11 ["CreatorType"]
       19 SETTABLEKS                       R2 R1 K2 ["creatorType"]
       21 GETIMPORT                        R2 K10 [game]
       23 GETTABLEKS                       R2 R2 K12 ["CreatorId"]
       25 SETTABLEKS                       R2 R1 K3 ["creatorId"]
       27 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R3 K2 [{"initArgs", "callArgs"}]
        1 SETTABLEKS                       R2 R3 K0 ["initArgs"]
        3 SETTABLEKS                       R1 R3 K1 ["callArgs"]
        5 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getWidgetUpdateFunctions"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["AssetSearchTool"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["insertingAssetIds"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETIMPORT                        R1 K3 [table.clone]
        5 GETTABLEKS                       R2 R0 K0 ["insertingAssetIds"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+2]
        9 NEWTABLE                         R1 0 0
       11 GETUPVAL                         R2 0
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R2 1
       14 LOADB                            R3 1
       15 SETTABLE                         R3 R1 R2
       16 JUMP                             ; [+3]
       17 GETUPVAL                         R2 1
       18 LOADNIL                          R3
       19 SETTABLE                         R3 R1 R2
       20 SETTABLEKS                       R1 R0 K0 ["insertingAssetIds"]
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getWidgetUpdateFunctions"]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K1 ["AssetSearchTool"]
        5 CALL                             R3 2 1
        6 GETTABLEKS                       R4 R3 K2 ["updateWidget"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["RESTRICTED_externalHooks"]
        4 GETTABLEKS                       R2 R2 K2 ["sendMessage"]
        6 JUMPIFNOT                        R2 ; [+16]
        7 MOVE                             R3 R2
        8 DUPTABLE                         R4 K6 [{["text"], ["hidden"] = True}]
        9 LOADK                            R6 K7 ["Please insert asset %* (\"%*\") using insert_asset. Asset type: %*."]
       10 GETTABLEKS                       R8 R1 K8 ["assetId"]
       12 GETTABLEKS                       R9 R1 K9 ["name"]
       14 GETTABLEKS                       R10 R1 K10 ["assetType"]
       16 NAMECALL                         R6 R6 K11 ["format"]
       18 CALL                             R6 4 1
       19 MOVE                             R5 R6
       20 SETTABLEKS                       R5 R4 K3 ["text"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getBridge"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+30]
        7 GETUPVAL                         R1 2
        8 LOADK                            R2 K1 ["[AssetSearchTool] AssetInsertBridgeRegistry.getBridge returned nil; falling back to sendMessage"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R3 R1 K2 ["initArgs"]
       14 GETTABLEKS                       R3 R3 K3 ["RESTRICTED_externalHooks"]
       16 GETTABLEKS                       R3 R3 K4 ["sendMessage"]
       18 JUMPIFNOT                        R3 ; [+16]
       19 MOVE                             R4 R3
       20 DUPTABLE                         R5 K8 [{["text"], ["hidden"] = True}]
       21 LOADK                            R7 K9 ["Please insert asset %* (\"%*\") using insert_asset. Asset type: %*."]
       22 GETTABLEKS                       R9 R2 K10 ["assetId"]
       24 GETTABLEKS                       R10 R2 K11 ["name"]
       26 GETTABLEKS                       R11 R2 K12 ["assetType"]
       28 NAMECALL                         R7 R7 K13 ["format"]
       30 CALL                             R7 4 1
       31 MOVE                             R6 R7
       32 SETTABLEKS                       R6 R5 K5 ["text"]
       34 CALL                             R4 1 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R1 2
       37 LOADK                            R3 K14 ["[AssetSearchTool] direct insert starting: assetId=%* name=\"%*\""]
       38 GETUPVAL                         R5 5
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K11 ["name"]
       42 NAMECALL                         R3 R3 K13 ["format"]
       44 CALL                             R3 3 1
       45 MOVE                             R2 R3
       46 CALL                             R1 1 0
       47 GETTABLEKS                       R1 R0 K15 ["insertAssetAsync"]
       49 DUPTABLE                         R2 K17 [{"assetId", "assetName", "assetType"}]
       50 GETUPVAL                         R3 5
       51 SETTABLEKS                       R3 R2 K10 ["assetId"]
       53 GETUPVAL                         R3 4
       54 GETTABLEKS                       R3 R3 K11 ["name"]
       56 SETTABLEKS                       R3 R2 K16 ["assetName"]
       58 GETUPVAL                         R3 4
       59 GETTABLEKS                       R3 R3 K12 ["assetType"]
       61 SETTABLEKS                       R3 R2 K12 ["assetType"]
       63 CALL                             R1 1 1
       64 GETTABLEKS                       R2 R1 K18 ["responseInfo"]
       66 JUMPIFNOT                        R2 ; [+9]
       67 GETUPVAL                         R2 2
       68 LOADK                            R4 K19 ["[AssetSearchTool] direct insert succeeded: assetId=%*"]
       69 GETUPVAL                         R6 5
       70 NAMECALL                         R4 R4 K13 ["format"]
       72 CALL                             R4 2 1
       73 MOVE                             R3 R4
       74 CALL                             R2 1 0
       75 RETURN                           R0 0
       76 GETIMPORT                        R2 K21 [warn]
       78 LOADK                            R4 K22 ["[AssetSearchTool] direct insert reported failure: assetId=%* result=%*"]
       79 GETUPVAL                         R6 5
       80 GETTABLEKS                       R8 R1 K23 ["result"]
       82 FASTCALL1                        TOSTRING R8 ; [+2]
       83 GETIMPORT                        R7 K25 [tostring]
       85 CALL                             R7 1 1
       86 NAMECALL                         R4 R4 K13 ["format"]
       88 CALL                             R4 3 1
       89 MOVE                             R3 R4
       90 CALL                             R2 1 0
       91 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["[AssetSearchTool] direct insert handler threw: assetId=%* err=%*"]
        3 GETUPVAL                         R5 0
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R7 R0
        6 GETIMPORT                        R6 K4 [tostring]
        8 CALL                             R6 1 1
        9 NAMECALL                         R3 R3 K5 ["format"]
       11 CALL                             R3 3 1
       12 MOVE                             R2 R3
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["getWidgetUpdateFunctions"]
        9 MOVE                             R3 R0
       10 LOADK                            R4 K1 ["AssetSearchTool"]
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R3 R2 K2 ["updateWidget"]
       14 LOADB                            R5 0
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R5
       17 CAPTURE                          VAL R1
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R0 K5 [{[1] = False, ["messageId"] = "", ["contentId"] = ""}]
        1 GETIMPORT                        R1 K7 [xpcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          UPVAL U4
       12 CALL                             R1 2 0
       13 GETIMPORT                        R1 K9 [pcall]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U6
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["assetId"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R2
        4 JUMPIFNOT                        R3 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 LOADB                            R4 1
        8 SETTABLE                         R4 R3 R2
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["getWidgetUpdateFunctions"]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K2 ["AssetSearchTool"]
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R4 R3 K3 ["updateWidget"]
       17 LOADB                            R6 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R6
       20 CAPTURE                          VAL R2
       21 CALL                             R4 1 0
       22 GETIMPORT                        R3 K6 [task.spawn]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U1
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["isFree"]
        2 JUMPIFNOTEQKB                    R1 FALSE ; [+28]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["initArgs"]
        7 GETTABLEKS                       R1 R1 K2 ["environment"]
        9 JUMPIFNOT                        R1 ; [+20]
       10 GETTABLEKS                       R2 R1 K3 ["http"]
       12 JUMPIFNOT                        R2 ; [+17]
       13 GETTABLEKS                       R2 R1 K3 ["http"]
       15 GETTABLEKS                       R2 R2 K4 ["openUrl"]
       17 JUMPIFNOT                        R2 ; [+12]
       18 GETTABLEKS                       R2 R1 K3 ["http"]
       20 GETTABLEKS                       R2 R2 K4 ["openUrl"]
       22 LOADK                            R4 K5 ["https://create.roblox.com/store/asset/%*"]
       23 GETTABLEKS                       R6 R0 K6 ["assetId"]
       25 NAMECALL                         R4 R4 K7 ["format"]
       27 CALL                             R4 2 1
       28 MOVE                             R3 R4
       29 CALL                             R2 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R1 R1 K8 ["FFlagAssistantAssetSearchDirectInsert"]
       34 JUMPIFNOT                        R1 ; [+35]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R2 R0 K6 ["assetId"]
       38 GETUPVAL                         R4 2
       39 GETTABLE                         R3 R4 R2
       40 JUMPIFNOT                        R3 ; [+1]
       41 RETURN                           R0 0
       42 GETUPVAL                         R3 2
       43 LOADB                            R4 1
       44 SETTABLE                         R4 R3 R2
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R3 R3 K9 ["getWidgetUpdateFunctions"]
       48 MOVE                             R4 R1
       49 LOADK                            R5 K10 ["AssetSearchTool"]
       50 CALL                             R3 2 1
       51 GETTABLEKS                       R4 R3 K11 ["updateWidget"]
       53 LOADB                            R6 1
       54 NEWCLOSURE                       R5 P0
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 CALL                             R4 1 0
       58 GETIMPORT                        R3 K14 [task.spawn]
       60 NEWCLOSURE                       R4 P1
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          UPVAL U3
       68 CALL                             R3 1 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R1 0
       71 GETTABLEKS                       R2 R1 K1 ["initArgs"]
       73 GETTABLEKS                       R2 R2 K15 ["RESTRICTED_externalHooks"]
       75 GETTABLEKS                       R2 R2 K16 ["sendMessage"]
       77 JUMPIFNOT                        R2 ; [+16]
       78 MOVE                             R3 R2
       79 DUPTABLE                         R4 K20 [{["text"], ["hidden"] = True}]
       80 LOADK                            R6 K21 ["Please insert asset %* (\"%*\") using insert_asset. Asset type: %*."]
       81 GETTABLEKS                       R8 R0 K6 ["assetId"]
       83 GETTABLEKS                       R9 R0 K22 ["name"]
       85 GETTABLEKS                       R10 R0 K23 ["assetType"]
       87 NAMECALL                         R6 R6 K7 ["format"]
       89 CALL                             R6 4 1
       90 MOVE                             R5 R6
       91 SETTABLEKS                       R5 R4 K17 ["text"]
       93 CALL                             R3 1 0
       94 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getStudioIdentity"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R1 K1 ["gameId"]
        7 LOADN                            R4 0
        8 JUMPIFLT                         R4 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETTABLEKS                       R4 R1 K2 ["creatorType"]
       14 GETIMPORT                        R5 K6 [Enum.CreatorType.Group]
       16 JUMPIFEQ                         R4 R5 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 DUPTABLE                         R4 K11 [{"userId", "universeId", "groupId", "creatorType", "creatorId"}]
       21 GETTABLEKS                       R5 R1 K7 ["userId"]
       23 SETTABLEKS                       R5 R4 K7 ["userId"]
       25 JUMPIFNOT                        R2 ; [+7]
       26 GETTABLEKS                       R6 R1 K1 ["gameId"]
       28 FASTCALL1                        TOSTRING R6 ; [+2]
       29 GETIMPORT                        R5 K13 [tostring]
       31 CALL                             R5 1 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R4 K8 ["universeId"]
       36 JUMPIFNOT                        R3 ; [+7]
       37 GETTABLEKS                       R6 R1 K10 ["creatorId"]
       39 FASTCALL1                        TOSTRING R6 ; [+2]
       40 GETIMPORT                        R5 K13 [tostring]
       42 CALL                             R5 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 SETTABLEKS                       R5 R4 K9 ["groupId"]
       47 JUMPIFNOT                        R2 ; [+3]
       48 GETTABLEKS                       R5 R1 K2 ["creatorType"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R5
       52 SETTABLEKS                       R5 R4 K2 ["creatorType"]
       54 JUMPIFNOT                        R2 ; [+7]
       55 GETTABLEKS                       R6 R1 K10 ["creatorId"]
       57 FASTCALL1                        TOSTRING R6 ; [+2]
       58 GETIMPORT                        R5 K13 [tostring]
       60 CALL                             R5 1 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R5
       63 SETTABLEKS                       R5 R4 K10 ["creatorId"]
       65 RETURN                           R4 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fetchUserGroups"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 NAMECALL                         R0 R0 K1 ["makeRequest"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R0 R0 K2 ["expect"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_18:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+15]
        7 GETUPVAL                         R3 1
        8 LOADK                            R5 K2 ["[AssetSearchTool] getUserGroups: fetch failed for surface=%*: %*"]
        9 MOVE                             R7 R0
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R9 R2
       12 GETIMPORT                        R8 K4 [tostring]
       14 CALL                             R8 1 1
       15 NAMECALL                         R5 R5 K5 ["format"]
       17 CALL                             R5 3 1
       18 MOVE                             R4 R5
       19 CALL                             R3 1 0
       20 LOADNIL                          R3
       21 RETURN                           R3 1
       22 MOVE                             R3 R2
       23 JUMPIFNOT                        R3 ; [+2]
       24 GETTABLEKS                       R3 R2 K6 ["responseBody"]
       26 JUMPIFNOT                        R3 ; [+8]
       27 GETTABLEKS                       R5 R3 K7 ["groups"]
       29 FASTCALL1                        TYPE R5 ; [+2]
       30 GETIMPORT                        R4 K9 [type]
       32 CALL                             R4 1 1
       33 JUMPIFEQKS                       R4 K10 ["table"] ; [+11]
       35 GETUPVAL                         R4 1
       36 LOADK                            R6 K11 ["[AssetSearchTool] getUserGroups: unexpected shape for surface=%*"]
       37 MOVE                             R8 R0
       38 NAMECALL                         R6 R6 K5 ["format"]
       40 CALL                             R6 2 1
       41 MOVE                             R5 R6
       42 CALL                             R4 1 0
       43 LOADNIL                          R4
       44 RETURN                           R4 1
       45 NEWTABLE                         R4 0 0
       47 GETTABLEKS                       R5 R3 K7 ["groups"]
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 FORGPREP                         R5
       52 GETTABLEKS                       R11 R9 K12 ["id"]
       54 FASTCALL1                        TYPE R11 ; [+2]
       55 GETIMPORT                        R10 K9 [type]
       57 CALL                             R10 1 1
       58 JUMPIFNOTEQKS                    R10 K13 ["number"] ; [+24]
       60 GETTABLEKS                       R11 R9 K14 ["name"]
       62 FASTCALL1                        TYPE R11 ; [+2]
       63 GETIMPORT                        R10 K9 [type]
       65 CALL                             R10 1 1
       66 JUMPIFNOTEQKS                    R10 K15 ["string"] ; [+16]
       68 DUPTABLE                         R12 K16 [{"id", "name"}]
       69 GETTABLEKS                       R13 R9 K12 ["id"]
       71 SETTABLEKS                       R13 R12 K12 ["id"]
       73 GETTABLEKS                       R13 R9 K14 ["name"]
       75 SETTABLEKS                       R13 R12 K14 ["name"]
       77 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       79 MOVE                             R11 R4
       80 GETIMPORT                        R10 K18 [table.insert]
       82 CALL                             R10 2 0
       83 FORGLOOP                         R5 2 ; [-32]
       85 RETURN                           R4 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R2 R0 K0 ["userId"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+12]
        7 GETUPVAL                         R1 2
        8 LOADK                            R3 K1 ["[AssetSearchTool] getUserGroups: returning cached groups (userId=%*)"]
        9 GETTABLEKS                       R5 R0 K0 ["userId"]
       11 NAMECALL                         R3 R3 K2 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 0
       17 RETURN                           R1 1
       18 DUPCLOSURE                       R1 K3 [PROTO_18]
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U2
       21 LOADNIL                          R2
       22 GETUPVAL                         R3 4
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 MOVE                             R8 R1
       27 MOVE                             R9 R7
       28 CALL                             R8 1 1
       29 MOVE                             R2 R8
       30 JUMPIFNOTEQKNIL                  R2 ; [+3]
       32 FORGLOOP                         R3 2 ; [-7]
       34 JUMPIFNOTEQKNIL                  R2 ; [+7]
       36 GETUPVAL                         R3 2
       37 LOADK                            R4 K4 ["[AssetSearchTool] getUserGroups: both surfaces failed; returning empty without caching"]
       38 CALL                             R3 1 0
       39 NEWTABLE                         R3 0 0
       41 RETURN                           R3 1
       42 GETUPVAL                         R3 2
       43 LOADK                            R5 K5 ["[AssetSearchTool] getUserGroups: resolved %* groups for userId=%*"]
       44 LENGTH                           R7 R2
       45 GETTABLEKS                       R8 R0 K0 ["userId"]
       47 NAMECALL                         R5 R5 K2 ["format"]
       49 CALL                             R5 3 1
       50 MOVE                             R4 R5
       51 CALL                             R3 1 0
       52 GETTABLEKS                       R3 R0 K0 ["userId"]
       54 SETUPVAL                         R3 1
       55 SETUPVAL                         R2 0
       56 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R4 R0 K0 ["groupId"]
        2 JUMPIFEQKNIL                     R4 ; [+8]
        4 GETTABLEKS                       R4 R0 K0 ["groupId"]
        6 JUMPIFEQKS                       R4 K1 [""] ; [+4]
        8 GETTABLEKS                       R3 R0 K0 ["groupId"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 GETTABLEKS                       R5 R0 K2 ["groupName"]
       14 JUMPIFEQKNIL                     R5 ; [+12]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K3 ["trim"]
       19 GETTABLEKS                       R6 R0 K2 ["groupName"]
       21 CALL                             R5 1 1
       22 JUMPIFEQKS                       R5 K1 [""] ; [+4]
       24 GETTABLEKS                       R4 R0 K2 ["groupName"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R4
       28 JUMPIFNOTEQKNIL                  R3 ; [+6]
       30 JUMPIFNOTEQKNIL                  R4 ; [+4]
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 RETURN                           R5 2
       35 JUMPIFEQKNIL                     R3 ; [+13]
       37 JUMPIFEQKNIL                     R4 ; [+11]
       39 LOADNIL                          R5
       40 DUPTABLE                         R6 K8 [{["status"] = "error", ["error"] = "Provide either groupId or groupName, not both.", ["nextSteps"]}]
       41 NEWTABLE                         R7 0 1
       43 LOADK                            R8 K9 ["Drop one of the two arguments and retry."]
       44 SETLIST                          R7 R8 1 [1]
       46 SETTABLEKS                       R7 R6 K7 ["nextSteps"]
       48 RETURN                           R5 2
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K10 ["Group"]
       52 JUMPIFEQ                         R1 R5 ; [+19]
       54 LOADNIL                          R5
       55 DUPTABLE                         R6 K11 [{["status"] = "error", ["error"], ["nextSteps"]}]
       56 LOADK                            R8 K12 ["groupId/groupName only apply when scope is \"group\"; scope is \"%*\"."]
       57 MOVE                             R10 R1
       58 NAMECALL                         R8 R8 K13 ["format"]
       60 CALL                             R8 2 1
       61 MOVE                             R7 R8
       62 SETTABLEKS                       R7 R6 K5 ["error"]
       64 NEWTABLE                         R7 0 1
       66 LOADK                            R8 K14 ["Set scope='group' to search the specified group, or remove the groupId/groupName argument."]
       67 SETLIST                          R7 R8 1 [1]
       69 SETTABLEKS                       R7 R6 K7 ["nextSteps"]
       71 RETURN                           R5 2
       72 JUMPIFEQKNIL                     R3 ; [+61]
       74 FASTCALL1                        TONUMBER R3 ; [+3]
       75 MOVE                             R6 R3
       76 GETIMPORT                        R5 K16 [tonumber]
       78 CALL                             R5 1 1
       79 JUMPIFNOT                        R5 ; [+3]
       80 LOADN                            R6 0
       81 JUMPIFNOTLE                      R5 R6 ; [+19]
       83 LOADNIL                          R6
       84 DUPTABLE                         R7 K11 [{["status"] = "error", ["error"], ["nextSteps"]}]
       85 LOADK                            R9 K17 ["groupId \"%*\" is not a valid positive numeric ID."]
       86 MOVE                             R11 R3
       87 NAMECALL                         R9 R9 K13 ["format"]
       89 CALL                             R9 2 1
       90 MOVE                             R8 R9
       91 SETTABLEKS                       R8 R7 K5 ["error"]
       93 NEWTABLE                         R8 0 1
       95 LOADK                            R9 K18 ["Pass a positive numeric group ID, or use groupName to look up by name."]
       96 SETLIST                          R8 R9 1 [1]
       98 SETTABLEKS                       R8 R7 K7 ["nextSteps"]
      100 RETURN                           R6 2
      101 MOVE                             R6 R2
      102 LOADNIL                          R7
      103 LOADNIL                          R8
      104 FORGPREP                         R6
      105 GETTABLEKS                       R11 R10 K19 ["id"]
      107 JUMPIFNOTEQ                      R11 R5 ; [+4]
      109 MOVE                             R11 R5
      110 LOADNIL                          R12
      111 RETURN                           R11 2
      112 FORGLOOP                         R6 2 ; [-8]
      114 LOADNIL                          R6
      115 DUPTABLE                         R7 K21 [{["status"] = "error", ["error"], ["groups"], ["nextSteps"]}]
      116 LOADK                            R9 K22 ["groupId \"%*\" is not one of your groups."]
      117 MOVE                             R11 R3
      118 NAMECALL                         R9 R9 K13 ["format"]
      120 CALL                             R9 2 1
      121 MOVE                             R8 R9
      122 SETTABLEKS                       R8 R7 K5 ["error"]
      124 SETTABLEKS                       R2 R7 K20 ["groups"]
      126 NEWTABLE                         R8 0 1
      128 LOADK                            R9 K23 ["Use one of the listed group ids, or pass groupName to look up by name."]
      129 SETLIST                          R8 R9 1 [1]
      131 SETTABLEKS                       R8 R7 K7 ["nextSteps"]
      133 RETURN                           R6 2
      134 JUMPIFNOTEQKNIL                  R4 ; [+2]
      136 LOADB                            R6 0 +1
      137 LOADB                            R6 1
      138 FASTCALL2K                       ASSERT R6 K24 ; [+4]
      140 LOADK                            R7 K24 ["rawGroupName must be set when rawGroupId is nil"]
      141 GETIMPORT                        R5 K26 [assert]
      143 CALL                             R5 2 0
      144 GETIMPORT                        R5 K29 [string.lower]
      146 GETUPVAL                         R6 0
      147 GETTABLEKS                       R6 R6 K3 ["trim"]
      149 MOVE                             R7 R4
      150 CALL                             R6 1 -1
      151 CALL                             R5 -1 1
      152 MOVE                             R6 R2
      153 LOADNIL                          R7
      154 LOADNIL                          R8
      155 FORGPREP                         R6
      156 GETIMPORT                        R11 K29 [string.lower]
      158 GETTABLEKS                       R12 R10 K30 ["name"]
      160 CALL                             R11 1 1
      161 JUMPIFNOTEQ                      R11 R5 ; [+5]
      163 GETTABLEKS                       R11 R10 K19 ["id"]
      165 LOADNIL                          R12
      166 RETURN                           R11 2
      167 FORGLOOP                         R6 2 ; [-12]
      169 LOADNIL                          R6
      170 DUPTABLE                         R7 K21 [{["status"] = "error", ["error"], ["groups"], ["nextSteps"]}]
      171 LOADK                            R9 K31 ["groupName \"%*\" did not match any of your groups."]
      172 MOVE                             R11 R4
      173 NAMECALL                         R9 R9 K13 ["format"]
      175 CALL                             R9 2 1
      176 MOVE                             R8 R9
      177 SETTABLEKS                       R8 R7 K5 ["error"]
      179 SETTABLEKS                       R2 R7 K20 ["groups"]
      181 NEWTABLE                         R8 0 1
      183 LOADK                            R9 K32 ["Use one of the listed group names exactly, or pass a numeric groupId."]
      184 SETLIST                          R8 R9 1 [1]
      186 SETTABLEKS                       R8 R7 K7 ["nextSteps"]
      188 RETURN                           R6 2

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postRbxApi"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_23:
        0 DUPTABLE                         R1 K9 [{[1], ["maxPageSize"], ["sortCategory"] = "Relevance", ["sortDirection"] = "None", ["searchView"] = "Full", ["includeOnlyVerifiedCreators"]}]
        1 GETTABLEKS                       R2 R0 K10 ["keyword"]
        3 SETTABLEKS                       R2 R1 K0 ["query"]
        5 GETTABLEKS                       R3 R0 K12 ["limit"]
        7 ORK                              R2 R3 K11 [10]
        8 SETTABLEKS                       R2 R1 K1 ["maxPageSize"]
       10 GETTABLEKS                       R3 R0 K8 ["includeOnlyVerifiedCreators"]
       12 ORK                              R2 R3 K13 [False]
       13 SETTABLEKS                       R2 R1 K8 ["includeOnlyVerifiedCreators"]
       15 GETTABLEKS                       R3 R0 K15 ["searchCategoryType"]
       17 ORK                              R2 R3 K14 ["Model"]
       18 SETTABLEKS                       R2 R1 K15 ["searchCategoryType"]
       20 GETTABLEKS                       R2 R0 K16 ["minPrice"]
       22 JUMPIFEQKNIL                     R2 ; [+5]
       24 GETTABLEKS                       R2 R0 K16 ["minPrice"]
       26 SETTABLEKS                       R2 R1 K17 ["minPriceCents"]
       28 GETTABLEKS                       R2 R0 K18 ["maxPrice"]
       30 JUMPIFEQKNIL                     R2 ; [+5]
       32 GETTABLEKS                       R2 R0 K18 ["maxPrice"]
       34 SETTABLEKS                       R2 R1 K19 ["maxPriceCents"]
       36 GETTABLEKS                       R2 R0 K20 ["facets"]
       38 JUMPIFEQKNIL                     R2 ; [+5]
       40 GETTABLEKS                       R2 R0 K20 ["facets"]
       42 SETTABLEKS                       R2 R1 K20 ["facets"]
       44 GETTABLEKS                       R2 R0 K21 ["tags"]
       46 JUMPIFEQKNIL                     R2 ; [+5]
       48 GETTABLEKS                       R2 R0 K21 ["tags"]
       50 SETTABLEKS                       R2 R1 K21 ["tags"]
       52 GETTABLEKS                       R2 R0 K22 ["isPackageFilter"]
       54 JUMPIFNOT                        R2 ; [+10]
       55 DUPTABLE                         R2 K24 [{"includedSubTypes"}]
       56 NEWTABLE                         R3 0 1
       58 LOADK                            R4 K25 ["Package"]
       59 SETLIST                          R3 R4 1 [1]
       61 SETTABLEKS                       R3 R2 K23 ["includedSubTypes"]
       63 SETTABLEKS                       R2 R1 K26 ["modelSearchFilters"]
       65 GETTABLEKS                       R2 R1 K15 ["searchCategoryType"]
       67 JUMPIFNOTEQKS                    R2 K27 ["Audio"] ; [+31]
       69 GETTABLEKS                       R2 R0 K28 ["minDuration"]
       71 JUMPIFNOTEQKNIL                  R2 ; [+5]
       73 GETTABLEKS                       R2 R0 K29 ["maxDuration"]
       75 JUMPIFEQKNIL                     R2 ; [+23]
       77 NEWTABLE                         R2 0 0
       79 SETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
       81 GETTABLEKS                       R2 R0 K28 ["minDuration"]
       83 JUMPIFNOT                        R2 ; [+6]
       84 GETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
       86 GETTABLEKS                       R3 R0 K28 ["minDuration"]
       88 SETTABLEKS                       R3 R2 K31 ["minDurationSeconds"]
       90 GETTABLEKS                       R2 R0 K29 ["maxDuration"]
       92 JUMPIFNOT                        R2 ; [+6]
       93 GETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
       95 GETTABLEKS                       R3 R0 K29 ["maxDuration"]
       97 SETTABLEKS                       R3 R2 K32 ["maxDurationSeconds"]
       99 GETUPVAL                         R3 0
      100 GETTABLEKS                       R3 R3 K33 ["APIS_URL"]
      102 LOADK                            R4 K34 ["toolbox-service/v2/assets:search"]
      103 CONCAT                           R2 R3 R4
      104 GETUPVAL                         R3 1
      105 MOVE                             R5 R1
      106 NAMECALL                         R3 R3 K35 ["JSONEncode"]
      108 CALL                             R3 2 1
      109 GETUPVAL                         R4 2
      110 LOADK                            R6 K36 ["[AssetSearchTool] fetchCreatorStoreAssets: URL=%*"]
      111 MOVE                             R8 R2
      112 NAMECALL                         R6 R6 K37 ["format"]
      114 CALL                             R6 2 1
      115 MOVE                             R5 R6
      116 CALL                             R4 1 0
      117 GETUPVAL                         R4 2
      118 LOADK                            R6 K38 ["[AssetSearchTool] fetchCreatorStoreAssets: body=%*"]
      119 MOVE                             R8 R3
      120 NAMECALL                         R6 R6 K37 ["format"]
      122 CALL                             R6 2 1
      123 MOVE                             R5 R6
      124 CALL                             R4 1 0
      125 GETIMPORT                        R4 K40 [pcall]
      127 NEWCLOSURE                       R5 P0
      128 CAPTURE                          UPVAL U3
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R3
      131 CALL                             R4 1 2
      132 JUMPIF                           R4 ; [+17]
      133 GETUPVAL                         R6 2
      134 LOADK                            R8 K41 ["[AssetSearchTool] fetchCreatorStoreAssets: FAILED error=%*"]
      135 FASTCALL1                        TOSTRING R5 ; [+3]
      136 MOVE                             R11 R5
      137 GETIMPORT                        R10 K43 [tostring]
      139 CALL                             R10 1 1
      140 NAMECALL                         R8 R8 K37 ["format"]
      142 CALL                             R8 2 1
      143 MOVE                             R7 R8
      144 CALL                             R6 1 0
      145 NEWTABLE                         R6 0 0
      147 NEWTABLE                         R7 0 0
      149 RETURN                           R6 2
      150 GETUPVAL                         R6 2
      151 LOADK                            R8 K44 ["[AssetSearchTool] fetchCreatorStoreAssets: SUCCESS bodyLen=%*"]
      152 LENGTH                           R10 R5
      153 NAMECALL                         R8 R8 K37 ["format"]
      155 CALL                             R8 2 1
      156 MOVE                             R7 R8
      157 CALL                             R6 1 0
      158 GETUPVAL                         R6 2
      159 LOADK                            R8 K45 ["[AssetSearchTool] fetchCreatorStoreAssets: preview=%*"]
      160 LOADN                            R12 1
      161 LOADN                            R13 300
      162 FASTCALL3                        STRING_SUB R5 R12 R13
      164 MOVE                             R11 R5
      165 GETIMPORT                        R10 K48 [string.sub]
      167 CALL                             R10 3 1
      168 NAMECALL                         R8 R8 K37 ["format"]
      170 CALL                             R8 2 1
      171 MOVE                             R7 R8
      172 CALL                             R6 1 0
      173 GETIMPORT                        R6 K40 [pcall]
      175 NEWCLOSURE                       R7 P1
      176 CAPTURE                          UPVAL U1
      177 CAPTURE                          VAL R5
      178 CALL                             R6 1 2
      179 JUMPIFNOT                        R6 ; [+1]
      180 JUMPIF                           R7 ; [+5]
      181 NEWTABLE                         R8 0 0
      183 NEWTABLE                         R9 0 0
      185 RETURN                           R8 2
      186 NEWTABLE                         R8 0 0
      188 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      190 JUMPIFNOT                        R9 ; [+9]
      191 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      193 GETTABLEKS                       R9 R9 K50 ["availableFacets"]
      195 JUMPIFNOT                        R9 ; [+4]
      196 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      198 GETTABLEKS                       R8 R9 K50 ["availableFacets"]
      200 NEWTABLE                         R9 0 0
      202 GETTABLEKS                       R10 R7 K51 ["creatorStoreAssets"]
      204 JUMPIF                           R10 ; [+2]
      205 NEWTABLE                         R10 0 0
      207 LOADNIL                          R11
      208 LOADNIL                          R12
      209 FORGPREP                         R10
      210 GETTABLEKS                       R15 R14 K52 ["asset"]
      212 GETTABLEKS                       R16 R14 K53 ["creator"]
      214 JUMPIF                           R16 ; [+2]
      215 NEWTABLE                         R16 0 0
      217 GETTABLEKS                       R17 R14 K54 ["creatorStoreProduct"]
      219 LOADNIL                          R18
      220 LOADN                            R19 0
      221 JUMPIFNOT                        R17 ; [+68]
      222 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      224 JUMPIFNOT                        R20 ; [+65]
      225 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      227 GETTABLEKS                       R20 R20 K56 ["quantity"]
      229 JUMPIFNOT                        R20 ; [+60]
      230 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      232 GETTABLEKS                       R21 R20 K56 ["quantity"]
      234 GETTABLEKS                       R23 R21 K58 ["significand"]
      236 ORK                              R22 R23 K57 [0]
      237 GETTABLEKS                       R24 R21 K59 ["exponent"]
      239 ORK                              R23 R24 K57 [0]
      240 LOADN                            R24 0
      241 JUMPIFNOTLT                      R24 R22 ; [+48]
      243 LOADN                            R26 10
      244 POW                              R25 R26 R23
      245 MUL                              R24 R22 R25
      246 MULK                             R27 R24 K61 [100]
      247 ADDK                             R26 R27 K60 [0.5]
      248 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      249 GETIMPORT                        R25 K64 [math.floor]
      251 CALL                             R25 1 1
      252 MOVE                             R19 R25
      253 GETTABLEKS                       R26 R20 K66 ["currencyCode"]
      255 ORK                              R25 R26 K65 ["USD"]
      256 JUMPIFNOTEQKS                    R25 K65 ["USD"] ; [+8]
      258 GETIMPORT                        R26 K67 [string.format]
      260 LOADK                            R27 K68 ["$%.2f"]
      261 MOVE                             R28 R24
      262 CALL                             R26 2 1
      263 MOVE                             R18 R26
      264 JUMP                             ; [+25]
      265 JUMPIFNOTEQKS                    R25 K69 ["GBP"] ; [+8]
      267 GETIMPORT                        R26 K67 [string.format]
      269 LOADK                            R27 K70 ["£%.2f"]
      270 MOVE                             R28 R24
      271 CALL                             R26 2 1
      272 MOVE                             R18 R26
      273 JUMP                             ; [+16]
      274 JUMPIFNOTEQKS                    R25 K71 ["EUR"] ; [+8]
      276 GETIMPORT                        R26 K67 [string.format]
      278 LOADK                            R27 K72 ["€%.2f"]
      279 MOVE                             R28 R24
      280 CALL                             R26 2 1
      281 MOVE                             R18 R26
      282 JUMP                             ; [+7]
      283 GETIMPORT                        R26 K67 [string.format]
      285 LOADK                            R27 K73 ["%s %.2f"]
      286 MOVE                             R28 R25
      287 MOVE                             R29 R24
      288 CALL                             R26 3 1
      289 MOVE                             R18 R26
      290 GETUPVAL                         R20 2
      291 LOADK                            R22 K74 ["[AssetSearchTool] fetchCreatorStoreAssets: asset %* \"%*\" priceCents=%* priceLabel=%*"]
      292 JUMPIFNOT                        R15 ; [+3]
      293 GETTABLEKS                       R24 R15 K75 ["id"]
      295 JUMPIF                           R24 ; [+1]
      296 LOADK                            R24 K76 ["?"]
      297 JUMPIFNOT                        R15 ; [+3]
      298 GETTABLEKS                       R25 R15 K77 ["name"]
      300 JUMPIF                           R25 ; [+1]
      301 LOADK                            R25 K76 ["?"]
      302 MOVE                             R26 R19
      303 ORK                              R27 R18 K78 ["free"]
      304 NAMECALL                         R22 R22 K37 ["format"]
      306 CALL                             R22 5 1
      307 MOVE                             R21 R22
      308 CALL                             R20 1 0
      309 JUMPIFNOT                        R15 ; [+3]
      310 GETTABLEKS                       R20 R15 K79 ["subTypes"]
      312 JUMPIF                           R20 ; [+2]
      313 NEWTABLE                         R20 0 0
      315 GETUPVAL                         R21 4
      316 GETTABLEKS                       R21 R21 K80 ["isPackageAsset"]
      318 LOADNIL                          R22
      319 MOVE                             R23 R20
      320 CALL                             R21 2 1
      321 JUMPIFNOT                        R21 ; [+2]
      322 LOADK                            R22 K25 ["Package"]
      323 JUMP                             ; [+7]
      324 GETUPVAL                         R24 5
      325 MOVE                             R25 R15
      326 JUMPIFNOT                        R25 ; [+2]
      327 GETTABLEKS                       R25 R15 K81 ["assetTypeId"]
      329 GETTABLE                         R23 R24 R25
      330 ORK                              R22 R23 K14 ["Model"]
      331 DUPTABLE                         R25 K84 [{"Asset", "Creator"}]
      332 DUPTABLE                         R26 K93 [{"Id", "Name", "Description", "TypeId", "TypeName", "Price", "PriceLabel", "SubTypes"}]
      333 MOVE                             R27 R15
      334 JUMPIFNOT                        R27 ; [+2]
      335 GETTABLEKS                       R27 R15 K75 ["id"]
      337 SETTABLEKS                       R27 R26 K85 ["Id"]
      339 JUMPIFNOT                        R15 ; [+3]
      340 GETTABLEKS                       R27 R15 K77 ["name"]
      342 JUMPIF                           R27 ; [+1]
      343 LOADK                            R27 K94 ["Unknown"]
      344 SETTABLEKS                       R27 R26 K86 ["Name"]
      346 JUMPIFNOT                        R15 ; [+3]
      347 GETTABLEKS                       R27 R15 K95 ["description"]
      349 JUMPIF                           R27 ; [+1]
      350 LOADNIL                          R27
      351 SETTABLEKS                       R27 R26 K87 ["Description"]
      353 JUMPIFNOT                        R15 ; [+3]
      354 GETTABLEKS                       R27 R15 K81 ["assetTypeId"]
      356 JUMPIF                           R27 ; [+1]
      357 LOADN                            R27 10
      358 SETTABLEKS                       R27 R26 K88 ["TypeId"]
      360 SETTABLEKS                       R22 R26 K89 ["TypeName"]
      362 SETTABLEKS                       R19 R26 K90 ["Price"]
      364 SETTABLEKS                       R18 R26 K91 ["PriceLabel"]
      366 SETTABLEKS                       R20 R26 K92 ["SubTypes"]
      368 SETTABLEKS                       R26 R25 K82 ["Asset"]
      370 DUPTABLE                         R26 K97 [{"Name", "Id", "IsVerifiedCreator"}]
      371 GETTABLEKS                       R28 R16 K77 ["name"]
      373 ORK                              R27 R28 K94 ["Unknown"]
      374 SETTABLEKS                       R27 R26 K86 ["Name"]
      376 GETTABLEKS                       R27 R16 K98 ["userId"]
      378 SETTABLEKS                       R27 R26 K85 ["Id"]
      380 GETTABLEKS                       R28 R16 K99 ["verified"]
      382 ORK                              R27 R28 K13 [False]
      383 SETTABLEKS                       R27 R26 K96 ["IsVerifiedCreator"]
      385 SETTABLEKS                       R26 R25 K83 ["Creator"]
      387 FASTCALL2                        TABLE_INSERT R9 R25 ; [+4]
      389 MOVE                             R24 R9
      390 GETIMPORT                        R23 K102 [table.insert]
      392 CALL                             R23 2 0
      393 FORGLOOP                         R10 2 ; [-184]
      395 GETUPVAL                         R10 2
      396 LOADK                            R12 K103 ["[AssetSearchTool] fetchCreatorStoreAssets: parsed %* results, %* available facets"]
      397 LENGTH                           R14 R9
      398 LENGTH                           R15 R8
      399 NAMECALL                         R12 R12 K37 ["format"]
      401 CALL                             R12 3 1
      402 MOVE                             R11 R12
      403 CALL                             R10 1 0
      404 MOVE                             R10 R9
      405 MOVE                             R11 R8
      406 RETURN                           R10 2

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["[AssetSearchTool] parseMarketplace: bodyLen=%* preview=%*"]
        2 LENGTH                           R5 R0
        3 LOADN                            R8 1
        4 LOADN                            R9 200
        5 FASTCALL3                        STRING_SUB R0 R8 R9
        7 MOVE                             R7 R0
        8 GETIMPORT                        R6 K3 [string.sub]
       10 CALL                             R6 3 1
       11 NAMECALL                         R3 R3 K4 ["format"]
       13 CALL                             R3 3 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K6 [pcall]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CALL                             R1 1 2
       22 JUMPIFNOT                        R1 ; [+1]
       23 JUMPIF                           R2 ; [+17]
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K7 ["[AssetSearchTool] parseMarketplace: JSON parse FAILED: parseOk=%*"]
       26 FASTCALL1                        TOSTRING R1 ; [+3]
       27 MOVE                             R8 R1
       28 GETIMPORT                        R7 K9 [tostring]
       30 CALL                             R7 1 1
       31 NAMECALL                         R5 R5 K4 ["format"]
       33 CALL                             R5 2 1
       34 MOVE                             R4 R5
       35 CALL                             R3 1 0
       36 NEWTABLE                         R3 0 0
       38 NEWTABLE                         R4 0 0
       40 RETURN                           R3 2
       41 GETTABLEKS                       R3 R2 K10 ["success"]
       43 JUMPIFNOTEQKB                    R3 FALSE ; [+16]
       45 GETUPVAL                         R3 0
       46 LOADK                            R5 K11 ["[AssetSearchTool] parseMarketplace: error: %*"]
       47 GETTABLEKS                       R8 R2 K13 ["error"]
       49 ORK                              R7 R8 K12 ["unknown"]
       50 NAMECALL                         R5 R5 K4 ["format"]
       52 CALL                             R5 2 1
       53 MOVE                             R4 R5
       54 CALL                             R3 1 0
       55 NEWTABLE                         R3 0 0
       57 NEWTABLE                         R4 0 0
       59 RETURN                           R3 2
       60 GETTABLEKS                       R3 R2 K14 ["AvailableFacets"]
       62 JUMPIF                           R3 ; [+2]
       63 NEWTABLE                         R3 0 0
       65 NEWTABLE                         R4 0 0
       67 GETTABLEKS                       R5 R2 K15 ["Results"]
       69 JUMPIF                           R5 ; [+5]
       70 GETTABLEKS                       R5 R2 K16 ["data"]
       72 JUMPIF                           R5 ; [+2]
       73 NEWTABLE                         R5 0 0
       75 GETUPVAL                         R6 0
       76 LOADK                            R8 K17 ["[AssetSearchTool] parseMarketplace: found %* raw items (Results=%*, data=%*)"]
       77 LENGTH                           R10 R5
       78 GETTABLEKS                       R12 R2 K15 ["Results"]
       80 JUMPIFNOT                        R12 ; [+4]
       81 GETTABLEKS                       R12 R2 K15 ["Results"]
       83 LENGTH                           R11 R12
       84 JUMPIF                           R11 ; [+1]
       85 LOADK                            R11 K18 ["nil"]
       86 GETTABLEKS                       R13 R2 K16 ["data"]
       88 JUMPIFNOT                        R13 ; [+4]
       89 GETTABLEKS                       R13 R2 K16 ["data"]
       91 LENGTH                           R12 R13
       92 JUMPIF                           R12 ; [+1]
       93 LOADK                            R12 K18 ["nil"]
       94 NAMECALL                         R8 R8 K4 ["format"]
       96 CALL                             R8 4 1
       97 MOVE                             R7 R8
       98 CALL                             R6 1 0
       99 MOVE                             R6 R5
      100 LOADNIL                          R7
      101 LOADNIL                          R8
      102 FORGPREP                         R6
      103 GETTABLEKS                       R11 R10 K19 ["Asset"]
      105 JUMPIF                           R11 ; [+4]
      106 GETTABLEKS                       R11 R10 K20 ["asset"]
      108 JUMPIF                           R11 ; [+1]
      109 MOVE                             R11 R10
      110 GETTABLEKS                       R12 R10 K21 ["Creator"]
      112 JUMPIF                           R12 ; [+5]
      113 GETTABLEKS                       R12 R10 K22 ["creator"]
      115 JUMPIF                           R12 ; [+2]
      116 NEWTABLE                         R12 0 0
      118 JUMPIFNOT                        R11 ; [+64]
      119 GETTABLEKS                       R13 R11 K23 ["Id"]
      121 JUMPIFNOT                        R13 ; [+61]
      122 GETTABLEKS                       R14 R11 K25 ["TypeName"]
      124 ORK                              R13 R14 K24 ["Unknown"]
      125 DUPTABLE                         R16 K37 [{["assetId"], ["name"], ["description"], ["assetType"], ["source"], ["location"] = , ["creatorName"], ["priceCents"], ["priceLabel"], ["isFree"]}]
      126 GETTABLEKS                       R18 R11 K23 ["Id"]
      128 FASTCALL1                        TOSTRING R18 ; [+2]
      129 GETIMPORT                        R17 K9 [tostring]
      131 CALL                             R17 1 1
      132 SETTABLEKS                       R17 R16 K26 ["assetId"]
      134 GETTABLEKS                       R18 R11 K38 ["Name"]
      136 ORK                              R17 R18 K24 ["Unknown"]
      137 SETTABLEKS                       R17 R16 K27 ["name"]
      139 GETTABLEKS                       R17 R11 K39 ["Description"]
      141 SETTABLEKS                       R17 R16 K28 ["description"]
      143 SETTABLEKS                       R13 R16 K29 ["assetType"]
      145 GETUPVAL                         R17 2
      146 GETTABLEKS                       R17 R17 K40 ["CreatorStore"]
      148 SETTABLEKS                       R17 R16 K30 ["source"]
      150 GETTABLEKS                       R17 R12 K38 ["Name"]
      152 JUMPIF                           R17 ; [+4]
      153 GETTABLEKS                       R17 R12 K27 ["name"]
      155 JUMPIF                           R17 ; [+1]
      156 LOADNIL                          R17
      157 SETTABLEKS                       R17 R16 K33 ["creatorName"]
      159 GETTABLEKS                       R18 R11 K42 ["Price"]
      161 ORK                              R17 R18 K41 [0]
      162 SETTABLEKS                       R17 R16 K34 ["priceCents"]
      164 GETTABLEKS                       R17 R11 K43 ["PriceLabel"]
      166 SETTABLEKS                       R17 R16 K35 ["priceLabel"]
      168 GETTABLEKS                       R19 R11 K42 ["Price"]
      170 ORK                              R18 R19 K41 [0]
      171 JUMPIFEQKN                       R18 K41 [0] ; [+2]
      173 LOADB                            R17 0 +1
      174 LOADB                            R17 1
      175 SETTABLEKS                       R17 R16 K36 ["isFree"]
      177 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      179 MOVE                             R15 R4
      180 GETIMPORT                        R14 K46 [table.insert]
      182 CALL                             R14 2 0
      183 FORGLOOP                         R6 2 ; [-81]
      185 MOVE                             R6 R4
      186 MOVE                             R7 R3
      187 RETURN                           R6 2

PROTO_26:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R3 0
        2 LOADK                            R4 K0 ["[AssetSearchTool] parseInventory: nil response"]
        3 CALL                             R3 1 0
        4 NEWTABLE                         R3 0 0
        6 RETURN                           R3 1
        7 GETTABLEKS                       R3 R0 K1 ["success"]
        9 JUMPIFNOTEQKB                    R3 FALSE ; [+14]
       11 GETUPVAL                         R3 0
       12 LOADK                            R5 K2 ["[AssetSearchTool] parseInventory: error: %*"]
       13 GETTABLEKS                       R8 R0 K4 ["error"]
       15 ORK                              R7 R8 K3 ["unknown"]
       16 NAMECALL                         R5 R5 K5 ["format"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 CALL                             R3 1 0
       21 NEWTABLE                         R3 0 0
       23 RETURN                           R3 1
       24 NEWTABLE                         R3 0 0
       26 GETTABLEKS                       R4 R0 K6 ["items"]
       28 JUMPIF                           R4 ; [+5]
       29 GETTABLEKS                       R4 R0 K7 ["creatorInventoryItems"]
       31 JUMPIF                           R4 ; [+2]
       32 NEWTABLE                         R4 0 0
       34 GETUPVAL                         R5 0
       35 LOADK                            R7 K8 ["[AssetSearchTool] parseInventory: found %* raw items"]
       36 LENGTH                           R9 R4
       37 NAMECALL                         R7 R7 K5 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 CALL                             R5 1 0
       42 MOVE                             R5 R4
       43 LOADNIL                          R6
       44 LOADNIL                          R7
       45 FORGPREP                         R5
       46 GETTABLEKS                       R11 R9 K9 ["assetItem"]
       48 OR                               R10 R11 R9
       49 GETTABLEKS                       R12 R10 K10 ["asset"]
       51 OR                               R11 R12 R10
       52 JUMPIFNOT                        R11 ; [+198]
       53 GETTABLEKS                       R12 R11 K11 ["assetId"]
       55 JUMPIF                           R12 ; [+3]
       56 GETTABLEKS                       R12 R11 K12 ["id"]
       58 JUMPIFNOT                        R12 ; [+192]
       59 GETTABLEKS                       R13 R11 K11 ["assetId"]
       61 JUMPIF                           R13 ; [+2]
       62 GETTABLEKS                       R13 R11 K12 ["id"]
       64 FASTCALL1                        TOSTRING R13 ; [+2]
       65 GETIMPORT                        R12 K14 [tostring]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R13 R11 K15 ["assetType"]
       70 JUMPIF                           R13 ; [+4]
       71 GETTABLEKS                       R13 R11 K16 ["type"]
       73 JUMPIF                           R13 ; [+1]
       74 LOADK                            R13 K17 ["Unknown"]
       75 GETUPVAL                         R16 1
       76 GETTABLE                         R15 R16 R13
       77 OR                               R14 R15 R13
       78 LOADB                            R15 1
       79 GETTABLEKS                       R16 R10 K18 ["isPackage"]
       81 JUMPIFEQKB                       R16 TRUE ; [+11]
       83 GETUPVAL                         R15 2
       84 GETTABLEKS                       R15 R15 K19 ["isPackageAsset"]
       86 LOADNIL                          R16
       87 GETTABLEKS                       R17 R11 K20 ["assetSubTypes"]
       89 JUMPIF                           R17 ; [+2]
       90 GETTABLEKS                       R17 R11 K21 ["subTypes"]
       92 CALL                             R15 2 1
       93 JUMPIFNOT                        R15 ; [+1]
       94 GETUPVAL                         R14 3
       95 LOADNIL                          R16
       96 LOADNIL                          R17
       97 GETTABLEKS                       R18 R11 K22 ["creationContext"]
       99 FASTCALL1                        TYPE R18 ; [+3]
      100 MOVE                             R20 R18
      101 GETIMPORT                        R19 K23 [type]
      103 CALL                             R19 1 1
      104 JUMPIFNOTEQKS                    R19 K24 ["table"] ; [+94]
      106 GETTABLEKS                       R19 R18 K25 ["group"]
      108 GETTABLEKS                       R20 R18 K26 ["user"]
      110 GETTABLEKS                       R23 R18 K27 ["creator"]
      112 FASTCALL1                        TYPE R23 ; [+2]
      113 GETIMPORT                        R22 K23 [type]
      115 CALL                             R22 1 1
      116 JUMPIFNOTEQKS                    R22 K24 ["table"] ; [+4]
      118 GETTABLEKS                       R21 R18 K27 ["creator"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R21
      122 JUMPIFEQKNIL                     R19 ; [+8]
      124 FASTCALL1                        TOSTRING R19 ; [+3]
      125 MOVE                             R23 R19
      126 GETIMPORT                        R22 K14 [tostring]
      128 CALL                             R22 1 1
      129 MOVE                             R16 R22
      130 JUMP                             ; [+33]
      131 JUMPIFEQKNIL                     R20 ; [+8]
      133 FASTCALL1                        TOSTRING R20 ; [+3]
      134 MOVE                             R23 R20
      135 GETIMPORT                        R22 K14 [tostring]
      137 CALL                             R22 1 1
      138 MOVE                             R16 R22
      139 JUMP                             ; [+24]
      140 JUMPIFNOT                        R21 ; [+23]
      141 GETTABLEKS                       R22 R21 K28 ["groupId"]
      143 JUMPIFEQKNIL                     R22 ; [+9]
      145 GETTABLEKS                       R23 R21 K28 ["groupId"]
      147 FASTCALL1                        TOSTRING R23 ; [+2]
      148 GETIMPORT                        R22 K14 [tostring]
      150 CALL                             R22 1 1
      151 MOVE                             R16 R22
      152 JUMP                             ; [+11]
      153 GETTABLEKS                       R22 R21 K29 ["userId"]
      155 JUMPIFEQKNIL                     R22 ; [+8]
      157 GETTABLEKS                       R23 R21 K29 ["userId"]
      159 FASTCALL1                        TOSTRING R23 ; [+2]
      160 GETIMPORT                        R22 K14 [tostring]
      162 CALL                             R22 1 1
      163 MOVE                             R16 R22
      164 GETTABLEKS                       R22 R18 K30 ["name"]
      166 JUMPIF                           R22 ; [+4]
      167 MOVE                             R22 R21
      168 JUMPIFNOT                        R22 ; [+2]
      169 GETTABLEKS                       R22 R21 K30 ["name"]
      171 MOVE                             R17 R22
      172 JUMPIF                           R17 ; [+11]
      173 JUMPIFNOT                        R16 ; [+10]
      174 JUMPIFEQKNIL                     R19 ; [+9]
      176 JUMPIFNOT                        R2 ; [+7]
      177 FASTCALL1                        TONUMBER R16 ; [+3]
      178 MOVE                             R23 R16
      179 GETIMPORT                        R22 K32 [tonumber]
      181 CALL                             R22 1 1
      182 JUMPIFNOT                        R22 ; [+1]
      183 GETTABLE                         R17 R2 R22
      184 JUMPIF                           R17 ; [+14]
      185 JUMPIFNOT                        R21 ; [+13]
      186 GETTABLEKS                       R22 R21 K28 ["groupId"]
      188 JUMPIFEQKNIL                     R22 ; [+10]
      190 JUMPIFNOT                        R2 ; [+8]
      191 GETTABLEKS                       R23 R21 K28 ["groupId"]
      193 FASTCALL1                        TONUMBER R23 ; [+2]
      194 GETIMPORT                        R22 K32 [tonumber]
      196 CALL                             R22 1 1
      197 JUMPIFNOT                        R22 ; [+1]
      198 GETTABLE                         R17 R2 R22
      199 GETUPVAL                         R19 0
      200 LOADK                            R21 K33 ["[AssetSearchTool] parseInventory item: id=%* name=\"%*\" type=%* isPackage=%* creatorId=%* creatorName=%*"]
      201 MOVE                             R23 R12
      202 GETTABLEKS                       R24 R11 K34 ["displayName"]
      204 JUMPIF                           R24 ; [+2]
      205 GETTABLEKS                       R24 R11 K30 ["name"]
      207 MOVE                             R25 R14
      208 FASTCALL1                        TOSTRING R15 ; [+3]
      209 MOVE                             R27 R15
      210 GETIMPORT                        R26 K14 [tostring]
      212 CALL                             R26 1 1
      213 ORK                              R27 R16 K35 ["nil"]
      214 ORK                              R28 R17 K35 ["nil"]
      215 NAMECALL                         R21 R21 K5 ["format"]
      217 CALL                             R21 7 1
      218 MOVE                             R20 R21
      219 CALL                             R19 1 0
      220 DUPTABLE                         R21 K46 [{["assetId"], ["name"], ["description"] = , ["assetType"], ["source"], ["location"], ["creatorName"], ["creatorId"], ["priceCents"] = 0, ["isFree"] = True}]
      221 SETTABLEKS                       R12 R21 K11 ["assetId"]
      223 GETTABLEKS                       R22 R11 K34 ["displayName"]
      225 JUMPIF                           R22 ; [+4]
      226 GETTABLEKS                       R22 R11 K30 ["name"]
      228 JUMPIF                           R22 ; [+1]
      229 LOADK                            R22 K17 ["Unknown"]
      230 SETTABLEKS                       R22 R21 K30 ["name"]
      232 SETTABLEKS                       R14 R21 K15 ["assetType"]
      234 GETUPVAL                         R22 4
      235 GETTABLEKS                       R22 R22 K47 ["Inventory"]
      237 SETTABLEKS                       R22 R21 K38 ["source"]
      239 SETTABLEKS                       R1 R21 K39 ["location"]
      241 SETTABLEKS                       R17 R21 K40 ["creatorName"]
      243 SETTABLEKS                       R16 R21 K41 ["creatorId"]
      245 FASTCALL2                        TABLE_INSERT R3 R21 ; [+4]
      247 MOVE                             R20 R3
      248 GETIMPORT                        R19 K49 [table.insert]
      250 CALL                             R19 2 0
      251 FORGLOOP                         R5 2 ; [-206]
      253 RETURN                           R3 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K11 [{"keyword", "searchCategoryType", "limit", "facets", "tags", "isPackageFilter", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["keyword"]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K1 ["searchCategoryType"]
        8 GETUPVAL                         R2 3
        9 SETTABLEKS                       R2 R1 K2 ["limit"]
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K3 ["facets"]
       14 SETTABLEKS                       R2 R1 K3 ["facets"]
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K4 ["tags"]
       19 SETTABLEKS                       R2 R1 K4 ["tags"]
       21 GETUPVAL                         R3 5
       22 GETUPVAL                         R4 6
       23 JUMPIFEQ                         R3 R4 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 SETTABLEKS                       R2 R1 K5 ["isPackageFilter"]
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K6 ["includeOnlyVerifiedCreators"]
       32 SETTABLEKS                       R2 R1 K6 ["includeOnlyVerifiedCreators"]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K7 ["minPrice"]
       37 SETTABLEKS                       R2 R1 K7 ["minPrice"]
       39 GETUPVAL                         R2 4
       40 GETTABLEKS                       R2 R2 K8 ["maxPrice"]
       42 SETTABLEKS                       R2 R1 K8 ["maxPrice"]
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R2 R2 K9 ["minDuration"]
       47 SETTABLEKS                       R2 R1 K9 ["minDuration"]
       49 GETUPVAL                         R2 4
       50 GETTABLEKS                       R2 R2 K10 ["maxDuration"]
       52 SETTABLEKS                       R2 R1 K10 ["maxDuration"]
       54 CALL                             R0 1 -1
       55 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFEQ                         R1 R2 ; [+2]
        4 RETURN                           R0 1
        5 NEWTABLE                         R1 0 0
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R7 R6 K0 ["assetType"]
       13 GETUPVAL                         R8 1
       14 JUMPIFNOTEQ                      R7 R8 ; [+8]
       16 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       18 MOVE                             R8 R1
       19 MOVE                             R9 R6
       20 GETIMPORT                        R7 K3 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-13]
       25 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["makeRequest"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["expect"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["makeRequest"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["expect"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_31:
        0 MOVE                             R6 R5
        1 JUMPIF                           R6 ; [+1]
        2 GETUPVAL                         R6 0
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R7 R7 K0 ["CreatorStore"]
        6 JUMPIFNOTEQ                      R0 R7 ; [+62]
        8 LOADNIL                          R7
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R9 2
       11 GETTABLE                         R8 R9 R2
       12 JUMPIFNOT                        R8 ; [+2]
       13 GETUPVAL                         R8 2
       14 GETTABLE                         R7 R8 R2
       15 LOADNIL                          R8
       16 LOADNIL                          R9
       17 LOADNIL                          R10
       18 GETIMPORT                        R11 K2 [pcall]
       20 NEWCLOSURE                       R12 P0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R1
       23 CAPTURE                          REF R7
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R6
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U4
       28 CALL                             R11 1 3
       29 MOVE                             R8 R11
       30 MOVE                             R9 R12
       31 MOVE                             R10 R13
       32 JUMPIF                           R8 ; [+18]
       33 GETUPVAL                         R11 5
       34 LOADK                            R13 K3 ["[AssetSearchTool] fetchCreatorStoreAssets threw: %*"]
       35 FASTCALL1                        TOSTRING R9 ; [+3]
       36 MOVE                             R16 R9
       37 GETIMPORT                        R15 K5 [tostring]
       39 CALL                             R15 1 1
       40 NAMECALL                         R13 R13 K6 ["format"]
       42 CALL                             R13 2 1
       43 MOVE                             R12 R13
       44 CALL                             R11 1 0
       45 NEWTABLE                         R11 0 0
       47 NEWTABLE                         R12 0 0
       49 CLOSEUPVALS                      R7
       50 RETURN                           R11 2
       51 GETUPVAL                         R11 6
       52 DUPTABLE                         R13 K10 [{"Results", "TotalResults", "AvailableFacets"}]
       53 SETTABLEKS                       R9 R13 K7 ["Results"]
       55 LENGTH                           R14 R9
       56 SETTABLEKS                       R14 R13 K8 ["TotalResults"]
       58 SETTABLEKS                       R10 R13 K9 ["AvailableFacets"]
       60 NAMECALL                         R11 R11 K11 ["JSONEncode"]
       62 CALL                             R11 2 1
       63 GETUPVAL                         R12 7
       64 MOVE                             R13 R11
       65 CALL                             R12 1 -1
       66 CLOSEUPVALS                      R7
       67 RETURN                           R12 -1
       68 CLOSEUPVALS                      R7
       69 GETUPVAL                         R8 8
       70 GETTABLE                         R7 R8 R0
       71 JUMPIF                           R7 ; [+5]
       72 NEWTABLE                         R8 0 0
       74 NEWTABLE                         R9 0 0
       76 RETURN                           R8 2
       77 LOADNIL                          R8
       78 JUMPIFNOT                        R2 ; [+5]
       79 GETUPVAL                         R10 9
       80 GETTABLE                         R9 R10 R2
       81 JUMPIFNOT                        R9 ; [+2]
       82 GETUPVAL                         R9 9
       83 GETTABLE                         R8 R9 R2
       84 MOVE                             R9 R8
       85 JUMPIF                           R9 ; [+1]
       86 GETUPVAL                         R9 10
       87 NEWCLOSURE                       R10 P1
       88 CAPTURE                          VAL R2
       89 CAPTURE                          UPVAL U4
       90 GETUPVAL                         R11 1
       91 GETTABLEKS                       R11 R11 K12 ["Group"]
       93 JUMPIFNOTEQ                      R0 R11 ; [+107]
       95 GETTABLEKS                       R11 R6 K13 ["effectiveGroupId"]
       97 JUMPIF                           R11 ; [+9]
       98 GETTABLEKS                       R11 R4 K14 ["groupId"]
      100 JUMPIFNOT                        R11 ; [+6]
      101 GETTABLEKS                       R12 R4 K14 ["groupId"]
      103 FASTCALL1                        TONUMBER R12 ; [+2]
      104 GETIMPORT                        R11 K16 [tonumber]
      106 CALL                             R11 1 1
      107 JUMPIF                           R11 ; [+5]
      108 NEWTABLE                         R12 0 0
      110 NEWTABLE                         R13 0 0
      112 RETURN                           R12 2
      113 NEWTABLE                         R12 0 0
      115 GETUPVAL                         R13 11
      116 MOVE                             R14 R4
      117 CALL                             R13 1 3
      118 FORGPREP                         R13
      119 GETTABLEKS                       R18 R17 K17 ["id"]
      121 GETTABLEKS                       R19 R17 K18 ["name"]
      123 SETTABLE                         R19 R12 R18
      124 FORGLOOP                         R13 2 ; [-6]
      126 GETUPVAL                         R13 12
      127 GETTABLEKS                       R13 R13 K19 ["searchCreatorInventory"]
      129 GETUPVAL                         R14 6
      130 MOVE                             R16 R1
      131 NAMECALL                         R14 R14 K20 ["UrlEncode"]
      133 CALL                             R14 2 1
      134 MOVE                             R15 R9
      135 DUPTABLE                         R16 K23 [{["Type"] = "Group", ["Id"]}]
      136 SETTABLEKS                       R11 R16 K22 ["Id"]
      138 MOVE                             R17 R3
      139 LOADK                            R18 K24 [""]
      140 CALL                             R13 5 1
      141 GETUPVAL                         R14 5
      142 LOADK                            R16 K25 ["[AssetSearchTool] group search: groupId=%* URL=%*"]
      143 MOVE                             R18 R11
      144 GETTABLEKS                       R19 R13 K26 ["getUrl"]
      146 CALL                             R19 0 1
      147 NAMECALL                         R16 R16 K6 ["format"]
      149 CALL                             R16 3 1
      150 MOVE                             R15 R16
      151 CALL                             R14 1 0
      152 GETIMPORT                        R14 K2 [pcall]
      154 NEWCLOSURE                       R15 P2
      155 CAPTURE                          VAL R13
      156 CALL                             R14 1 2
      157 JUMPIFNOT                        R14 ; [+4]
      158 JUMPIFNOT                        R15 ; [+3]
      159 GETTABLEKS                       R16 R15 K27 ["responseBody"]
      161 JUMPIF                           R16 ; [+17]
      162 GETUPVAL                         R16 5
      163 LOADK                            R18 K28 ["[AssetSearchTool] group search: FAILED: %*"]
      164 FASTCALL1                        TOSTRING R15 ; [+3]
      165 MOVE                             R21 R15
      166 GETIMPORT                        R20 K5 [tostring]
      168 CALL                             R20 1 1
      169 NAMECALL                         R18 R18 K6 ["format"]
      171 CALL                             R18 2 1
      172 MOVE                             R17 R18
      173 CALL                             R16 1 0
      174 NEWTABLE                         R16 0 0
      176 NEWTABLE                         R17 0 0
      178 RETURN                           R16 2
      179 GETUPVAL                         R16 13
      180 GETTABLEKS                       R17 R15 K27 ["responseBody"]
      182 GETUPVAL                         R18 1
      183 GETTABLEKS                       R18 R18 K12 ["Group"]
      185 MOVE                             R19 R12
      186 CALL                             R16 3 1
      187 GETUPVAL                         R17 5
      188 LOADK                            R19 K29 ["[AssetSearchTool] group search: got %* items"]
      189 LENGTH                           R21 R16
      190 NAMECALL                         R19 R19 K6 ["format"]
      192 CALL                             R19 2 1
      193 MOVE                             R18 R19
      194 CALL                             R17 1 0
      195 MOVE                             R17 R10
      196 MOVE                             R18 R16
      197 CALL                             R17 1 1
      198 NEWTABLE                         R18 0 0
      200 RETURN                           R17 2
      201 LOADNIL                          R11
      202 GETUPVAL                         R12 1
      203 GETTABLEKS                       R12 R12 K30 ["User"]
      205 JUMPIFNOTEQ                      R0 R12 ; [+4]
      207 GETTABLEKS                       R11 R4 K31 ["userId"]
      209 JUMP                             ; [+7]
      210 GETUPVAL                         R12 1
      211 GETTABLEKS                       R12 R12 K32 ["Universe"]
      213 JUMPIFNOTEQ                      R0 R12 ; [+3]
      215 GETTABLEKS                       R11 R4 K33 ["universeId"]
      217 JUMPIF                           R11 ; [+5]
      218 NEWTABLE                         R12 0 0
      220 NEWTABLE                         R13 0 0
      222 RETURN                           R12 2
      223 DUPTABLE                         R12 K34 [{"Type", "Id"}]
      224 GETUPVAL                         R14 14
      225 GETTABLE                         R13 R14 R7
      226 SETTABLEKS                       R13 R12 K21 ["Type"]
      228 FASTCALL1                        TONUMBER R11 ; [+3]
      229 MOVE                             R14 R11
      230 GETIMPORT                        R13 K16 [tonumber]
      232 CALL                             R13 1 1
      233 SETTABLEKS                       R13 R12 K22 ["Id"]
      235 GETUPVAL                         R13 12
      236 GETTABLEKS                       R13 R13 K19 ["searchCreatorInventory"]
      238 GETUPVAL                         R14 6
      239 MOVE                             R16 R1
      240 NAMECALL                         R14 R14 K20 ["UrlEncode"]
      242 CALL                             R14 2 1
      243 MOVE                             R15 R9
      244 MOVE                             R16 R12
      245 MOVE                             R17 R3
      246 LOADK                            R18 K24 [""]
      247 CALL                             R13 5 1
      248 GETUPVAL                         R14 5
      249 LOADK                            R16 K35 ["[AssetSearchTool] searchInventory: URL=%*"]
      250 GETTABLEKS                       R18 R13 K26 ["getUrl"]
      252 CALL                             R18 0 1
      253 NAMECALL                         R16 R16 K6 ["format"]
      255 CALL                             R16 2 1
      256 MOVE                             R15 R16
      257 CALL                             R14 1 0
      258 GETIMPORT                        R14 K2 [pcall]
      260 NEWCLOSURE                       R15 P3
      261 CAPTURE                          VAL R13
      262 CALL                             R14 1 2
      263 JUMPIF                           R14 ; [+17]
      264 GETUPVAL                         R16 5
      265 LOADK                            R18 K36 ["[AssetSearchTool] searchInventory: request FAILED: %*"]
      266 FASTCALL1                        TOSTRING R15 ; [+3]
      267 MOVE                             R21 R15
      268 GETIMPORT                        R20 K5 [tostring]
      270 CALL                             R20 1 1
      271 NAMECALL                         R18 R18 K6 ["format"]
      273 CALL                             R18 2 1
      274 MOVE                             R17 R18
      275 CALL                             R16 1 0
      276 NEWTABLE                         R16 0 0
      278 NEWTABLE                         R17 0 0
      280 RETURN                           R16 2
      281 GETUPVAL                         R16 5
      282 LOADK                            R17 K37 ["[AssetSearchTool] searchInventory: SUCCESS"]
      283 CALL                             R16 1 0
      284 GETUPVAL                         R16 13
      285 GETTABLEKS                       R17 R15 K27 ["responseBody"]
      287 MOVE                             R18 R0
      288 CALL                             R16 2 1
      289 MOVE                             R17 R10
      290 MOVE                             R18 R16
      291 CALL                             R17 1 1
      292 NEWTABLE                         R18 0 0
      294 RETURN                           R17 2

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["minPriceCents"]
        2 GETTABLEKS                       R2 R0 K1 ["maxPriceCents"]
        4 GETTABLEKS                       R3 R0 K2 ["priceFilter"]
        6 JUMPIFNOTEQKS                    R3 K3 ["free"] ; [+3]
        8 LOADN                            R2 0
        9 RETURN                           R1 2
       10 GETTABLEKS                       R3 R0 K2 ["priceFilter"]
       12 JUMPIFNOTEQKS                    R3 K4 ["paid"] ; [+2]
       14 ORK                              R1 R1 K5 [1]
       15 RETURN                           R1 2

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K5 [{"type", "mode", "query", "assetType"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K6 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K7 ["Modes"]
       13 GETTABLEKS                       R4 R4 K8 ["Searching"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["query"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["assetType"]
       23 SETTABLEKS                       R4 R3 K4 ["assetType"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K10 [{["type"], ["mode"], ["query"], ["assetType"], ["resultCount"] = 0, ["results"], ["expanded"] = True}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K11 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K12 ["Modes"]
       13 GETTABLEKS                       R4 R4 K13 ["Results"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["query"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["assetType"]
       23 SETTABLEKS                       R4 R3 K4 ["assetType"]
       25 NEWTABLE                         R4 0 0
       27 SETTABLEKS                       R4 R3 K7 ["results"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateWidget"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K10 [{["type"], ["mode"], ["query"], ["assetType"], ["resultCount"], ["results"], ["expanded"] = True, ["onItemClicked"]}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K11 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K12 ["Modes"]
       13 GETTABLEKS                       R4 R4 K13 ["Results"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["query"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["assetType"]
       23 SETTABLEKS                       R4 R3 K4 ["assetType"]
       25 GETUPVAL                         R5 4
       26 LENGTH                           R4 R5
       27 SETTABLEKS                       R4 R3 K5 ["resultCount"]
       29 GETUPVAL                         R4 5
       30 SETTABLEKS                       R4 R3 K6 ["results"]
       32 GETUPVAL                         R4 6
       33 SETTABLEKS                       R4 R3 K9 ["onItemClicked"]
       35 CALL                             R1 2 0
       36 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R4 R1 K1 ["query"]
        2 ORK                              R3 R4 K0 [""]
        3 GETTABLEKS                       R5 R1 K3 ["scope"]
        5 ORK                              R4 R5 K2 ["auto"]
        6 GETTABLEKS                       R7 R1 K5 ["maxResults"]
        8 ORK                              R6 R7 K4 [5]
        9 LOADN                            R7 1
       10 LOADN                            R8 20
       11 FASTCALL                         MATH_CLAMP ; [+2]
       12 GETIMPORT                        R5 K8 [math.clamp]
       14 CALL                             R5 3 1
       15 GETTABLEKS                       R6 R0 K9 ["initArgs"]
       17 GETTABLEKS                       R6 R6 K10 ["environment"]
       19 GETTABLEKS                       R7 R1 K11 ["includeSources"]
       21 JUMPIFNOT                        R7 ; [+8]
       22 GETTABLEKS                       R8 R1 K11 ["includeSources"]
       24 LENGTH                           R7 R8
       25 JUMPIFNOTEQKN                    R7 K12 [0] ; [+4]
       27 LOADNIL                          R7
       28 SETTABLEKS                       R7 R1 K11 ["includeSources"]
       30 GETTABLEKS                       R7 R1 K13 ["excludeSources"]
       32 JUMPIFNOT                        R7 ; [+8]
       33 GETTABLEKS                       R8 R1 K13 ["excludeSources"]
       35 LENGTH                           R7 R8
       36 JUMPIFNOTEQKN                    R7 K12 [0] ; [+4]
       38 LOADNIL                          R7
       39 SETTABLEKS                       R7 R1 K13 ["excludeSources"]
       41 GETTABLEKS                       R7 R1 K14 ["facets"]
       43 JUMPIFNOT                        R7 ; [+8]
       44 GETTABLEKS                       R8 R1 K14 ["facets"]
       46 LENGTH                           R7 R8
       47 JUMPIFNOTEQKN                    R7 K12 [0] ; [+4]
       49 LOADNIL                          R7
       50 SETTABLEKS                       R7 R1 K14 ["facets"]
       52 GETTABLEKS                       R7 R1 K15 ["tags"]
       54 JUMPIFNOT                        R7 ; [+8]
       55 GETTABLEKS                       R8 R1 K15 ["tags"]
       57 LENGTH                           R7 R8
       58 JUMPIFNOTEQKN                    R7 K12 [0] ; [+4]
       60 LOADNIL                          R7
       61 SETTABLEKS                       R7 R1 K15 ["tags"]
       63 GETUPVAL                         R7 0
       64 LOADK                            R9 K16 ["[AssetSearchTool] === SEARCH START === query=\"%*\" scope=%* maxResults=%* assetType=%*"]
       65 MOVE                             R11 R3
       66 MOVE                             R12 R4
       67 MOVE                             R13 R5
       68 GETTABLEKS                       R15 R1 K18 ["assetType"]
       70 ORK                              R14 R15 K17 ["nil"]
       71 NAMECALL                         R9 R9 K19 ["format"]
       73 CALL                             R9 5 1
       74 MOVE                             R8 R9
       75 CALL                             R7 1 0
       76 GETUPVAL                         R8 1
       77 GETTABLE                         R7 R8 R4
       78 JUMPIF                           R7 ; [+21]
       79 GETUPVAL                         R7 2
       80 DUPTABLE                         R9 K23 [{["status"] = "error", ["error"], ["nextSteps"]}]
       81 LOADK                            R11 K24 ["Invalid scope: \"%*\". Must be one of: auto, creator_store, user, group, universe"]
       82 MOVE                             R13 R4
       83 NAMECALL                         R11 R11 K19 ["format"]
       85 CALL                             R11 2 1
       86 MOVE                             R10 R11
       87 SETTABLEKS                       R10 R9 K21 ["error"]
       89 NEWTABLE                         R10 0 1
       91 LOADK                            R11 K25 ["Use one of the valid scope values: auto, creator_store, user, group, universe"]
       92 SETLIST                          R10 R11 1 [1]
       94 SETTABLEKS                       R10 R9 K22 ["nextSteps"]
       96 NAMECALL                         R7 R7 K26 ["JSONEncode"]
       98 CALL                             R7 2 -1
       99 RETURN                           R7 -1
      100 GETTABLEKS                       R7 R1 K11 ["includeSources"]
      102 JUMPIFNOT                        R7 ; [+16]
      103 GETTABLEKS                       R7 R1 K13 ["excludeSources"]
      105 JUMPIFNOT                        R7 ; [+13]
      106 GETUPVAL                         R7 2
      107 DUPTABLE                         R9 K28 [{["status"] = "error", ["error"] = "Cannot provide both includeSources and excludeSources", ["nextSteps"]}]
      108 NEWTABLE                         R10 0 1
      110 LOADK                            R11 K29 ["Use either includeSources OR excludeSources, not both"]
      111 SETLIST                          R10 R11 1 [1]
      113 SETTABLEKS                       R10 R9 K22 ["nextSteps"]
      115 NAMECALL                         R7 R7 K26 ["JSONEncode"]
      117 CALL                             R7 2 -1
      118 RETURN                           R7 -1
      119 JUMPIFEQKS                       R4 K2 ["auto"] ; [+28]
      121 GETTABLEKS                       R7 R1 K11 ["includeSources"]
      123 JUMPIF                           R7 ; [+3]
      124 GETTABLEKS                       R7 R1 K13 ["excludeSources"]
      126 JUMPIFNOT                        R7 ; [+21]
      127 GETUPVAL                         R7 2
      128 DUPTABLE                         R9 K23 [{["status"] = "error", ["error"], ["nextSteps"]}]
      129 LOADK                            R11 K30 ["includeSources and excludeSources only apply when scope is \"auto\", but scope is \"%*\""]
      130 MOVE                             R13 R4
      131 NAMECALL                         R11 R11 K19 ["format"]
      133 CALL                             R11 2 1
      134 MOVE                             R10 R11
      135 SETTABLEKS                       R10 R9 K21 ["error"]
      137 NEWTABLE                         R10 0 1
      139 LOADK                            R11 K31 ["Remove includeSources/excludeSources, or change scope to 'auto'"]
      140 SETLIST                          R10 R11 1 [1]
      142 SETTABLEKS                       R10 R9 K22 ["nextSteps"]
      144 NAMECALL                         R7 R7 K26 ["JSONEncode"]
      146 CALL                             R7 2 -1
      147 RETURN                           R7 -1
      148 GETUPVAL                         R7 3
      149 GETTABLEKS                       R7 R7 K32 ["getWidgetUpdateFunctions"]
      151 MOVE                             R8 R0
      152 LOADK                            R9 K33 ["AssetSearchTool"]
      153 CALL                             R7 2 1
      154 GETTABLEKS                       R8 R7 K34 ["updateWidget"]
      156 NEWCLOSURE                       R9 P0
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          UPVAL U5
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R1
      161 CALL                             R8 1 0
      162 NEWCLOSURE                       R8 P1
      163 CAPTURE                          VAL R7
      164 CAPTURE                          UPVAL U4
      165 CAPTURE                          UPVAL U5
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R1
      168 GETUPVAL                         R9 0
      169 LOADK                            R10 K35 ["[AssetSearchTool] Discovering context..."]
      170 CALL                             R9 1 0
      171 GETIMPORT                        R9 K37 [pcall]
      173 NEWCLOSURE                       R10 P2
      174 CAPTURE                          UPVAL U6
      175 CAPTURE                          VAL R6
      176 CALL                             R9 1 2
      177 JUMPIF                           R9 ; [+33]
      178 GETUPVAL                         R11 0
      179 LOADK                            R13 K38 ["[AssetSearchTool] discoverContext threw: %*"]
      180 FASTCALL1                        TOSTRING R10 ; [+3]
      181 MOVE                             R16 R10
      182 GETIMPORT                        R15 K40 [tostring]
      184 CALL                             R15 1 1
      185 NAMECALL                         R13 R13 K19 ["format"]
      187 CALL                             R13 2 1
      188 MOVE                             R12 R13
      189 CALL                             R11 1 0
      190 GETTABLEKS                       R11 R7 K34 ["updateWidget"]
      192 NEWCLOSURE                       R12 P3
      193 CAPTURE                          UPVAL U4
      194 CAPTURE                          UPVAL U5
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R1
      197 CALL                             R11 1 0
      198 GETUPVAL                         R11 2
      199 DUPTABLE                         R13 K42 [{["status"] = "error", ["error"] = "Failed to discover Studio context", ["nextSteps"]}]
      200 NEWTABLE                         R14 0 1
      202 LOADK                            R15 K43 ["Retry the search. If this persists, the Studio session may need to be restarted"]
      203 SETLIST                          R14 R15 1 [1]
      205 SETTABLEKS                       R14 R13 K22 ["nextSteps"]
      207 NAMECALL                         R11 R11 K26 ["JSONEncode"]
      209 CALL                             R11 2 -1
      210 RETURN                           R11 -1
      211 GETUPVAL                         R11 0
      212 LOADK                            R13 K44 ["[AssetSearchTool] Context: userId=%* universeId=%* groupId=%*"]
      213 GETTABLEKS                       R15 R10 K45 ["userId"]
      215 GETTABLEKS                       R17 R10 K46 ["universeId"]
      217 ORK                              R16 R17 K17 ["nil"]
      218 GETTABLEKS                       R18 R10 K47 ["groupId"]
      220 ORK                              R17 R18 K17 ["nil"]
      221 NAMECALL                         R13 R13 K19 ["format"]
      223 CALL                             R13 4 1
      224 MOVE                             R12 R13
      225 CALL                             R11 1 0
      226 LOADNIL                          R11
      227 GETTABLEKS                       R12 R1 K47 ["groupId"]
      229 JUMPIF                           R12 ; [+3]
      230 GETTABLEKS                       R12 R1 K48 ["groupName"]
      232 JUMPIFNOT                        R12 ; [+34]
      233 GETUPVAL                         R12 7
      234 MOVE                             R13 R10
      235 CALL                             R12 1 1
      236 LOADNIL                          R13
      237 GETUPVAL                         R14 8
      238 MOVE                             R15 R1
      239 MOVE                             R16 R4
      240 MOVE                             R17 R12
      241 CALL                             R14 3 2
      242 MOVE                             R11 R14
      243 MOVE                             R13 R15
      244 JUMPIFNOT                        R13 ; [+14]
      245 GETTABLEKS                       R14 R7 K34 ["updateWidget"]
      247 NEWCLOSURE                       R15 P3
      248 CAPTURE                          UPVAL U4
      249 CAPTURE                          UPVAL U5
      250 CAPTURE                          VAL R3
      251 CAPTURE                          VAL R1
      252 CALL                             R14 1 0
      253 GETUPVAL                         R14 2
      254 MOVE                             R16 R13
      255 NAMECALL                         R14 R14 K26 ["JSONEncode"]
      257 CALL                             R14 2 -1
      258 RETURN                           R14 -1
      259 GETUPVAL                         R14 0
      260 LOADK                            R16 K49 ["[AssetSearchTool] effectiveGroupId=%*"]
      261 ORK                              R18 R11 K17 ["nil"]
      262 NAMECALL                         R16 R16 K19 ["format"]
      264 CALL                             R16 2 1
      265 MOVE                             R15 R16
      266 CALL                             R14 1 0
      267 LOADNIL                          R12
      268 GETTABLEKS                       R13 R10 K50 ["creatorType"]
      270 GETIMPORT                        R14 K54 [Enum.CreatorType.Group]
      272 JUMPIFNOTEQ                      R13 R14 ; [+24]
      274 GETTABLEKS                       R13 R10 K55 ["creatorId"]
      276 JUMPIFNOT                        R13 ; [+20]
      277 GETTABLEKS                       R14 R10 K55 ["creatorId"]
      279 FASTCALL1                        TONUMBER R14 ; [+2]
      280 GETIMPORT                        R13 K57 [tonumber]
      282 CALL                             R13 1 1
      283 JUMPIFNOT                        R13 ; [+13]
      284 GETUPVAL                         R14 7
      285 MOVE                             R15 R10
      286 CALL                             R14 1 3
      287 FORGPREP                         R14
      288 GETTABLEKS                       R19 R18 K58 ["id"]
      290 JUMPIFNOTEQ                      R19 R13 ; [+4]
      292 GETTABLEKS                       R12 R18 K59 ["name"]
      294 JUMP                             ; [+2]
      295 FORGLOOP                         R14 2 ; [-8]
      297 GETTABLEKS                       R14 R10 K50 ["creatorType"]
      299 JUMPIFNOT                        R14 ; [+5]
      300 GETTABLEKS                       R13 R10 K50 ["creatorType"]
      302 GETTABLEKS                       R13 R13 K60 ["Name"]
      304 JUMP                             ; [+1]
      305 LOADNIL                          R13
      306 DUPTABLE                         R14 K63 [{"userId", "universeId", "isPublished", "creatorType", "creatorId", "creatorName"}]
      307 GETTABLEKS                       R15 R10 K45 ["userId"]
      309 SETTABLEKS                       R15 R14 K45 ["userId"]
      311 GETTABLEKS                       R15 R10 K46 ["universeId"]
      313 SETTABLEKS                       R15 R14 K46 ["universeId"]
      315 GETTABLEKS                       R16 R10 K46 ["universeId"]
      317 JUMPIFNOTEQKNIL                  R16 ; [+2]
      319 LOADB                            R15 0 +1
      320 LOADB                            R15 1
      321 SETTABLEKS                       R15 R14 K61 ["isPublished"]
      323 SETTABLEKS                       R13 R14 K50 ["creatorType"]
      325 GETTABLEKS                       R15 R10 K55 ["creatorId"]
      327 SETTABLEKS                       R15 R14 K55 ["creatorId"]
      329 SETTABLEKS                       R12 R14 K62 ["creatorName"]
      331 NEWTABLE                         R15 0 0
      333 NEWTABLE                         R16 0 0
      335 NEWTABLE                         R17 0 0
      337 NEWTABLE                         R18 0 0
      339 JUMPIFNOTEQKS                    R4 K2 ["auto"] ; [+255]
      341 NEWTABLE                         R19 0 4
      343 GETUPVAL                         R20 9
      344 GETTABLEKS                       R20 R20 K64 ["Universe"]
      346 GETUPVAL                         R21 9
      347 GETTABLEKS                       R21 R21 K53 ["Group"]
      349 GETUPVAL                         R22 9
      350 GETTABLEKS                       R22 R22 K65 ["User"]
      352 GETUPVAL                         R23 9
      353 GETTABLEKS                       R23 R23 K66 ["CreatorStore"]
      355 SETLIST                          R19 R20 4 [1]
      357 GETTABLEKS                       R20 R1 K11 ["includeSources"]
      359 JUMPIFNOT                        R20 ; [+17]
      360 NEWTABLE                         R19 0 0
      362 GETTABLEKS                       R20 R1 K11 ["includeSources"]
      364 LOADNIL                          R21
      365 LOADNIL                          R22
      366 FORGPREP                         R20
      367 FASTCALL2                        TABLE_INSERT R19 R24 ; [+5]
      369 MOVE                             R26 R19
      370 MOVE                             R27 R24
      371 GETIMPORT                        R25 K69 [table.insert]
      373 CALL                             R25 2 0
      374 FORGLOOP                         R20 2 ; [-8]
      376 JUMP                             ; [+32]
      377 GETTABLEKS                       R20 R1 K13 ["excludeSources"]
      379 JUMPIFNOT                        R20 ; [+29]
      380 NEWTABLE                         R20 0 0
      382 GETTABLEKS                       R21 R1 K13 ["excludeSources"]
      384 LOADNIL                          R22
      385 LOADNIL                          R23
      386 FORGPREP                         R21
      387 LOADB                            R26 1
      388 SETTABLE                         R26 R20 R25
      389 FORGLOOP                         R21 2 ; [-3]
      391 NEWTABLE                         R21 0 0
      393 MOVE                             R22 R19
      394 LOADNIL                          R23
      395 LOADNIL                          R24
      396 FORGPREP                         R22
      397 GETTABLE                         R27 R20 R26
      398 JUMPIF                           R27 ; [+7]
      399 FASTCALL2                        TABLE_INSERT R21 R26 ; [+5]
      401 MOVE                             R28 R21
      402 MOVE                             R29 R26
      403 GETIMPORT                        R27 K69 [table.insert]
      405 CALL                             R27 2 0
      406 FORGLOOP                         R22 2 ; [-10]
      408 MOVE                             R19 R21
      409 GETUPVAL                         R20 0
      410 LOADK                            R22 K70 ["[AssetSearchTool] Auto waterfall sourceOrder: %*"]
      411 GETIMPORT                        R24 K72 [table.concat]
      413 MOVE                             R25 R19
      414 LOADK                            R26 K73 [", "]
      415 CALL                             R24 2 1
      416 NAMECALL                         R22 R22 K19 ["format"]
      418 CALL                             R22 2 1
      419 MOVE                             R21 R22
      420 CALL                             R20 1 0
      421 NEWTABLE                         R20 0 0
      423 GETTABLEKS                       R23 R1 K74 ["minPriceCents"]
      425 GETTABLEKS                       R24 R1 K75 ["maxPriceCents"]
      427 GETTABLEKS                       R25 R1 K76 ["priceFilter"]
      429 JUMPIFNOTEQKS                    R25 K77 ["free"] ; [+3]
      431 LOADN                            R24 0
      432 JUMP                             ; [+5]
      433 GETTABLEKS                       R25 R1 K76 ["priceFilter"]
      435 JUMPIFNOTEQKS                    R25 K78 ["paid"] ; [+2]
      437 ORK                              R23 R23 K79 [1]
      438 MOVE                             R21 R23
      439 MOVE                             R22 R24
      440 MOVE                             R23 R19
      441 LOADNIL                          R24
      442 LOADNIL                          R25
      443 FORGPREP                         R23
      444 LENGTH                           R28 R15
      445 JUMPIFNOTLE                      R5 R28 ; [+10]
      447 GETUPVAL                         R28 0
      448 LOADK                            R30 K80 ["[AssetSearchTool] Waterfall: reached maxResults=%*, stopping"]
      449 MOVE                             R32 R5
      450 NAMECALL                         R30 R30 K19 ["format"]
      452 CALL                             R30 2 1
      453 MOVE                             R29 R30
      454 CALL                             R28 1 0
      455 JUMP                             ; [+375]
      456 GETUPVAL                         R28 9
      457 GETTABLEKS                       R28 R28 K53 ["Group"]
      459 JUMPIFNOTEQ                      R27 R28 ; [+13]
      461 GETTABLEKS                       R28 R10 K47 ["groupId"]
      463 JUMPIF                           R28 ; [+9]
      464 GETUPVAL                         R28 0
      465 LOADK                            R29 K81 ["[AssetSearchTool] Waterfall: skipping \"group\" (universe has no owning group)"]
      466 CALL                             R28 1 0
      467 GETUPVAL                         R28 9
      468 GETTABLEKS                       R28 R28 K53 ["Group"]
      470 LOADK                            R29 K82 ["this universe is not owned by a group"]
      471 SETTABLE                         R29 R18 R28
      472 JUMP                             ; [+119]
      473 GETUPVAL                         R28 9
      474 GETTABLEKS                       R28 R28 K64 ["Universe"]
      476 JUMPIFNOTEQ                      R27 R28 ; [+13]
      478 GETTABLEKS                       R28 R10 K46 ["universeId"]
      480 JUMPIF                           R28 ; [+9]
      481 GETUPVAL                         R28 0
      482 LOADK                            R29 K83 ["[AssetSearchTool] Waterfall: skipping \"universe\" (no universeId)"]
      483 CALL                             R28 1 0
      484 GETUPVAL                         R28 9
      485 GETTABLEKS                       R28 R28 K64 ["Universe"]
      487 LOADK                            R29 K84 ["game is not published"]
      488 SETTABLE                         R29 R18 R28
      489 JUMP                             ; [+102]
      490 LENGTH                           R29 R15
      491 SUB                              R28 R5 R29
      492 MOVE                             R29 R28
      493 GETTABLEKS                       R30 R1 K18 ["assetType"]
      495 GETUPVAL                         R31 10
      496 JUMPIFNOTEQ                      R30 R31 ; [+7]
      498 GETUPVAL                         R30 9
      499 GETTABLEKS                       R30 R30 K66 ["CreatorStore"]
      501 JUMPIFEQ                         R27 R30 ; [+2]
      503 MULK                             R29 R28 K4 [5]
      504 GETUPVAL                         R30 0
      505 LOADK                            R32 K85 ["[AssetSearchTool] Waterfall: querying source=\"%*\" remaining=%* requestLimit=%*"]
      506 MOVE                             R34 R27
      507 MOVE                             R35 R28
      508 MOVE                             R36 R29
      509 NAMECALL                         R32 R32 K19 ["format"]
      511 CALL                             R32 4 1
      512 MOVE                             R31 R32
      513 CALL                             R30 1 0
      514 GETUPVAL                         R30 11
      515 MOVE                             R31 R27
      516 MOVE                             R32 R3
      517 GETTABLEKS                       R33 R1 K18 ["assetType"]
      519 MOVE                             R34 R29
      520 MOVE                             R35 R10
      521 DUPTABLE                         R36 K91 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      522 GETTABLEKS                       R37 R1 K14 ["facets"]
      524 SETTABLEKS                       R37 R36 K14 ["facets"]
      526 GETTABLEKS                       R37 R1 K15 ["tags"]
      528 SETTABLEKS                       R37 R36 K15 ["tags"]
      530 GETTABLEKS                       R37 R1 K92 ["verifiedCreatorsOnly"]
      532 SETTABLEKS                       R37 R36 K86 ["includeOnlyVerifiedCreators"]
      534 SETTABLEKS                       R21 R36 K87 ["minPrice"]
      536 SETTABLEKS                       R22 R36 K88 ["maxPrice"]
      538 GETTABLEKS                       R37 R1 K93 ["audioMinDuration"]
      540 SETTABLEKS                       R37 R36 K89 ["minDuration"]
      542 GETTABLEKS                       R37 R1 K94 ["audioMaxDuration"]
      544 SETTABLEKS                       R37 R36 K90 ["maxDuration"]
      546 CALL                             R30 6 2
      547 GETUPVAL                         R32 0
      548 LOADK                            R34 K95 ["[AssetSearchTool] Waterfall: source=\"%*\" returned %* results"]
      549 MOVE                             R36 R27
      550 LENGTH                           R37 R30
      551 NAMECALL                         R34 R34 K19 ["format"]
      553 CALL                             R34 3 1
      554 MOVE                             R33 R34
      555 CALL                             R32 1 0
      556 LENGTH                           R32 R31
      557 LOADN                            R33 0
      558 JUMPIFNOTLT                      R33 R32 ; [+2]
      560 MOVE                             R16 R31
      561 MOVE                             R32 R30
      562 LOADNIL                          R33
      563 LOADNIL                          R34
      564 FORGPREP                         R32
      565 LENGTH                           R37 R15
      566 JUMPIFLE                         R5 R37 ; [+18]
      568 GETTABLEKS                       R38 R36 K96 ["assetId"]
      570 GETTABLE                         R37 R20 R38
      571 JUMPIF                           R37 ; [+11]
      572 GETTABLEKS                       R37 R36 K96 ["assetId"]
      574 LOADB                            R38 1
      575 SETTABLE                         R38 R20 R37
      576 FASTCALL2                        TABLE_INSERT R15 R36 ; [+5]
      578 MOVE                             R38 R15
      579 MOVE                             R39 R36
      580 GETIMPORT                        R37 K69 [table.insert]
      582 CALL                             R37 2 0
      583 FORGLOOP                         R32 2 ; [-19]
      585 FASTCALL2                        TABLE_INSERT R17 R27 ; [+5]
      587 MOVE                             R33 R17
      588 MOVE                             R34 R27
      589 GETIMPORT                        R32 K69 [table.insert]
      591 CALL                             R32 2 0
      592 FORGLOOP                         R23 2 ; [-149]
      594 JUMP                             ; [+236]
      595 GETUPVAL                         R19 9
      596 GETTABLEKS                       R19 R19 K53 ["Group"]
      598 JUMPIFNOTEQ                      R4 R19 ; [+80]
      600 GETTABLEKS                       R20 R1 K47 ["groupId"]
      602 JUMPIFEQKNIL                     R20 ; [+6]
      604 LOADB                            R19 1
      605 GETTABLEKS                       R20 R1 K47 ["groupId"]
      607 JUMPIFNOTEQKS                    R20 K0 [""] ; [+16]
      609 LOADB                            R19 0
      610 GETTABLEKS                       R20 R1 K48 ["groupName"]
      612 JUMPIFEQKNIL                     R20 ; [+11]
      614 GETUPVAL                         R20 4
      615 GETTABLEKS                       R20 R20 K97 ["trim"]
      617 GETTABLEKS                       R21 R1 K48 ["groupName"]
      619 CALL                             R20 1 1
      620 JUMPIFNOTEQKS                    R20 K0 [""] ; [+2]
      622 LOADB                            R19 0 +1
      623 LOADB                            R19 1
      624 JUMPIF                           R19 ; [+54]
      625 GETTABLEKS                       R20 R10 K47 ["groupId"]
      627 JUMPIF                           R20 ; [+51]
      628 GETUPVAL                         R20 7
      629 MOVE                             R21 R10
      630 CALL                             R20 1 1
      631 GETTABLEKS                       R21 R7 K34 ["updateWidget"]
      633 NEWCLOSURE                       R22 P3
      634 CAPTURE                          UPVAL U4
      635 CAPTURE                          UPVAL U5
      636 CAPTURE                          VAL R3
      637 CAPTURE                          VAL R1
      638 CALL                             R21 1 0
      639 GETUPVAL                         R21 2
      640 DUPTABLE                         R23 K103 [{["status"] = "success", ["query"], ["scope"], ["resultCount"] = 0, ["results"], ["groups"], ["context"], ["nextSteps"]}]
      641 SETTABLEKS                       R3 R23 K1 ["query"]
      643 SETTABLEKS                       R4 R23 K3 ["scope"]
      645 NEWTABLE                         R24 0 0
      647 SETTABLEKS                       R24 R23 K100 ["results"]
      649 LENGTH                           R25 R20
      650 LOADN                            R26 0
      651 JUMPIFNOTLT                      R26 R25 ; [+3]
      653 MOVE                             R24 R20
      654 JUMP                             ; [+1]
      655 LOADNIL                          R24
      656 SETTABLEKS                       R24 R23 K101 ["groups"]
      658 SETTABLEKS                       R14 R23 K102 ["context"]
      660 NEWTABLE                         R24 0 2
      662 LOADK                            R25 K104 ["This universe is not owned by a group, and no groupId/groupName was supplied."]
      663 LENGTH                           R27 R20
      664 LOADN                            R28 0
      665 JUMPIFNOTLT                      R28 R27 ; [+3]
      667 LOADK                            R26 K105 ["Pass scope='group' with groupId or groupName from the listed groups to retry."]
      668 JUMP                             ; [+1]
      669 LOADK                            R26 K106 ["Use scope='auto' or scope='user' instead — you are not a member of any groups."]
      670 SETLIST                          R24 R25 2 [1]
      672 SETTABLEKS                       R24 R23 K22 ["nextSteps"]
      674 NAMECALL                         R21 R21 K26 ["JSONEncode"]
      676 CALL                             R21 2 -1
      677 CLOSEUPVALS                      R15
      678 RETURN                           R21 -1
      679 GETUPVAL                         R19 9
      680 GETTABLEKS                       R19 R19 K64 ["Universe"]
      682 JUMPIFNOTEQ                      R4 R19 ; [+27]
      684 GETTABLEKS                       R19 R10 K46 ["universeId"]
      686 JUMPIF                           R19 ; [+23]
      687 GETTABLEKS                       R19 R7 K34 ["updateWidget"]
      689 NEWCLOSURE                       R20 P3
      690 CAPTURE                          UPVAL U4
      691 CAPTURE                          UPVAL U5
      692 CAPTURE                          VAL R3
      693 CAPTURE                          VAL R1
      694 CALL                             R19 1 0
      695 GETUPVAL                         R19 2
      696 DUPTABLE                         R21 K108 [{["status"] = "error", ["error"] = "scope='universe' is unavailable because this game is not yet published (no universe ID).", ["nextSteps"]}]
      697 NEWTABLE                         R22 0 2
      699 LOADK                            R23 K109 ["Use scope='auto' or scope='user' to search the user's personal inventory and Creator Store instead."]
      700 LOADK                            R24 K110 ["The game must be published to Roblox before its universe inventory becomes searchable."]
      701 SETLIST                          R22 R23 2 [1]
      703 SETTABLEKS                       R22 R21 K22 ["nextSteps"]
      705 NAMECALL                         R19 R19 K26 ["JSONEncode"]
      707 CALL                             R19 2 -1
      708 CLOSEUPVALS                      R15
      709 RETURN                           R19 -1
      710 GETUPVAL                         R19 0
      711 LOADK                            R21 K111 ["[AssetSearchTool] Explicit scope=\"%*\""]
      712 MOVE                             R23 R4
      713 NAMECALL                         R21 R21 K19 ["format"]
      715 CALL                             R21 2 1
      716 MOVE                             R20 R21
      717 CALL                             R19 1 0
      718 FASTCALL2                        TABLE_INSERT R17 R4 ; [+5]
      720 MOVE                             R20 R17
      721 MOVE                             R21 R4
      722 GETIMPORT                        R19 K69 [table.insert]
      724 CALL                             R19 2 0
      725 GETUPVAL                         R19 9
      726 GETTABLEKS                       R19 R19 K66 ["CreatorStore"]
      728 JUMPIFNOTEQ                      R4 R19 ; [+68]
      730 GETTABLEKS                       R21 R1 K74 ["minPriceCents"]
      732 GETTABLEKS                       R22 R1 K75 ["maxPriceCents"]
      734 GETTABLEKS                       R23 R1 K76 ["priceFilter"]
      736 JUMPIFNOTEQKS                    R23 K77 ["free"] ; [+3]
      738 LOADN                            R22 0
      739 JUMP                             ; [+5]
      740 GETTABLEKS                       R23 R1 K76 ["priceFilter"]
      742 JUMPIFNOTEQKS                    R23 K78 ["paid"] ; [+2]
      744 ORK                              R21 R21 K79 [1]
      745 MOVE                             R19 R21
      746 MOVE                             R20 R22
      747 GETUPVAL                         R21 11
      748 GETUPVAL                         R22 9
      749 GETTABLEKS                       R22 R22 K66 ["CreatorStore"]
      751 MOVE                             R23 R3
      752 GETTABLEKS                       R24 R1 K18 ["assetType"]
      754 MOVE                             R25 R5
      755 MOVE                             R26 R10
      756 DUPTABLE                         R27 K91 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      757 GETTABLEKS                       R28 R1 K14 ["facets"]
      759 SETTABLEKS                       R28 R27 K14 ["facets"]
      761 GETTABLEKS                       R28 R1 K15 ["tags"]
      763 SETTABLEKS                       R28 R27 K15 ["tags"]
      765 GETTABLEKS                       R28 R1 K92 ["verifiedCreatorsOnly"]
      767 SETTABLEKS                       R28 R27 K86 ["includeOnlyVerifiedCreators"]
      769 SETTABLEKS                       R19 R27 K87 ["minPrice"]
      771 SETTABLEKS                       R20 R27 K88 ["maxPrice"]
      773 GETTABLEKS                       R28 R1 K93 ["audioMinDuration"]
      775 SETTABLEKS                       R28 R27 K89 ["minDuration"]
      777 GETTABLEKS                       R28 R1 K94 ["audioMaxDuration"]
      779 SETTABLEKS                       R28 R27 K90 ["maxDuration"]
      781 CALL                             R21 6 2
      782 MOVE                             R15 R21
      783 LENGTH                           R23 R22
      784 LOADN                            R24 0
      785 JUMPIFNOTLT                      R24 R23 ; [+2]
      787 MOVE                             R16 R22
      788 GETUPVAL                         R23 0
      789 LOADK                            R25 K112 ["[AssetSearchTool] Explicit creator_store: parsed %* results"]
      790 LENGTH                           R27 R15
      791 NAMECALL                         R25 R25 K19 ["format"]
      793 CALL                             R25 2 1
      794 MOVE                             R24 R25
      795 CALL                             R23 1 0
      796 JUMP                             ; [+34]
      797 GETTABLEKS                       R20 R1 K18 ["assetType"]
      799 GETUPVAL                         R21 10
      800 JUMPIFNOTEQ                      R20 R21 ; [+3]
      802 MULK                             R19 R5 K4 [5]
      803 JUMP                             ; [+1]
      804 MOVE                             R19 R5
      805 GETUPVAL                         R20 11
      806 MOVE                             R21 R4
      807 MOVE                             R22 R3
      808 GETTABLEKS                       R23 R1 K18 ["assetType"]
      810 MOVE                             R24 R19
      811 MOVE                             R25 R10
      812 DUPTABLE                         R26 K114 [{"effectiveGroupId"}]
      813 SETTABLEKS                       R11 R26 K113 ["effectiveGroupId"]
      815 CALL                             R20 6 2
      816 MOVE                             R15 R20
      817 LENGTH                           R22 R21
      818 LOADN                            R23 0
      819 JUMPIFNOTLT                      R23 R22 ; [+2]
      821 MOVE                             R16 R21
      822 GETUPVAL                         R22 0
      823 LOADK                            R24 K115 ["[AssetSearchTool] Explicit %*: got %* results"]
      824 MOVE                             R26 R4
      825 LENGTH                           R27 R15
      826 NAMECALL                         R24 R24 K19 ["format"]
      828 CALL                             R24 3 1
      829 MOVE                             R23 R24
      830 CALL                             R22 1 0
      831 GETUPVAL                         R19 0
      832 LOADK                            R21 K116 ["[AssetSearchTool] Total: %* results from sources: %*"]
      833 LENGTH                           R23 R15
      834 GETIMPORT                        R24 K72 [table.concat]
      836 MOVE                             R25 R17
      837 LOADK                            R26 K73 [", "]
      838 CALL                             R24 2 1
      839 NAMECALL                         R21 R21 K19 ["format"]
      841 CALL                             R21 3 1
      842 MOVE                             R20 R21
      843 CALL                             R19 1 0
      844 NEWTABLE                         R19 0 0
      846 NEWTABLE                         R20 0 0
      848 MOVE                             R21 R15
      849 LOADNIL                          R22
      850 LOADNIL                          R23
      851 FORGPREP                         R21
      852 GETTABLEKS                       R27 R25 K96 ["assetId"]
      854 GETTABLE                         R26 R19 R27
      855 JUMPIF                           R26 ; [+14]
      856 GETTABLEKS                       R26 R25 K96 ["assetId"]
      858 LOADB                            R27 1
      859 SETTABLE                         R27 R19 R26
      860 FASTCALL2                        TABLE_INSERT R20 R25 ; [+5]
      862 MOVE                             R27 R20
      863 MOVE                             R28 R25
      864 GETIMPORT                        R26 K69 [table.insert]
      866 CALL                             R26 2 0
      867 LENGTH                           R26 R20
      868 JUMPIFLE                         R5 R26 ; [+3]
      870 FORGLOOP                         R21 2 ; [-19]
      872 MOVE                             R15 R20
      873 NEWTABLE                         R21 0 0
      875 MOVE                             R22 R15
      876 LOADNIL                          R23
      877 LOADNIL                          R24
      878 FORGPREP                         R22
      879 DUPTABLE                         R29 K122 [{"assetId", "name", "assetType", "source", "location", "creatorName", "priceCents", "priceLabel", "isFree"}]
      880 GETTABLEKS                       R30 R26 K96 ["assetId"]
      882 SETTABLEKS                       R30 R29 K96 ["assetId"]
      884 GETTABLEKS                       R30 R26 K59 ["name"]
      886 SETTABLEKS                       R30 R29 K59 ["name"]
      888 GETTABLEKS                       R30 R26 K18 ["assetType"]
      890 SETTABLEKS                       R30 R29 K18 ["assetType"]
      892 GETTABLEKS                       R30 R26 K117 ["source"]
      894 SETTABLEKS                       R30 R29 K117 ["source"]
      896 GETTABLEKS                       R30 R26 K118 ["location"]
      898 SETTABLEKS                       R30 R29 K118 ["location"]
      900 GETTABLEKS                       R30 R26 K62 ["creatorName"]
      902 SETTABLEKS                       R30 R29 K62 ["creatorName"]
      904 GETTABLEKS                       R30 R26 K119 ["priceCents"]
      906 SETTABLEKS                       R30 R29 K119 ["priceCents"]
      908 GETTABLEKS                       R30 R26 K120 ["priceLabel"]
      910 SETTABLEKS                       R30 R29 K120 ["priceLabel"]
      912 GETTABLEKS                       R30 R26 K121 ["isFree"]
      914 SETTABLEKS                       R30 R29 K121 ["isFree"]
      916 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      918 MOVE                             R28 R21
      919 GETIMPORT                        R27 K69 [table.insert]
      921 CALL                             R27 2 0
      922 FORGLOOP                         R22 2 ; [-44]
      924 NEWCLOSURE                       R22 P4
      925 CAPTURE                          VAL R0
      926 CAPTURE                          UPVAL U12
      927 CAPTURE                          UPVAL U13
      928 CAPTURE                          UPVAL U3
      929 CAPTURE                          UPVAL U14
      930 CAPTURE                          UPVAL U0
      931 GETTABLEKS                       R23 R7 K34 ["updateWidget"]
      933 NEWCLOSURE                       R24 P5
      934 CAPTURE                          UPVAL U4
      935 CAPTURE                          UPVAL U5
      936 CAPTURE                          VAL R3
      937 CAPTURE                          VAL R1
      938 CAPTURE                          REF R15
      939 CAPTURE                          VAL R21
      940 CAPTURE                          VAL R22
      941 CALL                             R23 1 0
      942 NEWTABLE                         R23 0 0
      944 MOVE                             R24 R15
      945 LOADNIL                          R25
      946 LOADNIL                          R26
      947 FORGPREP                         R24
      948 DUPTABLE                         R31 K126 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "creatorId", "priceCents", "priceLabel", "isFree", "thumbnailUrl", "creatorStoreUrl"}]
      949 GETTABLEKS                       R32 R28 K96 ["assetId"]
      951 SETTABLEKS                       R32 R31 K96 ["assetId"]
      953 GETTABLEKS                       R32 R28 K59 ["name"]
      955 SETTABLEKS                       R32 R31 K59 ["name"]
      957 GETTABLEKS                       R32 R28 K123 ["description"]
      959 SETTABLEKS                       R32 R31 K123 ["description"]
      961 GETTABLEKS                       R32 R28 K18 ["assetType"]
      963 SETTABLEKS                       R32 R31 K18 ["assetType"]
      965 GETTABLEKS                       R32 R28 K117 ["source"]
      967 SETTABLEKS                       R32 R31 K117 ["source"]
      969 GETTABLEKS                       R32 R28 K118 ["location"]
      971 SETTABLEKS                       R32 R31 K118 ["location"]
      973 GETTABLEKS                       R32 R28 K62 ["creatorName"]
      975 SETTABLEKS                       R32 R31 K62 ["creatorName"]
      977 GETTABLEKS                       R32 R28 K55 ["creatorId"]
      979 SETTABLEKS                       R32 R31 K55 ["creatorId"]
      981 GETTABLEKS                       R32 R28 K119 ["priceCents"]
      983 SETTABLEKS                       R32 R31 K119 ["priceCents"]
      985 GETTABLEKS                       R32 R28 K120 ["priceLabel"]
      987 SETTABLEKS                       R32 R31 K120 ["priceLabel"]
      989 GETTABLEKS                       R32 R28 K121 ["isFree"]
      991 SETTABLEKS                       R32 R31 K121 ["isFree"]
      993 LOADK                            R33 K127 ["%*v1/assets?assetIds=%*&returnPolicy=PlaceHolder&size=150x150&format=Png"]
      994 GETUPVAL                         R35 15
      995 GETTABLEKS                       R35 R35 K128 ["THUMBNAILS_URL"]
      997 GETTABLEKS                       R36 R28 K96 ["assetId"]
      999 NAMECALL                         R33 R33 K19 ["format"]
     1001 CALL                             R33 3 1
     1002 MOVE                             R32 R33
     1003 SETTABLEKS                       R32 R31 K124 ["thumbnailUrl"]
     1005 GETTABLEKS                       R33 R28 K117 ["source"]
     1007 GETUPVAL                         R34 9
     1008 GETTABLEKS                       R34 R34 K66 ["CreatorStore"]
     1010 JUMPIFNOTEQ                      R33 R34 ; [+12]
     1012 LOADK                            R33 K129 ["%*store/asset/%*"]
     1013 GETUPVAL                         R35 15
     1014 GETTABLEKS                       R35 R35 K130 ["CREATOR_HUB_URL"]
     1016 GETTABLEKS                       R36 R28 K96 ["assetId"]
     1018 NAMECALL                         R33 R33 K19 ["format"]
     1020 CALL                             R33 3 1
     1021 MOVE                             R32 R33
     1022 JUMP                             ; [+1]
     1023 LOADNIL                          R32
     1024 SETTABLEKS                       R32 R31 K125 ["creatorStoreUrl"]
     1026 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
     1028 MOVE                             R30 R23
     1029 GETIMPORT                        R29 K69 [table.insert]
     1031 CALL                             R29 2 0
     1032 FORGLOOP                         R24 2 ; [-85]
     1034 GETUPVAL                         R24 0
     1035 LOADK                            R26 K131 ["[AssetSearchTool] === SEARCH COMPLETE === resultCount=%* sources=%*"]
     1036 LENGTH                           R28 R15
     1037 GETIMPORT                        R29 K72 [table.concat]
     1039 MOVE                             R30 R17
     1040 LOADK                            R31 K132 [","]
     1041 CALL                             R29 2 1
     1042 NAMECALL                         R26 R26 K19 ["format"]
     1044 CALL                             R26 3 1
     1045 MOVE                             R25 R26
     1046 CALL                             R24 1 0
     1047 MOVE                             R24 R23
     1048 LOADNIL                          R25
     1049 LOADNIL                          R26
     1050 FORGPREP                         R24
     1051 GETUPVAL                         R29 0
     1052 LOADK                            R31 K133 ["[AssetSearchTool]   result[%*]: id=%* name=\"%*\" type=%* source=%* location=%*"]
     1053 MOVE                             R33 R27
     1054 GETTABLEKS                       R34 R28 K96 ["assetId"]
     1056 GETTABLEKS                       R35 R28 K59 ["name"]
     1058 GETTABLEKS                       R36 R28 K18 ["assetType"]
     1060 GETTABLEKS                       R37 R28 K117 ["source"]
     1062 GETTABLEKS                       R39 R28 K118 ["location"]
     1064 ORK                              R38 R39 K17 ["nil"]
     1065 NAMECALL                         R31 R31 K19 ["format"]
     1067 CALL                             R31 7 1
     1068 MOVE                             R30 R31
     1069 CALL                             R29 1 0
     1070 FORGLOOP                         R24 2 ; [-20]
     1072 LOADNIL                          R24
     1073 LOADB                            R25 1
     1074 GETUPVAL                         R26 9
     1075 GETTABLEKS                       R26 R26 K53 ["Group"]
     1077 JUMPIFEQ                         R4 R26 ; [+5]
     1079 JUMPIFEQKS                       R4 K2 ["auto"] ; [+2]
     1081 LOADB                            R25 0 +1
     1082 LOADB                            R25 1
     1083 JUMPIFNOT                        R25 ; [+8]
     1084 GETUPVAL                         R26 7
     1085 MOVE                             R27 R10
     1086 CALL                             R26 1 1
     1087 LENGTH                           R27 R26
     1088 LOADN                            R28 0
     1089 JUMPIFNOTLT                      R28 R27 ; [+2]
     1091 MOVE                             R24 R26
     1092 GETUPVAL                         R26 2
     1093 DUPTABLE                         R28 K137 [{["status"] = "success", ["query"], ["scope"], ["searchSources"], ["skippedSources"], ["resultCount"], ["availableFacets"], ["results"], ["groups"], ["context"], ["nextSteps"]}]
     1094 SETTABLEKS                       R3 R28 K1 ["query"]
     1096 SETTABLEKS                       R4 R28 K3 ["scope"]
     1098 SETTABLEKS                       R17 R28 K134 ["searchSources"]
     1100 GETIMPORT                        R30 K139 [next]
     1102 MOVE                             R31 R18
     1103 CALL                             R30 1 1
     1104 JUMPIFNOT                        R30 ; [+2]
     1105 MOVE                             R29 R18
     1106 JUMP                             ; [+1]
     1107 LOADNIL                          R29
     1108 SETTABLEKS                       R29 R28 K135 ["skippedSources"]
     1110 LENGTH                           R29 R15
     1111 SETTABLEKS                       R29 R28 K99 ["resultCount"]
     1113 LENGTH                           R30 R16
     1114 LOADN                            R31 0
     1115 JUMPIFNOTLT                      R31 R30 ; [+3]
     1117 MOVE                             R29 R16
     1118 JUMP                             ; [+1]
     1119 LOADNIL                          R29
     1120 SETTABLEKS                       R29 R28 K136 ["availableFacets"]
     1122 SETTABLEKS                       R23 R28 K100 ["results"]
     1124 SETTABLEKS                       R24 R28 K101 ["groups"]
     1126 SETTABLEKS                       R14 R28 K102 ["context"]
     1128 NEWTABLE                         R29 0 4
     1130 LOADK                            R30 K140 ["Review the results and choose the best asset for the user's request. Prefer inventory results (source='inventory') as these are already owned and always insertable."]
     1131 LOADK                            R31 K141 ["For free/owned assets: call insert_asset with assetId, assetType, and assetName from the chosen result to insert it."]
     1132 LOADK                            R32 K142 ["For paid assets (isFree=false): show the user the creatorStoreUrl link and priceLabel so they can purchase it. Do not attempt to insert paid assets — they will fail."]
     1133 LOADK                            R33 K143 ["Some Creator Store assets may be restricted or moderated and fail to insert. If insert_asset fails, try the next result from the list rather than retrying the same asset."]
     1134 SETLIST                          R29 R30 4 [1]
     1136 SETTABLEKS                       R29 R28 K22 ["nextSteps"]
     1138 NAMECALL                         R26 R26 K26 ["JSONEncode"]
     1140 CALL                             R26 2 -1
     1141 CLOSEUPVALS                      R15
     1142 RETURN                           R26 -1

PROTO_39:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["Results"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 DUPTABLE                         R3 K6 [{["isThirdPartyRequest"] = False, ["contentId"]}]
       11 SETTABLEKS                       R0 R3 K5 ["contentId"]
       13 GETUPVAL                         R4 1
       14 DUPTABLE                         R2 K9 [{"initArgs", "callArgs"}]
       15 SETTABLEKS                       R4 R2 K7 ["initArgs"]
       17 SETTABLEKS                       R3 R2 K8 ["callArgs"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 SETTABLEKS                       R3 R1 K10 ["onItemClicked"]
       28 RETURN                           R0 0

PROTO_40:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["isThirdPartyRequest"]
        3 JUMPIF                           R3 ; [+1]
        4 LOADB                            R3 0
        5 DUPTABLE                         R5 K2 [{"isThirdPartyRequest", "contentId"}]
        6 SETTABLEKS                       R3 R5 K0 ["isThirdPartyRequest"]
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETTABLEKS                       R6 R1 K1 ["contentId"]
       11 JUMPIF                           R6 ; [+1]
       12 LOADK                            R6 K3 [""]
       13 SETTABLEKS                       R6 R5 K1 ["contentId"]
       15 GETUPVAL                         R6 0
       16 DUPTABLE                         R4 K6 [{"initArgs", "callArgs"}]
       17 SETTABLEKS                       R6 R4 K4 ["initArgs"]
       19 SETTABLEKS                       R5 R4 K5 ["callArgs"]
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R4
       23 MOVE                             R7 R0
       24 MOVE                             R8 R3
       25 CALL                             R5 3 1
       26 GETUPVAL                         R6 2
       27 CALL                             R6 0 1
       28 MOVE                             R8 R5
       29 NAMECALL                         R6 R6 K7 ["addText"]
       31 CALL                             R6 2 1
       32 NAMECALL                         R6 R6 K8 ["build"]
       34 CALL                             R6 1 -1
       35 RETURN                           R6 -1

PROTO_41:
        0 LOADK                            R0 K0 ["Search for models, audio, packages, and other assets"]
        1 RETURN                           R0 1

PROTO_42:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AssetSearch"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"query"}]
        7 SETTABLEKS                       R0 R2 K4 ["query"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_43:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["AssetSearch"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["registerHydrator"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Type"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CALL                             R1 2 0
       15 NEWCLOSURE                       R1 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 GETUPVAL                         R2 9
       20 GETTABLEKS                       R2 R2 K2 ["define"]
       22 CALL                             R2 0 1
       23 GETUPVAL                         R4 10
       24 GETTABLEKS                       R4 R4 K3 ["AssetSearch"]
       26 NAMECALL                         R2 R2 K4 ["setName"]
       28 CALL                             R2 2 1
       29 GETUPVAL                         R4 10
       30 GETTABLEKS                       R4 R4 K5 ["replaceTokens"]
       32 LOADK                            R5 K6 ["Searches for assets across Creator Store (public marketplace) and Creator Inventory (user/group/universe).\nUse this tool to find assets by keyword before inserting them with {ToolNames.AssetInsert}.\nReturns a list of matching assets with metadata (name, type, source, price).\n\nScope controls where to search:\n- 'auto' (default): waterfalls through universe inventory → universe's owning group → user inventory → Creator Store. Best for general \"find me an X\" requests.\n- 'creator_store': searches only the marketplace. Use this when the user wants marketplace assets, paid assets, or when using price/creator filters.\n- 'user': searches the user's personal inventory only.\n- 'group': searches the universe's owning group by default. Pass groupId or groupName to search a different group instead. If the universe has no owning group and you don't pass a groupId, the response lists the user's groups so you can retry.\n- 'universe': searches the current universe's inventory only.\n\nTargeting a specific group: when the user names a particular group (\"in my group X\" / \"in group 12345\"), set scope='group' AND pass groupId or groupName to constrain to that one group. groupId/groupName are only valid with scope='group'; combining with any other scope (including 'auto') is rejected.\n\nResult attribution: each inventory result includes `creatorId` (string, the group or user ID that owns the asset) and `creatorName` (the group/user name when known). `creatorId` semantics depend on `source`: for source='inventory' coming from a group, it's the group ID.\n\nEvery scope='group' or scope='auto' response includes a `groups` field listing { id, name } for each of the user's groups (when the user has any). Use these to make a follow-up scope='group' + groupId call when the default (the universe's owning group, or the first relevant group) doesn't match what the user wants.\n\nEvery response also includes a `context` field describing the current Studio session: { userId, universeId, isPublished, creatorType ('User'/'Group' when published), creatorId, creatorName }. Use this to ground answers about which place is being edited and to disambiguate \"in my group\" requests.\n\nCross-owner inserts caution: when an inventory result's creatorId differs from context.creatorId (the place's owner), inserting it brings another owner's asset into this place. The user may have access to view the asset but might not intend or have the authority to share it across owners. Before calling insert_asset on a cross-owner result, name the source (the asset's creatorName) and the destination (context.creatorName or universe), and ask the user for explicit consent.\n\nWhen to use price filters: If the user asks for paid/premium assets or specifies a price range, set scope='creator_store' and use priceFilter, minPriceCents, and/or maxPriceCents. These filters only apply to Creator Store searches.\nWhen to use asset type: If the user asks for a specific asset type (audio, decals, meshes, packages, etc.), set assetType to filter results. The inventory API requires exactly one assetType per call and defaults to 'Model' when omitted, so cross-type discovery requires explicit assetType=Image / Audio / etc. Packages are stored as Models with a Package subtype — set assetType='Package' to find them (do not search for the word \"package\" as a query).\nInventory results (source='inventory') are always insertable. Creator Store results may occasionally be restricted — if insert fails, try the next result.\nEach result includes a thumbnailUrl (Roblox Thumbnails API). Fetch it to get JSON with data[0].imageUrl pointing to a CDN image of the asset — useful for visually comparing assets before inserting.\n"]
       33 CALL                             R4 1 -1
       34 NAMECALL                         R2 R2 K7 ["setDescription"]
       36 CALL                             R2 -1 1
       37 LOADK                            R4 K8 ["query"]
       38 DUPTABLE                         R5 K13 [{["type"] = "string", ["description"] = "Search term. Can be empty when filtering by assetType alone (e.g. to list all packages). Supports multi-term search with '+' (e.g. 'red+car') and exact phrase with quotes (e.g. '\"red+car\"')."}]
       39 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
       41 CALL                             R2 3 1
       42 LOADK                            R4 K15 ["scope"]
       43 DUPTABLE                         R5 K18 [{["type"] = "string", ["enum"], ["description"] = "Where to search. 'auto' (default) waterfalls through all available sources. Use explicit scope to target a single source."}]
       44 NEWTABLE                         R6 0 5
       46 LOADK                            R7 K19 ["auto"]
       47 LOADK                            R8 K20 ["creator_store"]
       48 LOADK                            R9 K21 ["user"]
       49 LOADK                            R10 K22 ["group"]
       50 LOADK                            R11 K23 ["universe"]
       51 SETLIST                          R6 R7 5 [1]
       53 SETTABLEKS                       R6 R5 K16 ["enum"]
       55 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
       57 CALL                             R2 3 1
       58 LOADK                            R4 K24 ["includeSources"]
       59 DUPTABLE                         R5 K28 [{["type"] = "array", ["items"], ["description"] = "With scope='auto': only search these sources (e.g. ['user', 'creator_store'])."}]
       60 DUPTABLE                         R6 K29 [{["type"] = "string", ["enum"]}]
       61 NEWTABLE                         R7 0 4
       63 LOADK                            R8 K21 ["user"]
       64 LOADK                            R9 K22 ["group"]
       65 LOADK                            R10 K23 ["universe"]
       66 LOADK                            R11 K20 ["creator_store"]
       67 SETLIST                          R7 R8 4 [1]
       69 SETTABLEKS                       R7 R6 K16 ["enum"]
       71 SETTABLEKS                       R6 R5 K26 ["items"]
       73 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
       75 CALL                             R2 3 1
       76 LOADK                            R4 K30 ["excludeSources"]
       77 DUPTABLE                         R5 K32 [{["type"] = "array", ["items"], ["description"] = "With scope='auto': skip these sources from the waterfall."}]
       78 DUPTABLE                         R6 K29 [{["type"] = "string", ["enum"]}]
       79 NEWTABLE                         R7 0 4
       81 LOADK                            R8 K21 ["user"]
       82 LOADK                            R9 K22 ["group"]
       83 LOADK                            R10 K23 ["universe"]
       84 LOADK                            R11 K20 ["creator_store"]
       85 SETLIST                          R7 R8 4 [1]
       87 SETTABLEKS                       R7 R6 K16 ["enum"]
       89 SETTABLEKS                       R6 R5 K26 ["items"]
       91 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
       93 CALL                             R2 3 1
       94 LOADK                            R4 K33 ["groupId"]
       95 DUPTABLE                         R5 K35 [{["type"] = "string", ["description"] = "Numeric group ID to constrain group inventory searches to a single group. Only valid with scope='group'. Mutually exclusive with groupName."}]
       96 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
       98 CALL                             R2 3 1
       99 LOADK                            R4 K36 ["groupName"]
      100 DUPTABLE                         R5 K38 [{["type"] = "string", ["description"] = "Group name to constrain group inventory searches to a single group. Matched case-insensitively against the user's groups. Only valid with scope='group'. If the name doesn't match any of the user's groups, the response includes a `groups` field listing valid options. Mutually exclusive with groupId."}]
      101 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
      103 CALL                             R2 3 1
      104 LOADK                            R4 K39 ["assetType"]
      105 DUPTABLE                         R5 K41 [{["type"] = "string", ["enum"], ["description"] = "Filter by asset type. Use 'Image' for user-uploaded images (most decals/textures uploaded today are stored as Image, not Decal). Use 'Package' when the user asks about packages — packages are Models with a Package subtype, so a keyword search for 'package' won't find them."}]
      106 NEWTABLE                         R6 0 8
      108 LOADK                            R7 K42 ["Model"]
      109 LOADK                            R8 K43 ["Audio"]
      110 LOADK                            R9 K44 ["Mesh"]
      111 LOADK                            R10 K45 ["MeshPart"]
      112 LOADK                            R11 K46 ["Image"]
      113 LOADK                            R12 K47 ["Decal"]
      114 LOADK                            R13 K48 ["Video"]
      115 LOADK                            R14 K49 ["Package"]
      116 SETLIST                          R6 R7 8 [1]
      118 SETTABLEKS                       R6 R5 K16 ["enum"]
      120 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
      122 CALL                             R2 3 1
      123 LOADK                            R4 K50 ["maxResults"]
      124 DUPTABLE                         R5 K53 [{["type"] = "number", ["description"] = "Number of results to return (1-20, default 5)."}]
      125 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
      127 CALL                             R2 3 1
      128 LOADK                            R4 K54 ["priceFilter"]
      129 DUPTABLE                         R5 K56 [{["type"] = "string", ["enum"], ["description"] = "Price filter. Requires scope='creator_store'. 'free' returns only free assets, 'paid' returns only paid assets, 'all' (default) returns both."}]
      130 NEWTABLE                         R6 0 3
      132 LOADK                            R7 K57 ["free"]
      133 LOADK                            R8 K58 ["paid"]
      134 LOADK                            R9 K59 ["all"]
      135 SETLIST                          R6 R7 3 [1]
      137 SETTABLEKS                       R6 R5 K16 ["enum"]
      139 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
      141 CALL                             R2 3 1
      142 LOADK                            R4 K60 ["minPriceCents"]
      143 DUPTABLE                         R5 K62 [{["type"] = "number", ["description"] = "Minimum price in cents. Requires scope='creator_store'. Use with maxPriceCents for a price range (e.g. minPriceCents=100, maxPriceCents=5000)."}]
      144 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
      146 CALL                             R2 3 1
      147 LOADK                            R4 K63 ["maxPriceCents"]
      148 DUPTABLE                         R5 K65 [{["type"] = "number", ["description"] = "Maximum price in cents. Requires scope='creator_store'. Use with minPriceCents for a price range."}]
      149 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
      151 CALL                             R2 3 1
      152 LOADK                            R4 K66 ["verifiedCreatorsOnly"]
      153 DUPTABLE                         R5 K69 [{["type"] = "boolean", ["description"] = "Only return results from verified creators (Creator Store only)."}]
      154 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
      156 CALL                             R2 3 1
      157 LOADK                            R4 K70 ["audioMinDuration"]
      158 DUPTABLE                         R5 K72 [{["type"] = "number", ["description"] = "Minimum audio duration in seconds (only when assetType='Audio')."}]
      159 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
      161 CALL                             R2 3 1
      162 LOADK                            R4 K73 ["audioMaxDuration"]
      163 DUPTABLE                         R5 K75 [{["type"] = "number", ["description"] = "Maximum audio duration in seconds (only when assetType='Audio')."}]
      164 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
      166 CALL                             R2 3 1
      167 LOADK                            R4 K76 ["facets"]
      168 DUPTABLE                         R5 K78 [{["type"] = "array", ["items"], ["description"] = "Additional keywords to refine the search (Creator Store only, ignored for inventory scopes). Facets narrow results by related concepts — e.g. for a 'lion' search: 'mane', 'safari', 'realistic', 'animated'. Available facets depend on the query."}]
      169 DUPTABLE                         R6 K79 [{["type"] = "string"}]
      170 SETTABLEKS                       R6 R5 K26 ["items"]
      172 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
      174 CALL                             R2 3 1
      175 LOADK                            R4 K80 ["tags"]
      176 DUPTABLE                         R5 K82 [{["type"] = "array", ["items"], ["description"] = "Tags to filter by (Creator Store only, ignored for inventory scopes). Tags are category labels like 'Vehicle', 'Airplane', 'Fantasy'."}]
      177 DUPTABLE                         R6 K79 [{["type"] = "string"}]
      178 SETTABLEKS                       R6 R5 K26 ["items"]
      180 NAMECALL                         R2 R2 K14 ["addOptionalArgument"]
      182 CALL                             R2 3 1
      183 MOVE                             R4 R1
      184 NAMECALL                         R2 R2 K83 ["setHandler"]
      186 CALL                             R2 2 1
      187 DUPTABLE                         R4 K92 [{["title"] = "Search Asset", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = True}]
      188 NAMECALL                         R2 R2 K93 ["setAnnotations"]
      190 CALL                             R2 2 1
      191 NAMECALL                         R2 R2 K94 ["build"]
      193 CALL                             R2 1 1
      194 DUPTABLE                         R3 K101 [{["command"] = "search_asset", ["getDescription"], ["runToolChain"] = , ["mapToToolCall"]}]
      195 DUPCLOSURE                       R4 K102 [PROTO_41]
      196 SETTABLEKS                       R4 R3 K97 ["getDescription"]
      198 DUPCLOSURE                       R4 K103 [PROTO_42]
      199 CAPTURE                          UPVAL U10
      200 SETTABLEKS                       R4 R3 K100 ["mapToToolCall"]
      202 DUPTABLE                         R4 K105 [{"transformInitialContent"}]
      203 DUPCLOSURE                       R5 K106 [PROTO_43]
      204 CAPTURE                          UPVAL U1
      205 SETTABLEKS                       R5 R4 K104 ["transformInitialContent"]
      207 DUPTABLE                         R5 K112 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction"}]
      208 SETTABLEKS                       R2 R5 K107 ["definition"]
      210 NEWTABLE                         R6 0 1
      212 MOVE                             R7 R3
      213 SETLIST                          R6 R7 1 [1]
      215 SETTABLEKS                       R6 R5 K108 ["slashCommands"]
      217 GETUPVAL                         R7 2
      218 GETTABLEKS                       R7 R7 K113 ["FFlagAssistantSplitToolsAndWidgets"]
      220 JUMPIFNOT                        R7 ; [+2]
      221 LOADNIL                          R6
      222 JUMP                             ; [+5]
      223 NEWTABLE                         R6 0 1
      225 GETUPVAL                         R7 1
      226 SETLIST                          R6 R7 1 [1]
      228 SETTABLEKS                       R6 R5 K109 ["contentWidgets"]
      230 GETUPVAL                         R7 2
      231 GETTABLEKS                       R7 R7 K113 ["FFlagAssistantSplitToolsAndWidgets"]
      233 JUMPIFNOT                        R7 ; [+2]
      234 LOADNIL                          R6
      235 JUMP                             ; [+1]
      236 MOVE                             R6 R4
      237 SETTABLEKS                       R6 R5 K110 ["streamTransform"]
      239 GETUPVAL                         R7 2
      240 GETTABLEKS                       R7 R7 K113 ["FFlagAssistantSplitToolsAndWidgets"]
      242 JUMPIFNOT                        R7 ; [+2]
      243 LOADNIL                          R6
      244 JUMP                             ; [+2]
      245 DUPCLOSURE                       R6 K114 [PROTO_44]
      246 CAPTURE                          UPVAL U11
      247 SETTABLEKS                       R6 R5 K111 ["displayNameFunction"]
      249 RETURN                           R5 1

PROTO_46:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["Serializer"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Tools"]
       39 GETTABLEKS                       R6 R6 K14 ["ToolTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Resources"]
       46 GETTABLEKS                       R7 R7 K16 ["Localization"]
       48 GETTABLEKS                       R7 R7 K17 ["Translator"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K18 ["Types"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K20 [game]
       58 LOADK                            R10 K21 ["HttpRbxApiService"]
       59 NAMECALL                         R8 R8 K22 ["GetService"]
       61 CALL                             R8 2 1
       62 GETIMPORT                        R9 K20 [game]
       64 LOADK                            R11 K23 ["HttpService"]
       65 NAMECALL                         R9 R9 K22 ["GetService"]
       67 CALL                             R9 2 1
       68 GETIMPORT                        R10 K1 [script]
       70 LOADK                            R12 K24 ["AssetManagement"]
       71 NAMECALL                         R10 R10 K3 ["FindFirstAncestor"]
       73 CALL                             R10 2 1
       74 GETIMPORT                        R11 K5 [require]
       76 GETTABLEKS                       R12 R0 K25 ["Flags"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K5 [require]
       81 GETTABLEKS                       R13 R0 K6 ["Parent"]
       83 GETTABLEKS                       R13 R13 K26 ["Networking"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R12 K27 ["RobloxAPI"]
       88 GETTABLEKS                       R13 R13 K28 ["Url"]
       90 GETTABLEKS                       R13 R13 K29 ["new"]
       92 CALL                             R13 0 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R10 K30 ["AssetInsertTool"]
       97 GETTABLEKS                       R15 R15 K31 ["AssetInsertBridgeRegistry"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K5 [require]
      102 GETTABLEKS                       R16 R10 K32 ["AssetManagementConstants"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K5 [require]
      107 GETTABLEKS                       R17 R10 K33 ["AssetManagementGuestUtils"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K5 [require]
      112 GETTABLEKS                       R18 R10 K34 ["AssetManagementUrls"]
      114 CALL                             R17 1 1
      115 GETIMPORT                        R18 K5 [require]
      117 GETTABLEKS                       R19 R10 K35 ["AssetManagementUtils"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K5 [require]
      122 GETTABLEKS                       R20 R10 K36 ["DEPRECATED_AssetSearchContentWidget"]
      124 CALL                             R19 1 1
      125 GETTABLEKS                       R20 R3 K11 ["Util"]
      127 GETTABLEKS                       R20 R20 K37 ["ToolBuilder"]
      129 GETTABLEKS                       R21 R3 K11 ["Util"]
      131 GETTABLEKS                       R21 R21 K38 ["ToolResult"]
      133 GETTABLEKS                       R22 R5 K39 ["ToolNames"]
      135 GETTABLEKS                       R23 R15 K40 ["INVENTORY_ASSET_TYPE_MAP"]
      137 GETTABLEKS                       R24 R15 K41 ["INVENTORY_TYPE_NORMALIZE"]
      139 GETTABLEKS                       R25 R15 K42 ["CREATOR_STORE_CATEGORY_MAP"]
      141 GETTABLEKS                       R26 R15 K43 ["ASSET_TYPE_ID_TO_NAME"]
      143 GETTABLEKS                       R27 R15 K44 ["SearchSource"]
      145 GETIMPORT                        R28 K48 [Enum.AssetType.Package]
      147 GETTABLEKS                       R28 R28 K49 ["Name"]
      149 GETIMPORT                        R29 K51 [Enum.AssetType.Model]
      151 GETTABLEKS                       R29 R29 K49 ["Name"]
      153 DUPTABLE                         R30 K56 [{"searchCreatorInventory", "fetchUserGroups", "postRbxApi", "getStudioIdentity"}]
      154 DUPCLOSURE                       R31 K57 [PROTO_0]
      155 CAPTURE                          VAL R17
      156 SETTABLEKS                       R31 R30 K52 ["searchCreatorInventory"]
      158 DUPCLOSURE                       R31 K58 [PROTO_1]
      159 CAPTURE                          VAL R17
      160 SETTABLEKS                       R31 R30 K53 ["fetchUserGroups"]
      162 DUPCLOSURE                       R31 K59 [PROTO_2]
      163 CAPTURE                          VAL R8
      164 SETTABLEKS                       R31 R30 K54 ["postRbxApi"]
      166 DUPCLOSURE                       R31 K60 [PROTO_3]
      167 SETTABLEKS                       R31 R30 K55 ["getStudioIdentity"]
      169 GETTABLEKS                       R31 R18 K61 ["debugPrint"]
      171 DUPTABLE                         R32 K68 [{["auto"] = True, ["creator_store"] = True, ["user"] = True, ["group"] = True, ["universe"] = True}]
      172 DUPTABLE                         R33 K72 [{["user"] = "userids", ["group"] = "groupids", ["universe"] = "universeids"}]
      173 DUPTABLE                         R34 K76 [{["userids"] = "User", ["groupids"] = "Group", ["universeids"] = "Universe"}]
      174 LOADNIL                          R35
      175 LOADNIL                          R36
      176 NEWTABLE                         R37 0 0
      178 NEWTABLE                         R38 0 2
      180 LOADK                            R39 K77 ["StudioAssistant"]
      181 LOADK                            R40 K78 ["StudioAssetManager"]
      182 SETLIST                          R38 R39 2 [1]
      184 DUPCLOSURE                       R39 K79 [PROTO_4]
      185 DUPCLOSURE                       R40 K80 [PROTO_5]
      186 CAPTURE                          VAL R16
      187 DUPCLOSURE                       R41 K81 [PROTO_7]
      188 CAPTURE                          VAL R16
      189 DUPCLOSURE                       R42 K82 [PROTO_8]
      190 DUPCLOSURE                       R43 K83 [PROTO_13]
      191 CAPTURE                          VAL R37
      192 CAPTURE                          VAL R16
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R31
      195 DUPCLOSURE                       R44 K84 [PROTO_15]
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R37
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R31
      201 DUPCLOSURE                       R45 K85 [PROTO_16]
      202 CAPTURE                          VAL R30
      203 NEWCLOSURE                       R46 P11
      204 CAPTURE                          REF R35
      205 CAPTURE                          REF R36
      206 CAPTURE                          VAL R31
      207 CAPTURE                          VAL R30
      208 CAPTURE                          VAL R38
      209 DUPCLOSURE                       R47 K86 [PROTO_20]
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R27
      212 DUPCLOSURE                       R48 K87 [PROTO_23]
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R31
      216 CAPTURE                          VAL R30
      217 CAPTURE                          VAL R18
      218 CAPTURE                          VAL R26
      219 DUPCLOSURE                       R49 K88 [PROTO_25]
      220 CAPTURE                          VAL R31
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R27
      223 DUPCLOSURE                       R50 K89 [PROTO_26]
      224 CAPTURE                          VAL R31
      225 CAPTURE                          VAL R24
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R28
      228 CAPTURE                          VAL R27
      229 NEWTABLE                         R51 0 0
      231 DUPCLOSURE                       R52 K90 [PROTO_31]
      232 CAPTURE                          VAL R51
      233 CAPTURE                          VAL R27
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R48
      236 CAPTURE                          VAL R28
      237 CAPTURE                          VAL R31
      238 CAPTURE                          VAL R9
      239 CAPTURE                          VAL R49
      240 CAPTURE                          VAL R33
      241 CAPTURE                          VAL R23
      242 CAPTURE                          VAL R29
      243 CAPTURE                          VAL R46
      244 CAPTURE                          VAL R30
      245 CAPTURE                          VAL R50
      246 CAPTURE                          VAL R34
      247 DUPCLOSURE                       R53 K91 [PROTO_32]
      248 DUPCLOSURE                       R54 K92 [PROTO_38]
      249 CAPTURE                          VAL R31
      250 CAPTURE                          VAL R32
      251 CAPTURE                          VAL R9
      252 CAPTURE                          VAL R16
      253 CAPTURE                          VAL R1
      254 CAPTURE                          VAL R19
      255 CAPTURE                          VAL R45
      256 CAPTURE                          VAL R46
      257 CAPTURE                          VAL R47
      258 CAPTURE                          VAL R27
      259 CAPTURE                          VAL R28
      260 CAPTURE                          VAL R52
      261 CAPTURE                          VAL R11
      262 CAPTURE                          VAL R37
      263 CAPTURE                          VAL R14
      264 CAPTURE                          VAL R13
      265 DUPCLOSURE                       R55 K93 [PROTO_45]
      266 CAPTURE                          VAL R4
      267 CAPTURE                          VAL R19
      268 CAPTURE                          VAL R11
      269 CAPTURE                          VAL R37
      270 CAPTURE                          VAL R16
      271 CAPTURE                          VAL R14
      272 CAPTURE                          VAL R31
      273 CAPTURE                          VAL R54
      274 CAPTURE                          VAL R21
      275 CAPTURE                          VAL R20
      276 CAPTURE                          VAL R22
      277 CAPTURE                          VAL R6
      278 DUPTABLE                         R56 K97 [{"setupGuest", "_testing", "_deps"}]
      279 SETTABLEKS                       R55 R56 K94 ["setupGuest"]
      281 DUPTABLE                         R57 K99 [{"resetCachedGroups"}]
      282 NEWCLOSURE                       R58 P20
      283 CAPTURE                          REF R35
      284 CAPTURE                          REF R36
      285 SETTABLEKS                       R58 R57 K98 ["resetCachedGroups"]
      287 SETTABLEKS                       R57 R56 K95 ["_testing"]
      289 SETTABLEKS                       R30 R56 K96 ["_deps"]
      291 CLOSEUPVALS                      R35
      292 RETURN                           R56 1
