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
        0 DUPTABLE                         R4 K2 [{"toolArgs", "handlerArgs"}]
        1 SETTABLEKS                       R0 R4 K0 ["toolArgs"]
        3 GETTABLEKS                       R5 R1 K1 ["handlerArgs"]
        5 SETTABLEKS                       R5 R4 K1 ["handlerArgs"]
        7 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createFreshGuestContext"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 LOADNIL                          R7
        6 MOVE                             R8 R1
        7 MOVE                             R9 R2
        8 MOVE                             R10 R3
        9 CALL                             R4 6 -1
       10 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getWidgetUpdateFunctions"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["AssetSearchTool"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["RESTRICTED_externalHooks"]
        4 GETTABLEKS                       R2 R2 K2 ["sendMessage"]
        6 JUMPIFNOT                        R2 ; [+19]
        7 MOVE                             R3 R2
        8 DUPTABLE                         R4 K5 [{"text", "hidden"}]
        9 LOADK                            R6 K6 ["Please insert asset %* (\"%*\") using insert_asset. Asset type: %*."]
       10 GETTABLEKS                       R8 R1 K7 ["assetId"]
       12 GETTABLEKS                       R9 R1 K8 ["name"]
       14 GETTABLEKS                       R10 R1 K9 ["assetType"]
       16 NAMECALL                         R6 R6 K10 ["format"]
       18 CALL                             R6 4 1
       19 MOVE                             R5 R6
       20 SETTABLEKS                       R5 R4 K3 ["text"]
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K4 ["hidden"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getBridge"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+33]
        7 GETUPVAL                         R1 2
        8 LOADK                            R2 K1 ["[AssetSearchTool] AssetInsertBridgeRegistry.getBridge returned nil; falling back to sendMessage"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R3 R1 K2 ["toolArgs"]
       14 GETTABLEKS                       R3 R3 K3 ["RESTRICTED_externalHooks"]
       16 GETTABLEKS                       R3 R3 K4 ["sendMessage"]
       18 JUMPIFNOT                        R3 ; [+19]
       19 MOVE                             R4 R3
       20 DUPTABLE                         R5 K7 [{"text", "hidden"}]
       21 LOADK                            R7 K8 ["Please insert asset %* (\"%*\") using insert_asset. Asset type: %*."]
       22 GETTABLEKS                       R9 R2 K9 ["assetId"]
       24 GETTABLEKS                       R10 R2 K10 ["name"]
       26 GETTABLEKS                       R11 R2 K11 ["assetType"]
       28 NAMECALL                         R7 R7 K12 ["format"]
       30 CALL                             R7 4 1
       31 MOVE                             R6 R7
       32 SETTABLEKS                       R6 R5 K5 ["text"]
       34 LOADB                            R6 1
       35 SETTABLEKS                       R6 R5 K6 ["hidden"]
       37 CALL                             R4 1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R1 2
       40 LOADK                            R3 K13 ["[AssetSearchTool] direct insert starting: assetId=%* name=\"%*\""]
       41 GETUPVAL                         R5 5
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K10 ["name"]
       45 NAMECALL                         R3 R3 K12 ["format"]
       47 CALL                             R3 3 1
       48 MOVE                             R2 R3
       49 CALL                             R1 1 0
       50 GETTABLEKS                       R1 R0 K14 ["insertAssetAsync"]
       52 DUPTABLE                         R2 K16 [{"assetId", "assetName", "assetType"}]
       53 GETUPVAL                         R3 5
       54 SETTABLEKS                       R3 R2 K9 ["assetId"]
       56 GETUPVAL                         R3 4
       57 GETTABLEKS                       R3 R3 K10 ["name"]
       59 SETTABLEKS                       R3 R2 K15 ["assetName"]
       61 GETUPVAL                         R3 4
       62 GETTABLEKS                       R3 R3 K11 ["assetType"]
       64 SETTABLEKS                       R3 R2 K11 ["assetType"]
       66 CALL                             R1 1 1
       67 GETTABLEKS                       R2 R1 K17 ["responseInfo"]
       69 JUMPIFNOT                        R2 ; [+9]
       70 GETUPVAL                         R2 2
       71 LOADK                            R4 K18 ["[AssetSearchTool] direct insert succeeded: assetId=%*"]
       72 GETUPVAL                         R6 5
       73 NAMECALL                         R4 R4 K12 ["format"]
       75 CALL                             R4 2 1
       76 MOVE                             R3 R4
       77 CALL                             R2 1 0
       78 RETURN                           R0 0
       79 GETIMPORT                        R2 K20 [warn]
       81 LOADK                            R4 K21 ["[AssetSearchTool] direct insert reported failure: assetId=%* result=%*"]
       82 GETUPVAL                         R6 5
       83 GETTABLEKS                       R8 R1 K22 ["result"]
       85 FASTCALL1                        TOSTRING R8 ; [+2]
       86 GETIMPORT                        R7 K24 [tostring]
       88 CALL                             R7 1 1
       89 NAMECALL                         R4 R4 K12 ["format"]
       91 CALL                             R4 3 1
       92 MOVE                             R3 R4
       93 CALL                             R2 1 0
       94 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"handlerArgs"}]
        1 DUPTABLE                         R1 K5 [{"isThirdPartyRequest", "messageId", "contentId"}]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R1 K2 ["isThirdPartyRequest"]
        5 LOADK                            R2 K6 [""]
        6 SETTABLEKS                       R2 R1 K3 ["messageId"]
        8 LOADK                            R2 K6 [""]
        9 SETTABLEKS                       R2 R1 K4 ["contentId"]
       11 SETTABLEKS                       R1 R0 K0 ["handlerArgs"]
       13 GETIMPORT                        R1 K8 [xpcall]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U4
       24 CALL                             R1 2 0
       25 GETIMPORT                        R1 K10 [pcall]
       27 NEWCLOSURE                       R2 P2
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U6
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["isFree"]
        2 JUMPIFNOTEQKB                    R1 FALSE ; [+28]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["toolArgs"]
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
       32 CALL                             R1 0 1
       33 JUMPIFNOT                        R1 ; [+35]
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R2 R0 K6 ["assetId"]
       37 GETUPVAL                         R4 2
       38 GETTABLE                         R3 R4 R2
       39 JUMPIFNOT                        R3 ; [+1]
       40 RETURN                           R0 0
       41 GETUPVAL                         R3 2
       42 LOADB                            R4 1
       43 SETTABLE                         R4 R3 R2
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K8 ["getWidgetUpdateFunctions"]
       47 MOVE                             R4 R1
       48 LOADK                            R5 K9 ["AssetSearchTool"]
       49 CALL                             R3 2 1
       50 GETTABLEKS                       R4 R3 K10 ["updateWidget"]
       52 LOADB                            R6 1
       53 NEWCLOSURE                       R5 P0
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 CALL                             R4 1 0
       57 GETIMPORT                        R3 K13 [task.spawn]
       59 NEWCLOSURE                       R4 P1
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          UPVAL U3
       67 CALL                             R3 1 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R1 0
       70 GETTABLEKS                       R2 R1 K1 ["toolArgs"]
       72 GETTABLEKS                       R2 R2 K14 ["RESTRICTED_externalHooks"]
       74 GETTABLEKS                       R2 R2 K15 ["sendMessage"]
       76 JUMPIFNOT                        R2 ; [+19]
       77 MOVE                             R3 R2
       78 DUPTABLE                         R4 K18 [{"text", "hidden"}]
       79 LOADK                            R6 K19 ["Please insert asset %* (\"%*\") using insert_asset. Asset type: %*."]
       80 GETTABLEKS                       R8 R0 K6 ["assetId"]
       82 GETTABLEKS                       R9 R0 K20 ["name"]
       84 GETTABLEKS                       R10 R0 K21 ["assetType"]
       86 NAMECALL                         R6 R6 K7 ["format"]
       88 CALL                             R6 4 1
       89 MOVE                             R5 R6
       90 SETTABLEKS                       R5 R4 K16 ["text"]
       92 LOADB                            R5 1
       93 SETTABLEKS                       R5 R4 K17 ["hidden"]
       95 CALL                             R3 1 0
       96 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fetchUserGroups"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 NAMECALL                         R0 R0 K1 ["makeRequest"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R0 R0 K2 ["expect"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_19:
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

PROTO_20:
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
       18 DUPCLOSURE                       R1 K3 [PROTO_19]
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

PROTO_21:
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
       35 JUMPIFEQKNIL                     R3 ; [+19]
       37 JUMPIFEQKNIL                     R4 ; [+17]
       39 LOADNIL                          R5
       40 DUPTABLE                         R6 K7 [{"status", "error", "nextSteps"}]
       41 LOADK                            R7 K5 ["error"]
       42 SETTABLEKS                       R7 R6 K4 ["status"]
       44 LOADK                            R7 K8 ["Provide either groupId or groupName, not both."]
       45 SETTABLEKS                       R7 R6 K5 ["error"]
       47 NEWTABLE                         R7 0 1
       49 LOADK                            R8 K9 ["Drop one of the two arguments and retry."]
       50 SETLIST                          R7 R8 1 [1]
       52 SETTABLEKS                       R7 R6 K6 ["nextSteps"]
       54 RETURN                           R5 2
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K10 ["Group"]
       58 JUMPIFEQ                         R1 R5 ; [+22]
       60 LOADNIL                          R5
       61 DUPTABLE                         R6 K7 [{"status", "error", "nextSteps"}]
       62 LOADK                            R7 K5 ["error"]
       63 SETTABLEKS                       R7 R6 K4 ["status"]
       65 LOADK                            R8 K11 ["groupId/groupName only apply when scope is \"group\"; scope is \"%*\"."]
       66 MOVE                             R10 R1
       67 NAMECALL                         R8 R8 K12 ["format"]
       69 CALL                             R8 2 1
       70 MOVE                             R7 R8
       71 SETTABLEKS                       R7 R6 K5 ["error"]
       73 NEWTABLE                         R7 0 1
       75 LOADK                            R8 K13 ["Set scope='group' to search the specified group, or remove the groupId/groupName argument."]
       76 SETLIST                          R7 R8 1 [1]
       78 SETTABLEKS                       R7 R6 K6 ["nextSteps"]
       80 RETURN                           R5 2
       81 JUMPIFEQKNIL                     R3 ; [+67]
       83 FASTCALL1                        TONUMBER R3 ; [+3]
       84 MOVE                             R6 R3
       85 GETIMPORT                        R5 K15 [tonumber]
       87 CALL                             R5 1 1
       88 JUMPIFNOT                        R5 ; [+3]
       89 LOADN                            R6 0
       90 JUMPIFNOTLE                      R5 R6 ; [+22]
       92 LOADNIL                          R6
       93 DUPTABLE                         R7 K7 [{"status", "error", "nextSteps"}]
       94 LOADK                            R8 K5 ["error"]
       95 SETTABLEKS                       R8 R7 K4 ["status"]
       97 LOADK                            R9 K16 ["groupId \"%*\" is not a valid positive numeric ID."]
       98 MOVE                             R11 R3
       99 NAMECALL                         R9 R9 K12 ["format"]
      101 CALL                             R9 2 1
      102 MOVE                             R8 R9
      103 SETTABLEKS                       R8 R7 K5 ["error"]
      105 NEWTABLE                         R8 0 1
      107 LOADK                            R9 K17 ["Pass a positive numeric group ID, or use groupName to look up by name."]
      108 SETLIST                          R8 R9 1 [1]
      110 SETTABLEKS                       R8 R7 K6 ["nextSteps"]
      112 RETURN                           R6 2
      113 MOVE                             R6 R2
      114 LOADNIL                          R7
      115 LOADNIL                          R8
      116 FORGPREP                         R6
      117 GETTABLEKS                       R11 R10 K18 ["id"]
      119 JUMPIFNOTEQ                      R11 R5 ; [+4]
      121 MOVE                             R11 R5
      122 LOADNIL                          R12
      123 RETURN                           R11 2
      124 FORGLOOP                         R6 2 ; [-8]
      126 LOADNIL                          R6
      127 DUPTABLE                         R7 K20 [{"status", "error", "groups", "nextSteps"}]
      128 LOADK                            R8 K5 ["error"]
      129 SETTABLEKS                       R8 R7 K4 ["status"]
      131 LOADK                            R9 K21 ["groupId \"%*\" is not one of your groups."]
      132 MOVE                             R11 R3
      133 NAMECALL                         R9 R9 K12 ["format"]
      135 CALL                             R9 2 1
      136 MOVE                             R8 R9
      137 SETTABLEKS                       R8 R7 K5 ["error"]
      139 SETTABLEKS                       R2 R7 K19 ["groups"]
      141 NEWTABLE                         R8 0 1
      143 LOADK                            R9 K22 ["Use one of the listed group ids, or pass groupName to look up by name."]
      144 SETLIST                          R8 R9 1 [1]
      146 SETTABLEKS                       R8 R7 K6 ["nextSteps"]
      148 RETURN                           R6 2
      149 JUMPIFNOTEQKNIL                  R4 ; [+2]
      151 LOADB                            R6 0 +1
      152 LOADB                            R6 1
      153 FASTCALL2K                       ASSERT R6 K23 ; [+4]
      155 LOADK                            R7 K23 ["rawGroupName must be set when rawGroupId is nil"]
      156 GETIMPORT                        R5 K25 [assert]
      158 CALL                             R5 2 0
      159 GETIMPORT                        R5 K28 [string.lower]
      161 GETUPVAL                         R6 0
      162 GETTABLEKS                       R6 R6 K3 ["trim"]
      164 MOVE                             R7 R4
      165 CALL                             R6 1 -1
      166 CALL                             R5 -1 1
      167 MOVE                             R6 R2
      168 LOADNIL                          R7
      169 LOADNIL                          R8
      170 FORGPREP                         R6
      171 GETIMPORT                        R11 K28 [string.lower]
      173 GETTABLEKS                       R12 R10 K29 ["name"]
      175 CALL                             R11 1 1
      176 JUMPIFNOTEQ                      R11 R5 ; [+5]
      178 GETTABLEKS                       R11 R10 K18 ["id"]
      180 LOADNIL                          R12
      181 RETURN                           R11 2
      182 FORGLOOP                         R6 2 ; [-12]
      184 LOADNIL                          R6
      185 DUPTABLE                         R7 K20 [{"status", "error", "groups", "nextSteps"}]
      186 LOADK                            R8 K5 ["error"]
      187 SETTABLEKS                       R8 R7 K4 ["status"]
      189 LOADK                            R9 K30 ["groupName \"%*\" did not match any of your groups."]
      190 MOVE                             R11 R4
      191 NAMECALL                         R9 R9 K12 ["format"]
      193 CALL                             R9 2 1
      194 MOVE                             R8 R9
      195 SETTABLEKS                       R8 R7 K5 ["error"]
      197 SETTABLEKS                       R2 R7 K19 ["groups"]
      199 NEWTABLE                         R8 0 1
      201 LOADK                            R9 K31 ["Use one of the listed group names exactly, or pass a numeric groupId."]
      202 SETLIST                          R8 R9 1 [1]
      204 SETTABLEKS                       R8 R7 K6 ["nextSteps"]
      206 RETURN                           R6 2

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postRbxApi"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_24:
        0 DUPTABLE                         R1 K6 [{"query", "maxPageSize", "sortCategory", "sortDirection", "searchView", "includeOnlyVerifiedCreators"}]
        1 GETTABLEKS                       R2 R0 K7 ["keyword"]
        3 SETTABLEKS                       R2 R1 K0 ["query"]
        5 GETTABLEKS                       R3 R0 K9 ["limit"]
        7 ORK                              R2 R3 K8 [10]
        8 SETTABLEKS                       R2 R1 K1 ["maxPageSize"]
       10 LOADK                            R2 K10 ["Relevance"]
       11 SETTABLEKS                       R2 R1 K2 ["sortCategory"]
       13 LOADK                            R2 K11 ["None"]
       14 SETTABLEKS                       R2 R1 K3 ["sortDirection"]
       16 LOADK                            R2 K12 ["Full"]
       17 SETTABLEKS                       R2 R1 K4 ["searchView"]
       19 GETTABLEKS                       R3 R0 K5 ["includeOnlyVerifiedCreators"]
       21 ORK                              R2 R3 K13 [False]
       22 SETTABLEKS                       R2 R1 K5 ["includeOnlyVerifiedCreators"]
       24 GETTABLEKS                       R3 R0 K15 ["searchCategoryType"]
       26 ORK                              R2 R3 K14 ["Model"]
       27 SETTABLEKS                       R2 R1 K15 ["searchCategoryType"]
       29 GETTABLEKS                       R2 R0 K16 ["minPrice"]
       31 JUMPIFEQKNIL                     R2 ; [+5]
       33 GETTABLEKS                       R2 R0 K16 ["minPrice"]
       35 SETTABLEKS                       R2 R1 K17 ["minPriceCents"]
       37 GETTABLEKS                       R2 R0 K18 ["maxPrice"]
       39 JUMPIFEQKNIL                     R2 ; [+5]
       41 GETTABLEKS                       R2 R0 K18 ["maxPrice"]
       43 SETTABLEKS                       R2 R1 K19 ["maxPriceCents"]
       45 GETTABLEKS                       R2 R0 K20 ["facets"]
       47 JUMPIFEQKNIL                     R2 ; [+5]
       49 GETTABLEKS                       R2 R0 K20 ["facets"]
       51 SETTABLEKS                       R2 R1 K20 ["facets"]
       53 GETTABLEKS                       R2 R0 K21 ["tags"]
       55 JUMPIFEQKNIL                     R2 ; [+5]
       57 GETTABLEKS                       R2 R0 K21 ["tags"]
       59 SETTABLEKS                       R2 R1 K21 ["tags"]
       61 GETTABLEKS                       R2 R0 K22 ["isPackageFilter"]
       63 JUMPIFNOT                        R2 ; [+10]
       64 DUPTABLE                         R2 K24 [{"includedSubTypes"}]
       65 NEWTABLE                         R3 0 1
       67 LOADK                            R4 K25 ["Package"]
       68 SETLIST                          R3 R4 1 [1]
       70 SETTABLEKS                       R3 R2 K23 ["includedSubTypes"]
       72 SETTABLEKS                       R2 R1 K26 ["modelSearchFilters"]
       74 GETTABLEKS                       R2 R1 K15 ["searchCategoryType"]
       76 JUMPIFNOTEQKS                    R2 K27 ["Audio"] ; [+31]
       78 GETTABLEKS                       R2 R0 K28 ["minDuration"]
       80 JUMPIFNOTEQKNIL                  R2 ; [+5]
       82 GETTABLEKS                       R2 R0 K29 ["maxDuration"]
       84 JUMPIFEQKNIL                     R2 ; [+23]
       86 NEWTABLE                         R2 0 0
       88 SETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
       90 GETTABLEKS                       R2 R0 K28 ["minDuration"]
       92 JUMPIFNOT                        R2 ; [+6]
       93 GETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
       95 GETTABLEKS                       R3 R0 K28 ["minDuration"]
       97 SETTABLEKS                       R3 R2 K31 ["minDurationSeconds"]
       99 GETTABLEKS                       R2 R0 K29 ["maxDuration"]
      101 JUMPIFNOT                        R2 ; [+6]
      102 GETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
      104 GETTABLEKS                       R3 R0 K29 ["maxDuration"]
      106 SETTABLEKS                       R3 R2 K32 ["maxDurationSeconds"]
      108 GETUPVAL                         R3 0
      109 GETTABLEKS                       R3 R3 K33 ["APIS_URL"]
      111 LOADK                            R4 K34 ["toolbox-service/v2/assets:search"]
      112 CONCAT                           R2 R3 R4
      113 GETUPVAL                         R3 1
      114 MOVE                             R5 R1
      115 NAMECALL                         R3 R3 K35 ["JSONEncode"]
      117 CALL                             R3 2 1
      118 GETUPVAL                         R4 2
      119 LOADK                            R6 K36 ["[AssetSearchTool] fetchCreatorStoreAssets: URL=%*"]
      120 MOVE                             R8 R2
      121 NAMECALL                         R6 R6 K37 ["format"]
      123 CALL                             R6 2 1
      124 MOVE                             R5 R6
      125 CALL                             R4 1 0
      126 GETUPVAL                         R4 2
      127 LOADK                            R6 K38 ["[AssetSearchTool] fetchCreatorStoreAssets: body=%*"]
      128 MOVE                             R8 R3
      129 NAMECALL                         R6 R6 K37 ["format"]
      131 CALL                             R6 2 1
      132 MOVE                             R5 R6
      133 CALL                             R4 1 0
      134 GETIMPORT                        R4 K40 [pcall]
      136 NEWCLOSURE                       R5 P0
      137 CAPTURE                          UPVAL U3
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R3
      140 CALL                             R4 1 2
      141 JUMPIF                           R4 ; [+17]
      142 GETUPVAL                         R6 2
      143 LOADK                            R8 K41 ["[AssetSearchTool] fetchCreatorStoreAssets: FAILED error=%*"]
      144 FASTCALL1                        TOSTRING R5 ; [+3]
      145 MOVE                             R11 R5
      146 GETIMPORT                        R10 K43 [tostring]
      148 CALL                             R10 1 1
      149 NAMECALL                         R8 R8 K37 ["format"]
      151 CALL                             R8 2 1
      152 MOVE                             R7 R8
      153 CALL                             R6 1 0
      154 NEWTABLE                         R6 0 0
      156 NEWTABLE                         R7 0 0
      158 RETURN                           R6 2
      159 GETUPVAL                         R6 2
      160 LOADK                            R8 K44 ["[AssetSearchTool] fetchCreatorStoreAssets: SUCCESS bodyLen=%*"]
      161 LENGTH                           R10 R5
      162 NAMECALL                         R8 R8 K37 ["format"]
      164 CALL                             R8 2 1
      165 MOVE                             R7 R8
      166 CALL                             R6 1 0
      167 GETUPVAL                         R6 2
      168 LOADK                            R8 K45 ["[AssetSearchTool] fetchCreatorStoreAssets: preview=%*"]
      169 LOADN                            R12 1
      170 LOADN                            R13 44
      171 FASTCALL3                        STRING_SUB R5 R12 R13
      173 MOVE                             R11 R5
      174 GETIMPORT                        R10 K48 [string.sub]
      176 CALL                             R10 3 1
      177 NAMECALL                         R8 R8 K37 ["format"]
      179 CALL                             R8 2 1
      180 MOVE                             R7 R8
      181 CALL                             R6 1 0
      182 GETIMPORT                        R6 K40 [pcall]
      184 NEWCLOSURE                       R7 P1
      185 CAPTURE                          UPVAL U1
      186 CAPTURE                          VAL R5
      187 CALL                             R6 1 2
      188 JUMPIFNOT                        R6 ; [+1]
      189 JUMPIF                           R7 ; [+5]
      190 NEWTABLE                         R8 0 0
      192 NEWTABLE                         R9 0 0
      194 RETURN                           R8 2
      195 NEWTABLE                         R8 0 0
      197 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      199 JUMPIFNOT                        R9 ; [+9]
      200 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      202 GETTABLEKS                       R9 R9 K50 ["availableFacets"]
      204 JUMPIFNOT                        R9 ; [+4]
      205 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      207 GETTABLEKS                       R8 R9 K50 ["availableFacets"]
      209 NEWTABLE                         R9 0 0
      211 GETTABLEKS                       R10 R7 K51 ["creatorStoreAssets"]
      213 JUMPIF                           R10 ; [+2]
      214 NEWTABLE                         R10 0 0
      216 LOADNIL                          R11
      217 LOADNIL                          R12
      218 FORGPREP                         R10
      219 GETTABLEKS                       R15 R14 K52 ["asset"]
      221 GETTABLEKS                       R16 R14 K53 ["creator"]
      223 JUMPIF                           R16 ; [+2]
      224 NEWTABLE                         R16 0 0
      226 GETTABLEKS                       R17 R14 K54 ["creatorStoreProduct"]
      228 LOADNIL                          R18
      229 LOADN                            R19 0
      230 JUMPIFNOT                        R17 ; [+68]
      231 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      233 JUMPIFNOT                        R20 ; [+65]
      234 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      236 GETTABLEKS                       R20 R20 K56 ["quantity"]
      238 JUMPIFNOT                        R20 ; [+60]
      239 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      241 GETTABLEKS                       R21 R20 K56 ["quantity"]
      243 GETTABLEKS                       R23 R21 K58 ["significand"]
      245 ORK                              R22 R23 K57 [0]
      246 GETTABLEKS                       R24 R21 K59 ["exponent"]
      248 ORK                              R23 R24 K57 [0]
      249 LOADN                            R24 0
      250 JUMPIFNOTLT                      R24 R22 ; [+48]
      252 LOADN                            R26 10
      253 POW                              R25 R26 R23
      254 MUL                              R24 R22 R25
      255 MULK                             R27 R24 K61 [100]
      256 ADDK                             R26 R27 K60 [0.5]
      257 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      258 GETIMPORT                        R25 K64 [math.floor]
      260 CALL                             R25 1 1
      261 MOVE                             R19 R25
      262 GETTABLEKS                       R26 R20 K66 ["currencyCode"]
      264 ORK                              R25 R26 K65 ["USD"]
      265 JUMPIFNOTEQKS                    R25 K65 ["USD"] ; [+8]
      267 GETIMPORT                        R26 K67 [string.format]
      269 LOADK                            R27 K68 ["$%.2f"]
      270 MOVE                             R28 R24
      271 CALL                             R26 2 1
      272 MOVE                             R18 R26
      273 JUMP                             ; [+25]
      274 JUMPIFNOTEQKS                    R25 K69 ["GBP"] ; [+8]
      276 GETIMPORT                        R26 K67 [string.format]
      278 LOADK                            R27 K70 ["£%.2f"]
      279 MOVE                             R28 R24
      280 CALL                             R26 2 1
      281 MOVE                             R18 R26
      282 JUMP                             ; [+16]
      283 JUMPIFNOTEQKS                    R25 K71 ["EUR"] ; [+8]
      285 GETIMPORT                        R26 K67 [string.format]
      287 LOADK                            R27 K72 ["€%.2f"]
      288 MOVE                             R28 R24
      289 CALL                             R26 2 1
      290 MOVE                             R18 R26
      291 JUMP                             ; [+7]
      292 GETIMPORT                        R26 K67 [string.format]
      294 LOADK                            R27 K73 ["%s %.2f"]
      295 MOVE                             R28 R25
      296 MOVE                             R29 R24
      297 CALL                             R26 3 1
      298 MOVE                             R18 R26
      299 GETUPVAL                         R20 2
      300 LOADK                            R22 K74 ["[AssetSearchTool] fetchCreatorStoreAssets: asset %* \"%*\" priceCents=%* priceLabel=%*"]
      301 JUMPIFNOT                        R15 ; [+3]
      302 GETTABLEKS                       R24 R15 K75 ["id"]
      304 JUMPIF                           R24 ; [+1]
      305 LOADK                            R24 K76 ["?"]
      306 JUMPIFNOT                        R15 ; [+3]
      307 GETTABLEKS                       R25 R15 K77 ["name"]
      309 JUMPIF                           R25 ; [+1]
      310 LOADK                            R25 K76 ["?"]
      311 MOVE                             R26 R19
      312 ORK                              R27 R18 K78 ["free"]
      313 NAMECALL                         R22 R22 K37 ["format"]
      315 CALL                             R22 5 1
      316 MOVE                             R21 R22
      317 CALL                             R20 1 0
      318 JUMPIFNOT                        R15 ; [+3]
      319 GETTABLEKS                       R20 R15 K79 ["subTypes"]
      321 JUMPIF                           R20 ; [+2]
      322 NEWTABLE                         R20 0 0
      324 GETUPVAL                         R21 4
      325 GETTABLEKS                       R21 R21 K80 ["isPackageAsset"]
      327 LOADNIL                          R22
      328 MOVE                             R23 R20
      329 CALL                             R21 2 1
      330 JUMPIFNOT                        R21 ; [+2]
      331 LOADK                            R22 K25 ["Package"]
      332 JUMP                             ; [+7]
      333 GETUPVAL                         R24 5
      334 MOVE                             R25 R15
      335 JUMPIFNOT                        R25 ; [+2]
      336 GETTABLEKS                       R25 R15 K81 ["assetTypeId"]
      338 GETTABLE                         R23 R24 R25
      339 ORK                              R22 R23 K14 ["Model"]
      340 DUPTABLE                         R25 K84 [{"Asset", "Creator"}]
      341 DUPTABLE                         R26 K93 [{"Id", "Name", "Description", "TypeId", "TypeName", "Price", "PriceLabel", "SubTypes"}]
      342 MOVE                             R27 R15
      343 JUMPIFNOT                        R27 ; [+2]
      344 GETTABLEKS                       R27 R15 K75 ["id"]
      346 SETTABLEKS                       R27 R26 K85 ["Id"]
      348 JUMPIFNOT                        R15 ; [+3]
      349 GETTABLEKS                       R27 R15 K77 ["name"]
      351 JUMPIF                           R27 ; [+1]
      352 LOADK                            R27 K94 ["Unknown"]
      353 SETTABLEKS                       R27 R26 K86 ["Name"]
      355 JUMPIFNOT                        R15 ; [+3]
      356 GETTABLEKS                       R27 R15 K95 ["description"]
      358 JUMPIF                           R27 ; [+1]
      359 LOADNIL                          R27
      360 SETTABLEKS                       R27 R26 K87 ["Description"]
      362 JUMPIFNOT                        R15 ; [+3]
      363 GETTABLEKS                       R27 R15 K81 ["assetTypeId"]
      365 JUMPIF                           R27 ; [+1]
      366 LOADN                            R27 10
      367 SETTABLEKS                       R27 R26 K88 ["TypeId"]
      369 SETTABLEKS                       R22 R26 K89 ["TypeName"]
      371 SETTABLEKS                       R19 R26 K90 ["Price"]
      373 SETTABLEKS                       R18 R26 K91 ["PriceLabel"]
      375 SETTABLEKS                       R20 R26 K92 ["SubTypes"]
      377 SETTABLEKS                       R26 R25 K82 ["Asset"]
      379 DUPTABLE                         R26 K97 [{"Name", "Id", "IsVerifiedCreator"}]
      380 GETTABLEKS                       R28 R16 K77 ["name"]
      382 ORK                              R27 R28 K94 ["Unknown"]
      383 SETTABLEKS                       R27 R26 K86 ["Name"]
      385 GETTABLEKS                       R27 R16 K98 ["userId"]
      387 SETTABLEKS                       R27 R26 K85 ["Id"]
      389 GETTABLEKS                       R28 R16 K99 ["verified"]
      391 ORK                              R27 R28 K13 [False]
      392 SETTABLEKS                       R27 R26 K96 ["IsVerifiedCreator"]
      394 SETTABLEKS                       R26 R25 K83 ["Creator"]
      396 FASTCALL2                        TABLE_INSERT R9 R25 ; [+4]
      398 MOVE                             R24 R9
      399 GETIMPORT                        R23 K102 [table.insert]
      401 CALL                             R23 2 0
      402 FORGLOOP                         R10 2 ; [-184]
      404 GETUPVAL                         R10 2
      405 LOADK                            R12 K103 ["[AssetSearchTool] fetchCreatorStoreAssets: parsed %* results, %* available facets"]
      406 LENGTH                           R14 R9
      407 LENGTH                           R15 R8
      408 NAMECALL                         R12 R12 K37 ["format"]
      410 CALL                             R12 3 1
      411 MOVE                             R11 R12
      412 CALL                             R10 1 0
      413 MOVE                             R10 R9
      414 MOVE                             R11 R8
      415 RETURN                           R10 2

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_26:
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
      118 JUMPIFNOT                        R11 ; [+67]
      119 GETTABLEKS                       R13 R11 K23 ["Id"]
      121 JUMPIFNOT                        R13 ; [+64]
      122 GETTABLEKS                       R14 R11 K25 ["TypeName"]
      124 ORK                              R13 R14 K24 ["Unknown"]
      125 DUPTABLE                         R16 K36 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "priceCents", "priceLabel", "isFree"}]
      126 GETTABLEKS                       R18 R11 K23 ["Id"]
      128 FASTCALL1                        TOSTRING R18 ; [+2]
      129 GETIMPORT                        R17 K9 [tostring]
      131 CALL                             R17 1 1
      132 SETTABLEKS                       R17 R16 K26 ["assetId"]
      134 GETTABLEKS                       R18 R11 K37 ["Name"]
      136 ORK                              R17 R18 K24 ["Unknown"]
      137 SETTABLEKS                       R17 R16 K27 ["name"]
      139 GETTABLEKS                       R17 R11 K38 ["Description"]
      141 SETTABLEKS                       R17 R16 K28 ["description"]
      143 SETTABLEKS                       R13 R16 K29 ["assetType"]
      145 GETUPVAL                         R17 2
      146 GETTABLEKS                       R17 R17 K39 ["CreatorStore"]
      148 SETTABLEKS                       R17 R16 K30 ["source"]
      150 LOADNIL                          R17
      151 SETTABLEKS                       R17 R16 K31 ["location"]
      153 GETTABLEKS                       R17 R12 K37 ["Name"]
      155 JUMPIF                           R17 ; [+4]
      156 GETTABLEKS                       R17 R12 K27 ["name"]
      158 JUMPIF                           R17 ; [+1]
      159 LOADNIL                          R17
      160 SETTABLEKS                       R17 R16 K32 ["creatorName"]
      162 GETTABLEKS                       R18 R11 K41 ["Price"]
      164 ORK                              R17 R18 K40 [0]
      165 SETTABLEKS                       R17 R16 K33 ["priceCents"]
      167 GETTABLEKS                       R17 R11 K42 ["PriceLabel"]
      169 SETTABLEKS                       R17 R16 K34 ["priceLabel"]
      171 GETTABLEKS                       R19 R11 K41 ["Price"]
      173 ORK                              R18 R19 K40 [0]
      174 JUMPIFEQKN                       R18 K40 [0] ; [+2]
      176 LOADB                            R17 0 +1
      177 LOADB                            R17 1
      178 SETTABLEKS                       R17 R16 K35 ["isFree"]
      180 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      182 MOVE                             R15 R4
      183 GETIMPORT                        R14 K45 [table.insert]
      185 CALL                             R14 2 0
      186 FORGLOOP                         R6 2 ; [-84]
      188 MOVE                             R6 R4
      189 MOVE                             R7 R3
      190 RETURN                           R6 2

PROTO_27:
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
       52 JUMPIFNOT                        R11 ; [+207]
       53 GETTABLEKS                       R12 R11 K11 ["assetId"]
       55 JUMPIF                           R12 ; [+3]
       56 GETTABLEKS                       R12 R11 K12 ["id"]
       58 JUMPIFNOT                        R12 ; [+201]
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
      220 DUPTABLE                         R21 K43 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "creatorId", "priceCents", "isFree"}]
      221 SETTABLEKS                       R12 R21 K11 ["assetId"]
      223 GETTABLEKS                       R22 R11 K34 ["displayName"]
      225 JUMPIF                           R22 ; [+4]
      226 GETTABLEKS                       R22 R11 K30 ["name"]
      228 JUMPIF                           R22 ; [+1]
      229 LOADK                            R22 K17 ["Unknown"]
      230 SETTABLEKS                       R22 R21 K30 ["name"]
      232 LOADNIL                          R22
      233 SETTABLEKS                       R22 R21 K36 ["description"]
      235 SETTABLEKS                       R14 R21 K15 ["assetType"]
      237 GETUPVAL                         R22 4
      238 GETTABLEKS                       R22 R22 K44 ["Inventory"]
      240 SETTABLEKS                       R22 R21 K37 ["source"]
      242 SETTABLEKS                       R1 R21 K38 ["location"]
      244 SETTABLEKS                       R17 R21 K39 ["creatorName"]
      246 SETTABLEKS                       R16 R21 K40 ["creatorId"]
      248 LOADN                            R22 0
      249 SETTABLEKS                       R22 R21 K41 ["priceCents"]
      251 LOADB                            R22 1
      252 SETTABLEKS                       R22 R21 K42 ["isFree"]
      254 FASTCALL2                        TABLE_INSERT R3 R21 ; [+4]
      256 MOVE                             R20 R3
      257 GETIMPORT                        R19 K46 [table.insert]
      259 CALL                             R19 2 0
      260 FORGLOOP                         R5 2 ; [-215]
      262 RETURN                           R3 1

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["makeRequest"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["expect"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["makeRequest"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["expect"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_32:
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
       93 JUMPIFNOTEQ                      R0 R11 ; [+110]
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
      135 DUPTABLE                         R16 K23 [{"Type", "Id"}]
      136 LOADK                            R17 K12 ["Group"]
      137 SETTABLEKS                       R17 R16 K21 ["Type"]
      139 SETTABLEKS                       R11 R16 K22 ["Id"]
      141 MOVE                             R17 R3
      142 LOADK                            R18 K24 [""]
      143 CALL                             R13 5 1
      144 GETUPVAL                         R14 5
      145 LOADK                            R16 K25 ["[AssetSearchTool] group search: groupId=%* URL=%*"]
      146 MOVE                             R18 R11
      147 GETTABLEKS                       R19 R13 K26 ["getUrl"]
      149 CALL                             R19 0 1
      150 NAMECALL                         R16 R16 K6 ["format"]
      152 CALL                             R16 3 1
      153 MOVE                             R15 R16
      154 CALL                             R14 1 0
      155 GETIMPORT                        R14 K2 [pcall]
      157 NEWCLOSURE                       R15 P2
      158 CAPTURE                          VAL R13
      159 CALL                             R14 1 2
      160 JUMPIFNOT                        R14 ; [+4]
      161 JUMPIFNOT                        R15 ; [+3]
      162 GETTABLEKS                       R16 R15 K27 ["responseBody"]
      164 JUMPIF                           R16 ; [+17]
      165 GETUPVAL                         R16 5
      166 LOADK                            R18 K28 ["[AssetSearchTool] group search: FAILED: %*"]
      167 FASTCALL1                        TOSTRING R15 ; [+3]
      168 MOVE                             R21 R15
      169 GETIMPORT                        R20 K5 [tostring]
      171 CALL                             R20 1 1
      172 NAMECALL                         R18 R18 K6 ["format"]
      174 CALL                             R18 2 1
      175 MOVE                             R17 R18
      176 CALL                             R16 1 0
      177 NEWTABLE                         R16 0 0
      179 NEWTABLE                         R17 0 0
      181 RETURN                           R16 2
      182 GETUPVAL                         R16 13
      183 GETTABLEKS                       R17 R15 K27 ["responseBody"]
      185 GETUPVAL                         R18 1
      186 GETTABLEKS                       R18 R18 K12 ["Group"]
      188 MOVE                             R19 R12
      189 CALL                             R16 3 1
      190 GETUPVAL                         R17 5
      191 LOADK                            R19 K29 ["[AssetSearchTool] group search: got %* items"]
      192 LENGTH                           R21 R16
      193 NAMECALL                         R19 R19 K6 ["format"]
      195 CALL                             R19 2 1
      196 MOVE                             R18 R19
      197 CALL                             R17 1 0
      198 MOVE                             R17 R10
      199 MOVE                             R18 R16
      200 CALL                             R17 1 1
      201 NEWTABLE                         R18 0 0
      203 RETURN                           R17 2
      204 LOADNIL                          R11
      205 GETUPVAL                         R12 1
      206 GETTABLEKS                       R12 R12 K30 ["User"]
      208 JUMPIFNOTEQ                      R0 R12 ; [+4]
      210 GETTABLEKS                       R11 R4 K31 ["userId"]
      212 JUMP                             ; [+7]
      213 GETUPVAL                         R12 1
      214 GETTABLEKS                       R12 R12 K32 ["Universe"]
      216 JUMPIFNOTEQ                      R0 R12 ; [+3]
      218 GETTABLEKS                       R11 R4 K33 ["universeId"]
      220 JUMPIF                           R11 ; [+5]
      221 NEWTABLE                         R12 0 0
      223 NEWTABLE                         R13 0 0
      225 RETURN                           R12 2
      226 DUPTABLE                         R12 K23 [{"Type", "Id"}]
      227 GETUPVAL                         R14 14
      228 GETTABLE                         R13 R14 R7
      229 SETTABLEKS                       R13 R12 K21 ["Type"]
      231 FASTCALL1                        TONUMBER R11 ; [+3]
      232 MOVE                             R14 R11
      233 GETIMPORT                        R13 K16 [tonumber]
      235 CALL                             R13 1 1
      236 SETTABLEKS                       R13 R12 K22 ["Id"]
      238 GETUPVAL                         R13 12
      239 GETTABLEKS                       R13 R13 K19 ["searchCreatorInventory"]
      241 GETUPVAL                         R14 6
      242 MOVE                             R16 R1
      243 NAMECALL                         R14 R14 K20 ["UrlEncode"]
      245 CALL                             R14 2 1
      246 MOVE                             R15 R9
      247 MOVE                             R16 R12
      248 MOVE                             R17 R3
      249 LOADK                            R18 K24 [""]
      250 CALL                             R13 5 1
      251 GETUPVAL                         R14 5
      252 LOADK                            R16 K34 ["[AssetSearchTool] searchInventory: URL=%*"]
      253 GETTABLEKS                       R18 R13 K26 ["getUrl"]
      255 CALL                             R18 0 1
      256 NAMECALL                         R16 R16 K6 ["format"]
      258 CALL                             R16 2 1
      259 MOVE                             R15 R16
      260 CALL                             R14 1 0
      261 GETIMPORT                        R14 K2 [pcall]
      263 NEWCLOSURE                       R15 P3
      264 CAPTURE                          VAL R13
      265 CALL                             R14 1 2
      266 JUMPIF                           R14 ; [+17]
      267 GETUPVAL                         R16 5
      268 LOADK                            R18 K35 ["[AssetSearchTool] searchInventory: request FAILED: %*"]
      269 FASTCALL1                        TOSTRING R15 ; [+3]
      270 MOVE                             R21 R15
      271 GETIMPORT                        R20 K5 [tostring]
      273 CALL                             R20 1 1
      274 NAMECALL                         R18 R18 K6 ["format"]
      276 CALL                             R18 2 1
      277 MOVE                             R17 R18
      278 CALL                             R16 1 0
      279 NEWTABLE                         R16 0 0
      281 NEWTABLE                         R17 0 0
      283 RETURN                           R16 2
      284 GETUPVAL                         R16 5
      285 LOADK                            R17 K36 ["[AssetSearchTool] searchInventory: SUCCESS"]
      286 CALL                             R16 1 0
      287 GETUPVAL                         R16 13
      288 GETTABLEKS                       R17 R15 K27 ["responseBody"]
      290 MOVE                             R18 R0
      291 CALL                             R16 2 1
      292 MOVE                             R17 R10
      293 MOVE                             R18 R16
      294 CALL                             R17 1 1
      295 NEWTABLE                         R18 0 0
      297 RETURN                           R17 2

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K8 [{"type", "mode", "query", "assetType", "resultCount", "results", "expanded"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K9 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K10 ["Modes"]
       13 GETTABLEKS                       R4 R4 K11 ["Results"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["query"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["assetType"]
       23 SETTABLEKS                       R4 R3 K4 ["assetType"]
       25 LOADN                            R4 0
       26 SETTABLEKS                       R4 R3 K5 ["resultCount"]
       28 NEWTABLE                         R4 0 0
       30 SETTABLEKS                       R4 R3 K6 ["results"]
       32 LOADB                            R4 1
       33 SETTABLEKS                       R4 R3 K7 ["expanded"]
       35 CALL                             R1 2 0
       36 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateWidget"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K9 [{"type", "mode", "query", "assetType", "resultCount", "results", "expanded", "onItemClicked"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K10 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K11 ["Modes"]
       13 GETTABLEKS                       R4 R4 K12 ["Results"]
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
       32 LOADB                            R4 1
       33 SETTABLEKS                       R4 R3 K7 ["expanded"]
       35 GETUPVAL                         R4 6
       36 SETTABLEKS                       R4 R3 K8 ["onItemClicked"]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_39:
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
       15 GETTABLEKS                       R6 R0 K9 ["toolArgs"]
       17 GETTABLEKS                       R6 R6 K10 ["environment"]
       19 GETUPVAL                         R7 0
       20 LOADK                            R9 K11 ["[AssetSearchTool] === SEARCH START === query=\"%*\" scope=%* maxResults=%* assetType=%*"]
       21 MOVE                             R11 R3
       22 MOVE                             R12 R4
       23 MOVE                             R13 R5
       24 GETTABLEKS                       R15 R1 K13 ["assetType"]
       26 ORK                              R14 R15 K12 ["nil"]
       27 NAMECALL                         R9 R9 K14 ["format"]
       29 CALL                             R9 5 1
       30 MOVE                             R8 R9
       31 CALL                             R7 1 0
       32 GETUPVAL                         R8 1
       33 GETTABLE                         R7 R8 R4
       34 JUMPIF                           R7 ; [+24]
       35 GETUPVAL                         R7 2
       36 DUPTABLE                         R9 K18 [{"status", "error", "nextSteps"}]
       37 LOADK                            R10 K16 ["error"]
       38 SETTABLEKS                       R10 R9 K15 ["status"]
       40 LOADK                            R11 K19 ["Invalid scope: \"%*\". Must be one of: auto, creator_store, user, group, universe"]
       41 MOVE                             R13 R4
       42 NAMECALL                         R11 R11 K14 ["format"]
       44 CALL                             R11 2 1
       45 MOVE                             R10 R11
       46 SETTABLEKS                       R10 R9 K16 ["error"]
       48 NEWTABLE                         R10 0 1
       50 LOADK                            R11 K20 ["Use one of the valid scope values: auto, creator_store, user, group, universe"]
       51 SETLIST                          R10 R11 1 [1]
       53 SETTABLEKS                       R10 R9 K17 ["nextSteps"]
       55 NAMECALL                         R7 R7 K21 ["JSONEncode"]
       57 CALL                             R7 2 -1
       58 RETURN                           R7 -1
       59 GETTABLEKS                       R7 R1 K22 ["includeSources"]
       61 JUMPIFNOT                        R7 ; [+22]
       62 GETTABLEKS                       R7 R1 K23 ["excludeSources"]
       64 JUMPIFNOT                        R7 ; [+19]
       65 GETUPVAL                         R7 2
       66 DUPTABLE                         R9 K18 [{"status", "error", "nextSteps"}]
       67 LOADK                            R10 K16 ["error"]
       68 SETTABLEKS                       R10 R9 K15 ["status"]
       70 LOADK                            R10 K24 ["Cannot provide both includeSources and excludeSources"]
       71 SETTABLEKS                       R10 R9 K16 ["error"]
       73 NEWTABLE                         R10 0 1
       75 LOADK                            R11 K25 ["Use either includeSources OR excludeSources, not both"]
       76 SETLIST                          R10 R11 1 [1]
       78 SETTABLEKS                       R10 R9 K17 ["nextSteps"]
       80 NAMECALL                         R7 R7 K21 ["JSONEncode"]
       82 CALL                             R7 2 -1
       83 RETURN                           R7 -1
       84 JUMPIFEQKS                       R4 K2 ["auto"] ; [+31]
       86 GETTABLEKS                       R7 R1 K22 ["includeSources"]
       88 JUMPIF                           R7 ; [+3]
       89 GETTABLEKS                       R7 R1 K23 ["excludeSources"]
       91 JUMPIFNOT                        R7 ; [+24]
       92 GETUPVAL                         R7 2
       93 DUPTABLE                         R9 K18 [{"status", "error", "nextSteps"}]
       94 LOADK                            R10 K16 ["error"]
       95 SETTABLEKS                       R10 R9 K15 ["status"]
       97 LOADK                            R11 K26 ["includeSources and excludeSources only apply when scope is \"auto\", but scope is \"%*\""]
       98 MOVE                             R13 R4
       99 NAMECALL                         R11 R11 K14 ["format"]
      101 CALL                             R11 2 1
      102 MOVE                             R10 R11
      103 SETTABLEKS                       R10 R9 K16 ["error"]
      105 NEWTABLE                         R10 0 1
      107 LOADK                            R11 K27 ["Remove includeSources/excludeSources, or change scope to 'auto'"]
      108 SETLIST                          R10 R11 1 [1]
      110 SETTABLEKS                       R10 R9 K17 ["nextSteps"]
      112 NAMECALL                         R7 R7 K21 ["JSONEncode"]
      114 CALL                             R7 2 -1
      115 RETURN                           R7 -1
      116 GETUPVAL                         R7 3
      117 GETTABLEKS                       R7 R7 K28 ["getWidgetUpdateFunctions"]
      119 MOVE                             R8 R0
      120 LOADK                            R9 K29 ["AssetSearchTool"]
      121 CALL                             R7 2 1
      122 GETTABLEKS                       R8 R7 K30 ["updateWidget"]
      124 NEWCLOSURE                       R9 P0
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U5
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R1
      129 CALL                             R8 1 0
      130 NEWCLOSURE                       R8 P1
      131 CAPTURE                          VAL R7
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          UPVAL U5
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R1
      136 GETUPVAL                         R9 0
      137 LOADK                            R10 K31 ["[AssetSearchTool] Discovering context..."]
      138 CALL                             R9 1 0
      139 GETIMPORT                        R9 K33 [pcall]
      141 NEWCLOSURE                       R10 P2
      142 CAPTURE                          UPVAL U6
      143 CAPTURE                          VAL R6
      144 CALL                             R9 1 2
      145 JUMPIF                           R9 ; [+39]
      146 GETUPVAL                         R11 0
      147 LOADK                            R13 K34 ["[AssetSearchTool] discoverContext threw: %*"]
      148 FASTCALL1                        TOSTRING R10 ; [+3]
      149 MOVE                             R16 R10
      150 GETIMPORT                        R15 K36 [tostring]
      152 CALL                             R15 1 1
      153 NAMECALL                         R13 R13 K14 ["format"]
      155 CALL                             R13 2 1
      156 MOVE                             R12 R13
      157 CALL                             R11 1 0
      158 GETTABLEKS                       R11 R7 K30 ["updateWidget"]
      160 NEWCLOSURE                       R12 P3
      161 CAPTURE                          UPVAL U4
      162 CAPTURE                          UPVAL U5
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R1
      165 CALL                             R11 1 0
      166 GETUPVAL                         R11 2
      167 DUPTABLE                         R13 K18 [{"status", "error", "nextSteps"}]
      168 LOADK                            R14 K16 ["error"]
      169 SETTABLEKS                       R14 R13 K15 ["status"]
      171 LOADK                            R14 K37 ["Failed to discover Studio context"]
      172 SETTABLEKS                       R14 R13 K16 ["error"]
      174 NEWTABLE                         R14 0 1
      176 LOADK                            R15 K38 ["Retry the search. If this persists, the Studio session may need to be restarted"]
      177 SETLIST                          R14 R15 1 [1]
      179 SETTABLEKS                       R14 R13 K17 ["nextSteps"]
      181 NAMECALL                         R11 R11 K21 ["JSONEncode"]
      183 CALL                             R11 2 -1
      184 RETURN                           R11 -1
      185 GETUPVAL                         R11 0
      186 LOADK                            R13 K39 ["[AssetSearchTool] Context: userId=%* universeId=%* groupId=%*"]
      187 GETTABLEKS                       R15 R10 K40 ["userId"]
      189 GETTABLEKS                       R17 R10 K41 ["universeId"]
      191 ORK                              R16 R17 K12 ["nil"]
      192 GETTABLEKS                       R18 R10 K42 ["groupId"]
      194 ORK                              R17 R18 K12 ["nil"]
      195 NAMECALL                         R13 R13 K14 ["format"]
      197 CALL                             R13 4 1
      198 MOVE                             R12 R13
      199 CALL                             R11 1 0
      200 LOADNIL                          R11
      201 GETTABLEKS                       R12 R1 K42 ["groupId"]
      203 JUMPIF                           R12 ; [+3]
      204 GETTABLEKS                       R12 R1 K43 ["groupName"]
      206 JUMPIFNOT                        R12 ; [+34]
      207 GETUPVAL                         R12 7
      208 MOVE                             R13 R10
      209 CALL                             R12 1 1
      210 LOADNIL                          R13
      211 GETUPVAL                         R14 8
      212 MOVE                             R15 R1
      213 MOVE                             R16 R4
      214 MOVE                             R17 R12
      215 CALL                             R14 3 2
      216 MOVE                             R11 R14
      217 MOVE                             R13 R15
      218 JUMPIFNOT                        R13 ; [+14]
      219 GETTABLEKS                       R14 R7 K30 ["updateWidget"]
      221 NEWCLOSURE                       R15 P3
      222 CAPTURE                          UPVAL U4
      223 CAPTURE                          UPVAL U5
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R1
      226 CALL                             R14 1 0
      227 GETUPVAL                         R14 2
      228 MOVE                             R16 R13
      229 NAMECALL                         R14 R14 K21 ["JSONEncode"]
      231 CALL                             R14 2 -1
      232 RETURN                           R14 -1
      233 GETUPVAL                         R14 0
      234 LOADK                            R16 K44 ["[AssetSearchTool] effectiveGroupId=%*"]
      235 ORK                              R18 R11 K12 ["nil"]
      236 NAMECALL                         R16 R16 K14 ["format"]
      238 CALL                             R16 2 1
      239 MOVE                             R15 R16
      240 CALL                             R14 1 0
      241 LOADNIL                          R12
      242 GETTABLEKS                       R13 R10 K45 ["creatorType"]
      244 GETIMPORT                        R14 K49 [Enum.CreatorType.Group]
      246 JUMPIFNOTEQ                      R13 R14 ; [+24]
      248 GETTABLEKS                       R13 R10 K50 ["creatorId"]
      250 JUMPIFNOT                        R13 ; [+20]
      251 GETTABLEKS                       R14 R10 K50 ["creatorId"]
      253 FASTCALL1                        TONUMBER R14 ; [+2]
      254 GETIMPORT                        R13 K52 [tonumber]
      256 CALL                             R13 1 1
      257 JUMPIFNOT                        R13 ; [+13]
      258 GETUPVAL                         R14 7
      259 MOVE                             R15 R10
      260 CALL                             R14 1 3
      261 FORGPREP                         R14
      262 GETTABLEKS                       R19 R18 K53 ["id"]
      264 JUMPIFNOTEQ                      R19 R13 ; [+4]
      266 GETTABLEKS                       R12 R18 K54 ["name"]
      268 JUMP                             ; [+2]
      269 FORGLOOP                         R14 2 ; [-8]
      271 GETTABLEKS                       R14 R10 K45 ["creatorType"]
      273 JUMPIFNOT                        R14 ; [+5]
      274 GETTABLEKS                       R13 R10 K45 ["creatorType"]
      276 GETTABLEKS                       R13 R13 K55 ["Name"]
      278 JUMP                             ; [+1]
      279 LOADNIL                          R13
      280 DUPTABLE                         R14 K58 [{"userId", "universeId", "isPublished", "creatorType", "creatorId", "creatorName"}]
      281 GETTABLEKS                       R15 R10 K40 ["userId"]
      283 SETTABLEKS                       R15 R14 K40 ["userId"]
      285 GETTABLEKS                       R15 R10 K41 ["universeId"]
      287 SETTABLEKS                       R15 R14 K41 ["universeId"]
      289 GETTABLEKS                       R16 R10 K41 ["universeId"]
      291 JUMPIFNOTEQKNIL                  R16 ; [+2]
      293 LOADB                            R15 0 +1
      294 LOADB                            R15 1
      295 SETTABLEKS                       R15 R14 K56 ["isPublished"]
      297 SETTABLEKS                       R13 R14 K45 ["creatorType"]
      299 GETTABLEKS                       R15 R10 K50 ["creatorId"]
      301 SETTABLEKS                       R15 R14 K50 ["creatorId"]
      303 SETTABLEKS                       R12 R14 K57 ["creatorName"]
      305 NEWTABLE                         R15 0 0
      307 NEWTABLE                         R16 0 0
      309 NEWTABLE                         R17 0 0
      311 NEWTABLE                         R18 0 0
      313 JUMPIFNOTEQKS                    R4 K2 ["auto"] ; [+255]
      315 NEWTABLE                         R19 0 4
      317 GETUPVAL                         R20 9
      318 GETTABLEKS                       R20 R20 K59 ["Universe"]
      320 GETUPVAL                         R21 9
      321 GETTABLEKS                       R21 R21 K48 ["Group"]
      323 GETUPVAL                         R22 9
      324 GETTABLEKS                       R22 R22 K60 ["User"]
      326 GETUPVAL                         R23 9
      327 GETTABLEKS                       R23 R23 K61 ["CreatorStore"]
      329 SETLIST                          R19 R20 4 [1]
      331 GETTABLEKS                       R20 R1 K22 ["includeSources"]
      333 JUMPIFNOT                        R20 ; [+17]
      334 NEWTABLE                         R19 0 0
      336 GETTABLEKS                       R20 R1 K22 ["includeSources"]
      338 LOADNIL                          R21
      339 LOADNIL                          R22
      340 FORGPREP                         R20
      341 FASTCALL2                        TABLE_INSERT R19 R24 ; [+5]
      343 MOVE                             R26 R19
      344 MOVE                             R27 R24
      345 GETIMPORT                        R25 K64 [table.insert]
      347 CALL                             R25 2 0
      348 FORGLOOP                         R20 2 ; [-8]
      350 JUMP                             ; [+32]
      351 GETTABLEKS                       R20 R1 K23 ["excludeSources"]
      353 JUMPIFNOT                        R20 ; [+29]
      354 NEWTABLE                         R20 0 0
      356 GETTABLEKS                       R21 R1 K23 ["excludeSources"]
      358 LOADNIL                          R22
      359 LOADNIL                          R23
      360 FORGPREP                         R21
      361 LOADB                            R26 1
      362 SETTABLE                         R26 R20 R25
      363 FORGLOOP                         R21 2 ; [-3]
      365 NEWTABLE                         R21 0 0
      367 MOVE                             R22 R19
      368 LOADNIL                          R23
      369 LOADNIL                          R24
      370 FORGPREP                         R22
      371 GETTABLE                         R27 R20 R26
      372 JUMPIF                           R27 ; [+7]
      373 FASTCALL2                        TABLE_INSERT R21 R26 ; [+5]
      375 MOVE                             R28 R21
      376 MOVE                             R29 R26
      377 GETIMPORT                        R27 K64 [table.insert]
      379 CALL                             R27 2 0
      380 FORGLOOP                         R22 2 ; [-10]
      382 MOVE                             R19 R21
      383 GETUPVAL                         R20 0
      384 LOADK                            R22 K65 ["[AssetSearchTool] Auto waterfall sourceOrder: %*"]
      385 GETIMPORT                        R24 K67 [table.concat]
      387 MOVE                             R25 R19
      388 LOADK                            R26 K68 [", "]
      389 CALL                             R24 2 1
      390 NAMECALL                         R22 R22 K14 ["format"]
      392 CALL                             R22 2 1
      393 MOVE                             R21 R22
      394 CALL                             R20 1 0
      395 NEWTABLE                         R20 0 0
      397 GETTABLEKS                       R23 R1 K69 ["minPriceCents"]
      399 GETTABLEKS                       R24 R1 K70 ["maxPriceCents"]
      401 GETTABLEKS                       R25 R1 K71 ["priceFilter"]
      403 JUMPIFNOTEQKS                    R25 K72 ["free"] ; [+3]
      405 LOADN                            R24 0
      406 JUMP                             ; [+5]
      407 GETTABLEKS                       R25 R1 K71 ["priceFilter"]
      409 JUMPIFNOTEQKS                    R25 K73 ["paid"] ; [+2]
      411 ORK                              R23 R23 K74 [1]
      412 MOVE                             R21 R23
      413 MOVE                             R22 R24
      414 MOVE                             R23 R19
      415 LOADNIL                          R24
      416 LOADNIL                          R25
      417 FORGPREP                         R23
      418 LENGTH                           R28 R15
      419 JUMPIFNOTLE                      R5 R28 ; [+10]
      421 GETUPVAL                         R28 0
      422 LOADK                            R30 K75 ["[AssetSearchTool] Waterfall: reached maxResults=%*, stopping"]
      423 MOVE                             R32 R5
      424 NAMECALL                         R30 R30 K14 ["format"]
      426 CALL                             R30 2 1
      427 MOVE                             R29 R30
      428 CALL                             R28 1 0
      429 JUMP                             ; [+387]
      430 GETUPVAL                         R28 9
      431 GETTABLEKS                       R28 R28 K48 ["Group"]
      433 JUMPIFNOTEQ                      R27 R28 ; [+13]
      435 GETTABLEKS                       R28 R10 K42 ["groupId"]
      437 JUMPIF                           R28 ; [+9]
      438 GETUPVAL                         R28 0
      439 LOADK                            R29 K76 ["[AssetSearchTool] Waterfall: skipping \"group\" (universe has no owning group)"]
      440 CALL                             R28 1 0
      441 GETUPVAL                         R28 9
      442 GETTABLEKS                       R28 R28 K48 ["Group"]
      444 LOADK                            R29 K77 ["this universe is not owned by a group"]
      445 SETTABLE                         R29 R18 R28
      446 JUMP                             ; [+119]
      447 GETUPVAL                         R28 9
      448 GETTABLEKS                       R28 R28 K59 ["Universe"]
      450 JUMPIFNOTEQ                      R27 R28 ; [+13]
      452 GETTABLEKS                       R28 R10 K41 ["universeId"]
      454 JUMPIF                           R28 ; [+9]
      455 GETUPVAL                         R28 0
      456 LOADK                            R29 K78 ["[AssetSearchTool] Waterfall: skipping \"universe\" (no universeId)"]
      457 CALL                             R28 1 0
      458 GETUPVAL                         R28 9
      459 GETTABLEKS                       R28 R28 K59 ["Universe"]
      461 LOADK                            R29 K79 ["game is not published"]
      462 SETTABLE                         R29 R18 R28
      463 JUMP                             ; [+102]
      464 LENGTH                           R29 R15
      465 SUB                              R28 R5 R29
      466 MOVE                             R29 R28
      467 GETTABLEKS                       R30 R1 K13 ["assetType"]
      469 GETUPVAL                         R31 10
      470 JUMPIFNOTEQ                      R30 R31 ; [+7]
      472 GETUPVAL                         R30 9
      473 GETTABLEKS                       R30 R30 K61 ["CreatorStore"]
      475 JUMPIFEQ                         R27 R30 ; [+2]
      477 MULK                             R29 R28 K4 [5]
      478 GETUPVAL                         R30 0
      479 LOADK                            R32 K80 ["[AssetSearchTool] Waterfall: querying source=\"%*\" remaining=%* requestLimit=%*"]
      480 MOVE                             R34 R27
      481 MOVE                             R35 R28
      482 MOVE                             R36 R29
      483 NAMECALL                         R32 R32 K14 ["format"]
      485 CALL                             R32 4 1
      486 MOVE                             R31 R32
      487 CALL                             R30 1 0
      488 GETUPVAL                         R30 11
      489 MOVE                             R31 R27
      490 MOVE                             R32 R3
      491 GETTABLEKS                       R33 R1 K13 ["assetType"]
      493 MOVE                             R34 R29
      494 MOVE                             R35 R10
      495 DUPTABLE                         R36 K88 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      496 GETTABLEKS                       R37 R1 K81 ["facets"]
      498 SETTABLEKS                       R37 R36 K81 ["facets"]
      500 GETTABLEKS                       R37 R1 K82 ["tags"]
      502 SETTABLEKS                       R37 R36 K82 ["tags"]
      504 GETTABLEKS                       R37 R1 K89 ["verifiedCreatorsOnly"]
      506 SETTABLEKS                       R37 R36 K83 ["includeOnlyVerifiedCreators"]
      508 SETTABLEKS                       R21 R36 K84 ["minPrice"]
      510 SETTABLEKS                       R22 R36 K85 ["maxPrice"]
      512 GETTABLEKS                       R37 R1 K90 ["audioMinDuration"]
      514 SETTABLEKS                       R37 R36 K86 ["minDuration"]
      516 GETTABLEKS                       R37 R1 K91 ["audioMaxDuration"]
      518 SETTABLEKS                       R37 R36 K87 ["maxDuration"]
      520 CALL                             R30 6 2
      521 GETUPVAL                         R32 0
      522 LOADK                            R34 K92 ["[AssetSearchTool] Waterfall: source=\"%*\" returned %* results"]
      523 MOVE                             R36 R27
      524 LENGTH                           R37 R30
      525 NAMECALL                         R34 R34 K14 ["format"]
      527 CALL                             R34 3 1
      528 MOVE                             R33 R34
      529 CALL                             R32 1 0
      530 LENGTH                           R32 R31
      531 LOADN                            R33 0
      532 JUMPIFNOTLT                      R33 R32 ; [+2]
      534 MOVE                             R16 R31
      535 MOVE                             R32 R30
      536 LOADNIL                          R33
      537 LOADNIL                          R34
      538 FORGPREP                         R32
      539 LENGTH                           R37 R15
      540 JUMPIFLE                         R5 R37 ; [+18]
      542 GETTABLEKS                       R38 R36 K93 ["assetId"]
      544 GETTABLE                         R37 R20 R38
      545 JUMPIF                           R37 ; [+11]
      546 GETTABLEKS                       R37 R36 K93 ["assetId"]
      548 LOADB                            R38 1
      549 SETTABLE                         R38 R20 R37
      550 FASTCALL2                        TABLE_INSERT R15 R36 ; [+5]
      552 MOVE                             R38 R15
      553 MOVE                             R39 R36
      554 GETIMPORT                        R37 K64 [table.insert]
      556 CALL                             R37 2 0
      557 FORGLOOP                         R32 2 ; [-19]
      559 FASTCALL2                        TABLE_INSERT R17 R27 ; [+5]
      561 MOVE                             R33 R17
      562 MOVE                             R34 R27
      563 GETIMPORT                        R32 K64 [table.insert]
      565 CALL                             R32 2 0
      566 FORGLOOP                         R23 2 ; [-149]
      568 JUMP                             ; [+248]
      569 GETUPVAL                         R19 9
      570 GETTABLEKS                       R19 R19 K48 ["Group"]
      572 JUMPIFNOTEQ                      R4 R19 ; [+86]
      574 GETTABLEKS                       R20 R1 K42 ["groupId"]
      576 JUMPIFEQKNIL                     R20 ; [+6]
      578 LOADB                            R19 1
      579 GETTABLEKS                       R20 R1 K42 ["groupId"]
      581 JUMPIFNOTEQKS                    R20 K0 [""] ; [+16]
      583 LOADB                            R19 0
      584 GETTABLEKS                       R20 R1 K43 ["groupName"]
      586 JUMPIFEQKNIL                     R20 ; [+11]
      588 GETUPVAL                         R20 4
      589 GETTABLEKS                       R20 R20 K94 ["trim"]
      591 GETTABLEKS                       R21 R1 K43 ["groupName"]
      593 CALL                             R20 1 1
      594 JUMPIFNOTEQKS                    R20 K0 [""] ; [+2]
      596 LOADB                            R19 0 +1
      597 LOADB                            R19 1
      598 JUMPIF                           R19 ; [+60]
      599 GETTABLEKS                       R20 R10 K42 ["groupId"]
      601 JUMPIF                           R20 ; [+57]
      602 GETUPVAL                         R20 7
      603 MOVE                             R21 R10
      604 CALL                             R20 1 1
      605 GETTABLEKS                       R21 R7 K30 ["updateWidget"]
      607 NEWCLOSURE                       R22 P3
      608 CAPTURE                          UPVAL U4
      609 CAPTURE                          UPVAL U5
      610 CAPTURE                          VAL R3
      611 CAPTURE                          VAL R1
      612 CALL                             R21 1 0
      613 GETUPVAL                         R21 2
      614 DUPTABLE                         R23 K99 [{"status", "query", "scope", "resultCount", "results", "groups", "context", "nextSteps"}]
      615 LOADK                            R24 K100 ["success"]
      616 SETTABLEKS                       R24 R23 K15 ["status"]
      618 SETTABLEKS                       R3 R23 K1 ["query"]
      620 SETTABLEKS                       R4 R23 K3 ["scope"]
      622 LOADN                            R24 0
      623 SETTABLEKS                       R24 R23 K95 ["resultCount"]
      625 NEWTABLE                         R24 0 0
      627 SETTABLEKS                       R24 R23 K96 ["results"]
      629 LENGTH                           R25 R20
      630 LOADN                            R26 0
      631 JUMPIFNOTLT                      R26 R25 ; [+3]
      633 MOVE                             R24 R20
      634 JUMP                             ; [+1]
      635 LOADNIL                          R24
      636 SETTABLEKS                       R24 R23 K97 ["groups"]
      638 SETTABLEKS                       R14 R23 K98 ["context"]
      640 NEWTABLE                         R24 0 2
      642 LOADK                            R25 K101 ["This universe is not owned by a group, and no groupId/groupName was supplied."]
      643 LENGTH                           R27 R20
      644 LOADN                            R28 0
      645 JUMPIFNOTLT                      R28 R27 ; [+3]
      647 LOADK                            R26 K102 ["Pass scope='group' with groupId or groupName from the listed groups to retry."]
      648 JUMP                             ; [+1]
      649 LOADK                            R26 K103 ["Use scope='auto' or scope='user' instead — you are not a member of any groups."]
      650 SETLIST                          R24 R25 2 [1]
      652 SETTABLEKS                       R24 R23 K17 ["nextSteps"]
      654 NAMECALL                         R21 R21 K21 ["JSONEncode"]
      656 CALL                             R21 2 -1
      657 CLOSEUPVALS                      R15
      658 RETURN                           R21 -1
      659 GETUPVAL                         R19 9
      660 GETTABLEKS                       R19 R19 K59 ["Universe"]
      662 JUMPIFNOTEQ                      R4 R19 ; [+33]
      664 GETTABLEKS                       R19 R10 K41 ["universeId"]
      666 JUMPIF                           R19 ; [+29]
      667 GETTABLEKS                       R19 R7 K30 ["updateWidget"]
      669 NEWCLOSURE                       R20 P3
      670 CAPTURE                          UPVAL U4
      671 CAPTURE                          UPVAL U5
      672 CAPTURE                          VAL R3
      673 CAPTURE                          VAL R1
      674 CALL                             R19 1 0
      675 GETUPVAL                         R19 2
      676 DUPTABLE                         R21 K18 [{"status", "error", "nextSteps"}]
      677 LOADK                            R22 K16 ["error"]
      678 SETTABLEKS                       R22 R21 K15 ["status"]
      680 LOADK                            R22 K104 ["scope='universe' is unavailable because this game is not yet published (no universe ID)."]
      681 SETTABLEKS                       R22 R21 K16 ["error"]
      683 NEWTABLE                         R22 0 2
      685 LOADK                            R23 K105 ["Use scope='auto' or scope='user' to search the user's personal inventory and Creator Store instead."]
      686 LOADK                            R24 K106 ["The game must be published to Roblox before its universe inventory becomes searchable."]
      687 SETLIST                          R22 R23 2 [1]
      689 SETTABLEKS                       R22 R21 K17 ["nextSteps"]
      691 NAMECALL                         R19 R19 K21 ["JSONEncode"]
      693 CALL                             R19 2 -1
      694 CLOSEUPVALS                      R15
      695 RETURN                           R19 -1
      696 GETUPVAL                         R19 0
      697 LOADK                            R21 K107 ["[AssetSearchTool] Explicit scope=\"%*\""]
      698 MOVE                             R23 R4
      699 NAMECALL                         R21 R21 K14 ["format"]
      701 CALL                             R21 2 1
      702 MOVE                             R20 R21
      703 CALL                             R19 1 0
      704 FASTCALL2                        TABLE_INSERT R17 R4 ; [+5]
      706 MOVE                             R20 R17
      707 MOVE                             R21 R4
      708 GETIMPORT                        R19 K64 [table.insert]
      710 CALL                             R19 2 0
      711 GETUPVAL                         R19 9
      712 GETTABLEKS                       R19 R19 K61 ["CreatorStore"]
      714 JUMPIFNOTEQ                      R4 R19 ; [+68]
      716 GETTABLEKS                       R21 R1 K69 ["minPriceCents"]
      718 GETTABLEKS                       R22 R1 K70 ["maxPriceCents"]
      720 GETTABLEKS                       R23 R1 K71 ["priceFilter"]
      722 JUMPIFNOTEQKS                    R23 K72 ["free"] ; [+3]
      724 LOADN                            R22 0
      725 JUMP                             ; [+5]
      726 GETTABLEKS                       R23 R1 K71 ["priceFilter"]
      728 JUMPIFNOTEQKS                    R23 K73 ["paid"] ; [+2]
      730 ORK                              R21 R21 K74 [1]
      731 MOVE                             R19 R21
      732 MOVE                             R20 R22
      733 GETUPVAL                         R21 11
      734 GETUPVAL                         R22 9
      735 GETTABLEKS                       R22 R22 K61 ["CreatorStore"]
      737 MOVE                             R23 R3
      738 GETTABLEKS                       R24 R1 K13 ["assetType"]
      740 MOVE                             R25 R5
      741 MOVE                             R26 R10
      742 DUPTABLE                         R27 K88 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      743 GETTABLEKS                       R28 R1 K81 ["facets"]
      745 SETTABLEKS                       R28 R27 K81 ["facets"]
      747 GETTABLEKS                       R28 R1 K82 ["tags"]
      749 SETTABLEKS                       R28 R27 K82 ["tags"]
      751 GETTABLEKS                       R28 R1 K89 ["verifiedCreatorsOnly"]
      753 SETTABLEKS                       R28 R27 K83 ["includeOnlyVerifiedCreators"]
      755 SETTABLEKS                       R19 R27 K84 ["minPrice"]
      757 SETTABLEKS                       R20 R27 K85 ["maxPrice"]
      759 GETTABLEKS                       R28 R1 K90 ["audioMinDuration"]
      761 SETTABLEKS                       R28 R27 K86 ["minDuration"]
      763 GETTABLEKS                       R28 R1 K91 ["audioMaxDuration"]
      765 SETTABLEKS                       R28 R27 K87 ["maxDuration"]
      767 CALL                             R21 6 2
      768 MOVE                             R15 R21
      769 LENGTH                           R23 R22
      770 LOADN                            R24 0
      771 JUMPIFNOTLT                      R24 R23 ; [+2]
      773 MOVE                             R16 R22
      774 GETUPVAL                         R23 0
      775 LOADK                            R25 K108 ["[AssetSearchTool] Explicit creator_store: parsed %* results"]
      776 LENGTH                           R27 R15
      777 NAMECALL                         R25 R25 K14 ["format"]
      779 CALL                             R25 2 1
      780 MOVE                             R24 R25
      781 CALL                             R23 1 0
      782 JUMP                             ; [+34]
      783 GETTABLEKS                       R20 R1 K13 ["assetType"]
      785 GETUPVAL                         R21 10
      786 JUMPIFNOTEQ                      R20 R21 ; [+3]
      788 MULK                             R19 R5 K4 [5]
      789 JUMP                             ; [+1]
      790 MOVE                             R19 R5
      791 GETUPVAL                         R20 11
      792 MOVE                             R21 R4
      793 MOVE                             R22 R3
      794 GETTABLEKS                       R23 R1 K13 ["assetType"]
      796 MOVE                             R24 R19
      797 MOVE                             R25 R10
      798 DUPTABLE                         R26 K110 [{"effectiveGroupId"}]
      799 SETTABLEKS                       R11 R26 K109 ["effectiveGroupId"]
      801 CALL                             R20 6 2
      802 MOVE                             R15 R20
      803 LENGTH                           R22 R21
      804 LOADN                            R23 0
      805 JUMPIFNOTLT                      R23 R22 ; [+2]
      807 MOVE                             R16 R21
      808 GETUPVAL                         R22 0
      809 LOADK                            R24 K111 ["[AssetSearchTool] Explicit %*: got %* results"]
      810 MOVE                             R26 R4
      811 LENGTH                           R27 R15
      812 NAMECALL                         R24 R24 K14 ["format"]
      814 CALL                             R24 3 1
      815 MOVE                             R23 R24
      816 CALL                             R22 1 0
      817 GETUPVAL                         R19 0
      818 LOADK                            R21 K112 ["[AssetSearchTool] Total: %* results from sources: %*"]
      819 LENGTH                           R23 R15
      820 GETIMPORT                        R24 K67 [table.concat]
      822 MOVE                             R25 R17
      823 LOADK                            R26 K68 [", "]
      824 CALL                             R24 2 1
      825 NAMECALL                         R21 R21 K14 ["format"]
      827 CALL                             R21 3 1
      828 MOVE                             R20 R21
      829 CALL                             R19 1 0
      830 NEWTABLE                         R19 0 0
      832 NEWTABLE                         R20 0 0
      834 MOVE                             R21 R15
      835 LOADNIL                          R22
      836 LOADNIL                          R23
      837 FORGPREP                         R21
      838 GETTABLEKS                       R27 R25 K93 ["assetId"]
      840 GETTABLE                         R26 R19 R27
      841 JUMPIF                           R26 ; [+14]
      842 GETTABLEKS                       R26 R25 K93 ["assetId"]
      844 LOADB                            R27 1
      845 SETTABLE                         R27 R19 R26
      846 FASTCALL2                        TABLE_INSERT R20 R25 ; [+5]
      848 MOVE                             R27 R20
      849 MOVE                             R28 R25
      850 GETIMPORT                        R26 K64 [table.insert]
      852 CALL                             R26 2 0
      853 LENGTH                           R26 R20
      854 JUMPIFLE                         R5 R26 ; [+3]
      856 FORGLOOP                         R21 2 ; [-19]
      858 MOVE                             R15 R20
      859 NEWTABLE                         R21 0 0
      861 MOVE                             R22 R15
      862 LOADNIL                          R23
      863 LOADNIL                          R24
      864 FORGPREP                         R22
      865 DUPTABLE                         R29 K118 [{"assetId", "name", "assetType", "source", "location", "creatorName", "priceCents", "priceLabel", "isFree"}]
      866 GETTABLEKS                       R30 R26 K93 ["assetId"]
      868 SETTABLEKS                       R30 R29 K93 ["assetId"]
      870 GETTABLEKS                       R30 R26 K54 ["name"]
      872 SETTABLEKS                       R30 R29 K54 ["name"]
      874 GETTABLEKS                       R30 R26 K13 ["assetType"]
      876 SETTABLEKS                       R30 R29 K13 ["assetType"]
      878 GETTABLEKS                       R30 R26 K113 ["source"]
      880 SETTABLEKS                       R30 R29 K113 ["source"]
      882 GETTABLEKS                       R30 R26 K114 ["location"]
      884 SETTABLEKS                       R30 R29 K114 ["location"]
      886 GETTABLEKS                       R30 R26 K57 ["creatorName"]
      888 SETTABLEKS                       R30 R29 K57 ["creatorName"]
      890 GETTABLEKS                       R30 R26 K115 ["priceCents"]
      892 SETTABLEKS                       R30 R29 K115 ["priceCents"]
      894 GETTABLEKS                       R30 R26 K116 ["priceLabel"]
      896 SETTABLEKS                       R30 R29 K116 ["priceLabel"]
      898 GETTABLEKS                       R30 R26 K117 ["isFree"]
      900 SETTABLEKS                       R30 R29 K117 ["isFree"]
      902 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      904 MOVE                             R28 R21
      905 GETIMPORT                        R27 K64 [table.insert]
      907 CALL                             R27 2 0
      908 FORGLOOP                         R22 2 ; [-44]
      910 NEWCLOSURE                       R22 P4
      911 CAPTURE                          VAL R0
      912 CAPTURE                          UPVAL U12
      913 CAPTURE                          UPVAL U13
      914 CAPTURE                          UPVAL U3
      915 CAPTURE                          UPVAL U14
      916 CAPTURE                          UPVAL U0
      917 GETTABLEKS                       R23 R7 K30 ["updateWidget"]
      919 NEWCLOSURE                       R24 P5
      920 CAPTURE                          UPVAL U4
      921 CAPTURE                          UPVAL U5
      922 CAPTURE                          VAL R3
      923 CAPTURE                          VAL R1
      924 CAPTURE                          REF R15
      925 CAPTURE                          VAL R21
      926 CAPTURE                          VAL R22
      927 CALL                             R23 1 0
      928 NEWTABLE                         R23 0 0
      930 MOVE                             R24 R15
      931 LOADNIL                          R25
      932 LOADNIL                          R26
      933 FORGPREP                         R24
      934 DUPTABLE                         R31 K122 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "creatorId", "priceCents", "priceLabel", "isFree", "thumbnailUrl", "creatorStoreUrl"}]
      935 GETTABLEKS                       R32 R28 K93 ["assetId"]
      937 SETTABLEKS                       R32 R31 K93 ["assetId"]
      939 GETTABLEKS                       R32 R28 K54 ["name"]
      941 SETTABLEKS                       R32 R31 K54 ["name"]
      943 GETTABLEKS                       R32 R28 K119 ["description"]
      945 SETTABLEKS                       R32 R31 K119 ["description"]
      947 GETTABLEKS                       R32 R28 K13 ["assetType"]
      949 SETTABLEKS                       R32 R31 K13 ["assetType"]
      951 GETTABLEKS                       R32 R28 K113 ["source"]
      953 SETTABLEKS                       R32 R31 K113 ["source"]
      955 GETTABLEKS                       R32 R28 K114 ["location"]
      957 SETTABLEKS                       R32 R31 K114 ["location"]
      959 GETTABLEKS                       R32 R28 K57 ["creatorName"]
      961 SETTABLEKS                       R32 R31 K57 ["creatorName"]
      963 GETTABLEKS                       R32 R28 K50 ["creatorId"]
      965 SETTABLEKS                       R32 R31 K50 ["creatorId"]
      967 GETTABLEKS                       R32 R28 K115 ["priceCents"]
      969 SETTABLEKS                       R32 R31 K115 ["priceCents"]
      971 GETTABLEKS                       R32 R28 K116 ["priceLabel"]
      973 SETTABLEKS                       R32 R31 K116 ["priceLabel"]
      975 GETTABLEKS                       R32 R28 K117 ["isFree"]
      977 SETTABLEKS                       R32 R31 K117 ["isFree"]
      979 LOADK                            R33 K123 ["%*v1/assets?assetIds=%*&returnPolicy=PlaceHolder&size=150x150&format=Png"]
      980 GETUPVAL                         R35 15
      981 GETTABLEKS                       R35 R35 K124 ["THUMBNAILS_URL"]
      983 GETTABLEKS                       R36 R28 K93 ["assetId"]
      985 NAMECALL                         R33 R33 K14 ["format"]
      987 CALL                             R33 3 1
      988 MOVE                             R32 R33
      989 SETTABLEKS                       R32 R31 K120 ["thumbnailUrl"]
      991 GETTABLEKS                       R33 R28 K113 ["source"]
      993 GETUPVAL                         R34 9
      994 GETTABLEKS                       R34 R34 K61 ["CreatorStore"]
      996 JUMPIFNOTEQ                      R33 R34 ; [+12]
      998 LOADK                            R33 K125 ["%*store/asset/%*"]
      999 GETUPVAL                         R35 15
     1000 GETTABLEKS                       R35 R35 K126 ["CREATOR_HUB_URL"]
     1002 GETTABLEKS                       R36 R28 K93 ["assetId"]
     1004 NAMECALL                         R33 R33 K14 ["format"]
     1006 CALL                             R33 3 1
     1007 MOVE                             R32 R33
     1008 JUMP                             ; [+1]
     1009 LOADNIL                          R32
     1010 SETTABLEKS                       R32 R31 K121 ["creatorStoreUrl"]
     1012 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
     1014 MOVE                             R30 R23
     1015 GETIMPORT                        R29 K64 [table.insert]
     1017 CALL                             R29 2 0
     1018 FORGLOOP                         R24 2 ; [-85]
     1020 GETUPVAL                         R24 0
     1021 LOADK                            R26 K127 ["[AssetSearchTool] === SEARCH COMPLETE === resultCount=%* sources=%*"]
     1022 LENGTH                           R28 R15
     1023 GETIMPORT                        R29 K67 [table.concat]
     1025 MOVE                             R30 R17
     1026 LOADK                            R31 K128 [","]
     1027 CALL                             R29 2 1
     1028 NAMECALL                         R26 R26 K14 ["format"]
     1030 CALL                             R26 3 1
     1031 MOVE                             R25 R26
     1032 CALL                             R24 1 0
     1033 MOVE                             R24 R23
     1034 LOADNIL                          R25
     1035 LOADNIL                          R26
     1036 FORGPREP                         R24
     1037 GETUPVAL                         R29 0
     1038 LOADK                            R31 K129 ["[AssetSearchTool]   result[%*]: id=%* name=\"%*\" type=%* source=%* location=%*"]
     1039 MOVE                             R33 R27
     1040 GETTABLEKS                       R34 R28 K93 ["assetId"]
     1042 GETTABLEKS                       R35 R28 K54 ["name"]
     1044 GETTABLEKS                       R36 R28 K13 ["assetType"]
     1046 GETTABLEKS                       R37 R28 K113 ["source"]
     1048 GETTABLEKS                       R39 R28 K114 ["location"]
     1050 ORK                              R38 R39 K12 ["nil"]
     1051 NAMECALL                         R31 R31 K14 ["format"]
     1053 CALL                             R31 7 1
     1054 MOVE                             R30 R31
     1055 CALL                             R29 1 0
     1056 FORGLOOP                         R24 2 ; [-20]
     1058 LOADNIL                          R24
     1059 LOADB                            R25 1
     1060 GETUPVAL                         R26 9
     1061 GETTABLEKS                       R26 R26 K48 ["Group"]
     1063 JUMPIFEQ                         R4 R26 ; [+5]
     1065 JUMPIFEQKS                       R4 K2 ["auto"] ; [+2]
     1067 LOADB                            R25 0 +1
     1068 LOADB                            R25 1
     1069 JUMPIFNOT                        R25 ; [+8]
     1070 GETUPVAL                         R26 7
     1071 MOVE                             R27 R10
     1072 CALL                             R26 1 1
     1073 LENGTH                           R27 R26
     1074 LOADN                            R28 0
     1075 JUMPIFNOTLT                      R28 R27 ; [+2]
     1077 MOVE                             R24 R26
     1078 GETUPVAL                         R26 2
     1079 DUPTABLE                         R28 K133 [{"status", "query", "scope", "searchSources", "skippedSources", "resultCount", "availableFacets", "results", "groups", "context", "nextSteps"}]
     1080 LOADK                            R29 K100 ["success"]
     1081 SETTABLEKS                       R29 R28 K15 ["status"]
     1083 SETTABLEKS                       R3 R28 K1 ["query"]
     1085 SETTABLEKS                       R4 R28 K3 ["scope"]
     1087 SETTABLEKS                       R17 R28 K130 ["searchSources"]
     1089 GETIMPORT                        R30 K135 [next]
     1091 MOVE                             R31 R18
     1092 CALL                             R30 1 1
     1093 JUMPIFNOT                        R30 ; [+2]
     1094 MOVE                             R29 R18
     1095 JUMP                             ; [+1]
     1096 LOADNIL                          R29
     1097 SETTABLEKS                       R29 R28 K131 ["skippedSources"]
     1099 LENGTH                           R29 R15
     1100 SETTABLEKS                       R29 R28 K95 ["resultCount"]
     1102 LENGTH                           R30 R16
     1103 LOADN                            R31 0
     1104 JUMPIFNOTLT                      R31 R30 ; [+3]
     1106 MOVE                             R29 R16
     1107 JUMP                             ; [+1]
     1108 LOADNIL                          R29
     1109 SETTABLEKS                       R29 R28 K132 ["availableFacets"]
     1111 SETTABLEKS                       R23 R28 K96 ["results"]
     1113 SETTABLEKS                       R24 R28 K97 ["groups"]
     1115 SETTABLEKS                       R14 R28 K98 ["context"]
     1117 NEWTABLE                         R29 0 4
     1119 LOADK                            R30 K136 ["Review the results and choose the best asset for the user's request. Prefer inventory results (source='inventory') as these are already owned and always insertable."]
     1120 LOADK                            R31 K137 ["For free/owned assets: call insert_asset with assetId, assetType, and assetName from the chosen result to insert it."]
     1121 LOADK                            R32 K138 ["For paid assets (isFree=false): show the user the creatorStoreUrl link and priceLabel so they can purchase it. Do not attempt to insert paid assets — they will fail."]
     1122 LOADK                            R33 K139 ["Some Creator Store assets may be restricted or moderated and fail to insert. If insert_asset fails, try the next result from the list rather than retrying the same asset."]
     1123 SETLIST                          R29 R30 4 [1]
     1125 SETTABLEKS                       R29 R28 K17 ["nextSteps"]
     1127 NAMECALL                         R26 R26 K21 ["JSONEncode"]
     1129 CALL                             R26 2 -1
     1130 CLOSEUPVALS                      R15
     1131 RETURN                           R26 -1

PROTO_40:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["Results"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["createFreshGuestContext"]
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R3
       16 LOADNIL                          R7
       17 LOADB                            R8 0
       18 LOADNIL                          R9
       19 MOVE                             R10 R0
       20 CALL                             R4 6 1
       21 MOVE                             R2 R4
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 SETTABLEKS                       R3 R1 K4 ["onItemClicked"]
       31 RETURN                           R0 0

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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["registerHydrator"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Type"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U8
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K2 ["createToolHandler"]
       22 MOVE                             R2 R0
       23 LOADNIL                          R3
       24 GETUPVAL                         R4 4
       25 GETUPVAL                         R5 9
       26 CALL                             R1 4 1
       27 GETUPVAL                         R2 10
       28 GETTABLEKS                       R2 R2 K3 ["define"]
       30 CALL                             R2 0 1
       31 GETUPVAL                         R4 11
       32 GETTABLEKS                       R4 R4 K4 ["AssetSearch"]
       34 NAMECALL                         R2 R2 K5 ["setName"]
       36 CALL                             R2 2 1
       37 GETUPVAL                         R4 11
       38 GETTABLEKS                       R4 R4 K6 ["replaceTokens"]
       40 LOADK                            R5 K7 ["Searches for assets across Creator Store (public marketplace) and Creator Inventory (user/group/universe).\nUse this tool to find assets by keyword before inserting them with {ToolNames.AssetInsert}.\nReturns a list of matching assets with metadata (name, type, source, price).\n\nScope controls where to search:\n- 'auto' (default): waterfalls through universe inventory → universe's owning group → user inventory → Creator Store. Best for general \"find me an X\" requests.\n- 'creator_store': searches only the marketplace. Use this when the user wants marketplace assets, paid assets, or when using price/creator filters.\n- 'user': searches the user's personal inventory only.\n- 'group': searches the universe's owning group by default. Pass groupId or groupName to search a different group instead. If the universe has no owning group and you don't pass a groupId, the response lists the user's groups so you can retry.\n- 'universe': searches the current universe's inventory only.\n\nTargeting a specific group: when the user names a particular group (\"in my group X\" / \"in group 12345\"), set scope='group' AND pass groupId or groupName to constrain to that one group. groupId/groupName are only valid with scope='group'; combining with any other scope (including 'auto') is rejected.\n\nResult attribution: each inventory result includes `creatorId` (string, the group or user ID that owns the asset) and `creatorName` (the group/user name when known). `creatorId` semantics depend on `source`: for source='inventory' coming from a group, it's the group ID.\n\nEvery scope='group' or scope='auto' response includes a `groups` field listing { id, name } for each of the user's groups (when the user has any). Use these to make a follow-up scope='group' + groupId call when the default (the universe's owning group, or the first relevant group) doesn't match what the user wants.\n\nEvery response also includes a `context` field describing the current Studio session: { userId, universeId, isPublished, creatorType ('User'/'Group' when published), creatorId, creatorName }. Use this to ground answers about which place is being edited and to disambiguate \"in my group\" requests.\n\nCross-owner inserts caution: when an inventory result's creatorId differs from context.creatorId (the place's owner), inserting it brings another owner's asset into this place. The user may have access to view the asset but might not intend or have the authority to share it across owners. Before calling insert_asset on a cross-owner result, name the source (the asset's creatorName) and the destination (context.creatorName or universe), and ask the user for explicit consent.\n\nWhen to use price filters: If the user asks for paid/premium assets or specifies a price range, set scope='creator_store' and use priceFilter, minPriceCents, and/or maxPriceCents. These filters only apply to Creator Store searches.\nWhen to use asset type: If the user asks for a specific asset type (audio, decals, meshes, packages, etc.), set assetType to filter results. The inventory API requires exactly one assetType per call and defaults to 'Model' when omitted, so cross-type discovery requires explicit assetType=Image / Audio / etc. Packages are stored as Models with a Package subtype — set assetType='Package' to find them (do not search for the word \"package\" as a query).\nInventory results (source='inventory') are always insertable. Creator Store results may occasionally be restricted — if insert fails, try the next result.\nEach result includes a thumbnailUrl (Roblox Thumbnails API). Fetch it to get JSON with data[0].imageUrl pointing to a CDN image of the asset — useful for visually comparing assets before inserting.\n"]
       41 CALL                             R4 1 -1
       42 NAMECALL                         R2 R2 K8 ["setDescription"]
       44 CALL                             R2 -1 1
       45 LOADK                            R4 K9 ["query"]
       46 DUPTABLE                         R5 K12 [{"type", "description"}]
       47 LOADK                            R6 K13 ["string"]
       48 SETTABLEKS                       R6 R5 K10 ["type"]
       50 LOADK                            R6 K14 ["Search term. Can be empty when filtering by assetType alone (e.g. to list all packages). Supports multi-term search with '+' (e.g. 'red+car') and exact phrase with quotes (e.g. '\"red+car\"')."]
       51 SETTABLEKS                       R6 R5 K11 ["description"]
       53 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
       55 CALL                             R2 3 1
       56 LOADK                            R4 K16 ["scope"]
       57 DUPTABLE                         R5 K18 [{"type", "enum", "description"}]
       58 LOADK                            R6 K13 ["string"]
       59 SETTABLEKS                       R6 R5 K10 ["type"]
       61 NEWTABLE                         R6 0 5
       63 LOADK                            R7 K19 ["auto"]
       64 LOADK                            R8 K20 ["creator_store"]
       65 LOADK                            R9 K21 ["user"]
       66 LOADK                            R10 K22 ["group"]
       67 LOADK                            R11 K23 ["universe"]
       68 SETLIST                          R6 R7 5 [1]
       70 SETTABLEKS                       R6 R5 K17 ["enum"]
       72 LOADK                            R6 K24 ["Where to search. 'auto' (default) waterfalls through all available sources. Use explicit scope to target a single source."]
       73 SETTABLEKS                       R6 R5 K11 ["description"]
       75 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
       77 CALL                             R2 3 1
       78 LOADK                            R4 K25 ["includeSources"]
       79 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
       80 LOADK                            R6 K28 ["array"]
       81 SETTABLEKS                       R6 R5 K10 ["type"]
       83 DUPTABLE                         R6 K29 [{"type", "enum"}]
       84 LOADK                            R7 K13 ["string"]
       85 SETTABLEKS                       R7 R6 K10 ["type"]
       87 NEWTABLE                         R7 0 4
       89 LOADK                            R8 K21 ["user"]
       90 LOADK                            R9 K22 ["group"]
       91 LOADK                            R10 K23 ["universe"]
       92 LOADK                            R11 K20 ["creator_store"]
       93 SETLIST                          R7 R8 4 [1]
       95 SETTABLEKS                       R7 R6 K17 ["enum"]
       97 SETTABLEKS                       R6 R5 K26 ["items"]
       99 LOADK                            R6 K30 ["With scope='auto': only search these sources (e.g. ['user', 'creator_store'])."]
      100 SETTABLEKS                       R6 R5 K11 ["description"]
      102 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      104 CALL                             R2 3 1
      105 LOADK                            R4 K31 ["excludeSources"]
      106 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
      107 LOADK                            R6 K28 ["array"]
      108 SETTABLEKS                       R6 R5 K10 ["type"]
      110 DUPTABLE                         R6 K29 [{"type", "enum"}]
      111 LOADK                            R7 K13 ["string"]
      112 SETTABLEKS                       R7 R6 K10 ["type"]
      114 NEWTABLE                         R7 0 4
      116 LOADK                            R8 K21 ["user"]
      117 LOADK                            R9 K22 ["group"]
      118 LOADK                            R10 K23 ["universe"]
      119 LOADK                            R11 K20 ["creator_store"]
      120 SETLIST                          R7 R8 4 [1]
      122 SETTABLEKS                       R7 R6 K17 ["enum"]
      124 SETTABLEKS                       R6 R5 K26 ["items"]
      126 LOADK                            R6 K32 ["With scope='auto': skip these sources from the waterfall."]
      127 SETTABLEKS                       R6 R5 K11 ["description"]
      129 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      131 CALL                             R2 3 1
      132 LOADK                            R4 K33 ["groupId"]
      133 DUPTABLE                         R5 K12 [{"type", "description"}]
      134 LOADK                            R6 K13 ["string"]
      135 SETTABLEKS                       R6 R5 K10 ["type"]
      137 LOADK                            R6 K34 ["Numeric group ID to constrain group inventory searches to a single group. Only valid with scope='group'. Mutually exclusive with groupName."]
      138 SETTABLEKS                       R6 R5 K11 ["description"]
      140 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      142 CALL                             R2 3 1
      143 LOADK                            R4 K35 ["groupName"]
      144 DUPTABLE                         R5 K12 [{"type", "description"}]
      145 LOADK                            R6 K13 ["string"]
      146 SETTABLEKS                       R6 R5 K10 ["type"]
      148 LOADK                            R6 K36 ["Group name to constrain group inventory searches to a single group. Matched case-insensitively against the user's groups. Only valid with scope='group'. If the name doesn't match any of the user's groups, the response includes a `groups` field listing valid options. Mutually exclusive with groupId."]
      149 SETTABLEKS                       R6 R5 K11 ["description"]
      151 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      153 CALL                             R2 3 1
      154 LOADK                            R4 K37 ["assetType"]
      155 DUPTABLE                         R5 K18 [{"type", "enum", "description"}]
      156 LOADK                            R6 K13 ["string"]
      157 SETTABLEKS                       R6 R5 K10 ["type"]
      159 NEWTABLE                         R6 0 8
      161 LOADK                            R7 K38 ["Model"]
      162 LOADK                            R8 K39 ["Audio"]
      163 LOADK                            R9 K40 ["Mesh"]
      164 LOADK                            R10 K41 ["MeshPart"]
      165 LOADK                            R11 K42 ["Image"]
      166 LOADK                            R12 K43 ["Decal"]
      167 LOADK                            R13 K44 ["Video"]
      168 LOADK                            R14 K45 ["Package"]
      169 SETLIST                          R6 R7 8 [1]
      171 SETTABLEKS                       R6 R5 K17 ["enum"]
      173 LOADK                            R6 K46 ["Filter by asset type. Use 'Image' for user-uploaded images (most decals/textures uploaded today are stored as Image, not Decal). Use 'Package' when the user asks about packages — packages are Models with a Package subtype, so a keyword search for 'package' won't find them."]
      174 SETTABLEKS                       R6 R5 K11 ["description"]
      176 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      178 CALL                             R2 3 1
      179 LOADK                            R4 K47 ["maxResults"]
      180 DUPTABLE                         R5 K12 [{"type", "description"}]
      181 LOADK                            R6 K48 ["number"]
      182 SETTABLEKS                       R6 R5 K10 ["type"]
      184 LOADK                            R6 K49 ["Number of results to return (1-20, default 5)."]
      185 SETTABLEKS                       R6 R5 K11 ["description"]
      187 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      189 CALL                             R2 3 1
      190 LOADK                            R4 K50 ["priceFilter"]
      191 DUPTABLE                         R5 K18 [{"type", "enum", "description"}]
      192 LOADK                            R6 K13 ["string"]
      193 SETTABLEKS                       R6 R5 K10 ["type"]
      195 NEWTABLE                         R6 0 3
      197 LOADK                            R7 K51 ["free"]
      198 LOADK                            R8 K52 ["paid"]
      199 LOADK                            R9 K53 ["all"]
      200 SETLIST                          R6 R7 3 [1]
      202 SETTABLEKS                       R6 R5 K17 ["enum"]
      204 LOADK                            R6 K54 ["Price filter. Requires scope='creator_store'. 'free' returns only free assets, 'paid' returns only paid assets, 'all' (default) returns both."]
      205 SETTABLEKS                       R6 R5 K11 ["description"]
      207 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      209 CALL                             R2 3 1
      210 LOADK                            R4 K55 ["minPriceCents"]
      211 DUPTABLE                         R5 K12 [{"type", "description"}]
      212 LOADK                            R6 K48 ["number"]
      213 SETTABLEKS                       R6 R5 K10 ["type"]
      215 LOADK                            R6 K56 ["Minimum price in cents. Requires scope='creator_store'. Use with maxPriceCents for a price range (e.g. minPriceCents=100, maxPriceCents=5000)."]
      216 SETTABLEKS                       R6 R5 K11 ["description"]
      218 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      220 CALL                             R2 3 1
      221 LOADK                            R4 K57 ["maxPriceCents"]
      222 DUPTABLE                         R5 K12 [{"type", "description"}]
      223 LOADK                            R6 K48 ["number"]
      224 SETTABLEKS                       R6 R5 K10 ["type"]
      226 LOADK                            R6 K58 ["Maximum price in cents. Requires scope='creator_store'. Use with minPriceCents for a price range."]
      227 SETTABLEKS                       R6 R5 K11 ["description"]
      229 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      231 CALL                             R2 3 1
      232 LOADK                            R4 K59 ["verifiedCreatorsOnly"]
      233 DUPTABLE                         R5 K12 [{"type", "description"}]
      234 LOADK                            R6 K60 ["boolean"]
      235 SETTABLEKS                       R6 R5 K10 ["type"]
      237 LOADK                            R6 K61 ["Only return results from verified creators (Creator Store only)."]
      238 SETTABLEKS                       R6 R5 K11 ["description"]
      240 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      242 CALL                             R2 3 1
      243 LOADK                            R4 K62 ["audioMinDuration"]
      244 DUPTABLE                         R5 K12 [{"type", "description"}]
      245 LOADK                            R6 K48 ["number"]
      246 SETTABLEKS                       R6 R5 K10 ["type"]
      248 LOADK                            R6 K63 ["Minimum audio duration in seconds (only when assetType='Audio')."]
      249 SETTABLEKS                       R6 R5 K11 ["description"]
      251 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      253 CALL                             R2 3 1
      254 LOADK                            R4 K64 ["audioMaxDuration"]
      255 DUPTABLE                         R5 K12 [{"type", "description"}]
      256 LOADK                            R6 K48 ["number"]
      257 SETTABLEKS                       R6 R5 K10 ["type"]
      259 LOADK                            R6 K65 ["Maximum audio duration in seconds (only when assetType='Audio')."]
      260 SETTABLEKS                       R6 R5 K11 ["description"]
      262 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      264 CALL                             R2 3 1
      265 LOADK                            R4 K66 ["facets"]
      266 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
      267 LOADK                            R6 K28 ["array"]
      268 SETTABLEKS                       R6 R5 K10 ["type"]
      270 DUPTABLE                         R6 K67 [{"type"}]
      271 LOADK                            R7 K13 ["string"]
      272 SETTABLEKS                       R7 R6 K10 ["type"]
      274 SETTABLEKS                       R6 R5 K26 ["items"]
      276 LOADK                            R6 K68 ["Additional keywords to refine the search (Creator Store only, ignored for inventory scopes). Facets narrow results by related concepts — e.g. for a 'lion' search: 'mane', 'safari', 'realistic', 'animated'. Available facets depend on the query."]
      277 SETTABLEKS                       R6 R5 K11 ["description"]
      279 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      281 CALL                             R2 3 1
      282 LOADK                            R4 K69 ["tags"]
      283 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
      284 LOADK                            R6 K28 ["array"]
      285 SETTABLEKS                       R6 R5 K10 ["type"]
      287 DUPTABLE                         R6 K67 [{"type"}]
      288 LOADK                            R7 K13 ["string"]
      289 SETTABLEKS                       R7 R6 K10 ["type"]
      291 SETTABLEKS                       R6 R5 K26 ["items"]
      293 LOADK                            R6 K70 ["Tags to filter by (Creator Store only, ignored for inventory scopes). Tags are category labels like 'Vehicle', 'Airplane', 'Fantasy'."]
      294 SETTABLEKS                       R6 R5 K11 ["description"]
      296 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      298 CALL                             R2 3 1
      299 MOVE                             R4 R1
      300 NAMECALL                         R2 R2 K71 ["setHandler"]
      302 CALL                             R2 2 1
      303 DUPTABLE                         R4 K77 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      304 LOADK                            R5 K78 ["Search Asset"]
      305 SETTABLEKS                       R5 R4 K72 ["title"]
      307 LOADB                            R5 1
      308 SETTABLEKS                       R5 R4 K73 ["readOnlyHint"]
      310 LOADB                            R5 0
      311 SETTABLEKS                       R5 R4 K74 ["destructiveHint"]
      313 LOADB                            R5 1
      314 SETTABLEKS                       R5 R4 K75 ["idempotentHint"]
      316 LOADB                            R5 1
      317 SETTABLEKS                       R5 R4 K76 ["openWorldHint"]
      319 NAMECALL                         R2 R2 K79 ["setAnnotations"]
      321 CALL                             R2 2 1
      322 NAMECALL                         R2 R2 K80 ["build"]
      324 CALL                             R2 1 1
      325 DUPTABLE                         R3 K84 [{"command", "getDescription", "mapToToolCall"}]
      326 LOADK                            R4 K85 ["search_asset"]
      327 SETTABLEKS                       R4 R3 K81 ["command"]
      329 DUPCLOSURE                       R4 K86 [PROTO_41]
      330 SETTABLEKS                       R4 R3 K82 ["getDescription"]
      332 DUPCLOSURE                       R4 K87 [PROTO_42]
      333 CAPTURE                          UPVAL U11
      334 SETTABLEKS                       R4 R3 K83 ["mapToToolCall"]
      336 DUPTABLE                         R4 K89 [{"transformInitialContent"}]
      337 DUPCLOSURE                       R5 K90 [PROTO_43]
      338 CAPTURE                          UPVAL U2
      339 SETTABLEKS                       R5 R4 K88 ["transformInitialContent"]
      341 DUPTABLE                         R5 K96 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction"}]
      342 SETTABLEKS                       R2 R5 K91 ["definition"]
      344 NEWTABLE                         R6 0 1
      346 MOVE                             R7 R3
      347 SETLIST                          R6 R7 1 [1]
      349 SETTABLEKS                       R6 R5 K92 ["slashCommands"]
      351 GETUPVAL                         R7 12
      352 CALL                             R7 0 1
      353 JUMPIFNOT                        R7 ; [+2]
      354 LOADNIL                          R6
      355 JUMP                             ; [+5]
      356 NEWTABLE                         R6 0 1
      358 GETUPVAL                         R7 2
      359 SETLIST                          R6 R7 1 [1]
      361 SETTABLEKS                       R6 R5 K93 ["contentWidgets"]
      363 SETTABLEKS                       R4 R5 K94 ["streamTransform"]
      365 GETUPVAL                         R7 12
      366 CALL                             R7 0 1
      367 JUMPIFNOT                        R7 ; [+2]
      368 LOADNIL                          R6
      369 JUMP                             ; [+2]
      370 DUPCLOSURE                       R6 K97 [PROTO_44]
      371 CAPTURE                          UPVAL U13
      372 SETTABLEKS                       R6 R5 K95 ["displayNameFunction"]
      374 RETURN                           R5 1

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
       76 GETTABLEKS                       R12 R0 K6 ["Parent"]
       78 GETTABLEKS                       R12 R12 K25 ["Networking"]
       80 CALL                             R11 1 1
       81 GETTABLEKS                       R12 R11 K26 ["RobloxAPI"]
       83 GETTABLEKS                       R12 R12 K27 ["Url"]
       85 GETTABLEKS                       R12 R12 K28 ["new"]
       87 CALL                             R12 0 1
       88 GETIMPORT                        R13 K5 [require]
       90 GETTABLEKS                       R14 R10 K29 ["AssetInsertTool"]
       92 GETTABLEKS                       R14 R14 K30 ["AssetInsertBridgeRegistry"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K5 [require]
       97 GETTABLEKS                       R15 R10 K31 ["AssetManagementConstants"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K5 [require]
      102 GETTABLEKS                       R16 R10 K32 ["AssetManagementGuestUtils"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K5 [require]
      107 GETTABLEKS                       R17 R10 K33 ["AssetManagementUrls"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K5 [require]
      112 GETTABLEKS                       R18 R10 K34 ["AssetManagementUtils"]
      114 CALL                             R17 1 1
      115 GETIMPORT                        R18 K5 [require]
      117 GETTABLEKS                       R19 R10 K35 ["AssetSearchContentWidget"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K5 [require]
      122 GETTABLEKS                       R20 R0 K36 ["Flags"]
      124 GETTABLEKS                       R20 R20 K37 ["FFlagAssistantAssetSearchDirectInsert"]
      126 CALL                             R19 1 1
      127 GETIMPORT                        R20 K5 [require]
      129 GETTABLEKS                       R21 R0 K36 ["Flags"]
      131 GETTABLEKS                       R21 R21 K38 ["FFlagAssistantMultipleChatPersistence"]
      133 CALL                             R20 1 1
      134 GETIMPORT                        R21 K5 [require]
      136 GETTABLEKS                       R22 R0 K36 ["Flags"]
      138 GETTABLEKS                       R22 R22 K39 ["FFlagAssistantSplitToolsAndWidgets"]
      140 CALL                             R21 1 1
      141 GETTABLEKS                       R22 R3 K11 ["Util"]
      143 GETTABLEKS                       R22 R22 K40 ["ToolBuilder"]
      145 GETTABLEKS                       R23 R5 K41 ["ToolNames"]
      147 GETTABLEKS                       R24 R14 K42 ["INVENTORY_ASSET_TYPE_MAP"]
      149 GETTABLEKS                       R25 R14 K43 ["INVENTORY_TYPE_NORMALIZE"]
      151 GETTABLEKS                       R26 R14 K44 ["CREATOR_STORE_CATEGORY_MAP"]
      153 GETTABLEKS                       R27 R14 K45 ["ASSET_TYPE_ID_TO_NAME"]
      155 GETTABLEKS                       R28 R14 K46 ["SearchSource"]
      157 GETIMPORT                        R29 K50 [Enum.AssetType.Package]
      159 GETTABLEKS                       R29 R29 K51 ["Name"]
      161 GETIMPORT                        R30 K53 [Enum.AssetType.Model]
      163 GETTABLEKS                       R30 R30 K51 ["Name"]
      165 DUPTABLE                         R31 K58 [{"searchCreatorInventory", "fetchUserGroups", "postRbxApi", "getStudioIdentity"}]
      166 DUPCLOSURE                       R32 K59 [PROTO_0]
      167 CAPTURE                          VAL R16
      168 SETTABLEKS                       R32 R31 K54 ["searchCreatorInventory"]
      170 DUPCLOSURE                       R32 K60 [PROTO_1]
      171 CAPTURE                          VAL R16
      172 SETTABLEKS                       R32 R31 K55 ["fetchUserGroups"]
      174 DUPCLOSURE                       R32 K61 [PROTO_2]
      175 CAPTURE                          VAL R8
      176 SETTABLEKS                       R32 R31 K56 ["postRbxApi"]
      178 DUPCLOSURE                       R32 K62 [PROTO_3]
      179 SETTABLEKS                       R32 R31 K57 ["getStudioIdentity"]
      181 GETTABLEKS                       R32 R17 K63 ["debugPrint"]
      183 DUPTABLE                         R33 K69 [{"auto", "creator_store", "user", "group", "universe"}]
      184 LOADB                            R34 1
      185 SETTABLEKS                       R34 R33 K64 ["auto"]
      187 LOADB                            R34 1
      188 SETTABLEKS                       R34 R33 K65 ["creator_store"]
      190 LOADB                            R34 1
      191 SETTABLEKS                       R34 R33 K66 ["user"]
      193 LOADB                            R34 1
      194 SETTABLEKS                       R34 R33 K67 ["group"]
      196 LOADB                            R34 1
      197 SETTABLEKS                       R34 R33 K68 ["universe"]
      199 DUPTABLE                         R34 K70 [{"user", "group", "universe"}]
      200 LOADK                            R35 K71 ["userids"]
      201 SETTABLEKS                       R35 R34 K66 ["user"]
      203 LOADK                            R35 K72 ["groupids"]
      204 SETTABLEKS                       R35 R34 K67 ["group"]
      206 LOADK                            R35 K73 ["universeids"]
      207 SETTABLEKS                       R35 R34 K68 ["universe"]
      209 DUPTABLE                         R35 K74 [{"userids", "groupids", "universeids"}]
      210 LOADK                            R36 K75 ["User"]
      211 SETTABLEKS                       R36 R35 K71 ["userids"]
      213 LOADK                            R36 K76 ["Group"]
      214 SETTABLEKS                       R36 R35 K72 ["groupids"]
      216 LOADK                            R36 K77 ["Universe"]
      217 SETTABLEKS                       R36 R35 K73 ["universeids"]
      219 LOADNIL                          R36
      220 LOADNIL                          R37
      221 NEWTABLE                         R38 0 0
      223 NEWTABLE                         R39 0 2
      225 LOADK                            R40 K78 ["StudioAssistant"]
      226 LOADK                            R41 K79 ["StudioAssetManager"]
      227 SETLIST                          R39 R40 2 [1]
      229 DUPCLOSURE                       R40 K80 [PROTO_4]
      230 DUPCLOSURE                       R41 K81 [PROTO_5]
      231 CAPTURE                          VAL R15
      232 CAPTURE                          VAL R40
      233 DUPCLOSURE                       R42 K82 [PROTO_6]
      234 CAPTURE                          VAL R15
      235 DUPCLOSURE                       R43 K83 [PROTO_8]
      236 CAPTURE                          VAL R15
      237 DUPCLOSURE                       R44 K84 [PROTO_9]
      238 DUPCLOSURE                       R45 K85 [PROTO_14]
      239 CAPTURE                          VAL R38
      240 CAPTURE                          VAL R15
      241 CAPTURE                          VAL R13
      242 CAPTURE                          VAL R32
      243 DUPCLOSURE                       R46 K86 [PROTO_16]
      244 CAPTURE                          VAL R19
      245 CAPTURE                          VAL R38
      246 CAPTURE                          VAL R15
      247 CAPTURE                          VAL R13
      248 CAPTURE                          VAL R32
      249 DUPCLOSURE                       R47 K87 [PROTO_17]
      250 CAPTURE                          VAL R31
      251 NEWCLOSURE                       R48 P12
      252 CAPTURE                          REF R36
      253 CAPTURE                          REF R37
      254 CAPTURE                          VAL R32
      255 CAPTURE                          VAL R31
      256 CAPTURE                          VAL R39
      257 DUPCLOSURE                       R49 K88 [PROTO_21]
      258 CAPTURE                          VAL R1
      259 CAPTURE                          VAL R28
      260 DUPCLOSURE                       R50 K89 [PROTO_24]
      261 CAPTURE                          VAL R12
      262 CAPTURE                          VAL R9
      263 CAPTURE                          VAL R32
      264 CAPTURE                          VAL R31
      265 CAPTURE                          VAL R17
      266 CAPTURE                          VAL R27
      267 DUPCLOSURE                       R51 K90 [PROTO_26]
      268 CAPTURE                          VAL R32
      269 CAPTURE                          VAL R9
      270 CAPTURE                          VAL R28
      271 DUPCLOSURE                       R52 K91 [PROTO_27]
      272 CAPTURE                          VAL R32
      273 CAPTURE                          VAL R25
      274 CAPTURE                          VAL R17
      275 CAPTURE                          VAL R29
      276 CAPTURE                          VAL R28
      277 NEWTABLE                         R53 0 0
      279 DUPCLOSURE                       R54 K92 [PROTO_32]
      280 CAPTURE                          VAL R53
      281 CAPTURE                          VAL R28
      282 CAPTURE                          VAL R26
      283 CAPTURE                          VAL R50
      284 CAPTURE                          VAL R29
      285 CAPTURE                          VAL R32
      286 CAPTURE                          VAL R9
      287 CAPTURE                          VAL R51
      288 CAPTURE                          VAL R34
      289 CAPTURE                          VAL R24
      290 CAPTURE                          VAL R30
      291 CAPTURE                          VAL R48
      292 CAPTURE                          VAL R31
      293 CAPTURE                          VAL R52
      294 CAPTURE                          VAL R35
      295 DUPCLOSURE                       R55 K93 [PROTO_33]
      296 DUPCLOSURE                       R56 K94 [PROTO_39]
      297 CAPTURE                          VAL R32
      298 CAPTURE                          VAL R33
      299 CAPTURE                          VAL R9
      300 CAPTURE                          VAL R15
      301 CAPTURE                          VAL R1
      302 CAPTURE                          VAL R18
      303 CAPTURE                          VAL R47
      304 CAPTURE                          VAL R48
      305 CAPTURE                          VAL R49
      306 CAPTURE                          VAL R28
      307 CAPTURE                          VAL R29
      308 CAPTURE                          VAL R54
      309 CAPTURE                          VAL R19
      310 CAPTURE                          VAL R38
      311 CAPTURE                          VAL R13
      312 CAPTURE                          VAL R12
      313 DUPCLOSURE                       R57 K95 [PROTO_45]
      314 CAPTURE                          VAL R20
      315 CAPTURE                          VAL R4
      316 CAPTURE                          VAL R18
      317 CAPTURE                          VAL R15
      318 CAPTURE                          VAL R40
      319 CAPTURE                          VAL R19
      320 CAPTURE                          VAL R38
      321 CAPTURE                          VAL R13
      322 CAPTURE                          VAL R32
      323 CAPTURE                          VAL R56
      324 CAPTURE                          VAL R22
      325 CAPTURE                          VAL R23
      326 CAPTURE                          VAL R21
      327 CAPTURE                          VAL R6
      328 DUPTABLE                         R58 K99 [{"setupGuest", "_testing", "_deps"}]
      329 SETTABLEKS                       R57 R58 K96 ["setupGuest"]
      331 DUPTABLE                         R59 K101 [{"resetCachedGroups"}]
      332 NEWCLOSURE                       R60 P21
      333 CAPTURE                          REF R36
      334 CAPTURE                          REF R37
      335 SETTABLEKS                       R60 R59 K100 ["resetCachedGroups"]
      337 SETTABLEKS                       R59 R58 K97 ["_testing"]
      339 SETTABLEKS                       R31 R58 K98 ["_deps"]
      341 CLOSEUPVALS                      R36
      342 RETURN                           R58 1
