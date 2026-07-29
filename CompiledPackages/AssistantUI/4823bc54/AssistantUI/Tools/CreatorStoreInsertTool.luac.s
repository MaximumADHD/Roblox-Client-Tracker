PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseNewTags"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getUniqueTag"]
        7 LOADK                            R2 K2 ["Store"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 LOADK                            R2 K3 ["Assistant:"]
       12 MOVE                             R3 R0
       13 CONCAT                           R1 R2 R3
       14 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R3 R0 K1 ["assetName"]
        3 ORK                              R2 R3 K0 [""]
        4 GETTABLEKS                       R3 R0 K2 ["objectTypes"]
        6 JUMPIFNOT                        R3 ; [+21]
        7 GETTABLEKS                       R4 R0 K2 ["objectTypes"]
        9 LENGTH                           R3 R4
       10 LOADN                            R4 0
       11 JUMPIFNOTLT                      R4 R3 ; [+16]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["getAssetIdsForObjectTypes"]
       16 GETTABLEKS                       R4 R0 K4 ["searchId"]
       18 GETTABLEKS                       R5 R0 K2 ["objectTypes"]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 JUMPIFNOTEQKS                    R2 K0 [""] ; [+15]
       24 GETTABLEKS                       R3 R0 K2 ["objectTypes"]
       26 GETTABLEN                        R2 R3 1
       27 JUMP                             ; [+10]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K5 ["getAssetIdsForSearchId"]
       31 GETTABLEKS                       R4 R0 K4 ["searchId"]
       33 CALL                             R3 1 1
       34 MOVE                             R1 R3
       35 JUMPIFNOTEQKS                    R2 K0 [""] ; [+2]
       37 LOADK                            R2 K6 ["Creator Store Asset"]
       38 LENGTH                           R3 R1
       39 JUMPIFNOTEQKN                    R3 K7 [0] ; [+6]
       41 GETIMPORT                        R3 K9 [error]
       43 LOADK                            R4 K10 ["No cached assets found for searchId/objectType. Run CreatorStoreSearch again before insertion."]
       44 LOADN                            R5 0
       45 CALL                             R3 2 0
       46 LENGTH                           R3 R1
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R4 R4 K11 ["MAX_INSERT_UI_ASSETS"]
       50 JUMPIFNOTLT                      R4 R3 ; [+13]
       52 GETIMPORT                        R3 K14 [table.move]
       54 MOVE                             R4 R1
       55 LOADN                            R5 1
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K11 ["MAX_INSERT_UI_ASSETS"]
       59 LOADN                            R7 1
       60 NEWTABLE                         R8 0 0
       62 CALL                             R3 5 1
       63 MOVE                             R1 R3
       64 RETURN                           R1 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadCachedAssetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getDataModelType"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Edit"]
        9 JUMPIFEQ                         R2 R3 ; [+5]
       11 GETIMPORT                        R2 K4 [error]
       13 LOADK                            R3 K5 ["Unable to insert models from the marketplace in play mode"]
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R1 K6 ["assetName"]
       17 GETTABLEKS                       R3 R1 K7 ["assetIds"]
       19 LENGTH                           R6 R3
       20 LOADN                            R7 0
       21 JUMPIFLT                         R7 R6 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       27 LOADK                            R6 K8 ["At least one assetId must be provided"]
       28 GETIMPORT                        R4 K10 [assert]
       30 CALL                             R4 2 0
       31 GETUPVAL                         R4 1
       32 LOADB                            R6 0
       33 NAMECALL                         R4 R4 K11 ["GenerateGUID"]
       35 CALL                             R4 2 1
       36 GETIMPORT                        R5 K14 [table.clone]
       38 MOVE                             R6 R3
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K16 [table.remove]
       42 MOVE                             R7 R5
       43 LOADN                            R8 1
       44 CALL                             R6 2 1
       45 FASTCALL2K                       ASSERT R6 K17 ; [+5]
       47 MOVE                             R8 R6
       48 LOADK                            R9 K17 ["No assetId was provided"]
       49 GETIMPORT                        R7 K10 [assert]
       51 CALL                             R7 2 0
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K18 ["loadCachedAssetAsync"]
       55 MOVE                             R8 R6
       56 CALL                             R7 1 1
       57 FASTCALL2K                       ASSERT R7 K19 ; [+5]
       59 MOVE                             R9 R7
       60 LOADK                            R10 K19 ["Failed to load asset"]
       61 GETIMPORT                        R8 K10 [assert]
       63 CALL                             R8 2 0
       64 GETUPVAL                         R8 3
       65 GETTABLEKS                       R8 R8 K20 ["startRecording"]
       67 MOVE                             R9 R4
       68 CALL                             R8 1 0
       69 GETUPVAL                         R8 1
       70 LOADB                            R10 0
       71 NAMECALL                         R8 R8 K11 ["GenerateGUID"]
       73 CALL                             R8 2 1
       74 GETUPVAL                         R10 4
       75 GETTABLEKS                       R10 R10 K21 ["FFlagAssistantUseNewTags"]
       77 JUMPIFNOT                        R10 ; [+7]
       78 GETUPVAL                         R9 5
       79 GETTABLEKS                       R9 R9 K22 ["getUniqueTag"]
       81 LOADK                            R10 K23 ["Store"]
       82 MOVE                             R11 R8
       83 CALL                             R9 2 1
       84 JUMP                             ; [+3]
       85 LOADK                            R10 K24 ["Assistant:"]
       86 MOVE                             R11 R8
       87 CONCAT                           R9 R10 R11
       88 GETUPVAL                         R10 2
       89 GETTABLEKS                       R10 R10 K25 ["setPositionOnGround"]
       91 MOVE                             R11 R7
       92 LOADB                            R12 1
       93 CALL                             R10 2 0
       94 SETTABLEKS                       R2 R7 K26 ["Name"]
       96 MOVE                             R12 R9
       97 NAMECALL                         R10 R7 K27 ["AddTag"]
       99 CALL                             R10 2 0
      100 GETIMPORT                        R10 K29 [workspace]
      102 SETTABLEKS                       R10 R7 K30 ["Parent"]
      104 GETUPVAL                         R10 3
      105 GETTABLEKS                       R10 R10 K31 ["endRecording"]
      107 MOVE                             R11 R4
      108 CALL                             R10 1 0
      109 MOVE                             R10 R5
      110 LOADNIL                          R11
      111 LOADNIL                          R12
      112 FORGPREP                         R10
      113 GETIMPORT                        R15 K34 [task.spawn]
      115 NEWCLOSURE                       R16 P0
      116 CAPTURE                          UPVAL U2
      117 CAPTURE                          VAL R14
      118 CALL                             R15 1 0
      119 FORGLOOP                         R10 2 ; [-7]
      121 DUPTABLE                         R10 K38 [{"primaryResult", "secondaryResults", "assetIds", "tag"}]
      122 DUPTABLE                         R11 K41 [{"assetId", "insertGuid"}]
      123 SETTABLEKS                       R6 R11 K39 ["assetId"]
      125 SETTABLEKS                       R8 R11 K40 ["insertGuid"]
      127 SETTABLEKS                       R11 R10 K35 ["primaryResult"]
      129 SETTABLEKS                       R5 R10 K36 ["secondaryResults"]
      131 SETTABLEKS                       R3 R10 K7 ["assetIds"]
      133 SETTABLEKS                       R9 R10 K37 ["tag"]
      135 RETURN                           R10 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 2
        3 GETUPVAL                         R4 1
        4 LOADNIL                          R5
        5 DUPTABLE                         R6 K2 [{"assetName", "assetIds"}]
        6 SETTABLEKS                       R3 R6 K0 ["assetName"]
        8 SETTABLEKS                       R2 R6 K1 ["assetIds"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K3 ["toString"]
       14 DUPTABLE                         R6 K6 [{"primaryResult", "secondaryResults"}]
       15 GETTABLEKS                       R7 R4 K4 ["primaryResult"]
       17 SETTABLEKS                       R7 R6 K4 ["primaryResult"]
       19 GETTABLEKS                       R7 R4 K5 ["secondaryResults"]
       21 SETTABLEKS                       R7 R6 K5 ["secondaryResults"]
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 3
       25 CALL                             R6 0 1
       26 MOVE                             R8 R5
       27 NAMECALL                         R6 R6 K7 ["addText"]
       29 CALL                             R6 2 1
       30 DUPTABLE                         R8 K9 [{"assetIds", "tag"}]
       31 GETTABLEKS                       R9 R4 K1 ["assetIds"]
       33 SETTABLEKS                       R9 R8 K1 ["assetIds"]
       35 GETTABLEKS                       R9 R4 K8 ["tag"]
       37 SETTABLEKS                       R9 R8 K8 ["tag"]
       39 NAMECALL                         R6 R6 K10 ["setStructuredContent"]
       41 CALL                             R6 2 1
       42 NAMECALL                         R6 R6 K11 ["build"]
       44 CALL                             R6 1 -1
       45 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETTABLEKS                       R1 R0 K1 ["networking"]
       10 GETTABLEKS                       R2 R0 K2 ["environment"]
       12 LOADK                            R5 K3 ["CreatorStoreInsertTool_insertFromMarketplaceAsync"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U5
       20 NAMECALL                         R3 R1 K4 ["OnHostInvokeAsync"]
       22 CALL                             R3 3 1
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U7
       28 GETUPVAL                         R5 8
       29 GETTABLEKS                       R5 R5 K5 ["define"]
       31 CALL                             R5 0 1
       32 GETUPVAL                         R7 9
       33 GETTABLEKS                       R7 R7 K6 ["CreatorStoreInsert"]
       35 NAMECALL                         R5 R5 K7 ["setName"]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R7 9
       39 GETTABLEKS                       R7 R7 K8 ["replaceTokens"]
       41 LOADK                            R8 K9 ["Inserts an asset into the game.\nThis should be used alongside the {ToolNames.CreatorStoreSearch} tool, which returns searchId and optional objectTypes.\nProvide searchId to insert from that search. Optionally provide objectTypes to restrict insertion to those types (combined and deduplicated in order).\nWhen multiple assetIds are resolved, the first is inserted and the rest are available as alternatives.\n"]
       42 CALL                             R7 1 -1
       43 NAMECALL                         R5 R5 K10 ["setDescription"]
       45 CALL                             R5 -1 1
       46 LOADK                            R7 K11 ["searchId"]
       47 DUPTABLE                         R8 K15 [{["type"] = "string", ["description"]}]
       48 LOADK                            R10 K16 ["Unique ID returned by %*."]
       49 GETUPVAL                         R12 9
       50 GETTABLEKS                       R12 R12 K17 ["CreatorStoreSearch"]
       52 NAMECALL                         R10 R10 K18 ["format"]
       54 CALL                             R10 2 1
       55 MOVE                             R9 R10
       56 SETTABLEKS                       R9 R8 K14 ["description"]
       58 NAMECALL                         R5 R5 K19 ["addArgument"]
       60 CALL                             R5 3 1
       61 LOADK                            R7 K20 ["objectTypes"]
       62 DUPTABLE                         R8 K23 [{["type"] = "array", ["items"], ["description"]}]
       63 DUPTABLE                         R9 K24 [{["type"] = "string"}]
       64 SETTABLEKS                       R9 R8 K22 ["items"]
       66 LOADK                            R10 K25 ["Optional list of objectTypes returned by %*. Asset IDs for all provided types are combined in order and deduplicated. If omitted, insertion uses all cached assetIds for searchId."]
       67 GETUPVAL                         R12 9
       68 GETTABLEKS                       R12 R12 K17 ["CreatorStoreSearch"]
       70 NAMECALL                         R10 R10 K18 ["format"]
       72 CALL                             R10 2 1
       73 MOVE                             R9 R10
       74 SETTABLEKS                       R9 R8 K14 ["description"]
       76 NAMECALL                         R5 R5 K26 ["addOptionalArgument"]
       78 CALL                             R5 3 1
       79 LOADK                            R7 K27 ["assetName"]
       80 DUPTABLE                         R8 K29 [{["type"] = "string", ["description"] = "Optional display/insert name override for the inserted asset. If omitted, objectType or a generic default is used."}]
       81 NAMECALL                         R5 R5 K26 ["addOptionalArgument"]
       83 CALL                             R5 3 1
       84 MOVE                             R7 R4
       85 NAMECALL                         R5 R5 K30 ["setHandler"]
       87 CALL                             R5 2 1
       88 DUPTABLE                         R7 K38 [{["title"] = "Creator Store Insertion", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       89 NAMECALL                         R5 R5 K39 ["setAnnotations"]
       91 CALL                             R5 2 1
       92 NAMECALL                         R5 R5 K40 ["build"]
       94 CALL                             R5 1 1
       95 DUPTABLE                         R6 K42 [{"definition"}]
       96 SETTABLEKS                       R5 R6 K41 ["definition"]
       98 RETURN                           R6 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["DataModelType"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Parent"]
       29 GETTABLEKS                       R5 R5 K14 ["ModelContextProtocol"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Util"]
       36 GETTABLEKS                       R6 R6 K15 ["Tagging"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K16 ["Tools"]
       43 GETTABLEKS                       R7 R7 K17 ["ToolTypes"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R0 K10 ["Util"]
       50 GETTABLEKS                       R8 R8 K18 ["ToolUtils"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K9 [require]
       55 GETTABLEKS                       R9 R0 K19 ["Types"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R0 K20 ["Features"]
       60 GETTABLEKS                       R9 R9 K21 ["CreatorStore"]
       62 GETIMPORT                        R10 K9 [require]
       64 GETTABLEKS                       R11 R9 K22 ["CreatorStoreConstants"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K9 [require]
       69 GETTABLEKS                       R12 R9 K23 ["CreatorStoreSearchCache"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K9 [require]
       74 GETTABLEKS                       R13 R9 K24 ["CreatorStoreTypes"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K9 [require]
       79 GETTABLEKS                       R14 R9 K25 ["CreatorStoreInsertTool"]
       81 CALL                             R13 1 1
       82 GETTABLEKS                       R14 R4 K10 ["Util"]
       84 GETTABLEKS                       R14 R14 K26 ["ToolBuilder"]
       86 GETTABLEKS                       R15 R4 K10 ["Util"]
       88 GETTABLEKS                       R15 R15 K27 ["ToolResult"]
       90 GETTABLEKS                       R16 R6 K28 ["ToolNames"]
       92 DUPCLOSURE                       R17 K29 [PROTO_0]
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R5
       95 DUPCLOSURE                       R18 K30 [PROTO_1]
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R10
       98 DUPCLOSURE                       R19 K31 [PROTO_5]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R18
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R16
      109 RETURN                           R19 1
