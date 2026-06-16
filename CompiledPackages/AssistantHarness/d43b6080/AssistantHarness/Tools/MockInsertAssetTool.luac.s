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
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 LOADK                            R2 K3 ["insert_asset"]
        2 SETTABLEKS                       R2 R1 K0 ["name"]
        4 DUPTABLE                         R2 K5 [{"assetId"}]
        5 SETTABLEKS                       R0 R2 K4 ["assetId"]
        7 SETTABLEKS                       R2 R1 K1 ["arguments"]
        9 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

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
       59 DUPTABLE                         R11 K24 [{"type", "description"}]
       60 LOADK                            R12 K25 ["string"]
       61 SETTABLEKS                       R12 R11 K22 ["type"]
       63 LOADK                            R12 K26 ["Numeric Roblox asset ID to insert."]
       64 SETTABLEKS                       R12 R11 K23 ["description"]
       66 NAMECALL                         R8 R8 K27 ["addArgument"]
       68 CALL                             R8 3 1
       69 LOADK                            R10 K28 ["assetName"]
       70 DUPTABLE                         R11 K24 [{"type", "description"}]
       71 LOADK                            R12 K25 ["string"]
       72 SETTABLEKS                       R12 R11 K22 ["type"]
       74 LOADK                            R12 K29 ["Name for the inserted instance."]
       75 SETTABLEKS                       R12 R11 K23 ["description"]
       77 NAMECALL                         R8 R8 K30 ["addOptionalArgument"]
       79 CALL                             R8 3 1
       80 LOADK                            R10 K31 ["assetType"]
       81 DUPTABLE                         R11 K33 [{"type", "enum", "description"}]
       82 LOADK                            R12 K25 ["string"]
       83 SETTABLEKS                       R12 R11 K22 ["type"]
       85 NEWTABLE                         R12 0 8
       87 LOADK                            R13 K34 ["Model"]
       88 LOADK                            R14 K35 ["Package"]
       89 LOADK                            R15 K36 ["Mesh"]
       90 LOADK                            R16 K37 ["MeshPart"]
       91 LOADK                            R17 K38 ["Decal"]
       92 LOADK                            R18 K39 ["Audio"]
       93 LOADK                            R19 K40 ["Video"]
       94 LOADK                            R20 K41 ["Animation"]
       95 SETLIST                          R12 R13 8 [1]
       97 SETTABLEKS                       R12 R11 K32 ["enum"]
       99 LOADK                            R12 K42 ["Optional asset type hint."]
      100 SETTABLEKS                       R12 R11 K23 ["description"]
      102 NAMECALL                         R8 R8 K30 ["addOptionalArgument"]
      104 CALL                             R8 3 1
      105 LOADK                            R10 K43 ["parentPath"]
      106 DUPTABLE                         R11 K24 [{"type", "description"}]
      107 LOADK                            R12 K25 ["string"]
      108 SETTABLEKS                       R12 R11 K22 ["type"]
      110 LOADK                            R12 K44 ["Optional DataModel path for insertion target parent."]
      111 SETTABLEKS                       R12 R11 K23 ["description"]
      113 NAMECALL                         R8 R8 K30 ["addOptionalArgument"]
      115 CALL                             R8 3 1
      116 MOVE                             R10 R7
      117 NAMECALL                         R8 R8 K45 ["setHandler"]
      119 CALL                             R8 2 1
      120 DUPTABLE                         R10 K51 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      121 LOADK                            R11 K52 ["Insert Asset"]
      122 SETTABLEKS                       R11 R10 K46 ["title"]
      124 LOADB                            R11 0
      125 SETTABLEKS                       R11 R10 K47 ["readOnlyHint"]
      127 LOADB                            R11 0
      128 SETTABLEKS                       R11 R10 K48 ["destructiveHint"]
      130 LOADB                            R11 0
      131 SETTABLEKS                       R11 R10 K49 ["idempotentHint"]
      133 LOADB                            R11 0
      134 SETTABLEKS                       R11 R10 K50 ["openWorldHint"]
      136 NAMECALL                         R8 R8 K53 ["setAnnotations"]
      138 CALL                             R8 2 1
      139 NAMECALL                         R8 R8 K54 ["build"]
      141 CALL                             R8 1 1
      142 GETTABLEKS                       R9 R2 K55 ["register"]
      144 DUPTABLE                         R10 K62 [{"definition", "slashCommands", "getPreExecuteWarning", "availableDataModelTypes", "toolCallOptions", "permissionStorage"}]
      145 SETTABLEKS                       R8 R10 K56 ["definition"]
      147 NEWTABLE                         R11 0 1
      149 DUPTABLE                         R12 K66 [{"command", "getDescription", "mapToToolCall"}]
      150 LOADK                            R13 K17 ["insert_asset"]
      151 SETTABLEKS                       R13 R12 K63 ["command"]
      153 DUPCLOSURE                       R13 K67 [PROTO_1]
      154 SETTABLEKS                       R13 R12 K64 ["getDescription"]
      156 DUPCLOSURE                       R13 K68 [PROTO_2]
      157 SETTABLEKS                       R13 R12 K65 ["mapToToolCall"]
      159 SETLIST                          R11 R12 1 [1]
      161 SETTABLEKS                       R11 R10 K57 ["slashCommands"]
      163 DUPCLOSURE                       R11 K69 [PROTO_3]
      164 SETTABLEKS                       R11 R10 K58 ["getPreExecuteWarning"]
      166 NEWTABLE                         R11 0 2
      168 GETTABLEKS                       R12 R1 K70 ["Types"]
      170 GETTABLEKS                       R12 R12 K71 ["Edit"]
      172 GETTABLEKS                       R13 R1 K70 ["Types"]
      174 GETTABLEKS                       R13 R13 K72 ["Client"]
      176 SETLIST                          R11 R12 2 [1]
      178 SETTABLEKS                       R11 R10 K59 ["availableDataModelTypes"]
      180 DUPTABLE                         R11 K74 [{"timeout"}]
      181 LOADK                            R12 K75 [60000]
      182 SETTABLEKS                       R12 R11 K73 ["timeout"]
      184 SETTABLEKS                       R11 R10 K60 ["toolCallOptions"]
      186 DUPTABLE                         R11 K77 [{"defaultDecision"}]
      187 GETTABLEKS                       R12 R4 K78 ["Decisions"]
      189 GETTABLEKS                       R12 R12 K79 ["Ask"]
      191 SETTABLEKS                       R12 R11 K76 ["defaultDecision"]
      193 SETTABLEKS                       R11 R10 K61 ["permissionStorage"]
      195 CALL                             R9 1 0
      196 LOADNIL                          R9
      197 RETURN                           R9 1
