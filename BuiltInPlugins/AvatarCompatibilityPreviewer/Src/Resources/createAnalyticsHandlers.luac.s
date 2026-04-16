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
        2 JUMPIFNOT                        R4 ; [+35]
        3 JUMPIFEQKNIL                     R1 ; [+34]
        5 GETUPVAL                         R4 1
        6 LOADK                            R5 K0 ["AutoSetupRequested"]
        7 DUPTABLE                         R6 K9 [{"clientJobId", "assetHash", "bodyCount", "layeredCount", "eyeLayeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
        8 SETTABLEKS                       R2 R6 K1 ["clientJobId"]
       10 SETTABLEKS                       R3 R6 K2 ["assetHash"]
       12 GETTABLEKS                       R7 R1 K3 ["bodyCount"]
       14 SETTABLEKS                       R7 R6 K3 ["bodyCount"]
       16 GETTABLEKS                       R7 R1 K4 ["layeredCount"]
       18 SETTABLEKS                       R7 R6 K4 ["layeredCount"]
       20 GETTABLEKS                       R7 R1 K5 ["eyeLayeredCount"]
       22 SETTABLEKS                       R7 R6 K5 ["eyeLayeredCount"]
       24 GETTABLEKS                       R7 R1 K6 ["rigidCount"]
       26 SETTABLEKS                       R7 R6 K6 ["rigidCount"]
       28 GETTABLEKS                       R7 R1 K7 ["avatarCount"]
       30 SETTABLEKS                       R7 R6 K7 ["avatarCount"]
       32 GETTABLEKS                       R7 R1 K8 ["unselectedCount"]
       34 SETTABLEKS                       R7 R6 K8 ["unselectedCount"]
       36 CALL                             R4 2 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R4 1
       39 LOADK                            R5 K0 ["AutoSetupRequested"]
       40 NEWTABLE                         R6 0 0
       42 CALL                             R4 2 0
       43 RETURN                           R0 0

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
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R6 R5 K3 ["autoSetupRequested"]
       31 NEWCLOSURE                       R6 P8
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R6 R5 K4 ["autoSetupOptions"]
       35 NEWCLOSURE                       R6 P9
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U5
       39 SETTABLEKS                       R6 R5 K5 ["autoSetupCancelled"]
       41 NEWCLOSURE                       R6 P10
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R6 R5 K6 ["autoSetupClothingOnlyFinish"]
       45 NEWCLOSURE                       R6 P11
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U6
       49 SETTABLEKS                       R6 R5 K7 ["autoSetupFinish"]
       51 NEWCLOSURE                       R6 P12
       52 CAPTURE                          VAL R1
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
       51 GETIMPORT                        R7 K9 [require]
       53 GETTABLEKS                       R10 R0 K12 ["Src"]
       55 GETTABLEKS                       R9 R10 K16 ["Flags"]
       57 GETTABLEKS                       R8 R9 K18 ["getFFlagAvatarPreviewerLookComposer"]
       59 CALL                             R7 1 1
       60 DUPTABLE                         R8 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
       61 LOADK                            R9 K25 ["SBT_AvatarAutoSetupSucceeded"]
       62 SETTABLEKS                       R9 R8 K19 ["eventName"]
       64 NEWTABLE                         R9 0 3
       66 LOADN                            R10 232
       67 LOADN                            R11 11
       68 LOADN                            R12 21
       69 SETLIST                          R9 R10 3 [1]
       71 SETTABLEKS                       R9 R8 K20 ["lastUpdated"]
       73 LOADK                            R9 K26 ["Avatar auto setup succeeded."]
       74 SETTABLEKS                       R9 R8 K21 ["description"]
       76 LOADK                            R9 K27 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
       77 SETTABLEKS                       R9 R8 K22 ["links"]
       79 NEWTABLE                         R9 0 1
       81 LOADK                            R10 K28 ["RobloxTelemetryCounter"]
       82 SETLIST                          R9 R10 1 [1]
       84 SETTABLEKS                       R9 R8 K23 ["backends"]
       86 DUPTABLE                         R9 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
       87 LOADK                            R10 K29 ["SBT_AvatarAutoSetupFailed"]
       88 SETTABLEKS                       R10 R9 K19 ["eventName"]
       90 NEWTABLE                         R10 0 3
       92 LOADN                            R11 233
       93 LOADN                            R12 2
       94 LOADN                            R13 13
       95 SETLIST                          R10 R11 3 [1]
       97 SETTABLEKS                       R10 R9 K20 ["lastUpdated"]
       99 LOADK                            R10 K30 ["Avatar auto setup failed."]
      100 SETTABLEKS                       R10 R9 K21 ["description"]
      102 LOADK                            R10 K27 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
      103 SETTABLEKS                       R10 R9 K22 ["links"]
      105 NEWTABLE                         R10 0 1
      107 LOADK                            R11 K28 ["RobloxTelemetryCounter"]
      108 SETLIST                          R10 R11 1 [1]
      110 SETTABLEKS                       R10 R9 K23 ["backends"]
      112 DUPTABLE                         R10 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      113 LOADK                            R11 K31 ["SBT_AvatarAutoSetupCanceled"]
      114 SETTABLEKS                       R11 R10 K19 ["eventName"]
      116 NEWTABLE                         R11 0 3
      118 LOADN                            R12 233
      119 LOADN                            R13 2
      120 LOADN                            R14 13
      121 SETLIST                          R11 R12 3 [1]
      123 SETTABLEKS                       R11 R10 K20 ["lastUpdated"]
      125 LOADK                            R11 K32 ["Avatar auto setup canceled."]
      126 SETTABLEKS                       R11 R10 K21 ["description"]
      128 LOADK                            R11 K27 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
      129 SETTABLEKS                       R11 R10 K22 ["links"]
      131 NEWTABLE                         R11 0 1
      133 LOADK                            R12 K28 ["RobloxTelemetryCounter"]
      134 SETLIST                          R11 R12 1 [1]
      136 SETTABLEKS                       R11 R10 K23 ["backends"]
      138 DUPTABLE                         R11 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      139 LOADK                            R12 K33 ["SBT_AvatarPreviewerItemEquipped"]
      140 SETTABLEKS                       R12 R11 K19 ["eventName"]
      142 NEWTABLE                         R12 0 3
      144 LOADN                            R13 232
      145 LOADN                            R14 11
      146 LOADN                            R15 21
      147 SETLIST                          R12 R13 3 [1]
      149 SETTABLEKS                       R12 R11 K20 ["lastUpdated"]
      151 LOADK                            R12 K34 ["Avatar previewer equipped an avatar item for testing."]
      152 SETTABLEKS                       R12 R11 K21 ["description"]
      154 LOADK                            R12 K27 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
      155 SETTABLEKS                       R12 R11 K22 ["links"]
      157 NEWTABLE                         R12 0 1
      159 LOADK                            R13 K28 ["RobloxTelemetryCounter"]
      160 SETLIST                          R12 R13 1 [1]
      162 SETTABLEKS                       R12 R11 K23 ["backends"]
      164 DUPTABLE                         R12 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      165 LOADK                            R13 K35 ["SBT_AvatarPreviewerPublished"]
      166 SETTABLEKS                       R13 R12 K19 ["eventName"]
      168 NEWTABLE                         R13 0 3
      170 LOADN                            R14 232
      171 LOADN                            R15 11
      172 LOADN                            R16 21
      173 SETLIST                          R13 R14 3 [1]
      175 SETTABLEKS                       R13 R12 K20 ["lastUpdated"]
      177 LOADK                            R13 K36 ["Avatar previewer published an asset to the marketplace."]
      178 SETTABLEKS                       R13 R12 K21 ["description"]
      180 LOADK                            R13 K27 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
      181 SETTABLEKS                       R13 R12 K22 ["links"]
      183 NEWTABLE                         R13 0 1
      185 LOADK                            R14 K28 ["RobloxTelemetryCounter"]
      186 SETLIST                          R13 R14 1 [1]
      188 SETTABLEKS                       R13 R12 K23 ["backends"]
      190 DUPTABLE                         R13 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      191 LOADK                            R14 K37 ["MKTUJ_LookComposerGetItemsError"]
      192 SETTABLEKS                       R14 R13 K19 ["eventName"]
      194 NEWTABLE                         R14 0 3
      196 LOADN                            R15 234
      197 LOADN                            R16 3
      198 LOADN                            R17 10
      199 SETLIST                          R14 R15 3 [1]
      201 SETTABLEKS                       R14 R13 K20 ["lastUpdated"]
      203 LOADK                            R14 K38 ["getMarketplaceItems returned >= 1 error."]
      204 SETTABLEKS                       R14 R13 K21 ["description"]
      206 LOADK                            R14 K39 [""]
      207 SETTABLEKS                       R14 R13 K22 ["links"]
      209 NEWTABLE                         R14 0 1
      211 LOADK                            R15 K28 ["RobloxTelemetryCounter"]
      212 SETLIST                          R14 R15 1 [1]
      214 SETTABLEKS                       R14 R13 K23 ["backends"]
      216 DUPTABLE                         R14 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      217 LOADK                            R15 K40 ["MKTUJ_LookComposerItemsAddedToPlugin"]
      218 SETTABLEKS                       R15 R14 K19 ["eventName"]
      220 NEWTABLE                         R15 0 3
      222 LOADN                            R16 234
      223 LOADN                            R17 3
      224 LOADN                            R18 10
      225 SETLIST                          R15 R16 3 [1]
      227 SETTABLEKS                       R15 R14 K20 ["lastUpdated"]
      229 LOADK                            R15 K41 ["Marketplace items imported into auto setup plugin."]
      230 SETTABLEKS                       R15 R14 K21 ["description"]
      232 LOADK                            R15 K39 [""]
      233 SETTABLEKS                       R15 R14 K22 ["links"]
      235 NEWTABLE                         R15 0 1
      237 LOADK                            R16 K28 ["RobloxTelemetryCounter"]
      238 SETLIST                          R15 R16 1 [1]
      240 SETTABLEKS                       R15 R14 K23 ["backends"]
      242 DUPTABLE                         R15 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      243 LOADK                            R16 K42 ["MKTUJ_LookComposerFeatureAccessFailure"]
      244 SETTABLEKS                       R16 R15 K19 ["eventName"]
      246 NEWTABLE                         R16 0 3
      248 LOADN                            R17 234
      249 LOADN                            R18 3
      250 LOADN                            R19 10
      251 SETLIST                          R16 R17 3 [1]
      253 SETTABLEKS                       R16 R15 K20 ["lastUpdated"]
      255 LOADK                            R16 K43 ["Marketplace look feature access failure."]
      256 SETTABLEKS                       R16 R15 K21 ["description"]
      258 LOADK                            R16 K39 [""]
      259 SETTABLEKS                       R16 R15 K22 ["links"]
      261 NEWTABLE                         R16 0 1
      263 LOADK                            R17 K28 ["RobloxTelemetryCounter"]
      264 SETLIST                          R16 R17 1 [1]
      266 SETTABLEKS                       R16 R15 K23 ["backends"]
      268 DUPTABLE                         R16 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      269 LOADK                            R17 K44 ["MKTUJ_LookComposerManageableGroupsFailure"]
      270 SETTABLEKS                       R17 R16 K19 ["eventName"]
      272 NEWTABLE                         R17 0 3
      274 LOADN                            R18 234
      275 LOADN                            R19 3
      276 LOADN                            R20 10
      277 SETLIST                          R17 R18 3 [1]
      279 SETTABLEKS                       R17 R16 K20 ["lastUpdated"]
      281 LOADK                            R17 K45 ["Marketplace manageable groups failure."]
      282 SETTABLEKS                       R17 R16 K21 ["description"]
      284 LOADK                            R17 K39 [""]
      285 SETTABLEKS                       R17 R16 K22 ["links"]
      287 NEWTABLE                         R17 0 1
      289 LOADK                            R18 K28 ["RobloxTelemetryCounter"]
      290 SETLIST                          R17 R18 1 [1]
      292 SETTABLEKS                       R17 R16 K23 ["backends"]
      294 DUPTABLE                         R17 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      295 LOADK                            R18 K46 ["MKTUJ_LookComposerPreviewSuccess"]
      296 SETTABLEKS                       R18 R17 K19 ["eventName"]
      298 NEWTABLE                         R18 0 3
      300 LOADN                            R19 234
      301 LOADN                            R20 3
      302 LOADN                            R21 10
      303 SETLIST                          R18 R19 3 [1]
      305 SETTABLEKS                       R18 R17 K20 ["lastUpdated"]
      307 LOADK                            R18 K47 ["Marketplace look composer dialog preview success."]
      308 SETTABLEKS                       R18 R17 K21 ["description"]
      310 LOADK                            R18 K39 [""]
      311 SETTABLEKS                       R18 R17 K22 ["links"]
      313 NEWTABLE                         R18 0 1
      315 LOADK                            R19 K28 ["RobloxTelemetryCounter"]
      316 SETLIST                          R18 R19 1 [1]
      318 SETTABLEKS                       R18 R17 K23 ["backends"]
      320 DUPTABLE                         R18 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      321 LOADK                            R19 K48 ["MKTUJ_LookComposerValidationSuccess"]
      322 SETTABLEKS                       R19 R18 K19 ["eventName"]
      324 NEWTABLE                         R19 0 3
      326 LOADN                            R20 234
      327 LOADN                            R21 3
      328 LOADN                            R22 10
      329 SETLIST                          R19 R20 3 [1]
      331 SETTABLEKS                       R19 R18 K20 ["lastUpdated"]
      333 LOADK                            R19 K49 ["Marketplace look composer dialog validation success."]
      334 SETTABLEKS                       R19 R18 K21 ["description"]
      336 LOADK                            R19 K39 [""]
      337 SETTABLEKS                       R19 R18 K22 ["links"]
      339 NEWTABLE                         R19 0 1
      341 LOADK                            R20 K28 ["RobloxTelemetryCounter"]
      342 SETLIST                          R19 R20 1 [1]
      344 SETTABLEKS                       R19 R18 K23 ["backends"]
      346 DUPTABLE                         R19 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      347 LOADK                            R20 K50 ["MKTUJ_LookComposerCreationSuccess"]
      348 SETTABLEKS                       R20 R19 K19 ["eventName"]
      350 NEWTABLE                         R20 0 3
      352 LOADN                            R21 234
      353 LOADN                            R22 3
      354 LOADN                            R23 10
      355 SETLIST                          R20 R21 3 [1]
      357 SETTABLEKS                       R20 R19 K20 ["lastUpdated"]
      359 LOADK                            R20 K51 ["Marketplace look composer dialog creation success."]
      360 SETTABLEKS                       R20 R19 K21 ["description"]
      362 LOADK                            R20 K39 [""]
      363 SETTABLEKS                       R20 R19 K22 ["links"]
      365 NEWTABLE                         R20 0 1
      367 LOADK                            R21 K28 ["RobloxTelemetryCounter"]
      368 SETLIST                          R20 R21 1 [1]
      370 SETTABLEKS                       R20 R19 K23 ["backends"]
      372 DUPTABLE                         R20 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      373 LOADK                            R21 K52 ["MKTUJ_LookComposerPreviewError"]
      374 SETTABLEKS                       R21 R20 K19 ["eventName"]
      376 NEWTABLE                         R21 0 3
      378 LOADN                            R22 234
      379 LOADN                            R23 3
      380 LOADN                            R24 10
      381 SETLIST                          R21 R22 3 [1]
      383 SETTABLEKS                       R21 R20 K20 ["lastUpdated"]
      385 LOADK                            R21 K53 ["Marketplace look composer dialog preview error."]
      386 SETTABLEKS                       R21 R20 K21 ["description"]
      388 LOADK                            R21 K39 [""]
      389 SETTABLEKS                       R21 R20 K22 ["links"]
      391 NEWTABLE                         R21 0 1
      393 LOADK                            R22 K28 ["RobloxTelemetryCounter"]
      394 SETLIST                          R21 R22 1 [1]
      396 SETTABLEKS                       R21 R20 K23 ["backends"]
      398 DUPTABLE                         R21 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      399 LOADK                            R22 K54 ["MKTUJ_LookComposerValidationError"]
      400 SETTABLEKS                       R22 R21 K19 ["eventName"]
      402 NEWTABLE                         R22 0 3
      404 LOADN                            R23 234
      405 LOADN                            R24 3
      406 LOADN                            R25 10
      407 SETLIST                          R22 R23 3 [1]
      409 SETTABLEKS                       R22 R21 K20 ["lastUpdated"]
      411 LOADK                            R22 K55 ["Marketplace look composer dialog validation error."]
      412 SETTABLEKS                       R22 R21 K21 ["description"]
      414 LOADK                            R22 K39 [""]
      415 SETTABLEKS                       R22 R21 K22 ["links"]
      417 NEWTABLE                         R22 0 1
      419 LOADK                            R23 K28 ["RobloxTelemetryCounter"]
      420 SETLIST                          R22 R23 1 [1]
      422 SETTABLEKS                       R22 R21 K23 ["backends"]
      424 DUPTABLE                         R22 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      425 LOADK                            R23 K56 ["MKTUJ_LookComposerCreationError"]
      426 SETTABLEKS                       R23 R22 K19 ["eventName"]
      428 NEWTABLE                         R23 0 3
      430 LOADN                            R24 234
      431 LOADN                            R25 3
      432 LOADN                            R26 10
      433 SETLIST                          R23 R24 3 [1]
      435 SETTABLEKS                       R23 R22 K20 ["lastUpdated"]
      437 LOADK                            R23 K57 ["Marketplace look composer dialog creation error."]
      438 SETTABLEKS                       R23 R22 K21 ["description"]
      440 LOADK                            R23 K39 [""]
      441 SETTABLEKS                       R23 R22 K22 ["links"]
      443 NEWTABLE                         R23 0 1
      445 LOADK                            R24 K28 ["RobloxTelemetryCounter"]
      446 SETLIST                          R23 R24 1 [1]
      448 SETTABLEKS                       R23 R22 K23 ["backends"]
      450 DUPTABLE                         R23 K24 [{"eventName", "lastUpdated", "description", "links", "backends"}]
      451 LOADK                            R24 K58 ["MKTUJ_LookComposerCreatorHubLink"]
      452 SETTABLEKS                       R24 R23 K19 ["eventName"]
      454 NEWTABLE                         R24 0 3
      456 LOADN                            R25 234
      457 LOADN                            R26 3
      458 LOADN                            R27 10
      459 SETLIST                          R24 R25 3 [1]
      461 SETTABLEKS                       R24 R23 K20 ["lastUpdated"]
      463 LOADK                            R24 K59 ["Marketplace look creator hub link opened."]
      464 SETTABLEKS                       R24 R23 K21 ["description"]
      466 LOADK                            R24 K39 [""]
      467 SETTABLEKS                       R24 R23 K22 ["links"]
      469 NEWTABLE                         R24 0 1
      471 LOADK                            R25 K28 ["RobloxTelemetryCounter"]
      472 SETLIST                          R24 R25 1 [1]
      474 SETTABLEKS                       R24 R23 K23 ["backends"]
      476 DUPCLOSURE                       R24 K60 [PROTO_0]
      477 DUPCLOSURE                       R25 K61 [PROTO_46]
      478 CAPTURE                          VAL R3
      479 CAPTURE                          VAL R5
      480 CAPTURE                          VAL R2
      481 CAPTURE                          VAL R9
      482 CAPTURE                          VAL R6
      483 CAPTURE                          VAL R10
      484 CAPTURE                          VAL R8
      485 CAPTURE                          VAL R24
      486 CAPTURE                          VAL R11
      487 CAPTURE                          VAL R12
      488 CAPTURE                          VAL R1
      489 CAPTURE                          VAL R7
      490 CAPTURE                          VAL R13
      491 CAPTURE                          VAL R14
      492 CAPTURE                          VAL R15
      493 CAPTURE                          VAL R16
      494 CAPTURE                          VAL R17
      495 CAPTURE                          VAL R18
      496 CAPTURE                          VAL R19
      497 CAPTURE                          VAL R20
      498 CAPTURE                          VAL R21
      499 CAPTURE                          VAL R22
      500 CAPTURE                          VAL R23
      501 RETURN                           R25 1
