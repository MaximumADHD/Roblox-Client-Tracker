PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["AssetType"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["CopyEnabled"]
        8 JUMPIFNOT                        R3 ; [+9]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R5 R6 K3 ["getSafetyLearnMoreUrl"]
       13 CALL                             R5 0 -1
       14 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       16 CALL                             R3 -1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R3 R4 K5 ["isRestrictionAppealable"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K1 ["props"]
       24 GETTABLEKS                       R4 R5 K6 ["publishingRestriction"]
       26 CALL                             R3 1 1
       27 JUMPIFNOT                        R3 ; [+9]
       28 GETUPVAL                         R3 2
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R5 R6 K7 ["getAppealsPortalUrl"]
       32 CALL                             R5 0 -1
       33 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       35 CALL                             R3 -1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R3 5
       38 JUMPIFNOT                        R3 ; [+35]
       39 GETIMPORT                        R3 K10 [Enum.AssetType.Video]
       41 JUMPIFNOTEQ                      R2 R3 ; [+10]
       43 GETUPVAL                         R3 2
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R5 R6 K11 ["getVideoPrivacyLearnMoreUrl"]
       47 CALL                             R5 0 -1
       48 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       50 CALL                             R3 -1 0
       51 RETURN                           R0 0
       52 GETIMPORT                        R3 K13 [Enum.AssetType.Audio]
       54 JUMPIFNOTEQ                      R2 R3 ; [+10]
       56 GETUPVAL                         R3 2
       57 GETUPVAL                         R6 3
       58 GETTABLEKS                       R5 R6 K14 ["getAudioPrivacyLearnMoreUrl"]
       60 CALL                             R5 0 -1
       61 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       63 CALL                             R3 -1 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R3 2
       66 GETUPVAL                         R6 3
       67 GETTABLEKS                       R5 R6 K3 ["getSafetyLearnMoreUrl"]
       69 CALL                             R5 0 -1
       70 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       72 CALL                             R3 -1 0
       73 RETURN                           R0 0
       74 GETIMPORT                        R3 K13 [Enum.AssetType.Audio]
       76 JUMPIFNOTEQ                      R2 R3 ; [+10]
       78 GETUPVAL                         R3 2
       79 GETUPVAL                         R6 3
       80 GETTABLEKS                       R5 R6 K14 ["getAudioPrivacyLearnMoreUrl"]
       82 CALL                             R5 0 -1
       83 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       85 CALL                             R3 -1 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R3 2
       88 GETUPVAL                         R6 3
       89 GETTABLEKS                       R5 R6 K3 ["getSafetyLearnMoreUrl"]
       91 CALL                             R5 0 -1
       92 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       94 CALL                             R3 -1 0
       95 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AssetType"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R1 K2 ["CopyOn"]
        8 GETTABLEKS                       R3 R1 K3 ["Localization"]
       10 GETTABLEKS                       R4 R1 K4 ["IsAssetPublic"]
       12 GETIMPORT                        R5 K7 [Enum.AssetType.Audio]
       14 JUMPIFEQ                         R0 R5 ; [+7]
       16 GETUPVAL                         R5 2
       17 JUMPIFNOT                        R5 ; [+22]
       18 GETIMPORT                        R5 K9 [Enum.AssetType.Video]
       20 JUMPIFNOTEQ                      R0 R5 ; [+19]
       22 JUMPIF                           R4 ; [+17]
       23 GETUPVAL                         R5 1
       24 LOADN                            R6 5
       25 SETTABLEKS                       R6 R5 K10 ["warningCountdown"]
       27 GETUPVAL                         R5 1
       28 DUPTABLE                         R7 K12 [{"copyWarning"}]
       29 LOADK                            R10 K13 ["AssetConfigCopy"]
       30 LOADK                            R11 K14 ["MustShare"]
       31 NAMECALL                         R8 R3 K15 ["getText"]
       33 CALL                             R8 3 1
       34 SETTABLEKS                       R8 R7 K11 ["copyWarning"]
       36 NAMECALL                         R5 R5 K16 ["setState"]
       38 CALL                             R5 2 0
       39 JUMP                             ; [+4]
       40 GETTABLEKS                       R5 R1 K17 ["ToggleCallback"]
       42 NOT                              R6 R2
       43 CALL                             R5 1 0
       44 GETIMPORT                        R5 K19 [Enum.AssetType.Plugin]
       46 JUMPIFNOTEQ                      R0 R5 ; [+28]
       48 GETTABLEKS                       R5 R1 K20 ["canChangeSalesStatus"]
       50 GETTABLEKS                       R6 R1 K21 ["currentAssetStatus"]
       52 GETTABLEKS                       R7 R1 K22 ["onStatusChange"]
       54 JUMPIFNOT                        R5 ; [+20]
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R9 R10 K23 ["isOnSale"]
       58 MOVE                             R10 R6
       59 CALL                             R9 1 1
       60 JUMPIFNOT                        R9 ; [+6]
       61 GETUPVAL                         R10 4
       62 GETTABLEKS                       R9 R10 K24 ["ASSET_STATUS"]
       64 GETTABLEKS                       R8 R9 K25 ["OffSale"]
       66 JUMP                             ; [+5]
       67 GETUPVAL                         R10 4
       68 GETTABLEKS                       R9 R10 K24 ["ASSET_STATUS"]
       70 GETTABLEKS                       R8 R9 K26 ["OnSale"]
       72 MOVE                             R9 R7
       73 MOVE                             R10 R8
       74 CALL                             R9 1 0
       75 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["AssetType"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["distributionQuotaPolicy"]
       10 GETTABLEKS                       R3 R0 K3 ["Name"]
       12 GETTABLE                         R1 R2 R3
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETTABLEKS                       R2 R1 K4 ["link"]
       16 JUMPIF                           R2 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R4 R1 K4 ["link"]
       21 NAMECALL                         R2 R2 K5 ["OpenBrowserWindow"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["getVerificationDocumentationUrl"]
        4 CALL                             R2 0 -1
        5 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        5 GETTABLEKS                       R2 R1 K2 ["publishAsset"]
        7 NEWTABLE                         R3 0 0
        9 GETIMPORT                        R4 K4 [ipairs]
       11 MOVE                             R5 R0
       12 CALL                             R4 1 3
       13 FORGPREP_INEXT                   R4
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R9 R10 K5 ["createElement"]
       17 GETUPVAL                         R10 2
       18 DUPTABLE                         R11 K11 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
       19 GETIMPORT                        R12 K14 [Enum.AutomaticSize.XY]
       21 SETTABLEKS                       R12 R11 K6 ["AutomaticSize"]
       23 GETIMPORT                        R12 K16 [Enum.HorizontalAlignment.Left]
       25 SETTABLEKS                       R12 R11 K7 ["HorizontalAlignment"]
       27 GETIMPORT                        R12 K19 [Enum.FillDirection.Horizontal]
       29 SETTABLEKS                       R12 R11 K8 ["Layout"]
       31 SETTABLEKS                       R7 R11 K9 ["LayoutOrder"]
       33 LOADN                            R12 10
       34 SETTABLEKS                       R12 R11 K10 ["Spacing"]
       36 DUPTABLE                         R12 K22 [{"Bullet", "Text"}]
       37 GETUPVAL                         R14 1
       38 GETTABLEKS                       R13 R14 K5 ["createElement"]
       40 GETUPVAL                         R14 3
       41 DUPTABLE                         R15 K25 [{"AutomaticSize", "Text", "TextColor", "TextSize"}]
       42 GETIMPORT                        R16 K14 [Enum.AutomaticSize.XY]
       44 SETTABLEKS                       R16 R15 K6 ["AutomaticSize"]
       46 LOADK                            R16 K26 ["•"]
       47 SETTABLEKS                       R16 R15 K21 ["Text"]
       49 GETTABLEKS                       R16 R2 K27 ["verifyTextColor"]
       51 SETTABLEKS                       R16 R15 K23 ["TextColor"]
       53 GETUPVAL                         R17 4
       54 GETTABLEKS                       R16 R17 K28 ["FONT_SIZE_LARGE"]
       56 SETTABLEKS                       R16 R15 K24 ["TextSize"]
       58 CALL                             R13 2 1
       59 SETTABLEKS                       R13 R12 K20 ["Bullet"]
       61 GETUPVAL                         R14 1
       62 GETTABLEKS                       R13 R14 K5 ["createElement"]
       64 GETUPVAL                         R14 3
       65 DUPTABLE                         R15 K25 [{"AutomaticSize", "Text", "TextColor", "TextSize"}]
       66 GETIMPORT                        R16 K14 [Enum.AutomaticSize.XY]
       68 SETTABLEKS                       R16 R15 K6 ["AutomaticSize"]
       70 SETTABLEKS                       R8 R15 K21 ["Text"]
       72 GETTABLEKS                       R16 R2 K27 ["verifyTextColor"]
       74 SETTABLEKS                       R16 R15 K23 ["TextColor"]
       76 GETUPVAL                         R17 4
       77 GETTABLEKS                       R16 R17 K28 ["FONT_SIZE_LARGE"]
       79 SETTABLEKS                       R16 R15 K24 ["TextSize"]
       81 CALL                             R13 2 1
       82 SETTABLEKS                       R13 R12 K21 ["Text"]
       84 CALL                             R9 3 1
       85 SETTABLE                         R9 R3 R8
       86 FORGLOOP                         R4 2 [inext] ; [-73]
       88 RETURN                           R3 1

PROTO_5:
        0 LOADN                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["warningCountdown"]
        3 DUPTABLE                         R2 K2 [{"copyWarning"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K3 ["None"]
        7 SETTABLEKS                       R3 R2 K1 ["copyWarning"]
        9 SETTABLEKS                       R2 R0 K4 ["state"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 SETTABLEKS                       R2 R0 K5 ["onLearnMoreActivated"]
       20 NEWCLOSURE                       R2 P1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 SETTABLEKS                       R2 R0 K6 ["toggleCallback"]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R2 R3 K7 ["getAssetConfigDistributionQuotas"]
       31 CALL                             R2 0 1
       32 SETTABLEKS                       R2 R0 K8 ["distributionQuotaPolicy"]
       34 NEWCLOSURE                       R2 P2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U1
       37 SETTABLEKS                       R2 R0 K9 ["onQuotaLinkActivated"]
       39 DUPCLOSURE                       R2 K10 [PROTO_3]
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 SETTABLEKS                       R2 R0 K11 ["onClickVerifyLink"]
       44 NEWCLOSURE                       R2 P4
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U10
       50 SETTABLEKS                       R2 R0 K12 ["getListBullets"]
       52 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["copyWarning"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["None"]
        5 JUMPIFEQ                         R1 R2 ; [+21]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R2 K2 ["warningCountdown"]
       10 GETUPVAL                         R4 2
       11 SUB                              R3 R3 R4
       12 SETTABLEKS                       R3 R2 K2 ["warningCountdown"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K2 ["warningCountdown"]
       17 LOADN                            R3 0
       18 JUMPIFNOTLE                      R2 R3 ; [+8]
       20 DUPTABLE                         R2 K3 [{"copyWarning"}]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K1 ["None"]
       24 SETTABLEKS                       R3 R2 K0 ["copyWarning"]
       26 RETURN                           R2 1
       27 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K0 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R4 K1 [game]
        2 LOADK                            R6 K2 ["RunService"]
        3 NAMECALL                         R4 R4 K3 ["GetService"]
        5 CALL                             R4 2 1
        6 GETTABLEKS                       R3 R4 K4 ["Heartbeat"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R4 R3 K5 ["connect"]
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R0 K6 ["connection"]
       16 NAMECALL                         R4 R0 K7 ["updateDistributionQuotas"]
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["connection"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["IsAssetPublic"]
        3 NOT                              R1 R2
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["IsAssetPublic"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["IsAudio"]
       11 JUMPIF                           R2 ; [+6]
       12 GETUPVAL                         R2 2
       13 JUMPIFNOT                        R2 ; [+23]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["IsVideo"]
       17 JUMPIFNOT                        R2 ; [+19]
       18 GETTABLEKS                       R2 R0 K3 ["copyWarning"]
       20 GETUPVAL                         R3 3
       21 JUMPIFEQ                         R2 R3 ; [+15]
       23 JUMPIFNOT                        R1 ; [+13]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K4 ["CopyOn"]
       27 JUMPIFNOT                        R2 ; [+9]
       28 GETUPVAL                         R2 4
       29 LOADN                            R3 5
       30 SETTABLEKS                       R3 R2 K5 ["warningCountdown"]
       32 DUPTABLE                         R2 K6 [{"copyWarning"}]
       33 GETUPVAL                         R3 3
       34 SETTABLEKS                       R3 R2 K3 ["copyWarning"]
       36 RETURN                           R2 1
       37 GETUPVAL                         R3 5
       38 GETTABLEKS                       R2 R3 K3 ["copyWarning"]
       40 GETUPVAL                         R4 6
       41 GETTABLEKS                       R3 R4 K7 ["None"]
       43 JUMPIFEQ                         R2 R3 ; [+12]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R2 R3 K0 ["IsAssetPublic"]
       48 JUMPIFNOT                        R2 ; [+7]
       49 DUPTABLE                         R2 K6 [{"copyWarning"}]
       50 GETUPVAL                         R4 6
       51 GETTABLEKS                       R3 R4 K7 ["None"]
       53 SETTABLEKS                       R3 R2 K3 ["copyWarning"]
       55 RETURN                           R2 1
       56 LOADNIL                          R2
       57 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["AssetType"]
        4 GETTABLEKS                       R5 R3 K2 ["Localization"]
        6 LOADK                            R8 K3 ["AssetConfigCopy"]
        7 LOADK                            R9 K4 ["MustShare"]
        8 NAMECALL                         R6 R5 K5 ["getText"]
       10 CALL                             R6 3 1
       11 LOADK                            R9 K3 ["AssetConfigCopy"]
       12 LOADK                            R10 K6 ["PackageCantShareOnCreatorStore"]
       13 NAMECALL                         R7 R5 K5 ["getText"]
       15 CALL                             R7 3 1
       16 GETIMPORT                        R8 K9 [Enum.AssetType.Audio]
       18 JUMPIFEQ                         R4 R8 ; [+7]
       20 GETUPVAL                         R8 0
       21 JUMPIFNOT                        R8 ; [+15]
       22 GETIMPORT                        R8 K11 [Enum.AssetType.Video]
       24 JUMPIFNOTEQ                      R4 R8 ; [+12]
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U1
       34 NAMECALL                         R8 R0 K12 ["setState"]
       36 CALL                             R8 2 0
       37 GETTABLEKS                       R8 R1 K1 ["AssetType"]
       39 JUMPIFEQ                         R4 R8 ; [+4]
       41 NAMECALL                         R8 R0 K13 ["updateDistributionQuotas"]
       43 CALL                             R8 1 0
       44 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["duration"]
        2 JUMPIFEQKS                       R2 K1 ["Month"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+17]
        3 GETTABLEKS                       R3 R1 K1 ["quotas"]
        5 JUMPIFNOT                        R3 ; [+14]
        6 GETTABLEKS                       R4 R1 K1 ["quotas"]
        8 LENGTH                           R3 R4
        9 LOADN                            R4 0
       10 JUMPIFNOTLT                      R4 R3 ; [+9]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["find"]
       15 GETTABLEKS                       R3 R1 K1 ["quotas"]
       17 DUPCLOSURE                       R4 K3 [PROTO_12]
       18 CALL                             R2 2 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R2
       21 JUMPIFNOT                        R2 ; [+8]
       22 GETUPVAL                         R3 1
       23 DUPTABLE                         R5 K5 [{"distributionQuota"}]
       24 SETTABLEKS                       R2 R5 K4 ["distributionQuota"]
       26 NAMECALL                         R3 R3 K6 ["setState"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R3 1
       31 DUPTABLE                         R5 K5 [{"distributionQuota"}]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R6 R7 K7 ["None"]
       35 SETTABLEKS                       R6 R5 K4 ["distributionQuota"]
       37 NAMECALL                         R3 R3 K6 ["setState"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"distributionQuota"}]
        2 DUPTABLE                         R4 K4 [{"capacity", "usage"}]
        3 LOADN                            R5 0
        4 SETTABLEKS                       R5 R4 K2 ["capacity"]
        6 LOADN                            R5 0
        7 SETTABLEKS                       R5 R4 K3 ["usage"]
        9 SETTABLEKS                       R4 R3 K0 ["distributionQuota"]
       11 NAMECALL                         R1 R1 K5 ["setState"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K6 ["shouldDebugWarnings"]
       17 CALL                             R1 0 1
       18 JUMPIFNOT                        R1 ; [+10]
       19 GETIMPORT                        R1 K8 [warn]
       21 LOADK                            R3 K9 ["Error fetching asset quotas "]
       22 FASTCALL1                        TOSTRING R0 ; [+3]
       23 MOVE                             R5 R0
       24 GETIMPORT                        R4 K11 [tostring]
       26 CALL                             R4 1 1
       27 CONCAT                           R2 R3 R4
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Network"]
        4 GETTABLEKS                       R1 R2 K2 ["networkInterface"]
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K3 ["AssetType"]
       10 MOVE                             R3 R2
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETTABLEKS                       R4 R0 K4 ["distributionQuotaPolicy"]
       14 GETTABLEKS                       R5 R2 K5 ["Name"]
       16 GETTABLE                         R3 R4 R5
       17 JUMPIF                           R3 ; [+10]
       18 DUPTABLE                         R6 K7 [{"distributionQuota"}]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K8 ["None"]
       22 SETTABLEKS                       R7 R6 K6 ["distributionQuota"]
       24 NAMECALL                         R4 R0 K9 ["setState"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0
       28 MOVE                             R6 R2
       29 LOADK                            R7 K10 ["RateLimitCreatorMarketplaceDistribute"]
       30 NAMECALL                         R4 R1 K11 ["getCreatorMarketplaceQuotas"]
       32 CALL                             R4 3 1
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U0
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U2
       40 NAMECALL                         R4 R4 K12 ["andThen"]
       42 CALL                             R4 3 0
       43 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 LOADB                            R4 1
        5 LOADNIL                          R5
        6 GETTABLEKS                       R6 R2 K2 ["AssetType"]
        8 MOVE                             R7 R6
        9 JUMPIFNOT                        R7 ; [+5]
       10 GETTABLEKS                       R8 R0 K3 ["distributionQuotaPolicy"]
       12 GETTABLEKS                       R9 R6 K4 ["Name"]
       14 GETTABLE                         R7 R8 R9
       15 GETTABLEKS                       R8 R3 K5 ["distributionQuota"]
       17 JUMPIFNOT                        R7 ; [+101]
       18 JUMPIFNOT                        R8 ; [+100]
       19 GETTABLEKS                       R9 R8 K6 ["usage"]
       21 GETTABLEKS                       R10 R8 K7 ["capacity"]
       23 GETTABLEKS                       R12 R8 K9 ["expirationTime"]
       25 ORK                              R11 R12 K8 [""]
       26 GETTABLEKS                       R13 R0 K0 ["props"]
       28 GETTABLEKS                       R12 R13 K10 ["Localization"]
       30 NAMECALL                         R12 R12 K11 ["getLocale"]
       32 CALL                             R12 1 1
       33 LOADN                            R13 1
       34 JUMPIFNOTLT                      R10 R13 ; [+12]
       36 LOADB                            R4 0
       37 GETTABLEKS                       R13 R2 K10 ["Localization"]
       39 LOADK                            R15 K12 ["AssetConfigSharing"]
       40 LOADK                            R16 K13 ["DistributeCreatorStoreQuotaUnavailable"]
       41 NAMECALL                         R13 R13 K14 ["getText"]
       43 CALL                             R13 3 1
       44 MOVE                             R5 R13
       45 LOADB                            R1 0
       46 JUMP                             ; [+72]
       47 JUMPIFNOTEQKN                    R9 K15 [0] ; [+25]
       49 GETTABLEKS                       R13 R2 K10 ["Localization"]
       51 LOADK                            R15 K12 ["AssetConfigSharing"]
       52 LOADK                            R16 K16 ["DistributeMarketplaceQuotaUnused2"]
       53 DUPTABLE                         R17 K18 [{"capacity", "days"}]
       54 GETIMPORT                        R18 K21 [string.format]
       56 LOADK                            R19 K22 ["%d"]
       57 MOVE                             R20 R10
       58 CALL                             R18 2 1
       59 SETTABLEKS                       R18 R17 K7 ["capacity"]
       61 GETIMPORT                        R18 K21 [string.format]
       63 LOADK                            R19 K22 ["%d"]
       64 LOADN                            R20 30
       65 CALL                             R18 2 1
       66 SETTABLEKS                       R18 R17 K17 ["days"]
       68 NAMECALL                         R13 R13 K14 ["getText"]
       70 CALL                             R13 4 1
       71 MOVE                             R5 R13
       72 JUMP                             ; [+46]
       73 JUMPIFNOTLE                      R10 R9 ; [+19]
       75 LOADB                            R4 0
       76 GETUPVAL                         R13 0
       77 MOVE                             R14 R11
       78 LOADK                            R15 K23 ["MMM D, h:mmA"]
       79 MOVE                             R16 R12
       80 CALL                             R13 3 1
       81 GETTABLEKS                       R14 R2 K10 ["Localization"]
       83 LOADK                            R16 K12 ["AssetConfigSharing"]
       84 LOADK                            R17 K24 ["DistributeMarketplaceQuotaExhausted1"]
       85 DUPTABLE                         R18 K26 [{"dateTime"}]
       86 SETTABLEKS                       R13 R18 K25 ["dateTime"]
       88 NAMECALL                         R14 R14 K14 ["getText"]
       90 CALL                             R14 4 1
       91 MOVE                             R5 R14
       92 JUMP                             ; [+26]
       93 LOADN                            R13 0
       94 JUMPIFNOTLT                      R13 R9 ; [+24]
       96 GETUPVAL                         R13 0
       97 MOVE                             R14 R11
       98 LOADK                            R15 K27 ["MMM D"]
       99 MOVE                             R16 R12
      100 CALL                             R13 3 1
      101 GETTABLEKS                       R14 R2 K10 ["Localization"]
      103 LOADK                            R16 K12 ["AssetConfigSharing"]
      104 LOADK                            R17 K28 ["DistributeMarketplaceQuotaRemaining2"]
      105 DUPTABLE                         R18 K31 [{"remaining", "date"}]
      106 GETIMPORT                        R19 K21 [string.format]
      108 LOADK                            R20 K22 ["%d"]
      109 SUB                              R21 R10 R9
      110 CALL                             R19 2 1
      111 SETTABLEKS                       R19 R18 K29 ["remaining"]
      113 SETTABLEKS                       R13 R18 K30 ["date"]
      115 NAMECALL                         R14 R14 K14 ["getText"]
      117 CALL                             R14 4 1
      118 MOVE                             R5 R14
      119 MOVE                             R9 R4
      120 MOVE                             R10 R5
      121 MOVE                             R11 R1
      122 RETURN                           R9 3

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R0 K2 ["state"]
        8 GETTABLEKS                       R4 R2 K3 ["Title"]
       10 GETTABLEKS                       R5 R2 K4 ["LayoutOrder"]
       12 GETTABLEKS                       R6 R2 K5 ["AssetType"]
       14 GETTABLEKS                       R7 R2 K6 ["CopyOn"]
       16 GETTABLEKS                       R8 R2 K7 ["CopyEnabled"]
       18 GETTABLEKS                       R9 R2 K8 ["IsAssetPublic"]
       20 GETTABLEKS                       R10 R2 K9 ["isVerified"]
       22 GETTABLEKS                       R11 R2 K10 ["verificationSupportedTypes"]
       24 GETTABLEKS                       R12 R3 K11 ["copyWarning"]
       26 GETTABLEKS                       R13 R1 K12 ["publishAsset"]
       28 NOT                              R14 R10
       29 JUMPIFNOT                        R14 ; [+6]
       30 LENGTH                           R15 R11
       31 LOADN                            R16 0
       32 JUMPIFLT                         R16 R15 ; [+2]
       34 LOADB                            R14 0 +1
       35 LOADB                            R14 1
       36 LOADNIL                          R15
       37 JUMPIFNOT                        R6 ; [+11]
       38 JUMPIFNOT                        R8 ; [+10]
       39 LOADNIL                          R16
       40 MOVE                             R19 R14
       41 NAMECALL                         R17 R0 K13 ["getDistributionQuotaStatus"]
       43 CALL                             R17 2 3
       44 MOVE                             R16 R17
       45 MOVE                             R15 R18
       46 MOVE                             R14 R19
       47 JUMPIF                           R16 ; [+1]
       48 MOVE                             R8 R7
       49 GETUPVAL                         R16 0
       50 JUMPIF                           R16 ; [+8]
       51 GETUPVAL                         R16 1
       52 JUMPIFNOT                        R16 ; [+6]
       53 GETUPVAL                         R16 2
       54 GETTABLEKS                       R17 R2 K14 ["IXP"]
       56 LOADK                            R18 K15 ["MarketplaceModelsAsPackages"]
       57 LOADK                            R19 K16 ["MarketplaceModelsAsPackagesEnabled"]
       58 CALL                             R16 3 1
       59 JUMPIFNOT                        R16 ; [+12]
       60 GETIMPORT                        R18 K19 [Enum.AssetType.Model]
       62 JUMPIFNOTEQ                      R6 R18 ; [+9]
       64 GETTABLEKS                       R17 R2 K20 ["Localization"]
       66 LOADK                            R19 K21 ["AssetConfigCopy"]
       67 LOADK                            R20 K22 ["DistributeToCreatorStoreAsPackageWarning"]
       68 NAMECALL                         R17 R17 K23 ["getText"]
       70 CALL                             R17 3 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R17
       73 MOVE                             R18 R15
       74 JUMPIFNOT                        R18 ; [+4]
       75 JUMPIFNOTEQKS                    R15 K24 [""] ; [+2]
       77 LOADB                            R18 0 +1
       78 LOADB                            R18 1
       79 LOADNIL                          R19
       80 LOADNIL                          R20
       81 LOADNIL                          R21
       82 JUMPIF                           R10 ; [+1]
       83 LOADB                            R18 0
       84 GETTABLEKS                       R22 R2 K20 ["Localization"]
       86 LOADK                            R24 K25 ["AssetConfigSharing"]
       87 LOADK                            R25 K26 ["VerifyYourAccount"]
       88 NAMECALL                         R22 R22 K23 ["getText"]
       90 CALL                             R22 3 1
       91 MOVE                             R19 R22
       92 LOADNIL                          R22
       93 JUMPIFNOT                        R15 ; [+28]
       94 LOADK                            R23 K27 ["<font color=\"#"]
       95 GETUPVAL                         R28 3
       96 GETTABLEKS                       R29 R13 K28 ["quotaTextColor"]
       98 NAMECALL                         R29 R29 K29 ["ToHex"]
      100 CALL                             R29 1 -1
      101 CALL                             R28 -1 1
      102 MOVE                             R24 R28
      103 LOADK                            R25 K30 ["\">"]
      104 GETUPVAL                         R28 3
      105 MOVE                             R29 R15
      106 CALL                             R28 1 1
      107 MOVE                             R26 R28
      108 LOADK                            R27 K31 ["</font>"]
      109 CONCAT                           R22 R23 R27
      110 GETTABLEKS                       R23 R2 K20 ["Localization"]
      112 LOADK                            R25 K25 ["AssetConfigSharing"]
      113 LOADK                            R26 K32 ["VerifyCurrentLimit"]
      114 DUPTABLE                         R27 K34 [{"quotaText"}]
      115 ORK                              R28 R22 K24 [""]
      116 SETTABLEKS                       R28 R27 K33 ["quotaText"]
      118 NAMECALL                         R23 R23 K23 ["getText"]
      120 CALL                             R23 4 1
      121 MOVE                             R21 R23
      122 GETTABLEKS                       R23 R2 K20 ["Localization"]
      124 LOADK                            R25 K25 ["AssetConfigSharing"]
      125 LOADK                            R26 K35 ["VerifyReason1"]
      126 NAMECALL                         R23 R23 K23 ["getText"]
      128 CALL                             R23 3 1
      129 GETTABLEKS                       R24 R2 K20 ["Localization"]
      131 LOADK                            R26 K25 ["AssetConfigSharing"]
      132 LOADK                            R27 K36 ["VerifyReason2CreatorStore"]
      133 NAMECALL                         R24 R24 K23 ["getText"]
      135 CALL                             R24 3 1
      136 GETTABLEKS                       R25 R0 K37 ["getListBullets"]
      138 NEWTABLE                         R26 0 2
      140 MOVE                             R27 R23
      141 MOVE                             R28 R24
      142 SETLIST                          R26 R27 2 [1]
      144 CALL                             R25 1 1
      145 MOVE                             R20 R25
      146 GETTABLEKS                       R25 R2 K20 ["Localization"]
      148 LOADK                            R28 K21 ["AssetConfigCopy"]
      149 LOADK                            R29 K38 ["DistributeAgreement"]
      150 NAMECALL                         R26 R25 K23 ["getText"]
      152 CALL                             R26 3 1
      153 LOADK                            R29 K39 ["General"]
      154 LOADK                            R30 K40 ["LearnMore"]
      155 NAMECALL                         R27 R25 K23 ["getText"]
      157 CALL                             R27 3 1
      158 GETUPVAL                         R29 4
      159 GETTABLEKS                       R28 R29 K41 ["getDisplayTextForRestriction"]
      161 GETTABLEKS                       R29 R2 K42 ["publishingRestriction"]
      163 MOVE                             R30 R25
      164 CALL                             R28 2 1
      165 JUMPIFEQKNIL                     R28 ; [+18]
      167 ORK                              R26 R28 K24 [""]
      168 GETUPVAL                         R30 4
      169 GETTABLEKS                       R29 R30 K43 ["isRestrictionAppealable"]
      171 GETTABLEKS                       R31 R0 K0 ["props"]
      173 GETTABLEKS                       R30 R31 K42 ["publishingRestriction"]
      175 CALL                             R29 1 1
      176 JUMPIFNOT                        R29 ; [+7]
      177 LOADK                            R31 K21 ["AssetConfigCopy"]
      178 LOADK                            R32 K44 ["SubmitAppeal"]
      179 NAMECALL                         R29 R25 K23 ["getText"]
      181 CALL                             R29 3 1
      182 MOVE                             R27 R29
      183 JUMP                             ; [0]
      184 GETUPVAL                         R31 5
      185 GETTABLEKS                       R30 R31 K45 ["None"]
      187 JUMPIFNOTEQ                      R12 R30 ; [+2]
      189 LOADB                            R29 0 +1
      190 LOADB                            R29 1
      191 GETIMPORT                        R30 K47 [Enum.AssetType.Audio]
      193 JUMPIFEQ                         R6 R30 ; [+7]
      195 GETUPVAL                         R30 6
      196 JUMPIFNOT                        R30 ; [+21]
      197 GETIMPORT                        R30 K49 [Enum.AssetType.Video]
      199 JUMPIFNOTEQ                      R6 R30 ; [+18]
      201 GETTABLEKS                       R25 R2 K20 ["Localization"]
      203 JUMPIFNOT                        R9 ; [+7]
      204 LOADK                            R32 K21 ["AssetConfigCopy"]
      205 LOADK                            R33 K38 ["DistributeAgreement"]
      206 NAMECALL                         R30 R25 K23 ["getText"]
      208 CALL                             R30 3 1
      209 MOVE                             R26 R30
      210 JUMP                             ; [+7]
      211 LOADK                            R32 K21 ["AssetConfigCopy"]
      212 LOADK                            R33 K50 ["TemporarilyDisabledMessageOnCreatorStore"]
      213 NAMECALL                         R30 R25 K23 ["getText"]
      215 CALL                             R30 3 1
      216 MOVE                             R26 R30
      217 LOADB                            R14 0
      218 GETUPVAL                         R31 7
      219 GETTABLEKS                       R30 R31 K51 ["new"]
      221 CALL                             R30 0 1
      222 GETUPVAL                         R32 8
      223 GETTABLEKS                       R31 R32 K52 ["createElement"]
      225 LOADK                            R32 K53 ["Frame"]
      226 DUPTABLE                         R33 K57 [{"AutomaticSize", "BackgroundTransparency", "Size", "LayoutOrder"}]
      227 GETIMPORT                        R34 K59 [Enum.AutomaticSize.Y]
      229 SETTABLEKS                       R34 R33 K54 ["AutomaticSize"]
      231 LOADN                            R34 1
      232 SETTABLEKS                       R34 R33 K55 ["BackgroundTransparency"]
      234 GETIMPORT                        R34 K61 [UDim2.new]
      236 LOADN                            R35 1
      237 LOADN                            R36 0
      238 LOADN                            R37 0
      239 LOADN                            R38 54
      240 CALL                             R34 4 1
      241 SETTABLEKS                       R34 R33 K56 ["Size"]
      243 SETTABLEKS                       R5 R33 K4 ["LayoutOrder"]
      245 DUPTABLE                         R34 K64 [{"UIListLayout", "Title", "RightFrame"}]
      246 GETUPVAL                         R36 8
      247 GETTABLEKS                       R35 R36 K52 ["createElement"]
      249 LOADK                            R36 K62 ["UIListLayout"]
      250 DUPTABLE                         R37 K70 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      251 GETIMPORT                        R38 K72 [Enum.FillDirection.Horizontal]
      253 SETTABLEKS                       R38 R37 K65 ["FillDirection"]
      255 GETIMPORT                        R38 K74 [Enum.HorizontalAlignment.Left]
      257 SETTABLEKS                       R38 R37 K66 ["HorizontalAlignment"]
      259 GETIMPORT                        R38 K76 [Enum.VerticalAlignment.Top]
      261 SETTABLEKS                       R38 R37 K67 ["VerticalAlignment"]
      263 GETIMPORT                        R38 K77 [Enum.SortOrder.LayoutOrder]
      265 SETTABLEKS                       R38 R37 K68 ["SortOrder"]
      267 GETIMPORT                        R38 K79 [UDim.new]
      269 LOADN                            R39 0
      270 LOADN                            R40 0
      271 CALL                             R38 2 1
      272 SETTABLEKS                       R38 R37 K69 ["Padding"]
      274 CALL                             R35 2 1
      275 SETTABLEKS                       R35 R34 K62 ["UIListLayout"]
      277 GETUPVAL                         R36 8
      278 GETTABLEKS                       R35 R36 K52 ["createElement"]
      280 LOADK                            R36 K80 ["TextLabel"]
      281 DUPTABLE                         R37 K88 [{"AutomaticSize", "BackgroundTransparency", "Size", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "TextWrapped", "Font", "LayoutOrder"}]
      282 GETIMPORT                        R38 K59 [Enum.AutomaticSize.Y]
      284 SETTABLEKS                       R38 R37 K54 ["AutomaticSize"]
      286 LOADN                            R38 1
      287 SETTABLEKS                       R38 R37 K55 ["BackgroundTransparency"]
      289 GETIMPORT                        R38 K61 [UDim2.new]
      291 LOADN                            R39 0
      292 GETUPVAL                         R41 9
      293 GETTABLEKS                       R40 R41 K89 ["TITLE_GUTTER_WIDTH"]
      295 LOADN                            R41 0
      296 LOADN                            R42 40
      297 CALL                             R38 4 1
      298 SETTABLEKS                       R38 R37 K56 ["Size"]
      300 SETTABLEKS                       R4 R37 K81 ["Text"]
      302 GETIMPORT                        R38 K90 [Enum.TextXAlignment.Left]
      304 SETTABLEKS                       R38 R37 K82 ["TextXAlignment"]
      306 GETIMPORT                        R38 K91 [Enum.TextYAlignment.Top]
      308 SETTABLEKS                       R38 R37 K83 ["TextYAlignment"]
      310 GETUPVAL                         R39 10
      311 GETTABLEKS                       R38 R39 K92 ["FONT_SIZE_TITLE"]
      313 SETTABLEKS                       R38 R37 K84 ["TextSize"]
      315 GETTABLEKS                       R38 R13 K93 ["titleTextColor"]
      317 SETTABLEKS                       R38 R37 K85 ["TextColor3"]
      319 LOADB                            R38 1
      320 SETTABLEKS                       R38 R37 K86 ["TextWrapped"]
      322 GETUPVAL                         R39 10
      323 GETTABLEKS                       R38 R39 K94 ["FONT"]
      325 SETTABLEKS                       R38 R37 K87 ["Font"]
      327 LOADN                            R38 1
      328 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      330 CALL                             R35 2 1
      331 SETTABLEKS                       R35 R34 K3 ["Title"]
      333 GETUPVAL                         R36 8
      334 GETTABLEKS                       R35 R36 K52 ["createElement"]
      336 LOADK                            R36 K53 ["Frame"]
      337 DUPTABLE                         R37 K57 [{"AutomaticSize", "BackgroundTransparency", "Size", "LayoutOrder"}]
      338 GETIMPORT                        R38 K59 [Enum.AutomaticSize.Y]
      340 SETTABLEKS                       R38 R37 K54 ["AutomaticSize"]
      342 LOADN                            R38 1
      343 SETTABLEKS                       R38 R37 K55 ["BackgroundTransparency"]
      345 GETIMPORT                        R38 K61 [UDim2.new]
      347 LOADN                            R39 1
      348 GETUPVAL                         R42 9
      349 GETTABLEKS                       R41 R42 K89 ["TITLE_GUTTER_WIDTH"]
      351 MINUS                            R40 R41
      352 LOADN                            R41 0
      353 LOADN                            R42 0
      354 CALL                             R38 4 1
      355 SETTABLEKS                       R38 R37 K56 ["Size"]
      357 LOADN                            R38 2
      358 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      360 DUPTABLE                         R38 K102 [{"UIPadding", "UIListLayout", "ToggleButtonContainer", "VerifyNotice", "DistributeToMarketplace", "QuotaInfo", "TipsLabel", "LinkButton"}]
      361 GETUPVAL                         R40 8
      362 GETTABLEKS                       R39 R40 K52 ["createElement"]
      364 LOADK                            R40 K95 ["UIPadding"]
      365 DUPTABLE                         R41 K107 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      366 GETIMPORT                        R42 K79 [UDim.new]
      368 LOADN                            R43 0
      369 LOADN                            R44 25
      370 CALL                             R42 2 1
      371 SETTABLEKS                       R42 R41 K103 ["PaddingBottom"]
      373 GETIMPORT                        R42 K79 [UDim.new]
      375 LOADN                            R43 0
      376 LOADN                            R44 0
      377 CALL                             R42 2 1
      378 SETTABLEKS                       R42 R41 K104 ["PaddingLeft"]
      380 GETIMPORT                        R42 K79 [UDim.new]
      382 LOADN                            R43 0
      383 LOADN                            R44 0
      384 CALL                             R42 2 1
      385 SETTABLEKS                       R42 R41 K105 ["PaddingRight"]
      387 GETIMPORT                        R42 K79 [UDim.new]
      389 LOADN                            R43 0
      390 LOADN                            R44 0
      391 CALL                             R42 2 1
      392 SETTABLEKS                       R42 R41 K106 ["PaddingTop"]
      394 CALL                             R39 2 1
      395 SETTABLEKS                       R39 R38 K95 ["UIPadding"]
      397 GETUPVAL                         R40 8
      398 GETTABLEKS                       R39 R40 K52 ["createElement"]
      400 LOADK                            R40 K62 ["UIListLayout"]
      401 DUPTABLE                         R41 K108 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      402 GETIMPORT                        R42 K77 [Enum.SortOrder.LayoutOrder]
      404 SETTABLEKS                       R42 R41 K68 ["SortOrder"]
      406 GETIMPORT                        R42 K110 [Enum.FillDirection.Vertical]
      408 SETTABLEKS                       R42 R41 K65 ["FillDirection"]
      410 GETIMPORT                        R42 K74 [Enum.HorizontalAlignment.Left]
      412 SETTABLEKS                       R42 R41 K66 ["HorizontalAlignment"]
      414 GETIMPORT                        R42 K76 [Enum.VerticalAlignment.Top]
      416 SETTABLEKS                       R42 R41 K67 ["VerticalAlignment"]
      418 GETIMPORT                        R42 K79 [UDim.new]
      420 LOADN                            R43 0
      421 LOADN                            R44 0
      422 CALL                             R42 2 1
      423 SETTABLEKS                       R42 R41 K69 ["Padding"]
      425 CALL                             R39 2 1
      426 SETTABLEKS                       R39 R38 K62 ["UIListLayout"]
      428 GETUPVAL                         R40 8
      429 GETTABLEKS                       R39 R40 K52 ["createElement"]
      431 GETUPVAL                         R40 11
      432 DUPTABLE                         R41 K113 [{"BackgroundTransparency", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Size", "Spacing", "VerticalAlignment"}]
      433 LOADN                            R42 1
      434 SETTABLEKS                       R42 R41 K55 ["BackgroundTransparency"]
      436 GETIMPORT                        R42 K74 [Enum.HorizontalAlignment.Left]
      438 SETTABLEKS                       R42 R41 K66 ["HorizontalAlignment"]
      440 GETIMPORT                        R42 K72 [Enum.FillDirection.Horizontal]
      442 SETTABLEKS                       R42 R41 K111 ["Layout"]
      444 NAMECALL                         R42 R30 K114 ["getNextOrder"]
      446 CALL                             R42 1 1
      447 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      449 DUPTABLE                         R42 K116 [{"Bottom"}]
      450 LOADN                            R43 10
      451 SETTABLEKS                       R43 R42 K115 ["Bottom"]
      453 SETTABLEKS                       R42 R41 K69 ["Padding"]
      455 GETIMPORT                        R42 K61 [UDim2.new]
      457 LOADN                            R43 1
      458 LOADN                            R44 0
      459 LOADN                            R45 0
      460 LOADN                            R46 34
      461 CALL                             R42 4 1
      462 SETTABLEKS                       R42 R41 K56 ["Size"]
      464 LOADN                            R42 10
      465 SETTABLEKS                       R42 R41 K112 ["Spacing"]
      467 GETIMPORT                        R42 K76 [Enum.VerticalAlignment.Top]
      469 SETTABLEKS                       R42 R41 K67 ["VerticalAlignment"]
      471 DUPTABLE                         R42 K119 [{"ToggleButton", "ErrorText"}]
      472 GETUPVAL                         R44 8
      473 GETTABLEKS                       R43 R44 K52 ["createElement"]
      475 GETUPVAL                         R44 12
      476 DUPTABLE                         R45 K123 [{"Disabled", "LayoutOrder", "OnClick", "Selected", "Size"}]
      477 NOT                              R46 R8
      478 SETTABLEKS                       R46 R45 K120 ["Disabled"]
      480 LOADN                            R46 1
      481 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      483 GETTABLEKS                       R46 R0 K124 ["toggleCallback"]
      485 SETTABLEKS                       R46 R45 K121 ["OnClick"]
      487 SETTABLEKS                       R7 R45 K122 ["Selected"]
      489 GETIMPORT                        R46 K61 [UDim2.new]
      491 LOADN                            R47 0
      492 LOADN                            R48 40
      493 LOADN                            R49 0
      494 LOADN                            R50 24
      495 CALL                             R46 4 1
      496 SETTABLEKS                       R46 R45 K56 ["Size"]
      498 CALL                             R43 2 1
      499 SETTABLEKS                       R43 R42 K117 ["ToggleButton"]
      501 JUMPIFNOT                        R29 ; [+55]
      502 GETUPVAL                         R44 8
      503 GETTABLEKS                       R43 R44 K52 ["createElement"]
      505 LOADK                            R44 K80 ["TextLabel"]
      506 DUPTABLE                         R45 K125 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "Text", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment", "TextSize"}]
      507 GETIMPORT                        R46 K127 [Enum.AutomaticSize.XY]
      509 SETTABLEKS                       R46 R45 K54 ["AutomaticSize"]
      511 LOADN                            R46 2
      512 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      514 LOADN                            R46 1
      515 SETTABLEKS                       R46 R45 K55 ["BackgroundTransparency"]
      517 GETUPVAL                         R47 10
      518 GETTABLEKS                       R46 R47 K94 ["FONT"]
      520 SETTABLEKS                       R46 R45 K87 ["Font"]
      522 GETIMPORT                        R46 K61 [UDim2.new]
      524 LOADN                            R47 1
      525 LOADN                            R48 0
      526 LOADN                            R49 0
      527 LOADN                            R50 0
      528 CALL                             R46 4 1
      529 SETTABLEKS                       R46 R45 K56 ["Size"]
      531 SETTABLEKS                       R12 R45 K81 ["Text"]
      533 LOADB                            R46 1
      534 SETTABLEKS                       R46 R45 K86 ["TextWrapped"]
      536 GETTABLEKS                       R47 R1 K128 ["assetConfig"]
      538 GETTABLEKS                       R46 R47 K129 ["errorColor"]
      540 SETTABLEKS                       R46 R45 K85 ["TextColor3"]
      542 GETIMPORT                        R46 K90 [Enum.TextXAlignment.Left]
      544 SETTABLEKS                       R46 R45 K82 ["TextXAlignment"]
      546 GETIMPORT                        R46 K131 [Enum.TextYAlignment.Center]
      548 SETTABLEKS                       R46 R45 K83 ["TextYAlignment"]
      550 GETUPVAL                         R47 10
      551 GETTABLEKS                       R46 R47 K132 ["FONT_SIZE_LARGE"]
      553 SETTABLEKS                       R46 R45 K84 ["TextSize"]
      555 CALL                             R43 2 1
      556 JUMP                             ; [+1]
      557 LOADNIL                          R43
      558 SETTABLEKS                       R43 R42 K118 ["ErrorText"]
      560 CALL                             R39 3 1
      561 SETTABLEKS                       R39 R38 K96 ["ToggleButtonContainer"]
      563 JUMPIFNOT                        R14 ; [+138]
      564 GETUPVAL                         R40 8
      565 GETTABLEKS                       R39 R40 K52 ["createElement"]
      567 GETUPVAL                         R40 11
      568 DUPTABLE                         R41 K133 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding"}]
      569 GETIMPORT                        R42 K127 [Enum.AutomaticSize.XY]
      571 SETTABLEKS                       R42 R41 K54 ["AutomaticSize"]
      573 GETIMPORT                        R42 K74 [Enum.HorizontalAlignment.Left]
      575 SETTABLEKS                       R42 R41 K66 ["HorizontalAlignment"]
      577 GETIMPORT                        R42 K110 [Enum.FillDirection.Vertical]
      579 SETTABLEKS                       R42 R41 K111 ["Layout"]
      581 NAMECALL                         R42 R30 K114 ["getNextOrder"]
      583 CALL                             R42 1 1
      584 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      586 DUPTABLE                         R42 K134 [{"Top", "Bottom"}]
      587 LOADN                            R43 5
      588 SETTABLEKS                       R43 R42 K75 ["Top"]
      590 LOADN                            R43 5
      591 SETTABLEKS                       R43 R42 K115 ["Bottom"]
      593 SETTABLEKS                       R42 R41 K69 ["Padding"]
      595 DUPTABLE                         R42 K138 [{"VerifyNoticeHeader", "VerifyReasonList", "CurrentLimitText"}]
      596 GETUPVAL                         R44 8
      597 GETTABLEKS                       R43 R44 K52 ["createElement"]
      599 GETUPVAL                         R44 13
      600 DUPTABLE                         R45 K139 [{"Text", "OnClick", "LayoutOrder"}]
      601 SETTABLEKS                       R19 R45 K81 ["Text"]
      603 GETTABLEKS                       R46 R0 K140 ["onClickVerifyLink"]
      605 SETTABLEKS                       R46 R45 K121 ["OnClick"]
      607 NAMECALL                         R46 R30 K114 ["getNextOrder"]
      609 CALL                             R46 1 1
      610 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      612 CALL                             R43 2 1
      613 SETTABLEKS                       R43 R42 K135 ["VerifyNoticeHeader"]
      615 GETUPVAL                         R44 8
      616 GETTABLEKS                       R43 R44 K52 ["createElement"]
      618 GETUPVAL                         R44 11
      619 DUPTABLE                         R45 K133 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding"}]
      620 GETIMPORT                        R46 K127 [Enum.AutomaticSize.XY]
      622 SETTABLEKS                       R46 R45 K54 ["AutomaticSize"]
      624 GETIMPORT                        R46 K74 [Enum.HorizontalAlignment.Left]
      626 SETTABLEKS                       R46 R45 K66 ["HorizontalAlignment"]
      628 GETIMPORT                        R46 K110 [Enum.FillDirection.Vertical]
      630 SETTABLEKS                       R46 R45 K111 ["Layout"]
      632 NAMECALL                         R46 R30 K114 ["getNextOrder"]
      634 CALL                             R46 1 1
      635 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      637 DUPTABLE                         R46 K141 [{"Left"}]
      638 LOADN                            R47 10
      639 SETTABLEKS                       R47 R46 K73 ["Left"]
      641 SETTABLEKS                       R46 R45 K69 ["Padding"]
      643 MOVE                             R46 R20
      644 CALL                             R43 3 1
      645 SETTABLEKS                       R43 R42 K136 ["VerifyReasonList"]
      647 JUMPIFNOT                        R15 ; [+49]
      648 GETUPVAL                         R44 8
      649 GETTABLEKS                       R43 R44 K52 ["createElement"]
      651 GETUPVAL                         R44 11
      652 DUPTABLE                         R45 K142 [{"AutomaticSize", "LayoutOrder", "Padding"}]
      653 GETIMPORT                        R46 K127 [Enum.AutomaticSize.XY]
      655 SETTABLEKS                       R46 R45 K54 ["AutomaticSize"]
      657 NAMECALL                         R46 R30 K114 ["getNextOrder"]
      659 CALL                             R46 1 1
      660 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      662 DUPTABLE                         R46 K141 [{"Left"}]
      663 LOADN                            R47 15
      664 SETTABLEKS                       R47 R46 K73 ["Left"]
      666 SETTABLEKS                       R46 R45 K69 ["Padding"]
      668 DUPTABLE                         R46 K143 [{"Text"}]
      669 GETUPVAL                         R48 8
      670 GETTABLEKS                       R47 R48 K52 ["createElement"]
      672 GETUPVAL                         R48 14
      673 DUPTABLE                         R49 K146 [{"AutomaticSize", "RichText", "Text", "TextColor", "TextSize"}]
      674 GETIMPORT                        R50 K127 [Enum.AutomaticSize.XY]
      676 SETTABLEKS                       R50 R49 K54 ["AutomaticSize"]
      678 LOADB                            R50 1
      679 SETTABLEKS                       R50 R49 K144 ["RichText"]
      681 SETTABLEKS                       R21 R49 K81 ["Text"]
      683 GETTABLEKS                       R50 R13 K147 ["verifyTextColor"]
      685 SETTABLEKS                       R50 R49 K145 ["TextColor"]
      687 GETUPVAL                         R51 10
      688 GETTABLEKS                       R50 R51 K132 ["FONT_SIZE_LARGE"]
      690 SETTABLEKS                       R50 R49 K84 ["TextSize"]
      692 CALL                             R47 2 1
      693 SETTABLEKS                       R47 R46 K81 ["Text"]
      695 CALL                             R43 3 1
      696 JUMP                             ; [+1]
      697 LOADNIL                          R43
      698 SETTABLEKS                       R43 R42 K137 ["CurrentLimitText"]
      700 CALL                             R39 3 1
      701 JUMP                             ; [+1]
      702 LOADNIL                          R39
      703 SETTABLEKS                       R39 R38 K97 ["VerifyNotice"]
      705 JUMPIFNOT                        R17 ; [+71]
      706 GETUPVAL                         R40 8
      707 GETTABLEKS                       R39 R40 K52 ["createElement"]
      709 GETUPVAL                         R40 11
      710 DUPTABLE                         R41 K148 [{"AutomaticSize", "Layout", "HorizontalAlignment", "LayoutOrder", "Padding"}]
      711 GETIMPORT                        R42 K127 [Enum.AutomaticSize.XY]
      713 SETTABLEKS                       R42 R41 K54 ["AutomaticSize"]
      715 GETIMPORT                        R42 K110 [Enum.FillDirection.Vertical]
      717 SETTABLEKS                       R42 R41 K111 ["Layout"]
      719 GETIMPORT                        R42 K74 [Enum.HorizontalAlignment.Left]
      721 SETTABLEKS                       R42 R41 K66 ["HorizontalAlignment"]
      723 NAMECALL                         R42 R30 K114 ["getNextOrder"]
      725 CALL                             R42 1 1
      726 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      728 DUPTABLE                         R42 K134 [{"Top", "Bottom"}]
      729 LOADN                            R43 5
      730 SETTABLEKS                       R43 R42 K75 ["Top"]
      732 LOADN                            R43 5
      733 SETTABLEKS                       R43 R42 K115 ["Bottom"]
      735 SETTABLEKS                       R42 R41 K69 ["Padding"]
      737 DUPTABLE                         R42 K150 [{"DistributeToMarketplaceMessage"}]
      738 GETUPVAL                         R44 8
      739 GETTABLEKS                       R43 R44 K52 ["createElement"]
      741 LOADK                            R44 K80 ["TextLabel"]
      742 DUPTABLE                         R45 K151 [{"AutomaticSize", "BackgroundTransparency", "Font", "Text", "TextWrapped", "TextSize", "TextColor3", "LayoutOrder"}]
      743 GETIMPORT                        R46 K127 [Enum.AutomaticSize.XY]
      745 SETTABLEKS                       R46 R45 K54 ["AutomaticSize"]
      747 LOADN                            R46 1
      748 SETTABLEKS                       R46 R45 K55 ["BackgroundTransparency"]
      750 GETUPVAL                         R47 10
      751 GETTABLEKS                       R46 R47 K94 ["FONT"]
      753 SETTABLEKS                       R46 R45 K87 ["Font"]
      755 SETTABLEKS                       R17 R45 K81 ["Text"]
      757 LOADB                            R46 1
      758 SETTABLEKS                       R46 R45 K86 ["TextWrapped"]
      760 GETUPVAL                         R47 10
      761 GETTABLEKS                       R46 R47 K132 ["FONT_SIZE_LARGE"]
      763 SETTABLEKS                       R46 R45 K84 ["TextSize"]
      765 GETTABLEKS                       R46 R13 K152 ["distributionQuotaTextColor"]
      767 SETTABLEKS                       R46 R45 K85 ["TextColor3"]
      769 LOADN                            R46 1
      770 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      772 CALL                             R43 2 1
      773 SETTABLEKS                       R43 R42 K149 ["DistributeToMarketplaceMessage"]
      775 CALL                             R39 3 1
      776 JUMP                             ; [+1]
      777 LOADNIL                          R39
      778 SETTABLEKS                       R39 R38 K98 ["DistributeToMarketplace"]
      780 JUMPIFNOT                        R15 ; [+74]
      781 GETUPVAL                         R40 8
      782 GETTABLEKS                       R39 R40 K52 ["createElement"]
      784 GETUPVAL                         R40 11
      785 DUPTABLE                         R41 K148 [{"AutomaticSize", "Layout", "HorizontalAlignment", "LayoutOrder", "Padding"}]
      786 GETIMPORT                        R42 K127 [Enum.AutomaticSize.XY]
      788 SETTABLEKS                       R42 R41 K54 ["AutomaticSize"]
      790 GETIMPORT                        R42 K110 [Enum.FillDirection.Vertical]
      792 SETTABLEKS                       R42 R41 K111 ["Layout"]
      794 GETIMPORT                        R42 K74 [Enum.HorizontalAlignment.Left]
      796 SETTABLEKS                       R42 R41 K66 ["HorizontalAlignment"]
      798 NAMECALL                         R42 R30 K114 ["getNextOrder"]
      800 CALL                             R42 1 1
      801 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      803 DUPTABLE                         R42 K134 [{"Top", "Bottom"}]
      804 LOADN                            R43 5
      805 SETTABLEKS                       R43 R42 K75 ["Top"]
      807 LOADN                            R43 5
      808 SETTABLEKS                       R43 R42 K115 ["Bottom"]
      810 SETTABLEKS                       R42 R41 K69 ["Padding"]
      812 DUPTABLE                         R42 K154 [{"QuotaMessage"}]
      813 JUMPIFNOT                        R18 ; [+36]
      814 GETUPVAL                         R44 8
      815 GETTABLEKS                       R43 R44 K52 ["createElement"]
      817 LOADK                            R44 K80 ["TextLabel"]
      818 DUPTABLE                         R45 K151 [{"AutomaticSize", "BackgroundTransparency", "Font", "Text", "TextWrapped", "TextSize", "TextColor3", "LayoutOrder"}]
      819 GETIMPORT                        R46 K127 [Enum.AutomaticSize.XY]
      821 SETTABLEKS                       R46 R45 K54 ["AutomaticSize"]
      823 LOADN                            R46 1
      824 SETTABLEKS                       R46 R45 K55 ["BackgroundTransparency"]
      826 GETUPVAL                         R47 10
      827 GETTABLEKS                       R46 R47 K94 ["FONT"]
      829 SETTABLEKS                       R46 R45 K87 ["Font"]
      831 SETTABLEKS                       R15 R45 K81 ["Text"]
      833 LOADB                            R46 1
      834 SETTABLEKS                       R46 R45 K86 ["TextWrapped"]
      836 GETUPVAL                         R47 10
      837 GETTABLEKS                       R46 R47 K132 ["FONT_SIZE_LARGE"]
      839 SETTABLEKS                       R46 R45 K84 ["TextSize"]
      841 GETTABLEKS                       R46 R13 K152 ["distributionQuotaTextColor"]
      843 SETTABLEKS                       R46 R45 K85 ["TextColor3"]
      845 LOADN                            R46 1
      846 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      848 CALL                             R43 2 1
      849 JUMP                             ; [+1]
      850 LOADNIL                          R43
      851 SETTABLEKS                       R43 R42 K153 ["QuotaMessage"]
      853 CALL                             R39 3 1
      854 JUMP                             ; [+1]
      855 LOADNIL                          R39
      856 SETTABLEKS                       R39 R38 K99 ["QuotaInfo"]
      858 GETUPVAL                         R40 8
      859 GETTABLEKS                       R39 R40 K52 ["createElement"]
      861 GETUPVAL                         R40 14
      862 DUPTABLE                         R41 K156 [{"AutomaticSize", "Size", "Text", "StyleModifier", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize", "LayoutOrder"}]
      863 GETIMPORT                        R42 K59 [Enum.AutomaticSize.Y]
      865 SETTABLEKS                       R42 R41 K54 ["AutomaticSize"]
      867 GETIMPORT                        R42 K61 [UDim2.new]
      869 LOADN                            R43 1
      870 LOADN                            R44 0
      871 LOADN                            R45 0
      872 LOADN                            R46 0
      873 CALL                             R42 4 1
      874 SETTABLEKS                       R42 R41 K56 ["Size"]
      876 SETTABLEKS                       R26 R41 K81 ["Text"]
      878 GETUPVAL                         R43 15
      879 GETTABLEKS                       R42 R43 K120 ["Disabled"]
      881 SETTABLEKS                       R42 R41 K155 ["StyleModifier"]
      883 LOADB                            R42 1
      884 SETTABLEKS                       R42 R41 K86 ["TextWrapped"]
      886 GETIMPORT                        R42 K90 [Enum.TextXAlignment.Left]
      888 SETTABLEKS                       R42 R41 K82 ["TextXAlignment"]
      890 GETIMPORT                        R42 K131 [Enum.TextYAlignment.Center]
      892 SETTABLEKS                       R42 R41 K83 ["TextYAlignment"]
      894 GETUPVAL                         R43 10
      895 GETTABLEKS                       R42 R43 K132 ["FONT_SIZE_LARGE"]
      897 SETTABLEKS                       R42 R41 K84 ["TextSize"]
      899 NAMECALL                         R42 R30 K114 ["getNextOrder"]
      901 CALL                             R42 1 1
      902 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      904 CALL                             R39 2 1
      905 SETTABLEKS                       R39 R38 K100 ["TipsLabel"]
      907 GETUPVAL                         R41 16
      908 GETTABLEKS                       R40 R41 K157 ["hideAssetConfigDistributeLearnMoreLink"]
      910 CALL                             R40 0 1
      911 JUMPIF                           R40 ; [+18]
      912 GETUPVAL                         R40 8
      913 GETTABLEKS                       R39 R40 K52 ["createElement"]
      915 GETUPVAL                         R40 13
      916 DUPTABLE                         R41 K158 [{"LayoutOrder", "OnClick", "Text"}]
      917 NAMECALL                         R42 R30 K114 ["getNextOrder"]
      919 CALL                             R42 1 1
      920 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      922 GETTABLEKS                       R42 R0 K159 ["onLearnMoreActivated"]
      924 SETTABLEKS                       R42 R41 K121 ["OnClick"]
      926 SETTABLEKS                       R27 R41 K81 ["Text"]
      928 CALL                             R39 2 1
      929 JUMP                             ; [+1]
      930 LOADNIL                          R39
      931 SETTABLEKS                       R39 R38 K101 ["LinkButton"]
      933 CALL                             R35 3 1
      934 SETTABLEKS                       R35 R34 K63 ["RightFrame"]
      936 CALL                             R31 3 -1
      937 RETURN                           R31 -1

PROTO_18:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["publishingRequirements"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R2 K1 ["verification"]
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 GETTABLEKS                       R4 R2 K2 ["publishing"]
       17 JUMPIF                           R4 ; [+2]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 0
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K3 ["contains"]
       25 MOVE                             R7 R5
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R8 R9 K4 ["Package"]
       29 CALL                             R6 2 1
       30 DUPTABLE                         R7 K8 [{"isVerified", "verificationSupportedTypes", "isPackageMarketplacePublishAllowed"}]
       31 JUMPIFNOT                        R3 ; [+3]
       32 GETTABLEKS                       R8 R3 K5 ["isVerified"]
       34 JUMP                             ; [+1]
       35 LOADB                            R8 0
       36 SETTABLEKS                       R8 R7 K5 ["isVerified"]
       38 JUMPIFNOT                        R3 ; [+6]
       39 GETTABLEKS                       R8 R3 K9 ["supportedTypes"]
       41 JUMPIF                           R8 ; [+5]
       42 NEWTABLE                         R8 0 0
       44 JUMP                             ; [+2]
       45 NEWTABLE                         R8 0 0
       47 SETTABLEKS                       R8 R7 K6 ["verificationSupportedTypes"]
       49 SETTABLEKS                       R6 R7 K7 ["isPackageMarketplacePublishAllowed"]
       51 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ToolboxAssetConfigDisabledAudioSharingLearnMoreLink"]
        4 NAMECALL                         R0 R0 K3 ["GetFastString"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ToolboxAssetConfigEnabledAudioSharingLearnMoreLink"]
       10 NAMECALL                         R1 R1 K3 ["GetFastString"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       16 NAMECALL                         R2 R2 K6 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K7 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
       22 NAMECALL                         R3 R3 K6 ["GetFastFlag"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K8 ["ToolboxVideoConfigSharing2"]
       28 NAMECALL                         R4 R4 K6 ["GetFastFlag"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R9 K10 [script]
       33 GETTABLEKS                       R8 R9 K11 ["Parent"]
       35 GETTABLEKS                       R7 R8 K11 ["Parent"]
       37 GETTABLEKS                       R6 R7 K11 ["Parent"]
       39 GETTABLEKS                       R5 R6 K11 ["Parent"]
       41 GETTABLEKS                       R6 R5 K12 ["Packages"]
       43 GETIMPORT                        R7 K14 [require]
       45 GETTABLEKS                       R8 R6 K15 ["Cryo"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K14 [require]
       50 GETTABLEKS                       R9 R6 K16 ["Framework"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K14 [require]
       55 GETTABLEKS                       R10 R6 K17 ["Roact"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K14 [require]
       60 GETTABLEKS                       R11 R6 K18 ["RoactRodux"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K14 [require]
       65 GETTABLEKS                       R14 R5 K19 ["Src"]
       67 GETTABLEKS                       R13 R14 K20 ["Types"]
       69 GETTABLEKS                       R12 R13 K21 ["AssetQuotaTypes"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K14 [require]
       74 GETTABLEKS                       R15 R5 K19 ["Src"]
       76 GETTABLEKS                       R14 R15 K20 ["Types"]
       78 GETTABLEKS                       R13 R14 K22 ["AssetSubTypes"]
       80 CALL                             R12 1 1
       81 GETTABLEKS                       R14 R8 K23 ["Util"]
       83 GETTABLEKS                       R13 R14 K24 ["formatLocalDateTime"]
       85 GETIMPORT                        R15 K14 [require]
       87 GETTABLEKS                       R16 R6 K16 ["Framework"]
       89 CALL                             R15 1 1
       90 GETTABLEKS                       R14 R15 K25 ["ContextServices"]
       92 GETIMPORT                        R15 K14 [require]
       94 GETTABLEKS                       R18 R5 K19 ["Src"]
       96 GETTABLEKS                       R17 R18 K25 ["ContextServices"]
       98 GETTABLEKS                       R16 R17 K26 ["IXPContext"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K14 [require]
      103 GETTABLEKS                       R19 R5 K19 ["Src"]
      105 GETTABLEKS                       R18 R19 K25 ["ContextServices"]
      107 GETTABLEKS                       R17 R18 K27 ["NetworkContext"]
      109 CALL                             R16 1 1
      110 GETTABLEKS                       R17 R14 K28 ["withContext"]
      112 GETTABLEKS                       R19 R5 K19 ["Src"]
      114 GETTABLEKS                       R18 R19 K23 ["Util"]
      116 GETIMPORT                        R19 K14 [require]
      118 GETTABLEKS                       R20 R18 K29 ["DebugFlags"]
      120 CALL                             R19 1 1
      121 GETIMPORT                        R20 K14 [require]
      123 GETTABLEKS                       R21 R18 K30 ["Constants"]
      125 CALL                             R20 1 1
      126 GETIMPORT                        R21 K14 [require]
      128 GETTABLEKS                       R22 R18 K31 ["AssetConfigConstants"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K14 [require]
      133 GETTABLEKS                       R23 R18 K32 ["AssetConfigUtil"]
      135 CALL                             R22 1 1
      136 GETIMPORT                        R23 K14 [require]
      138 GETTABLEKS                       R26 R5 K19 ["Src"]
      140 GETTABLEKS                       R25 R26 K23 ["Util"]
      142 GETTABLEKS                       R24 R25 K33 ["ToolboxUtilities"]
      144 CALL                             R23 1 1
      145 GETIMPORT                        R24 K14 [require]
      147 GETTABLEKS                       R25 R18 K34 ["LayoutOrderIterator"]
      149 CALL                             R24 1 1
      150 GETIMPORT                        R25 K14 [require]
      152 GETTABLEKS                       R26 R18 K35 ["PublishUtil"]
      154 CALL                             R25 1 1
      155 GETIMPORT                        R26 K14 [require]
      157 GETTABLEKS                       R27 R18 K36 ["Urls"]
      159 CALL                             R26 1 1
      160 GETIMPORT                        R27 K14 [require]
      162 GETTABLEKS                       R28 R18 K37 ["sanitizeRichText"]
      164 CALL                             R27 1 1
      165 LOADNIL                          R28
      166 JUMPIFNOT                        R2 ; [+6]
      167 GETIMPORT                        R29 K14 [require]
      169 GETTABLEKS                       R30 R18 K38 ["getIsIXPVariableEnabled"]
      171 CALL                             R29 1 1
      172 MOVE                             R28 R29
      173 GETIMPORT                        R29 K14 [require]
      175 GETTABLEKS                       R30 R6 K39 ["Dash"]
      177 CALL                             R29 1 1
      178 GETTABLEKS                       R30 R8 K40 ["UI"]
      180 GETTABLEKS                       R31 R30 K41 ["TextLabel"]
      182 GETTABLEKS                       R32 R30 K42 ["LinkText"]
      184 GETTABLEKS                       R33 R30 K43 ["List"]
      186 GETTABLEKS                       R34 R30 K44 ["Pane"]
      188 GETTABLEKS                       R35 R30 K45 ["ToggleButton"]
      190 GETTABLEKS                       R37 R8 K23 ["Util"]
      192 GETTABLEKS                       R36 R37 K46 ["StyleModifier"]
      194 GETIMPORT                        R37 K1 [game]
      196 LOADK                            R39 K47 ["GuiService"]
      197 NAMECALL                         R37 R37 K48 ["GetService"]
      199 CALL                             R37 2 1
      200 GETTABLEKS                       R38 R9 K49 ["PureComponent"]
      202 LOADK                            R40 K50 ["ConfigCopy"]
      203 NAMECALL                         R38 R38 K51 ["extend"]
      205 CALL                             R38 2 1
      206 DUPCLOSURE                       R39 K52 [PROTO_5]
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R37
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R25
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R34
      216 CAPTURE                          VAL R31
      217 CAPTURE                          VAL R20
      218 SETTABLEKS                       R39 R38 K53 ["init"]
      220 DUPCLOSURE                       R39 K54 [PROTO_8]
      221 CAPTURE                          VAL R7
      222 SETTABLEKS                       R39 R38 K55 ["didMount"]
      224 DUPCLOSURE                       R39 K56 [PROTO_9]
      225 SETTABLEKS                       R39 R38 K57 ["willUnmount"]
      227 DUPCLOSURE                       R39 K58 [PROTO_11]
      228 CAPTURE                          VAL R4
      229 CAPTURE                          VAL R7
      230 SETTABLEKS                       R39 R38 K59 ["didUpdate"]
      232 DUPCLOSURE                       R39 K60 [PROTO_15]
      233 CAPTURE                          VAL R9
      234 CAPTURE                          VAL R29
      235 CAPTURE                          VAL R19
      236 SETTABLEKS                       R39 R38 K61 ["updateDistributionQuotas"]
      238 DUPCLOSURE                       R39 K62 [PROTO_16]
      239 CAPTURE                          VAL R13
      240 SETTABLEKS                       R39 R38 K63 ["getDistributionQuotaStatus"]
      242 NEWCLOSURE                       R39 P6
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R2
      245 CAPTURE                          REF R28
      246 CAPTURE                          VAL R27
      247 CAPTURE                          VAL R25
      248 CAPTURE                          VAL R7
      249 CAPTURE                          VAL R4
      250 CAPTURE                          VAL R24
      251 CAPTURE                          VAL R9
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R20
      254 CAPTURE                          VAL R34
      255 CAPTURE                          VAL R35
      256 CAPTURE                          VAL R32
      257 CAPTURE                          VAL R31
      258 CAPTURE                          VAL R36
      259 CAPTURE                          VAL R23
      260 SETTABLEKS                       R39 R38 K64 ["render"]
      262 MOVE                             R39 R17
      263 DUPTABLE                         R40 K69 [{"IXP", "Localization", "Stylizer", "Network"}]
      264 JUMPIFNOT                        R2 ; [+2]
      265 MOVE                             R41 R15
      266 JUMP                             ; [+1]
      267 LOADNIL                          R41
      268 SETTABLEKS                       R41 R40 K65 ["IXP"]
      270 GETTABLEKS                       R41 R14 K66 ["Localization"]
      272 SETTABLEKS                       R41 R40 K66 ["Localization"]
      274 GETTABLEKS                       R41 R14 K67 ["Stylizer"]
      276 SETTABLEKS                       R41 R40 K67 ["Stylizer"]
      278 SETTABLEKS                       R16 R40 K68 ["Network"]
      280 CALL                             R39 1 1
      281 MOVE                             R40 R38
      282 CALL                             R39 1 1
      283 MOVE                             R38 R39
      284 DUPCLOSURE                       R39 K70 [PROTO_18]
      285 CAPTURE                          VAL R12
      286 GETTABLEKS                       R40 R10 K71 ["connect"]
      288 MOVE                             R41 R39
      289 LOADNIL                          R42
      290 CALL                             R40 2 1
      291 MOVE                             R41 R38
      292 CALL                             R40 1 -1
      293 CLOSEUPVALS                      R28
      294 RETURN                           R40 -1
