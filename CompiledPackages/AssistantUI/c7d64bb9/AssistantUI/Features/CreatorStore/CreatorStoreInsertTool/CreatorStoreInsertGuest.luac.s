PROTO_0:
        0 DUPTABLE                         R5 K3 [{"isThirdPartyRequest", "messageId", "contentId"}]
        1 SETTABLEKS                       R2 R5 K0 ["isThirdPartyRequest"]
        3 SETTABLEKS                       R3 R5 K1 ["messageId"]
        5 SETTABLEKS                       R4 R5 K2 ["contentId"]
        7 DUPTABLE                         R6 K5 [{"handlerArgs"}]
        8 SETTABLEKS                       R5 R6 K4 ["handlerArgs"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K6 ["createGuestContext"]
       13 MOVE                             R8 R0
       14 MOVE                             R9 R6
       15 MOVE                             R10 R1
       16 LOADNIL                          R11
       17 CALL                             R7 4 -1
       18 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handlerArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["handlerArgs"]
       10 GETTABLEKS                       R2 R2 K2 ["messageId"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["handlerArgs"]
       15 GETTABLEKS                       R3 R3 K3 ["contentId"]
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+10]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["getContentHooks"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K5 ["editContent"]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K5 ["editContent"]
       33 DUPTABLE                         R5 K7 [{"messageId", "contentId", "transformFn"}]
       34 SETTABLEKS                       R2 R5 K2 ["messageId"]
       36 SETTABLEKS                       R3 R5 K3 ["contentId"]
       38 SETTABLEKS                       R0 R5 K6 ["transformFn"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 DUPTABLE                         R3 K3 [{"updateWidget"}]
        9 SETTABLEKS                       R2 R3 K2 ["updateWidget"]
       11 RETURN                           R3 1

PROTO_3:
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

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETTABLEKS                       R4 R1 K0 ["toolArgs"]
        5 GETTABLEKS                       R4 R4 K1 ["externalHooks"]
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R4
       11 DUPTABLE                         R3 K3 [{"updateWidget"}]
       12 SETTABLEKS                       R5 R3 K2 ["updateWidget"]
       14 GETTABLEKS                       R4 R3 K2 ["updateWidget"]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridge"]
        3 GETTABLEKS                       R1 R1 K1 ["swapAssetAsync"]
        5 DUPTABLE                         R2 K4 [{"assetId", "insertGuid"}]
        6 SETTABLEKS                       R0 R2 K2 ["assetId"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K5 ["tag"]
       11 LOADN                            R5 11
       12 NAMECALL                         R3 R3 K6 ["sub"]
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K3 ["insertGuid"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["selectInsertedAssets"]
        5 DUPTABLE                         R1 K3 [{"tag"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["tag"]
        9 SETTABLEKS                       R2 R1 K2 ["tag"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 SETTABLEKS                       R2 R1 K0 ["onSelectionChange"]
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R2 R1 K1 ["onChipClicked"]
       10 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R1 K0 ["responseInfo"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        4 MOVE                             R5 R3
        5 LOADK                            R6 K1 ["Missing response info"]
        6 GETIMPORT                        R4 K3 [assert]
        8 CALL                             R4 2 0
        9 GETTABLEKS                       R4 R3 K4 ["assetName"]
       11 GETTABLEKS                       R5 R3 K5 ["tag"]
       13 DUPTABLE                         R6 K16 [{"type", "mode", "name", "displayName", "tag", "className", "assetIds", "expanded", "shouldShowChip", "onSelectionChange", "onChipClicked"}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K17 ["Type"]
       17 SETTABLEKS                       R7 R6 K6 ["type"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K18 ["Modes"]
       22 GETTABLEKS                       R7 R7 K19 ["Generated"]
       24 SETTABLEKS                       R7 R6 K7 ["mode"]
       26 SETTABLEKS                       R4 R6 K8 ["name"]
       28 SETTABLEKS                       R4 R6 K9 ["displayName"]
       30 SETTABLEKS                       R5 R6 K5 ["tag"]
       32 GETTABLEKS                       R7 R3 K10 ["className"]
       34 SETTABLEKS                       R7 R6 K10 ["className"]
       36 GETTABLEKS                       R7 R3 K20 ["assets"]
       38 SETTABLEKS                       R7 R6 K11 ["assetIds"]
       40 LOADB                            R7 0
       41 SETTABLEKS                       R7 R6 K12 ["expanded"]
       43 LOADB                            R7 0
       44 SETTABLEKS                       R7 R6 K13 ["shouldShowChip"]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K21 ["createUnimplemented"]
       49 LOADK                            R8 K14 ["onSelectionChange"]
       50 CALL                             R7 1 1
       51 SETTABLEKS                       R7 R6 K14 ["onSelectionChange"]
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K21 ["createUnimplemented"]
       56 LOADK                            R8 K15 ["onChipClicked"]
       57 CALL                             R7 1 1
       58 SETTABLEKS                       R7 R6 K15 ["onChipClicked"]
       60 NEWCLOSURE                       R7 P0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R6
       63 SETTABLEKS                       R7 R6 K14 ["onSelectionChange"]
       65 NEWCLOSURE                       R7 P1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R6
       68 SETTABLEKS                       R7 R6 K15 ["onChipClicked"]
       70 GETTABLEKS                       R8 R0 K22 ["toolArgs"]
       72 GETTABLEKS                       R8 R8 K23 ["externalHooks"]
       74 NEWCLOSURE                       R9 P2
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          VAL R8
       78 DUPTABLE                         R7 K25 [{"updateWidget"}]
       79 SETTABLEKS                       R9 R7 K24 ["updateWidget"]
       81 GETTABLEKS                       R8 R7 K24 ["updateWidget"]
       83 NEWCLOSURE                       R9 P3
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          VAL R6
       86 CALL                             R8 1 0
       87 JUMPIFNOT                        R2 ; [+1]
       88 RETURN                           R0 0
       89 GETTABLEKS                       R8 R0 K26 ["bridge"]
       91 GETTABLEKS                       R8 R8 K27 ["listenToLinkChanges"]
       93 DUPTABLE                         R9 K28 [{"name", "tag"}]
       94 GETTABLEKS                       R10 R6 K8 ["name"]
       96 SETTABLEKS                       R10 R9 K8 ["name"]
       98 GETTABLEKS                       R10 R6 K5 ["tag"]
      100 SETTABLEKS                       R10 R9 K5 ["tag"]
      102 CALL                             R8 1 0
      103 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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
       64 GETTABLEKS                       R6 R0 K15 ["toolArgs"]
       66 GETTABLEKS                       R6 R6 K16 ["externalHooks"]
       68 NEWCLOSURE                       R7 P0
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          VAL R6
       72 DUPTABLE                         R5 K18 [{"updateWidget"}]
       73 SETTABLEKS                       R7 R5 K17 ["updateWidget"]
       75 GETTABLEKS                       R6 R5 K17 ["updateWidget"]
       77 NEWCLOSURE                       R7 P1
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          REF R4
       81 CALL                             R6 1 0
       82 GETTABLEKS                       R6 R0 K19 ["bridge"]
       84 GETTABLEKS                       R6 R6 K20 ["insertFromMarketplaceAsync"]
       86 DUPTABLE                         R7 K22 [{"assetName", "assetIds"}]
       87 SETTABLEKS                       R4 R7 K1 ["assetName"]
       89 SETTABLEKS                       R3 R7 K21 ["assetIds"]
       91 CALL                             R6 1 1
       92 GETTABLEKS                       R7 R6 K23 ["responseInfo"]
       94 JUMPIFNOT                        R7 ; [+5]
       95 GETUPVAL                         R7 5
       96 MOVE                             R8 R0
       97 MOVE                             R9 R6
       98 MOVE                             R10 R2
       99 CALL                             R7 3 0
      100 GETUPVAL                         R7 6
      101 GETTABLEKS                       R7 R7 K24 ["toString"]
      103 GETTABLEKS                       R8 R6 K25 ["result"]
      105 CALL                             R7 1 -1
      106 CLOSEUPVALS                      R4
      107 RETURN                           R7 -1

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["Generated"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R4 3
       13 LOADB                            R5 0
       14 LOADNIL                          R6
       15 MOVE                             R7 R0
       16 CALL                             R2 5 1
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R1 K3 ["onSelectionChange"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R3 R1 K4 ["onChipClicked"]
       27 GETTABLEKS                       R3 R2 K5 ["bridge"]
       29 GETTABLEKS                       R3 R3 K6 ["listenToLinkChanges"]
       31 DUPTABLE                         R4 K9 [{"name", "tag"}]
       32 GETTABLEKS                       R5 R1 K7 ["name"]
       34 SETTABLEKS                       R5 R4 K7 ["name"]
       36 GETTABLEKS                       R5 R1 K8 ["tag"]
       38 SETTABLEKS                       R5 R4 K8 ["tag"]
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["isThirdPartyRequest"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADB                            R2 0
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R3 R1 K1 ["messageId"]
        8 JUMPIF                           R3 ; [+1]
        9 LOADK                            R3 K2 [""]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R4 R1 K3 ["contentId"]
       13 JUMPIF                           R4 ; [+1]
       14 LOADK                            R4 K2 [""]
       15 GETUPVAL                         R5 0
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R7 2
       18 MOVE                             R8 R2
       19 MOVE                             R9 R3
       20 MOVE                             R10 R4
       21 CALL                             R5 5 1
       22 GETUPVAL                         R6 3
       23 MOVE                             R7 R5
       24 MOVE                             R8 R0
       25 MOVE                             R9 R2
       26 CALL                             R6 3 1
       27 GETUPVAL                         R7 4
       28 CALL                             R7 0 1
       29 MOVE                             R9 R6
       30 NAMECALL                         R7 R7 K4 ["addText"]
       32 CALL                             R7 2 1
       33 NAMECALL                         R7 R7 K5 ["build"]
       35 CALL                             R7 1 -1
       36 RETURN                           R7 -1

PROTO_15:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["registerHydrator"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Type"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 2 0
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 GETUPVAL                         R3 6
       22 GETTABLEKS                       R3 R3 K2 ["define"]
       24 CALL                             R3 0 1
       25 GETUPVAL                         R5 7
       26 GETTABLEKS                       R5 R5 K3 ["CreatorStoreInsert"]
       28 NAMECALL                         R3 R3 K4 ["setName"]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 7
       32 GETTABLEKS                       R5 R5 K5 ["replaceTokens"]
       34 LOADK                            R6 K6 ["Inserts an asset into the game.\nThis should be used alongside the {ToolNames.CreatorStoreSearch} tool, which returns searchId and optional objectTypes.\nProvide searchId to insert from that search. Optionally provide objectTypes to restrict insertion to those types (combined and deduplicated in order).\nWhen multiple assetIds are resolved, the first is inserted and the rest are available as alternatives.\n"]
       35 CALL                             R5 1 -1
       36 NAMECALL                         R3 R3 K7 ["setDescription"]
       38 CALL                             R3 -1 1
       39 LOADK                            R5 K8 ["searchId"]
       40 DUPTABLE                         R6 K11 [{"type", "description"}]
       41 LOADK                            R7 K12 ["string"]
       42 SETTABLEKS                       R7 R6 K9 ["type"]
       44 LOADK                            R8 K13 ["Unique ID returned by %*."]
       45 GETUPVAL                         R10 7
       46 GETTABLEKS                       R10 R10 K14 ["CreatorStoreSearch"]
       48 NAMECALL                         R8 R8 K15 ["format"]
       50 CALL                             R8 2 1
       51 MOVE                             R7 R8
       52 SETTABLEKS                       R7 R6 K10 ["description"]
       54 NAMECALL                         R3 R3 K16 ["addArgument"]
       56 CALL                             R3 3 1
       57 LOADK                            R5 K17 ["objectTypes"]
       58 DUPTABLE                         R6 K19 [{"type", "items", "description"}]
       59 LOADK                            R7 K20 ["array"]
       60 SETTABLEKS                       R7 R6 K9 ["type"]
       62 DUPTABLE                         R7 K21 [{"type"}]
       63 LOADK                            R8 K12 ["string"]
       64 SETTABLEKS                       R8 R7 K9 ["type"]
       66 SETTABLEKS                       R7 R6 K18 ["items"]
       68 LOADK                            R8 K22 ["Optional list of objectTypes returned by %*. Asset IDs for all provided types are combined in order and deduplicated. If omitted, insertion uses all cached assetIds for searchId."]
       69 GETUPVAL                         R10 7
       70 GETTABLEKS                       R10 R10 K14 ["CreatorStoreSearch"]
       72 NAMECALL                         R8 R8 K15 ["format"]
       74 CALL                             R8 2 1
       75 MOVE                             R7 R8
       76 SETTABLEKS                       R7 R6 K10 ["description"]
       78 NAMECALL                         R3 R3 K23 ["addOptionalArgument"]
       80 CALL                             R3 3 1
       81 LOADK                            R5 K24 ["assetName"]
       82 DUPTABLE                         R6 K11 [{"type", "description"}]
       83 LOADK                            R7 K12 ["string"]
       84 SETTABLEKS                       R7 R6 K9 ["type"]
       86 LOADK                            R7 K25 ["Optional display/insert name override for the inserted asset. If omitted, objectType or a generic default is used."]
       87 SETTABLEKS                       R7 R6 K10 ["description"]
       89 NAMECALL                         R3 R3 K23 ["addOptionalArgument"]
       91 CALL                             R3 3 1
       92 MOVE                             R5 R2
       93 NAMECALL                         R3 R3 K26 ["setHandler"]
       95 CALL                             R3 2 1
       96 DUPTABLE                         R5 K32 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       97 LOADK                            R6 K33 ["Creator Store Insertion"]
       98 SETTABLEKS                       R6 R5 K27 ["title"]
      100 LOADB                            R6 0
      101 SETTABLEKS                       R6 R5 K28 ["readOnlyHint"]
      103 LOADB                            R6 0
      104 SETTABLEKS                       R6 R5 K29 ["destructiveHint"]
      106 LOADB                            R6 0
      107 SETTABLEKS                       R6 R5 K30 ["idempotentHint"]
      109 LOADB                            R6 0
      110 SETTABLEKS                       R6 R5 K31 ["openWorldHint"]
      112 NAMECALL                         R3 R3 K34 ["setAnnotations"]
      114 CALL                             R3 2 1
      115 NAMECALL                         R3 R3 K35 ["build"]
      117 CALL                             R3 1 1
      118 DUPTABLE                         R4 K37 [{"transformInitialContent"}]
      119 DUPCLOSURE                       R5 K38 [PROTO_15]
      120 CAPTURE                          UPVAL U2
      121 SETTABLEKS                       R5 R4 K36 ["transformInitialContent"]
      123 DUPTABLE                         R5 K42 [{"definition", "contentWidgets", "streamTransform"}]
      124 SETTABLEKS                       R3 R5 K39 ["definition"]
      126 NEWTABLE                         R6 0 1
      128 GETUPVAL                         R7 2
      129 SETLIST                          R6 R7 1 [1]
      131 SETTABLEKS                       R6 R5 K40 ["contentWidgets"]
      133 SETTABLEKS                       R4 R5 K41 ["streamTransform"]
      135 RETURN                           R5 1

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
       37 GETTABLEKS                       R6 R0 K9 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["ToolUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Types"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K1 [script]
       49 LOADK                            R9 K15 ["CreatorStore"]
       50 NAMECALL                         R7 R7 K3 ["FindFirstAncestor"]
       52 CALL                             R7 2 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R7 K16 ["CreatorStoreConstants"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R7 K17 ["CreatorStoreInsertTool"]
       62 GETTABLEKS                       R10 R10 K18 ["CreatorStoreInsertBridge"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R7 K17 ["CreatorStoreInsertTool"]
       69 GETTABLEKS                       R11 R11 K19 ["CreatorStoreInsertBridgeTypes"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R7 K20 ["CreatorStoreInsertContentWidget"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R13 R7 K21 ["CreatorStoreSearchCache"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETTABLEKS                       R14 R7 K22 ["CreatorStoreTypes"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K5 [require]
       89 GETTABLEKS                       R15 R0 K23 ["Flags"]
       91 GETTABLEKS                       R15 R15 K24 ["FFlagAssistantMultipleChatPersistence"]
       93 CALL                             R14 1 1
       94 GETTABLEKS                       R15 R2 K9 ["Util"]
       96 GETTABLEKS                       R15 R15 K25 ["ToolBuilder"]
       98 GETTABLEKS                       R16 R2 K9 ["Util"]
      100 GETTABLEKS                       R16 R16 K26 ["ToolResult"]
      102 GETTABLEKS                       R17 R4 K27 ["ToolNames"]
      104 DUPCLOSURE                       R18 K28 [PROTO_0]
      105 CAPTURE                          VAL R9
      106 DUPCLOSURE                       R19 K29 [PROTO_2]
      107 CAPTURE                          VAL R14
      108 DUPCLOSURE                       R20 K30 [PROTO_4]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R14
      111 DUPCLOSURE                       R21 K31 [PROTO_7]
      112 DUPCLOSURE                       R22 K32 [PROTO_8]
      113 DUPCLOSURE                       R23 K33 [PROTO_10]
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R1
      118 DUPCLOSURE                       R24 K34 [PROTO_12]
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R23
      125 CAPTURE                          VAL R5
      126 DUPTABLE                         R25 K36 [{"updateContentHeader"}]
      127 SETTABLEKS                       R20 R25 K35 ["updateContentHeader"]
      129 DUPCLOSURE                       R26 K37 [PROTO_16]
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R24
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R17
      138 DUPTABLE                         R27 K40 [{"bridge", "setupGuest"}]
      139 SETTABLEKS                       R25 R27 K38 ["bridge"]
      141 SETTABLEKS                       R26 R27 K39 ["setupGuest"]
      143 RETURN                           R27 1
