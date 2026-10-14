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

PROTO_2:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseNewDMNetworking"]
        5 JUMPIFNOT                        R3 ; [+10]
        6 GETIMPORT                        R3 K2 [pcall]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CALL                             R3 1 2
       13 MOVE                             R1 R3
       14 MOVE                             R2 R4
       15 JUMP                             ; [+20]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K3 ["bridges"]
       19 GETTABLEKS                       R3 R3 K4 ["AssetInsert"]
       21 GETTABLEKS                       R3 R3 K5 ["createGuestContext"]
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 CALL                             R3 2 1
       26 GETTABLEKS                       R3 R3 K6 ["bridge"]
       28 GETIMPORT                        R4 K2 [pcall]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R0
       33 CALL                             R4 1 2
       34 MOVE                             R1 R4
       35 MOVE                             R2 R5
       36 JUMPIF                           R1 ; [+33]
       37 GETUPVAL                         R3 4
       38 LOADK                            R4 K7 ["[AssetInsertTool] insertAssetAsync: ERROR: %*"]
       39 FASTCALL1                        TOSTRING R2 ; [+3]
       40 MOVE                             R7 R2
       41 GETIMPORT                        R6 K9 [tostring]
       43 CALL                             R6 1 1
       44 NAMECALL                         R4 R4 K10 ["format"]
       46 CALL                             R4 2 1
       47 CALL                             R3 1 0
       48 GETUPVAL                         R3 5
       49 CALL                             R3 0 1
       50 LOADK                            R5 K11 ["Failed to insert asset: %*"]
       51 FASTCALL1                        TOSTRING R2 ; [+3]
       52 MOVE                             R8 R2
       53 GETIMPORT                        R7 K9 [tostring]
       55 CALL                             R7 1 1
       56 NAMECALL                         R5 R5 K10 ["format"]
       58 CALL                             R5 2 1
       59 NAMECALL                         R3 R3 K12 ["addText"]
       61 CALL                             R3 2 1
       62 LOADB                            R5 1
       63 NAMECALL                         R3 R3 K13 ["setError"]
       65 CALL                             R3 2 1
       66 NAMECALL                         R3 R3 K14 ["build"]
       68 CALL                             R3 1 -1
       69 RETURN                           R3 -1
       70 GETTABLEKS                       R3 R2 K15 ["responseInfo"]
       72 JUMPIFNOT                        R3 ; [+26]
       73 GETTABLEKS                       R3 R2 K15 ["responseInfo"]
       75 DUPTABLE                         R4 K18 [{"tag", "assetName"}]
       76 GETTABLEKS                       R5 R3 K16 ["tag"]
       78 SETTABLEKS                       R5 R4 K16 ["tag"]
       80 GETTABLEKS                       R5 R3 K17 ["assetName"]
       82 SETTABLEKS                       R5 R4 K17 ["assetName"]
       84 GETUPVAL                         R5 5
       85 CALL                             R5 0 1
       86 GETTABLEKS                       R7 R2 K19 ["result"]
       88 NAMECALL                         R5 R5 K12 ["addText"]
       90 CALL                             R5 2 1
       91 MOVE                             R7 R4
       92 NAMECALL                         R5 R5 K20 ["setStructuredContent"]
       94 CALL                             R5 2 1
       95 NAMECALL                         R5 R5 K14 ["build"]
       97 CALL                             R5 1 -1
       98 RETURN                           R5 -1
       99 GETUPVAL                         R3 5
      100 CALL                             R3 0 1
      101 GETTABLEKS                       R5 R2 K19 ["result"]
      103 NAMECALL                         R3 R3 K12 ["addText"]
      105 CALL                             R3 2 1
      106 LOADB                            R5 1
      107 NAMECALL                         R3 R3 K13 ["setError"]
      109 CALL                             R3 2 1
      110 NAMECALL                         R3 R3 K14 ["build"]
      112 CALL                             R3 1 -1
      113 RETURN                           R3 -1

PROTO_3:
        0 LOADK                            R0 K0 ["Insert an asset into the scene by ID"]
        1 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AssetInsert"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"assetId"}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K4 ["assetId"]
       10 SETTABLEKS                       R2 R1 K1 ["arguments"]
       12 RETURN                           R1 1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R1
        6 SETLIST                          R2 R3 1 [1]
        8 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 GETUPVAL                         R4 5
       15 GETTABLEKS                       R4 R4 K2 ["define"]
       17 CALL                             R4 0 1
       18 GETUPVAL                         R6 6
       19 GETTABLEKS                       R6 R6 K3 ["AssetInsert"]
       21 NAMECALL                         R4 R4 K4 ["setName"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 6
       25 GETTABLEKS                       R6 R6 K5 ["replaceTokens"]
       27 LOADK                            R7 K6 ["Inserts an asset into the game by its numeric Roblox asset ID.\nUse this tool when you have a specific asset ID to insert directly, rather than searching the Creator Store.\nThe asset will be loaded, validated, and placed in the scene.\nAlways provide assetName when you know the name of the asset (e.g. from search results or user request). The inserted instance will be named using assetName — if omitted, it defaults to a generic name.\nSupports models, meshes, images/decals, audio, video, animations, and packages.\n"]
       28 CALL                             R6 1 -1
       29 NAMECALL                         R4 R4 K7 ["setDescription"]
       31 CALL                             R4 -1 1
       32 LOADK                            R6 K8 ["assetId"]
       33 DUPTABLE                         R7 K13 [{["type"] = "string", ["description"] = "Numeric Roblox asset ID to insert."}]
       34 NAMECALL                         R4 R4 K14 ["addArgument"]
       36 CALL                             R4 3 1
       37 LOADK                            R6 K15 ["assetName"]
       38 DUPTABLE                         R7 K17 [{["type"] = "string", ["description"] = "Name for the inserted instance in the game tree. Always provide this when you know the asset name (e.g. from search_asset results). If omitted, defaults to a generic name."}]
       39 NAMECALL                         R4 R4 K18 ["addOptionalArgument"]
       41 CALL                             R4 3 1
       42 LOADK                            R6 K19 ["assetType"]
       43 DUPTABLE                         R7 K22 [{["type"] = "string", ["enum"], ["description"] = "Asset type hint. If provided, skips the metadata API lookup and uses this type directly. Use when the caller already knows the asset type (e.g. from inventory search results). 'Image' and 'Decal' both insert as a Decal instance."}]
       44 NEWTABLE                         R8 0 9
       46 LOADK                            R9 K23 ["Model"]
       47 LOADK                            R10 K24 ["Package"]
       48 LOADK                            R11 K25 ["Mesh"]
       49 LOADK                            R12 K26 ["MeshPart"]
       50 LOADK                            R13 K27 ["Image"]
       51 LOADK                            R14 K28 ["Decal"]
       52 LOADK                            R15 K29 ["Audio"]
       53 LOADK                            R16 K30 ["Video"]
       54 LOADK                            R17 K31 ["Animation"]
       55 SETLIST                          R8 R9 9 [1]
       57 SETTABLEKS                       R8 R7 K20 ["enum"]
       59 NAMECALL                         R4 R4 K18 ["addOptionalArgument"]
       61 CALL                             R4 3 1
       62 LOADK                            R6 K32 ["parentPath"]
       63 DUPTABLE                         R7 K34 [{["type"] = "string", ["description"] = "DataModel path to parent the asset under (e.g. game.Workspace.Folder1). Defaults to workspace."}]
       64 NAMECALL                         R4 R4 K18 ["addOptionalArgument"]
       66 CALL                             R4 3 1
       67 MOVE                             R6 R3
       68 NAMECALL                         R4 R4 K35 ["setHandler"]
       70 CALL                             R4 2 1
       71 DUPTABLE                         R6 K43 [{["title"] = "Insert Asset", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       72 NAMECALL                         R4 R4 K44 ["setAnnotations"]
       74 CALL                             R4 2 1
       75 NAMECALL                         R4 R4 K45 ["build"]
       77 CALL                             R4 1 1
       78 DUPTABLE                         R5 K50 [{["command"] = "insert_asset", ["getDescription"], ["runToolChain"]}]
       79 DUPCLOSURE                       R6 K51 [PROTO_3]
       80 SETTABLEKS                       R6 R5 K48 ["getDescription"]
       82 DUPCLOSURE                       R6 K52 [PROTO_5]
       83 CAPTURE                          UPVAL U6
       84 SETTABLEKS                       R6 R5 K49 ["runToolChain"]
       86 DUPTABLE                         R6 K55 [{"definition", "slashCommands"}]
       87 SETTABLEKS                       R4 R6 K53 ["definition"]
       89 NEWTABLE                         R7 0 1
       91 MOVE                             R8 R5
       92 SETLIST                          R7 R8 1 [1]
       94 SETTABLEKS                       R7 R6 K54 ["slashCommands"]
       96 RETURN                           R6 1

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
       32 GETTABLEKS                       R5 R0 K13 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Parent"]
       39 GETTABLEKS                       R6 R6 K14 ["ModelContextProtocol"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Tools"]
       46 GETTABLEKS                       R7 R7 K16 ["ToolTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K17 ["Types"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R5 K8 ["Util"]
       56 GETTABLEKS                       R8 R8 K18 ["ToolBuilder"]
       58 GETTABLEKS                       R9 R5 K8 ["Util"]
       60 GETTABLEKS                       R9 R9 K19 ["ToolResult"]
       62 GETTABLEKS                       R10 R6 K20 ["ToolNames"]
       64 GETTABLEKS                       R11 R2 K21 ["debugPrint"]
       66 DUPCLOSURE                       R12 K22 [PROTO_6]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R10
       74 RETURN                           R12 1
