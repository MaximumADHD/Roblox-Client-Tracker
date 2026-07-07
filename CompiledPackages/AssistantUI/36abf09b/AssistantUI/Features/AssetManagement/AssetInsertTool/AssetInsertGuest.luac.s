PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getWidgetUpdateFunctions"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["AssetInsertTool"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K4 [{"displayName", "className", "shouldShowChip"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K5 ["newDisplayName"]
        8 SETTABLEKS                       R4 R3 K1 ["displayName"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K6 ["newClassName"]
       13 SETTABLEKS                       R4 R3 K2 ["className"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K7 ["showChip"]
       18 SETTABLEKS                       R4 R3 K3 ["shouldShowChip"]
       20 CALL                             R1 2 0
       21 DUPTABLE                         R1 K10 [{["rawTransformValues"] = True}]
       22 RETURN                           R1 1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["getWidgetUpdateFunctions"]
        6 MOVE                             R4 R1
        7 LOADK                            R5 K1 ["AssetInsertTool"]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R4 R3 K2 ["updateWidget"]
       11 MOVE                             R5 R2
       12 CALL                             R4 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["selectInsertedAssets"]
        5 DUPTABLE                         R1 K3 [{"tag"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["tag"]
        9 SETTABLEKS                       R2 R1 K2 ["tag"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 SETTABLEKS                       R2 R1 K0 ["onChipClicked"]
        5 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R3 R0 K0 ["bridge"]
        4 GETTABLEKS                       R3 R3 K1 ["listenToLinkChanges"]
        6 DUPTABLE                         R4 K4 [{"name", "tag"}]
        7 GETTABLEKS                       R5 R2 K2 ["name"]
        9 SETTABLEKS                       R5 R4 K2 ["name"]
       11 GETTABLEKS                       R5 R2 K3 ["tag"]
       13 SETTABLEKS                       R5 R4 K3 ["tag"]
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R1 K0 ["responseInfo"]
        2 GETTABLEKS                       R4 R3 K1 ["assetName"]
        4 GETTABLEKS                       R5 R3 K2 ["tag"]
        6 DUPTABLE                         R6 K11 [{["type"], ["mode"], ["name"], ["displayName"], ["tag"], ["className"], ["shouldShowChip"] = False, ["onChipClicked"]}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K12 ["Type"]
       10 SETTABLEKS                       R7 R6 K3 ["type"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K13 ["Modes"]
       15 GETTABLEKS                       R7 R7 K14 ["Inserted"]
       17 SETTABLEKS                       R7 R6 K4 ["mode"]
       19 SETTABLEKS                       R4 R6 K5 ["name"]
       21 SETTABLEKS                       R4 R6 K6 ["displayName"]
       23 SETTABLEKS                       R5 R6 K2 ["tag"]
       25 GETTABLEKS                       R7 R3 K7 ["className"]
       27 SETTABLEKS                       R7 R6 K7 ["className"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K15 ["createUnimplemented"]
       32 LOADK                            R8 K10 ["onChipClicked"]
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K10 ["onChipClicked"]
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R6
       39 SETTABLEKS                       R7 R6 K10 ["onChipClicked"]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K16 ["getWidgetUpdateFunctions"]
       44 MOVE                             R8 R0
       45 LOADK                            R9 K17 ["AssetInsertTool"]
       46 CALL                             R7 2 1
       47 GETTABLEKS                       R8 R7 K18 ["updateWidget"]
       49 NEWCLOSURE                       R9 P1
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R6
       52 CALL                             R8 1 0
       53 JUMPIFNOT                        R2 ; [+1]
       54 RETURN                           R0 0
       55 GETTABLEKS                       R8 R0 K19 ["bridge"]
       57 GETTABLEKS                       R8 R8 K20 ["listenToLinkChanges"]
       59 DUPTABLE                         R9 K21 [{"name", "tag"}]
       60 GETTABLEKS                       R10 R6 K5 ["name"]
       62 SETTABLEKS                       R10 R9 K5 ["name"]
       64 GETTABLEKS                       R10 R6 K2 ["tag"]
       66 SETTABLEKS                       R10 R9 K2 ["tag"]
       68 CALL                             R8 1 0
       69 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K5 [{"type", "mode", "name", "displayName"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K6 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K7 ["Modes"]
       13 GETTABLEKS                       R4 R4 K8 ["Inserting"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["name"]
       20 GETUPVAL                         R4 2
       21 SETTABLEKS                       R4 R3 K4 ["displayName"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["insertAssetAsync"]
        5 DUPTABLE                         R1 K6 [{"assetId", "assetName", "assetType", "parentPath"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["assetId"]
        9 SETTABLEKS                       R2 R1 K2 ["assetId"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["assetName"]
       14 SETTABLEKS                       R2 R1 K3 ["assetName"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["assetType"]
       19 SETTABLEKS                       R2 R1 K4 ["assetType"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K5 ["parentPath"]
       24 SETTABLEKS                       R2 R1 K5 ["parentPath"]
       26 CALL                             R0 1 -1
       27 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K5 [{["type"], ["mode"], ["isError"] = True}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K6 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K7 ["Modes"]
       13 GETTABLEKS                       R4 R4 K8 ["Preparing"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K5 [{["type"], ["mode"], ["isError"] = True}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K6 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K7 ["Modes"]
       13 GETTABLEKS                       R4 R4 K8 ["Preparing"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R1 K0 ["assetName"]
        2 JUMPIF                           R3 ; [+4]
        3 LOADK                            R4 K1 ["Asset "]
        4 GETTABLEKS                       R5 R1 K2 ["assetId"]
        6 CONCAT                           R3 R4 R5
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["getWidgetUpdateFunctions"]
       10 MOVE                             R5 R0
       11 LOADK                            R6 K4 ["AssetInsertTool"]
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R5 R4 K5 ["updateWidget"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 CALL                             R5 1 0
       20 GETIMPORT                        R5 K7 [pcall]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 CALL                             R5 1 2
       26 JUMPIF                           R5 ; [+43]
       27 GETUPVAL                         R7 3
       28 LOADK                            R9 K8 ["[AssetInsertTool] insertAssetAsync: ERROR: %*"]
       29 FASTCALL1                        TOSTRING R6 ; [+3]
       30 MOVE                             R12 R6
       31 GETIMPORT                        R11 K10 [tostring]
       33 CALL                             R11 1 1
       34 NAMECALL                         R9 R9 K11 ["format"]
       36 CALL                             R9 2 1
       37 MOVE                             R8 R9
       38 CALL                             R7 1 0
       39 GETTABLEKS                       R7 R4 K5 ["updateWidget"]
       41 DUPCLOSURE                       R8 K12 [PROTO_10]
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 CALL                             R7 1 0
       45 GETUPVAL                         R7 4
       46 DUPTABLE                         R9 K16 [{["status"] = "error", ["error"], ["nextSteps"]}]
       47 LOADK                            R11 K17 ["Failed to insert asset: %*"]
       48 FASTCALL1                        TOSTRING R6 ; [+3]
       49 MOVE                             R14 R6
       50 GETIMPORT                        R13 K10 [tostring]
       52 CALL                             R13 1 1
       53 NAMECALL                         R11 R11 K11 ["format"]
       55 CALL                             R11 2 1
       56 MOVE                             R10 R11
       57 SETTABLEKS                       R10 R9 K14 ["error"]
       59 NEWTABLE                         R10 0 1
       61 LOADK                            R11 K18 ["Retry the insertion. If this persists, the asset may be unavailable or restricted."]
       62 SETLIST                          R10 R11 1 [1]
       64 SETTABLEKS                       R10 R9 K15 ["nextSteps"]
       66 NAMECALL                         R7 R7 K19 ["JSONEncode"]
       68 CALL                             R7 2 -1
       69 RETURN                           R7 -1
       70 GETTABLEKS                       R7 R6 K20 ["responseInfo"]
       72 JUMPIFNOT                        R7 ; [+6]
       73 GETUPVAL                         R7 5
       74 MOVE                             R8 R0
       75 MOVE                             R9 R6
       76 MOVE                             R10 R2
       77 CALL                             R7 3 0
       78 JUMP                             ; [+6]
       79 GETTABLEKS                       R7 R4 K5 ["updateWidget"]
       81 DUPCLOSURE                       R8 K21 [PROTO_11]
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          UPVAL U2
       84 CALL                             R7 1 0
       85 GETTABLEKS                       R7 R6 K22 ["result"]
       87 RETURN                           R7 1

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["Inserted"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["createGuestContext"]
       13 LOADNIL                          R3
       14 DUPTABLE                         R4 K7 [{["isThirdPartyRequest"] = False, ["contentId"]}]
       15 SETTABLEKS                       R0 R4 K6 ["contentId"]
       17 CALL                             R2 2 1
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R3 R1 K8 ["onChipClicked"]
       23 GETTABLEKS                       R3 R2 K9 ["bridge"]
       25 GETTABLEKS                       R3 R3 K10 ["listenToLinkChanges"]
       27 DUPTABLE                         R4 K13 [{"name", "tag"}]
       28 GETTABLEKS                       R5 R1 K11 ["name"]
       30 SETTABLEKS                       R5 R4 K11 ["name"]
       32 GETTABLEKS                       R5 R1 K12 ["tag"]
       34 SETTABLEKS                       R5 R4 K12 ["tag"]
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["isThirdPartyRequest"]
        3 JUMPIF                           R3 ; [+1]
        4 LOADB                            R3 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["createGuestContext"]
        8 LOADNIL                          R5
        9 DUPTABLE                         R6 K3 [{"isThirdPartyRequest", "contentId"}]
       10 SETTABLEKS                       R3 R6 K0 ["isThirdPartyRequest"]
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R7 R1 K2 ["contentId"]
       15 JUMPIF                           R7 ; [+1]
       16 LOADK                            R7 K4 [""]
       17 SETTABLEKS                       R7 R6 K2 ["contentId"]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 1
       21 MOVE                             R6 R4
       22 MOVE                             R7 R0
       23 MOVE                             R8 R3
       24 CALL                             R5 3 1
       25 GETUPVAL                         R6 2
       26 CALL                             R6 0 1
       27 MOVE                             R8 R5
       28 NAMECALL                         R6 R6 K5 ["addText"]
       30 CALL                             R6 2 1
       31 NAMECALL                         R6 R6 K6 ["build"]
       33 CALL                             R6 1 -1
       34 RETURN                           R6 -1

PROTO_15:
        0 LOADK                            R0 K0 ["Insert an asset into the scene by ID"]
        1 RETURN                           R0 1

PROTO_16:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AssetInsert"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"assetId"}]
        7 SETTABLEKS                       R0 R2 K4 ["assetId"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_17:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["AssetInsert"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["registerHydrator"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Type"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CALL                             R1 2 0
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K2 ["define"]
       17 CALL                             R2 0 1
       18 GETUPVAL                         R4 5
       19 GETTABLEKS                       R4 R4 K3 ["AssetInsert"]
       21 NAMECALL                         R2 R2 K4 ["setName"]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R4 5
       25 GETTABLEKS                       R4 R4 K5 ["replaceTokens"]
       27 LOADK                            R5 K6 ["Inserts an asset into the game by its numeric Roblox asset ID.\nUse this tool when you have a specific asset ID to insert directly, rather than searching the Creator Store.\nThe asset will be loaded, validated, and placed in the scene.\nAlways provide assetName when you know the name of the asset (e.g. from search results or user request). The inserted instance will be named using assetName — if omitted, it defaults to a generic name.\nSupports models, meshes, images/decals, audio, video, animations, and packages.\n"]
       28 CALL                             R4 1 -1
       29 NAMECALL                         R2 R2 K7 ["setDescription"]
       31 CALL                             R2 -1 1
       32 LOADK                            R4 K8 ["assetId"]
       33 DUPTABLE                         R5 K13 [{["type"] = "string", ["description"] = "Numeric Roblox asset ID to insert."}]
       34 NAMECALL                         R2 R2 K14 ["addArgument"]
       36 CALL                             R2 3 1
       37 LOADK                            R4 K15 ["assetName"]
       38 DUPTABLE                         R5 K17 [{["type"] = "string", ["description"] = "Name for the inserted instance in the game tree. Always provide this when you know the asset name (e.g. from search_asset results). If omitted, defaults to a generic name."}]
       39 NAMECALL                         R2 R2 K18 ["addOptionalArgument"]
       41 CALL                             R2 3 1
       42 LOADK                            R4 K19 ["assetType"]
       43 DUPTABLE                         R5 K22 [{["type"] = "string", ["enum"], ["description"] = "Asset type hint. If provided, skips the metadata API lookup and uses this type directly. Use when the caller already knows the asset type (e.g. from inventory search results). 'Image' and 'Decal' both insert as a Decal instance."}]
       44 NEWTABLE                         R6 0 9
       46 LOADK                            R7 K23 ["Model"]
       47 LOADK                            R8 K24 ["Package"]
       48 LOADK                            R9 K25 ["Mesh"]
       49 LOADK                            R10 K26 ["MeshPart"]
       50 LOADK                            R11 K27 ["Image"]
       51 LOADK                            R12 K28 ["Decal"]
       52 LOADK                            R13 K29 ["Audio"]
       53 LOADK                            R14 K30 ["Video"]
       54 LOADK                            R15 K31 ["Animation"]
       55 SETLIST                          R6 R7 9 [1]
       57 SETTABLEKS                       R6 R5 K20 ["enum"]
       59 NAMECALL                         R2 R2 K18 ["addOptionalArgument"]
       61 CALL                             R2 3 1
       62 LOADK                            R4 K32 ["parentPath"]
       63 DUPTABLE                         R5 K34 [{["type"] = "string", ["description"] = "DataModel path to parent the asset under (e.g. game.Workspace.Folder1). Defaults to workspace."}]
       64 NAMECALL                         R2 R2 K18 ["addOptionalArgument"]
       66 CALL                             R2 3 1
       67 MOVE                             R4 R1
       68 NAMECALL                         R2 R2 K35 ["setHandler"]
       70 CALL                             R2 2 1
       71 DUPTABLE                         R4 K43 [{["title"] = "Insert Asset", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       72 NAMECALL                         R2 R2 K44 ["setAnnotations"]
       74 CALL                             R2 2 1
       75 NAMECALL                         R2 R2 K45 ["build"]
       77 CALL                             R2 1 1
       78 DUPTABLE                         R3 K50 [{["command"] = "insert_asset", ["getDescription"], ["mapToToolCall"]}]
       79 DUPCLOSURE                       R4 K51 [PROTO_15]
       80 SETTABLEKS                       R4 R3 K48 ["getDescription"]
       82 DUPCLOSURE                       R4 K52 [PROTO_16]
       83 CAPTURE                          UPVAL U5
       84 SETTABLEKS                       R4 R3 K49 ["mapToToolCall"]
       86 DUPTABLE                         R4 K54 [{"transformInitialContent"}]
       87 DUPCLOSURE                       R5 K55 [PROTO_17]
       88 CAPTURE                          UPVAL U1
       89 SETTABLEKS                       R5 R4 K53 ["transformInitialContent"]
       91 DUPTABLE                         R5 K61 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction"}]
       92 SETTABLEKS                       R2 R5 K56 ["definition"]
       94 NEWTABLE                         R6 0 1
       96 MOVE                             R7 R3
       97 SETLIST                          R6 R7 1 [1]
       99 SETTABLEKS                       R6 R5 K57 ["slashCommands"]
      101 GETUPVAL                         R7 6
      102 GETTABLEKS                       R7 R7 K62 ["FFlagAssistantSplitToolsAndWidgets"]
      104 JUMPIFNOT                        R7 ; [+2]
      105 LOADNIL                          R6
      106 JUMP                             ; [+5]
      107 NEWTABLE                         R6 0 1
      109 GETUPVAL                         R7 1
      110 SETLIST                          R6 R7 1 [1]
      112 SETTABLEKS                       R6 R5 K58 ["contentWidgets"]
      114 SETTABLEKS                       R4 R5 K59 ["streamTransform"]
      116 GETUPVAL                         R7 6
      117 GETTABLEKS                       R7 R7 K62 ["FFlagAssistantSplitToolsAndWidgets"]
      119 JUMPIFNOT                        R7 ; [+2]
      120 LOADNIL                          R6
      121 JUMP                             ; [+2]
      122 DUPCLOSURE                       R6 K63 [PROTO_18]
      123 CAPTURE                          UPVAL U7
      124 SETTABLEKS                       R6 R5 K60 ["displayNameFunction"]
      126 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Parent"]
       29 GETTABLEKS                       R5 R5 K13 ["ModelContextProtocol"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Util"]
       36 GETTABLEKS                       R6 R6 K15 ["Serializer"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K16 ["Tools"]
       43 GETTABLEKS                       R7 R7 K17 ["ToolTypes"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R0 K18 ["Resources"]
       50 GETTABLEKS                       R8 R8 K19 ["Localization"]
       52 GETTABLEKS                       R8 R8 K20 ["Translator"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K21 ["Types"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K1 [script]
       62 LOADK                            R11 K22 ["AssetManagement"]
       63 NAMECALL                         R9 R9 K3 ["FindFirstAncestor"]
       65 CALL                             R9 2 1
       66 GETIMPORT                        R10 K9 [require]
       68 GETTABLEKS                       R11 R9 K23 ["AssetInsertTool"]
       70 GETTABLEKS                       R11 R11 K24 ["AssetInsertBridgeTypes"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K9 [require]
       75 GETTABLEKS                       R12 R9 K25 ["AssetInsertContentWidget"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K9 [require]
       80 GETTABLEKS                       R13 R9 K26 ["AssetManagementGuestUtils"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K9 [require]
       85 GETTABLEKS                       R14 R9 K27 ["AssetManagementUtils"]
       87 CALL                             R13 1 1
       88 GETTABLEKS                       R14 R13 K28 ["debugPrint"]
       90 GETTABLEKS                       R15 R4 K14 ["Util"]
       92 GETTABLEKS                       R15 R15 K29 ["ToolBuilder"]
       94 GETTABLEKS                       R16 R4 K14 ["Util"]
       96 GETTABLEKS                       R16 R16 K30 ["ToolResult"]
       98 GETTABLEKS                       R17 R6 K31 ["ToolNames"]
      100 DUPCLOSURE                       R18 K32 [PROTO_0]
      101 CAPTURE                          VAL R12
      102 DUPCLOSURE                       R19 K33 [PROTO_2]
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R12
      105 DUPCLOSURE                       R20 K34 [PROTO_4]
      106 DUPCLOSURE                       R21 K35 [PROTO_5]
      107 DUPCLOSURE                       R22 K36 [PROTO_7]
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R2
      112 DUPCLOSURE                       R23 K37 [PROTO_12]
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R22
      119 DUPTABLE                         R24 K39 [{"updateContentHeader"}]
      120 SETTABLEKS                       R19 R24 K38 ["updateContentHeader"]
      122 DUPCLOSURE                       R25 K40 [PROTO_19]
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R23
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R7
      131 DUPTABLE                         R26 K43 [{"bridge", "setupGuest"}]
      132 SETTABLEKS                       R24 R26 K41 ["bridge"]
      134 SETTABLEKS                       R25 R26 K42 ["setupGuest"]
      136 RETURN                           R26 1
