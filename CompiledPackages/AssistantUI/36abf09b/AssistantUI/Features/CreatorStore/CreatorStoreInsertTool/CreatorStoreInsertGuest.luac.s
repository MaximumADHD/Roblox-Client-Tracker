PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["callArgs"]
       10 GETTABLEKS                       R2 R2 K2 ["contentId"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["getContentHooks"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K4 ["editContent"]
       19 MOVE                             R5 R0
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPTABLE                         R3 K3 [{"updateWidget"}]
        8 SETTABLEKS                       R2 R3 K2 ["updateWidget"]
       10 RETURN                           R3 1

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
       21 DUPTABLE                         R1 K10 [{["rawTransformValues"] = True}]
       22 RETURN                           R1 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        5 GETTABLEKS                       R4 R4 K1 ["RESTRICTED_externalHooks"]
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R4
       10 DUPTABLE                         R3 K3 [{"updateWidget"}]
       11 SETTABLEKS                       R5 R3 K2 ["updateWidget"]
       13 GETTABLEKS                       R4 R3 K2 ["updateWidget"]
       15 MOVE                             R5 R2
       16 CALL                             R4 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridge"]
        3 GETTABLEKS                       R1 R1 K1 ["swapAssetAsync"]
        5 DUPTABLE                         R2 K4 [{"assetId", "tag"}]
        6 SETTABLEKS                       R0 R2 K2 ["assetId"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["tag"]
       11 SETTABLEKS                       R3 R2 K3 ["tag"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["selectInsertedAssets"]
        5 DUPTABLE                         R1 K3 [{"tag"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["tag"]
        9 SETTABLEKS                       R2 R1 K2 ["tag"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 SETTABLEKS                       R2 R1 K0 ["onSelectionChange"]
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R2 R1 K1 ["onChipClicked"]
       10 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R1 K0 ["responseInfo"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        4 MOVE                             R5 R3
        5 LOADK                            R6 K1 ["Missing response info"]
        6 GETIMPORT                        R4 K3 [assert]
        8 CALL                             R4 2 0
        9 GETTABLEKS                       R4 R3 K4 ["assetName"]
       11 GETTABLEKS                       R5 R3 K5 ["tag"]
       13 DUPTABLE                         R6 K17 [{["type"], ["mode"], ["name"], ["displayName"], ["tag"], ["className"], ["assetIds"], ["expanded"] = False, ["shouldShowChip"] = False, ["onSelectionChange"], ["onChipClicked"]}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K18 ["Type"]
       17 SETTABLEKS                       R7 R6 K6 ["type"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K19 ["Modes"]
       22 GETTABLEKS                       R7 R7 K20 ["Generated"]
       24 SETTABLEKS                       R7 R6 K7 ["mode"]
       26 SETTABLEKS                       R4 R6 K8 ["name"]
       28 SETTABLEKS                       R4 R6 K9 ["displayName"]
       30 SETTABLEKS                       R5 R6 K5 ["tag"]
       32 GETTABLEKS                       R7 R3 K10 ["className"]
       34 SETTABLEKS                       R7 R6 K10 ["className"]
       36 GETTABLEKS                       R7 R3 K21 ["assets"]
       38 SETTABLEKS                       R7 R6 K11 ["assetIds"]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K22 ["createUnimplemented"]
       43 LOADK                            R8 K15 ["onSelectionChange"]
       44 CALL                             R7 1 1
       45 SETTABLEKS                       R7 R6 K15 ["onSelectionChange"]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K22 ["createUnimplemented"]
       50 LOADK                            R8 K16 ["onChipClicked"]
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K16 ["onChipClicked"]
       54 NEWCLOSURE                       R7 P0
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R7 R6 K15 ["onSelectionChange"]
       59 NEWCLOSURE                       R7 P1
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R6
       62 SETTABLEKS                       R7 R6 K16 ["onChipClicked"]
       64 GETTABLEKS                       R8 R0 K23 ["initArgs"]
       66 GETTABLEKS                       R8 R8 K24 ["RESTRICTED_externalHooks"]
       68 NEWCLOSURE                       R9 P2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R8
       71 DUPTABLE                         R7 K26 [{"updateWidget"}]
       72 SETTABLEKS                       R9 R7 K25 ["updateWidget"]
       74 GETTABLEKS                       R8 R7 K25 ["updateWidget"]
       76 NEWCLOSURE                       R9 P3
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          VAL R6
       79 CALL                             R8 1 0
       80 JUMPIFNOT                        R2 ; [+1]
       81 RETURN                           R0 0
       82 GETTABLEKS                       R8 R0 K27 ["bridge"]
       84 GETTABLEKS                       R8 R8 K28 ["listenToLinkChanges"]
       86 DUPTABLE                         R9 K29 [{"name", "tag"}]
       87 GETTABLEKS                       R10 R6 K8 ["name"]
       89 SETTABLEKS                       R10 R9 K8 ["name"]
       91 GETTABLEKS                       R10 R6 K5 ["tag"]
       93 SETTABLEKS                       R10 R9 K5 ["tag"]
       95 CALL                             R8 1 0
       96 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K5 [{"type", "mode", "name", "displayName"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K6 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K7 ["Modes"]
       13 GETTABLEKS                       R4 R4 K8 ["Generating"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["name"]
       20 GETUPVAL                         R4 2
       21 SETTABLEKS                       R4 R3 K4 ["displayName"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_11:
        0 LOADNIL                          R3
        1 GETTABLEKS                       R5 R1 K1 ["assetName"]
        3 ORK                              R4 R5 K0 [""]
        4 GETTABLEKS                       R5 R1 K2 ["objectTypes"]
        6 JUMPIFNOT                        R5 ; [+21]
        7 GETTABLEKS                       R6 R1 K2 ["objectTypes"]
        9 LENGTH                           R5 R6
       10 LOADN                            R6 0
       11 JUMPIFNOTLT                      R6 R5 ; [+16]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K3 ["getAssetIdsForObjectTypes"]
       16 GETTABLEKS                       R6 R1 K4 ["searchId"]
       18 GETTABLEKS                       R7 R1 K2 ["objectTypes"]
       20 CALL                             R5 2 1
       21 MOVE                             R3 R5
       22 JUMPIFNOTEQKS                    R4 K0 [""] ; [+15]
       24 GETTABLEKS                       R5 R1 K2 ["objectTypes"]
       26 GETTABLEN                        R4 R5 1
       27 JUMP                             ; [+10]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K5 ["getAssetIdsForSearchId"]
       31 GETTABLEKS                       R6 R1 K4 ["searchId"]
       33 CALL                             R5 1 1
       34 MOVE                             R3 R5
       35 JUMPIFNOTEQKS                    R4 K0 [""] ; [+2]
       37 LOADK                            R4 K6 ["Creator Store Asset"]
       38 LENGTH                           R5 R3
       39 JUMPIFNOTEQKN                    R5 K7 [0] ; [+6]
       41 GETIMPORT                        R5 K9 [error]
       43 LOADK                            R6 K10 ["No cached assets found for searchId/objectType. Run CreatorStoreSearch again before insertion."]
       44 LOADN                            R7 0
       45 CALL                             R5 2 0
       46 LENGTH                           R5 R3
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K11 ["MAX_INSERT_UI_ASSETS"]
       50 JUMPIFNOTLT                      R6 R5 ; [+13]
       52 GETIMPORT                        R5 K14 [table.move]
       54 MOVE                             R6 R3
       55 LOADN                            R7 1
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K11 ["MAX_INSERT_UI_ASSETS"]
       59 LOADN                            R9 1
       60 NEWTABLE                         R10 0 0
       62 CALL                             R5 5 1
       63 MOVE                             R3 R5
       64 GETTABLEKS                       R6 R0 K15 ["initArgs"]
       66 GETTABLEKS                       R6 R6 K16 ["RESTRICTED_externalHooks"]
       68 NEWCLOSURE                       R7 P0
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R6
       71 DUPTABLE                         R5 K18 [{"updateWidget"}]
       72 SETTABLEKS                       R7 R5 K17 ["updateWidget"]
       74 GETTABLEKS                       R6 R5 K17 ["updateWidget"]
       76 NEWCLOSURE                       R7 P1
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          REF R4
       80 CALL                             R6 1 0
       81 GETTABLEKS                       R6 R0 K19 ["bridge"]
       83 GETTABLEKS                       R6 R6 K20 ["insertFromMarketplaceAsync"]
       85 DUPTABLE                         R7 K22 [{"assetName", "assetIds"}]
       86 SETTABLEKS                       R4 R7 K1 ["assetName"]
       88 SETTABLEKS                       R3 R7 K21 ["assetIds"]
       90 CALL                             R6 1 1
       91 GETTABLEKS                       R7 R6 K23 ["responseInfo"]
       93 JUMPIFNOT                        R7 ; [+5]
       94 GETUPVAL                         R7 4
       95 MOVE                             R8 R0
       96 MOVE                             R9 R6
       97 MOVE                             R10 R2
       98 CALL                             R7 3 0
       99 GETUPVAL                         R7 5
      100 GETTABLEKS                       R7 R7 K24 ["toString"]
      102 GETTABLEKS                       R8 R6 K25 ["result"]
      104 CALL                             R7 1 -1
      105 CLOSEUPVALS                      R4
      106 RETURN                           R7 -1

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["Generated"]
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
       21 SETTABLEKS                       R3 R1 K8 ["onSelectionChange"]
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R3 R1 K9 ["onChipClicked"]
       28 GETTABLEKS                       R3 R2 K10 ["bridge"]
       30 GETTABLEKS                       R3 R3 K11 ["listenToLinkChanges"]
       32 DUPTABLE                         R4 K14 [{"name", "tag"}]
       33 GETTABLEKS                       R5 R1 K12 ["name"]
       35 SETTABLEKS                       R5 R4 K12 ["name"]
       37 GETTABLEKS                       R5 R1 K13 ["tag"]
       39 SETTABLEKS                       R5 R4 K13 ["tag"]
       41 CALL                             R3 1 0
       42 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["isThirdPartyRequest"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADB                            R2 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createGuestContext"]
        8 LOADNIL                          R4
        9 DUPTABLE                         R5 K3 [{"isThirdPartyRequest", "contentId"}]
       10 SETTABLEKS                       R2 R5 K0 ["isThirdPartyRequest"]
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R6 R1 K2 ["contentId"]
       15 JUMPIF                           R6 ; [+1]
       16 LOADK                            R6 K4 [""]
       17 SETTABLEKS                       R6 R5 K2 ["contentId"]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 1
       21 MOVE                             R5 R3
       22 MOVE                             R6 R0
       23 MOVE                             R7 R2
       24 CALL                             R4 3 1
       25 GETUPVAL                         R5 2
       26 CALL                             R5 0 1
       27 MOVE                             R7 R4
       28 NAMECALL                         R5 R5 K5 ["addText"]
       30 CALL                             R5 2 1
       31 NAMECALL                         R5 R5 K6 ["build"]
       33 CALL                             R5 1 -1
       34 RETURN                           R5 -1

PROTO_14:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_15:
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
       19 GETTABLEKS                       R4 R4 K3 ["CreatorStoreInsert"]
       21 NAMECALL                         R2 R2 K4 ["setName"]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R4 5
       25 GETTABLEKS                       R4 R4 K5 ["replaceTokens"]
       27 LOADK                            R5 K6 ["Inserts an asset into the game.\nThis should be used alongside the {ToolNames.CreatorStoreSearch} tool, which returns searchId and optional objectTypes.\nProvide searchId to insert from that search. Optionally provide objectTypes to restrict insertion to those types (combined and deduplicated in order).\nWhen multiple assetIds are resolved, the first is inserted and the rest are available as alternatives.\n"]
       28 CALL                             R4 1 -1
       29 NAMECALL                         R2 R2 K7 ["setDescription"]
       31 CALL                             R2 -1 1
       32 LOADK                            R4 K8 ["searchId"]
       33 DUPTABLE                         R5 K12 [{["type"] = "string", ["description"]}]
       34 LOADK                            R7 K13 ["Unique ID returned by %*."]
       35 GETUPVAL                         R9 5
       36 GETTABLEKS                       R9 R9 K14 ["CreatorStoreSearch"]
       38 NAMECALL                         R7 R7 K15 ["format"]
       40 CALL                             R7 2 1
       41 MOVE                             R6 R7
       42 SETTABLEKS                       R6 R5 K11 ["description"]
       44 NAMECALL                         R2 R2 K16 ["addArgument"]
       46 CALL                             R2 3 1
       47 LOADK                            R4 K17 ["objectTypes"]
       48 DUPTABLE                         R5 K20 [{["type"] = "array", ["items"], ["description"]}]
       49 DUPTABLE                         R6 K21 [{["type"] = "string"}]
       50 SETTABLEKS                       R6 R5 K19 ["items"]
       52 LOADK                            R7 K22 ["Optional list of objectTypes returned by %*. Asset IDs for all provided types are combined in order and deduplicated. If omitted, insertion uses all cached assetIds for searchId."]
       53 GETUPVAL                         R9 5
       54 GETTABLEKS                       R9 R9 K14 ["CreatorStoreSearch"]
       56 NAMECALL                         R7 R7 K15 ["format"]
       58 CALL                             R7 2 1
       59 MOVE                             R6 R7
       60 SETTABLEKS                       R6 R5 K11 ["description"]
       62 NAMECALL                         R2 R2 K23 ["addOptionalArgument"]
       64 CALL                             R2 3 1
       65 LOADK                            R4 K24 ["assetName"]
       66 DUPTABLE                         R5 K26 [{["type"] = "string", ["description"] = "Optional display/insert name override for the inserted asset. If omitted, objectType or a generic default is used."}]
       67 NAMECALL                         R2 R2 K23 ["addOptionalArgument"]
       69 CALL                             R2 3 1
       70 MOVE                             R4 R1
       71 NAMECALL                         R2 R2 K27 ["setHandler"]
       73 CALL                             R2 2 1
       74 DUPTABLE                         R4 K35 [{["title"] = "Creator Store Insertion", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       75 NAMECALL                         R2 R2 K36 ["setAnnotations"]
       77 CALL                             R2 2 1
       78 NAMECALL                         R2 R2 K37 ["build"]
       80 CALL                             R2 1 1
       81 DUPTABLE                         R3 K39 [{"transformInitialContent"}]
       82 DUPCLOSURE                       R4 K40 [PROTO_14]
       83 CAPTURE                          UPVAL U1
       84 SETTABLEKS                       R4 R3 K38 ["transformInitialContent"]
       86 DUPTABLE                         R4 K44 [{"definition", "contentWidgets", "streamTransform"}]
       87 SETTABLEKS                       R2 R4 K41 ["definition"]
       89 GETUPVAL                         R6 6
       90 GETTABLEKS                       R6 R6 K45 ["FFlagAssistantSplitToolsAndWidgets"]
       92 JUMPIFNOT                        R6 ; [+2]
       93 LOADNIL                          R5
       94 JUMP                             ; [+5]
       95 NEWTABLE                         R5 0 1
       97 GETUPVAL                         R6 1
       98 SETLIST                          R5 R6 1 [1]
      100 SETTABLEKS                       R5 R4 K42 ["contentWidgets"]
      102 SETTABLEKS                       R3 R4 K43 ["streamTransform"]
      104 RETURN                           R4 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["Serializer"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Tools"]
       37 GETTABLEKS                       R6 R6 K13 ["ToolTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K10 ["Util"]
       44 GETTABLEKS                       R7 R7 K14 ["ToolUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K15 ["Types"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K1 [script]
       54 LOADK                            R10 K16 ["CreatorStore"]
       55 NAMECALL                         R8 R8 K3 ["FindFirstAncestor"]
       57 CALL                             R8 2 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R8 K17 ["CreatorStoreConstants"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R8 K18 ["CreatorStoreInsertTool"]
       67 GETTABLEKS                       R11 R11 K19 ["CreatorStoreInsertBridgeTypes"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R12 R8 K20 ["CreatorStoreInsertContentWidget"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R13 R8 K21 ["CreatorStoreSearchCache"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K5 [require]
       82 GETTABLEKS                       R14 R8 K22 ["CreatorStoreTypes"]
       84 CALL                             R13 1 1
       85 GETTABLEKS                       R14 R3 K10 ["Util"]
       87 GETTABLEKS                       R14 R14 K23 ["ToolBuilder"]
       89 GETTABLEKS                       R15 R3 K10 ["Util"]
       91 GETTABLEKS                       R15 R15 K24 ["ToolResult"]
       93 GETTABLEKS                       R16 R5 K25 ["ToolNames"]
       95 DUPCLOSURE                       R17 K26 [PROTO_1]
       96 DUPCLOSURE                       R18 K27 [PROTO_3]
       97 CAPTURE                          VAL R1
       98 DUPCLOSURE                       R19 K28 [PROTO_6]
       99 DUPCLOSURE                       R20 K29 [PROTO_7]
      100 DUPCLOSURE                       R21 K30 [PROTO_9]
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R1
      104 DUPCLOSURE                       R22 K31 [PROTO_11]
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R21
      110 CAPTURE                          VAL R6
      111 DUPTABLE                         R23 K33 [{"updateContentHeader"}]
      112 SETTABLEKS                       R18 R23 K32 ["updateContentHeader"]
      114 DUPCLOSURE                       R24 K34 [PROTO_15]
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R22
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R2
      122 DUPTABLE                         R25 K37 [{"bridge", "setupGuest"}]
      123 SETTABLEKS                       R23 R25 K35 ["bridge"]
      125 SETTABLEKS                       R24 R25 K36 ["setupGuest"]
      127 RETURN                           R25 1
