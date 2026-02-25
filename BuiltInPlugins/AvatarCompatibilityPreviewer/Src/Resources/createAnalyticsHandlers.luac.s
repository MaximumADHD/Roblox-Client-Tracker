PROTO_0:
        0 DUPTABLE                         R1 K3 [{"paletteKey", "source", "serializedValue"}]
        1 GETTABLEKS                       R3 R0 K4 ["palette"]
        3 GETTABLEKS                       R2 R3 K5 ["Key"]
        5 SETTABLEKS                       R2 R1 K0 ["paletteKey"]
        7 GETTABLEKS                       R3 R0 K6 ["item"]
        9 GETTABLEKS                       R2 R3 K1 ["source"]
       11 SETTABLEKS                       R2 R1 K1 ["source"]
       13 GETTABLEKS                       R4 R0 K6 ["item"]
       15 GETTABLEKS                       R3 R4 K1 ["source"]
       17 JUMPIFNOTEQKS                    R3 K7 ["builtin"] ; [+31]
       19 GETTABLEKS                       R4 R0 K4 ["palette"]
       21 GETTABLEKS                       R3 R4 K8 ["Serializer"]
       23 JUMPIFNOT                        R3 ; [+16]
       24 GETTABLEKS                       R5 R0 K4 ["palette"]
       26 GETTABLEKS                       R4 R5 K8 ["Serializer"]
       28 GETTABLEKS                       R3 R4 K9 ["serialize"]
       30 GETTABLEKS                       R5 R0 K6 ["item"]
       32 GETTABLEKS                       R4 R5 K10 ["builtinItem"]
       34 CALL                             R3 1 -1
       35 FASTCALL                         TOSTRING ; [+2]
       36 GETIMPORT                        R2 K12 [tostring]
       38 CALL                             R2 -1 1
       39 JUMP                             ; [+10]
       40 GETTABLEKS                       R4 R0 K6 ["item"]
       42 GETTABLEKS                       R3 R4 K10 ["builtinItem"]
       44 FASTCALL1                        TOSTRING R3 ; [+2]
       45 GETIMPORT                        R2 K12 [tostring]
       47 CALL                             R2 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R2
       50 SETTABLEKS                       R2 R1 K2 ["serializedValue"]
       52 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["join"]
        3 DUPTABLE                         R3 K4 [{"studioSid", "clientId", "placeId"}]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R4 R4 K5 ["GetSessionId"]
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K1 ["studioSid"]
       10 GETUPVAL                         R4 1
       11 NAMECALL                         R4 R4 K6 ["GetClientId"]
       13 CALL                             R4 1 1
       14 SETTABLEKS                       R4 R3 K2 ["clientId"]
       16 GETIMPORT                        R5 K8 [game]
       18 GETTABLEKS                       R4 R5 K9 ["PlaceId"]
       20 SETTABLEKS                       R4 R3 K3 ["placeId"]
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 1
       25 LOADK                            R5 K10 ["studio"]
       26 LOADK                            R6 K11 ["AvatarCompatibilityPreviewer"]
       27 MOVE                             R7 R0
       28 MOVE                             R8 R2
       29 NAMECALL                         R3 R3 K12 ["SendEventDeferred"]
       31 CALL                             R3 5 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ReportCounter"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ReportStats"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 NAMECALL                         R2 R2 K0 ["ReportInfluxSeries"]
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["AddUserItems"]
        2 DUPTABLE                         R5 K3 [{"itemsSelected", "itemsSucceeded"}]
        3 SETTABLEKS                       R1 R5 K1 ["itemsSelected"]
        5 SETTABLEKS                       R2 R5 K2 ["itemsSucceeded"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["AutoSetupFailure"]
        2 DUPTABLE                         R6 K4 [{"assetUrl", "assetHash", "timeToComplete"}]
        3 SETTABLEKS                       R2 R6 K1 ["assetUrl"]
        5 SETTABLEKS                       R3 R6 K2 ["assetHash"]
        7 SETTABLEKS                       R1 R6 K3 ["timeToComplete"]
        9 CALL                             R4 2 0
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R6 2
       12 NAMECALL                         R4 R4 K5 ["LogCounter"]
       14 CALL                             R4 2 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["AutoSetupJobInitialized"]
        2 DUPTABLE                         R5 K3 [{"clientJobId", "jobId"}]
        3 SETTABLEKS                       R1 R5 K1 ["clientJobId"]
        5 SETTABLEKS                       R2 R5 K2 ["jobId"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+31]
        3 JUMPIFEQKNIL                     R1 ; [+30]
        5 GETUPVAL                         R4 1
        6 LOADK                            R5 K0 ["AutoSetupRequested"]
        7 DUPTABLE                         R6 K8 [{"clientJobId", "assetHash", "bodyCount", "layeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
        8 SETTABLEKS                       R2 R6 K1 ["clientJobId"]
       10 SETTABLEKS                       R3 R6 K2 ["assetHash"]
       12 GETTABLEKS                       R7 R1 K3 ["bodyCount"]
       14 SETTABLEKS                       R7 R6 K3 ["bodyCount"]
       16 GETTABLEKS                       R7 R1 K4 ["layeredCount"]
       18 SETTABLEKS                       R7 R6 K4 ["layeredCount"]
       20 GETTABLEKS                       R7 R1 K5 ["rigidCount"]
       22 SETTABLEKS                       R7 R6 K5 ["rigidCount"]
       24 GETTABLEKS                       R7 R1 K6 ["avatarCount"]
       26 SETTABLEKS                       R7 R6 K6 ["avatarCount"]
       28 GETTABLEKS                       R7 R1 K7 ["unselectedCount"]
       30 SETTABLEKS                       R7 R6 K7 ["unselectedCount"]
       32 CALL                             R4 2 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R4 1
       35 LOADK                            R5 K0 ["AutoSetupRequested"]
       36 NEWTABLE                         R6 0 0
       38 CALL                             R4 2 0
       39 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["AutoSetupOptions"]
        2 DUPTABLE                         R5 K7 [{"clientJobId", "setupType", "decimationOptions", "r15Plus", "alignFrontAngle", "enableAdditionalHeadProcessing"}]
        3 SETTABLEKS                       R2 R5 K1 ["clientJobId"]
        5 GETTABLEKS                       R6 R1 K8 ["SetupType"]
        7 SETTABLEKS                       R6 R5 K2 ["setupType"]
        9 GETTABLEKS                       R6 R1 K9 ["DecimationOptions"]
       11 SETTABLEKS                       R6 R5 K3 ["decimationOptions"]
       13 GETTABLEKS                       R6 R1 K10 ["CustomHumanoid"]
       15 SETTABLEKS                       R6 R5 K4 ["r15Plus"]
       17 GETTABLEKS                       R6 R1 K11 ["AlignFrontAngle"]
       19 SETTABLEKS                       R6 R5 K5 ["alignFrontAngle"]
       21 GETTABLEKS                       R6 R1 K12 ["EnableAdditionalHeadProcessing"]
       23 SETTABLEKS                       R6 R5 K6 ["enableAdditionalHeadProcessing"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["AutoSetupCancelled"]
        2 DUPTABLE                         R7 K5 [{"assetUrl", "assetHash", "timeToComplete", "cancelReason"}]
        3 SETTABLEKS                       R2 R7 K1 ["assetUrl"]
        5 SETTABLEKS                       R3 R7 K2 ["assetHash"]
        7 SETTABLEKS                       R1 R7 K3 ["timeToComplete"]
        9 SETTABLEKS                       R4 R7 K4 ["cancelReason"]
       11 CALL                             R5 2 0
       12 GETUPVAL                         R5 1
       13 GETUPVAL                         R7 2
       14 NAMECALL                         R5 R5 K6 ["LogCounter"]
       16 CALL                             R5 2 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["AutoSetupClothingOnlyFinish"]
        2 DUPTABLE                         R5 K7 [{"clientJobId", "setupType", "decimationOptions", "r15Plus", "alignFrontAngle", "enableAdditionalHeadProcessing"}]
        3 SETTABLEKS                       R2 R5 K1 ["clientJobId"]
        5 GETTABLEKS                       R6 R1 K8 ["SetupType"]
        7 SETTABLEKS                       R6 R5 K2 ["setupType"]
        9 GETTABLEKS                       R6 R1 K9 ["DecimationOptions"]
       11 SETTABLEKS                       R6 R5 K3 ["decimationOptions"]
       13 GETTABLEKS                       R6 R1 K10 ["CustomHumanoid"]
       15 SETTABLEKS                       R6 R5 K4 ["r15Plus"]
       17 GETTABLEKS                       R6 R1 K11 ["AlignFrontAngle"]
       19 SETTABLEKS                       R6 R5 K5 ["alignFrontAngle"]
       21 GETTABLEKS                       R6 R1 K12 ["EnableAdditionalHeadProcessing"]
       23 SETTABLEKS                       R6 R5 K6 ["enableAdditionalHeadProcessing"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["AutoSetupFinish"]
        2 DUPTABLE                         R6 K4 [{"assetUrl", "assetHash", "timeToComplete"}]
        3 SETTABLEKS                       R2 R6 K1 ["assetUrl"]
        5 SETTABLEKS                       R3 R6 K2 ["assetHash"]
        7 SETTABLEKS                       R1 R6 K3 ["timeToComplete"]
        9 CALL                             R4 2 0
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R6 2
       12 NAMECALL                         R4 R4 K5 ["LogCounter"]
       14 CALL                             R4 2 0
       15 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["AutoSetupAssetsGenerated"]
        2 DUPTABLE                         R5 K3 [{"inputAssetId", "outputAssetIds"}]
        3 SETTABLEKS                       R1 R5 K1 ["inputAssetId"]
        5 GETIMPORT                        R6 K6 [table.concat]
        7 MOVE                             R7 R2
        8 LOADK                            R8 K7 [","]
        9 CALL                             R6 2 1
       10 SETTABLEKS                       R6 R5 K2 ["outputAssetIds"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["BundlesMetadataError"]
        2 DUPTABLE                         R4 K2 [{"problem"}]
        3 SETTABLEKS                       R1 R4 K1 ["problem"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["ChangedLayers"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["EquipItem"]
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 3
        8 NAMECALL                         R2 R2 K1 ["LogCounter"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AutoSetupScreenOpen"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AutoSetupOptionsOpen"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["EditingToolOpen"]
        2 DUPTABLE                         R4 K2 [{"editingTool"}]
        3 SETTABLEKS                       R1 R4 K1 ["editingTool"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["PaletteOpen"]
        2 DUPTABLE                         R4 K2 [{"paletteKey"}]
        3 SETTABLEKS                       R1 R4 K1 ["paletteKey"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["PluginOpen"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["TabOpen"]
        2 DUPTABLE                         R4 K2 [{"tabKey"}]
        3 SETTABLEKS                       R1 R4 K1 ["tabKey"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Publish"]
        2 DUPTABLE                         R4 K2 [{"isAutoSetupped"}]
        3 SETTABLEKS                       R1 R4 K1 ["isAutoSetupped"]
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R4 2
        8 NAMECALL                         R2 R2 K3 ["LogCounter"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["SelectionChanged"]
        2 DUPTABLE                         R4 K4 [{"isSelected", "avatar", "autoSetupTarget"}]
        3 MOVE                             R5 R1
        4 JUMPIFNOT                        R5 ; [+2]
        5 GETTABLEKS                       R5 R1 K1 ["isSelected"]
        7 SETTABLEKS                       R5 R4 K1 ["isSelected"]
        9 MOVE                             R5 R1
       10 JUMPIFNOT                        R5 ; [+6]
       11 GETTABLEKS                       R6 R1 K2 ["avatar"]
       13 JUMPIFNOTEQKNIL                  R6 ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 SETTABLEKS                       R5 R4 K2 ["avatar"]
       19 MOVE                             R5 R1
       20 JUMPIFNOT                        R5 ; [+6]
       21 GETTABLEKS                       R6 R1 K3 ["autoSetupTarget"]
       23 JUMPIFNOTEQKNIL                  R6 ; [+2]
       25 LOADB                            R5 0 +1
       26 LOADB                            R5 1
       27 SETTABLEKS                       R5 R4 K3 ["autoSetupTarget"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["SelectScreenChoice"]
        2 DUPTABLE                         R4 K2 [{"choice"}]
        3 SETTABLEKS                       R1 R4 K1 ["choice"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["AutoSetupSurvey"]
        2 DUPTABLE                         R6 K7 [{"userId", "rating", "message", "problems", "inputAssetId", "outputAssetIds"}]
        3 GETUPVAL                         R7 1
        4 NAMECALL                         R7 R7 K8 ["GetUserId"]
        6 CALL                             R7 1 1
        7 SETTABLEKS                       R7 R6 K1 ["userId"]
        9 GETTABLEKS                       R7 R1 K2 ["rating"]
       11 SETTABLEKS                       R7 R6 K2 ["rating"]
       13 GETTABLEKS                       R7 R1 K3 ["message"]
       15 SETTABLEKS                       R7 R6 K3 ["message"]
       17 GETIMPORT                        R7 K11 [table.concat]
       19 GETUPVAL                         R9 2
       20 GETTABLEKS                       R8 R9 K12 ["keys"]
       22 GETTABLEKS                       R9 R1 K4 ["problems"]
       24 CALL                             R8 1 1
       25 LOADK                            R9 K13 [","]
       26 CALL                             R7 2 1
       27 SETTABLEKS                       R7 R6 K4 ["problems"]
       29 SETTABLEKS                       R3 R6 K5 ["inputAssetId"]
       31 GETIMPORT                        R7 K11 [table.concat]
       33 MOVE                             R8 R2
       34 LOADK                            R9 K13 [","]
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K6 ["outputAssetIds"]
       38 CALL                             R4 2 0
       39 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["SetStage"]
        2 DUPTABLE                         R4 K2 [{"stageKey"}]
        3 SETTABLEKS                       R1 R4 K1 ["stageKey"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["TestInExperience"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["UnequipItem"]
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AutoSetupPassedValidation"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["ReportCounter"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AutoSetupFailedValidation"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["ReportCounter"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AutoSetupValidationDuration"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["ReportStats"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AutoSetupValidationErrorCount"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["ReportStats"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_34:
        0 DUPTABLE                         R3 K2 [{"inputAssetId", "errorText"}]
        1 SETTABLEKS                       R1 R3 K0 ["inputAssetId"]
        3 SETTABLEKS                       R2 R3 K1 ["errorText"]
        5 GETUPVAL                         R4 0
        6 LOADK                            R6 K3 ["AutoSetupValidationError"]
        7 MOVE                             R7 R3
        8 GETUPVAL                         R8 1
        9 NAMECALL                         R4 R4 K4 ["ReportInfluxSeries"]
       11 CALL                             R4 4 0
       12 RETURN                           R0 0

PROTO_35:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R3 P2
        6 CAPTURE                          VAL R0
        7 NEWCLOSURE                       R4 P3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 DUPTABLE                         R5 K30 [{"addUserItems", "autoSetupFailure", "autoSetupJobInitialized", "autoSetupRequested", "autoSetupOptions", "autoSetupCancelled", "autoSetupClothingOnlyFinish", "autoSetupFinish", "autoSetupAssetsGenerated", "bundlesMetadataError", "changedLayers", "equipItem", "openAutoSetupScreen", "openAutoSetupOptions", "openEditingTool", "openPalette", "openPlugin", "openTab", "publish", "selectionChanged", "selectScreenChoice", "sendAutoSetupSurvey", "setStage", "testInExperience", "unequipItem", "autoSetupPassedValidation", "autoSetupFailedValidation", "autoSetupValidationDuration", "autoSetupValidationErrorCount", "autoSetupValidationError"}]
       11 NEWCLOSURE                       R6 P4
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R6 R5 K0 ["addUserItems"]
       15 NEWCLOSURE                       R6 P5
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R6 R5 K1 ["autoSetupFailure"]
       21 NEWCLOSURE                       R6 P6
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R6 R5 K2 ["autoSetupJobInitialized"]
       25 NEWCLOSURE                       R6 P7
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R6 R5 K3 ["autoSetupRequested"]
       30 NEWCLOSURE                       R6 P8
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K4 ["autoSetupOptions"]
       34 NEWCLOSURE                       R6 P9
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U5
       38 SETTABLEKS                       R6 R5 K5 ["autoSetupCancelled"]
       40 NEWCLOSURE                       R6 P10
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R6 R5 K6 ["autoSetupClothingOnlyFinish"]
       44 NEWCLOSURE                       R6 P11
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U6
       48 SETTABLEKS                       R6 R5 K7 ["autoSetupFinish"]
       50 NEWCLOSURE                       R6 P12
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R6 R5 K8 ["autoSetupAssetsGenerated"]
       54 NEWCLOSURE                       R6 P13
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R6 R5 K9 ["bundlesMetadataError"]
       58 NEWCLOSURE                       R6 P14
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R6 R5 K10 ["changedLayers"]
       62 NEWCLOSURE                       R6 P15
       63 CAPTURE                          VAL R1
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          UPVAL U8
       67 SETTABLEKS                       R6 R5 K11 ["equipItem"]
       69 NEWCLOSURE                       R6 P16
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R6 R5 K12 ["openAutoSetupScreen"]
       73 NEWCLOSURE                       R6 P17
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R6 R5 K13 ["openAutoSetupOptions"]
       77 NEWCLOSURE                       R6 P18
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R6 R5 K14 ["openEditingTool"]
       81 NEWCLOSURE                       R6 P19
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R6 R5 K15 ["openPalette"]
       85 NEWCLOSURE                       R6 P20
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R6 R5 K16 ["openPlugin"]
       89 NEWCLOSURE                       R6 P21
       90 CAPTURE                          VAL R1
       91 SETTABLEKS                       R6 R5 K17 ["openTab"]
       93 NEWCLOSURE                       R6 P22
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          UPVAL U9
       97 SETTABLEKS                       R6 R5 K18 ["publish"]
       99 NEWCLOSURE                       R6 P23
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R6 R5 K19 ["selectionChanged"]
      103 NEWCLOSURE                       R6 P24
      104 CAPTURE                          VAL R1
      105 SETTABLEKS                       R6 R5 K20 ["selectScreenChoice"]
      107 NEWCLOSURE                       R6 P25
      108 CAPTURE                          VAL R1
      109 CAPTURE                          UPVAL U10
      110 CAPTURE                          UPVAL U0
      111 SETTABLEKS                       R6 R5 K21 ["sendAutoSetupSurvey"]
      113 NEWCLOSURE                       R6 P26
      114 CAPTURE                          VAL R1
      115 SETTABLEKS                       R6 R5 K22 ["setStage"]
      117 NEWCLOSURE                       R6 P27
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R6 R5 K23 ["testInExperience"]
      121 NEWCLOSURE                       R6 P28
      122 CAPTURE                          VAL R1
      123 CAPTURE                          UPVAL U7
      124 SETTABLEKS                       R6 R5 K24 ["unequipItem"]
      126 NEWCLOSURE                       R6 P29
      127 CAPTURE                          VAL R0
      128 SETTABLEKS                       R6 R5 K25 ["autoSetupPassedValidation"]
      130 NEWCLOSURE                       R6 P30
      131 CAPTURE                          VAL R0
      132 SETTABLEKS                       R6 R5 K26 ["autoSetupFailedValidation"]
      134 NEWCLOSURE                       R6 P31
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R6 R5 K27 ["autoSetupValidationDuration"]
      138 NEWCLOSURE                       R6 P32
      139 CAPTURE                          VAL R0
      140 SETTABLEKS                       R6 R5 K28 ["autoSetupValidationErrorCount"]
      142 NEWCLOSURE                       R6 P33
      143 CAPTURE                          VAL R0
      144 CAPTURE                          UPVAL U1
      145 SETTABLEKS                       R6 R5 K29 ["autoSetupValidationError"]
      147 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["StudioService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["TelemetryService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Packages"]
       25 GETTABLEKS                       R4 R5 K11 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Src"]
       32 GETTABLEKS                       R5 R6 K13 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [game]
       37 LOADK                            R7 K14 ["AvatarPreviewerInfluxSeriesThrottlingPercentage"]
       38 LOADN                            R8 0
       39 NAMECALL                         R5 R5 K15 ["DefineFastInt"]
       41 CALL                             R5 3 1
       42 GETIMPORT                        R6 K9 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Src"]
       46 GETTABLEKS                       R8 R9 K16 ["Flags"]
       48 GETTABLEKS                       R7 R8 K17 ["getFFlagAvatarPreviewerAssetClassificationTelemetry"]
       50 CALL                             R6 1 1
       51 DUPTABLE                         R7 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
       52 LOADK                            R8 K24 ["SBT_AvatarAutoSetupSucceeded"]
       53 SETTABLEKS                       R8 R7 K18 ["eventName"]
       55 NEWTABLE                         R8 0 3
       57 LOADN                            R9 232
       58 LOADN                            R10 11
       59 LOADN                            R11 21
       60 SETLIST                          R8 R9 3 [1]
       62 SETTABLEKS                       R8 R7 K19 ["lastUpdated"]
       64 LOADK                            R8 K25 ["Avatar auto setup succeeded."]
       65 SETTABLEKS                       R8 R7 K20 ["description"]
       67 LOADK                            R8 K26 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
       68 SETTABLEKS                       R8 R7 K21 ["links"]
       70 NEWTABLE                         R8 0 1
       72 LOADK                            R9 K27 ["RobloxTelemetryCounter"]
       73 SETLIST                          R8 R9 1 [1]
       75 SETTABLEKS                       R8 R7 K22 ["backends"]
       77 DUPTABLE                         R8 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
       78 LOADK                            R9 K28 ["SBT_AvatarAutoSetupFailed"]
       79 SETTABLEKS                       R9 R8 K18 ["eventName"]
       81 NEWTABLE                         R9 0 3
       83 LOADN                            R10 233
       84 LOADN                            R11 2
       85 LOADN                            R12 13
       86 SETLIST                          R9 R10 3 [1]
       88 SETTABLEKS                       R9 R8 K19 ["lastUpdated"]
       90 LOADK                            R9 K29 ["Avatar auto setup failed."]
       91 SETTABLEKS                       R9 R8 K20 ["description"]
       93 LOADK                            R9 K26 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
       94 SETTABLEKS                       R9 R8 K21 ["links"]
       96 NEWTABLE                         R9 0 1
       98 LOADK                            R10 K27 ["RobloxTelemetryCounter"]
       99 SETLIST                          R9 R10 1 [1]
      101 SETTABLEKS                       R9 R8 K22 ["backends"]
      103 DUPTABLE                         R9 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      104 LOADK                            R10 K30 ["SBT_AvatarAutoSetupCanceled"]
      105 SETTABLEKS                       R10 R9 K18 ["eventName"]
      107 NEWTABLE                         R10 0 3
      109 LOADN                            R11 233
      110 LOADN                            R12 2
      111 LOADN                            R13 13
      112 SETLIST                          R10 R11 3 [1]
      114 SETTABLEKS                       R10 R9 K19 ["lastUpdated"]
      116 LOADK                            R10 K31 ["Avatar auto setup canceled."]
      117 SETTABLEKS                       R10 R9 K20 ["description"]
      119 LOADK                            R10 K26 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
      120 SETTABLEKS                       R10 R9 K21 ["links"]
      122 NEWTABLE                         R10 0 1
      124 LOADK                            R11 K27 ["RobloxTelemetryCounter"]
      125 SETLIST                          R10 R11 1 [1]
      127 SETTABLEKS                       R10 R9 K22 ["backends"]
      129 DUPTABLE                         R10 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      130 LOADK                            R11 K32 ["SBT_AvatarPreviewerItemEquipped"]
      131 SETTABLEKS                       R11 R10 K18 ["eventName"]
      133 NEWTABLE                         R11 0 3
      135 LOADN                            R12 232
      136 LOADN                            R13 11
      137 LOADN                            R14 21
      138 SETLIST                          R11 R12 3 [1]
      140 SETTABLEKS                       R11 R10 K19 ["lastUpdated"]
      142 LOADK                            R11 K33 ["Avatar previewer equipped an avatar item for testing."]
      143 SETTABLEKS                       R11 R10 K20 ["description"]
      145 LOADK                            R11 K26 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
      146 SETTABLEKS                       R11 R10 K21 ["links"]
      148 NEWTABLE                         R11 0 1
      150 LOADK                            R12 K27 ["RobloxTelemetryCounter"]
      151 SETLIST                          R11 R12 1 [1]
      153 SETTABLEKS                       R11 R10 K22 ["backends"]
      155 DUPTABLE                         R11 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      156 LOADK                            R12 K34 ["SBT_AvatarPreviewerPublished"]
      157 SETTABLEKS                       R12 R11 K18 ["eventName"]
      159 NEWTABLE                         R12 0 3
      161 LOADN                            R13 232
      162 LOADN                            R14 11
      163 LOADN                            R15 21
      164 SETLIST                          R12 R13 3 [1]
      166 SETTABLEKS                       R12 R11 K19 ["lastUpdated"]
      168 LOADK                            R12 K35 ["Avatar previewer published an asset to the marketplace."]
      169 SETTABLEKS                       R12 R11 K20 ["description"]
      171 LOADK                            R12 K26 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
      172 SETTABLEKS                       R12 R11 K21 ["links"]
      174 NEWTABLE                         R12 0 1
      176 LOADK                            R13 K27 ["RobloxTelemetryCounter"]
      177 SETLIST                          R12 R13 1 [1]
      179 SETTABLEKS                       R12 R11 K22 ["backends"]
      181 DUPCLOSURE                       R12 K36 [PROTO_0]
      182 DUPCLOSURE                       R13 K37 [PROTO_35]
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R5
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R1
      194 RETURN                           R13 1
