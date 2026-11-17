PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAsset"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FOCUSED"]
        6 DUPTABLE                         R3 K6 [{"assetId", "assetName", "assetType", "parentPath"}]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["assetId"]
       10 SETTABLEKS                       R4 R3 K2 ["assetId"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["assetName"]
       15 SETTABLEKS                       R4 R3 K3 ["assetName"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K4 ["assetType"]
       20 SETTABLEKS                       R4 R3 K4 ["assetType"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["parentPath"]
       25 SETTABLEKS                       R4 R3 K5 ["parentPath"]
       27 NAMECALL                         R0 R0 K7 ["InvokeAsync"]
       29 CALL                             R0 3 -1
       30 RETURN                           R0 -1

PROTO_1:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R3 K1 [pcall]
        9 CALL                             R3 1 2
       10 MOVE                             R1 R3
       11 MOVE                             R2 R4
       12 JUMPIF                           R1 ; [+33]
       13 GETUPVAL                         R3 2
       14 LOADK                            R4 K2 ["[AssetInsertTool] insertAssetAsync: ERROR: %*"]
       15 FASTCALL1                        TOSTRING R2 ; [+3]
       16 MOVE                             R7 R2
       17 GETIMPORT                        R6 K4 [tostring]
       19 CALL                             R6 1 1
       20 NAMECALL                         R4 R4 K5 ["format"]
       22 CALL                             R4 2 1
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 3
       25 CALL                             R3 0 1
       26 LOADK                            R5 K6 ["Failed to insert asset: %*"]
       27 FASTCALL1                        TOSTRING R2 ; [+3]
       28 MOVE                             R8 R2
       29 GETIMPORT                        R7 K4 [tostring]
       31 CALL                             R7 1 1
       32 NAMECALL                         R5 R5 K5 ["format"]
       34 CALL                             R5 2 1
       35 NAMECALL                         R3 R3 K7 ["addText"]
       37 CALL                             R3 2 1
       38 LOADB                            R5 1
       39 NAMECALL                         R3 R3 K8 ["setError"]
       41 CALL                             R3 2 1
       42 NAMECALL                         R3 R3 K9 ["build"]
       44 CALL                             R3 1 -1
       45 RETURN                           R3 -1
       46 GETTABLEKS                       R3 R2 K10 ["responseInfo"]
       48 JUMPIFNOT                        R3 ; [+26]
       49 GETTABLEKS                       R3 R2 K10 ["responseInfo"]
       51 DUPTABLE                         R4 K13 [{"tag", "assetName"}]
       52 GETTABLEKS                       R5 R3 K11 ["tag"]
       54 SETTABLEKS                       R5 R4 K11 ["tag"]
       56 GETTABLEKS                       R5 R3 K12 ["assetName"]
       58 SETTABLEKS                       R5 R4 K12 ["assetName"]
       60 GETUPVAL                         R5 3
       61 CALL                             R5 0 1
       62 GETTABLEKS                       R7 R2 K14 ["result"]
       64 NAMECALL                         R5 R5 K7 ["addText"]
       66 CALL                             R5 2 1
       67 MOVE                             R7 R4
       68 NAMECALL                         R5 R5 K15 ["setStructuredContent"]
       70 CALL                             R5 2 1
       71 NAMECALL                         R5 R5 K9 ["build"]
       73 CALL                             R5 1 -1
       74 RETURN                           R5 -1
       75 GETUPVAL                         R3 3
       76 CALL                             R3 0 1
       77 GETTABLEKS                       R5 R2 K14 ["result"]
       79 NAMECALL                         R3 R3 K7 ["addText"]
       81 CALL                             R3 2 1
       82 LOADB                            R5 1
       83 NAMECALL                         R3 R3 K8 ["setError"]
       85 CALL                             R3 2 1
       86 NAMECALL                         R3 R3 K9 ["build"]
       88 CALL                             R3 1 -1
       89 RETURN                           R3 -1

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
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 GETUPVAL                         R4 4
       13 GETTABLEKS                       R4 R4 K2 ["define"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R6 R6 K3 ["AssetInsert"]
       19 NAMECALL                         R4 R4 K4 ["setName"]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R6 5
       23 GETTABLEKS                       R6 R6 K5 ["replaceTokens"]
       25 LOADK                            R7 K6 ["Inserts an asset into the game by its numeric Roblox asset ID.\nUse this tool when you have a specific asset ID to insert directly, rather than searching the Creator Store.\nThe asset will be loaded, validated, and placed in the scene.\nAlways provide assetName when you know the name of the asset (e.g. from search results or user request). The inserted instance will be named using assetName — if omitted, it defaults to a generic name.\nSupports models, meshes, images/decals, audio, video, animations, and packages.\n"]
       26 CALL                             R6 1 -1
       27 NAMECALL                         R4 R4 K7 ["setDescription"]
       29 CALL                             R4 -1 1
       30 LOADK                            R6 K8 ["assetId"]
       31 DUPTABLE                         R7 K13 [{["type"] = "string", ["description"] = "Numeric Roblox asset ID to insert."}]
       32 NAMECALL                         R4 R4 K14 ["addArgument"]
       34 CALL                             R4 3 1
       35 LOADK                            R6 K15 ["assetName"]
       36 DUPTABLE                         R7 K17 [{["type"] = "string", ["description"] = "Name for the inserted instance in the game tree. Always provide this when you know the asset name (e.g. from search_asset results). If omitted, defaults to a generic name."}]
       37 NAMECALL                         R4 R4 K18 ["addOptionalArgument"]
       39 CALL                             R4 3 1
       40 LOADK                            R6 K19 ["assetType"]
       41 DUPTABLE                         R7 K22 [{["type"] = "string", ["enum"], ["description"] = "Asset type hint. If provided, skips the metadata API lookup and uses this type directly. Use when the caller already knows the asset type (e.g. from inventory search results). 'Image' and 'Decal' both insert as a Decal instance."}]
       42 NEWTABLE                         R8 0 9
       44 LOADK                            R9 K23 ["Model"]
       45 LOADK                            R10 K24 ["Package"]
       46 LOADK                            R11 K25 ["Mesh"]
       47 LOADK                            R12 K26 ["MeshPart"]
       48 LOADK                            R13 K27 ["Image"]
       49 LOADK                            R14 K28 ["Decal"]
       50 LOADK                            R15 K29 ["Audio"]
       51 LOADK                            R16 K30 ["Video"]
       52 LOADK                            R17 K31 ["Animation"]
       53 SETLIST                          R8 R9 9 [1]
       55 SETTABLEKS                       R8 R7 K20 ["enum"]
       57 NAMECALL                         R4 R4 K18 ["addOptionalArgument"]
       59 CALL                             R4 3 1
       60 LOADK                            R6 K32 ["parentPath"]
       61 DUPTABLE                         R7 K34 [{["type"] = "string", ["description"] = "DataModel path to parent the asset under (e.g. game.Workspace.Folder1). Defaults to workspace."}]
       62 NAMECALL                         R4 R4 K18 ["addOptionalArgument"]
       64 CALL                             R4 3 1
       65 MOVE                             R6 R3
       66 NAMECALL                         R4 R4 K35 ["setHandler"]
       68 CALL                             R4 2 1
       69 LOADK                            R6 K36 ["Insert Asset"]
       70 NAMECALL                         R4 R4 K37 ["setTitle"]
       72 CALL                             R4 2 1
       73 DUPTABLE                         R6 K45 [{["title"] = "Insert Asset", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
       74 NAMECALL                         R4 R4 K46 ["setAnnotations"]
       76 CALL                             R4 2 1
       77 NAMECALL                         R4 R4 K47 ["build"]
       79 CALL                             R4 1 1
       80 DUPTABLE                         R5 K52 [{["command"] = "insert_asset", ["getDescription"], ["runToolChain"]}]
       81 DUPCLOSURE                       R6 K53 [PROTO_2]
       82 SETTABLEKS                       R6 R5 K50 ["getDescription"]
       84 DUPCLOSURE                       R6 K54 [PROTO_4]
       85 CAPTURE                          UPVAL U5
       86 SETTABLEKS                       R6 R5 K51 ["runToolChain"]
       88 DUPTABLE                         R6 K57 [{"definition", "slashCommands"}]
       89 SETTABLEKS                       R4 R6 K55 ["definition"]
       91 NEWTABLE                         R7 0 1
       93 MOVE                             R8 R5
       94 SETLIST                          R7 R8 1 [1]
       96 SETTABLEKS                       R7 R6 K56 ["slashCommands"]
       98 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Remotes"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetInsertRemotes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["AssetManagement"]
       20 GETTABLEKS                       R3 R3 K10 ["AssetManagementUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["DMNetworking"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["ModelContextProtocol"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Tools"]
       41 GETTABLEKS                       R6 R6 K15 ["ToolTypes"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Types"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R4 K8 ["Util"]
       51 GETTABLEKS                       R7 R7 K17 ["ToolBuilder"]
       53 GETTABLEKS                       R8 R4 K8 ["Util"]
       55 GETTABLEKS                       R8 R8 K18 ["ToolResult"]
       57 GETTABLEKS                       R9 R5 K19 ["ToolNames"]
       59 GETTABLEKS                       R10 R2 K20 ["debugPrint"]
       61 DUPCLOSURE                       R11 K21 [PROTO_5]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 RETURN                           R11 1
