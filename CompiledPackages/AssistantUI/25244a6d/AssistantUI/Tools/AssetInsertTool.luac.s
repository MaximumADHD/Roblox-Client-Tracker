PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssetAsync"]
        3 DUPTABLE                         R1 K5 [{"assetId", "assetName", "assetType", "parentPath"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["assetId"]
        7 SETTABLEKS                       R2 R1 K1 ["assetId"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["assetName"]
       12 SETTABLEKS                       R2 R1 K2 ["assetName"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["assetType"]
       17 SETTABLEKS                       R2 R1 K3 ["assetType"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["parentPath"]
       22 SETTABLEKS                       R2 R1 K4 ["parentPath"]
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridges"]
        3 GETTABLEKS                       R1 R1 K1 ["AssetInsert"]
        5 GETTABLEKS                       R1 R1 K2 ["createGuestContext"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K3 ["bridge"]
       12 GETIMPORT                        R2 K5 [pcall]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 CALL                             R2 1 2
       18 JUMPIF                           R2 ; [+35]
       19 GETUPVAL                         R4 1
       20 LOADK                            R6 K6 ["[AssetInsertTool] insertAssetAsync: ERROR: %*"]
       21 FASTCALL1                        TOSTRING R3 ; [+3]
       22 MOVE                             R9 R3
       23 GETIMPORT                        R8 K8 [tostring]
       25 CALL                             R8 1 1
       26 NAMECALL                         R6 R6 K9 ["format"]
       28 CALL                             R6 2 1
       29 MOVE                             R5 R6
       30 CALL                             R4 1 0
       31 GETUPVAL                         R4 2
       32 CALL                             R4 0 1
       33 LOADK                            R7 K10 ["Failed to insert asset: %*"]
       34 FASTCALL1                        TOSTRING R3 ; [+3]
       35 MOVE                             R10 R3
       36 GETIMPORT                        R9 K8 [tostring]
       38 CALL                             R9 1 1
       39 NAMECALL                         R7 R7 K9 ["format"]
       41 CALL                             R7 2 1
       42 MOVE                             R6 R7
       43 NAMECALL                         R4 R4 K11 ["addText"]
       45 CALL                             R4 2 1
       46 LOADB                            R6 1
       47 NAMECALL                         R4 R4 K12 ["setError"]
       49 CALL                             R4 2 1
       50 NAMECALL                         R4 R4 K13 ["build"]
       52 CALL                             R4 1 -1
       53 RETURN                           R4 -1
       54 GETTABLEKS                       R4 R3 K14 ["responseInfo"]
       56 JUMPIFNOT                        R4 ; [+26]
       57 GETTABLEKS                       R4 R3 K14 ["responseInfo"]
       59 DUPTABLE                         R5 K17 [{"tag", "assetName"}]
       60 GETTABLEKS                       R6 R4 K15 ["tag"]
       62 SETTABLEKS                       R6 R5 K15 ["tag"]
       64 GETTABLEKS                       R6 R4 K16 ["assetName"]
       66 SETTABLEKS                       R6 R5 K16 ["assetName"]
       68 GETUPVAL                         R6 2
       69 CALL                             R6 0 1
       70 GETTABLEKS                       R8 R3 K18 ["result"]
       72 NAMECALL                         R6 R6 K11 ["addText"]
       74 CALL                             R6 2 1
       75 MOVE                             R8 R5
       76 NAMECALL                         R6 R6 K19 ["setStructuredContent"]
       78 CALL                             R6 2 1
       79 NAMECALL                         R6 R6 K13 ["build"]
       81 CALL                             R6 1 -1
       82 RETURN                           R6 -1
       83 GETUPVAL                         R4 2
       84 CALL                             R4 0 1
       85 GETTABLEKS                       R6 R3 K18 ["result"]
       87 NAMECALL                         R4 R4 K11 ["addText"]
       89 CALL                             R4 2 1
       90 LOADB                            R6 1
       91 NAMECALL                         R4 R4 K12 ["setError"]
       93 CALL                             R4 2 1
       94 NAMECALL                         R4 R4 K13 ["build"]
       96 CALL                             R4 1 -1
       97 RETURN                           R4 -1

PROTO_2:
        0 LOADK                            R0 K0 ["Insert an asset into the scene by ID"]
        1 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AssetInsert"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"assetId"}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K4 ["assetId"]
       10 SETTABLEKS                       R2 R1 K1 ["arguments"]
       12 RETURN                           R1 1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R1
        6 SETLIST                          R2 R3 1 [1]
        8 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AssetInsert"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"assetId"}]
        7 SETTABLEKS                       R0 R2 K4 ["assetId"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAssetSearchInsertTool"]
        3 JUMPIF                           R2 ; [+3]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantAssetSearchInsertToolABTest"]
        7 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        9 LOADK                            R3 K2 ["Asset insert tool requires FFlagAssistantAssetSearchInsertTool or FFlagAssistantAssetSearchInsertToolABTest to be enabled"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K5 ["define"]
       20 CALL                             R2 0 1
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K6 ["AssetInsert"]
       24 NAMECALL                         R2 R2 K7 ["setName"]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K8 ["replaceTokens"]
       30 LOADK                            R5 K9 ["Inserts an asset into the game by its numeric Roblox asset ID.\nUse this tool when you have a specific asset ID to insert directly, rather than searching the Creator Store.\nThe asset will be loaded, validated, and placed in the scene.\nAlways provide assetName when you know the name of the asset (e.g. from search results or user request). The inserted instance will be named using assetName — if omitted, it defaults to a generic name.\nSupports models, meshes, images/decals, audio, video, animations, and packages.\n"]
       31 CALL                             R4 1 -1
       32 NAMECALL                         R2 R2 K10 ["setDescription"]
       34 CALL                             R2 -1 1
       35 LOADK                            R4 K11 ["assetId"]
       36 DUPTABLE                         R5 K16 [{["type"] = "string", ["description"] = "Numeric Roblox asset ID to insert."}]
       37 NAMECALL                         R2 R2 K17 ["addArgument"]
       39 CALL                             R2 3 1
       40 LOADK                            R4 K18 ["assetName"]
       41 DUPTABLE                         R5 K20 [{["type"] = "string", ["description"] = "Name for the inserted instance in the game tree. Always provide this when you know the asset name (e.g. from search_asset results). If omitted, defaults to a generic name."}]
       42 NAMECALL                         R2 R2 K21 ["addOptionalArgument"]
       44 CALL                             R2 3 1
       45 LOADK                            R4 K22 ["assetType"]
       46 DUPTABLE                         R5 K25 [{["type"] = "string", ["enum"], ["description"] = "Asset type hint. If provided, skips the metadata API lookup and uses this type directly. Use when the caller already knows the asset type (e.g. from inventory search results). 'Image' and 'Decal' both insert as a Decal instance."}]
       47 NEWTABLE                         R6 0 9
       49 LOADK                            R7 K26 ["Model"]
       50 LOADK                            R8 K27 ["Package"]
       51 LOADK                            R9 K28 ["Mesh"]
       52 LOADK                            R10 K29 ["MeshPart"]
       53 LOADK                            R11 K30 ["Image"]
       54 LOADK                            R12 K31 ["Decal"]
       55 LOADK                            R13 K32 ["Audio"]
       56 LOADK                            R14 K33 ["Video"]
       57 LOADK                            R15 K34 ["Animation"]
       58 SETLIST                          R6 R7 9 [1]
       60 SETTABLEKS                       R6 R5 K23 ["enum"]
       62 NAMECALL                         R2 R2 K21 ["addOptionalArgument"]
       64 CALL                             R2 3 1
       65 LOADK                            R4 K35 ["parentPath"]
       66 DUPTABLE                         R5 K37 [{["type"] = "string", ["description"] = "DataModel path to parent the asset under (e.g. game.Workspace.Folder1). Defaults to workspace."}]
       67 NAMECALL                         R2 R2 K21 ["addOptionalArgument"]
       69 CALL                             R2 3 1
       70 MOVE                             R4 R1
       71 NAMECALL                         R2 R2 K38 ["setHandler"]
       73 CALL                             R2 2 1
       74 DUPTABLE                         R4 K46 [{["title"] = "Insert Asset", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       75 NAMECALL                         R2 R2 K47 ["setAnnotations"]
       77 CALL                             R2 2 1
       78 NAMECALL                         R2 R2 K48 ["build"]
       80 CALL                             R2 1 1
       81 DUPTABLE                         R3 K54 [{["command"] = "insert_asset", ["getDescription"], ["runToolChain"], ["mapToToolCall"]}]
       82 DUPCLOSURE                       R4 K55 [PROTO_2]
       83 SETTABLEKS                       R4 R3 K51 ["getDescription"]
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K56 ["FFlagAssistantAskInputTool"]
       88 JUMPIFNOT                        R5 ; [+3]
       89 DUPCLOSURE                       R4 K57 [PROTO_4]
       90 CAPTURE                          UPVAL U4
       91 JUMP                             ; [+1]
       92 LOADNIL                          R4
       93 SETTABLEKS                       R4 R3 K52 ["runToolChain"]
       95 GETUPVAL                         R5 0
       96 GETTABLEKS                       R5 R5 K56 ["FFlagAssistantAskInputTool"]
       98 JUMPIFNOT                        R5 ; [+2]
       99 LOADNIL                          R4
      100 JUMP                             ; [+2]
      101 DUPCLOSURE                       R4 K58 [PROTO_5]
      102 CAPTURE                          UPVAL U4
      103 SETTABLEKS                       R4 R3 K53 ["mapToToolCall"]
      105 DUPTABLE                         R4 K61 [{"definition", "slashCommands"}]
      106 SETTABLEKS                       R2 R4 K59 ["definition"]
      108 NEWTABLE                         R5 0 1
      110 MOVE                             R6 R3
      111 SETLIST                          R5 R6 1 [1]
      113 SETTABLEKS                       R5 R4 K60 ["slashCommands"]
      115 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetManagementUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Tools"]
       32 GETTABLEKS                       R5 R5 K13 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Types"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R3 K6 ["Util"]
       42 GETTABLEKS                       R6 R6 K15 ["ToolBuilder"]
       44 GETTABLEKS                       R7 R3 K6 ["Util"]
       46 GETTABLEKS                       R7 R7 K16 ["ToolResult"]
       48 GETTABLEKS                       R8 R4 K17 ["ToolNames"]
       50 GETTABLEKS                       R9 R1 K18 ["debugPrint"]
       52 DUPCLOSURE                       R10 K19 [PROTO_6]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 RETURN                           R10 1
