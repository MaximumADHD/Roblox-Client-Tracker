PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 LOADK                            R6 K0 ["Inserted asset %* as \"%*\""]
        3 GETTABLEKS                       R8 R0 K1 ["assetId"]
        5 GETTABLEKS                       R10 R0 K3 ["assetName"]
        7 ORK                              R9 R10 K2 ["MockAsset"]
        8 NAMECALL                         R6 R6 K4 ["format"]
       10 CALL                             R6 3 1
       11 MOVE                             R5 R6
       12 NAMECALL                         R3 R3 K5 ["addText"]
       14 CALL                             R3 2 1
       15 NEWTABLE                         R5 8 0
       17 LOADK                            R6 K6 ["roblox://widget/AssetInsertResult/v1"]
       18 SETTABLEKS                       R6 R5 K7 ["$schema"]
       20 LOADK                            R6 K8 ["ok"]
       21 SETTABLEKS                       R6 R5 K9 ["status"]
       23 LOADK                            R6 K10 ["mock_insert_tag"]
       24 SETTABLEKS                       R6 R5 K11 ["tag"]
       26 GETTABLEKS                       R7 R0 K3 ["assetName"]
       28 ORK                              R6 R7 K2 ["MockAsset"]
       29 SETTABLEKS                       R6 R5 K3 ["assetName"]
       31 LOADK                            R6 K12 ["Model"]
       32 SETTABLEKS                       R6 R5 K13 ["className"]
       34 NAMECALL                         R3 R3 K14 ["setStructuredContent"]
       36 CALL                             R3 2 1
       37 NAMECALL                         R3 R3 K15 ["build"]
       39 CALL                             R3 1 -1
       40 RETURN                           R3 -1

PROTO_1:
        0 LOADK                            R0 K0 ["Insert an asset into the scene by ID"]
        1 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R1 K3 [{[1] = "insert_asset", ["arguments"]}]
        1 DUPTABLE                         R2 K5 [{"assetId"}]
        2 SETTABLEKS                       R0 R2 K4 ["assetId"]
        4 SETTABLEKS                       R2 R1 K2 ["arguments"]
        6 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["DataModelType"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["HarnessRegistry"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Permissioning"]
       34 GETTABLEKS                       R5 R5 K12 ["PermissionStorageProvider"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K6 ["Util"]
       39 GETTABLEKS                       R5 R5 K13 ["ToolBuilder"]
       41 GETTABLEKS                       R6 R3 K6 ["Util"]
       43 GETTABLEKS                       R6 R6 K14 ["ToolResult"]
       45 DUPCLOSURE                       R7 K15 [PROTO_0]
       46 CAPTURE                          VAL R6
       47 GETTABLEKS                       R8 R5 K16 ["define"]
       49 CALL                             R8 0 1
       50 LOADK                            R10 K17 ["insert_asset"]
       51 NAMECALL                         R8 R8 K18 ["setName"]
       53 CALL                             R8 2 1
       54 LOADK                            R10 K19 ["Inserts an asset into the game by its numeric Roblox asset ID.\nUse this mock tool for client/server permission-flow validation."]
       55 NAMECALL                         R8 R8 K20 ["setDescription"]
       57 CALL                             R8 2 1
       58 LOADK                            R10 K21 ["assetId"]
       59 DUPTABLE                         R11 K26 [{["type"] = "string", ["description"] = "Numeric Roblox asset ID to insert."}]
       60 NAMECALL                         R8 R8 K27 ["addArgument"]
       62 CALL                             R8 3 1
       63 LOADK                            R10 K28 ["assetName"]
       64 DUPTABLE                         R11 K30 [{["type"] = "string", ["description"] = "Name for the inserted instance."}]
       65 NAMECALL                         R8 R8 K31 ["addOptionalArgument"]
       67 CALL                             R8 3 1
       68 LOADK                            R10 K32 ["assetType"]
       69 DUPTABLE                         R11 K35 [{["type"] = "string", ["enum"], ["description"] = "Optional asset type hint."}]
       70 NEWTABLE                         R12 0 8
       72 LOADK                            R13 K36 ["Model"]
       73 LOADK                            R14 K37 ["Package"]
       74 LOADK                            R15 K38 ["Mesh"]
       75 LOADK                            R16 K39 ["MeshPart"]
       76 LOADK                            R17 K40 ["Decal"]
       77 LOADK                            R18 K41 ["Audio"]
       78 LOADK                            R19 K42 ["Video"]
       79 LOADK                            R20 K43 ["Animation"]
       80 SETLIST                          R12 R13 8 [1]
       82 SETTABLEKS                       R12 R11 K33 ["enum"]
       84 NAMECALL                         R8 R8 K31 ["addOptionalArgument"]
       86 CALL                             R8 3 1
       87 LOADK                            R10 K44 ["parentPath"]
       88 DUPTABLE                         R11 K46 [{["type"] = "string", ["description"] = "Optional DataModel path for insertion target parent."}]
       89 NAMECALL                         R8 R8 K31 ["addOptionalArgument"]
       91 CALL                             R8 3 1
       92 MOVE                             R10 R7
       93 NAMECALL                         R8 R8 K47 ["setHandler"]
       95 CALL                             R8 2 1
       96 DUPTABLE                         R10 K55 [{["title"] = "Insert Asset", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       97 NAMECALL                         R8 R8 K56 ["setAnnotations"]
       99 CALL                             R8 2 1
      100 NAMECALL                         R8 R8 K57 ["build"]
      102 CALL                             R8 1 1
      103 GETTABLEKS                       R9 R2 K58 ["register"]
      105 DUPTABLE                         R10 K65 [{"definition", "slashCommands", "getPreExecuteWarning", "availableDataModelTypes", "toolCallOptions", "permissionStorage"}]
      106 SETTABLEKS                       R8 R10 K59 ["definition"]
      108 NEWTABLE                         R11 0 1
      110 DUPTABLE                         R12 K69 [{["command"] = "insert_asset", ["getDescription"], ["mapToToolCall"]}]
      111 DUPCLOSURE                       R13 K70 [PROTO_1]
      112 SETTABLEKS                       R13 R12 K67 ["getDescription"]
      114 DUPCLOSURE                       R13 K71 [PROTO_2]
      115 SETTABLEKS                       R13 R12 K68 ["mapToToolCall"]
      117 SETLIST                          R11 R12 1 [1]
      119 SETTABLEKS                       R11 R10 K60 ["slashCommands"]
      121 DUPCLOSURE                       R11 K72 [PROTO_3]
      122 SETTABLEKS                       R11 R10 K61 ["getPreExecuteWarning"]
      124 NEWTABLE                         R11 0 2
      126 GETTABLEKS                       R12 R1 K73 ["Types"]
      128 GETTABLEKS                       R12 R12 K74 ["Edit"]
      130 GETTABLEKS                       R13 R1 K73 ["Types"]
      132 GETTABLEKS                       R13 R13 K75 ["Client"]
      134 SETLIST                          R11 R12 2 [1]
      136 SETTABLEKS                       R11 R10 K62 ["availableDataModelTypes"]
      138 DUPTABLE                         R11 K78 [{["timeout"] = 60000}]
      139 SETTABLEKS                       R11 R10 K63 ["toolCallOptions"]
      141 DUPTABLE                         R11 K80 [{"defaultDecision"}]
      142 GETTABLEKS                       R12 R4 K81 ["Decisions"]
      144 GETTABLEKS                       R12 R12 K82 ["Ask"]
      146 SETTABLEKS                       R12 R11 K79 ["defaultDecision"]
      148 SETTABLEKS                       R11 R10 K64 ["permissionStorage"]
      150 CALL                             R9 1 0
      151 LOADNIL                          R9
      152 RETURN                           R9 1
