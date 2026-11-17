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
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["insertToolPromise"]
        8 NAMECALL                         R0 R0 K5 ["insertToWorkspace"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{[1] = False}]
        2 NAMECALL                         R2 R2 K3 ["setState"]
        4 CALL                             R2 2 0
        5 JUMPIFNOTEQKS                    R1 K4 ["yes"] ; [+8]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K5 ["insertToolPromise"]
       10 NAMECALL                         R2 R2 K6 ["insertToStarterPack"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 JUMPIFNOTEQKS                    R1 K7 ["no"] ; [+7]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K5 ["insertToolPromise"]
       19 NAMECALL                         R2 R2 K8 ["insertToWorkspace"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["insertToolPromise"]
        8 NAMECALL                         R0 R0 K5 ["dismissWarningPrompt"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K6 ["state"]
       14 GETTABLEKS                       R0 R0 K7 ["scriptWarningInfo"]
       16 GETTABLEKS                       R0 R0 K8 ["insert"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["state"]
        8 GETTABLEKS                       R0 R0 K5 ["scriptWarningInfo"]
       10 GETTABLEKS                       R0 R0 K6 ["cancel"]
       12 CALL                             R0 0 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K7 ["insertToolPromise"]
       16 NAMECALL                         R0 R0 K6 ["cancel"]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K7 ["insertToolPromise"]
       22 NAMECALL                         R0 R0 K8 ["dismissWarningPrompt"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

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
       28 JUMPIFNOT                        R2 ; [+9]
       29 GETUPVAL                         R2 0
       30 DUPTABLE                         R4 K10 [{["isShowingScriptWarningMessageBox"] = True, ["scriptWarningInfo"]}]
       31 SETTABLEKS                       R0 R4 K9 ["scriptWarningInfo"]
       33 NAMECALL                         R2 R2 K11 ["setState"]
       35 CALL                             R2 2 0
       36 LOADB                            R2 1
       37 RETURN                           R2 1
       38 LOADB                            R2 0
       39 RETURN                           R2 1

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
        4 DUPTABLE                         R2 K2 [{[1] = False}]
        5 NAMECALL                         R0 R0 K3 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K4 ["insertToolPromise"]
       11 LOADB                            R2 0
       12 NAMECALL                         R0 R0 K5 ["returnResult"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R4 K2 [{[1] = False}]
        5 NAMECALL                         R2 R2 K3 ["setState"]
        7 CALL                             R2 2 0
        8 JUMPIFNOTEQKS                    R1 K4 ["yes"] ; [+3]
       10 LOADB                            R2 1
       11 JUMP                             ; [+1]
       12 LOADB                            R2 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["insertToolPromise"]
       16 MOVE                             R5 R2
       17 NAMECALL                         R3 R3 K6 ["returnResult"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R3 K3 [{[1] = True, ["grantPermissionsInfo"]}]
        5 SETTABLEKS                       R0 R3 K2 ["grantPermissionsInfo"]
        7 NAMECALL                         R1 R1 K4 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

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
       57 DUPTABLE                         R20 K36 [{"plugin", "assetId", "assetName", "assetSubTypes", "assetTypeId", "assetVersionId", "tutorialLimits", "onSuccess", "capabilities", "creator", "currentCategoryName", "categoryName", "layoutMode", "searchTerm", "assetIndex", "getIsIXPVariableEnabled"}]
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
       87 GETTABLEKS                       R21 R5 K37 ["Capabilities"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R21
       91 SETTABLEKS                       R21 R20 K29 ["capabilities"]
       93 GETUPVAL                         R22 5
       94 CALL                             R22 0 1
       95 JUMPIFNOT                        R22 ; [+3]
       96 GETTABLEKS                       R21 R0 K38 ["Creator"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R21
      100 SETTABLEKS                       R21 R20 K30 ["creator"]
      102 SETTABLEKS                       R11 R20 K31 ["currentCategoryName"]
      104 SETTABLEKS                       R11 R20 K32 ["categoryName"]
      106 SETTABLEKS                       R14 R20 K33 ["layoutMode"]
      108 SETTABLEKS                       R12 R20 K34 ["searchTerm"]
      110 SETTABLEKS                       R13 R20 K12 ["assetIndex"]
      112 GETUPVAL                         R22 6
      113 JUMPIFNOT                        R22 ; [+4]
      114 GETUPVAL                         R21 0
      115 GETTABLEKS                       R21 R21 K35 ["getIsIXPVariableEnabled"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R21
      119 SETTABLEKS                       R21 R20 K35 ["getIsIXPVariableEnabled"]
      121 GETUPVAL                         R21 0
      122 GETTABLEKS                       R21 R21 K39 ["insertToolPromise"]
      124 MOVE                             R22 R1
      125 MOVE                             R23 R17
      126 CALL                             R19 4 2
      127 CLOSEUPVALS                      R2
      128 RETURN                           R19 2

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
        6 DUPTABLE                         R1 K12 [{["hoveredAssetId"] = 0, ["isShowingToolMessageBox"] = False, ["isShowingScriptWarningMessageBox"] = False, ["previewAssetData"], ["isShowingGrantPermissionsMessageBox"] = False, ["scriptWarningInfo"] = , ["grantPermissionsInfo"] = }]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K13 ["None"]
       10 SETTABLEKS                       R2 R1 K7 ["previewAssetData"]
       12 SETTABLEKS                       R1 R0 K14 ["state"]
       14 LOADN                            R1 0
       15 SETTABLEKS                       R1 R0 K15 ["lastInsertAttemptTime"]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R1 R0 K16 ["canInsertAsset"]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K17 ["onMessageBoxClosed"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K18 ["onMessageBoxButtonClicked"]
       30 NEWCLOSURE                       R1 P3
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K19 ["onInsertToolPrompt"]
       34 NEWCLOSURE                       R1 P4
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K20 ["onScriptWarningBoxConfirmed"]
       38 NEWCLOSURE                       R1 P5
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K21 ["onScriptWarningBoxCanceled"]
       42 NEWCLOSURE                       R1 P6
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K22 ["onInsertScriptWarningPrompt"]
       46 NEWCLOSURE                       R1 P7
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K23 ["onScriptWarningBoxToggleShow"]
       50 NEWCLOSURE                       R1 P8
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R1 R0 K24 ["onPermissionsGrantClosed"]
       55 NEWCLOSURE                       R1 P9
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K25 ["onPermissionsGranted"]
       60 NEWCLOSURE                       R1 P10
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R1 R0 K26 ["onPermissionsGrantCallback"]
       65 GETUPVAL                         R1 3
       66 GETTABLEKS                       R1 R1 K27 ["new"]
       68 GETTABLEKS                       R2 R0 K19 ["onInsertToolPrompt"]
       70 GETTABLEKS                       R3 R0 K22 ["onInsertScriptWarningPrompt"]
       72 GETTABLEKS                       R4 R0 K26 ["onPermissionsGrantCallback"]
       74 CALL                             R1 3 1
       75 SETTABLEKS                       R1 R0 K28 ["insertToolPromise"]
       77 GETUPVAL                         R1 4
       78 JUMPIFNOT                        R1 ; [+5]
       79 NEWCLOSURE                       R1 P11
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U5
       82 SETTABLEKS                       R1 R0 K29 ["getIsIXPVariableEnabled"]
       84 NEWCLOSURE                       R1 P12
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          UPVAL U8
       89 CAPTURE                          UPVAL U9
       90 CAPTURE                          UPVAL U10
       91 CAPTURE                          UPVAL U4
       92 SETTABLEKS                       R1 R0 K30 ["tryInsert"]
       94 NEWCLOSURE                       R1 P13
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R1 R0 K31 ["openAssetPreview"]
       98 NEWCLOSURE                       R1 P14
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U0
      101 SETTABLEKS                       R1 R0 K32 ["closeAssetPreview"]
      103 NEWCLOSURE                       R1 P15
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U11
      106 CAPTURE                          UPVAL U12
      107 SETTABLEKS                       R1 R0 K33 ["logAssetImpression"]
      109 GETUPVAL                         R1 13
      110 CALL                             R1 0 1
      111 JUMPIFNOT                        R1 ; [+7]
      112 NEWCLOSURE                       R1 P16
      113 CAPTURE                          VAL R0
      114 CAPTURE                          UPVAL U8
      115 CAPTURE                          UPVAL U14
      116 CAPTURE                          UPVAL U15
      117 SETTABLEKS                       R1 R0 K34 ["onSearchByCreator"]
      119 RETURN                           R0 0

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
      148 JUMPIFNOT                        R16 ; [+91]
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
      219 DUPTABLE                         R20 K94 [{["Text"], ["action"] = "no"}]
      220 LOADK                            R23 K78 ["GrantAssetPermission"]
      221 LOADK                            R24 K95 ["CancelButton"]
      222 NAMECALL                         R21 R11 K77 ["getText"]
      224 CALL                             R21 3 1
      225 SETTABLEKS                       R21 R20 K68 ["Text"]
      227 DUPTABLE                         R21 K97 [{["Text"], ["action"] = "yes"}]
      228 LOADK                            R24 K78 ["GrantAssetPermission"]
      229 LOADK                            R25 K98 ["GrantButton"]
      230 NAMECALL                         R22 R11 K77 ["getText"]
      232 CALL                             R22 3 1
      233 SETTABLEKS                       R22 R21 K68 ["Text"]
      235 SETLIST                          R19 R20 2 [1]
      237 SETTABLEKS                       R19 R18 K72 ["buttons"]
      239 CALL                             R16 2 1
      240 SETTABLEKS                       R16 R15 K42 ["GrantPermissionsMessageBox"]
      242 MOVE                             R16 R5
      243 JUMPIFNOT                        R16 ; [+65]
      244 GETUPVAL                         R16 2
      245 GETTABLEKS                       R16 R16 K49 ["createElement"]
      247 GETUPVAL                         R17 7
      248 DUPTABLE                         R18 K99 [{"Name", "Title", "Text", "Icon", "onClose", "onButtonClicked", "buttons"}]
      249 GETIMPORT                        R19 K60 [string.format]
      251 LOADK                            R20 K100 ["ToolboxToolMessageBox-%s"]
      252 GETUPVAL                         R21 5
      253 NAMECALL                         R21 R21 K62 ["GenerateGUID"]
      255 CALL                             R21 1 -1
      256 CALL                             R19 -1 1
      257 SETTABLEKS                       R19 R18 K50 ["Name"]
      259 LOADK                            R21 K101 ["InsertTool"]
      260 LOADK                            R22 K102 ["DialogTitle"]
      261 NAMECALL                         R19 R11 K77 ["getText"]
      263 CALL                             R19 3 1
      264 SETTABLEKS                       R19 R18 K67 ["Title"]
      266 LOADK                            R21 K101 ["InsertTool"]
      267 LOADK                            R22 K79 ["DialogText"]
      268 NAMECALL                         R19 R11 K77 ["getText"]
      270 CALL                             R19 3 1
      271 SETTABLEKS                       R19 R18 K68 ["Text"]
      273 GETUPVAL                         R19 6
      274 GETTABLEKS                       R19 R19 K63 ["INFO_ICON"]
      276 SETTABLEKS                       R19 R18 K52 ["Icon"]
      278 GETTABLEKS                       R19 R0 K103 ["onMessageBoxClosed"]
      280 SETTABLEKS                       R19 R18 K53 ["onClose"]
      282 GETTABLEKS                       R19 R0 K104 ["onMessageBoxButtonClicked"]
      284 SETTABLEKS                       R19 R18 K71 ["onButtonClicked"]
      286 NEWTABLE                         R19 0 2
      288 DUPTABLE                         R20 K97 [{["Text"], ["action"] = "yes"}]
      289 LOADK                            R23 K105 ["Common"]
      290 LOADK                            R24 K106 ["Yes"]
      291 NAMECALL                         R21 R11 K77 ["getText"]
      293 CALL                             R21 3 1
      294 SETTABLEKS                       R21 R20 K68 ["Text"]
      296 DUPTABLE                         R21 K94 [{["Text"], ["action"] = "no"}]
      297 LOADK                            R24 K105 ["Common"]
      298 LOADK                            R25 K107 ["No"]
      299 NAMECALL                         R22 R11 K77 ["getText"]
      301 CALL                             R22 3 1
      302 SETTABLEKS                       R22 R21 K68 ["Text"]
      304 SETLIST                          R19 R20 2 [1]
      306 SETTABLEKS                       R19 R18 K72 ["buttons"]
      308 CALL                             R16 2 1
      309 SETTABLEKS                       R16 R15 K43 ["ToolMessageBox"]
      311 MOVE                             R16 R13
      312 JUMPIFNOT                        R16 ; [+39]
      313 GETUPVAL                         R16 2
      314 GETTABLEKS                       R16 R16 K49 ["createElement"]
      316 GETUPVAL                         R17 8
      317 DUPTABLE                         R18 K111 [{"assetData", "canInsertAsset", "logAssetImpression", "onAssetPreviewButtonClicked", "onClose", "onSearchByCreator", "tryInsert", "tryOpenAssetConfig"}]
      318 SETTABLEKS                       R10 R18 K108 ["assetData"]
      320 GETTABLEKS                       R19 R0 K21 ["canInsertAsset"]
      322 SETTABLEKS                       R19 R18 K21 ["canInsertAsset"]
      324 GETTABLEKS                       R19 R0 K23 ["logAssetImpression"]
      326 SETTABLEKS                       R19 R18 K23 ["logAssetImpression"]
      328 GETTABLEKS                       R19 R0 K25 ["openAssetPreview"]
      330 SETTABLEKS                       R19 R18 K109 ["onAssetPreviewButtonClicked"]
      332 GETTABLEKS                       R19 R0 K112 ["closeAssetPreview"]
      334 SETTABLEKS                       R19 R18 K53 ["onClose"]
      336 GETUPVAL                         R20 1
      337 CALL                             R20 0 1
      338 JUMPIFNOT                        R20 ; [+3]
      339 GETTABLEKS                       R19 R0 K26 ["onSearchByCreator"]
      341 JUMP                             ; [+1]
      342 LOADNIL                          R19
      343 SETTABLEKS                       R19 R18 K26 ["onSearchByCreator"]
      345 GETTABLEKS                       R19 R0 K24 ["tryInsert"]
      347 SETTABLEKS                       R19 R18 K24 ["tryInsert"]
      349 SETTABLEKS                       R4 R18 K110 ["tryOpenAssetConfig"]
      351 CALL                             R16 2 1
      352 SETTABLEKS                       R16 R15 K44 ["AssetPreview"]
      354 GETUPVAL                         R16 2
      355 GETTABLEKS                       R16 R16 K49 ["createElement"]
      357 GETUPVAL                         R17 9
      358 CALL                             R16 1 1
      359 SETTABLEKS                       R16 R15 K45 ["SubsequentDialogController"]
      361 GETUPVAL                         R16 2
      362 GETTABLEKS                       R16 R16 K49 ["createElement"]
      364 GETUPVAL                         R17 10
      365 DUPTABLE                         R18 K114 [{"AssetData", "TryInsert"}]
      366 SETTABLEKS                       R10 R18 K113 ["AssetData"]
      368 GETTABLEKS                       R19 R0 K24 ["tryInsert"]
      370 SETTABLEKS                       R19 R18 K17 ["TryInsert"]
      372 CALL                             R16 2 1
      373 SETTABLEKS                       R16 R15 K46 ["PurchaseFlowWrapper"]
      375 GETUPVAL                         R16 2
      376 GETTABLEKS                       R16 R16 K49 ["createElement"]
      378 GETUPVAL                         R17 11
      379 MOVE                             R18 R12
      380 CALL                             R16 2 1
      381 SETTABLEKS                       R16 R15 K47 ["Contents"]
      383 CALL                             R14 1 -1
      384 RETURN                           R14 -1

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
       35 CAPTURE                          UPVAL U15
       36 SETTABLEKS                       R2 R1 K9 ["init"]
       38 DUPCLOSURE                       R2 K10 [PROTO_21]
       39 SETTABLEKS                       R2 R1 K11 ["willUnmount"]
       41 DUPCLOSURE                       R2 K12 [PROTO_22]
       42 CAPTURE                          UPVAL U0
       43 SETTABLEKS                       R2 R1 K13 ["didUpdate"]
       45 NEWCLOSURE                       R2 P3
       46 CAPTURE                          UPVAL U16
       47 CAPTURE                          UPVAL U13
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U15
       50 CAPTURE                          UPVAL U17
       51 CAPTURE                          UPVAL U18
       52 CAPTURE                          UPVAL U19
       53 CAPTURE                          UPVAL U20
       54 CAPTURE                          UPVAL U21
       55 CAPTURE                          UPVAL U22
       56 CAPTURE                          UPVAL U23
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R2 R1 K14 ["render"]
       60 GETUPVAL                         R2 24
       61 DUPTABLE                         R3 K22 [{"_AssetAnalytics", "_Localization", "_Plugin", "_Settings", "_IXP", "_Network", "_NavigationContext"}]
       62 GETUPVAL                         R4 25
       63 SETTABLEKS                       R4 R3 K15 ["_AssetAnalytics"]
       65 GETUPVAL                         R4 26
       66 GETTABLEKS                       R4 R4 K23 ["Localization"]
       68 SETTABLEKS                       R4 R3 K16 ["_Localization"]
       70 GETUPVAL                         R4 26
       71 GETTABLEKS                       R4 R4 K24 ["Plugin"]
       73 SETTABLEKS                       R4 R3 K17 ["_Plugin"]
       75 GETUPVAL                         R4 27
       76 SETTABLEKS                       R4 R3 K18 ["_Settings"]
       78 GETUPVAL                         R4 28
       79 SETTABLEKS                       R4 R3 K19 ["_IXP"]
       81 GETUPVAL                         R4 29
       82 SETTABLEKS                       R4 R3 K20 ["_Network"]
       84 GETUPVAL                         R4 30
       85 SETTABLEKS                       R4 R3 K21 ["_NavigationContext"]
       87 CALL                             R2 1 1
       88 MOVE                             R3 R1
       89 CALL                             R2 1 1
       90 MOVE                             R1 R2
       91 DUPCLOSURE                       R2 K25 [PROTO_24]
       92 CAPTURE                          UPVAL U8
       93 DUPCLOSURE                       R3 K26 [PROTO_30]
       94 CAPTURE                          UPVAL U31
       95 CAPTURE                          UPVAL U32
       96 CAPTURE                          UPVAL U33
       97 CAPTURE                          UPVAL U34
       98 CAPTURE                          UPVAL U35
       99 GETUPVAL                         R4 36
      100 GETTABLEKS                       R4 R4 K27 ["connect"]
      102 MOVE                             R5 R2
      103 MOVE                             R6 R3
      104 CALL                             R4 2 1
      105 MOVE                             R5 R1
      106 CALL                             R4 1 -1
      107 RETURN                           R4 -1

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
       60 GETIMPORT                        R7 K11 [require]
       62 GETTABLEKS                       R8 R3 K12 ["Src"]
       64 GETTABLEKS                       R8 R8 K13 ["Util"]
       66 GETTABLEKS                       R8 R8 K14 ["SharedFlags"]
       68 GETTABLEKS                       R8 R8 K18 ["getFFlagToolboxDoNotSandboxCreatedAssets"]
       70 CALL                             R7 1 1
       71 GETTABLEKS                       R8 R3 K19 ["Packages"]
       73 GETIMPORT                        R9 K11 [require]
       75 GETTABLEKS                       R10 R8 K20 ["Cryo"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K11 [require]
       80 GETTABLEKS                       R11 R8 K21 ["Roact"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K11 [require]
       85 GETTABLEKS                       R12 R8 K22 ["RoactRodux"]
       87 CALL                             R11 1 1
       88 GETTABLEKS                       R12 R3 K12 ["Src"]
       90 GETTABLEKS                       R12 R12 K13 ["Util"]
       92 GETIMPORT                        R13 K11 [require]
       94 GETTABLEKS                       R14 R12 K23 ["Constants"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K11 [require]
       99 GETTABLEKS                       R15 R12 K24 ["DebugFlags"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K11 [require]
      104 GETTABLEKS                       R16 R12 K25 ["Images"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K11 [require]
      109 GETTABLEKS                       R17 R12 K26 ["Analytics"]
      111 GETTABLEKS                       R17 R17 K27 ["AssetAnalyticsContextItem"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K11 [require]
      116 GETTABLEKS                       R18 R12 K28 ["InsertToolPromise"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K11 [require]
      121 GETTABLEKS                       R19 R12 K29 ["InsertAsset"]
      123 CALL                             R18 1 1
      124 LOADNIL                          R19
      125 JUMPIFNOT                        R2 ; [+6]
      126 GETIMPORT                        R20 K11 [require]
      128 GETTABLEKS                       R21 R12 K30 ["getIsIXPVariableEnabled"]
      130 CALL                             R20 1 1
      131 MOVE                             R19 R20
      132 GETIMPORT                        R20 K11 [require]
      134 GETTABLEKS                       R21 R12 K31 ["getIsWithinBounds"]
      136 CALL                             R20 1 1
      137 GETIMPORT                        R21 K11 [require]
      139 GETTABLEKS                       R22 R3 K12 ["Src"]
      141 GETTABLEKS                       R22 R22 K32 ["Types"]
      143 GETTABLEKS                       R22 R22 K33 ["Category"]
      145 CALL                             R21 1 1
      146 GETIMPORT                        R22 K11 [require]
      148 GETTABLEKS                       R23 R3 K12 ["Src"]
      150 GETTABLEKS                       R23 R23 K34 ["Components"]
      152 GETTABLEKS                       R23 R23 K35 ["Asset"]
      154 GETTABLEKS                       R23 R23 K36 ["Preview"]
      156 GETTABLEKS                       R23 R23 K37 ["AssetPreviewWrapper"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K11 [require]
      161 GETTABLEKS                       R24 R3 K12 ["Src"]
      163 GETTABLEKS                       R24 R24 K34 ["Components"]
      165 GETTABLEKS                       R24 R24 K38 ["MessageBox"]
      167 GETTABLEKS                       R24 R24 K38 ["MessageBox"]
      169 CALL                             R23 1 1
      170 GETIMPORT                        R24 K11 [require]
      172 GETTABLEKS                       R25 R3 K12 ["Src"]
      174 GETTABLEKS                       R25 R25 K34 ["Components"]
      176 GETTABLEKS                       R25 R25 K39 ["ScriptConfirmationDialog"]
      178 CALL                             R24 1 1
      179 GETIMPORT                        R25 K11 [require]
      181 GETTABLEKS                       R26 R3 K12 ["Src"]
      183 GETTABLEKS                       R26 R26 K40 ["ContextServices"]
      185 GETTABLEKS                       R26 R26 K41 ["IXPContext"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K11 [require]
      190 GETTABLEKS                       R27 R3 K12 ["Src"]
      192 GETTABLEKS                       R27 R27 K34 ["Components"]
      194 GETTABLEKS                       R27 R27 K42 ["PurchaseFlow"]
      196 GETTABLEKS                       R27 R27 K43 ["PurchaseFlowWrapper"]
      198 CALL                             R26 1 1
      199 GETIMPORT                        R27 K11 [require]
      201 GETTABLEKS                       R28 R3 K12 ["Src"]
      203 GETTABLEKS                       R28 R28 K34 ["Components"]
      205 GETTABLEKS                       R28 R28 K42 ["PurchaseFlow"]
      207 GETTABLEKS                       R28 R28 K44 ["SubsequentDialogController"]
      209 CALL                             R27 1 1
      210 GETIMPORT                        R28 K11 [require]
      212 GETTABLEKS                       R29 R3 K12 ["Src"]
      214 GETTABLEKS                       R29 R29 K45 ["Networking"]
      216 GETTABLEKS                       R29 R29 K46 ["Requests"]
      218 GETTABLEKS                       R29 R29 K47 ["PostInsertAssetRequest"]
      220 CALL                             R28 1 1
      221 GETIMPORT                        R29 K11 [require]
      223 GETTABLEKS                       R30 R3 K12 ["Src"]
      225 GETTABLEKS                       R30 R30 K48 ["Actions"]
      227 GETTABLEKS                       R30 R30 K49 ["SetMostRecentAssetInsertTime"]
      229 CALL                             R29 1 1
      230 GETIMPORT                        R30 K11 [require]
      232 GETTABLEKS                       R31 R3 K12 ["Src"]
      234 GETTABLEKS                       R31 R31 K50 ["Thunks"]
      236 GETTABLEKS                       R31 R31 K51 ["GetPageInfoAnalyticsContextInfo"]
      238 CALL                             R30 1 1
      239 GETIMPORT                        R31 K11 [require]
      241 GETTABLEKS                       R32 R3 K12 ["Src"]
      243 GETTABLEKS                       R32 R32 K45 ["Networking"]
      245 GETTABLEKS                       R32 R32 K46 ["Requests"]
      247 GETTABLEKS                       R32 R32 K52 ["SearchWithOptions"]
      249 CALL                             R31 1 1
      250 GETIMPORT                        R32 K11 [require]
      252 GETTABLEKS                       R33 R3 K12 ["Src"]
      254 GETTABLEKS                       R33 R33 K48 ["Actions"]
      256 GETTABLEKS                       R33 R33 K53 ["SetAssetPreview"]
      258 CALL                             R32 1 1
      259 GETIMPORT                        R33 K11 [require]
      261 GETTABLEKS                       R34 R8 K54 ["Framework"]
      263 CALL                             R33 1 1
      264 GETTABLEKS                       R34 R33 K40 ["ContextServices"]
      266 GETTABLEKS                       R35 R34 K55 ["withContext"]
      268 GETIMPORT                        R36 K11 [require]
      270 GETTABLEKS                       R37 R3 K12 ["Src"]
      272 GETTABLEKS                       R37 R37 K40 ["ContextServices"]
      274 GETTABLEKS                       R37 R37 K56 ["Settings"]
      276 CALL                             R36 1 1
      277 GETIMPORT                        R37 K11 [require]
      279 GETTABLEKS                       R38 R3 K12 ["Src"]
      281 GETTABLEKS                       R38 R38 K40 ["ContextServices"]
      283 GETTABLEKS                       R38 R38 K57 ["NetworkContext"]
      285 CALL                             R37 1 1
      286 GETIMPORT                        R38 K11 [require]
      288 GETTABLEKS                       R39 R3 K12 ["Src"]
      290 GETTABLEKS                       R39 R39 K58 ["Models"]
      292 GETTABLEKS                       R39 R39 K59 ["AssetInfo"]
      294 CALL                             R38 1 1
      295 GETIMPORT                        R39 K11 [require]
      297 GETTABLEKS                       R40 R3 K12 ["Src"]
      299 GETTABLEKS                       R40 R40 K32 ["Types"]
      301 GETTABLEKS                       R40 R40 K60 ["ConfigTypes"]
      303 CALL                             R39 1 1
      304 GETIMPORT                        R40 K11 [require]
      306 GETTABLEKS                       R41 R3 K12 ["Src"]
      308 GETTABLEKS                       R41 R41 K32 ["Types"]
      310 GETTABLEKS                       R41 R41 K61 ["CreatorTypes"]
      312 CALL                             R40 1 1
      313 GETIMPORT                        R41 K11 [require]
      315 GETTABLEKS                       R42 R3 K12 ["Src"]
      317 GETTABLEKS                       R42 R42 K32 ["Types"]
      319 GETTABLEKS                       R42 R42 K62 ["AssetLogicTypes"]
      321 CALL                             R41 1 1
      322 GETIMPORT                        R42 K11 [require]
      324 GETTABLEKS                       R43 R8 K63 ["Dash"]
      326 CALL                             R42 1 1
      327 GETIMPORT                        R43 K11 [require]
      329 GETTABLEKS                       R44 R3 K12 ["Src"]
      331 GETTABLEKS                       R44 R44 K40 ["ContextServices"]
      333 GETTABLEKS                       R44 R44 K64 ["NavigationContext"]
      335 CALL                             R43 1 1
      336 NEWCLOSURE                       R44 P0
      337 CAPTURE                          VAL R10
      338 CAPTURE                          VAL R13
      339 CAPTURE                          VAL R1
      340 CAPTURE                          VAL R17
      341 CAPTURE                          VAL R2
      342 CAPTURE                          REF R19
      343 CAPTURE                          VAL R5
      344 CAPTURE                          VAL R18
      345 CAPTURE                          VAL R21
      346 CAPTURE                          VAL R6
      347 CAPTURE                          VAL R7
      348 CAPTURE                          VAL R14
      349 CAPTURE                          VAL R20
      350 CAPTURE                          VAL R4
      351 CAPTURE                          VAL R39
      352 CAPTURE                          VAL R42
      353 CAPTURE                          VAL R9
      354 CAPTURE                          VAL R24
      355 CAPTURE                          VAL R0
      356 CAPTURE                          VAL R15
      357 CAPTURE                          VAL R23
      358 CAPTURE                          VAL R22
      359 CAPTURE                          VAL R27
      360 CAPTURE                          VAL R26
      361 CAPTURE                          VAL R35
      362 CAPTURE                          VAL R16
      363 CAPTURE                          VAL R34
      364 CAPTURE                          VAL R36
      365 CAPTURE                          VAL R25
      366 CAPTURE                          VAL R37
      367 CAPTURE                          VAL R43
      368 CAPTURE                          VAL R32
      369 CAPTURE                          VAL R28
      370 CAPTURE                          VAL R29
      371 CAPTURE                          VAL R30
      372 CAPTURE                          VAL R31
      373 CAPTURE                          VAL R11
      374 CLOSEUPVALS                      R19
      375 RETURN                           R44 1
