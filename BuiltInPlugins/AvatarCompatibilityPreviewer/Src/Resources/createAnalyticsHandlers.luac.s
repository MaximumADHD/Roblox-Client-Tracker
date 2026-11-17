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
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["AvatarCreationFailure"]
        2 DUPTABLE                         R5 K4 [{"user_id", "stage", "error_code"}]
        3 GETUPVAL                         R7 1
        4 NAMECALL                         R7 R7 K5 ["GetUserId"]
        6 CALL                             R7 1 -1
        7 FASTCALL                         TOSTRING ; [+2]
        8 GETIMPORT                        R6 K7 [tostring]
       10 CALL                             R6 -1 1
       11 SETTABLEKS                       R6 R5 K1 ["user_id"]
       13 SETTABLEKS                       R1 R5 K2 ["stage"]
       15 SETTABLEKS                       R2 R5 K3 ["error_code"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["AvatarCreationUsage"]
        2 DUPTABLE                         R6 K8 [{"user_id", "job_id", "place_id", "universe_id", "output_asset_ids", "job_config", "request_source"}]
        3 GETUPVAL                         R8 1
        4 NAMECALL                         R8 R8 K9 ["GetUserId"]
        6 CALL                             R8 1 -1
        7 FASTCALL                         TOSTRING ; [+2]
        8 GETIMPORT                        R7 K11 [tostring]
       10 CALL                             R7 -1 1
       11 SETTABLEKS                       R7 R6 K1 ["user_id"]
       13 SETTABLEKS                       R1 R6 K2 ["job_id"]
       15 GETIMPORT                        R8 K13 [game]
       17 GETTABLEKS                       R8 R8 K14 ["PlaceId"]
       19 FASTCALL1                        TOSTRING R8 ; [+2]
       20 GETIMPORT                        R7 K11 [tostring]
       22 CALL                             R7 1 1
       23 SETTABLEKS                       R7 R6 K3 ["place_id"]
       25 GETIMPORT                        R8 K13 [game]
       27 GETTABLEKS                       R8 R8 K15 ["GameId"]
       29 FASTCALL1                        TOSTRING R8 ; [+2]
       30 GETIMPORT                        R7 K11 [tostring]
       32 CALL                             R7 1 1
       33 SETTABLEKS                       R7 R6 K4 ["universe_id"]
       35 GETIMPORT                        R7 K18 [table.concat]
       37 MOVE                             R8 R2
       38 LOADK                            R9 K19 [","]
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K5 ["output_asset_ids"]
       42 GETUPVAL                         R7 2
       43 MOVE                             R9 R3
       44 NAMECALL                         R7 R7 K20 ["JSONEncode"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K6 ["job_config"]
       49 GETUPVAL                         R8 3
       50 CALL                             R8 0 1
       51 JUMPIFNOT                        R8 ; [+2]
       52 LOADK                            R7 K21 ["AvatarCompatibilityPreviewer"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R7
       55 SETTABLEKS                       R7 R6 K7 ["request_source"]
       57 CALL                             R4 2 0
       58 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["SetStage"]
        2 DUPTABLE                         R4 K2 [{"stageKey"}]
        3 SETTABLEKS                       R1 R4 K1 ["stageKey"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["TestInExperience"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["UnequipItem"]
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AutoSetupPassedValidation"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["ReportCounter"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AutoSetupFailedValidation"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["ReportCounter"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AutoSetupValidationDuration"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["ReportStats"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AutoSetupValidationErrorCount"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["ReportStats"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_37:
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogCounter"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_49:
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
      122 SETTABLEKS                       R6 R5 K23 ["sendAvatarCreationFailure"]
      124 NEWCLOSURE                       R6 P28
      125 CAPTURE                          VAL R1
      126 CAPTURE                          UPVAL U10
      127 CAPTURE                          UPVAL U11
      128 CAPTURE                          UPVAL U12
      129 SETTABLEKS                       R6 R5 K24 ["sendAvatarCreationUsage"]
      131 NEWCLOSURE                       R6 P29
      132 CAPTURE                          VAL R1
      133 SETTABLEKS                       R6 R5 K25 ["setStage"]
      135 NEWCLOSURE                       R6 P30
      136 CAPTURE                          VAL R1
      137 SETTABLEKS                       R6 R5 K26 ["testInExperience"]
      139 NEWCLOSURE                       R6 P31
      140 CAPTURE                          VAL R1
      141 CAPTURE                          UPVAL U7
      142 SETTABLEKS                       R6 R5 K27 ["unequipItem"]
      144 NEWCLOSURE                       R6 P32
      145 CAPTURE                          VAL R0
      146 SETTABLEKS                       R6 R5 K28 ["autoSetupPassedValidation"]
      148 NEWCLOSURE                       R6 P33
      149 CAPTURE                          VAL R0
      150 SETTABLEKS                       R6 R5 K29 ["autoSetupFailedValidation"]
      152 NEWCLOSURE                       R6 P34
      153 CAPTURE                          VAL R0
      154 SETTABLEKS                       R6 R5 K30 ["autoSetupValidationDuration"]
      156 NEWCLOSURE                       R6 P35
      157 CAPTURE                          VAL R0
      158 SETTABLEKS                       R6 R5 K31 ["autoSetupValidationErrorCount"]
      160 NEWCLOSURE                       R6 P36
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U1
      163 SETTABLEKS                       R6 R5 K32 ["autoSetupValidationError"]
      165 GETUPVAL                         R7 13
      166 CALL                             R7 0 1
      167 JUMPIFNOT                        R7 ; [+4]
      168 DUPCLOSURE                       R6 K33 [PROTO_38]
      169 CAPTURE                          UPVAL U2
      170 CAPTURE                          UPVAL U14
      171 JUMP                             ; [+1]
      172 LOADNIL                          R6
      173 SETTABLEKS                       R6 R5 K34 ["marketplaceGetItemsError"]
      175 GETUPVAL                         R7 13
      176 CALL                             R7 0 1
      177 JUMPIFNOT                        R7 ; [+4]
      178 DUPCLOSURE                       R6 K35 [PROTO_39]
      179 CAPTURE                          UPVAL U2
      180 CAPTURE                          UPVAL U15
      181 JUMP                             ; [+1]
      182 LOADNIL                          R6
      183 SETTABLEKS                       R6 R5 K36 ["marketplaceItemsAddedToPlugin"]
      185 GETUPVAL                         R7 13
      186 CALL                             R7 0 1
      187 JUMPIFNOT                        R7 ; [+4]
      188 DUPCLOSURE                       R6 K37 [PROTO_40]
      189 CAPTURE                          UPVAL U2
      190 CAPTURE                          UPVAL U16
      191 JUMP                             ; [+1]
      192 LOADNIL                          R6
      193 SETTABLEKS                       R6 R5 K38 ["marketplaceLookAccessFailure"]
      195 GETUPVAL                         R7 13
      196 CALL                             R7 0 1
      197 JUMPIFNOT                        R7 ; [+4]
      198 DUPCLOSURE                       R6 K39 [PROTO_41]
      199 CAPTURE                          UPVAL U2
      200 CAPTURE                          UPVAL U17
      201 JUMP                             ; [+1]
      202 LOADNIL                          R6
      203 SETTABLEKS                       R6 R5 K40 ["marketplaceManageableGroupsFailure"]
      205 GETUPVAL                         R7 13
      206 CALL                             R7 0 1
      207 JUMPIFNOT                        R7 ; [+4]
      208 DUPCLOSURE                       R6 K41 [PROTO_42]
      209 CAPTURE                          UPVAL U2
      210 CAPTURE                          UPVAL U18
      211 JUMP                             ; [+1]
      212 LOADNIL                          R6
      213 SETTABLEKS                       R6 R5 K42 ["marketplaceLookPreviewSuccess"]
      215 GETUPVAL                         R7 13
      216 CALL                             R7 0 1
      217 JUMPIFNOT                        R7 ; [+4]
      218 DUPCLOSURE                       R6 K43 [PROTO_43]
      219 CAPTURE                          UPVAL U2
      220 CAPTURE                          UPVAL U19
      221 JUMP                             ; [+1]
      222 LOADNIL                          R6
      223 SETTABLEKS                       R6 R5 K44 ["marketplaceLookValidationSuccess"]
      225 GETUPVAL                         R7 13
      226 CALL                             R7 0 1
      227 JUMPIFNOT                        R7 ; [+4]
      228 DUPCLOSURE                       R6 K45 [PROTO_44]
      229 CAPTURE                          UPVAL U2
      230 CAPTURE                          UPVAL U20
      231 JUMP                             ; [+1]
      232 LOADNIL                          R6
      233 SETTABLEKS                       R6 R5 K46 ["marketplaceLookCreationSuccess"]
      235 GETUPVAL                         R7 13
      236 CALL                             R7 0 1
      237 JUMPIFNOT                        R7 ; [+4]
      238 DUPCLOSURE                       R6 K47 [PROTO_45]
      239 CAPTURE                          UPVAL U2
      240 CAPTURE                          UPVAL U21
      241 JUMP                             ; [+1]
      242 LOADNIL                          R6
      243 SETTABLEKS                       R6 R5 K48 ["marketplaceLookPreviewError"]
      245 GETUPVAL                         R7 13
      246 CALL                             R7 0 1
      247 JUMPIFNOT                        R7 ; [+4]
      248 DUPCLOSURE                       R6 K49 [PROTO_46]
      249 CAPTURE                          UPVAL U2
      250 CAPTURE                          UPVAL U22
      251 JUMP                             ; [+1]
      252 LOADNIL                          R6
      253 SETTABLEKS                       R6 R5 K50 ["marketplaceLookValidationError"]
      255 GETUPVAL                         R7 13
      256 CALL                             R7 0 1
      257 JUMPIFNOT                        R7 ; [+4]
      258 DUPCLOSURE                       R6 K51 [PROTO_47]
      259 CAPTURE                          UPVAL U2
      260 CAPTURE                          UPVAL U23
      261 JUMP                             ; [+1]
      262 LOADNIL                          R6
      263 SETTABLEKS                       R6 R5 K52 ["marketplaceLookCreationError"]
      265 GETUPVAL                         R7 13
      266 CALL                             R7 0 1
      267 JUMPIFNOT                        R7 ; [+4]
      268 DUPCLOSURE                       R6 K53 [PROTO_48]
      269 CAPTURE                          UPVAL U2
      270 CAPTURE                          UPVAL U24
      271 JUMP                             ; [+1]
      272 LOADNIL                          R6
      273 SETTABLEKS                       R6 R5 K54 ["marketplaceLookCreatorHubLink"]
      275 RETURN                           R5 1

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
       63 GETTABLEKS                       R9 R9 K19 ["getFFlagAvatarPreviewerAvatarCreationUsageRequestSource"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K10 [require]
       68 GETTABLEKS                       R10 R0 K13 ["Src"]
       70 GETTABLEKS                       R10 R10 K17 ["Flags"]
       72 GETTABLEKS                       R10 R10 K20 ["getFFlagAvatarPreviewerLookComposer"]
       74 CALL                             R9 1 1
       75 DUPTABLE                         R10 K29 [{["eventName"] = "SBT_AvatarAutoSetupSucceeded", ["lastUpdated"], ["description"] = "Avatar auto setup succeeded.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
       76 NEWTABLE                         R11 0 3
       78 LOADN                            R12 2024
       79 LOADN                            R13 11
       80 LOADN                            R14 21
       81 SETLIST                          R11 R12 3 [1]
       83 SETTABLEKS                       R11 R10 K23 ["lastUpdated"]
       85 NEWTABLE                         R11 0 1
       87 LOADK                            R12 K30 ["RobloxTelemetryCounter"]
       88 SETLIST                          R11 R12 1 [1]
       90 SETTABLEKS                       R11 R10 K28 ["backends"]
       92 DUPTABLE                         R11 K33 [{["eventName"] = "SBT_AvatarAutoSetupFailed", ["lastUpdated"], ["description"] = "Avatar auto setup failed.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
       93 NEWTABLE                         R12 0 3
       95 LOADN                            R13 2025
       96 LOADN                            R14 2
       97 LOADN                            R15 13
       98 SETLIST                          R12 R13 3 [1]
      100 SETTABLEKS                       R12 R11 K23 ["lastUpdated"]
      102 NEWTABLE                         R12 0 1
      104 LOADK                            R13 K30 ["RobloxTelemetryCounter"]
      105 SETLIST                          R12 R13 1 [1]
      107 SETTABLEKS                       R12 R11 K28 ["backends"]
      109 DUPTABLE                         R12 K36 [{["eventName"] = "SBT_AvatarAutoSetupCanceled", ["lastUpdated"], ["description"] = "Avatar auto setup canceled.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
      110 NEWTABLE                         R13 0 3
      112 LOADN                            R14 2025
      113 LOADN                            R15 2
      114 LOADN                            R16 13
      115 SETLIST                          R13 R14 3 [1]
      117 SETTABLEKS                       R13 R12 K23 ["lastUpdated"]
      119 NEWTABLE                         R13 0 1
      121 LOADK                            R14 K30 ["RobloxTelemetryCounter"]
      122 SETLIST                          R13 R14 1 [1]
      124 SETTABLEKS                       R13 R12 K28 ["backends"]
      126 DUPTABLE                         R13 K39 [{["eventName"] = "SBT_AvatarPreviewerItemEquipped", ["lastUpdated"], ["description"] = "Avatar previewer equipped an avatar item for testing.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
      127 NEWTABLE                         R14 0 3
      129 LOADN                            R15 2024
      130 LOADN                            R16 11
      131 LOADN                            R17 21
      132 SETLIST                          R14 R15 3 [1]
      134 SETTABLEKS                       R14 R13 K23 ["lastUpdated"]
      136 NEWTABLE                         R14 0 1
      138 LOADK                            R15 K30 ["RobloxTelemetryCounter"]
      139 SETLIST                          R14 R15 1 [1]
      141 SETTABLEKS                       R14 R13 K28 ["backends"]
      143 DUPTABLE                         R14 K42 [{["eventName"] = "SBT_AvatarPreviewerPublished", ["lastUpdated"], ["description"] = "Avatar previewer published an asset to the marketplace.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
      144 NEWTABLE                         R15 0 3
      146 LOADN                            R16 2024
      147 LOADN                            R17 11
      148 LOADN                            R18 21
      149 SETLIST                          R15 R16 3 [1]
      151 SETTABLEKS                       R15 R14 K23 ["lastUpdated"]
      153 NEWTABLE                         R15 0 1
      155 LOADK                            R16 K30 ["RobloxTelemetryCounter"]
      156 SETLIST                          R15 R16 1 [1]
      158 SETTABLEKS                       R15 R14 K28 ["backends"]
      160 DUPTABLE                         R15 K46 [{["eventName"] = "MKTUJ_LookComposerGetItemsError", ["lastUpdated"], ["description"] = "getMarketplaceItems returned >= 1 error.", ["links"] = "", ["backends"]}]
      161 NEWTABLE                         R16 0 3
      163 LOADN                            R17 2026
      164 LOADN                            R18 3
      165 LOADN                            R19 10
      166 SETLIST                          R16 R17 3 [1]
      168 SETTABLEKS                       R16 R15 K23 ["lastUpdated"]
      170 NEWTABLE                         R16 0 1
      172 LOADK                            R17 K30 ["RobloxTelemetryCounter"]
      173 SETLIST                          R16 R17 1 [1]
      175 SETTABLEKS                       R16 R15 K28 ["backends"]
      177 DUPTABLE                         R16 K49 [{["eventName"] = "MKTUJ_LookComposerItemsAddedToPlugin", ["lastUpdated"], ["description"] = "Marketplace items imported into auto setup plugin.", ["links"] = "", ["backends"]}]
      178 NEWTABLE                         R17 0 3
      180 LOADN                            R18 2026
      181 LOADN                            R19 3
      182 LOADN                            R20 10
      183 SETLIST                          R17 R18 3 [1]
      185 SETTABLEKS                       R17 R16 K23 ["lastUpdated"]
      187 NEWTABLE                         R17 0 1
      189 LOADK                            R18 K30 ["RobloxTelemetryCounter"]
      190 SETLIST                          R17 R18 1 [1]
      192 SETTABLEKS                       R17 R16 K28 ["backends"]
      194 DUPTABLE                         R17 K52 [{["eventName"] = "MKTUJ_LookComposerFeatureAccessFailure", ["lastUpdated"], ["description"] = "Marketplace look feature access failure.", ["links"] = "", ["backends"]}]
      195 NEWTABLE                         R18 0 3
      197 LOADN                            R19 2026
      198 LOADN                            R20 3
      199 LOADN                            R21 10
      200 SETLIST                          R18 R19 3 [1]
      202 SETTABLEKS                       R18 R17 K23 ["lastUpdated"]
      204 NEWTABLE                         R18 0 1
      206 LOADK                            R19 K30 ["RobloxTelemetryCounter"]
      207 SETLIST                          R18 R19 1 [1]
      209 SETTABLEKS                       R18 R17 K28 ["backends"]
      211 DUPTABLE                         R18 K55 [{["eventName"] = "MKTUJ_LookComposerManageableGroupsFailure", ["lastUpdated"], ["description"] = "Marketplace manageable groups failure.", ["links"] = "", ["backends"]}]
      212 NEWTABLE                         R19 0 3
      214 LOADN                            R20 2026
      215 LOADN                            R21 3
      216 LOADN                            R22 10
      217 SETLIST                          R19 R20 3 [1]
      219 SETTABLEKS                       R19 R18 K23 ["lastUpdated"]
      221 NEWTABLE                         R19 0 1
      223 LOADK                            R20 K30 ["RobloxTelemetryCounter"]
      224 SETLIST                          R19 R20 1 [1]
      226 SETTABLEKS                       R19 R18 K28 ["backends"]
      228 DUPTABLE                         R19 K58 [{["eventName"] = "MKTUJ_LookComposerPreviewSuccess", ["lastUpdated"], ["description"] = "Marketplace look composer dialog preview success.", ["links"] = "", ["backends"]}]
      229 NEWTABLE                         R20 0 3
      231 LOADN                            R21 2026
      232 LOADN                            R22 3
      233 LOADN                            R23 10
      234 SETLIST                          R20 R21 3 [1]
      236 SETTABLEKS                       R20 R19 K23 ["lastUpdated"]
      238 NEWTABLE                         R20 0 1
      240 LOADK                            R21 K30 ["RobloxTelemetryCounter"]
      241 SETLIST                          R20 R21 1 [1]
      243 SETTABLEKS                       R20 R19 K28 ["backends"]
      245 DUPTABLE                         R20 K61 [{["eventName"] = "MKTUJ_LookComposerValidationSuccess", ["lastUpdated"], ["description"] = "Marketplace look composer dialog validation success.", ["links"] = "", ["backends"]}]
      246 NEWTABLE                         R21 0 3
      248 LOADN                            R22 2026
      249 LOADN                            R23 3
      250 LOADN                            R24 10
      251 SETLIST                          R21 R22 3 [1]
      253 SETTABLEKS                       R21 R20 K23 ["lastUpdated"]
      255 NEWTABLE                         R21 0 1
      257 LOADK                            R22 K30 ["RobloxTelemetryCounter"]
      258 SETLIST                          R21 R22 1 [1]
      260 SETTABLEKS                       R21 R20 K28 ["backends"]
      262 DUPTABLE                         R21 K64 [{["eventName"] = "MKTUJ_LookComposerCreationSuccess", ["lastUpdated"], ["description"] = "Marketplace look composer dialog creation success.", ["links"] = "", ["backends"]}]
      263 NEWTABLE                         R22 0 3
      265 LOADN                            R23 2026
      266 LOADN                            R24 3
      267 LOADN                            R25 10
      268 SETLIST                          R22 R23 3 [1]
      270 SETTABLEKS                       R22 R21 K23 ["lastUpdated"]
      272 NEWTABLE                         R22 0 1
      274 LOADK                            R23 K30 ["RobloxTelemetryCounter"]
      275 SETLIST                          R22 R23 1 [1]
      277 SETTABLEKS                       R22 R21 K28 ["backends"]
      279 DUPTABLE                         R22 K67 [{["eventName"] = "MKTUJ_LookComposerPreviewError", ["lastUpdated"], ["description"] = "Marketplace look composer dialog preview error.", ["links"] = "", ["backends"]}]
      280 NEWTABLE                         R23 0 3
      282 LOADN                            R24 2026
      283 LOADN                            R25 3
      284 LOADN                            R26 10
      285 SETLIST                          R23 R24 3 [1]
      287 SETTABLEKS                       R23 R22 K23 ["lastUpdated"]
      289 NEWTABLE                         R23 0 1
      291 LOADK                            R24 K30 ["RobloxTelemetryCounter"]
      292 SETLIST                          R23 R24 1 [1]
      294 SETTABLEKS                       R23 R22 K28 ["backends"]
      296 DUPTABLE                         R23 K70 [{["eventName"] = "MKTUJ_LookComposerValidationError", ["lastUpdated"], ["description"] = "Marketplace look composer dialog validation error.", ["links"] = "", ["backends"]}]
      297 NEWTABLE                         R24 0 3
      299 LOADN                            R25 2026
      300 LOADN                            R26 3
      301 LOADN                            R27 10
      302 SETLIST                          R24 R25 3 [1]
      304 SETTABLEKS                       R24 R23 K23 ["lastUpdated"]
      306 NEWTABLE                         R24 0 1
      308 LOADK                            R25 K30 ["RobloxTelemetryCounter"]
      309 SETLIST                          R24 R25 1 [1]
      311 SETTABLEKS                       R24 R23 K28 ["backends"]
      313 DUPTABLE                         R24 K73 [{["eventName"] = "MKTUJ_LookComposerCreationError", ["lastUpdated"], ["description"] = "Marketplace look composer dialog creation error.", ["links"] = "", ["backends"]}]
      314 NEWTABLE                         R25 0 3
      316 LOADN                            R26 2026
      317 LOADN                            R27 3
      318 LOADN                            R28 10
      319 SETLIST                          R25 R26 3 [1]
      321 SETTABLEKS                       R25 R24 K23 ["lastUpdated"]
      323 NEWTABLE                         R25 0 1
      325 LOADK                            R26 K30 ["RobloxTelemetryCounter"]
      326 SETLIST                          R25 R26 1 [1]
      328 SETTABLEKS                       R25 R24 K28 ["backends"]
      330 DUPTABLE                         R25 K76 [{["eventName"] = "MKTUJ_LookComposerCreatorHubLink", ["lastUpdated"], ["description"] = "Marketplace look creator hub link opened.", ["links"] = "", ["backends"]}]
      331 NEWTABLE                         R26 0 3
      333 LOADN                            R27 2026
      334 LOADN                            R28 3
      335 LOADN                            R29 10
      336 SETLIST                          R26 R27 3 [1]
      338 SETTABLEKS                       R26 R25 K23 ["lastUpdated"]
      340 NEWTABLE                         R26 0 1
      342 LOADK                            R27 K30 ["RobloxTelemetryCounter"]
      343 SETLIST                          R26 R27 1 [1]
      345 SETTABLEKS                       R26 R25 K28 ["backends"]
      347 DUPCLOSURE                       R26 K77 [PROTO_0]
      348 DUPCLOSURE                       R27 K78 [PROTO_49]
      349 CAPTURE                          VAL R4
      350 CAPTURE                          VAL R6
      351 CAPTURE                          VAL R3
      352 CAPTURE                          VAL R11
      353 CAPTURE                          VAL R12
      354 CAPTURE                          VAL R10
      355 CAPTURE                          VAL R7
      356 CAPTURE                          VAL R26
      357 CAPTURE                          VAL R13
      358 CAPTURE                          VAL R14
      359 CAPTURE                          VAL R2
      360 CAPTURE                          VAL R1
      361 CAPTURE                          VAL R8
      362 CAPTURE                          VAL R9
      363 CAPTURE                          VAL R15
      364 CAPTURE                          VAL R16
      365 CAPTURE                          VAL R17
      366 CAPTURE                          VAL R18
      367 CAPTURE                          VAL R19
      368 CAPTURE                          VAL R20
      369 CAPTURE                          VAL R21
      370 CAPTURE                          VAL R22
      371 CAPTURE                          VAL R23
      372 CAPTURE                          VAL R24
      373 CAPTURE                          VAL R25
      374 RETURN                           R27 1
