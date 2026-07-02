PROTO_0:
        0 DUPTABLE                         R1 K3 [{"paletteKey", "source", "serializedValue"}]
        1 GETTABLEKS                       R2 R0 K4 ["palette"]
        3 GETTABLEKS                       R2 R2 K5 ["Key"]
        5 SETTABLEKS                       R2 R1 K0 ["paletteKey"]
        7 GETTABLEKS                       R2 R0 K6 ["item"]
        9 GETTABLEKS                       R2 R2 K1 ["source"]
       11 SETTABLEKS                       R2 R1 K1 ["source"]
       13 GETTABLEKS                       R3 R0 K6 ["item"]
       15 GETTABLEKS                       R3 R3 K1 ["source"]
       17 JUMPIFNOTEQKS                    R3 K7 ["builtin"] ; [+31]
       19 GETTABLEKS                       R3 R0 K4 ["palette"]
       21 GETTABLEKS                       R3 R3 K8 ["Serializer"]
       23 JUMPIFNOT                        R3 ; [+16]
       24 GETTABLEKS                       R3 R0 K4 ["palette"]
       26 GETTABLEKS                       R3 R3 K8 ["Serializer"]
       28 GETTABLEKS                       R3 R3 K9 ["serialize"]
       30 GETTABLEKS                       R4 R0 K6 ["item"]
       32 GETTABLEKS                       R4 R4 K10 ["builtinItem"]
       34 CALL                             R3 1 -1
       35 FASTCALL                         TOSTRING ; [+2]
       36 GETIMPORT                        R2 K12 [tostring]
       38 CALL                             R2 -1 1
       39 JUMP                             ; [+10]
       40 GETTABLEKS                       R3 R0 K6 ["item"]
       42 GETTABLEKS                       R3 R3 K10 ["builtinItem"]
       44 FASTCALL1                        TOSTRING R3 ; [+2]
       45 GETIMPORT                        R2 K12 [tostring]
       47 CALL                             R2 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R2
       50 SETTABLEKS                       R2 R1 K2 ["serializedValue"]
       52 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 DUPTABLE                         R3 K4 [{"studioSid", "clientId", "placeId"}]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R4 R4 K5 ["GetSessionId"]
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K1 ["studioSid"]
       10 GETUPVAL                         R4 1
       11 NAMECALL                         R4 R4 K6 ["GetClientId"]
       13 CALL                             R4 1 1
       14 SETTABLEKS                       R4 R3 K2 ["clientId"]
       16 GETIMPORT                        R4 K8 [game]
       18 GETTABLEKS                       R4 R4 K9 ["PlaceId"]
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
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["AutoSetupAssetsGenerated"]
        2 DUPTABLE                         R6 K4 [{"inputAssetId", "outputAssetIds", "jobId"}]
        3 SETTABLEKS                       R1 R6 K1 ["inputAssetId"]
        5 GETIMPORT                        R7 K7 [table.concat]
        7 MOVE                             R8 R2
        8 LOADK                            R9 K8 [","]
        9 CALL                             R7 2 1
       10 SETTABLEKS                       R7 R6 K2 ["outputAssetIds"]
       12 GETUPVAL                         R8 1
       13 CALL                             R8 0 1
       14 JUMPIFNOT                        R8 ; [+2]
       15 ORK                              R7 R3 K9 [""]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R7
       18 SETTABLEKS                       R7 R6 K3 ["jobId"]
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

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
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K12 ["keys"]
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
       52 CAPTURE                          UPVAL U6
       53 SETTABLEKS                       R6 R5 K8 ["autoSetupAssetsGenerated"]
       55 NEWCLOSURE                       R6 P13
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R6 R5 K9 ["bundlesMetadataError"]
       59 NEWCLOSURE                       R6 P14
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R6 R5 K10 ["changedLayers"]
       63 NEWCLOSURE                       R6 P15
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U7
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          UPVAL U8
       68 SETTABLEKS                       R6 R5 K11 ["equipItem"]
       70 NEWCLOSURE                       R6 P16
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R6 R5 K12 ["openAutoSetupScreen"]
       74 NEWCLOSURE                       R6 P17
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R6 R5 K13 ["openAutoSetupOptions"]
       78 NEWCLOSURE                       R6 P18
       79 CAPTURE                          VAL R1
       80 SETTABLEKS                       R6 R5 K14 ["openEditingTool"]
       82 NEWCLOSURE                       R6 P19
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R6 R5 K15 ["openPalette"]
       86 NEWCLOSURE                       R6 P20
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R6 R5 K16 ["openPlugin"]
       90 NEWCLOSURE                       R6 P21
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R6 R5 K17 ["openTab"]
       94 NEWCLOSURE                       R6 P22
       95 CAPTURE                          VAL R1
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          UPVAL U9
       98 SETTABLEKS                       R6 R5 K18 ["publish"]
      100 NEWCLOSURE                       R6 P23
      101 CAPTURE                          VAL R1
      102 SETTABLEKS                       R6 R5 K19 ["selectionChanged"]
      104 NEWCLOSURE                       R6 P24
      105 CAPTURE                          VAL R1
      106 SETTABLEKS                       R6 R5 K20 ["selectScreenChoice"]
      108 NEWCLOSURE                       R6 P25
      109 CAPTURE                          VAL R1
      110 CAPTURE                          UPVAL U10
      111 CAPTURE                          UPVAL U0
      112 SETTABLEKS                       R6 R5 K21 ["sendAutoSetupSurvey"]
      114 NEWCLOSURE                       R6 P26
      115 CAPTURE                          VAL R1
      116 SETTABLEKS                       R6 R5 K22 ["setStage"]
      118 NEWCLOSURE                       R6 P27
      119 CAPTURE                          VAL R1
      120 SETTABLEKS                       R6 R5 K23 ["testInExperience"]
      122 NEWCLOSURE                       R6 P28
      123 CAPTURE                          VAL R1
      124 CAPTURE                          UPVAL U7
      125 SETTABLEKS                       R6 R5 K24 ["unequipItem"]
      127 NEWCLOSURE                       R6 P29
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R6 R5 K25 ["autoSetupPassedValidation"]
      131 NEWCLOSURE                       R6 P30
      132 CAPTURE                          VAL R0
      133 SETTABLEKS                       R6 R5 K26 ["autoSetupFailedValidation"]
      135 NEWCLOSURE                       R6 P31
      136 CAPTURE                          VAL R0
      137 SETTABLEKS                       R6 R5 K27 ["autoSetupValidationDuration"]
      139 NEWCLOSURE                       R6 P32
      140 CAPTURE                          VAL R0
      141 SETTABLEKS                       R6 R5 K28 ["autoSetupValidationErrorCount"]
      143 NEWCLOSURE                       R6 P33
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U1
      146 SETTABLEKS                       R6 R5 K29 ["autoSetupValidationError"]
      148 GETUPVAL                         R7 11
      149 CALL                             R7 0 1
      150 JUMPIFNOT                        R7 ; [+4]
      151 DUPCLOSURE                       R6 K30 [PROTO_35]
      152 CAPTURE                          UPVAL U2
      153 CAPTURE                          UPVAL U12
      154 JUMP                             ; [+1]
      155 LOADNIL                          R6
      156 SETTABLEKS                       R6 R5 K31 ["marketplaceGetItemsError"]
      158 GETUPVAL                         R7 11
      159 CALL                             R7 0 1
      160 JUMPIFNOT                        R7 ; [+4]
      161 DUPCLOSURE                       R6 K32 [PROTO_36]
      162 CAPTURE                          UPVAL U2
      163 CAPTURE                          UPVAL U13
      164 JUMP                             ; [+1]
      165 LOADNIL                          R6
      166 SETTABLEKS                       R6 R5 K33 ["marketplaceItemsAddedToPlugin"]
      168 GETUPVAL                         R7 11
      169 CALL                             R7 0 1
      170 JUMPIFNOT                        R7 ; [+4]
      171 DUPCLOSURE                       R6 K34 [PROTO_37]
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          UPVAL U14
      174 JUMP                             ; [+1]
      175 LOADNIL                          R6
      176 SETTABLEKS                       R6 R5 K35 ["marketplaceLookAccessFailure"]
      178 GETUPVAL                         R7 11
      179 CALL                             R7 0 1
      180 JUMPIFNOT                        R7 ; [+4]
      181 DUPCLOSURE                       R6 K36 [PROTO_38]
      182 CAPTURE                          UPVAL U2
      183 CAPTURE                          UPVAL U15
      184 JUMP                             ; [+1]
      185 LOADNIL                          R6
      186 SETTABLEKS                       R6 R5 K37 ["marketplaceManageableGroupsFailure"]
      188 GETUPVAL                         R7 11
      189 CALL                             R7 0 1
      190 JUMPIFNOT                        R7 ; [+4]
      191 DUPCLOSURE                       R6 K38 [PROTO_39]
      192 CAPTURE                          UPVAL U2
      193 CAPTURE                          UPVAL U16
      194 JUMP                             ; [+1]
      195 LOADNIL                          R6
      196 SETTABLEKS                       R6 R5 K39 ["marketplaceLookPreviewSuccess"]
      198 GETUPVAL                         R7 11
      199 CALL                             R7 0 1
      200 JUMPIFNOT                        R7 ; [+4]
      201 DUPCLOSURE                       R6 K40 [PROTO_40]
      202 CAPTURE                          UPVAL U2
      203 CAPTURE                          UPVAL U17
      204 JUMP                             ; [+1]
      205 LOADNIL                          R6
      206 SETTABLEKS                       R6 R5 K41 ["marketplaceLookValidationSuccess"]
      208 GETUPVAL                         R7 11
      209 CALL                             R7 0 1
      210 JUMPIFNOT                        R7 ; [+4]
      211 DUPCLOSURE                       R6 K42 [PROTO_41]
      212 CAPTURE                          UPVAL U2
      213 CAPTURE                          UPVAL U18
      214 JUMP                             ; [+1]
      215 LOADNIL                          R6
      216 SETTABLEKS                       R6 R5 K43 ["marketplaceLookCreationSuccess"]
      218 GETUPVAL                         R7 11
      219 CALL                             R7 0 1
      220 JUMPIFNOT                        R7 ; [+4]
      221 DUPCLOSURE                       R6 K44 [PROTO_42]
      222 CAPTURE                          UPVAL U2
      223 CAPTURE                          UPVAL U19
      224 JUMP                             ; [+1]
      225 LOADNIL                          R6
      226 SETTABLEKS                       R6 R5 K45 ["marketplaceLookPreviewError"]
      228 GETUPVAL                         R7 11
      229 CALL                             R7 0 1
      230 JUMPIFNOT                        R7 ; [+4]
      231 DUPCLOSURE                       R6 K46 [PROTO_43]
      232 CAPTURE                          UPVAL U2
      233 CAPTURE                          UPVAL U20
      234 JUMP                             ; [+1]
      235 LOADNIL                          R6
      236 SETTABLEKS                       R6 R5 K47 ["marketplaceLookValidationError"]
      238 GETUPVAL                         R7 11
      239 CALL                             R7 0 1
      240 JUMPIFNOT                        R7 ; [+4]
      241 DUPCLOSURE                       R6 K48 [PROTO_44]
      242 CAPTURE                          UPVAL U2
      243 CAPTURE                          UPVAL U21
      244 JUMP                             ; [+1]
      245 LOADNIL                          R6
      246 SETTABLEKS                       R6 R5 K49 ["marketplaceLookCreationError"]
      248 GETUPVAL                         R7 11
      249 CALL                             R7 0 1
      250 JUMPIFNOT                        R7 ; [+4]
      251 DUPCLOSURE                       R6 K50 [PROTO_45]
      252 CAPTURE                          UPVAL U2
      253 CAPTURE                          UPVAL U22
      254 JUMP                             ; [+1]
      255 LOADNIL                          R6
      256 SETTABLEKS                       R6 R5 K51 ["marketplaceLookCreatorHubLink"]
      258 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["StudioService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["TelemetryService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Src"]
       32 GETTABLEKS                       R5 R5 K13 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [game]
       37 LOADK                            R7 K14 ["AvatarPreviewerInfluxSeriesThrottlingPercentage"]
       38 LOADN                            R8 0
       39 NAMECALL                         R5 R5 K15 ["DefineFastInt"]
       41 CALL                             R5 3 1
       42 GETIMPORT                        R6 K9 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Src"]
       46 GETTABLEKS                       R7 R7 K16 ["Flags"]
       48 GETTABLEKS                       R7 R7 K17 ["getFFlagAvatarAutosetupJobIdTelemetry"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K9 [require]
       53 GETTABLEKS                       R8 R0 K12 ["Src"]
       55 GETTABLEKS                       R8 R8 K16 ["Flags"]
       57 GETTABLEKS                       R8 R8 K18 ["getFFlagAvatarPreviewerLookComposer"]
       59 CALL                             R7 1 1
       60 DUPTABLE                         R8 K27 [{["eventName"] = "SBT_AvatarAutoSetupSucceeded", ["lastUpdated"], ["description"] = "Avatar auto setup succeeded.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
       61 NEWTABLE                         R9 0 3
       63 LOADN                            R10 2024
       64 LOADN                            R11 11
       65 LOADN                            R12 21
       66 SETLIST                          R9 R10 3 [1]
       68 SETTABLEKS                       R9 R8 K21 ["lastUpdated"]
       70 NEWTABLE                         R9 0 1
       72 LOADK                            R10 K28 ["RobloxTelemetryCounter"]
       73 SETLIST                          R9 R10 1 [1]
       75 SETTABLEKS                       R9 R8 K26 ["backends"]
       77 DUPTABLE                         R9 K31 [{["eventName"] = "SBT_AvatarAutoSetupFailed", ["lastUpdated"], ["description"] = "Avatar auto setup failed.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
       78 NEWTABLE                         R10 0 3
       80 LOADN                            R11 2025
       81 LOADN                            R12 2
       82 LOADN                            R13 13
       83 SETLIST                          R10 R11 3 [1]
       85 SETTABLEKS                       R10 R9 K21 ["lastUpdated"]
       87 NEWTABLE                         R10 0 1
       89 LOADK                            R11 K28 ["RobloxTelemetryCounter"]
       90 SETLIST                          R10 R11 1 [1]
       92 SETTABLEKS                       R10 R9 K26 ["backends"]
       94 DUPTABLE                         R10 K34 [{["eventName"] = "SBT_AvatarAutoSetupCanceled", ["lastUpdated"], ["description"] = "Avatar auto setup canceled.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
       95 NEWTABLE                         R11 0 3
       97 LOADN                            R12 2025
       98 LOADN                            R13 2
       99 LOADN                            R14 13
      100 SETLIST                          R11 R12 3 [1]
      102 SETTABLEKS                       R11 R10 K21 ["lastUpdated"]
      104 NEWTABLE                         R11 0 1
      106 LOADK                            R12 K28 ["RobloxTelemetryCounter"]
      107 SETLIST                          R11 R12 1 [1]
      109 SETTABLEKS                       R11 R10 K26 ["backends"]
      111 DUPTABLE                         R11 K37 [{["eventName"] = "SBT_AvatarPreviewerItemEquipped", ["lastUpdated"], ["description"] = "Avatar previewer equipped an avatar item for testing.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
      112 NEWTABLE                         R12 0 3
      114 LOADN                            R13 2024
      115 LOADN                            R14 11
      116 LOADN                            R15 21
      117 SETLIST                          R12 R13 3 [1]
      119 SETTABLEKS                       R12 R11 K21 ["lastUpdated"]
      121 NEWTABLE                         R12 0 1
      123 LOADK                            R13 K28 ["RobloxTelemetryCounter"]
      124 SETLIST                          R12 R13 1 [1]
      126 SETTABLEKS                       R12 R11 K26 ["backends"]
      128 DUPTABLE                         R12 K40 [{["eventName"] = "SBT_AvatarPreviewerPublished", ["lastUpdated"], ["description"] = "Avatar previewer published an asset to the marketplace.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
      129 NEWTABLE                         R13 0 3
      131 LOADN                            R14 2024
      132 LOADN                            R15 11
      133 LOADN                            R16 21
      134 SETLIST                          R13 R14 3 [1]
      136 SETTABLEKS                       R13 R12 K21 ["lastUpdated"]
      138 NEWTABLE                         R13 0 1
      140 LOADK                            R14 K28 ["RobloxTelemetryCounter"]
      141 SETLIST                          R13 R14 1 [1]
      143 SETTABLEKS                       R13 R12 K26 ["backends"]
      145 DUPTABLE                         R13 K44 [{["eventName"] = "MKTUJ_LookComposerGetItemsError", ["lastUpdated"], ["description"] = "getMarketplaceItems returned >= 1 error.", ["links"] = "", ["backends"]}]
      146 NEWTABLE                         R14 0 3
      148 LOADN                            R15 2026
      149 LOADN                            R16 3
      150 LOADN                            R17 10
      151 SETLIST                          R14 R15 3 [1]
      153 SETTABLEKS                       R14 R13 K21 ["lastUpdated"]
      155 NEWTABLE                         R14 0 1
      157 LOADK                            R15 K28 ["RobloxTelemetryCounter"]
      158 SETLIST                          R14 R15 1 [1]
      160 SETTABLEKS                       R14 R13 K26 ["backends"]
      162 DUPTABLE                         R14 K47 [{["eventName"] = "MKTUJ_LookComposerItemsAddedToPlugin", ["lastUpdated"], ["description"] = "Marketplace items imported into auto setup plugin.", ["links"] = "", ["backends"]}]
      163 NEWTABLE                         R15 0 3
      165 LOADN                            R16 2026
      166 LOADN                            R17 3
      167 LOADN                            R18 10
      168 SETLIST                          R15 R16 3 [1]
      170 SETTABLEKS                       R15 R14 K21 ["lastUpdated"]
      172 NEWTABLE                         R15 0 1
      174 LOADK                            R16 K28 ["RobloxTelemetryCounter"]
      175 SETLIST                          R15 R16 1 [1]
      177 SETTABLEKS                       R15 R14 K26 ["backends"]
      179 DUPTABLE                         R15 K50 [{["eventName"] = "MKTUJ_LookComposerFeatureAccessFailure", ["lastUpdated"], ["description"] = "Marketplace look feature access failure.", ["links"] = "", ["backends"]}]
      180 NEWTABLE                         R16 0 3
      182 LOADN                            R17 2026
      183 LOADN                            R18 3
      184 LOADN                            R19 10
      185 SETLIST                          R16 R17 3 [1]
      187 SETTABLEKS                       R16 R15 K21 ["lastUpdated"]
      189 NEWTABLE                         R16 0 1
      191 LOADK                            R17 K28 ["RobloxTelemetryCounter"]
      192 SETLIST                          R16 R17 1 [1]
      194 SETTABLEKS                       R16 R15 K26 ["backends"]
      196 DUPTABLE                         R16 K53 [{["eventName"] = "MKTUJ_LookComposerManageableGroupsFailure", ["lastUpdated"], ["description"] = "Marketplace manageable groups failure.", ["links"] = "", ["backends"]}]
      197 NEWTABLE                         R17 0 3
      199 LOADN                            R18 2026
      200 LOADN                            R19 3
      201 LOADN                            R20 10
      202 SETLIST                          R17 R18 3 [1]
      204 SETTABLEKS                       R17 R16 K21 ["lastUpdated"]
      206 NEWTABLE                         R17 0 1
      208 LOADK                            R18 K28 ["RobloxTelemetryCounter"]
      209 SETLIST                          R17 R18 1 [1]
      211 SETTABLEKS                       R17 R16 K26 ["backends"]
      213 DUPTABLE                         R17 K56 [{["eventName"] = "MKTUJ_LookComposerPreviewSuccess", ["lastUpdated"], ["description"] = "Marketplace look composer dialog preview success.", ["links"] = "", ["backends"]}]
      214 NEWTABLE                         R18 0 3
      216 LOADN                            R19 2026
      217 LOADN                            R20 3
      218 LOADN                            R21 10
      219 SETLIST                          R18 R19 3 [1]
      221 SETTABLEKS                       R18 R17 K21 ["lastUpdated"]
      223 NEWTABLE                         R18 0 1
      225 LOADK                            R19 K28 ["RobloxTelemetryCounter"]
      226 SETLIST                          R18 R19 1 [1]
      228 SETTABLEKS                       R18 R17 K26 ["backends"]
      230 DUPTABLE                         R18 K59 [{["eventName"] = "MKTUJ_LookComposerValidationSuccess", ["lastUpdated"], ["description"] = "Marketplace look composer dialog validation success.", ["links"] = "", ["backends"]}]
      231 NEWTABLE                         R19 0 3
      233 LOADN                            R20 2026
      234 LOADN                            R21 3
      235 LOADN                            R22 10
      236 SETLIST                          R19 R20 3 [1]
      238 SETTABLEKS                       R19 R18 K21 ["lastUpdated"]
      240 NEWTABLE                         R19 0 1
      242 LOADK                            R20 K28 ["RobloxTelemetryCounter"]
      243 SETLIST                          R19 R20 1 [1]
      245 SETTABLEKS                       R19 R18 K26 ["backends"]
      247 DUPTABLE                         R19 K62 [{["eventName"] = "MKTUJ_LookComposerCreationSuccess", ["lastUpdated"], ["description"] = "Marketplace look composer dialog creation success.", ["links"] = "", ["backends"]}]
      248 NEWTABLE                         R20 0 3
      250 LOADN                            R21 2026
      251 LOADN                            R22 3
      252 LOADN                            R23 10
      253 SETLIST                          R20 R21 3 [1]
      255 SETTABLEKS                       R20 R19 K21 ["lastUpdated"]
      257 NEWTABLE                         R20 0 1
      259 LOADK                            R21 K28 ["RobloxTelemetryCounter"]
      260 SETLIST                          R20 R21 1 [1]
      262 SETTABLEKS                       R20 R19 K26 ["backends"]
      264 DUPTABLE                         R20 K65 [{["eventName"] = "MKTUJ_LookComposerPreviewError", ["lastUpdated"], ["description"] = "Marketplace look composer dialog preview error.", ["links"] = "", ["backends"]}]
      265 NEWTABLE                         R21 0 3
      267 LOADN                            R22 2026
      268 LOADN                            R23 3
      269 LOADN                            R24 10
      270 SETLIST                          R21 R22 3 [1]
      272 SETTABLEKS                       R21 R20 K21 ["lastUpdated"]
      274 NEWTABLE                         R21 0 1
      276 LOADK                            R22 K28 ["RobloxTelemetryCounter"]
      277 SETLIST                          R21 R22 1 [1]
      279 SETTABLEKS                       R21 R20 K26 ["backends"]
      281 DUPTABLE                         R21 K68 [{["eventName"] = "MKTUJ_LookComposerValidationError", ["lastUpdated"], ["description"] = "Marketplace look composer dialog validation error.", ["links"] = "", ["backends"]}]
      282 NEWTABLE                         R22 0 3
      284 LOADN                            R23 2026
      285 LOADN                            R24 3
      286 LOADN                            R25 10
      287 SETLIST                          R22 R23 3 [1]
      289 SETTABLEKS                       R22 R21 K21 ["lastUpdated"]
      291 NEWTABLE                         R22 0 1
      293 LOADK                            R23 K28 ["RobloxTelemetryCounter"]
      294 SETLIST                          R22 R23 1 [1]
      296 SETTABLEKS                       R22 R21 K26 ["backends"]
      298 DUPTABLE                         R22 K71 [{["eventName"] = "MKTUJ_LookComposerCreationError", ["lastUpdated"], ["description"] = "Marketplace look composer dialog creation error.", ["links"] = "", ["backends"]}]
      299 NEWTABLE                         R23 0 3
      301 LOADN                            R24 2026
      302 LOADN                            R25 3
      303 LOADN                            R26 10
      304 SETLIST                          R23 R24 3 [1]
      306 SETTABLEKS                       R23 R22 K21 ["lastUpdated"]
      308 NEWTABLE                         R23 0 1
      310 LOADK                            R24 K28 ["RobloxTelemetryCounter"]
      311 SETLIST                          R23 R24 1 [1]
      313 SETTABLEKS                       R23 R22 K26 ["backends"]
      315 DUPTABLE                         R23 K74 [{["eventName"] = "MKTUJ_LookComposerCreatorHubLink", ["lastUpdated"], ["description"] = "Marketplace look creator hub link opened.", ["links"] = "", ["backends"]}]
      316 NEWTABLE                         R24 0 3
      318 LOADN                            R25 2026
      319 LOADN                            R26 3
      320 LOADN                            R27 10
      321 SETLIST                          R24 R25 3 [1]
      323 SETTABLEKS                       R24 R23 K21 ["lastUpdated"]
      325 NEWTABLE                         R24 0 1
      327 LOADK                            R25 K28 ["RobloxTelemetryCounter"]
      328 SETLIST                          R24 R25 1 [1]
      330 SETTABLEKS                       R24 R23 K26 ["backends"]
      332 DUPCLOSURE                       R24 K75 [PROTO_0]
      333 DUPCLOSURE                       R25 K76 [PROTO_46]
      334 CAPTURE                          VAL R3
      335 CAPTURE                          VAL R5
      336 CAPTURE                          VAL R2
      337 CAPTURE                          VAL R9
      338 CAPTURE                          VAL R10
      339 CAPTURE                          VAL R8
      340 CAPTURE                          VAL R6
      341 CAPTURE                          VAL R24
      342 CAPTURE                          VAL R11
      343 CAPTURE                          VAL R12
      344 CAPTURE                          VAL R1
      345 CAPTURE                          VAL R7
      346 CAPTURE                          VAL R13
      347 CAPTURE                          VAL R14
      348 CAPTURE                          VAL R15
      349 CAPTURE                          VAL R16
      350 CAPTURE                          VAL R17
      351 CAPTURE                          VAL R18
      352 CAPTURE                          VAL R19
      353 CAPTURE                          VAL R20
      354 CAPTURE                          VAL R21
      355 CAPTURE                          VAL R22
      356 CAPTURE                          VAL R23
      357 RETURN                           R25 1
