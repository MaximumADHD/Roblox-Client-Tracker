PROTO_0:
        0 LOADB                            R0 0
        1 GETIMPORT                        R2 K1 [tick]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["lastInsertAttemptTime"]
        7 SUB                              R1 R2 R3
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["TIME_BETWEEN_ASSET_INSERTION"]
       11 JUMPIFNOTLT                      R2 R1 ; [+8]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K4 ["insertToolPromise"]
       16 NAMECALL                         R1 R1 K5 ["isWaiting"]
       18 CALL                             R1 1 1
       19 NOT                              R0 R1
       20 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isShowingToolMessageBox"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isShowingToolMessageBox"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["insertToolPromise"]
       11 NAMECALL                         R0 R0 K4 ["insertToWorkspace"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"isShowingToolMessageBox"}]
        2 LOADB                            R5 0
        3 SETTABLEKS                       R5 R4 K0 ["isShowingToolMessageBox"]
        5 NAMECALL                         R2 R2 K2 ["setState"]
        7 CALL                             R2 2 0
        8 JUMPIFNOTEQKS                    R1 K3 ["yes"] ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["insertToolPromise"]
       13 NAMECALL                         R2 R2 K5 ["insertToStarterPack"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 JUMPIFNOTEQKS                    R1 K6 ["no"] ; [+7]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K4 ["insertToolPromise"]
       22 NAMECALL                         R2 R2 K7 ["insertToWorkspace"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isShowingToolMessageBox"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isShowingToolMessageBox"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isShowingScriptWarningMessageBox"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isShowingScriptWarningMessageBox"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["insertToolPromise"]
       11 NAMECALL                         R0 R0 K4 ["dismissWarningPrompt"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K5 ["state"]
       17 GETTABLEKS                       R0 R0 K6 ["scriptWarningInfo"]
       19 GETTABLEKS                       R0 R0 K7 ["insert"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isShowingScriptWarningMessageBox"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isShowingScriptWarningMessageBox"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["state"]
       11 GETTABLEKS                       R0 R0 K4 ["scriptWarningInfo"]
       13 GETTABLEKS                       R0 R0 K5 ["cancel"]
       15 CALL                             R0 0 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K6 ["insertToolPromise"]
       19 NAMECALL                         R0 R0 K5 ["cancel"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K6 ["insertToolPromise"]
       25 NAMECALL                         R0 R0 K7 ["dismissWarningPrompt"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["_tutorialLimits"]
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["_tutorialLimits"]
       11 GETTABLEKS                       R1 R1 K2 ["scriptWarningOverride"]
       13 JUMPIFNOT                        R1 ; [+2]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K0 ["props"]
       19 GETTABLEKS                       R1 R1 K3 ["_Settings"]
       21 LOADK                            R3 K4 ["Plugin"]
       22 NAMECALL                         R1 R1 K5 ["get"]
       24 CALL                             R1 2 1
       25 NAMECALL                         R2 R1 K6 ["getShowScriptWarning"]
       27 CALL                             R2 1 1
       28 JUMPIFNOT                        R2 ; [+12]
       29 GETUPVAL                         R2 0
       30 DUPTABLE                         R4 K9 [{"isShowingScriptWarningMessageBox", "scriptWarningInfo"}]
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K7 ["isShowingScriptWarningMessageBox"]
       34 SETTABLEKS                       R0 R4 K8 ["scriptWarningInfo"]
       36 NAMECALL                         R2 R2 K10 ["setState"]
       38 CALL                             R2 2 0
       39 LOADB                            R2 1
       40 RETURN                           R2 1
       41 LOADB                            R2 0
       42 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["_Settings"]
        5 LOADK                            R3 K2 ["Plugin"]
        6 NAMECALL                         R1 R1 K3 ["get"]
        8 CALL                             R1 2 1
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R1 K4 ["setShowScriptWarning"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 DUPTABLE                         R2 K1 [{"isShowingGrantPermissionsMessageBox"}]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K0 ["isShowingGrantPermissionsMessageBox"]
        8 NAMECALL                         R0 R0 K2 ["setState"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K3 ["insertToolPromise"]
       14 LOADB                            R2 0
       15 NAMECALL                         R0 R0 K4 ["returnResult"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R4 K1 [{"isShowingGrantPermissionsMessageBox"}]
        5 LOADB                            R5 0
        6 SETTABLEKS                       R5 R4 K0 ["isShowingGrantPermissionsMessageBox"]
        8 NAMECALL                         R2 R2 K2 ["setState"]
       10 CALL                             R2 2 0
       11 JUMPIFNOTEQKS                    R1 K3 ["yes"] ; [+3]
       13 LOADB                            R2 1
       14 JUMP                             ; [+1]
       15 LOADB                            R2 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["insertToolPromise"]
       19 MOVE                             R5 R2
       20 NAMECALL                         R3 R3 K5 ["returnResult"]
       22 CALL                             R3 2 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R3 K2 [{"isShowingGrantPermissionsMessageBox", "grantPermissionsInfo"}]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K0 ["isShowingGrantPermissionsMessageBox"]
        8 SETTABLEKS                       R0 R3 K1 ["grantPermissionsInfo"]
       10 NAMECALL                         R1 R1 K3 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["_IXP"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["EngineAssetTypeIdToToolboxAssetType"]
        3 GETUPVAL                         R5 1
        4 GETTABLE                         R3 R4 R5
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["ToolboxMarketplaceAssetTypes"]
        8 GETTABLE                         R4 R5 R3
        9 JUMPIFNOT                        R4 ; [+8]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["props"]
       13 GETTABLEKS                       R4 R4 K3 ["_postInsertAssetRequest"]
       15 GETUPVAL                         R5 3
       16 MOVE                             R6 R0
       17 CALL                             R4 2 0
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K2 ["props"]
       21 GETTABLEKS                       R4 R4 K4 ["_setMostRecentAssetInsertTime"]
       23 CALL                             R4 0 0
       24 GETUPVAL                         R4 4
       25 JUMPIF                           R4 ; [+5]
       26 GETUPVAL                         R5 5
       27 JUMPIFNOT                        R5 ; [+2]
       28 LOADK                            R4 K5 ["DragInsert"]
       29 JUMP                             ; [+1]
       30 LOADK                            R4 K6 ["ClickInsert"]
       31 SETUPVAL                         R4 4
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K2 ["props"]
       35 GETTABLEKS                       R4 R4 K7 ["_getPageInfoAnalyticsContextInfo"]
       37 MOVE                             R5 R4
       38 CALL                             R5 0 1
       39 FASTCALL1                        TYPEOF R1 ; [+3]
       40 MOVE                             R7 R1
       41 GETIMPORT                        R6 K9 [typeof]
       43 CALL                             R6 1 1
       44 JUMPIFEQKS                       R6 K10 ["Instance"] ; [+17]
       46 FASTCALL1                        TYPEOF R1 ; [+3]
       47 MOVE                             R7 R1
       48 GETIMPORT                        R6 K9 [typeof]
       50 CALL                             R6 1 1
       51 JUMPIFEQKS                       R6 K11 ["userdata"] ; [+10]
       53 FASTCALL1                        TYPEOF R1 ; [+3]
       54 MOVE                             R7 R1
       55 GETIMPORT                        R6 K9 [typeof]
       57 CALL                             R6 1 1
       58 JUMPIFNOTEQKS                    R6 K12 ["table"] ; [+2]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R1
       62 GETUPVAL                         R6 2
       63 GETTABLEKS                       R6 R6 K2 ["props"]
       65 GETTABLEKS                       R6 R6 K13 ["_AssetAnalytics"]
       67 NAMECALL                         R6 R6 K14 ["get"]
       69 CALL                             R6 1 1
       70 GETUPVAL                         R8 6
       71 GETUPVAL                         R9 4
       72 MOVE                             R10 R1
       73 MOVE                             R11 R5
       74 GETUPVAL                         R12 7
       75 GETUPVAL                         R13 8
       76 MOVE                             R14 R2
       77 NAMECALL                         R6 R6 K15 ["logInsert"]
       79 CALL                             R6 8 0
       80 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETIMPORT                        R6 K1 [tick]
        3 CALL                             R6 0 1
        4 SETTABLEKS                       R6 R5 K2 ["lastInsertAttemptTime"]
        6 GETTABLEKS                       R5 R0 K3 ["Asset"]
        8 GETTABLEKS                       R6 R5 K4 ["Id"]
       10 GETTABLEKS                       R7 R5 K5 ["Name"]
       12 GETTABLEKS                       R8 R5 K6 ["TypeId"]
       14 GETTABLEKS                       R9 R5 K7 ["AssetSubTypes"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R10 R10 K8 ["props"]
       19 GETTABLEKS                       R11 R10 K9 ["_categoryName"]
       21 GETTABLEKS                       R13 R10 K11 ["_searchTerm"]
       23 ORK                              R12 R13 K10 [""]
       24 GETTABLEKS                       R13 R10 K12 ["assetIndex"]
       26 GETTABLEKS                       R14 R10 K13 ["_layoutMode"]
       28 GETTABLEKS                       R15 R10 K14 ["_tutorialLimits"]
       30 GETUPVAL                         R16 0
       31 GETTABLEKS                       R16 R16 K8 ["props"]
       33 GETTABLEKS                       R16 R16 K15 ["_Plugin"]
       35 NAMECALL                         R16 R16 K16 ["get"]
       37 CALL                             R16 1 1
       38 GETUPVAL                         R17 0
       39 GETTABLEKS                       R17 R17 K8 ["props"]
       41 GETTABLEKS                       R17 R17 K17 ["_Network"]
       43 GETTABLEKS                       R17 R17 K18 ["networkInterface"]
       45 LOADNIL                          R18
       46 GETUPVAL                         R19 1
       47 CALL                             R19 0 1
       48 JUMPIFNOT                        R19 ; [+4]
       49 GETUPVAL                         R19 2
       50 GETTABLEKS                       R18 R19 K19 ["tryInsertAfterPermissionsGranted"]
       52 JUMP                             ; [+3]
       53 GETUPVAL                         R19 2
       54 GETTABLEKS                       R18 R19 K20 ["tryInsertWithBatchGrantPermissions_DEPRECATED"]
       56 MOVE                             R19 R18
       57 DUPTABLE                         R20 K35 [{"plugin", "assetId", "assetName", "assetSubTypes", "assetTypeId", "assetVersionId", "tutorialLimits", "onSuccess", "capabilities", "currentCategoryName", "categoryName", "layoutMode", "searchTerm", "assetIndex", "getIsIXPVariableEnabled"}]
       58 SETTABLEKS                       R16 R20 K21 ["plugin"]
       60 SETTABLEKS                       R6 R20 K22 ["assetId"]
       62 SETTABLEKS                       R7 R20 K23 ["assetName"]
       64 SETTABLEKS                       R9 R20 K24 ["assetSubTypes"]
       66 SETTABLEKS                       R8 R20 K25 ["assetTypeId"]
       68 SETTABLEKS                       R4 R20 K26 ["assetVersionId"]
       70 SETTABLEKS                       R15 R20 K27 ["tutorialLimits"]
       72 NEWCLOSURE                       R21 P0
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          VAL R8
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          VAL R17
       77 CAPTURE                          REF R2
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R14
       82 SETTABLEKS                       R21 R20 K28 ["onSuccess"]
       84 GETUPVAL                         R22 4
       85 CALL                             R22 0 1
       86 JUMPIFNOT                        R22 ; [+3]
       87 GETTABLEKS                       R21 R5 K36 ["Capabilities"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R21
       91 SETTABLEKS                       R21 R20 K29 ["capabilities"]
       93 SETTABLEKS                       R11 R20 K30 ["currentCategoryName"]
       95 SETTABLEKS                       R11 R20 K31 ["categoryName"]
       97 SETTABLEKS                       R14 R20 K32 ["layoutMode"]
       99 SETTABLEKS                       R12 R20 K33 ["searchTerm"]
      101 SETTABLEKS                       R13 R20 K12 ["assetIndex"]
      103 GETUPVAL                         R22 5
      104 JUMPIFNOT                        R22 ; [+4]
      105 GETUPVAL                         R21 0
      106 GETTABLEKS                       R21 R21 K34 ["getIsIXPVariableEnabled"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R21
      110 SETTABLEKS                       R21 R20 K34 ["getIsIXPVariableEnabled"]
      112 GETUPVAL                         R21 0
      113 GETTABLEKS                       R21 R21 K37 ["insertToolPromise"]
      115 MOVE                             R22 R1
      116 MOVE                             R23 R17
      117 CALL                             R19 4 2
      118 CLOSEUPVALS                      R2
      119 RETURN                           R19 2

PROTO_14:
        0 DUPTABLE                         R0 K1 [{"previewAssetData"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["previewAssetData"]
        4 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["setState"]
        5 CALL                             R2 2 0
        6 GETTABLEKS                       R2 R0 K1 ["Asset"]
        8 GETTABLEKS                       R2 R2 K2 ["Id"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["props"]
       13 GETTABLEKS                       R3 R3 K4 ["_onPreviewToggled"]
       15 LOADB                            R4 1
       16 MOVE                             R5 R2
       17 MOVE                             R6 R1
       18 CALL                             R3 3 0
       19 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R0 K1 [{"previewAssetData"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["None"]
        4 SETTABLEKS                       R1 R0 K0 ["previewAssetData"]
        6 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_16]
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R1 R1 K1 ["setState"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["props"]
        9 GETTABLEKS                       R1 R1 K3 ["_onPreviewToggled"]
       11 LOADB                            R2 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["None"]
       15 LOADNIL                          R4
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["props"]
        3 GETTABLEKS                       R7 R7 K1 ["_getPageInfoAnalyticsContextInfo"]
        5 CALL                             R7 0 1
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["props"]
        9 GETTABLEKS                       R8 R8 K2 ["_layoutMode"]
       11 JUMPIFEQKNIL                     R2 ; [+7]
       13 JUMPIFEQKNIL                     R3 ; [+5]
       15 JUMPIFEQKNIL                     R4 ; [+3]
       17 JUMPIFNOTEQKNIL                  R5 ; [+55]
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K3 ["shouldDebugWarnings"]
       22 CALL                             R9 0 1
       23 JUMPIFNOT                        R9 ; [+47]
       24 NEWTABLE                         R9 0 0
       26 JUMPIFNOTEQKNIL                  R2 ; [+8]
       28 FASTCALL2K                       TABLE_INSERT R9 K4 ; [+5]
       30 MOVE                             R11 R9
       31 LOADK                            R12 K4 ["instanceAbsoluteSize"]
       32 GETIMPORT                        R10 K7 [table.insert]
       34 CALL                             R10 2 0
       35 JUMPIFNOTEQKNIL                  R3 ; [+8]
       37 FASTCALL2K                       TABLE_INSERT R9 K8 ; [+5]
       39 MOVE                             R11 R9
       40 LOADK                            R12 K8 ["instanceAbsolutePosition"]
       41 GETIMPORT                        R10 K7 [table.insert]
       43 CALL                             R10 2 0
       44 JUMPIFNOTEQKNIL                  R4 ; [+8]
       46 FASTCALL2K                       TABLE_INSERT R9 K9 ; [+5]
       48 MOVE                             R11 R9
       49 LOADK                            R12 K9 ["parentAbsoluteSize"]
       50 GETIMPORT                        R10 K7 [table.insert]
       52 CALL                             R10 2 0
       53 JUMPIFNOTEQKNIL                  R5 ; [+8]
       55 FASTCALL2K                       TABLE_INSERT R9 K10 ; [+5]
       57 MOVE                             R11 R9
       58 LOADK                            R12 K10 ["parentAbsolutePosition"]
       59 GETIMPORT                        R10 K7 [table.insert]
       61 CALL                             R10 2 0
       62 GETIMPORT                        R10 K12 [warn]
       64 LOADK                            R11 K13 ["Unable to log asset impression. LogAssetImpression was called with nil parameters: "]
       65 GETIMPORT                        R12 K15 [table.concat]
       67 MOVE                             R13 R9
       68 LOADK                            R14 K16 [", "]
       69 CALL                             R12 2 -1
       70 CALL                             R10 -1 0
       71 LOADB                            R9 0
       72 RETURN                           R9 1
       73 LOADB                            R9 1
       74 GETTABLEKS                       R10 R2 K17 ["X"]
       76 JUMPIFEQKN                       R10 K18 [0] ; [+7]
       78 GETTABLEKS                       R10 R2 K19 ["Y"]
       80 JUMPIFEQKN                       R10 K18 [0] ; [+2]
       82 LOADB                            R9 0 +1
       83 LOADB                            R9 1
       84 GETIMPORT                        R10 K22 [Vector2.new]
       86 GETTABLEKS                       R12 R3 K17 ["X"]
       88 GETTABLEKS                       R13 R2 K17 ["X"]
       90 ADD                              R11 R12 R13
       91 GETTABLEKS                       R13 R3 K19 ["Y"]
       93 GETTABLEKS                       R14 R2 K19 ["Y"]
       95 ADD                              R12 R13 R14
       96 CALL                             R10 2 1
       97 GETUPVAL                         R11 2
       98 MOVE                             R12 R3
       99 MOVE                             R13 R4
      100 MOVE                             R14 R5
      101 CALL                             R11 3 1
      102 JUMPIF                           R11 ; [+5]
      103 GETUPVAL                         R11 2
      104 MOVE                             R12 R10
      105 MOVE                             R13 R4
      106 MOVE                             R14 R5
      107 CALL                             R11 3 1
      108 JUMPIFNOT                        R0 ; [+18]
      109 JUMPIFNOT                        R11 ; [+17]
      110 JUMPIF                           R1 ; [+16]
      111 JUMPIF                           R9 ; [+15]
      112 GETUPVAL                         R12 0
      113 GETTABLEKS                       R12 R12 K0 ["props"]
      115 GETTABLEKS                       R12 R12 K23 ["_AssetAnalytics"]
      117 NAMECALL                         R12 R12 K24 ["get"]
      119 CALL                             R12 1 1
      120 MOVE                             R14 R0
      121 MOVE                             R15 R7
      122 MOVE                             R16 R6
      123 MOVE                             R17 R8
      124 NAMECALL                         R12 R12 K25 ["logImpression"]
      126 CALL                             R12 5 0
      127 MOVE                             R12 R11
      128 JUMPIFNOT                        R12 ; [+1]
      129 NOT                              R12 R9
      130 RETURN                           R12 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["_Network"]
        5 GETTABLEKS                       R3 R3 K2 ["networkInterface"]
        7 GETTABLEKS                       R4 R2 K3 ["_Settings"]
        9 LOADK                            R6 K4 ["Plugin"]
       10 NAMECALL                         R4 R4 K5 ["get"]
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R5 R2 K6 ["_categoryName"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K7 ["getTabForCategoryName"]
       18 MOVE                             R8 R5
       19 CALL                             R7 1 1
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K8 ["INVENTORY"]
       23 JUMPIFEQ                         R7 R8 ; [+2]
       25 LOADB                            R6 0 +1
       26 LOADB                            R6 1
       27 LOADNIL                          R7
       28 JUMPIFNOT                        R6 ; [+73]
       29 JUMPIFNOT                        R0 ; [+35]
       30 NEWTABLE                         R8 1 0
       32 GETTABLEKS                       R10 R0 K9 ["Id"]
       34 FASTCALL1                        TOSTRING R10 ; [+2]
       35 GETIMPORT                        R9 K11 [tostring]
       37 CALL                             R9 1 1
       38 DUPTABLE                         R10 K14 [{"Name", "Id", "Type"}]
       39 GETTABLEKS                       R11 R0 K12 ["Name"]
       41 SETTABLEKS                       R11 R10 K12 ["Name"]
       43 GETTABLEKS                       R11 R0 K9 ["Id"]
       45 SETTABLEKS                       R11 R10 K9 ["Id"]
       47 GETTABLEKS                       R12 R0 K13 ["Type"]
       49 GETUPVAL                         R13 2
       50 GETTABLEKS                       R13 R13 K15 ["OWNER_TYPES"]
       52 GETTABLEKS                       R13 R13 K16 ["Group"]
       54 JUMPIFNOTEQ                      R12 R13 ; [+4]
       56 GETIMPORT                        R11 K19 [Enum.CreatorType.Group]
       58 JUMP                             ; [+2]
       59 GETIMPORT                        R11 K21 [Enum.CreatorType.User]
       61 SETTABLEKS                       R11 R10 K13 ["Type"]
       63 SETTABLE                         R10 R8 R9
       64 JUMP                             ; [+1]
       65 LOADNIL                          R8
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R9 R9 K22 ["join"]
       69 DUPTABLE                         R10 K25 [{"creatorTargetIds", "groupTargetIds"}]
       70 GETTABLEKS                       R12 R0 K13 ["Type"]
       72 GETUPVAL                         R13 2
       73 GETTABLEKS                       R13 R13 K15 ["OWNER_TYPES"]
       75 GETTABLEKS                       R13 R13 K20 ["User"]
       77 JUMPIFNOTEQ                      R12 R13 ; [+3]
       79 MOVE                             R11 R8
       80 JUMP                             ; [+1]
       81 LOADNIL                          R11
       82 SETTABLEKS                       R11 R10 K23 ["creatorTargetIds"]
       84 GETTABLEKS                       R12 R0 K13 ["Type"]
       86 GETUPVAL                         R13 2
       87 GETTABLEKS                       R13 R13 K15 ["OWNER_TYPES"]
       89 GETTABLEKS                       R13 R13 K16 ["Group"]
       91 JUMPIFNOTEQ                      R12 R13 ; [+3]
       93 MOVE                             R11 R8
       94 JUMP                             ; [+1]
       95 LOADNIL                          R11
       96 SETTABLEKS                       R11 R10 K24 ["groupTargetIds"]
       98 MOVE                             R11 R1
       99 CALL                             R9 2 1
      100 MOVE                             R7 R9
      101 JUMP                             ; [+11]
      102 GETUPVAL                         R8 3
      103 GETTABLEKS                       R8 R8 K22 ["join"]
      105 DUPTABLE                         R9 K27 [{"Creator"}]
      106 GETTABLEKS                       R10 R0 K12 ["Name"]
      108 SETTABLEKS                       R10 R9 K26 ["Creator"]
      110 MOVE                             R10 R1
      111 CALL                             R8 2 1
      112 MOVE                             R7 R8
      113 GETTABLEKS                       R8 R2 K28 ["_searchWithOptions"]
      115 MOVE                             R9 R3
      116 MOVE                             R10 R4
      117 MOVE                             R11 R7
      118 CALL                             R8 3 0
      119 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["ref"]
        6 DUPTABLE                         R1 K9 [{"hoveredAssetId", "isShowingToolMessageBox", "isShowingScriptWarningMessageBox", "previewAssetData", "isShowingGrantPermissionsMessageBox", "scriptWarningInfo", "grantPermissionsInfo"}]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["hoveredAssetId"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["isShowingToolMessageBox"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K4 ["isShowingScriptWarningMessageBox"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K10 ["None"]
       19 SETTABLEKS                       R2 R1 K5 ["previewAssetData"]
       21 LOADB                            R2 0
       22 SETTABLEKS                       R2 R1 K6 ["isShowingGrantPermissionsMessageBox"]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K7 ["scriptWarningInfo"]
       27 LOADNIL                          R2
       28 SETTABLEKS                       R2 R1 K8 ["grantPermissionsInfo"]
       30 SETTABLEKS                       R1 R0 K11 ["state"]
       32 LOADN                            R1 0
       33 SETTABLEKS                       R1 R0 K12 ["lastInsertAttemptTime"]
       35 NEWCLOSURE                       R1 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U1
       38 SETTABLEKS                       R1 R0 K13 ["canInsertAsset"]
       40 NEWCLOSURE                       R1 P1
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K14 ["onMessageBoxClosed"]
       44 NEWCLOSURE                       R1 P2
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R1 R0 K15 ["onMessageBoxButtonClicked"]
       48 NEWCLOSURE                       R1 P3
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K16 ["onInsertToolPrompt"]
       52 NEWCLOSURE                       R1 P4
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R1 R0 K17 ["onScriptWarningBoxConfirmed"]
       56 NEWCLOSURE                       R1 P5
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K18 ["onScriptWarningBoxCanceled"]
       60 NEWCLOSURE                       R1 P6
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R1 R0 K19 ["onInsertScriptWarningPrompt"]
       64 NEWCLOSURE                       R1 P7
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R1 R0 K20 ["onScriptWarningBoxToggleShow"]
       68 NEWCLOSURE                       R1 P8
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R1 R0 K21 ["onPermissionsGrantClosed"]
       73 NEWCLOSURE                       R1 P9
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R1 R0 K22 ["onPermissionsGranted"]
       78 NEWCLOSURE                       R1 P10
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R1 R0 K23 ["onPermissionsGrantCallback"]
       83 GETUPVAL                         R1 3
       84 GETTABLEKS                       R1 R1 K24 ["new"]
       86 GETTABLEKS                       R2 R0 K16 ["onInsertToolPrompt"]
       88 GETTABLEKS                       R3 R0 K19 ["onInsertScriptWarningPrompt"]
       90 GETTABLEKS                       R4 R0 K23 ["onPermissionsGrantCallback"]
       92 CALL                             R1 3 1
       93 SETTABLEKS                       R1 R0 K25 ["insertToolPromise"]
       95 GETUPVAL                         R1 4
       96 JUMPIFNOT                        R1 ; [+5]
       97 NEWCLOSURE                       R1 P11
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U5
      100 SETTABLEKS                       R1 R0 K26 ["getIsIXPVariableEnabled"]
      102 NEWCLOSURE                       R1 P12
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          UPVAL U7
      106 CAPTURE                          UPVAL U8
      107 CAPTURE                          UPVAL U9
      108 CAPTURE                          UPVAL U4
      109 SETTABLEKS                       R1 R0 K27 ["tryInsert"]
      111 NEWCLOSURE                       R1 P13
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R1 R0 K28 ["openAssetPreview"]
      115 NEWCLOSURE                       R1 P14
      116 CAPTURE                          VAL R0
      117 CAPTURE                          UPVAL U0
      118 SETTABLEKS                       R1 R0 K29 ["closeAssetPreview"]
      120 NEWCLOSURE                       R1 P15
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U10
      123 CAPTURE                          UPVAL U11
      124 SETTABLEKS                       R1 R0 K30 ["logAssetImpression"]
      126 GETUPVAL                         R1 12
      127 CALL                             R1 0 1
      128 JUMPIFNOT                        R1 ; [+7]
      129 NEWCLOSURE                       R1 P16
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          UPVAL U13
      133 CAPTURE                          UPVAL U14
      134 SETTABLEKS                       R1 R0 K31 ["onSearchByCreator"]
      136 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["insertToolPromise"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["_previewAssetData"]
        4 GETTABLEKS                       R4 R0 K2 ["state"]
        6 GETTABLEKS                       R4 R4 K3 ["previewAssetData"]
        8 JUMPIFNOT                        R4 ; [+30]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K4 ["None"]
       12 JUMPIFEQ                         R4 R5 ; [+26]
       14 GETTABLEKS                       R5 R4 K5 ["Asset"]
       16 JUMPIFNOT                        R5 ; [+22]
       17 JUMPIFNOT                        R3 ; [+21]
       18 GETTABLEKS                       R5 R3 K5 ["Asset"]
       20 JUMPIFNOT                        R5 ; [+18]
       21 GETTABLEKS                       R5 R4 K5 ["Asset"]
       23 GETTABLEKS                       R5 R5 K6 ["Id"]
       25 GETTABLEKS                       R6 R3 K5 ["Asset"]
       27 GETTABLEKS                       R6 R6 K6 ["Id"]
       29 JUMPIFNOTEQ                      R5 R6 ; [+9]
       31 JUMPIFEQ                         R4 R3 ; [+7]
       33 DUPTABLE                         R7 K7 [{"previewAssetData"}]
       34 SETTABLEKS                       R3 R7 K3 ["previewAssetData"]
       36 NAMECALL                         R5 R0 K8 ["setState"]
       38 CALL                             R5 2 0
       39 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["_isPreviewing"]
        6 GETTABLEKS                       R4 R1 K3 ["TryOpenAssetConfig"]
        8 GETTABLEKS                       R5 R2 K4 ["isShowingToolMessageBox"]
       10 GETTABLEKS                       R6 R2 K5 ["isShowingScriptWarningMessageBox"]
       12 GETTABLEKS                       R7 R2 K6 ["isShowingGrantPermissionsMessageBox"]
       14 GETTABLEKS                       R8 R2 K7 ["scriptWarningInfo"]
       16 GETTABLEKS                       R9 R2 K8 ["grantPermissionsInfo"]
       18 GETTABLEKS                       R10 R2 K9 ["previewAssetData"]
       20 JUMPIF                           R10 ; [+2]
       21 GETTABLEKS                       R10 R1 K10 ["_previewAssetData"]
       23 GETTABLEKS                       R11 R0 K0 ["props"]
       25 GETTABLEKS                       R11 R11 K11 ["_Localization"]
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R12 R12 K12 ["Dictionary"]
       30 GETTABLEKS                       R12 R12 K13 ["join"]
       32 MOVE                             R13 R1
       33 DUPTABLE                         R14 K20 [{"CanInsertAsset", "ClearHoveredAsset", "LogAssetImpression", "TryInsert", "TryOpenAssetConfig", "OnAssetPreviewButtonClicked", "OnSearchByCreator"}]
       34 GETTABLEKS                       R15 R0 K21 ["canInsertAsset"]
       36 SETTABLEKS                       R15 R14 K14 ["CanInsertAsset"]
       38 GETTABLEKS                       R15 R0 K22 ["clearHoveredAsset"]
       40 SETTABLEKS                       R15 R14 K15 ["ClearHoveredAsset"]
       42 GETTABLEKS                       R15 R0 K23 ["logAssetImpression"]
       44 SETTABLEKS                       R15 R14 K16 ["LogAssetImpression"]
       46 GETTABLEKS                       R15 R0 K24 ["tryInsert"]
       48 SETTABLEKS                       R15 R14 K17 ["TryInsert"]
       50 SETTABLEKS                       R4 R14 K3 ["TryOpenAssetConfig"]
       52 GETTABLEKS                       R15 R0 K25 ["openAssetPreview"]
       54 SETTABLEKS                       R15 R14 K18 ["OnAssetPreviewButtonClicked"]
       56 GETUPVAL                         R16 1
       57 CALL                             R16 0 1
       58 JUMPIFNOT                        R16 ; [+3]
       59 GETTABLEKS                       R15 R0 K26 ["onSearchByCreator"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R15
       63 SETTABLEKS                       R15 R14 K19 ["OnSearchByCreator"]
       65 CALL                             R12 2 1
       66 MOVE                             R13 R3
       67 JUMPIFNOT                        R13 ; [+7]
       68 GETUPVAL                         R14 2
       69 GETTABLEKS                       R14 R14 K27 ["None"]
       71 JUMPIFNOTEQ                      R10 R14 ; [+2]
       73 LOADB                            R13 0 +1
       74 LOADB                            R13 1
       75 GETUPVAL                         R14 3
       76 GETTABLEKS                       R14 R14 K28 ["omit"]
       78 MOVE                             R15 R12
       79 NEWTABLE                         R16 0 15
       81 LOADK                            R17 K29 ["_categoryName"]
       82 LOADK                            R18 K2 ["_isPreviewing"]
       83 LOADK                            R19 K30 ["_previewAssetId"]
       84 LOADK                            R20 K10 ["_previewAssetData"]
       85 LOADK                            R21 K31 ["_searchTerm"]
       86 LOADK                            R22 K31 ["_searchTerm"]
       87 LOADK                            R23 K32 ["_onPreviewToggled"]
       88 LOADK                            R24 K33 ["_postInsertAssetRequest"]
       89 LOADK                            R25 K34 ["_searchWithOptions"]
       90 LOADK                            R26 K35 ["_setMostRecentAssetInsertTime"]
       91 LOADK                            R27 K36 ["_AssetAnalytics"]
       92 LOADK                            R28 K11 ["_Localization"]
       93 LOADK                            R29 K37 ["_Plugin"]
       94 LOADK                            R30 K38 ["_Settings"]
       95 LOADK                            R31 K39 ["_Network"]
       96 SETLIST                          R16 R17 15 [1]
       98 CALL                             R14 2 1
       99 MOVE                             R12 R14
      100 GETUPVAL                         R14 2
      101 GETTABLEKS                       R14 R14 K40 ["createFragment"]
      103 DUPTABLE                         R15 K48 [{"ToolScriptWarningMessageBox", "GrantPermissionsMessageBox", "ToolMessageBox", "AssetPreview", "SubsequentDialogController", "PurchaseFlowWrapper", "Contents"}]
      104 MOVE                             R16 R6
      105 JUMPIFNOT                        R16 ; [+39]
      106 GETUPVAL                         R16 2
      107 GETTABLEKS                       R16 R16 K49 ["createElement"]
      109 GETUPVAL                         R17 4
      110 DUPTABLE                         R18 K57 [{"Name", "Info", "Icon", "onClose", "onCancel", "onOkButtonClicked", "onChangeShowDialog"}]
      111 GETIMPORT                        R19 K60 [string.format]
      113 LOADK                            R20 K61 ["ToolboxToolScriptWarningMessageBox-%s"]
      114 GETUPVAL                         R21 5
      115 NAMECALL                         R21 R21 K62 ["GenerateGUID"]
      117 CALL                             R21 1 -1
      118 CALL                             R19 -1 1
      119 SETTABLEKS                       R19 R18 K50 ["Name"]
      121 SETTABLEKS                       R8 R18 K51 ["Info"]
      123 GETUPVAL                         R19 6
      124 GETTABLEKS                       R19 R19 K63 ["INFO_ICON"]
      126 SETTABLEKS                       R19 R18 K52 ["Icon"]
      128 GETTABLEKS                       R19 R0 K64 ["onScriptWarningBoxCanceled"]
      130 SETTABLEKS                       R19 R18 K53 ["onClose"]
      132 GETTABLEKS                       R19 R0 K64 ["onScriptWarningBoxCanceled"]
      134 SETTABLEKS                       R19 R18 K54 ["onCancel"]
      136 GETTABLEKS                       R19 R0 K65 ["onScriptWarningBoxConfirmed"]
      138 SETTABLEKS                       R19 R18 K55 ["onOkButtonClicked"]
      140 GETTABLEKS                       R19 R0 K66 ["onScriptWarningBoxToggleShow"]
      142 SETTABLEKS                       R19 R18 K56 ["onChangeShowDialog"]
      144 CALL                             R16 2 1
      145 SETTABLEKS                       R16 R15 K41 ["ToolScriptWarningMessageBox"]
      147 MOVE                             R16 R7
      148 JUMPIFNOT                        R16 ; [+97]
      149 GETUPVAL                         R16 2
      150 GETTABLEKS                       R16 R16 K49 ["createElement"]
      152 GETUPVAL                         R17 7
      153 DUPTABLE                         R18 K73 [{"Name", "Title", "Text", "InformativeText", "Icon", "IconColor", "onClose", "onButtonClicked", "buttons"}]
      154 GETIMPORT                        R19 K60 [string.format]
      156 LOADK                            R20 K74 ["ToolboxPermissionsMessageBox-%s"]
      157 GETUPVAL                         R21 5
      158 NAMECALL                         R21 R21 K62 ["GenerateGUID"]
      160 CALL                             R21 1 -1
      161 CALL                             R19 -1 1
      162 SETTABLEKS                       R19 R18 K50 ["Name"]
      164 LOADK                            R21 K75 ["General"]
      165 LOADK                            R22 K76 ["RobloxStudio"]
      166 NAMECALL                         R19 R11 K77 ["getText"]
      168 CALL                             R19 3 1
      169 SETTABLEKS                       R19 R18 K67 ["Title"]
      171 LOADK                            R21 K78 ["GrantAssetPermission"]
      172 LOADK                            R22 K79 ["DialogText"]
      173 NAMECALL                         R19 R11 K77 ["getText"]
      175 CALL                             R19 3 1
      176 SETTABLEKS                       R19 R18 K68 ["Text"]
      178 LOADK                            R21 K78 ["GrantAssetPermission"]
      179 LOADK                            R22 K80 ["Information"]
      180 DUPTABLE                         R23 K84 [{"assetName", "assetId", "assetType"}]
      181 GETTABLEKS                       R24 R9 K81 ["assetName"]
      183 SETTABLEKS                       R24 R23 K81 ["assetName"]
      185 GETTABLEKS                       R24 R9 K82 ["assetId"]
      187 SETTABLEKS                       R24 R23 K82 ["assetId"]
      189 GETTABLEKS                       R24 R9 K83 ["assetType"]
      191 SETTABLEKS                       R24 R23 K83 ["assetType"]
      193 NAMECALL                         R19 R11 K77 ["getText"]
      195 CALL                             R19 4 1
      196 SETTABLEKS                       R19 R18 K69 ["InformativeText"]
      198 GETUPVAL                         R19 6
      199 GETTABLEKS                       R19 R19 K85 ["WARNING_ICON"]
      201 SETTABLEKS                       R19 R18 K52 ["Icon"]
      203 GETIMPORT                        R19 K88 [Color3.fromHex]
      205 LOADK                            R20 K89 ["#FFAA21"]
      206 CALL                             R19 1 1
      207 SETTABLEKS                       R19 R18 K70 ["IconColor"]
      209 GETTABLEKS                       R19 R0 K90 ["onPermissionsGrantClosed"]
      211 SETTABLEKS                       R19 R18 K53 ["onClose"]
      213 GETTABLEKS                       R19 R0 K91 ["onPermissionsGranted"]
      215 SETTABLEKS                       R19 R18 K71 ["onButtonClicked"]
      217 NEWTABLE                         R19 0 2
      219 DUPTABLE                         R20 K93 [{"Text", "action"}]
      220 LOADK                            R23 K78 ["GrantAssetPermission"]
      221 LOADK                            R24 K94 ["CancelButton"]
      222 NAMECALL                         R21 R11 K77 ["getText"]
      224 CALL                             R21 3 1
      225 SETTABLEKS                       R21 R20 K68 ["Text"]
      227 LOADK                            R21 K95 ["no"]
      228 SETTABLEKS                       R21 R20 K92 ["action"]
      230 DUPTABLE                         R21 K93 [{"Text", "action"}]
      231 LOADK                            R24 K78 ["GrantAssetPermission"]
      232 LOADK                            R25 K96 ["GrantButton"]
      233 NAMECALL                         R22 R11 K77 ["getText"]
      235 CALL                             R22 3 1
      236 SETTABLEKS                       R22 R21 K68 ["Text"]
      238 LOADK                            R22 K97 ["yes"]
      239 SETTABLEKS                       R22 R21 K92 ["action"]
      241 SETLIST                          R19 R20 2 [1]
      243 SETTABLEKS                       R19 R18 K72 ["buttons"]
      245 CALL                             R16 2 1
      246 SETTABLEKS                       R16 R15 K42 ["GrantPermissionsMessageBox"]
      248 MOVE                             R16 R5
      249 JUMPIFNOT                        R16 ; [+71]
      250 GETUPVAL                         R16 2
      251 GETTABLEKS                       R16 R16 K49 ["createElement"]
      253 GETUPVAL                         R17 7
      254 DUPTABLE                         R18 K98 [{"Name", "Title", "Text", "Icon", "onClose", "onButtonClicked", "buttons"}]
      255 GETIMPORT                        R19 K60 [string.format]
      257 LOADK                            R20 K99 ["ToolboxToolMessageBox-%s"]
      258 GETUPVAL                         R21 5
      259 NAMECALL                         R21 R21 K62 ["GenerateGUID"]
      261 CALL                             R21 1 -1
      262 CALL                             R19 -1 1
      263 SETTABLEKS                       R19 R18 K50 ["Name"]
      265 LOADK                            R21 K100 ["InsertTool"]
      266 LOADK                            R22 K101 ["DialogTitle"]
      267 NAMECALL                         R19 R11 K77 ["getText"]
      269 CALL                             R19 3 1
      270 SETTABLEKS                       R19 R18 K67 ["Title"]
      272 LOADK                            R21 K100 ["InsertTool"]
      273 LOADK                            R22 K79 ["DialogText"]
      274 NAMECALL                         R19 R11 K77 ["getText"]
      276 CALL                             R19 3 1
      277 SETTABLEKS                       R19 R18 K68 ["Text"]
      279 GETUPVAL                         R19 6
      280 GETTABLEKS                       R19 R19 K63 ["INFO_ICON"]
      282 SETTABLEKS                       R19 R18 K52 ["Icon"]
      284 GETTABLEKS                       R19 R0 K102 ["onMessageBoxClosed"]
      286 SETTABLEKS                       R19 R18 K53 ["onClose"]
      288 GETTABLEKS                       R19 R0 K103 ["onMessageBoxButtonClicked"]
      290 SETTABLEKS                       R19 R18 K71 ["onButtonClicked"]
      292 NEWTABLE                         R19 0 2
      294 DUPTABLE                         R20 K93 [{"Text", "action"}]
      295 LOADK                            R23 K104 ["Common"]
      296 LOADK                            R24 K105 ["Yes"]
      297 NAMECALL                         R21 R11 K77 ["getText"]
      299 CALL                             R21 3 1
      300 SETTABLEKS                       R21 R20 K68 ["Text"]
      302 LOADK                            R21 K97 ["yes"]
      303 SETTABLEKS                       R21 R20 K92 ["action"]
      305 DUPTABLE                         R21 K93 [{"Text", "action"}]
      306 LOADK                            R24 K104 ["Common"]
      307 LOADK                            R25 K106 ["No"]
      308 NAMECALL                         R22 R11 K77 ["getText"]
      310 CALL                             R22 3 1
      311 SETTABLEKS                       R22 R21 K68 ["Text"]
      313 LOADK                            R22 K95 ["no"]
      314 SETTABLEKS                       R22 R21 K92 ["action"]
      316 SETLIST                          R19 R20 2 [1]
      318 SETTABLEKS                       R19 R18 K72 ["buttons"]
      320 CALL                             R16 2 1
      321 SETTABLEKS                       R16 R15 K43 ["ToolMessageBox"]
      323 MOVE                             R16 R13
      324 JUMPIFNOT                        R16 ; [+39]
      325 GETUPVAL                         R16 2
      326 GETTABLEKS                       R16 R16 K49 ["createElement"]
      328 GETUPVAL                         R17 8
      329 DUPTABLE                         R18 K110 [{"assetData", "canInsertAsset", "logAssetImpression", "onAssetPreviewButtonClicked", "onClose", "onSearchByCreator", "tryInsert", "tryOpenAssetConfig"}]
      330 SETTABLEKS                       R10 R18 K107 ["assetData"]
      332 GETTABLEKS                       R19 R0 K21 ["canInsertAsset"]
      334 SETTABLEKS                       R19 R18 K21 ["canInsertAsset"]
      336 GETTABLEKS                       R19 R0 K23 ["logAssetImpression"]
      338 SETTABLEKS                       R19 R18 K23 ["logAssetImpression"]
      340 GETTABLEKS                       R19 R0 K25 ["openAssetPreview"]
      342 SETTABLEKS                       R19 R18 K108 ["onAssetPreviewButtonClicked"]
      344 GETTABLEKS                       R19 R0 K111 ["closeAssetPreview"]
      346 SETTABLEKS                       R19 R18 K53 ["onClose"]
      348 GETUPVAL                         R20 1
      349 CALL                             R20 0 1
      350 JUMPIFNOT                        R20 ; [+3]
      351 GETTABLEKS                       R19 R0 K26 ["onSearchByCreator"]
      353 JUMP                             ; [+1]
      354 LOADNIL                          R19
      355 SETTABLEKS                       R19 R18 K26 ["onSearchByCreator"]
      357 GETTABLEKS                       R19 R0 K24 ["tryInsert"]
      359 SETTABLEKS                       R19 R18 K24 ["tryInsert"]
      361 SETTABLEKS                       R4 R18 K109 ["tryOpenAssetConfig"]
      363 CALL                             R16 2 1
      364 SETTABLEKS                       R16 R15 K44 ["AssetPreview"]
      366 GETUPVAL                         R16 2
      367 GETTABLEKS                       R16 R16 K49 ["createElement"]
      369 GETUPVAL                         R17 9
      370 CALL                             R16 1 1
      371 SETTABLEKS                       R16 R15 K45 ["SubsequentDialogController"]
      373 GETUPVAL                         R16 2
      374 GETTABLEKS                       R16 R16 K49 ["createElement"]
      376 GETUPVAL                         R17 10
      377 DUPTABLE                         R18 K113 [{"AssetData", "TryInsert"}]
      378 SETTABLEKS                       R10 R18 K112 ["AssetData"]
      380 GETTABLEKS                       R19 R0 K24 ["tryInsert"]
      382 SETTABLEKS                       R19 R18 K17 ["TryInsert"]
      384 CALL                             R16 2 1
      385 SETTABLEKS                       R16 R15 K46 ["PurchaseFlowWrapper"]
      387 GETUPVAL                         R16 2
      388 GETTABLEKS                       R16 R16 K49 ["createElement"]
      390 GETUPVAL                         R17 11
      391 MOVE                             R18 R12
      392 CALL                             R16 2 1
      393 SETTABLEKS                       R16 R15 K47 ["Contents"]
      395 CALL                             R14 1 -1
      396 RETURN                           R14 -1

PROTO_24:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["assets"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R0 K1 ["pageInfo"]
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 GETTABLEKS                       R4 R3 K2 ["categoryName"]
       17 JUMPIF                           R4 ; [+5]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["DEFAULT"]
       21 GETTABLEKS                       R4 R4 K4 ["name"]
       23 GETTABLEKS                       R5 R0 K5 ["tutorialLimits"]
       25 GETTABLEKS                       R6 R2 K6 ["idToAssetMap"]
       27 JUMPIF                           R6 ; [+2]
       28 NEWTABLE                         R6 0 0
       30 GETTABLEKS                       R7 R2 K7 ["previewAssetId"]
       32 GETTABLE                         R8 R6 R7
       33 DUPTABLE                         R9 K14 [{"_categoryName", "_isPreviewing", "_layoutMode", "_previewAssetData", "_searchTerm", "_tutorialLimits"}]
       34 SETTABLEKS                       R4 R9 K8 ["_categoryName"]
       36 GETTABLEKS                       R11 R2 K16 ["isPreviewing"]
       38 ORK                              R10 R11 K15 [False]
       39 SETTABLEKS                       R10 R9 K9 ["_isPreviewing"]
       41 GETTABLEKS                       R10 R3 K17 ["layoutMode"]
       43 SETTABLEKS                       R10 R9 K10 ["_layoutMode"]
       45 SETTABLEKS                       R8 R9 K11 ["_previewAssetData"]
       47 GETTABLEKS                       R11 R3 K19 ["searchTerm"]
       49 ORK                              R10 R11 K18 [""]
       50 SETTABLEKS                       R10 R9 K12 ["_searchTerm"]
       52 SETTABLEKS                       R5 R9 K13 ["_tutorialLimits"]
       54 RETURN                           R9 1

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_30:
        0 DUPTABLE                         R1 K5 [{"_onPreviewToggled", "_postInsertAssetRequest", "_setMostRecentAssetInsertTime", "_getPageInfoAnalyticsContextInfo", "_searchWithOptions"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["_onPreviewToggled"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["_postInsertAssetRequest"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["_setMostRecentAssetInsertTime"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["_getPageInfoAnalyticsContextInfo"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["_searchWithOptions"]
       26 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PureComponent"]
        3 LOADK                            R3 K1 ["AssetLogicWrapper"]
        4 NAMECALL                         R1 R1 K2 ["extend"]
        6 CALL                             R1 2 1
        7 DUPTABLE                         R2 K4 [{"Size"}]
        8 GETIMPORT                        R3 K7 [UDim2.new]
       10 LOADN                            R4 1
       11 LOADN                            R5 0
       12 LOADN                            R6 1
       13 LOADN                            R7 0
       14 CALL                             R3 4 1
       15 SETTABLEKS                       R3 R2 K3 ["Size"]
       17 SETTABLEKS                       R2 R1 K8 ["defaultProps"]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          UPVAL U9
       30 CAPTURE                          UPVAL U10
       31 CAPTURE                          UPVAL U11
       32 CAPTURE                          UPVAL U12
       33 CAPTURE                          UPVAL U13
       34 CAPTURE                          UPVAL U14
       35 SETTABLEKS                       R2 R1 K9 ["init"]
       37 DUPCLOSURE                       R2 K10 [PROTO_21]
       38 SETTABLEKS                       R2 R1 K11 ["willUnmount"]
       40 DUPCLOSURE                       R2 K12 [PROTO_22]
       41 CAPTURE                          UPVAL U0
       42 SETTABLEKS                       R2 R1 K13 ["didUpdate"]
       44 NEWCLOSURE                       R2 P3
       45 CAPTURE                          UPVAL U15
       46 CAPTURE                          UPVAL U12
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U14
       49 CAPTURE                          UPVAL U16
       50 CAPTURE                          UPVAL U17
       51 CAPTURE                          UPVAL U18
       52 CAPTURE                          UPVAL U19
       53 CAPTURE                          UPVAL U20
       54 CAPTURE                          UPVAL U21
       55 CAPTURE                          UPVAL U22
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R2 R1 K14 ["render"]
       59 GETUPVAL                         R2 23
       60 DUPTABLE                         R3 K22 [{"_AssetAnalytics", "_Localization", "_Plugin", "_Settings", "_IXP", "_Network", "_NavigationContext"}]
       61 GETUPVAL                         R4 24
       62 SETTABLEKS                       R4 R3 K15 ["_AssetAnalytics"]
       64 GETUPVAL                         R4 25
       65 GETTABLEKS                       R4 R4 K23 ["Localization"]
       67 SETTABLEKS                       R4 R3 K16 ["_Localization"]
       69 GETUPVAL                         R4 25
       70 GETTABLEKS                       R4 R4 K24 ["Plugin"]
       72 SETTABLEKS                       R4 R3 K17 ["_Plugin"]
       74 GETUPVAL                         R4 26
       75 SETTABLEKS                       R4 R3 K18 ["_Settings"]
       77 GETUPVAL                         R4 27
       78 SETTABLEKS                       R4 R3 K19 ["_IXP"]
       80 GETUPVAL                         R4 28
       81 SETTABLEKS                       R4 R3 K20 ["_Network"]
       83 GETUPVAL                         R4 29
       84 SETTABLEKS                       R4 R3 K21 ["_NavigationContext"]
       86 CALL                             R2 1 1
       87 MOVE                             R3 R1
       88 CALL                             R2 1 1
       89 MOVE                             R1 R2
       90 DUPCLOSURE                       R2 K25 [PROTO_24]
       91 CAPTURE                          UPVAL U8
       92 DUPCLOSURE                       R3 K26 [PROTO_30]
       93 CAPTURE                          UPVAL U30
       94 CAPTURE                          UPVAL U31
       95 CAPTURE                          UPVAL U32
       96 CAPTURE                          UPVAL U33
       97 CAPTURE                          UPVAL U34
       98 GETUPVAL                         R4 35
       99 GETTABLEKS                       R4 R4 K27 ["connect"]
      101 MOVE                             R5 R2
      102 MOVE                             R6 R3
      103 CALL                             R4 2 1
      104 MOVE                             R5 R1
      105 CALL                             R4 1 -1
      106 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ToolboxEnableAudioGrantDialog"]
       10 NAMECALL                         R1 R1 K5 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       16 NAMECALL                         R2 R2 K5 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K8 [script]
       21 GETTABLEKS                       R3 R3 K9 ["Parent"]
       23 GETTABLEKS                       R3 R3 K9 ["Parent"]
       25 GETTABLEKS                       R3 R3 K9 ["Parent"]
       27 GETIMPORT                        R4 K11 [require]
       29 GETTABLEKS                       R5 R3 K12 ["Src"]
       31 GETTABLEKS                       R5 R5 K13 ["Util"]
       33 GETTABLEKS                       R5 R5 K14 ["SharedFlags"]
       35 GETTABLEKS                       R5 R5 K15 ["getFFlagToolboxFixInventoryCreatorFilter"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K11 [require]
       40 GETTABLEKS                       R6 R3 K12 ["Src"]
       42 GETTABLEKS                       R6 R6 K13 ["Util"]
       44 GETTABLEKS                       R6 R6 K14 ["SharedFlags"]
       46 GETTABLEKS                       R6 R6 K16 ["getFFlagToolboxUseAssetDependencyGrantEvent"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K11 [require]
       51 GETTABLEKS                       R7 R3 K12 ["Src"]
       53 GETTABLEKS                       R7 R7 K13 ["Util"]
       55 GETTABLEKS                       R7 R7 K14 ["SharedFlags"]
       57 GETTABLEKS                       R7 R7 K17 ["getFFlagToolboxCapabilities"]
       59 CALL                             R6 1 1
       60 GETTABLEKS                       R7 R3 K18 ["Packages"]
       62 GETIMPORT                        R8 K11 [require]
       64 GETTABLEKS                       R9 R7 K19 ["Cryo"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K11 [require]
       69 GETTABLEKS                       R10 R7 K20 ["Roact"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K11 [require]
       74 GETTABLEKS                       R11 R7 K21 ["RoactRodux"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R3 K12 ["Src"]
       79 GETTABLEKS                       R11 R11 K13 ["Util"]
       81 GETIMPORT                        R12 K11 [require]
       83 GETTABLEKS                       R13 R11 K22 ["Constants"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K11 [require]
       88 GETTABLEKS                       R14 R11 K23 ["DebugFlags"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K11 [require]
       93 GETTABLEKS                       R15 R11 K24 ["Images"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K11 [require]
       98 GETTABLEKS                       R16 R11 K25 ["Analytics"]
      100 GETTABLEKS                       R16 R16 K26 ["AssetAnalyticsContextItem"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K11 [require]
      105 GETTABLEKS                       R17 R11 K27 ["InsertToolPromise"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K11 [require]
      110 GETTABLEKS                       R18 R11 K28 ["InsertAsset"]
      112 CALL                             R17 1 1
      113 LOADNIL                          R18
      114 JUMPIFNOT                        R2 ; [+6]
      115 GETIMPORT                        R19 K11 [require]
      117 GETTABLEKS                       R20 R11 K29 ["getIsIXPVariableEnabled"]
      119 CALL                             R19 1 1
      120 MOVE                             R18 R19
      121 GETIMPORT                        R19 K11 [require]
      123 GETTABLEKS                       R20 R11 K30 ["getIsWithinBounds"]
      125 CALL                             R19 1 1
      126 GETIMPORT                        R20 K11 [require]
      128 GETTABLEKS                       R21 R3 K12 ["Src"]
      130 GETTABLEKS                       R21 R21 K31 ["Types"]
      132 GETTABLEKS                       R21 R21 K32 ["Category"]
      134 CALL                             R20 1 1
      135 GETIMPORT                        R21 K11 [require]
      137 GETTABLEKS                       R22 R3 K12 ["Src"]
      139 GETTABLEKS                       R22 R22 K33 ["Components"]
      141 GETTABLEKS                       R22 R22 K34 ["Asset"]
      143 GETTABLEKS                       R22 R22 K35 ["Preview"]
      145 GETTABLEKS                       R22 R22 K36 ["AssetPreviewWrapper"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K11 [require]
      150 GETTABLEKS                       R23 R3 K12 ["Src"]
      152 GETTABLEKS                       R23 R23 K33 ["Components"]
      154 GETTABLEKS                       R23 R23 K37 ["MessageBox"]
      156 GETTABLEKS                       R23 R23 K37 ["MessageBox"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K11 [require]
      161 GETTABLEKS                       R24 R3 K12 ["Src"]
      163 GETTABLEKS                       R24 R24 K33 ["Components"]
      165 GETTABLEKS                       R24 R24 K38 ["ScriptConfirmationDialog"]
      167 CALL                             R23 1 1
      168 GETIMPORT                        R24 K11 [require]
      170 GETTABLEKS                       R25 R3 K12 ["Src"]
      172 GETTABLEKS                       R25 R25 K39 ["ContextServices"]
      174 GETTABLEKS                       R25 R25 K40 ["IXPContext"]
      176 CALL                             R24 1 1
      177 GETIMPORT                        R25 K11 [require]
      179 GETTABLEKS                       R26 R3 K12 ["Src"]
      181 GETTABLEKS                       R26 R26 K33 ["Components"]
      183 GETTABLEKS                       R26 R26 K41 ["PurchaseFlow"]
      185 GETTABLEKS                       R26 R26 K42 ["PurchaseFlowWrapper"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K11 [require]
      190 GETTABLEKS                       R27 R3 K12 ["Src"]
      192 GETTABLEKS                       R27 R27 K33 ["Components"]
      194 GETTABLEKS                       R27 R27 K41 ["PurchaseFlow"]
      196 GETTABLEKS                       R27 R27 K43 ["SubsequentDialogController"]
      198 CALL                             R26 1 1
      199 GETIMPORT                        R27 K11 [require]
      201 GETTABLEKS                       R28 R3 K12 ["Src"]
      203 GETTABLEKS                       R28 R28 K44 ["Networking"]
      205 GETTABLEKS                       R28 R28 K45 ["Requests"]
      207 GETTABLEKS                       R28 R28 K46 ["PostInsertAssetRequest"]
      209 CALL                             R27 1 1
      210 GETIMPORT                        R28 K11 [require]
      212 GETTABLEKS                       R29 R3 K12 ["Src"]
      214 GETTABLEKS                       R29 R29 K47 ["Actions"]
      216 GETTABLEKS                       R29 R29 K48 ["SetMostRecentAssetInsertTime"]
      218 CALL                             R28 1 1
      219 GETIMPORT                        R29 K11 [require]
      221 GETTABLEKS                       R30 R3 K12 ["Src"]
      223 GETTABLEKS                       R30 R30 K49 ["Thunks"]
      225 GETTABLEKS                       R30 R30 K50 ["GetPageInfoAnalyticsContextInfo"]
      227 CALL                             R29 1 1
      228 GETIMPORT                        R30 K11 [require]
      230 GETTABLEKS                       R31 R3 K12 ["Src"]
      232 GETTABLEKS                       R31 R31 K44 ["Networking"]
      234 GETTABLEKS                       R31 R31 K45 ["Requests"]
      236 GETTABLEKS                       R31 R31 K51 ["SearchWithOptions"]
      238 CALL                             R30 1 1
      239 GETIMPORT                        R31 K11 [require]
      241 GETTABLEKS                       R32 R3 K12 ["Src"]
      243 GETTABLEKS                       R32 R32 K47 ["Actions"]
      245 GETTABLEKS                       R32 R32 K52 ["SetAssetPreview"]
      247 CALL                             R31 1 1
      248 GETIMPORT                        R32 K11 [require]
      250 GETTABLEKS                       R33 R7 K53 ["Framework"]
      252 CALL                             R32 1 1
      253 GETTABLEKS                       R33 R32 K39 ["ContextServices"]
      255 GETTABLEKS                       R34 R33 K54 ["withContext"]
      257 GETIMPORT                        R35 K11 [require]
      259 GETTABLEKS                       R36 R3 K12 ["Src"]
      261 GETTABLEKS                       R36 R36 K39 ["ContextServices"]
      263 GETTABLEKS                       R36 R36 K55 ["Settings"]
      265 CALL                             R35 1 1
      266 GETIMPORT                        R36 K11 [require]
      268 GETTABLEKS                       R37 R3 K12 ["Src"]
      270 GETTABLEKS                       R37 R37 K39 ["ContextServices"]
      272 GETTABLEKS                       R37 R37 K56 ["NetworkContext"]
      274 CALL                             R36 1 1
      275 GETIMPORT                        R37 K11 [require]
      277 GETTABLEKS                       R38 R3 K12 ["Src"]
      279 GETTABLEKS                       R38 R38 K57 ["Models"]
      281 GETTABLEKS                       R38 R38 K58 ["AssetInfo"]
      283 CALL                             R37 1 1
      284 GETIMPORT                        R38 K11 [require]
      286 GETTABLEKS                       R39 R3 K12 ["Src"]
      288 GETTABLEKS                       R39 R39 K31 ["Types"]
      290 GETTABLEKS                       R39 R39 K59 ["ConfigTypes"]
      292 CALL                             R38 1 1
      293 GETIMPORT                        R39 K11 [require]
      295 GETTABLEKS                       R40 R3 K12 ["Src"]
      297 GETTABLEKS                       R40 R40 K31 ["Types"]
      299 GETTABLEKS                       R40 R40 K60 ["CreatorTypes"]
      301 CALL                             R39 1 1
      302 GETIMPORT                        R40 K11 [require]
      304 GETTABLEKS                       R41 R3 K12 ["Src"]
      306 GETTABLEKS                       R41 R41 K31 ["Types"]
      308 GETTABLEKS                       R41 R41 K61 ["AssetLogicTypes"]
      310 CALL                             R40 1 1
      311 GETIMPORT                        R41 K11 [require]
      313 GETTABLEKS                       R42 R7 K62 ["Dash"]
      315 CALL                             R41 1 1
      316 GETIMPORT                        R42 K11 [require]
      318 GETTABLEKS                       R43 R3 K12 ["Src"]
      320 GETTABLEKS                       R43 R43 K39 ["ContextServices"]
      322 GETTABLEKS                       R43 R43 K63 ["NavigationContext"]
      324 CALL                             R42 1 1
      325 NEWCLOSURE                       R43 P0
      326 CAPTURE                          VAL R9
      327 CAPTURE                          VAL R12
      328 CAPTURE                          VAL R1
      329 CAPTURE                          VAL R16
      330 CAPTURE                          VAL R2
      331 CAPTURE                          REF R18
      332 CAPTURE                          VAL R5
      333 CAPTURE                          VAL R17
      334 CAPTURE                          VAL R20
      335 CAPTURE                          VAL R6
      336 CAPTURE                          VAL R13
      337 CAPTURE                          VAL R19
      338 CAPTURE                          VAL R4
      339 CAPTURE                          VAL R38
      340 CAPTURE                          VAL R41
      341 CAPTURE                          VAL R8
      342 CAPTURE                          VAL R23
      343 CAPTURE                          VAL R0
      344 CAPTURE                          VAL R14
      345 CAPTURE                          VAL R22
      346 CAPTURE                          VAL R21
      347 CAPTURE                          VAL R26
      348 CAPTURE                          VAL R25
      349 CAPTURE                          VAL R34
      350 CAPTURE                          VAL R15
      351 CAPTURE                          VAL R33
      352 CAPTURE                          VAL R35
      353 CAPTURE                          VAL R24
      354 CAPTURE                          VAL R36
      355 CAPTURE                          VAL R42
      356 CAPTURE                          VAL R31
      357 CAPTURE                          VAL R27
      358 CAPTURE                          VAL R28
      359 CAPTURE                          VAL R29
      360 CAPTURE                          VAL R30
      361 CAPTURE                          VAL R10
      362 CLOSEUPVALS                      R18
      363 RETURN                           R43 1
