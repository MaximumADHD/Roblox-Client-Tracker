PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createFreshGuestContext"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["createGuestContext"]
        6 MOVE                             R7 R0
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 MOVE                             R10 R3
       10 MOVE                             R11 R4
       11 CALL                             R5 6 -1
       12 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getWidgetUpdateFunctions"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["AssetInsertTool"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
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
       21 DUPTABLE                         R1 K9 [{"rawTransformValues"}]
       22 LOADB                            R2 1
       23 SETTABLEKS                       R2 R1 K8 ["rawTransformValues"]
       25 RETURN                           R1 1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["selectInsertedAssets"]
        5 DUPTABLE                         R1 K3 [{"tag"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["tag"]
        9 SETTABLEKS                       R2 R1 K2 ["tag"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 SETTABLEKS                       R2 R1 K0 ["onChipClicked"]
        5 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R1 K0 ["responseInfo"]
        2 GETTABLEKS                       R4 R3 K1 ["assetName"]
        4 GETTABLEKS                       R5 R3 K2 ["tag"]
        6 DUPTABLE                         R6 K10 [{"type", "mode", "name", "displayName", "tag", "className", "shouldShowChip", "onChipClicked"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K11 ["Type"]
       10 SETTABLEKS                       R7 R6 K3 ["type"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K12 ["Modes"]
       15 GETTABLEKS                       R7 R7 K13 ["Inserted"]
       17 SETTABLEKS                       R7 R6 K4 ["mode"]
       19 SETTABLEKS                       R4 R6 K5 ["name"]
       21 SETTABLEKS                       R4 R6 K6 ["displayName"]
       23 SETTABLEKS                       R5 R6 K2 ["tag"]
       25 GETTABLEKS                       R7 R3 K7 ["className"]
       27 SETTABLEKS                       R7 R6 K7 ["className"]
       29 LOADB                            R7 0
       30 SETTABLEKS                       R7 R6 K8 ["shouldShowChip"]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R7 R7 K14 ["createUnimplemented"]
       35 LOADK                            R8 K9 ["onChipClicked"]
       36 CALL                             R7 1 1
       37 SETTABLEKS                       R7 R6 K9 ["onChipClicked"]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R6
       42 SETTABLEKS                       R7 R6 K9 ["onChipClicked"]
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R7 R7 K15 ["getWidgetUpdateFunctions"]
       47 MOVE                             R8 R0
       48 LOADK                            R9 K16 ["AssetInsertTool"]
       49 CALL                             R7 2 1
       50 GETTABLEKS                       R8 R7 K17 ["updateWidget"]
       52 NEWCLOSURE                       R9 P1
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R6
       55 CALL                             R8 1 0
       56 JUMPIFNOT                        R2 ; [+1]
       57 RETURN                           R0 0
       58 GETTABLEKS                       R8 R0 K18 ["bridge"]
       60 GETTABLEKS                       R8 R8 K19 ["listenToLinkChanges"]
       62 DUPTABLE                         R9 K20 [{"name", "tag"}]
       63 GETTABLEKS                       R10 R6 K5 ["name"]
       65 SETTABLEKS                       R10 R9 K5 ["name"]
       67 GETTABLEKS                       R10 R6 K2 ["tag"]
       69 SETTABLEKS                       R10 R9 K2 ["tag"]
       71 CALL                             R8 1 0
       72 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K4 [{"type", "mode", "isError"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K5 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K6 ["Modes"]
       13 GETTABLEKS                       R4 R4 K7 ["Preparing"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K3 ["isError"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K4 [{"type", "mode", "isError"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K5 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K6 ["Modes"]
       13 GETTABLEKS                       R4 R4 K7 ["Preparing"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K3 ["isError"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_13:
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
       26 JUMPIF                           R5 ; [+46]
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
       41 DUPCLOSURE                       R8 K12 [PROTO_11]
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 CALL                             R7 1 0
       45 GETUPVAL                         R7 4
       46 DUPTABLE                         R9 K16 [{"status", "error", "nextSteps"}]
       47 LOADK                            R10 K14 ["error"]
       48 SETTABLEKS                       R10 R9 K13 ["status"]
       50 LOADK                            R11 K17 ["Failed to insert asset: %*"]
       51 FASTCALL1                        TOSTRING R6 ; [+3]
       52 MOVE                             R14 R6
       53 GETIMPORT                        R13 K10 [tostring]
       55 CALL                             R13 1 1
       56 NAMECALL                         R11 R11 K11 ["format"]
       58 CALL                             R11 2 1
       59 MOVE                             R10 R11
       60 SETTABLEKS                       R10 R9 K14 ["error"]
       62 NEWTABLE                         R10 0 1
       64 LOADK                            R11 K18 ["Retry the insertion. If this persists, the asset may be unavailable or restricted."]
       65 SETLIST                          R10 R11 1 [1]
       67 SETTABLEKS                       R10 R9 K15 ["nextSteps"]
       69 NAMECALL                         R7 R7 K19 ["JSONEncode"]
       71 CALL                             R7 2 -1
       72 RETURN                           R7 -1
       73 GETTABLEKS                       R7 R6 K20 ["responseInfo"]
       75 JUMPIFNOT                        R7 ; [+6]
       76 GETUPVAL                         R7 5
       77 MOVE                             R8 R0
       78 MOVE                             R9 R6
       79 MOVE                             R10 R2
       80 CALL                             R7 3 0
       81 JUMP                             ; [+6]
       82 GETTABLEKS                       R7 R4 K5 ["updateWidget"]
       84 DUPCLOSURE                       R8 K21 [PROTO_12]
       85 CAPTURE                          UPVAL U1
       86 CAPTURE                          UPVAL U2
       87 CALL                             R7 1 0
       88 GETTABLEKS                       R7 R6 K22 ["result"]
       90 RETURN                           R7 1

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["Inserted"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K3 ["createFreshGuestContext"]
       15 GETUPVAL                         R6 4
       16 GETTABLEKS                       R6 R6 K4 ["createGuestContext"]
       18 MOVE                             R7 R3
       19 MOVE                             R8 R4
       20 LOADB                            R9 0
       21 LOADNIL                          R10
       22 MOVE                             R11 R0
       23 CALL                             R5 6 1
       24 MOVE                             R2 R5
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R3 R1 K5 ["onChipClicked"]
       30 GETTABLEKS                       R3 R2 K6 ["bridge"]
       32 GETTABLEKS                       R3 R3 K7 ["listenToLinkChanges"]
       34 DUPTABLE                         R4 K10 [{"name", "tag"}]
       35 GETTABLEKS                       R5 R1 K8 ["name"]
       37 SETTABLEKS                       R5 R4 K8 ["name"]
       39 GETTABLEKS                       R5 R1 K9 ["tag"]
       41 SETTABLEKS                       R5 R4 K9 ["tag"]
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["registerHydrator"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Type"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K2 ["createToolHandler"]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R5 R5 K3 ["createGuestContext"]
       24 GETUPVAL                         R6 5
       25 CALL                             R2 4 1
       26 GETUPVAL                         R3 6
       27 GETTABLEKS                       R3 R3 K4 ["define"]
       29 CALL                             R3 0 1
       30 GETUPVAL                         R5 7
       31 GETTABLEKS                       R5 R5 K5 ["AssetInsert"]
       33 NAMECALL                         R3 R3 K6 ["setName"]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R5 7
       37 GETTABLEKS                       R5 R5 K7 ["replaceTokens"]
       39 LOADK                            R6 K8 ["Inserts an asset into the game by its numeric Roblox asset ID.\nUse this tool when you have a specific asset ID to insert directly, rather than searching the Creator Store.\nThe asset will be loaded, validated, and placed in the scene.\nAlways provide assetName when you know the name of the asset (e.g. from search results or user request). The inserted instance will be named using assetName — if omitted, it defaults to a generic name.\nSupports models, meshes, images/decals, audio, video, animations, and packages.\n"]
       40 CALL                             R5 1 -1
       41 NAMECALL                         R3 R3 K9 ["setDescription"]
       43 CALL                             R3 -1 1
       44 LOADK                            R5 K10 ["assetId"]
       45 DUPTABLE                         R6 K13 [{"type", "description"}]
       46 LOADK                            R7 K14 ["string"]
       47 SETTABLEKS                       R7 R6 K11 ["type"]
       49 LOADK                            R7 K15 ["Numeric Roblox asset ID to insert."]
       50 SETTABLEKS                       R7 R6 K12 ["description"]
       52 NAMECALL                         R3 R3 K16 ["addArgument"]
       54 CALL                             R3 3 1
       55 LOADK                            R5 K17 ["assetName"]
       56 DUPTABLE                         R6 K13 [{"type", "description"}]
       57 LOADK                            R7 K14 ["string"]
       58 SETTABLEKS                       R7 R6 K11 ["type"]
       60 LOADK                            R7 K18 ["Name for the inserted instance in the game tree. Always provide this when you know the asset name (e.g. from search_asset results). If omitted, defaults to a generic name."]
       61 SETTABLEKS                       R7 R6 K12 ["description"]
       63 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       65 CALL                             R3 3 1
       66 LOADK                            R5 K20 ["assetType"]
       67 DUPTABLE                         R6 K22 [{"type", "enum", "description"}]
       68 LOADK                            R7 K14 ["string"]
       69 SETTABLEKS                       R7 R6 K11 ["type"]
       71 NEWTABLE                         R7 0 8
       73 LOADK                            R8 K23 ["Model"]
       74 LOADK                            R9 K24 ["Package"]
       75 LOADK                            R10 K25 ["Mesh"]
       76 LOADK                            R11 K26 ["MeshPart"]
       77 LOADK                            R12 K27 ["Decal"]
       78 LOADK                            R13 K28 ["Audio"]
       79 LOADK                            R14 K29 ["Video"]
       80 LOADK                            R15 K30 ["Animation"]
       81 SETLIST                          R7 R8 8 [1]
       83 SETTABLEKS                       R7 R6 K21 ["enum"]
       85 LOADK                            R7 K31 ["Asset type hint. If provided, skips the metadata API lookup and uses this type directly. Use when the caller already knows the asset type (e.g. from inventory search results)."]
       86 SETTABLEKS                       R7 R6 K12 ["description"]
       88 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       90 CALL                             R3 3 1
       91 LOADK                            R5 K32 ["parentPath"]
       92 DUPTABLE                         R6 K13 [{"type", "description"}]
       93 LOADK                            R7 K14 ["string"]
       94 SETTABLEKS                       R7 R6 K11 ["type"]
       96 LOADK                            R7 K33 ["DataModel path to parent the asset under (e.g. game.Workspace.Folder1). Defaults to workspace."]
       97 SETTABLEKS                       R7 R6 K12 ["description"]
       99 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      101 CALL                             R3 3 1
      102 MOVE                             R5 R2
      103 NAMECALL                         R3 R3 K34 ["setHandler"]
      105 CALL                             R3 2 1
      106 DUPTABLE                         R5 K40 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      107 LOADK                            R6 K41 ["Insert Asset"]
      108 SETTABLEKS                       R6 R5 K35 ["title"]
      110 LOADB                            R6 0
      111 SETTABLEKS                       R6 R5 K36 ["readOnlyHint"]
      113 LOADB                            R6 0
      114 SETTABLEKS                       R6 R5 K37 ["destructiveHint"]
      116 LOADB                            R6 0
      117 SETTABLEKS                       R6 R5 K38 ["idempotentHint"]
      119 LOADB                            R6 0
      120 SETTABLEKS                       R6 R5 K39 ["openWorldHint"]
      122 NAMECALL                         R3 R3 K42 ["setAnnotations"]
      124 CALL                             R3 2 1
      125 NAMECALL                         R3 R3 K43 ["build"]
      127 CALL                             R3 1 1
      128 DUPTABLE                         R4 K47 [{"command", "getDescription", "mapToToolCall"}]
      129 LOADK                            R5 K48 ["insert_asset"]
      130 SETTABLEKS                       R5 R4 K44 ["command"]
      132 DUPCLOSURE                       R5 K49 [PROTO_15]
      133 SETTABLEKS                       R5 R4 K45 ["getDescription"]
      135 DUPCLOSURE                       R5 K50 [PROTO_16]
      136 CAPTURE                          UPVAL U7
      137 SETTABLEKS                       R5 R4 K46 ["mapToToolCall"]
      139 DUPTABLE                         R5 K52 [{"transformInitialContent"}]
      140 DUPCLOSURE                       R6 K53 [PROTO_17]
      141 CAPTURE                          UPVAL U2
      142 SETTABLEKS                       R6 R5 K51 ["transformInitialContent"]
      144 DUPTABLE                         R6 K58 [{"definition", "slashCommands", "contentWidgets", "streamTransform"}]
      145 SETTABLEKS                       R3 R6 K54 ["definition"]
      147 NEWTABLE                         R7 0 1
      149 MOVE                             R8 R4
      150 SETLIST                          R7 R8 1 [1]
      152 SETTABLEKS                       R7 R6 K55 ["slashCommands"]
      154 NEWTABLE                         R7 0 1
      156 GETUPVAL                         R8 2
      157 SETLIST                          R7 R8 1 [1]
      159 SETTABLEKS                       R7 R6 K56 ["contentWidgets"]
      161 SETTABLEKS                       R5 R6 K57 ["streamTransform"]
      163 RETURN                           R6 1

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
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["Serializer"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Tools"]
       32 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K15 [game]
       42 LOADK                            R8 K16 ["HttpService"]
       43 NAMECALL                         R6 R6 K17 ["GetService"]
       45 CALL                             R6 2 1
       46 GETIMPORT                        R7 K1 [script]
       48 LOADK                            R9 K18 ["AssetManagement"]
       49 NAMECALL                         R7 R7 K3 ["FindFirstAncestor"]
       51 CALL                             R7 2 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R7 K19 ["AssetInsertTool"]
       56 GETTABLEKS                       R9 R9 K20 ["AssetInsertBridge"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R7 K19 ["AssetInsertTool"]
       63 GETTABLEKS                       R10 R10 K21 ["AssetInsertBridgeTypes"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R7 K22 ["AssetInsertContentWidget"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETTABLEKS                       R12 R7 K23 ["AssetManagementGuestUtils"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K5 [require]
       78 GETTABLEKS                       R13 R7 K24 ["AssetManagementUtils"]
       80 CALL                             R12 1 1
       81 GETTABLEKS                       R13 R12 K25 ["debugPrint"]
       83 GETIMPORT                        R14 K5 [require]
       85 GETTABLEKS                       R15 R0 K26 ["Flags"]
       87 GETTABLEKS                       R15 R15 K27 ["FFlagAssistantMultipleChatPersistence"]
       89 CALL                             R14 1 1
       90 GETTABLEKS                       R15 R2 K9 ["Util"]
       92 GETTABLEKS                       R15 R15 K28 ["ToolBuilder"]
       94 GETTABLEKS                       R16 R4 K29 ["ToolNames"]
       96 DUPCLOSURE                       R17 K30 [PROTO_0]
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R8
       99 DUPCLOSURE                       R18 K31 [PROTO_1]
      100 CAPTURE                          VAL R11
      101 DUPCLOSURE                       R19 K32 [PROTO_3]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R11
      104 DUPCLOSURE                       R20 K33 [PROTO_5]
      105 DUPCLOSURE                       R21 K34 [PROTO_6]
      106 DUPCLOSURE                       R22 K35 [PROTO_8]
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R1
      111 DUPCLOSURE                       R23 K36 [PROTO_13]
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R22
      118 DUPTABLE                         R24 K38 [{"updateContentHeader"}]
      119 SETTABLEKS                       R19 R24 K37 ["updateContentHeader"]
      121 DUPCLOSURE                       R25 K39 [PROTO_18]
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R23
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R16
      130 DUPTABLE                         R26 K42 [{"bridge", "setupGuest"}]
      131 SETTABLEKS                       R24 R26 K40 ["bridge"]
      133 SETTABLEKS                       R25 R26 K41 ["setupGuest"]
      135 RETURN                           R26 1
