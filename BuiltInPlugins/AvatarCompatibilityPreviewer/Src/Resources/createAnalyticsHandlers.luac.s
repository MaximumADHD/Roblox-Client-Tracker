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
        0 JUMPIFEQKNIL                     R1 ; [+34]
        2 GETUPVAL                         R4 0
        3 LOADK                            R5 K0 ["AutoSetupRequested"]
        4 DUPTABLE                         R6 K9 [{"clientJobId", "assetHash", "bodyCount", "layeredCount", "eyeLayeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
        5 SETTABLEKS                       R2 R6 K1 ["clientJobId"]
        7 SETTABLEKS                       R3 R6 K2 ["assetHash"]
        9 GETTABLEKS                       R7 R1 K3 ["bodyCount"]
       11 SETTABLEKS                       R7 R6 K3 ["bodyCount"]
       13 GETTABLEKS                       R7 R1 K4 ["layeredCount"]
       15 SETTABLEKS                       R7 R6 K4 ["layeredCount"]
       17 GETTABLEKS                       R7 R1 K5 ["eyeLayeredCount"]
       19 SETTABLEKS                       R7 R6 K5 ["eyeLayeredCount"]
       21 GETTABLEKS                       R7 R1 K6 ["rigidCount"]
       23 SETTABLEKS                       R7 R6 K6 ["rigidCount"]
       25 GETTABLEKS                       R7 R1 K7 ["avatarCount"]
       27 SETTABLEKS                       R7 R6 K7 ["avatarCount"]
       29 GETTABLEKS                       R7 R1 K8 ["unselectedCount"]
       31 SETTABLEKS                       R7 R6 K8 ["unselectedCount"]
       33 CALL                             R4 2 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R4 0
       36 LOADK                            R5 K0 ["AutoSetupRequested"]
       37 NEWTABLE                         R6 0 0
       39 CALL                             R4 2 0
       40 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["AutoSetupOptions"]
        2 DUPTABLE                         R5 K8 [{"clientJobId", "setupType", "decimationOptions", "r15Plus", "alignFrontAngle", "enableAdditionalHeadProcessing", "decalToDynamicHead"}]
        3 SETTABLEKS                       R2 R5 K1 ["clientJobId"]
        5 GETTABLEKS                       R6 R1 K9 ["SetupType"]
        7 SETTABLEKS                       R6 R5 K2 ["setupType"]
        9 GETTABLEKS                       R6 R1 K10 ["DecimationOptions"]
       11 SETTABLEKS                       R6 R5 K3 ["decimationOptions"]
       13 GETTABLEKS                       R6 R1 K11 ["CustomHumanoid"]
       15 SETTABLEKS                       R6 R5 K4 ["r15Plus"]
       17 GETTABLEKS                       R6 R1 K12 ["AlignFrontAngle"]
       19 SETTABLEKS                       R6 R5 K5 ["alignFrontAngle"]
       21 GETTABLEKS                       R6 R1 K13 ["EnableAdditionalHeadProcessing"]
       23 SETTABLEKS                       R6 R5 K6 ["enableAdditionalHeadProcessing"]
       25 GETTABLEKS                       R6 R1 K14 ["DecalToDynamicHead"]
       27 SETTABLEKS                       R6 R5 K7 ["decalToDynamicHead"]
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

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
        2 DUPTABLE                         R5 K8 [{"clientJobId", "setupType", "decimationOptions", "r15Plus", "alignFrontAngle", "enableAdditionalHeadProcessing", "decalToDynamicHead"}]
        3 SETTABLEKS                       R2 R5 K1 ["clientJobId"]
        5 GETTABLEKS                       R6 R1 K9 ["SetupType"]
        7 SETTABLEKS                       R6 R5 K2 ["setupType"]
        9 GETTABLEKS                       R6 R1 K10 ["DecimationOptions"]
       11 SETTABLEKS                       R6 R5 K3 ["decimationOptions"]
       13 GETTABLEKS                       R6 R1 K11 ["CustomHumanoid"]
       15 SETTABLEKS                       R6 R5 K4 ["r15Plus"]
       17 GETTABLEKS                       R6 R1 K12 ["AlignFrontAngle"]
       19 SETTABLEKS                       R6 R5 K5 ["alignFrontAngle"]
       21 GETTABLEKS                       R6 R1 K13 ["EnableAdditionalHeadProcessing"]
       23 SETTABLEKS                       R6 R5 K6 ["enableAdditionalHeadProcessing"]
       25 GETTABLEKS                       R6 R1 K14 ["DecalToDynamicHead"]
       27 SETTABLEKS                       R6 R5 K7 ["decalToDynamicHead"]
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_46:
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
       10 NEWTABLE                         R5 64 0
       12 NEWCLOSURE                       R6 P4
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R6 R5 K0 ["addUserItems"]
       16 NEWCLOSURE                       R6 P5
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 SETTABLEKS                       R6 R5 K1 ["autoSetupFailure"]
       22 NEWCLOSURE                       R6 P6
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R6 R5 K2 ["autoSetupJobInitialized"]
       26 NEWCLOSURE                       R6 P7
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R6 R5 K3 ["autoSetupRequested"]
       30 NEWCLOSURE                       R6 P8
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K4 ["autoSetupOptions"]
       34 NEWCLOSURE                       R6 P9
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U4
       38 SETTABLEKS                       R6 R5 K5 ["autoSetupCancelled"]
       40 NEWCLOSURE                       R6 P10
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R6 R5 K6 ["autoSetupClothingOnlyFinish"]
       44 NEWCLOSURE                       R6 P11
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U5
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
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          UPVAL U7
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
       96 CAPTURE                          UPVAL U8
       97 SETTABLEKS                       R6 R5 K18 ["publish"]
       99 NEWCLOSURE                       R6 P23
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R6 R5 K19 ["selectionChanged"]
      103 NEWCLOSURE                       R6 P24
      104 CAPTURE                          VAL R1
      105 SETTABLEKS                       R6 R5 K20 ["selectScreenChoice"]
      107 NEWCLOSURE                       R6 P25
      108 CAPTURE                          VAL R1
      109 CAPTURE                          UPVAL U9
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
      123 CAPTURE                          UPVAL U6
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
      147 GETUPVAL                         R7 10
      148 CALL                             R7 0 1
      149 JUMPIFNOT                        R7 ; [+4]
      150 DUPCLOSURE                       R6 K30 [PROTO_35]
      151 CAPTURE                          UPVAL U2
      152 CAPTURE                          UPVAL U11
      153 JUMP                             ; [+1]
      154 LOADNIL                          R6
      155 SETTABLEKS                       R6 R5 K31 ["marketplaceGetItemsError"]
      157 GETUPVAL                         R7 10
      158 CALL                             R7 0 1
      159 JUMPIFNOT                        R7 ; [+4]
      160 DUPCLOSURE                       R6 K32 [PROTO_36]
      161 CAPTURE                          UPVAL U2
      162 CAPTURE                          UPVAL U12
      163 JUMP                             ; [+1]
      164 LOADNIL                          R6
      165 SETTABLEKS                       R6 R5 K33 ["marketplaceItemsAddedToPlugin"]
      167 GETUPVAL                         R7 10
      168 CALL                             R7 0 1
      169 JUMPIFNOT                        R7 ; [+4]
      170 DUPCLOSURE                       R6 K34 [PROTO_37]
      171 CAPTURE                          UPVAL U2
      172 CAPTURE                          UPVAL U13
      173 JUMP                             ; [+1]
      174 LOADNIL                          R6
      175 SETTABLEKS                       R6 R5 K35 ["marketplaceLookAccessFailure"]
      177 GETUPVAL                         R7 10
      178 CALL                             R7 0 1
      179 JUMPIFNOT                        R7 ; [+4]
      180 DUPCLOSURE                       R6 K36 [PROTO_38]
      181 CAPTURE                          UPVAL U2
      182 CAPTURE                          UPVAL U14
      183 JUMP                             ; [+1]
      184 LOADNIL                          R6
      185 SETTABLEKS                       R6 R5 K37 ["marketplaceManageableGroupsFailure"]
      187 GETUPVAL                         R7 10
      188 CALL                             R7 0 1
      189 JUMPIFNOT                        R7 ; [+4]
      190 DUPCLOSURE                       R6 K38 [PROTO_39]
      191 CAPTURE                          UPVAL U2
      192 CAPTURE                          UPVAL U15
      193 JUMP                             ; [+1]
      194 LOADNIL                          R6
      195 SETTABLEKS                       R6 R5 K39 ["marketplaceLookPreviewSuccess"]
      197 GETUPVAL                         R7 10
      198 CALL                             R7 0 1
      199 JUMPIFNOT                        R7 ; [+4]
      200 DUPCLOSURE                       R6 K40 [PROTO_40]
      201 CAPTURE                          UPVAL U2
      202 CAPTURE                          UPVAL U16
      203 JUMP                             ; [+1]
      204 LOADNIL                          R6
      205 SETTABLEKS                       R6 R5 K41 ["marketplaceLookValidationSuccess"]
      207 GETUPVAL                         R7 10
      208 CALL                             R7 0 1
      209 JUMPIFNOT                        R7 ; [+4]
      210 DUPCLOSURE                       R6 K42 [PROTO_41]
      211 CAPTURE                          UPVAL U2
      212 CAPTURE                          UPVAL U17
      213 JUMP                             ; [+1]
      214 LOADNIL                          R6
      215 SETTABLEKS                       R6 R5 K43 ["marketplaceLookCreationSuccess"]
      217 GETUPVAL                         R7 10
      218 CALL                             R7 0 1
      219 JUMPIFNOT                        R7 ; [+4]
      220 DUPCLOSURE                       R6 K44 [PROTO_42]
      221 CAPTURE                          UPVAL U2
      222 CAPTURE                          UPVAL U18
      223 JUMP                             ; [+1]
      224 LOADNIL                          R6
      225 SETTABLEKS                       R6 R5 K45 ["marketplaceLookPreviewError"]
      227 GETUPVAL                         R7 10
      228 CALL                             R7 0 1
      229 JUMPIFNOT                        R7 ; [+4]
      230 DUPCLOSURE                       R6 K46 [PROTO_43]
      231 CAPTURE                          UPVAL U2
      232 CAPTURE                          UPVAL U19
      233 JUMP                             ; [+1]
      234 LOADNIL                          R6
      235 SETTABLEKS                       R6 R5 K47 ["marketplaceLookValidationError"]
      237 GETUPVAL                         R7 10
      238 CALL                             R7 0 1
      239 JUMPIFNOT                        R7 ; [+4]
      240 DUPCLOSURE                       R6 K48 [PROTO_44]
      241 CAPTURE                          UPVAL U2
      242 CAPTURE                          UPVAL U20
      243 JUMP                             ; [+1]
      244 LOADNIL                          R6
      245 SETTABLEKS                       R6 R5 K49 ["marketplaceLookCreationError"]
      247 GETUPVAL                         R7 10
      248 CALL                             R7 0 1
      249 JUMPIFNOT                        R7 ; [+4]
      250 DUPCLOSURE                       R6 K50 [PROTO_45]
      251 CAPTURE                          UPVAL U2
      252 CAPTURE                          UPVAL U21
      253 JUMP                             ; [+1]
      254 LOADNIL                          R6
      255 SETTABLEKS                       R6 R5 K51 ["marketplaceLookCreatorHubLink"]
      257 RETURN                           R5 1

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
       48 GETTABLEKS                       R7 R8 K17 ["getFFlagAvatarPreviewerLookComposer"]
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
      181 DUPTABLE                         R12 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      182 LOADK                            R13 K36 ["MKTUJ_LookComposerGetItemsError"]
      183 SETTABLEKS                       R13 R12 K18 ["eventName"]
      185 NEWTABLE                         R13 0 3
      187 LOADN                            R14 234
      188 LOADN                            R15 3
      189 LOADN                            R16 10
      190 SETLIST                          R13 R14 3 [1]
      192 SETTABLEKS                       R13 R12 K19 ["lastUpdated"]
      194 LOADK                            R13 K37 ["getMarketplaceItems returned >= 1 error."]
      195 SETTABLEKS                       R13 R12 K20 ["description"]
      197 LOADK                            R13 K38 [""]
      198 SETTABLEKS                       R13 R12 K21 ["links"]
      200 NEWTABLE                         R13 0 1
      202 LOADK                            R14 K27 ["RobloxTelemetryCounter"]
      203 SETLIST                          R13 R14 1 [1]
      205 SETTABLEKS                       R13 R12 K22 ["backends"]
      207 DUPTABLE                         R13 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      208 LOADK                            R14 K39 ["MKTUJ_LookComposerItemsAddedToPlugin"]
      209 SETTABLEKS                       R14 R13 K18 ["eventName"]
      211 NEWTABLE                         R14 0 3
      213 LOADN                            R15 234
      214 LOADN                            R16 3
      215 LOADN                            R17 10
      216 SETLIST                          R14 R15 3 [1]
      218 SETTABLEKS                       R14 R13 K19 ["lastUpdated"]
      220 LOADK                            R14 K40 ["Marketplace items imported into auto setup plugin."]
      221 SETTABLEKS                       R14 R13 K20 ["description"]
      223 LOADK                            R14 K38 [""]
      224 SETTABLEKS                       R14 R13 K21 ["links"]
      226 NEWTABLE                         R14 0 1
      228 LOADK                            R15 K27 ["RobloxTelemetryCounter"]
      229 SETLIST                          R14 R15 1 [1]
      231 SETTABLEKS                       R14 R13 K22 ["backends"]
      233 DUPTABLE                         R14 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      234 LOADK                            R15 K41 ["MKTUJ_LookComposerFeatureAccessFailure"]
      235 SETTABLEKS                       R15 R14 K18 ["eventName"]
      237 NEWTABLE                         R15 0 3
      239 LOADN                            R16 234
      240 LOADN                            R17 3
      241 LOADN                            R18 10
      242 SETLIST                          R15 R16 3 [1]
      244 SETTABLEKS                       R15 R14 K19 ["lastUpdated"]
      246 LOADK                            R15 K42 ["Marketplace look feature access failure."]
      247 SETTABLEKS                       R15 R14 K20 ["description"]
      249 LOADK                            R15 K38 [""]
      250 SETTABLEKS                       R15 R14 K21 ["links"]
      252 NEWTABLE                         R15 0 1
      254 LOADK                            R16 K27 ["RobloxTelemetryCounter"]
      255 SETLIST                          R15 R16 1 [1]
      257 SETTABLEKS                       R15 R14 K22 ["backends"]
      259 DUPTABLE                         R15 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      260 LOADK                            R16 K43 ["MKTUJ_LookComposerManageableGroupsFailure"]
      261 SETTABLEKS                       R16 R15 K18 ["eventName"]
      263 NEWTABLE                         R16 0 3
      265 LOADN                            R17 234
      266 LOADN                            R18 3
      267 LOADN                            R19 10
      268 SETLIST                          R16 R17 3 [1]
      270 SETTABLEKS                       R16 R15 K19 ["lastUpdated"]
      272 LOADK                            R16 K44 ["Marketplace manageable groups failure."]
      273 SETTABLEKS                       R16 R15 K20 ["description"]
      275 LOADK                            R16 K38 [""]
      276 SETTABLEKS                       R16 R15 K21 ["links"]
      278 NEWTABLE                         R16 0 1
      280 LOADK                            R17 K27 ["RobloxTelemetryCounter"]
      281 SETLIST                          R16 R17 1 [1]
      283 SETTABLEKS                       R16 R15 K22 ["backends"]
      285 DUPTABLE                         R16 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      286 LOADK                            R17 K45 ["MKTUJ_LookComposerPreviewSuccess"]
      287 SETTABLEKS                       R17 R16 K18 ["eventName"]
      289 NEWTABLE                         R17 0 3
      291 LOADN                            R18 234
      292 LOADN                            R19 3
      293 LOADN                            R20 10
      294 SETLIST                          R17 R18 3 [1]
      296 SETTABLEKS                       R17 R16 K19 ["lastUpdated"]
      298 LOADK                            R17 K46 ["Marketplace look composer dialog preview success."]
      299 SETTABLEKS                       R17 R16 K20 ["description"]
      301 LOADK                            R17 K38 [""]
      302 SETTABLEKS                       R17 R16 K21 ["links"]
      304 NEWTABLE                         R17 0 1
      306 LOADK                            R18 K27 ["RobloxTelemetryCounter"]
      307 SETLIST                          R17 R18 1 [1]
      309 SETTABLEKS                       R17 R16 K22 ["backends"]
      311 DUPTABLE                         R17 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      312 LOADK                            R18 K47 ["MKTUJ_LookComposerValidationSuccess"]
      313 SETTABLEKS                       R18 R17 K18 ["eventName"]
      315 NEWTABLE                         R18 0 3
      317 LOADN                            R19 234
      318 LOADN                            R20 3
      319 LOADN                            R21 10
      320 SETLIST                          R18 R19 3 [1]
      322 SETTABLEKS                       R18 R17 K19 ["lastUpdated"]
      324 LOADK                            R18 K48 ["Marketplace look composer dialog validation success."]
      325 SETTABLEKS                       R18 R17 K20 ["description"]
      327 LOADK                            R18 K38 [""]
      328 SETTABLEKS                       R18 R17 K21 ["links"]
      330 NEWTABLE                         R18 0 1
      332 LOADK                            R19 K27 ["RobloxTelemetryCounter"]
      333 SETLIST                          R18 R19 1 [1]
      335 SETTABLEKS                       R18 R17 K22 ["backends"]
      337 DUPTABLE                         R18 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      338 LOADK                            R19 K49 ["MKTUJ_LookComposerCreationSuccess"]
      339 SETTABLEKS                       R19 R18 K18 ["eventName"]
      341 NEWTABLE                         R19 0 3
      343 LOADN                            R20 234
      344 LOADN                            R21 3
      345 LOADN                            R22 10
      346 SETLIST                          R19 R20 3 [1]
      348 SETTABLEKS                       R19 R18 K19 ["lastUpdated"]
      350 LOADK                            R19 K50 ["Marketplace look composer dialog creation success."]
      351 SETTABLEKS                       R19 R18 K20 ["description"]
      353 LOADK                            R19 K38 [""]
      354 SETTABLEKS                       R19 R18 K21 ["links"]
      356 NEWTABLE                         R19 0 1
      358 LOADK                            R20 K27 ["RobloxTelemetryCounter"]
      359 SETLIST                          R19 R20 1 [1]
      361 SETTABLEKS                       R19 R18 K22 ["backends"]
      363 DUPTABLE                         R19 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      364 LOADK                            R20 K51 ["MKTUJ_LookComposerPreviewError"]
      365 SETTABLEKS                       R20 R19 K18 ["eventName"]
      367 NEWTABLE                         R20 0 3
      369 LOADN                            R21 234
      370 LOADN                            R22 3
      371 LOADN                            R23 10
      372 SETLIST                          R20 R21 3 [1]
      374 SETTABLEKS                       R20 R19 K19 ["lastUpdated"]
      376 LOADK                            R20 K52 ["Marketplace look composer dialog preview error."]
      377 SETTABLEKS                       R20 R19 K20 ["description"]
      379 LOADK                            R20 K38 [""]
      380 SETTABLEKS                       R20 R19 K21 ["links"]
      382 NEWTABLE                         R20 0 1
      384 LOADK                            R21 K27 ["RobloxTelemetryCounter"]
      385 SETLIST                          R20 R21 1 [1]
      387 SETTABLEKS                       R20 R19 K22 ["backends"]
      389 DUPTABLE                         R20 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      390 LOADK                            R21 K53 ["MKTUJ_LookComposerValidationError"]
      391 SETTABLEKS                       R21 R20 K18 ["eventName"]
      393 NEWTABLE                         R21 0 3
      395 LOADN                            R22 234
      396 LOADN                            R23 3
      397 LOADN                            R24 10
      398 SETLIST                          R21 R22 3 [1]
      400 SETTABLEKS                       R21 R20 K19 ["lastUpdated"]
      402 LOADK                            R21 K54 ["Marketplace look composer dialog validation error."]
      403 SETTABLEKS                       R21 R20 K20 ["description"]
      405 LOADK                            R21 K38 [""]
      406 SETTABLEKS                       R21 R20 K21 ["links"]
      408 NEWTABLE                         R21 0 1
      410 LOADK                            R22 K27 ["RobloxTelemetryCounter"]
      411 SETLIST                          R21 R22 1 [1]
      413 SETTABLEKS                       R21 R20 K22 ["backends"]
      415 DUPTABLE                         R21 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      416 LOADK                            R22 K55 ["MKTUJ_LookComposerCreationError"]
      417 SETTABLEKS                       R22 R21 K18 ["eventName"]
      419 NEWTABLE                         R22 0 3
      421 LOADN                            R23 234
      422 LOADN                            R24 3
      423 LOADN                            R25 10
      424 SETLIST                          R22 R23 3 [1]
      426 SETTABLEKS                       R22 R21 K19 ["lastUpdated"]
      428 LOADK                            R22 K56 ["Marketplace look composer dialog creation error."]
      429 SETTABLEKS                       R22 R21 K20 ["description"]
      431 LOADK                            R22 K38 [""]
      432 SETTABLEKS                       R22 R21 K21 ["links"]
      434 NEWTABLE                         R22 0 1
      436 LOADK                            R23 K27 ["RobloxTelemetryCounter"]
      437 SETLIST                          R22 R23 1 [1]
      439 SETTABLEKS                       R22 R21 K22 ["backends"]
      441 DUPTABLE                         R22 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      442 LOADK                            R23 K57 ["MKTUJ_LookComposerCreatorHubLink"]
      443 SETTABLEKS                       R23 R22 K18 ["eventName"]
      445 NEWTABLE                         R23 0 3
      447 LOADN                            R24 234
      448 LOADN                            R25 3
      449 LOADN                            R26 10
      450 SETLIST                          R23 R24 3 [1]
      452 SETTABLEKS                       R23 R22 K19 ["lastUpdated"]
      454 LOADK                            R23 K58 ["Marketplace look creator hub link opened."]
      455 SETTABLEKS                       R23 R22 K20 ["description"]
      457 LOADK                            R23 K38 [""]
      458 SETTABLEKS                       R23 R22 K21 ["links"]
      460 NEWTABLE                         R23 0 1
      462 LOADK                            R24 K27 ["RobloxTelemetryCounter"]
      463 SETLIST                          R23 R24 1 [1]
      465 SETTABLEKS                       R23 R22 K22 ["backends"]
      467 DUPCLOSURE                       R23 K59 [PROTO_0]
      468 DUPCLOSURE                       R24 K60 [PROTO_46]
      469 CAPTURE                          VAL R3
      470 CAPTURE                          VAL R5
      471 CAPTURE                          VAL R2
      472 CAPTURE                          VAL R8
      473 CAPTURE                          VAL R9
      474 CAPTURE                          VAL R7
      475 CAPTURE                          VAL R23
      476 CAPTURE                          VAL R10
      477 CAPTURE                          VAL R11
      478 CAPTURE                          VAL R1
      479 CAPTURE                          VAL R6
      480 CAPTURE                          VAL R12
      481 CAPTURE                          VAL R13
      482 CAPTURE                          VAL R14
      483 CAPTURE                          VAL R15
      484 CAPTURE                          VAL R16
      485 CAPTURE                          VAL R17
      486 CAPTURE                          VAL R18
      487 CAPTURE                          VAL R19
      488 CAPTURE                          VAL R20
      489 CAPTURE                          VAL R21
      490 CAPTURE                          VAL R22
      491 RETURN                           R24 1
