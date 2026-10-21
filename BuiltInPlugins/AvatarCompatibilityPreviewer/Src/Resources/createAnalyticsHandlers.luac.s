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
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["AvatarCreationUserFeedback"]
        2 DUPTABLE                         R6 K6 [{"user_id", "job_id", "prompt", "rating", "feedback"}]
        3 GETUPVAL                         R8 1
        4 NAMECALL                         R8 R8 K7 ["GetUserId"]
        6 CALL                             R8 1 -1
        7 FASTCALL                         TOSTRING ; [+2]
        8 GETIMPORT                        R7 K9 [tostring]
       10 CALL                             R7 -1 1
       11 SETTABLEKS                       R7 R6 K1 ["user_id"]
       13 SETTABLEKS                       R2 R6 K2 ["job_id"]
       15 SETTABLEKS                       R3 R6 K3 ["prompt"]
       17 GETTABLEKS                       R7 R1 K4 ["rating"]
       19 SETTABLEKS                       R7 R6 K4 ["rating"]
       21 GETTABLEKS                       R7 R1 K10 ["message"]
       23 SETTABLEKS                       R7 R6 K5 ["feedback"]
       25 CALL                             R4 2 0
       26 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["AvatarCreationUsage"]
        2 DUPTABLE                         R6 K7 [{"user_id", "job_id", "place_id", "universe_id", "output_asset_ids", "job_config"}]
        3 GETUPVAL                         R8 1
        4 NAMECALL                         R8 R8 K8 ["GetUserId"]
        6 CALL                             R8 1 -1
        7 FASTCALL                         TOSTRING ; [+2]
        8 GETIMPORT                        R7 K10 [tostring]
       10 CALL                             R7 -1 1
       11 SETTABLEKS                       R7 R6 K1 ["user_id"]
       13 SETTABLEKS                       R1 R6 K2 ["job_id"]
       15 GETIMPORT                        R8 K12 [game]
       17 GETTABLEKS                       R8 R8 K13 ["PlaceId"]
       19 FASTCALL1                        TOSTRING R8 ; [+2]
       20 GETIMPORT                        R7 K10 [tostring]
       22 CALL                             R7 1 1
       23 SETTABLEKS                       R7 R6 K3 ["place_id"]
       25 GETIMPORT                        R8 K12 [game]
       27 GETTABLEKS                       R8 R8 K14 ["GameId"]
       29 FASTCALL1                        TOSTRING R8 ; [+2]
       30 GETIMPORT                        R7 K10 [tostring]
       32 CALL                             R7 1 1
       33 SETTABLEKS                       R7 R6 K4 ["universe_id"]
       35 GETIMPORT                        R7 K17 [table.concat]
       37 MOVE                             R8 R2
       38 LOADK                            R9 K18 [","]
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K5 ["output_asset_ids"]
       42 GETUPVAL                         R7 2
       43 MOVE                             R9 R3
       44 NAMECALL                         R7 R7 K19 ["JSONEncode"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K6 ["job_config"]
       49 CALL                             R4 2 0
       50 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["SetStage"]
        2 DUPTABLE                         R4 K2 [{"stageKey"}]
        3 SETTABLEKS                       R1 R4 K1 ["stageKey"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["TestInExperience"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["UnequipItem"]
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AutoSetupPassedValidation"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["ReportCounter"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AutoSetupFailedValidation"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["ReportCounter"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AutoSetupValidationDuration"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["ReportStats"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AutoSetupValidationErrorCount"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["ReportStats"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_36:
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_48:
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
      116 CAPTURE                          UPVAL U10
      117 SETTABLEKS                       R6 R5 K22 ["sendAvatarCreationFeedback"]
      119 NEWCLOSURE                       R6 P27
      120 CAPTURE                          VAL R1
      121 CAPTURE                          UPVAL U10
      122 CAPTURE                          UPVAL U11
      123 SETTABLEKS                       R6 R5 K23 ["sendAvatarCreationUsage"]
      125 NEWCLOSURE                       R6 P28
      126 CAPTURE                          VAL R1
      127 SETTABLEKS                       R6 R5 K24 ["setStage"]
      129 NEWCLOSURE                       R6 P29
      130 CAPTURE                          VAL R1
      131 SETTABLEKS                       R6 R5 K25 ["testInExperience"]
      133 NEWCLOSURE                       R6 P30
      134 CAPTURE                          VAL R1
      135 CAPTURE                          UPVAL U7
      136 SETTABLEKS                       R6 R5 K26 ["unequipItem"]
      138 NEWCLOSURE                       R6 P31
      139 CAPTURE                          VAL R0
      140 SETTABLEKS                       R6 R5 K27 ["autoSetupPassedValidation"]
      142 NEWCLOSURE                       R6 P32
      143 CAPTURE                          VAL R0
      144 SETTABLEKS                       R6 R5 K28 ["autoSetupFailedValidation"]
      146 NEWCLOSURE                       R6 P33
      147 CAPTURE                          VAL R0
      148 SETTABLEKS                       R6 R5 K29 ["autoSetupValidationDuration"]
      150 NEWCLOSURE                       R6 P34
      151 CAPTURE                          VAL R0
      152 SETTABLEKS                       R6 R5 K30 ["autoSetupValidationErrorCount"]
      154 NEWCLOSURE                       R6 P35
      155 CAPTURE                          VAL R0
      156 CAPTURE                          UPVAL U1
      157 SETTABLEKS                       R6 R5 K31 ["autoSetupValidationError"]
      159 GETUPVAL                         R7 12
      160 CALL                             R7 0 1
      161 JUMPIFNOT                        R7 ; [+4]
      162 DUPCLOSURE                       R6 K32 [PROTO_37]
      163 CAPTURE                          UPVAL U2
      164 CAPTURE                          UPVAL U13
      165 JUMP                             ; [+1]
      166 LOADNIL                          R6
      167 SETTABLEKS                       R6 R5 K33 ["marketplaceGetItemsError"]
      169 GETUPVAL                         R7 12
      170 CALL                             R7 0 1
      171 JUMPIFNOT                        R7 ; [+4]
      172 DUPCLOSURE                       R6 K34 [PROTO_38]
      173 CAPTURE                          UPVAL U2
      174 CAPTURE                          UPVAL U14
      175 JUMP                             ; [+1]
      176 LOADNIL                          R6
      177 SETTABLEKS                       R6 R5 K35 ["marketplaceItemsAddedToPlugin"]
      179 GETUPVAL                         R7 12
      180 CALL                             R7 0 1
      181 JUMPIFNOT                        R7 ; [+4]
      182 DUPCLOSURE                       R6 K36 [PROTO_39]
      183 CAPTURE                          UPVAL U2
      184 CAPTURE                          UPVAL U15
      185 JUMP                             ; [+1]
      186 LOADNIL                          R6
      187 SETTABLEKS                       R6 R5 K37 ["marketplaceLookAccessFailure"]
      189 GETUPVAL                         R7 12
      190 CALL                             R7 0 1
      191 JUMPIFNOT                        R7 ; [+4]
      192 DUPCLOSURE                       R6 K38 [PROTO_40]
      193 CAPTURE                          UPVAL U2
      194 CAPTURE                          UPVAL U16
      195 JUMP                             ; [+1]
      196 LOADNIL                          R6
      197 SETTABLEKS                       R6 R5 K39 ["marketplaceManageableGroupsFailure"]
      199 GETUPVAL                         R7 12
      200 CALL                             R7 0 1
      201 JUMPIFNOT                        R7 ; [+4]
      202 DUPCLOSURE                       R6 K40 [PROTO_41]
      203 CAPTURE                          UPVAL U2
      204 CAPTURE                          UPVAL U17
      205 JUMP                             ; [+1]
      206 LOADNIL                          R6
      207 SETTABLEKS                       R6 R5 K41 ["marketplaceLookPreviewSuccess"]
      209 GETUPVAL                         R7 12
      210 CALL                             R7 0 1
      211 JUMPIFNOT                        R7 ; [+4]
      212 DUPCLOSURE                       R6 K42 [PROTO_42]
      213 CAPTURE                          UPVAL U2
      214 CAPTURE                          UPVAL U18
      215 JUMP                             ; [+1]
      216 LOADNIL                          R6
      217 SETTABLEKS                       R6 R5 K43 ["marketplaceLookValidationSuccess"]
      219 GETUPVAL                         R7 12
      220 CALL                             R7 0 1
      221 JUMPIFNOT                        R7 ; [+4]
      222 DUPCLOSURE                       R6 K44 [PROTO_43]
      223 CAPTURE                          UPVAL U2
      224 CAPTURE                          UPVAL U19
      225 JUMP                             ; [+1]
      226 LOADNIL                          R6
      227 SETTABLEKS                       R6 R5 K45 ["marketplaceLookCreationSuccess"]
      229 GETUPVAL                         R7 12
      230 CALL                             R7 0 1
      231 JUMPIFNOT                        R7 ; [+4]
      232 DUPCLOSURE                       R6 K46 [PROTO_44]
      233 CAPTURE                          UPVAL U2
      234 CAPTURE                          UPVAL U20
      235 JUMP                             ; [+1]
      236 LOADNIL                          R6
      237 SETTABLEKS                       R6 R5 K47 ["marketplaceLookPreviewError"]
      239 GETUPVAL                         R7 12
      240 CALL                             R7 0 1
      241 JUMPIFNOT                        R7 ; [+4]
      242 DUPCLOSURE                       R6 K48 [PROTO_45]
      243 CAPTURE                          UPVAL U2
      244 CAPTURE                          UPVAL U21
      245 JUMP                             ; [+1]
      246 LOADNIL                          R6
      247 SETTABLEKS                       R6 R5 K49 ["marketplaceLookValidationError"]
      249 GETUPVAL                         R7 12
      250 CALL                             R7 0 1
      251 JUMPIFNOT                        R7 ; [+4]
      252 DUPCLOSURE                       R6 K50 [PROTO_46]
      253 CAPTURE                          UPVAL U2
      254 CAPTURE                          UPVAL U22
      255 JUMP                             ; [+1]
      256 LOADNIL                          R6
      257 SETTABLEKS                       R6 R5 K51 ["marketplaceLookCreationError"]
      259 GETUPVAL                         R7 12
      260 CALL                             R7 0 1
      261 JUMPIFNOT                        R7 ; [+4]
      262 DUPCLOSURE                       R6 K52 [PROTO_47]
      263 CAPTURE                          UPVAL U2
      264 CAPTURE                          UPVAL U23
      265 JUMP                             ; [+1]
      266 LOADNIL                          R6
      267 SETTABLEKS                       R6 R5 K53 ["marketplaceLookCreatorHubLink"]
      269 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["HttpService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["StudioService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K4 [game]
       23 LOADK                            R5 K8 ["TelemetryService"]
       24 NAMECALL                         R3 R3 K6 ["GetService"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Dash"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Types"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K4 [game]
       43 LOADK                            R8 K15 ["AvatarPreviewerInfluxSeriesThrottlingPercentage"]
       44 LOADN                            R9 0
       45 NAMECALL                         R6 R6 K16 ["DefineFastInt"]
       47 CALL                             R6 3 1
       48 GETIMPORT                        R7 K10 [require]
       50 GETTABLEKS                       R8 R0 K13 ["Src"]
       52 GETTABLEKS                       R8 R8 K17 ["Flags"]
       54 GETTABLEKS                       R8 R8 K18 ["getFFlagAvatarAutosetupJobIdTelemetry"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K10 [require]
       59 GETTABLEKS                       R9 R0 K13 ["Src"]
       61 GETTABLEKS                       R9 R9 K17 ["Flags"]
       63 GETTABLEKS                       R9 R9 K19 ["getFFlagAvatarPreviewerLookComposer"]
       65 CALL                             R8 1 1
       66 DUPTABLE                         R9 K28 [{["eventName"] = "SBT_AvatarAutoSetupSucceeded", ["lastUpdated"], ["description"] = "Avatar auto setup succeeded.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
       67 NEWTABLE                         R10 0 3
       69 LOADN                            R11 2024
       70 LOADN                            R12 11
       71 LOADN                            R13 21
       72 SETLIST                          R10 R11 3 [1]
       74 SETTABLEKS                       R10 R9 K22 ["lastUpdated"]
       76 NEWTABLE                         R10 0 1
       78 LOADK                            R11 K29 ["RobloxTelemetryCounter"]
       79 SETLIST                          R10 R11 1 [1]
       81 SETTABLEKS                       R10 R9 K27 ["backends"]
       83 DUPTABLE                         R10 K32 [{["eventName"] = "SBT_AvatarAutoSetupFailed", ["lastUpdated"], ["description"] = "Avatar auto setup failed.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
       84 NEWTABLE                         R11 0 3
       86 LOADN                            R12 2025
       87 LOADN                            R13 2
       88 LOADN                            R14 13
       89 SETLIST                          R11 R12 3 [1]
       91 SETTABLEKS                       R11 R10 K22 ["lastUpdated"]
       93 NEWTABLE                         R11 0 1
       95 LOADK                            R12 K29 ["RobloxTelemetryCounter"]
       96 SETLIST                          R11 R12 1 [1]
       98 SETTABLEKS                       R11 R10 K27 ["backends"]
      100 DUPTABLE                         R11 K35 [{["eventName"] = "SBT_AvatarAutoSetupCanceled", ["lastUpdated"], ["description"] = "Avatar auto setup canceled.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
      101 NEWTABLE                         R12 0 3
      103 LOADN                            R13 2025
      104 LOADN                            R14 2
      105 LOADN                            R15 13
      106 SETLIST                          R12 R13 3 [1]
      108 SETTABLEKS                       R12 R11 K22 ["lastUpdated"]
      110 NEWTABLE                         R12 0 1
      112 LOADK                            R13 K29 ["RobloxTelemetryCounter"]
      113 SETLIST                          R12 R13 1 [1]
      115 SETTABLEKS                       R12 R11 K27 ["backends"]
      117 DUPTABLE                         R12 K38 [{["eventName"] = "SBT_AvatarPreviewerItemEquipped", ["lastUpdated"], ["description"] = "Avatar previewer equipped an avatar item for testing.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
      118 NEWTABLE                         R13 0 3
      120 LOADN                            R14 2024
      121 LOADN                            R15 11
      122 LOADN                            R16 21
      123 SETLIST                          R13 R14 3 [1]
      125 SETTABLEKS                       R13 R12 K22 ["lastUpdated"]
      127 NEWTABLE                         R13 0 1
      129 LOADK                            R14 K29 ["RobloxTelemetryCounter"]
      130 SETLIST                          R13 R14 1 [1]
      132 SETTABLEKS                       R13 R12 K27 ["backends"]
      134 DUPTABLE                         R13 K41 [{["eventName"] = "SBT_AvatarPreviewerPublished", ["lastUpdated"], ["description"] = "Avatar previewer published an asset to the marketplace.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
      135 NEWTABLE                         R14 0 3
      137 LOADN                            R15 2024
      138 LOADN                            R16 11
      139 LOADN                            R17 21
      140 SETLIST                          R14 R15 3 [1]
      142 SETTABLEKS                       R14 R13 K22 ["lastUpdated"]
      144 NEWTABLE                         R14 0 1
      146 LOADK                            R15 K29 ["RobloxTelemetryCounter"]
      147 SETLIST                          R14 R15 1 [1]
      149 SETTABLEKS                       R14 R13 K27 ["backends"]
      151 DUPTABLE                         R14 K45 [{["eventName"] = "MKTUJ_LookComposerGetItemsError", ["lastUpdated"], ["description"] = "getMarketplaceItems returned >= 1 error.", ["links"] = "", ["backends"]}]
      152 NEWTABLE                         R15 0 3
      154 LOADN                            R16 2026
      155 LOADN                            R17 3
      156 LOADN                            R18 10
      157 SETLIST                          R15 R16 3 [1]
      159 SETTABLEKS                       R15 R14 K22 ["lastUpdated"]
      161 NEWTABLE                         R15 0 1
      163 LOADK                            R16 K29 ["RobloxTelemetryCounter"]
      164 SETLIST                          R15 R16 1 [1]
      166 SETTABLEKS                       R15 R14 K27 ["backends"]
      168 DUPTABLE                         R15 K48 [{["eventName"] = "MKTUJ_LookComposerItemsAddedToPlugin", ["lastUpdated"], ["description"] = "Marketplace items imported into auto setup plugin.", ["links"] = "", ["backends"]}]
      169 NEWTABLE                         R16 0 3
      171 LOADN                            R17 2026
      172 LOADN                            R18 3
      173 LOADN                            R19 10
      174 SETLIST                          R16 R17 3 [1]
      176 SETTABLEKS                       R16 R15 K22 ["lastUpdated"]
      178 NEWTABLE                         R16 0 1
      180 LOADK                            R17 K29 ["RobloxTelemetryCounter"]
      181 SETLIST                          R16 R17 1 [1]
      183 SETTABLEKS                       R16 R15 K27 ["backends"]
      185 DUPTABLE                         R16 K51 [{["eventName"] = "MKTUJ_LookComposerFeatureAccessFailure", ["lastUpdated"], ["description"] = "Marketplace look feature access failure.", ["links"] = "", ["backends"]}]
      186 NEWTABLE                         R17 0 3
      188 LOADN                            R18 2026
      189 LOADN                            R19 3
      190 LOADN                            R20 10
      191 SETLIST                          R17 R18 3 [1]
      193 SETTABLEKS                       R17 R16 K22 ["lastUpdated"]
      195 NEWTABLE                         R17 0 1
      197 LOADK                            R18 K29 ["RobloxTelemetryCounter"]
      198 SETLIST                          R17 R18 1 [1]
      200 SETTABLEKS                       R17 R16 K27 ["backends"]
      202 DUPTABLE                         R17 K54 [{["eventName"] = "MKTUJ_LookComposerManageableGroupsFailure", ["lastUpdated"], ["description"] = "Marketplace manageable groups failure.", ["links"] = "", ["backends"]}]
      203 NEWTABLE                         R18 0 3
      205 LOADN                            R19 2026
      206 LOADN                            R20 3
      207 LOADN                            R21 10
      208 SETLIST                          R18 R19 3 [1]
      210 SETTABLEKS                       R18 R17 K22 ["lastUpdated"]
      212 NEWTABLE                         R18 0 1
      214 LOADK                            R19 K29 ["RobloxTelemetryCounter"]
      215 SETLIST                          R18 R19 1 [1]
      217 SETTABLEKS                       R18 R17 K27 ["backends"]
      219 DUPTABLE                         R18 K57 [{["eventName"] = "MKTUJ_LookComposerPreviewSuccess", ["lastUpdated"], ["description"] = "Marketplace look composer dialog preview success.", ["links"] = "", ["backends"]}]
      220 NEWTABLE                         R19 0 3
      222 LOADN                            R20 2026
      223 LOADN                            R21 3
      224 LOADN                            R22 10
      225 SETLIST                          R19 R20 3 [1]
      227 SETTABLEKS                       R19 R18 K22 ["lastUpdated"]
      229 NEWTABLE                         R19 0 1
      231 LOADK                            R20 K29 ["RobloxTelemetryCounter"]
      232 SETLIST                          R19 R20 1 [1]
      234 SETTABLEKS                       R19 R18 K27 ["backends"]
      236 DUPTABLE                         R19 K60 [{["eventName"] = "MKTUJ_LookComposerValidationSuccess", ["lastUpdated"], ["description"] = "Marketplace look composer dialog validation success.", ["links"] = "", ["backends"]}]
      237 NEWTABLE                         R20 0 3
      239 LOADN                            R21 2026
      240 LOADN                            R22 3
      241 LOADN                            R23 10
      242 SETLIST                          R20 R21 3 [1]
      244 SETTABLEKS                       R20 R19 K22 ["lastUpdated"]
      246 NEWTABLE                         R20 0 1
      248 LOADK                            R21 K29 ["RobloxTelemetryCounter"]
      249 SETLIST                          R20 R21 1 [1]
      251 SETTABLEKS                       R20 R19 K27 ["backends"]
      253 DUPTABLE                         R20 K63 [{["eventName"] = "MKTUJ_LookComposerCreationSuccess", ["lastUpdated"], ["description"] = "Marketplace look composer dialog creation success.", ["links"] = "", ["backends"]}]
      254 NEWTABLE                         R21 0 3
      256 LOADN                            R22 2026
      257 LOADN                            R23 3
      258 LOADN                            R24 10
      259 SETLIST                          R21 R22 3 [1]
      261 SETTABLEKS                       R21 R20 K22 ["lastUpdated"]
      263 NEWTABLE                         R21 0 1
      265 LOADK                            R22 K29 ["RobloxTelemetryCounter"]
      266 SETLIST                          R21 R22 1 [1]
      268 SETTABLEKS                       R21 R20 K27 ["backends"]
      270 DUPTABLE                         R21 K66 [{["eventName"] = "MKTUJ_LookComposerPreviewError", ["lastUpdated"], ["description"] = "Marketplace look composer dialog preview error.", ["links"] = "", ["backends"]}]
      271 NEWTABLE                         R22 0 3
      273 LOADN                            R23 2026
      274 LOADN                            R24 3
      275 LOADN                            R25 10
      276 SETLIST                          R22 R23 3 [1]
      278 SETTABLEKS                       R22 R21 K22 ["lastUpdated"]
      280 NEWTABLE                         R22 0 1
      282 LOADK                            R23 K29 ["RobloxTelemetryCounter"]
      283 SETLIST                          R22 R23 1 [1]
      285 SETTABLEKS                       R22 R21 K27 ["backends"]
      287 DUPTABLE                         R22 K69 [{["eventName"] = "MKTUJ_LookComposerValidationError", ["lastUpdated"], ["description"] = "Marketplace look composer dialog validation error.", ["links"] = "", ["backends"]}]
      288 NEWTABLE                         R23 0 3
      290 LOADN                            R24 2026
      291 LOADN                            R25 3
      292 LOADN                            R26 10
      293 SETLIST                          R23 R24 3 [1]
      295 SETTABLEKS                       R23 R22 K22 ["lastUpdated"]
      297 NEWTABLE                         R23 0 1
      299 LOADK                            R24 K29 ["RobloxTelemetryCounter"]
      300 SETLIST                          R23 R24 1 [1]
      302 SETTABLEKS                       R23 R22 K27 ["backends"]
      304 DUPTABLE                         R23 K72 [{["eventName"] = "MKTUJ_LookComposerCreationError", ["lastUpdated"], ["description"] = "Marketplace look composer dialog creation error.", ["links"] = "", ["backends"]}]
      305 NEWTABLE                         R24 0 3
      307 LOADN                            R25 2026
      308 LOADN                            R26 3
      309 LOADN                            R27 10
      310 SETLIST                          R24 R25 3 [1]
      312 SETTABLEKS                       R24 R23 K22 ["lastUpdated"]
      314 NEWTABLE                         R24 0 1
      316 LOADK                            R25 K29 ["RobloxTelemetryCounter"]
      317 SETLIST                          R24 R25 1 [1]
      319 SETTABLEKS                       R24 R23 K27 ["backends"]
      321 DUPTABLE                         R24 K75 [{["eventName"] = "MKTUJ_LookComposerCreatorHubLink", ["lastUpdated"], ["description"] = "Marketplace look creator hub link opened.", ["links"] = "", ["backends"]}]
      322 NEWTABLE                         R25 0 3
      324 LOADN                            R26 2026
      325 LOADN                            R27 3
      326 LOADN                            R28 10
      327 SETLIST                          R25 R26 3 [1]
      329 SETTABLEKS                       R25 R24 K22 ["lastUpdated"]
      331 NEWTABLE                         R25 0 1
      333 LOADK                            R26 K29 ["RobloxTelemetryCounter"]
      334 SETLIST                          R25 R26 1 [1]
      336 SETTABLEKS                       R25 R24 K27 ["backends"]
      338 DUPCLOSURE                       R25 K76 [PROTO_0]
      339 DUPCLOSURE                       R26 K77 [PROTO_48]
      340 CAPTURE                          VAL R4
      341 CAPTURE                          VAL R6
      342 CAPTURE                          VAL R3
      343 CAPTURE                          VAL R10
      344 CAPTURE                          VAL R11
      345 CAPTURE                          VAL R9
      346 CAPTURE                          VAL R7
      347 CAPTURE                          VAL R25
      348 CAPTURE                          VAL R12
      349 CAPTURE                          VAL R13
      350 CAPTURE                          VAL R2
      351 CAPTURE                          VAL R1
      352 CAPTURE                          VAL R8
      353 CAPTURE                          VAL R14
      354 CAPTURE                          VAL R15
      355 CAPTURE                          VAL R16
      356 CAPTURE                          VAL R17
      357 CAPTURE                          VAL R18
      358 CAPTURE                          VAL R19
      359 CAPTURE                          VAL R20
      360 CAPTURE                          VAL R21
      361 CAPTURE                          VAL R22
      362 CAPTURE                          VAL R23
      363 CAPTURE                          VAL R24
      364 RETURN                           R26 1
