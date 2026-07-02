PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AssetType"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["CopyEnabled"]
        8 JUMPIFNOT                        R3 ; [+9]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R5 R5 K3 ["getSafetyLearnMoreUrl"]
       13 CALL                             R5 0 -1
       14 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       16 CALL                             R3 -1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K5 ["isRestrictionAppealable"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K1 ["props"]
       24 GETTABLEKS                       R4 R4 K6 ["publishingRestriction"]
       26 CALL                             R3 1 1
       27 JUMPIFNOT                        R3 ; [+9]
       28 GETUPVAL                         R3 2
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K7 ["getAppealsPortalUrl"]
       32 CALL                             R5 0 -1
       33 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       35 CALL                             R3 -1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R3 5
       38 JUMPIFNOT                        R3 ; [+35]
       39 GETIMPORT                        R3 K10 [Enum.AssetType.Video]
       41 JUMPIFNOTEQ                      R2 R3 ; [+10]
       43 GETUPVAL                         R3 2
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K11 ["getVideoPrivacyLearnMoreUrl"]
       47 CALL                             R5 0 -1
       48 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       50 CALL                             R3 -1 0
       51 RETURN                           R0 0
       52 GETIMPORT                        R3 K13 [Enum.AssetType.Audio]
       54 JUMPIFNOTEQ                      R2 R3 ; [+10]
       56 GETUPVAL                         R3 2
       57 GETUPVAL                         R5 3
       58 GETTABLEKS                       R5 R5 K14 ["getAudioPrivacyLearnMoreUrl"]
       60 CALL                             R5 0 -1
       61 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       63 CALL                             R3 -1 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R3 2
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R5 R5 K3 ["getSafetyLearnMoreUrl"]
       69 CALL                             R5 0 -1
       70 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       72 CALL                             R3 -1 0
       73 RETURN                           R0 0
       74 GETIMPORT                        R3 K13 [Enum.AssetType.Audio]
       76 JUMPIFNOTEQ                      R2 R3 ; [+10]
       78 GETUPVAL                         R3 2
       79 GETUPVAL                         R5 3
       80 GETTABLEKS                       R5 R5 K14 ["getAudioPrivacyLearnMoreUrl"]
       82 CALL                             R5 0 -1
       83 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       85 CALL                             R3 -1 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R3 2
       88 GETUPVAL                         R5 3
       89 GETTABLEKS                       R5 R5 K3 ["getSafetyLearnMoreUrl"]
       91 CALL                             R5 0 -1
       92 NAMECALL                         R3 R3 K4 ["OpenBrowserWindow"]
       94 CALL                             R3 -1 0
       95 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetType"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["props"]
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
       55 GETUPVAL                         R9 3
       56 GETTABLEKS                       R9 R9 K23 ["isOnSale"]
       58 MOVE                             R10 R6
       59 CALL                             R9 1 1
       60 JUMPIFNOT                        R9 ; [+6]
       61 GETUPVAL                         R8 4
       62 GETTABLEKS                       R8 R8 K24 ["ASSET_STATUS"]
       64 GETTABLEKS                       R8 R8 K25 ["OffSale"]
       66 JUMP                             ; [+5]
       67 GETUPVAL                         R8 4
       68 GETTABLEKS                       R8 R8 K24 ["ASSET_STATUS"]
       70 GETTABLEKS                       R8 R8 K26 ["OnSale"]
       72 MOVE                             R9 R7
       73 MOVE                             R10 R8
       74 CALL                             R9 1 0
       75 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AssetType"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["distributionQuotaPolicy"]
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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["getVerificationDocumentationUrl"]
        4 CALL                             R2 0 -1
        5 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        5 GETTABLEKS                       R2 R1 K2 ["publishAsset"]
        7 NEWTABLE                         R3 0 0
        9 GETIMPORT                        R4 K4 [ipairs]
       11 MOVE                             R5 R0
       12 CALL                             R4 1 3
       13 FORGPREP_INEXT                   R4
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R9 R9 K5 ["createElement"]
       17 GETUPVAL                         R10 2
       18 DUPTABLE                         R11 K12 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 10}]
       19 GETIMPORT                        R12 K15 [Enum.AutomaticSize.XY]
       21 SETTABLEKS                       R12 R11 K6 ["AutomaticSize"]
       23 GETIMPORT                        R12 K17 [Enum.HorizontalAlignment.Left]
       25 SETTABLEKS                       R12 R11 K7 ["HorizontalAlignment"]
       27 GETIMPORT                        R12 K20 [Enum.FillDirection.Horizontal]
       29 SETTABLEKS                       R12 R11 K8 ["Layout"]
       31 SETTABLEKS                       R7 R11 K9 ["LayoutOrder"]
       33 DUPTABLE                         R12 K23 [{"Bullet", "Text"}]
       34 GETUPVAL                         R13 1
       35 GETTABLEKS                       R13 R13 K5 ["createElement"]
       37 GETUPVAL                         R14 3
       38 DUPTABLE                         R15 K27 [{["AutomaticSize"], ["Text"] = "•", ["TextColor"], ["TextSize"]}]
       39 GETIMPORT                        R16 K15 [Enum.AutomaticSize.XY]
       41 SETTABLEKS                       R16 R15 K6 ["AutomaticSize"]
       43 GETTABLEKS                       R16 R2 K28 ["verifyTextColor"]
       45 SETTABLEKS                       R16 R15 K25 ["TextColor"]
       47 GETUPVAL                         R16 4
       48 GETTABLEKS                       R16 R16 K29 ["FONT_SIZE_LARGE"]
       50 SETTABLEKS                       R16 R15 K26 ["TextSize"]
       52 CALL                             R13 2 1
       53 SETTABLEKS                       R13 R12 K21 ["Bullet"]
       55 GETUPVAL                         R13 1
       56 GETTABLEKS                       R13 R13 K5 ["createElement"]
       58 GETUPVAL                         R14 3
       59 DUPTABLE                         R15 K30 [{"AutomaticSize", "Text", "TextColor", "TextSize"}]
       60 GETIMPORT                        R16 K15 [Enum.AutomaticSize.XY]
       62 SETTABLEKS                       R16 R15 K6 ["AutomaticSize"]
       64 SETTABLEKS                       R8 R15 K22 ["Text"]
       66 GETTABLEKS                       R16 R2 K28 ["verifyTextColor"]
       68 SETTABLEKS                       R16 R15 K25 ["TextColor"]
       70 GETUPVAL                         R16 4
       71 GETTABLEKS                       R16 R16 K29 ["FONT_SIZE_LARGE"]
       73 SETTABLEKS                       R16 R15 K26 ["TextSize"]
       75 CALL                             R13 2 1
       76 SETTABLEKS                       R13 R12 K22 ["Text"]
       78 CALL                             R9 3 1
       79 SETTABLE                         R9 R3 R8
       80 FORGLOOP                         R4 2 [inext] ; [-67]
       82 RETURN                           R3 1

PROTO_5:
        0 LOADN                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["warningCountdown"]
        3 DUPTABLE                         R2 K2 [{"copyWarning"}]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K3 ["None"]
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
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K7 ["getAssetConfigDistributionQuotas"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["None"]
        5 JUMPIFEQ                         R1 R2 ; [+21]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R2 K2 ["warningCountdown"]
       10 GETUPVAL                         R4 2
       11 SUB                              R3 R3 R4
       12 SETTABLEKS                       R3 R2 K2 ["warningCountdown"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K2 ["warningCountdown"]
       17 LOADN                            R3 0
       18 JUMPIFNOTLE                      R2 R3 ; [+8]
       20 DUPTABLE                         R2 K3 [{"copyWarning"}]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K1 ["None"]
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
        0 GETIMPORT                        R3 K1 [game]
        2 LOADK                            R5 K2 ["RunService"]
        3 NAMECALL                         R3 R3 K3 ["GetService"]
        5 CALL                             R3 2 1
        6 GETTABLEKS                       R3 R3 K4 ["Heartbeat"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["IsAssetPublic"]
        3 NOT                              R1 R2
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["IsAssetPublic"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["IsAudio"]
       11 JUMPIF                           R2 ; [+6]
       12 GETUPVAL                         R2 2
       13 JUMPIFNOT                        R2 ; [+23]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["IsVideo"]
       17 JUMPIFNOT                        R2 ; [+19]
       18 GETTABLEKS                       R2 R0 K3 ["copyWarning"]
       20 GETUPVAL                         R3 3
       21 JUMPIFEQ                         R2 R3 ; [+15]
       23 JUMPIFNOT                        R1 ; [+13]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K4 ["CopyOn"]
       27 JUMPIFNOT                        R2 ; [+9]
       28 GETUPVAL                         R2 4
       29 LOADN                            R3 5
       30 SETTABLEKS                       R3 R2 K5 ["warningCountdown"]
       32 DUPTABLE                         R2 K6 [{"copyWarning"}]
       33 GETUPVAL                         R3 3
       34 SETTABLEKS                       R3 R2 K3 ["copyWarning"]
       36 RETURN                           R2 1
       37 GETUPVAL                         R2 5
       38 GETTABLEKS                       R2 R2 K3 ["copyWarning"]
       40 GETUPVAL                         R3 6
       41 GETTABLEKS                       R3 R3 K7 ["None"]
       43 JUMPIFEQ                         R2 R3 ; [+12]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K0 ["IsAssetPublic"]
       48 JUMPIFNOT                        R2 ; [+7]
       49 DUPTABLE                         R2 K6 [{"copyWarning"}]
       50 GETUPVAL                         R3 6
       51 GETTABLEKS                       R3 R3 K7 ["None"]
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
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["find"]
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
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K7 ["None"]
       35 SETTABLEKS                       R6 R5 K4 ["distributionQuota"]
       37 NAMECALL                         R3 R3 K6 ["setState"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"distributionQuota"}]
        2 DUPTABLE                         R4 K5 [{["capacity"] = 0, ["usage"] = 0}]
        3 SETTABLEKS                       R4 R3 K0 ["distributionQuota"]
        5 NAMECALL                         R1 R1 K6 ["setState"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K7 ["shouldDebugWarnings"]
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+10]
       13 GETIMPORT                        R1 K9 [warn]
       15 LOADK                            R3 K10 ["Error fetching asset quotas "]
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R5 R0
       18 GETIMPORT                        R4 K12 [tostring]
       20 CALL                             R4 1 1
       21 CONCAT                           R2 R3 R4
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Network"]
        4 GETTABLEKS                       R1 R1 K2 ["networkInterface"]
        6 GETTABLEKS                       R2 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["AssetType"]
       10 MOVE                             R3 R2
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETTABLEKS                       R4 R0 K4 ["distributionQuotaPolicy"]
       14 GETTABLEKS                       R5 R2 K5 ["Name"]
       16 GETTABLE                         R3 R4 R5
       17 JUMPIF                           R3 ; [+10]
       18 DUPTABLE                         R6 K7 [{"distributionQuota"}]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K8 ["None"]
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
       26 GETTABLEKS                       R12 R0 K0 ["props"]
       28 GETTABLEKS                       R12 R12 K10 ["Localization"]
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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
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
      158 GETUPVAL                         R28 4
      159 GETTABLEKS                       R28 R28 K41 ["getDisplayTextForRestriction"]
      161 GETTABLEKS                       R29 R2 K42 ["publishingRestriction"]
      163 MOVE                             R30 R25
      164 CALL                             R28 2 1
      165 JUMPIFEQKNIL                     R28 ; [+18]
      167 ORK                              R26 R28 K24 [""]
      168 GETUPVAL                         R29 4
      169 GETTABLEKS                       R29 R29 K43 ["isRestrictionAppealable"]
      171 GETTABLEKS                       R30 R0 K0 ["props"]
      173 GETTABLEKS                       R30 R30 K42 ["publishingRestriction"]
      175 CALL                             R29 1 1
      176 JUMPIFNOT                        R29 ; [+7]
      177 LOADK                            R31 K21 ["AssetConfigCopy"]
      178 LOADK                            R32 K44 ["SubmitAppeal"]
      179 NAMECALL                         R29 R25 K23 ["getText"]
      181 CALL                             R29 3 1
      182 MOVE                             R27 R29
      183 JUMP                             ; [0]
      184 GETUPVAL                         R30 5
      185 GETTABLEKS                       R30 R30 K45 ["None"]
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
      218 GETUPVAL                         R30 7
      219 GETTABLEKS                       R30 R30 K51 ["new"]
      221 CALL                             R30 0 1
      222 GETUPVAL                         R31 8
      223 GETTABLEKS                       R31 R31 K52 ["createElement"]
      225 LOADK                            R32 K53 ["Frame"]
      226 DUPTABLE                         R33 K58 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
      227 GETIMPORT                        R34 K60 [Enum.AutomaticSize.Y]
      229 SETTABLEKS                       R34 R33 K54 ["AutomaticSize"]
      231 GETIMPORT                        R34 K62 [UDim2.new]
      233 LOADN                            R35 1
      234 LOADN                            R36 0
      235 LOADN                            R37 0
      236 LOADN                            R38 54
      237 CALL                             R34 4 1
      238 SETTABLEKS                       R34 R33 K57 ["Size"]
      240 SETTABLEKS                       R5 R33 K4 ["LayoutOrder"]
      242 DUPTABLE                         R34 K65 [{"UIListLayout", "Title", "RightFrame"}]
      243 GETUPVAL                         R35 8
      244 GETTABLEKS                       R35 R35 K52 ["createElement"]
      246 LOADK                            R36 K63 ["UIListLayout"]
      247 DUPTABLE                         R37 K71 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      248 GETIMPORT                        R38 K73 [Enum.FillDirection.Horizontal]
      250 SETTABLEKS                       R38 R37 K66 ["FillDirection"]
      252 GETIMPORT                        R38 K75 [Enum.HorizontalAlignment.Left]
      254 SETTABLEKS                       R38 R37 K67 ["HorizontalAlignment"]
      256 GETIMPORT                        R38 K77 [Enum.VerticalAlignment.Top]
      258 SETTABLEKS                       R38 R37 K68 ["VerticalAlignment"]
      260 GETIMPORT                        R38 K78 [Enum.SortOrder.LayoutOrder]
      262 SETTABLEKS                       R38 R37 K69 ["SortOrder"]
      264 GETIMPORT                        R38 K80 [UDim.new]
      266 LOADN                            R39 0
      267 LOADN                            R40 0
      268 CALL                             R38 2 1
      269 SETTABLEKS                       R38 R37 K70 ["Padding"]
      271 CALL                             R35 2 1
      272 SETTABLEKS                       R35 R34 K63 ["UIListLayout"]
      274 GETUPVAL                         R35 8
      275 GETTABLEKS                       R35 R35 K52 ["createElement"]
      277 LOADK                            R36 K81 ["TextLabel"]
      278 DUPTABLE                         R37 K90 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["Font"], ["LayoutOrder"] = 1}]
      279 GETIMPORT                        R38 K60 [Enum.AutomaticSize.Y]
      281 SETTABLEKS                       R38 R37 K54 ["AutomaticSize"]
      283 GETIMPORT                        R38 K62 [UDim2.new]
      285 LOADN                            R39 0
      286 GETUPVAL                         R40 9
      287 GETTABLEKS                       R40 R40 K91 ["TITLE_GUTTER_WIDTH"]
      289 LOADN                            R41 0
      290 LOADN                            R42 40
      291 CALL                             R38 4 1
      292 SETTABLEKS                       R38 R37 K57 ["Size"]
      294 SETTABLEKS                       R4 R37 K82 ["Text"]
      296 GETIMPORT                        R38 K92 [Enum.TextXAlignment.Left]
      298 SETTABLEKS                       R38 R37 K83 ["TextXAlignment"]
      300 GETIMPORT                        R38 K93 [Enum.TextYAlignment.Top]
      302 SETTABLEKS                       R38 R37 K84 ["TextYAlignment"]
      304 GETUPVAL                         R38 10
      305 GETTABLEKS                       R38 R38 K94 ["FONT_SIZE_TITLE"]
      307 SETTABLEKS                       R38 R37 K85 ["TextSize"]
      309 GETTABLEKS                       R38 R13 K95 ["titleTextColor"]
      311 SETTABLEKS                       R38 R37 K86 ["TextColor3"]
      313 GETUPVAL                         R38 10
      314 GETTABLEKS                       R38 R38 K96 ["FONT"]
      316 SETTABLEKS                       R38 R37 K89 ["Font"]
      318 CALL                             R35 2 1
      319 SETTABLEKS                       R35 R34 K3 ["Title"]
      321 GETUPVAL                         R35 8
      322 GETTABLEKS                       R35 R35 K52 ["createElement"]
      324 LOADK                            R36 K53 ["Frame"]
      325 DUPTABLE                         R37 K98 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"] = 2}]
      326 GETIMPORT                        R38 K60 [Enum.AutomaticSize.Y]
      328 SETTABLEKS                       R38 R37 K54 ["AutomaticSize"]
      330 GETIMPORT                        R38 K62 [UDim2.new]
      332 LOADN                            R39 1
      333 GETUPVAL                         R41 9
      334 GETTABLEKS                       R41 R41 K91 ["TITLE_GUTTER_WIDTH"]
      336 MINUS                            R40 R41
      337 LOADN                            R41 0
      338 LOADN                            R42 0
      339 CALL                             R38 4 1
      340 SETTABLEKS                       R38 R37 K57 ["Size"]
      342 DUPTABLE                         R38 K106 [{"UIPadding", "UIListLayout", "ToggleButtonContainer", "VerifyNotice", "DistributeToMarketplace", "QuotaInfo", "TipsLabel", "LinkButton"}]
      343 GETUPVAL                         R39 8
      344 GETTABLEKS                       R39 R39 K52 ["createElement"]
      346 LOADK                            R40 K99 ["UIPadding"]
      347 DUPTABLE                         R41 K111 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      348 GETIMPORT                        R42 K80 [UDim.new]
      350 LOADN                            R43 0
      351 LOADN                            R44 25
      352 CALL                             R42 2 1
      353 SETTABLEKS                       R42 R41 K107 ["PaddingBottom"]
      355 GETIMPORT                        R42 K80 [UDim.new]
      357 LOADN                            R43 0
      358 LOADN                            R44 0
      359 CALL                             R42 2 1
      360 SETTABLEKS                       R42 R41 K108 ["PaddingLeft"]
      362 GETIMPORT                        R42 K80 [UDim.new]
      364 LOADN                            R43 0
      365 LOADN                            R44 0
      366 CALL                             R42 2 1
      367 SETTABLEKS                       R42 R41 K109 ["PaddingRight"]
      369 GETIMPORT                        R42 K80 [UDim.new]
      371 LOADN                            R43 0
      372 LOADN                            R44 0
      373 CALL                             R42 2 1
      374 SETTABLEKS                       R42 R41 K110 ["PaddingTop"]
      376 CALL                             R39 2 1
      377 SETTABLEKS                       R39 R38 K99 ["UIPadding"]
      379 GETUPVAL                         R39 8
      380 GETTABLEKS                       R39 R39 K52 ["createElement"]
      382 LOADK                            R40 K63 ["UIListLayout"]
      383 DUPTABLE                         R41 K112 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      384 GETIMPORT                        R42 K78 [Enum.SortOrder.LayoutOrder]
      386 SETTABLEKS                       R42 R41 K69 ["SortOrder"]
      388 GETIMPORT                        R42 K114 [Enum.FillDirection.Vertical]
      390 SETTABLEKS                       R42 R41 K66 ["FillDirection"]
      392 GETIMPORT                        R42 K75 [Enum.HorizontalAlignment.Left]
      394 SETTABLEKS                       R42 R41 K67 ["HorizontalAlignment"]
      396 GETIMPORT                        R42 K77 [Enum.VerticalAlignment.Top]
      398 SETTABLEKS                       R42 R41 K68 ["VerticalAlignment"]
      400 GETIMPORT                        R42 K80 [UDim.new]
      402 LOADN                            R43 0
      403 LOADN                            R44 0
      404 CALL                             R42 2 1
      405 SETTABLEKS                       R42 R41 K70 ["Padding"]
      407 CALL                             R39 2 1
      408 SETTABLEKS                       R39 R38 K63 ["UIListLayout"]
      410 GETUPVAL                         R39 8
      411 GETTABLEKS                       R39 R39 K52 ["createElement"]
      413 GETUPVAL                         R40 11
      414 DUPTABLE                         R41 K118 [{["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Padding"], ["Size"], ["Spacing"] = 10, ["VerticalAlignment"]}]
      415 GETIMPORT                        R42 K75 [Enum.HorizontalAlignment.Left]
      417 SETTABLEKS                       R42 R41 K67 ["HorizontalAlignment"]
      419 GETIMPORT                        R42 K73 [Enum.FillDirection.Horizontal]
      421 SETTABLEKS                       R42 R41 K115 ["Layout"]
      423 NAMECALL                         R42 R30 K119 ["getNextOrder"]
      425 CALL                             R42 1 1
      426 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      428 DUPTABLE                         R42 K121 [{["Bottom"] = 10}]
      429 SETTABLEKS                       R42 R41 K70 ["Padding"]
      431 GETIMPORT                        R42 K62 [UDim2.new]
      433 LOADN                            R43 1
      434 LOADN                            R44 0
      435 LOADN                            R45 0
      436 LOADN                            R46 34
      437 CALL                             R42 4 1
      438 SETTABLEKS                       R42 R41 K57 ["Size"]
      440 GETIMPORT                        R42 K77 [Enum.VerticalAlignment.Top]
      442 SETTABLEKS                       R42 R41 K68 ["VerticalAlignment"]
      444 DUPTABLE                         R42 K124 [{"ToggleButton", "ErrorText"}]
      445 GETUPVAL                         R43 8
      446 GETTABLEKS                       R43 R43 K52 ["createElement"]
      448 GETUPVAL                         R44 12
      449 DUPTABLE                         R45 K128 [{["Disabled"], ["LayoutOrder"] = 1, ["OnClick"], ["Selected"], ["Size"]}]
      450 NOT                              R46 R8
      451 SETTABLEKS                       R46 R45 K125 ["Disabled"]
      453 GETTABLEKS                       R46 R0 K129 ["toggleCallback"]
      455 SETTABLEKS                       R46 R45 K126 ["OnClick"]
      457 SETTABLEKS                       R7 R45 K127 ["Selected"]
      459 GETIMPORT                        R46 K62 [UDim2.new]
      461 LOADN                            R47 0
      462 LOADN                            R48 40
      463 LOADN                            R49 0
      464 LOADN                            R50 24
      465 CALL                             R46 4 1
      466 SETTABLEKS                       R46 R45 K57 ["Size"]
      468 CALL                             R43 2 1
      469 SETTABLEKS                       R43 R42 K122 ["ToggleButton"]
      471 JUMPIFNOT                        R29 ; [+46]
      472 GETUPVAL                         R43 8
      473 GETTABLEKS                       R43 R43 K52 ["createElement"]
      475 LOADK                            R44 K81 ["TextLabel"]
      476 DUPTABLE                         R45 K130 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Font"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"]}]
      477 GETIMPORT                        R46 K132 [Enum.AutomaticSize.XY]
      479 SETTABLEKS                       R46 R45 K54 ["AutomaticSize"]
      481 GETUPVAL                         R46 10
      482 GETTABLEKS                       R46 R46 K96 ["FONT"]
      484 SETTABLEKS                       R46 R45 K89 ["Font"]
      486 GETIMPORT                        R46 K62 [UDim2.new]
      488 LOADN                            R47 1
      489 LOADN                            R48 0
      490 LOADN                            R49 0
      491 LOADN                            R50 0
      492 CALL                             R46 4 1
      493 SETTABLEKS                       R46 R45 K57 ["Size"]
      495 SETTABLEKS                       R12 R45 K82 ["Text"]
      497 GETTABLEKS                       R46 R1 K133 ["assetConfig"]
      499 GETTABLEKS                       R46 R46 K134 ["errorColor"]
      501 SETTABLEKS                       R46 R45 K86 ["TextColor3"]
      503 GETIMPORT                        R46 K92 [Enum.TextXAlignment.Left]
      505 SETTABLEKS                       R46 R45 K83 ["TextXAlignment"]
      507 GETIMPORT                        R46 K136 [Enum.TextYAlignment.Center]
      509 SETTABLEKS                       R46 R45 K84 ["TextYAlignment"]
      511 GETUPVAL                         R46 10
      512 GETTABLEKS                       R46 R46 K137 ["FONT_SIZE_LARGE"]
      514 SETTABLEKS                       R46 R45 K85 ["TextSize"]
      516 CALL                             R43 2 1
      517 JUMP                             ; [+1]
      518 LOADNIL                          R43
      519 SETTABLEKS                       R43 R42 K123 ["ErrorText"]
      521 CALL                             R39 3 1
      522 SETTABLEKS                       R39 R38 K100 ["ToggleButtonContainer"]
      524 JUMPIFNOT                        R14 ; [+123]
      525 GETUPVAL                         R39 8
      526 GETTABLEKS                       R39 R39 K52 ["createElement"]
      528 GETUPVAL                         R40 11
      529 DUPTABLE                         R41 K138 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding"}]
      530 GETIMPORT                        R42 K132 [Enum.AutomaticSize.XY]
      532 SETTABLEKS                       R42 R41 K54 ["AutomaticSize"]
      534 GETIMPORT                        R42 K75 [Enum.HorizontalAlignment.Left]
      536 SETTABLEKS                       R42 R41 K67 ["HorizontalAlignment"]
      538 GETIMPORT                        R42 K114 [Enum.FillDirection.Vertical]
      540 SETTABLEKS                       R42 R41 K115 ["Layout"]
      542 NAMECALL                         R42 R30 K119 ["getNextOrder"]
      544 CALL                             R42 1 1
      545 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      547 DUPTABLE                         R42 K140 [{["Top"] = 5, ["Bottom"] = 5}]
      548 SETTABLEKS                       R42 R41 K70 ["Padding"]
      550 DUPTABLE                         R42 K144 [{"VerifyNoticeHeader", "VerifyReasonList", "CurrentLimitText"}]
      551 GETUPVAL                         R43 8
      552 GETTABLEKS                       R43 R43 K52 ["createElement"]
      554 GETUPVAL                         R44 13
      555 DUPTABLE                         R45 K145 [{"Text", "OnClick", "LayoutOrder"}]
      556 SETTABLEKS                       R19 R45 K82 ["Text"]
      558 GETTABLEKS                       R46 R0 K146 ["onClickVerifyLink"]
      560 SETTABLEKS                       R46 R45 K126 ["OnClick"]
      562 NAMECALL                         R46 R30 K119 ["getNextOrder"]
      564 CALL                             R46 1 1
      565 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      567 CALL                             R43 2 1
      568 SETTABLEKS                       R43 R42 K141 ["VerifyNoticeHeader"]
      570 GETUPVAL                         R43 8
      571 GETTABLEKS                       R43 R43 K52 ["createElement"]
      573 GETUPVAL                         R44 11
      574 DUPTABLE                         R45 K138 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding"}]
      575 GETIMPORT                        R46 K132 [Enum.AutomaticSize.XY]
      577 SETTABLEKS                       R46 R45 K54 ["AutomaticSize"]
      579 GETIMPORT                        R46 K75 [Enum.HorizontalAlignment.Left]
      581 SETTABLEKS                       R46 R45 K67 ["HorizontalAlignment"]
      583 GETIMPORT                        R46 K114 [Enum.FillDirection.Vertical]
      585 SETTABLEKS                       R46 R45 K115 ["Layout"]
      587 NAMECALL                         R46 R30 K119 ["getNextOrder"]
      589 CALL                             R46 1 1
      590 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      592 DUPTABLE                         R46 K147 [{["Left"] = 10}]
      593 SETTABLEKS                       R46 R45 K70 ["Padding"]
      595 MOVE                             R46 R20
      596 CALL                             R43 3 1
      597 SETTABLEKS                       R43 R42 K142 ["VerifyReasonList"]
      599 JUMPIFNOT                        R15 ; [+43]
      600 GETUPVAL                         R43 8
      601 GETTABLEKS                       R43 R43 K52 ["createElement"]
      603 GETUPVAL                         R44 11
      604 DUPTABLE                         R45 K148 [{"AutomaticSize", "LayoutOrder", "Padding"}]
      605 GETIMPORT                        R46 K132 [Enum.AutomaticSize.XY]
      607 SETTABLEKS                       R46 R45 K54 ["AutomaticSize"]
      609 NAMECALL                         R46 R30 K119 ["getNextOrder"]
      611 CALL                             R46 1 1
      612 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      614 DUPTABLE                         R46 K150 [{["Left"] = 15}]
      615 SETTABLEKS                       R46 R45 K70 ["Padding"]
      617 DUPTABLE                         R46 K151 [{"Text"}]
      618 GETUPVAL                         R47 8
      619 GETTABLEKS                       R47 R47 K52 ["createElement"]
      621 GETUPVAL                         R48 14
      622 DUPTABLE                         R49 K154 [{["AutomaticSize"], ["RichText"] = True, ["Text"], ["TextColor"], ["TextSize"]}]
      623 GETIMPORT                        R50 K132 [Enum.AutomaticSize.XY]
      625 SETTABLEKS                       R50 R49 K54 ["AutomaticSize"]
      627 SETTABLEKS                       R21 R49 K82 ["Text"]
      629 GETTABLEKS                       R50 R13 K155 ["verifyTextColor"]
      631 SETTABLEKS                       R50 R49 K153 ["TextColor"]
      633 GETUPVAL                         R50 10
      634 GETTABLEKS                       R50 R50 K137 ["FONT_SIZE_LARGE"]
      636 SETTABLEKS                       R50 R49 K85 ["TextSize"]
      638 CALL                             R47 2 1
      639 SETTABLEKS                       R47 R46 K82 ["Text"]
      641 CALL                             R43 3 1
      642 JUMP                             ; [+1]
      643 LOADNIL                          R43
      644 SETTABLEKS                       R43 R42 K143 ["CurrentLimitText"]
      646 CALL                             R39 3 1
      647 JUMP                             ; [+1]
      648 LOADNIL                          R39
      649 SETTABLEKS                       R39 R38 K101 ["VerifyNotice"]
      651 JUMPIFNOT                        R17 ; [+56]
      652 GETUPVAL                         R39 8
      653 GETTABLEKS                       R39 R39 K52 ["createElement"]
      655 GETUPVAL                         R40 11
      656 DUPTABLE                         R41 K156 [{"AutomaticSize", "Layout", "HorizontalAlignment", "LayoutOrder", "Padding"}]
      657 GETIMPORT                        R42 K132 [Enum.AutomaticSize.XY]
      659 SETTABLEKS                       R42 R41 K54 ["AutomaticSize"]
      661 GETIMPORT                        R42 K114 [Enum.FillDirection.Vertical]
      663 SETTABLEKS                       R42 R41 K115 ["Layout"]
      665 GETIMPORT                        R42 K75 [Enum.HorizontalAlignment.Left]
      667 SETTABLEKS                       R42 R41 K67 ["HorizontalAlignment"]
      669 NAMECALL                         R42 R30 K119 ["getNextOrder"]
      671 CALL                             R42 1 1
      672 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      674 DUPTABLE                         R42 K140 [{["Top"] = 5, ["Bottom"] = 5}]
      675 SETTABLEKS                       R42 R41 K70 ["Padding"]
      677 DUPTABLE                         R42 K158 [{"DistributeToMarketplaceMessage"}]
      678 GETUPVAL                         R43 8
      679 GETTABLEKS                       R43 R43 K52 ["createElement"]
      681 LOADK                            R44 K81 ["TextLabel"]
      682 DUPTABLE                         R45 K159 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextWrapped"] = True, ["TextSize"], ["TextColor3"], ["LayoutOrder"] = 1}]
      683 GETIMPORT                        R46 K132 [Enum.AutomaticSize.XY]
      685 SETTABLEKS                       R46 R45 K54 ["AutomaticSize"]
      687 GETUPVAL                         R46 10
      688 GETTABLEKS                       R46 R46 K96 ["FONT"]
      690 SETTABLEKS                       R46 R45 K89 ["Font"]
      692 SETTABLEKS                       R17 R45 K82 ["Text"]
      694 GETUPVAL                         R46 10
      695 GETTABLEKS                       R46 R46 K137 ["FONT_SIZE_LARGE"]
      697 SETTABLEKS                       R46 R45 K85 ["TextSize"]
      699 GETTABLEKS                       R46 R13 K160 ["distributionQuotaTextColor"]
      701 SETTABLEKS                       R46 R45 K86 ["TextColor3"]
      703 CALL                             R43 2 1
      704 SETTABLEKS                       R43 R42 K157 ["DistributeToMarketplaceMessage"]
      706 CALL                             R39 3 1
      707 JUMP                             ; [+1]
      708 LOADNIL                          R39
      709 SETTABLEKS                       R39 R38 K102 ["DistributeToMarketplace"]
      711 JUMPIFNOT                        R15 ; [+59]
      712 GETUPVAL                         R39 8
      713 GETTABLEKS                       R39 R39 K52 ["createElement"]
      715 GETUPVAL                         R40 11
      716 DUPTABLE                         R41 K156 [{"AutomaticSize", "Layout", "HorizontalAlignment", "LayoutOrder", "Padding"}]
      717 GETIMPORT                        R42 K132 [Enum.AutomaticSize.XY]
      719 SETTABLEKS                       R42 R41 K54 ["AutomaticSize"]
      721 GETIMPORT                        R42 K114 [Enum.FillDirection.Vertical]
      723 SETTABLEKS                       R42 R41 K115 ["Layout"]
      725 GETIMPORT                        R42 K75 [Enum.HorizontalAlignment.Left]
      727 SETTABLEKS                       R42 R41 K67 ["HorizontalAlignment"]
      729 NAMECALL                         R42 R30 K119 ["getNextOrder"]
      731 CALL                             R42 1 1
      732 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      734 DUPTABLE                         R42 K140 [{["Top"] = 5, ["Bottom"] = 5}]
      735 SETTABLEKS                       R42 R41 K70 ["Padding"]
      737 DUPTABLE                         R42 K162 [{"QuotaMessage"}]
      738 JUMPIFNOT                        R18 ; [+27]
      739 GETUPVAL                         R43 8
      740 GETTABLEKS                       R43 R43 K52 ["createElement"]
      742 LOADK                            R44 K81 ["TextLabel"]
      743 DUPTABLE                         R45 K159 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextWrapped"] = True, ["TextSize"], ["TextColor3"], ["LayoutOrder"] = 1}]
      744 GETIMPORT                        R46 K132 [Enum.AutomaticSize.XY]
      746 SETTABLEKS                       R46 R45 K54 ["AutomaticSize"]
      748 GETUPVAL                         R46 10
      749 GETTABLEKS                       R46 R46 K96 ["FONT"]
      751 SETTABLEKS                       R46 R45 K89 ["Font"]
      753 SETTABLEKS                       R15 R45 K82 ["Text"]
      755 GETUPVAL                         R46 10
      756 GETTABLEKS                       R46 R46 K137 ["FONT_SIZE_LARGE"]
      758 SETTABLEKS                       R46 R45 K85 ["TextSize"]
      760 GETTABLEKS                       R46 R13 K160 ["distributionQuotaTextColor"]
      762 SETTABLEKS                       R46 R45 K86 ["TextColor3"]
      764 CALL                             R43 2 1
      765 JUMP                             ; [+1]
      766 LOADNIL                          R43
      767 SETTABLEKS                       R43 R42 K161 ["QuotaMessage"]
      769 CALL                             R39 3 1
      770 JUMP                             ; [+1]
      771 LOADNIL                          R39
      772 SETTABLEKS                       R39 R38 K103 ["QuotaInfo"]
      774 GETUPVAL                         R39 8
      775 GETTABLEKS                       R39 R39 K52 ["createElement"]
      777 GETUPVAL                         R40 14
      778 DUPTABLE                         R41 K164 [{["AutomaticSize"], ["Size"], ["Text"], ["StyleModifier"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["LayoutOrder"]}]
      779 GETIMPORT                        R42 K60 [Enum.AutomaticSize.Y]
      781 SETTABLEKS                       R42 R41 K54 ["AutomaticSize"]
      783 GETIMPORT                        R42 K62 [UDim2.new]
      785 LOADN                            R43 1
      786 LOADN                            R44 0
      787 LOADN                            R45 0
      788 LOADN                            R46 0
      789 CALL                             R42 4 1
      790 SETTABLEKS                       R42 R41 K57 ["Size"]
      792 SETTABLEKS                       R26 R41 K82 ["Text"]
      794 GETUPVAL                         R42 15
      795 GETTABLEKS                       R42 R42 K125 ["Disabled"]
      797 SETTABLEKS                       R42 R41 K163 ["StyleModifier"]
      799 GETIMPORT                        R42 K92 [Enum.TextXAlignment.Left]
      801 SETTABLEKS                       R42 R41 K83 ["TextXAlignment"]
      803 GETIMPORT                        R42 K136 [Enum.TextYAlignment.Center]
      805 SETTABLEKS                       R42 R41 K84 ["TextYAlignment"]
      807 GETUPVAL                         R42 10
      808 GETTABLEKS                       R42 R42 K137 ["FONT_SIZE_LARGE"]
      810 SETTABLEKS                       R42 R41 K85 ["TextSize"]
      812 NAMECALL                         R42 R30 K119 ["getNextOrder"]
      814 CALL                             R42 1 1
      815 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      817 CALL                             R39 2 1
      818 SETTABLEKS                       R39 R38 K104 ["TipsLabel"]
      820 GETUPVAL                         R40 16
      821 GETTABLEKS                       R40 R40 K165 ["hideAssetConfigDistributeLearnMoreLink"]
      823 CALL                             R40 0 1
      824 JUMPIF                           R40 ; [+18]
      825 GETUPVAL                         R39 8
      826 GETTABLEKS                       R39 R39 K52 ["createElement"]
      828 GETUPVAL                         R40 13
      829 DUPTABLE                         R41 K166 [{"LayoutOrder", "OnClick", "Text"}]
      830 NAMECALL                         R42 R30 K119 ["getNextOrder"]
      832 CALL                             R42 1 1
      833 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      835 GETTABLEKS                       R42 R0 K167 ["onLearnMoreActivated"]
      837 SETTABLEKS                       R42 R41 K126 ["OnClick"]
      839 SETTABLEKS                       R27 R41 K82 ["Text"]
      841 CALL                             R39 2 1
      842 JUMP                             ; [+1]
      843 LOADNIL                          R39
      844 SETTABLEKS                       R39 R38 K105 ["LinkButton"]
      846 CALL                             R35 3 1
      847 SETTABLEKS                       R35 R34 K64 ["RightFrame"]
      849 CALL                             R31 3 -1
      850 RETURN                           R31 -1

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
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K3 ["contains"]
       25 MOVE                             R7 R5
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K4 ["Package"]
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
       31 GETIMPORT                        R5 K10 [script]
       33 GETTABLEKS                       R5 R5 K11 ["Parent"]
       35 GETTABLEKS                       R5 R5 K11 ["Parent"]
       37 GETTABLEKS                       R5 R5 K11 ["Parent"]
       39 GETTABLEKS                       R5 R5 K11 ["Parent"]
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
       65 GETTABLEKS                       R12 R5 K19 ["Src"]
       67 GETTABLEKS                       R12 R12 K20 ["Types"]
       69 GETTABLEKS                       R12 R12 K21 ["AssetQuotaTypes"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K14 [require]
       74 GETTABLEKS                       R13 R5 K19 ["Src"]
       76 GETTABLEKS                       R13 R13 K20 ["Types"]
       78 GETTABLEKS                       R13 R13 K22 ["AssetSubTypes"]
       80 CALL                             R12 1 1
       81 GETTABLEKS                       R13 R8 K23 ["Util"]
       83 GETTABLEKS                       R13 R13 K24 ["formatLocalDateTime"]
       85 GETIMPORT                        R14 K14 [require]
       87 GETTABLEKS                       R15 R6 K16 ["Framework"]
       89 CALL                             R14 1 1
       90 GETTABLEKS                       R14 R14 K25 ["ContextServices"]
       92 GETIMPORT                        R15 K14 [require]
       94 GETTABLEKS                       R16 R5 K19 ["Src"]
       96 GETTABLEKS                       R16 R16 K25 ["ContextServices"]
       98 GETTABLEKS                       R16 R16 K26 ["IXPContext"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K14 [require]
      103 GETTABLEKS                       R17 R5 K19 ["Src"]
      105 GETTABLEKS                       R17 R17 K25 ["ContextServices"]
      107 GETTABLEKS                       R17 R17 K27 ["NetworkContext"]
      109 CALL                             R16 1 1
      110 GETTABLEKS                       R17 R14 K28 ["withContext"]
      112 GETTABLEKS                       R18 R5 K19 ["Src"]
      114 GETTABLEKS                       R18 R18 K23 ["Util"]
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
      138 GETTABLEKS                       R24 R5 K19 ["Src"]
      140 GETTABLEKS                       R24 R24 K23 ["Util"]
      142 GETTABLEKS                       R24 R24 K33 ["ToolboxUtilities"]
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
      190 GETTABLEKS                       R36 R8 K23 ["Util"]
      192 GETTABLEKS                       R36 R36 K46 ["StyleModifier"]
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
