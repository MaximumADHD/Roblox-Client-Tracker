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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantAssetSearchInsertTool"]
       11 JUMPIF                           R2 ; [+3]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["FFlagAssistantAssetSearchInsertToolABTest"]
       15 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       17 LOADK                            R3 K3 ["Asset insert tool requires FFlagAssistantAssetSearchInsertTool or FFlagAssistantAssetSearchInsertToolABTest to be enabled"]
       18 GETIMPORT                        R1 K5 [assert]
       20 CALL                             R1 2 0
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R2 R2 K6 ["define"]
       28 CALL                             R2 0 1
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K7 ["AssetInsert"]
       32 NAMECALL                         R2 R2 K8 ["setName"]
       34 CALL                             R2 2 1
       35 GETUPVAL                         R4 5
       36 GETTABLEKS                       R4 R4 K9 ["replaceTokens"]
       38 LOADK                            R5 K10 ["Inserts an asset into the game by its numeric Roblox asset ID.\nUse this tool when you have a specific asset ID to insert directly, rather than searching the Creator Store.\nThe asset will be loaded, validated, and placed in the scene.\nAlways provide assetName when you know the name of the asset (e.g. from search results or user request). The inserted instance will be named using assetName — if omitted, it defaults to a generic name.\nSupports models, meshes, images/decals, audio, video, animations, and packages.\n"]
       39 CALL                             R4 1 -1
       40 NAMECALL                         R2 R2 K11 ["setDescription"]
       42 CALL                             R2 -1 1
       43 LOADK                            R4 K12 ["assetId"]
       44 DUPTABLE                         R5 K17 [{["type"] = "string", ["description"] = "Numeric Roblox asset ID to insert."}]
       45 NAMECALL                         R2 R2 K18 ["addArgument"]
       47 CALL                             R2 3 1
       48 LOADK                            R4 K19 ["assetName"]
       49 DUPTABLE                         R5 K21 [{["type"] = "string", ["description"] = "Name for the inserted instance in the game tree. Always provide this when you know the asset name (e.g. from search_asset results). If omitted, defaults to a generic name."}]
       50 NAMECALL                         R2 R2 K22 ["addOptionalArgument"]
       52 CALL                             R2 3 1
       53 LOADK                            R4 K23 ["assetType"]
       54 DUPTABLE                         R5 K26 [{["type"] = "string", ["enum"], ["description"] = "Asset type hint. If provided, skips the metadata API lookup and uses this type directly. Use when the caller already knows the asset type (e.g. from inventory search results). 'Image' and 'Decal' both insert as a Decal instance."}]
       55 NEWTABLE                         R6 0 9
       57 LOADK                            R7 K27 ["Model"]
       58 LOADK                            R8 K28 ["Package"]
       59 LOADK                            R9 K29 ["Mesh"]
       60 LOADK                            R10 K30 ["MeshPart"]
       61 LOADK                            R11 K31 ["Image"]
       62 LOADK                            R12 K32 ["Decal"]
       63 LOADK                            R13 K33 ["Audio"]
       64 LOADK                            R14 K34 ["Video"]
       65 LOADK                            R15 K35 ["Animation"]
       66 SETLIST                          R6 R7 9 [1]
       68 SETTABLEKS                       R6 R5 K24 ["enum"]
       70 NAMECALL                         R2 R2 K22 ["addOptionalArgument"]
       72 CALL                             R2 3 1
       73 LOADK                            R4 K36 ["parentPath"]
       74 DUPTABLE                         R5 K38 [{["type"] = "string", ["description"] = "DataModel path to parent the asset under (e.g. game.Workspace.Folder1). Defaults to workspace."}]
       75 NAMECALL                         R2 R2 K22 ["addOptionalArgument"]
       77 CALL                             R2 3 1
       78 MOVE                             R4 R1
       79 NAMECALL                         R2 R2 K39 ["setHandler"]
       81 CALL                             R2 2 1
       82 DUPTABLE                         R4 K47 [{["title"] = "Insert Asset", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       83 NAMECALL                         R2 R2 K48 ["setAnnotations"]
       85 CALL                             R2 2 1
       86 NAMECALL                         R2 R2 K49 ["build"]
       88 CALL                             R2 1 1
       89 DUPTABLE                         R3 K55 [{["command"] = "insert_asset", ["getDescription"], ["runToolChain"], ["mapToToolCall"]}]
       90 DUPCLOSURE                       R4 K56 [PROTO_2]
       91 SETTABLEKS                       R4 R3 K52 ["getDescription"]
       93 GETUPVAL                         R5 6
       94 GETTABLEKS                       R5 R5 K57 ["getIsAskInputToolEnabled"]
       96 CALL                             R5 0 1
       97 JUMPIFNOT                        R5 ; [+3]
       98 DUPCLOSURE                       R4 K58 [PROTO_4]
       99 CAPTURE                          UPVAL U5
      100 JUMP                             ; [+1]
      101 LOADNIL                          R4
      102 SETTABLEKS                       R4 R3 K53 ["runToolChain"]
      104 GETUPVAL                         R5 6
      105 GETTABLEKS                       R5 R5 K57 ["getIsAskInputToolEnabled"]
      107 CALL                             R5 0 1
      108 JUMPIFNOT                        R5 ; [+2]
      109 LOADNIL                          R4
      110 JUMP                             ; [+2]
      111 DUPCLOSURE                       R4 K59 [PROTO_5]
      112 CAPTURE                          UPVAL U5
      113 SETTABLEKS                       R4 R3 K54 ["mapToToolCall"]
      115 DUPTABLE                         R4 K62 [{"definition", "slashCommands"}]
      116 SETTABLEKS                       R2 R4 K60 ["definition"]
      118 NEWTABLE                         R5 0 1
      120 MOVE                             R6 R3
      121 SETLIST                          R5 R6 1 [1]
      123 SETTABLEKS                       R5 R4 K61 ["slashCommands"]
      125 RETURN                           R4 1

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
       18 GETTABLEKS                       R3 R0 K9 ["Features"]
       20 GETTABLEKS                       R3 R3 K7 ["AssetManagement"]
       22 GETTABLEKS                       R3 R3 K10 ["AssetInsertTool"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["FlagUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Parent"]
       39 GETTABLEKS                       R6 R6 K14 ["ModelContextProtocol"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Tools"]
       46 GETTABLEKS                       R7 R7 K16 ["ToolTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K17 ["Types"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R5 K6 ["Util"]
       56 GETTABLEKS                       R8 R8 K18 ["ToolBuilder"]
       58 GETTABLEKS                       R9 R5 K6 ["Util"]
       60 GETTABLEKS                       R9 R9 K19 ["ToolResult"]
       62 GETTABLEKS                       R10 R6 K20 ["ToolNames"]
       64 GETTABLEKS                       R11 R1 K21 ["debugPrint"]
       66 DUPCLOSURE                       R12 K22 [PROTO_6]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R3
       74 RETURN                           R12 1
