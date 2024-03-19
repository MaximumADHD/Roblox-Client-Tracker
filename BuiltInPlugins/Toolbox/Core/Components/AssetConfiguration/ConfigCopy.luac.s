PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["AssetType"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["CopyEnabled"]
  JUMPIFNOT R3 [+9]
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["getSafetyLearnMoreUrl"]
  CALL R5 0 -1
  NAMECALL R3 R3 K4 ["OpenBrowserWindow"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 4
  CALL R3 0 1
  JUMPIFNOT R3 [+19]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K5 ["isRestrictionAppealable"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K6 ["publishingRestriction"]
  CALL R3 1 1
  JUMPIFNOT R3 [+9]
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K7 ["getAppealsPortalUrl"]
  CALL R5 0 -1
  NAMECALL R3 R3 K4 ["OpenBrowserWindow"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 6
  JUMPIFNOT R3 [+50]
  GETIMPORT R3 K10 [Enum.AssetType.Video]
  JUMPIFNOTEQ R2 R3 [+10]
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K11 ["getVideoPrivacyLearnMoreUrl"]
  CALL R5 0 -1
  NAMECALL R3 R3 K4 ["OpenBrowserWindow"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 4
  CALL R3 0 1
  JUMPIFNOT R3 [+13]
  GETIMPORT R3 K13 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R2 R3 [+10]
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K14 ["getAudioPrivacyLearnMoreUrl"]
  CALL R5 0 -1
  NAMECALL R3 R3 K4 ["OpenBrowserWindow"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 4
  CALL R3 0 1
  JUMPIFNOT R3 [+9]
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["getSafetyLearnMoreUrl"]
  CALL R5 0 -1
  NAMECALL R3 R3 K4 ["OpenBrowserWindow"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K14 ["getAudioPrivacyLearnMoreUrl"]
  CALL R5 0 -1
  NAMECALL R3 R3 K4 ["OpenBrowserWindow"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 4
  CALL R3 0 1
  JUMPIFNOT R3 [+22]
  GETIMPORT R3 K13 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R2 R3 [+10]
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K14 ["getAudioPrivacyLearnMoreUrl"]
  CALL R5 0 -1
  NAMECALL R3 R3 K4 ["OpenBrowserWindow"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["getSafetyLearnMoreUrl"]
  CALL R5 0 -1
  NAMECALL R3 R3 K4 ["OpenBrowserWindow"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K14 ["getAudioPrivacyLearnMoreUrl"]
  CALL R5 0 -1
  NAMECALL R3 R3 K4 ["OpenBrowserWindow"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AssetType"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R2 R1 K2 ["CopyOn"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R4 R1 K4 ["IsAssetPublic"]
  GETIMPORT R5 K7 [Enum.AssetType.Audio]
  JUMPIFEQ R0 R5 [+7]
  GETUPVAL R5 2
  JUMPIFNOT R5 [+22]
  GETIMPORT R5 K9 [Enum.AssetType.Video]
  JUMPIFNOTEQ R0 R5 [+19]
  JUMPIF R4 [+17]
  GETUPVAL R5 1
  LOADN R6 5
  SETTABLEKS R6 R5 K10 ["warningCountdown"]
  GETUPVAL R5 1
  DUPTABLE R7 K12 [{"copyWarning"}]
  LOADK R10 K13 ["AssetConfigCopy"]
  LOADK R11 K14 ["MustShare"]
  NAMECALL R8 R3 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["copyWarning"]
  NAMECALL R5 R5 K16 ["setState"]
  CALL R5 2 0
  JUMP [+4]
  GETTABLEKS R5 R1 K17 ["ToggleCallback"]
  NOT R6 R2
  CALL R5 1 0
  GETIMPORT R5 K19 [Enum.AssetType.Plugin]
  JUMPIFNOTEQ R0 R5 [+28]
  GETTABLEKS R5 R1 K20 ["canChangeSalesStatus"]
  GETTABLEKS R6 R1 K21 ["currentAssetStatus"]
  GETTABLEKS R7 R1 K22 ["onStatusChange"]
  JUMPIFNOT R5 [+20]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K23 ["isOnSale"]
  MOVE R10 R6
  CALL R9 1 1
  JUMPIFNOT R9 [+6]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K24 ["ASSET_STATUS"]
  GETTABLEKS R8 R9 K25 ["OffSale"]
  JUMP [+5]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K24 ["ASSET_STATUS"]
  GETTABLEKS R8 R9 K26 ["OnSale"]
  MOVE R9 R7
  MOVE R10 R8
  CALL R9 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["AssetType"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["distributionQuotaPolicy"]
  GETTABLEKS R3 R0 K3 ["Name"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K4 ["link"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R4 R1 K4 ["link"]
  NAMECALL R2 R2 K5 ["OpenBrowserWindow"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["getVerificationDocumentationUrl"]
  CALL R2 0 -1
  NAMECALL R0 R0 K1 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  GETTABLEKS R2 R1 K2 ["publishAsset"]
  NEWTABLE R3 0 0
  GETIMPORT R4 K4 [ipairs]
  MOVE R5 R0
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K11 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
  GETIMPORT R12 K14 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K6 ["AutomaticSize"]
  GETIMPORT R12 K16 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K7 ["HorizontalAlignment"]
  GETIMPORT R12 K19 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K8 ["Layout"]
  SETTABLEKS R7 R11 K9 ["LayoutOrder"]
  LOADN R12 10
  SETTABLEKS R12 R11 K10 ["Spacing"]
  DUPTABLE R12 K22 [{"Bullet", "Text"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K25 [{"AutomaticSize", "Text", "TextColor", "TextSize"}]
  GETIMPORT R16 K14 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K6 ["AutomaticSize"]
  LOADK R16 K26 ["•"]
  SETTABLEKS R16 R15 K21 ["Text"]
  GETTABLEKS R16 R2 K27 ["verifyTextColor"]
  SETTABLEKS R16 R15 K23 ["TextColor"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K28 ["FONT_SIZE_LARGE"]
  SETTABLEKS R16 R15 K24 ["TextSize"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["Bullet"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K25 [{"AutomaticSize", "Text", "TextColor", "TextSize"}]
  GETIMPORT R16 K14 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K6 ["AutomaticSize"]
  SETTABLEKS R8 R15 K21 ["Text"]
  GETTABLEKS R16 R2 K27 ["verifyTextColor"]
  SETTABLEKS R16 R15 K23 ["TextColor"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K28 ["FONT_SIZE_LARGE"]
  SETTABLEKS R16 R15 K24 ["TextSize"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K21 ["Text"]
  CALL R9 3 1
  SETTABLE R9 R3 R8
  FORGLOOP R4 2 [inext] [-73]
  RETURN R3 1

PROTO_5:
  LOADN R2 0
  SETTABLEKS R2 R0 K0 ["warningCountdown"]
  DUPTABLE R2 K2 [{"copyWarning"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["None"]
  SETTABLEKS R3 R2 K1 ["copyWarning"]
  SETTABLEKS R2 R0 K4 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R2 R0 K5 ["onLearnMoreActivated"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R2 R0 K6 ["toggleCallback"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["getAssetConfigDistributionQuotas"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K8 ["distributionQuotaPolicy"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K9 ["onQuotaLinkActivated"]
  DUPCLOSURE R2 K10 [PROTO_3]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K11 ["onClickVerifyLink"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  SETTABLEKS R2 R0 K12 ["getListBullets"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["copyWarning"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["None"]
  JUMPIFEQ R1 R2 [+21]
  GETUPVAL R2 1
  GETTABLEKS R3 R2 K2 ["warningCountdown"]
  GETUPVAL R4 2
  SUB R3 R3 R4
  SETTABLEKS R3 R2 K2 ["warningCountdown"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["warningCountdown"]
  LOADN R3 0
  JUMPIFNOTLE R2 R3 [+8]
  DUPTABLE R2 K3 [{"copyWarning"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["None"]
  SETTABLEKS R3 R2 K0 ["copyWarning"]
  RETURN R2 1
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+18]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["AssetType"]
  GETIMPORT R4 K4 [Enum.AssetType.Audio]
  JUMPIFEQ R3 R4 [+13]
  GETUPVAL R3 1
  JUMPIFNOT R3 [+8]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["AssetType"]
  GETIMPORT R4 K6 [Enum.AssetType.Video]
  JUMPIFEQ R3 R4 [+3]
  GETUPVAL R3 0
  JUMPIF R3 [+16]
  GETIMPORT R4 K8 [game]
  LOADK R6 K9 ["RunService"]
  NAMECALL R4 R4 K10 ["GetService"]
  CALL R4 2 1
  GETTABLEKS R3 R4 K11 ["Heartbeat"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R4 R3 K12 ["connect"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K13 ["connection"]
  NAMECALL R3 R0 K14 ["updateDistributionQuotas"]
  CALL R3 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["connection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["connection"]
  NAMECALL R1 R1 K1 ["disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["IsAssetPublic"]
  NOT R1 R2
  JUMPIFNOT R1 [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["IsAssetPublic"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["IsAudio"]
  JUMPIF R2 [+6]
  GETUPVAL R2 2
  JUMPIFNOT R2 [+23]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["IsVideo"]
  JUMPIFNOT R2 [+19]
  GETTABLEKS R2 R0 K3 ["copyWarning"]
  GETUPVAL R3 3
  JUMPIFEQ R2 R3 [+15]
  JUMPIFNOT R1 [+13]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["CopyOn"]
  JUMPIFNOT R2 [+9]
  GETUPVAL R2 4
  LOADN R3 5
  SETTABLEKS R3 R2 K5 ["warningCountdown"]
  DUPTABLE R2 K6 [{"copyWarning"}]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K3 ["copyWarning"]
  RETURN R2 1
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K3 ["copyWarning"]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K7 ["None"]
  JUMPIFEQ R2 R3 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["IsAssetPublic"]
  JUMPIFNOT R2 [+7]
  DUPTABLE R2 K6 [{"copyWarning"}]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K7 ["None"]
  SETTABLEKS R3 R2 K3 ["copyWarning"]
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["copyWarning"]
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+14]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["PackageOn"]
  JUMPIFNOT R1 [+9]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["PackageOn"]
  JUMPIF R1 [+5]
  DUPTABLE R1 K2 [{"copyWarning"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["copyWarning"]
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["copyWarning"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K3 ["None"]
  JUMPIFEQ R1 R2 [+16]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["PackageOn"]
  JUMPIF R1 [+11]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["PackageOn"]
  JUMPIFNOT R1 [+7]
  DUPTABLE R1 K2 [{"copyWarning"}]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K3 ["None"]
  SETTABLEKS R2 R1 K0 ["copyWarning"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_12:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["AssetType"]
  GETTABLEKS R5 R3 K2 ["Localization"]
  LOADK R8 K3 ["AssetConfigCopy"]
  LOADK R9 K4 ["MustShare"]
  NAMECALL R6 R5 K5 ["getText"]
  CALL R6 3 1
  LOADK R9 K3 ["AssetConfigCopy"]
  LOADK R10 K6 ["PackageCantShareOnCreatorStore"]
  NAMECALL R7 R5 K5 ["getText"]
  CALL R7 3 1
  GETIMPORT R8 K9 [Enum.AssetType.Audio]
  JUMPIFEQ R4 R8 [+7]
  GETUPVAL R8 0
  JUMPIFNOT R8 [+16]
  GETIMPORT R8 K11 [Enum.AssetType.Video]
  JUMPIFNOTEQ R4 R8 [+13]
  NEWCLOSURE R10 P0
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  NAMECALL R8 R0 K12 ["setState"]
  CALL R8 2 0
  JUMP [+22]
  GETTABLEKS R8 R3 K1 ["AssetType"]
  GETIMPORT R9 K14 [Enum.AssetType.Model]
  JUMPIFNOTEQ R8 R9 [+17]
  GETUPVAL R8 2
  JUMPIFNOT R8 [+14]
  GETTABLEKS R8 R3 K15 ["isPackageAsset"]
  JUMPIF R8 [+11]
  GETTABLEKS R8 R3 K16 ["isPackageMarketplacePublishAllowed"]
  JUMPIF R8 [+8]
  NEWCLOSURE R10 P1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  NAMECALL R8 R0 K12 ["setState"]
  CALL R8 2 0
  GETTABLEKS R8 R1 K1 ["AssetType"]
  JUMPIFEQ R4 R8 [+4]
  NAMECALL R8 R0 K17 ["updateDistributionQuotas"]
  CALL R8 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["duration"]
  JUMPIFEQKS R2 K1 ["Month"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_14:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIFNOT R1 [+17]
  GETTABLEKS R3 R1 K1 ["quotas"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R4 R1 K1 ["quotas"]
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["find"]
  GETTABLEKS R3 R1 K1 ["quotas"]
  DUPCLOSURE R4 K3 [PROTO_13]
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 1
  DUPTABLE R5 K5 [{"distributionQuota"}]
  SETTABLEKS R2 R5 K4 ["distributionQuota"]
  NAMECALL R3 R3 K6 ["setState"]
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R3 1
  DUPTABLE R5 K5 [{"distributionQuota"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["None"]
  SETTABLEKS R6 R5 K4 ["distributionQuota"]
  NAMECALL R3 R3 K6 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"distributionQuota"}]
  DUPTABLE R4 K4 [{"capacity", "usage"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K2 ["capacity"]
  LOADN R5 0
  SETTABLEKS R5 R4 K3 ["usage"]
  SETTABLEKS R4 R3 K0 ["distributionQuota"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+10]
  GETIMPORT R1 K8 [warn]
  LOADK R3 K9 ["Error fetching asset quotas "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K11 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Network"]
  GETTABLEKS R1 R2 K2 ["networkInterface"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["AssetType"]
  MOVE R3 R2
  JUMPIFNOT R3 [+5]
  GETTABLEKS R4 R0 K4 ["distributionQuotaPolicy"]
  GETTABLEKS R5 R2 K5 ["Name"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+10]
  DUPTABLE R6 K7 [{"distributionQuota"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["None"]
  SETTABLEKS R7 R6 K6 ["distributionQuota"]
  NAMECALL R4 R0 K9 ["setState"]
  CALL R4 2 0
  RETURN R0 0
  MOVE R6 R2
  LOADK R7 K10 ["RateLimitCreatorMarketplaceDistribute"]
  NAMECALL R4 R1 K11 ["getCreatorMarketplaceQuotas"]
  CALL R4 3 1
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R4 R4 K12 ["andThen"]
  CALL R4 3 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R0 K1 ["state"]
  LOADB R4 1
  LOADNIL R5
  GETTABLEKS R6 R2 K2 ["AssetType"]
  MOVE R7 R6
  JUMPIFNOT R7 [+5]
  GETTABLEKS R8 R0 K3 ["distributionQuotaPolicy"]
  GETTABLEKS R9 R6 K4 ["Name"]
  GETTABLE R7 R8 R9
  GETTABLEKS R8 R3 K5 ["distributionQuota"]
  JUMPIFNOT R7 [+101]
  JUMPIFNOT R8 [+100]
  GETTABLEKS R9 R8 K6 ["usage"]
  GETTABLEKS R10 R8 K7 ["capacity"]
  GETTABLEKS R12 R8 K9 ["expirationTime"]
  ORK R11 R12 K8 [""]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K10 ["Localization"]
  NAMECALL R12 R12 K11 ["getLocale"]
  CALL R12 1 1
  LOADN R13 1
  JUMPIFNOTLT R10 R13 [+12]
  LOADB R4 0
  GETTABLEKS R13 R2 K10 ["Localization"]
  LOADK R15 K12 ["AssetConfigSharing"]
  LOADK R16 K13 ["DistributeCreatorStoreQuotaUnavailable"]
  NAMECALL R13 R13 K14 ["getText"]
  CALL R13 3 1
  MOVE R5 R13
  LOADB R1 0
  JUMP [+72]
  JUMPIFNOTEQKN R9 K15 [0] [+25]
  GETTABLEKS R13 R2 K10 ["Localization"]
  LOADK R15 K12 ["AssetConfigSharing"]
  LOADK R16 K16 ["DistributeMarketplaceQuotaUnused2"]
  DUPTABLE R17 K18 [{"capacity", "days"}]
  GETIMPORT R18 K21 [string.format]
  LOADK R19 K22 ["%d"]
  MOVE R20 R10
  CALL R18 2 1
  SETTABLEKS R18 R17 K7 ["capacity"]
  GETIMPORT R18 K21 [string.format]
  LOADK R19 K22 ["%d"]
  LOADN R20 30
  CALL R18 2 1
  SETTABLEKS R18 R17 K17 ["days"]
  NAMECALL R13 R13 K14 ["getText"]
  CALL R13 4 1
  MOVE R5 R13
  JUMP [+46]
  JUMPIFNOTLE R10 R9 [+19]
  LOADB R4 0
  GETUPVAL R13 0
  MOVE R14 R11
  LOADK R15 K23 ["MMM D, h:mmA"]
  MOVE R16 R12
  CALL R13 3 1
  GETTABLEKS R14 R2 K10 ["Localization"]
  LOADK R16 K12 ["AssetConfigSharing"]
  LOADK R17 K24 ["DistributeMarketplaceQuotaExhausted1"]
  DUPTABLE R18 K26 [{"dateTime"}]
  SETTABLEKS R13 R18 K25 ["dateTime"]
  NAMECALL R14 R14 K14 ["getText"]
  CALL R14 4 1
  MOVE R5 R14
  JUMP [+26]
  LOADN R13 0
  JUMPIFNOTLT R13 R9 [+24]
  GETUPVAL R13 0
  MOVE R14 R11
  LOADK R15 K27 ["MMM D"]
  MOVE R16 R12
  CALL R13 3 1
  GETTABLEKS R14 R2 K10 ["Localization"]
  LOADK R16 K12 ["AssetConfigSharing"]
  LOADK R17 K28 ["DistributeMarketplaceQuotaRemaining2"]
  DUPTABLE R18 K31 [{"remaining", "date"}]
  GETIMPORT R19 K21 [string.format]
  LOADK R20 K22 ["%d"]
  SUB R21 R10 R9
  CALL R19 2 1
  SETTABLEKS R19 R18 K29 ["remaining"]
  SETTABLEKS R13 R18 K30 ["date"]
  NAMECALL R14 R14 K14 ["getText"]
  CALL R14 4 1
  MOVE R5 R14
  MOVE R9 R4
  MOVE R10 R5
  MOVE R11 R1
  RETURN R9 3

PROTO_18:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R4 R2 K3 ["Title"]
  GETTABLEKS R5 R2 K4 ["LayoutOrder"]
  GETTABLEKS R6 R2 K5 ["AssetType"]
  GETTABLEKS R7 R2 K6 ["CopyOn"]
  GETTABLEKS R8 R2 K7 ["CopyEnabled"]
  GETTABLEKS R9 R2 K8 ["IsAssetPublic"]
  GETTABLEKS R10 R2 K9 ["isVerified"]
  GETTABLEKS R11 R2 K10 ["verificationSupportedTypes"]
  GETTABLEKS R12 R3 K11 ["copyWarning"]
  GETTABLEKS R13 R1 K12 ["publishAsset"]
  NOT R14 R10
  JUMPIFNOT R14 [+6]
  LENGTH R15 R11
  LOADN R16 0
  JUMPIFLT R16 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  LOADNIL R15
  JUMPIFNOT R6 [+11]
  JUMPIFNOT R8 [+10]
  LOADNIL R16
  MOVE R19 R14
  NAMECALL R17 R0 K13 ["getDistributionQuotaStatus"]
  CALL R17 2 3
  MOVE R16 R17
  MOVE R15 R18
  MOVE R14 R19
  JUMPIF R16 [+1]
  MOVE R8 R7
  GETUPVAL R16 0
  JUMPIF R16 [+8]
  GETUPVAL R16 1
  JUMPIFNOT R16 [+6]
  GETUPVAL R16 2
  GETTABLEKS R17 R2 K14 ["IXP"]
  LOADK R18 K15 ["MarketplaceModelsAsPackages"]
  LOADK R19 K16 ["MarketplaceModelsAsPackagesEnabled"]
  CALL R16 3 1
  JUMPIFNOT R16 [+12]
  GETIMPORT R18 K19 [Enum.AssetType.Model]
  JUMPIFNOTEQ R6 R18 [+9]
  GETTABLEKS R17 R2 K20 ["Localization"]
  LOADK R19 K21 ["AssetConfigCopy"]
  LOADK R20 K22 ["DistributeToCreatorStoreAsPackageWarning"]
  NAMECALL R17 R17 K23 ["getText"]
  CALL R17 3 1
  JUMP [+1]
  LOADNIL R17
  MOVE R18 R15
  JUMPIFNOT R18 [+4]
  JUMPIFNOTEQKS R15 K24 [""] [+2]
  LOADB R18 0 +1
  LOADB R18 1
  LOADNIL R19
  LOADNIL R20
  LOADNIL R21
  JUMPIF R10 [+1]
  LOADB R18 0
  GETTABLEKS R22 R2 K20 ["Localization"]
  LOADK R24 K25 ["AssetConfigSharing"]
  LOADK R25 K26 ["VerifyYourAccount"]
  NAMECALL R22 R22 K23 ["getText"]
  CALL R22 3 1
  MOVE R19 R22
  LOADNIL R22
  JUMPIFNOT R15 [+28]
  LOADK R23 K27 ["<font color=\"#"]
  GETUPVAL R28 3
  GETTABLEKS R29 R13 K28 ["quotaTextColor"]
  NAMECALL R29 R29 K29 ["ToHex"]
  CALL R29 1 -1
  CALL R28 -1 1
  MOVE R24 R28
  LOADK R25 K30 ["\">"]
  GETUPVAL R28 3
  MOVE R29 R15
  CALL R28 1 1
  MOVE R26 R28
  LOADK R27 K31 ["</font>"]
  CONCAT R22 R23 R27
  GETTABLEKS R23 R2 K20 ["Localization"]
  LOADK R25 K25 ["AssetConfigSharing"]
  LOADK R26 K32 ["VerifyCurrentLimit"]
  DUPTABLE R27 K34 [{"quotaText"}]
  ORK R28 R22 K24 [""]
  SETTABLEKS R28 R27 K33 ["quotaText"]
  NAMECALL R23 R23 K23 ["getText"]
  CALL R23 4 1
  MOVE R21 R23
  GETTABLEKS R23 R2 K20 ["Localization"]
  LOADK R25 K25 ["AssetConfigSharing"]
  LOADK R26 K35 ["VerifyReason1"]
  NAMECALL R23 R23 K23 ["getText"]
  CALL R23 3 1
  GETTABLEKS R24 R2 K20 ["Localization"]
  LOADK R26 K25 ["AssetConfigSharing"]
  LOADK R27 K36 ["VerifyReason2CreatorStore"]
  NAMECALL R24 R24 K23 ["getText"]
  CALL R24 3 1
  GETTABLEKS R25 R0 K37 ["getListBullets"]
  NEWTABLE R26 0 2
  MOVE R27 R23
  MOVE R28 R24
  SETLIST R26 R27 2 [1]
  CALL R25 1 1
  MOVE R20 R25
  GETTABLEKS R25 R2 K20 ["Localization"]
  LOADK R28 K21 ["AssetConfigCopy"]
  LOADK R29 K38 ["DistributeAgreement"]
  NAMECALL R26 R25 K23 ["getText"]
  CALL R26 3 1
  LOADK R29 K39 ["General"]
  LOADK R30 K40 ["LearnMore"]
  NAMECALL R27 R25 K23 ["getText"]
  CALL R27 3 1
  GETUPVAL R29 4
  CALL R29 0 1
  JUMPIFNOT R29 [+8]
  GETUPVAL R29 5
  GETTABLEKS R28 R29 K41 ["getDisplayTextForRestriction"]
  GETTABLEKS R29 R2 K42 ["publishingRestriction"]
  MOVE R30 R25
  CALL R28 2 1
  JUMP [+1]
  LOADNIL R28
  GETUPVAL R29 4
  CALL R29 0 1
  JUMPIFNOT R29 [+19]
  JUMPIFEQKNIL R28 [+18]
  ORK R26 R28 K24 [""]
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K43 ["isRestrictionAppealable"]
  GETTABLEKS R31 R0 K0 ["props"]
  GETTABLEKS R30 R31 K42 ["publishingRestriction"]
  CALL R29 1 1
  JUMPIFNOT R29 [+7]
  LOADK R31 K21 ["AssetConfigCopy"]
  LOADK R32 K44 ["SubmitAppeal"]
  NAMECALL R29 R25 K23 ["getText"]
  CALL R29 3 1
  MOVE R27 R29
  JUMP [0]
  GETUPVAL R31 6
  GETTABLEKS R30 R31 K45 ["None"]
  JUMPIFNOTEQ R12 R30 [+2]
  LOADB R29 0 +1
  LOADB R29 1
  GETIMPORT R30 K47 [Enum.AssetType.Audio]
  JUMPIFEQ R6 R30 [+7]
  GETUPVAL R30 7
  JUMPIFNOT R30 [+21]
  GETIMPORT R30 K49 [Enum.AssetType.Video]
  JUMPIFNOTEQ R6 R30 [+18]
  GETTABLEKS R25 R2 K20 ["Localization"]
  JUMPIFNOT R9 [+7]
  LOADK R32 K21 ["AssetConfigCopy"]
  LOADK R33 K38 ["DistributeAgreement"]
  NAMECALL R30 R25 K23 ["getText"]
  CALL R30 3 1
  MOVE R26 R30
  JUMP [+7]
  LOADK R32 K21 ["AssetConfigCopy"]
  LOADK R33 K50 ["TemporarilyDisabledMessageOnCreatorStore"]
  NAMECALL R30 R25 K23 ["getText"]
  CALL R30 3 1
  MOVE R26 R30
  LOADB R14 0
  GETUPVAL R31 8
  GETTABLEKS R30 R31 K51 ["new"]
  CALL R30 0 1
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K52 ["createElement"]
  LOADK R32 K53 ["Frame"]
  DUPTABLE R33 K57 [{"AutomaticSize", "BackgroundTransparency", "Size", "LayoutOrder"}]
  GETIMPORT R34 K59 [Enum.AutomaticSize.Y]
  SETTABLEKS R34 R33 K54 ["AutomaticSize"]
  LOADN R34 1
  SETTABLEKS R34 R33 K55 ["BackgroundTransparency"]
  GETIMPORT R34 K61 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  LOADN R38 54
  CALL R34 4 1
  SETTABLEKS R34 R33 K56 ["Size"]
  SETTABLEKS R5 R33 K4 ["LayoutOrder"]
  DUPTABLE R34 K64 [{"UIListLayout", "Title", "RightFrame"}]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K52 ["createElement"]
  LOADK R36 K62 ["UIListLayout"]
  DUPTABLE R37 K70 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R38 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R38 R37 K65 ["FillDirection"]
  GETIMPORT R38 K74 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R38 R37 K66 ["HorizontalAlignment"]
  GETIMPORT R38 K76 [Enum.VerticalAlignment.Top]
  SETTABLEKS R38 R37 K67 ["VerticalAlignment"]
  GETIMPORT R38 K77 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R38 R37 K68 ["SortOrder"]
  GETIMPORT R38 K79 [UDim.new]
  LOADN R39 0
  LOADN R40 0
  CALL R38 2 1
  SETTABLEKS R38 R37 K69 ["Padding"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K62 ["UIListLayout"]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K52 ["createElement"]
  LOADK R36 K80 ["TextLabel"]
  DUPTABLE R37 K88 [{"AutomaticSize", "BackgroundTransparency", "Size", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "TextWrapped", "Font", "LayoutOrder"}]
  GETIMPORT R38 K59 [Enum.AutomaticSize.Y]
  SETTABLEKS R38 R37 K54 ["AutomaticSize"]
  LOADN R38 1
  SETTABLEKS R38 R37 K55 ["BackgroundTransparency"]
  GETIMPORT R38 K61 [UDim2.new]
  LOADN R39 0
  GETUPVAL R41 10
  GETTABLEKS R40 R41 K89 ["TITLE_GUTTER_WIDTH"]
  LOADN R41 0
  LOADN R42 40
  CALL R38 4 1
  SETTABLEKS R38 R37 K56 ["Size"]
  SETTABLEKS R4 R37 K81 ["Text"]
  GETIMPORT R38 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R38 R37 K82 ["TextXAlignment"]
  GETIMPORT R38 K91 [Enum.TextYAlignment.Top]
  SETTABLEKS R38 R37 K83 ["TextYAlignment"]
  GETUPVAL R39 11
  GETTABLEKS R38 R39 K92 ["FONT_SIZE_TITLE"]
  SETTABLEKS R38 R37 K84 ["TextSize"]
  GETTABLEKS R38 R13 K93 ["titleTextColor"]
  SETTABLEKS R38 R37 K85 ["TextColor3"]
  LOADB R38 1
  SETTABLEKS R38 R37 K86 ["TextWrapped"]
  GETUPVAL R39 11
  GETTABLEKS R38 R39 K94 ["FONT"]
  SETTABLEKS R38 R37 K87 ["Font"]
  LOADN R38 1
  SETTABLEKS R38 R37 K4 ["LayoutOrder"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K3 ["Title"]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K52 ["createElement"]
  LOADK R36 K53 ["Frame"]
  DUPTABLE R37 K57 [{"AutomaticSize", "BackgroundTransparency", "Size", "LayoutOrder"}]
  GETIMPORT R38 K59 [Enum.AutomaticSize.Y]
  SETTABLEKS R38 R37 K54 ["AutomaticSize"]
  LOADN R38 1
  SETTABLEKS R38 R37 K55 ["BackgroundTransparency"]
  GETIMPORT R38 K61 [UDim2.new]
  LOADN R39 1
  GETUPVAL R42 10
  GETTABLEKS R41 R42 K89 ["TITLE_GUTTER_WIDTH"]
  MINUS R40 R41
  LOADN R41 0
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K56 ["Size"]
  LOADN R38 2
  SETTABLEKS R38 R37 K4 ["LayoutOrder"]
  DUPTABLE R38 K102 [{"UIPadding", "UIListLayout", "ToggleButtonContainer", "VerifyNotice", "DistributeToMarketplace", "QuotaInfo", "TipsLabel", "LinkButton"}]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K52 ["createElement"]
  LOADK R40 K95 ["UIPadding"]
  DUPTABLE R41 K107 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R42 K79 [UDim.new]
  LOADN R43 0
  LOADN R44 25
  CALL R42 2 1
  SETTABLEKS R42 R41 K103 ["PaddingBottom"]
  GETIMPORT R42 K79 [UDim.new]
  LOADN R43 0
  LOADN R44 0
  CALL R42 2 1
  SETTABLEKS R42 R41 K104 ["PaddingLeft"]
  GETIMPORT R42 K79 [UDim.new]
  LOADN R43 0
  LOADN R44 0
  CALL R42 2 1
  SETTABLEKS R42 R41 K105 ["PaddingRight"]
  GETIMPORT R42 K79 [UDim.new]
  LOADN R43 0
  LOADN R44 0
  CALL R42 2 1
  SETTABLEKS R42 R41 K106 ["PaddingTop"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K95 ["UIPadding"]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K52 ["createElement"]
  LOADK R40 K62 ["UIListLayout"]
  DUPTABLE R41 K108 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R42 K77 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R42 R41 K68 ["SortOrder"]
  GETIMPORT R42 K110 [Enum.FillDirection.Vertical]
  SETTABLEKS R42 R41 K65 ["FillDirection"]
  GETIMPORT R42 K74 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R42 R41 K66 ["HorizontalAlignment"]
  GETIMPORT R42 K76 [Enum.VerticalAlignment.Top]
  SETTABLEKS R42 R41 K67 ["VerticalAlignment"]
  GETIMPORT R42 K79 [UDim.new]
  LOADN R43 0
  LOADN R44 0
  CALL R42 2 1
  SETTABLEKS R42 R41 K69 ["Padding"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K62 ["UIListLayout"]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K52 ["createElement"]
  GETUPVAL R40 12
  DUPTABLE R41 K113 [{"BackgroundTransparency", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Size", "Spacing", "VerticalAlignment"}]
  LOADN R42 1
  SETTABLEKS R42 R41 K55 ["BackgroundTransparency"]
  GETIMPORT R42 K74 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R42 R41 K66 ["HorizontalAlignment"]
  GETIMPORT R42 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R42 R41 K111 ["Layout"]
  NAMECALL R42 R30 K114 ["getNextOrder"]
  CALL R42 1 1
  SETTABLEKS R42 R41 K4 ["LayoutOrder"]
  DUPTABLE R42 K116 [{"Bottom"}]
  LOADN R43 10
  SETTABLEKS R43 R42 K115 ["Bottom"]
  SETTABLEKS R42 R41 K69 ["Padding"]
  GETIMPORT R42 K61 [UDim2.new]
  LOADN R43 1
  LOADN R44 0
  LOADN R45 0
  LOADN R46 34
  CALL R42 4 1
  SETTABLEKS R42 R41 K56 ["Size"]
  LOADN R42 10
  SETTABLEKS R42 R41 K112 ["Spacing"]
  GETIMPORT R42 K76 [Enum.VerticalAlignment.Top]
  SETTABLEKS R42 R41 K67 ["VerticalAlignment"]
  DUPTABLE R42 K119 [{"ToggleButton", "ErrorText"}]
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K52 ["createElement"]
  GETUPVAL R44 13
  DUPTABLE R45 K123 [{"Disabled", "LayoutOrder", "OnClick", "Selected", "Size"}]
  NOT R46 R8
  SETTABLEKS R46 R45 K120 ["Disabled"]
  LOADN R46 1
  SETTABLEKS R46 R45 K4 ["LayoutOrder"]
  GETTABLEKS R46 R0 K124 ["toggleCallback"]
  SETTABLEKS R46 R45 K121 ["OnClick"]
  SETTABLEKS R7 R45 K122 ["Selected"]
  GETIMPORT R46 K61 [UDim2.new]
  LOADN R47 0
  LOADN R48 40
  LOADN R49 0
  LOADN R50 24
  CALL R46 4 1
  SETTABLEKS R46 R45 K56 ["Size"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K117 ["ToggleButton"]
  JUMPIFNOT R29 [+55]
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K52 ["createElement"]
  LOADK R44 K80 ["TextLabel"]
  DUPTABLE R45 K125 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "Text", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment", "TextSize"}]
  GETIMPORT R46 K127 [Enum.AutomaticSize.XY]
  SETTABLEKS R46 R45 K54 ["AutomaticSize"]
  LOADN R46 2
  SETTABLEKS R46 R45 K4 ["LayoutOrder"]
  LOADN R46 1
  SETTABLEKS R46 R45 K55 ["BackgroundTransparency"]
  GETUPVAL R47 11
  GETTABLEKS R46 R47 K94 ["FONT"]
  SETTABLEKS R46 R45 K87 ["Font"]
  GETIMPORT R46 K61 [UDim2.new]
  LOADN R47 1
  LOADN R48 0
  LOADN R49 0
  LOADN R50 0
  CALL R46 4 1
  SETTABLEKS R46 R45 K56 ["Size"]
  SETTABLEKS R12 R45 K81 ["Text"]
  LOADB R46 1
  SETTABLEKS R46 R45 K86 ["TextWrapped"]
  GETTABLEKS R47 R1 K128 ["assetConfig"]
  GETTABLEKS R46 R47 K129 ["errorColor"]
  SETTABLEKS R46 R45 K85 ["TextColor3"]
  GETIMPORT R46 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R46 R45 K82 ["TextXAlignment"]
  GETIMPORT R46 K131 [Enum.TextYAlignment.Center]
  SETTABLEKS R46 R45 K83 ["TextYAlignment"]
  GETUPVAL R47 11
  GETTABLEKS R46 R47 K132 ["FONT_SIZE_LARGE"]
  SETTABLEKS R46 R45 K84 ["TextSize"]
  CALL R43 2 1
  JUMP [+1]
  LOADNIL R43
  SETTABLEKS R43 R42 K118 ["ErrorText"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K96 ["ToggleButtonContainer"]
  JUMPIFNOT R14 [+138]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K52 ["createElement"]
  GETUPVAL R40 12
  DUPTABLE R41 K133 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding"}]
  GETIMPORT R42 K127 [Enum.AutomaticSize.XY]
  SETTABLEKS R42 R41 K54 ["AutomaticSize"]
  GETIMPORT R42 K74 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R42 R41 K66 ["HorizontalAlignment"]
  GETIMPORT R42 K110 [Enum.FillDirection.Vertical]
  SETTABLEKS R42 R41 K111 ["Layout"]
  NAMECALL R42 R30 K114 ["getNextOrder"]
  CALL R42 1 1
  SETTABLEKS R42 R41 K4 ["LayoutOrder"]
  DUPTABLE R42 K134 [{"Top", "Bottom"}]
  LOADN R43 5
  SETTABLEKS R43 R42 K75 ["Top"]
  LOADN R43 5
  SETTABLEKS R43 R42 K115 ["Bottom"]
  SETTABLEKS R42 R41 K69 ["Padding"]
  DUPTABLE R42 K138 [{"VerifyNoticeHeader", "VerifyReasonList", "CurrentLimitText"}]
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K52 ["createElement"]
  GETUPVAL R44 14
  DUPTABLE R45 K139 [{"Text", "OnClick", "LayoutOrder"}]
  SETTABLEKS R19 R45 K81 ["Text"]
  GETTABLEKS R46 R0 K140 ["onClickVerifyLink"]
  SETTABLEKS R46 R45 K121 ["OnClick"]
  NAMECALL R46 R30 K114 ["getNextOrder"]
  CALL R46 1 1
  SETTABLEKS R46 R45 K4 ["LayoutOrder"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K135 ["VerifyNoticeHeader"]
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K52 ["createElement"]
  GETUPVAL R44 12
  DUPTABLE R45 K133 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding"}]
  GETIMPORT R46 K127 [Enum.AutomaticSize.XY]
  SETTABLEKS R46 R45 K54 ["AutomaticSize"]
  GETIMPORT R46 K74 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R46 R45 K66 ["HorizontalAlignment"]
  GETIMPORT R46 K110 [Enum.FillDirection.Vertical]
  SETTABLEKS R46 R45 K111 ["Layout"]
  NAMECALL R46 R30 K114 ["getNextOrder"]
  CALL R46 1 1
  SETTABLEKS R46 R45 K4 ["LayoutOrder"]
  DUPTABLE R46 K141 [{"Left"}]
  LOADN R47 10
  SETTABLEKS R47 R46 K73 ["Left"]
  SETTABLEKS R46 R45 K69 ["Padding"]
  MOVE R46 R20
  CALL R43 3 1
  SETTABLEKS R43 R42 K136 ["VerifyReasonList"]
  JUMPIFNOT R15 [+49]
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K52 ["createElement"]
  GETUPVAL R44 12
  DUPTABLE R45 K142 [{"AutomaticSize", "LayoutOrder", "Padding"}]
  GETIMPORT R46 K127 [Enum.AutomaticSize.XY]
  SETTABLEKS R46 R45 K54 ["AutomaticSize"]
  NAMECALL R46 R30 K114 ["getNextOrder"]
  CALL R46 1 1
  SETTABLEKS R46 R45 K4 ["LayoutOrder"]
  DUPTABLE R46 K141 [{"Left"}]
  LOADN R47 15
  SETTABLEKS R47 R46 K73 ["Left"]
  SETTABLEKS R46 R45 K69 ["Padding"]
  DUPTABLE R46 K143 [{"Text"}]
  GETUPVAL R48 9
  GETTABLEKS R47 R48 K52 ["createElement"]
  GETUPVAL R48 15
  DUPTABLE R49 K146 [{"AutomaticSize", "RichText", "Text", "TextColor", "TextSize"}]
  GETIMPORT R50 K127 [Enum.AutomaticSize.XY]
  SETTABLEKS R50 R49 K54 ["AutomaticSize"]
  LOADB R50 1
  SETTABLEKS R50 R49 K144 ["RichText"]
  SETTABLEKS R21 R49 K81 ["Text"]
  GETTABLEKS R50 R13 K147 ["verifyTextColor"]
  SETTABLEKS R50 R49 K145 ["TextColor"]
  GETUPVAL R51 11
  GETTABLEKS R50 R51 K132 ["FONT_SIZE_LARGE"]
  SETTABLEKS R50 R49 K84 ["TextSize"]
  CALL R47 2 1
  SETTABLEKS R47 R46 K81 ["Text"]
  CALL R43 3 1
  JUMP [+1]
  LOADNIL R43
  SETTABLEKS R43 R42 K137 ["CurrentLimitText"]
  CALL R39 3 1
  JUMP [+1]
  LOADNIL R39
  SETTABLEKS R39 R38 K97 ["VerifyNotice"]
  JUMPIFNOT R17 [+71]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K52 ["createElement"]
  GETUPVAL R40 12
  DUPTABLE R41 K148 [{"AutomaticSize", "Layout", "HorizontalAlignment", "LayoutOrder", "Padding"}]
  GETIMPORT R42 K127 [Enum.AutomaticSize.XY]
  SETTABLEKS R42 R41 K54 ["AutomaticSize"]
  GETIMPORT R42 K110 [Enum.FillDirection.Vertical]
  SETTABLEKS R42 R41 K111 ["Layout"]
  GETIMPORT R42 K74 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R42 R41 K66 ["HorizontalAlignment"]
  NAMECALL R42 R30 K114 ["getNextOrder"]
  CALL R42 1 1
  SETTABLEKS R42 R41 K4 ["LayoutOrder"]
  DUPTABLE R42 K134 [{"Top", "Bottom"}]
  LOADN R43 5
  SETTABLEKS R43 R42 K75 ["Top"]
  LOADN R43 5
  SETTABLEKS R43 R42 K115 ["Bottom"]
  SETTABLEKS R42 R41 K69 ["Padding"]
  DUPTABLE R42 K150 [{"DistributeToMarketplaceMessage"}]
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K52 ["createElement"]
  LOADK R44 K80 ["TextLabel"]
  DUPTABLE R45 K151 [{"AutomaticSize", "BackgroundTransparency", "Font", "Text", "TextWrapped", "TextSize", "TextColor3", "LayoutOrder"}]
  GETIMPORT R46 K127 [Enum.AutomaticSize.XY]
  SETTABLEKS R46 R45 K54 ["AutomaticSize"]
  LOADN R46 1
  SETTABLEKS R46 R45 K55 ["BackgroundTransparency"]
  GETUPVAL R47 11
  GETTABLEKS R46 R47 K94 ["FONT"]
  SETTABLEKS R46 R45 K87 ["Font"]
  SETTABLEKS R17 R45 K81 ["Text"]
  LOADB R46 1
  SETTABLEKS R46 R45 K86 ["TextWrapped"]
  GETUPVAL R47 11
  GETTABLEKS R46 R47 K132 ["FONT_SIZE_LARGE"]
  SETTABLEKS R46 R45 K84 ["TextSize"]
  GETTABLEKS R46 R13 K152 ["distributionQuotaTextColor"]
  SETTABLEKS R46 R45 K85 ["TextColor3"]
  LOADN R46 1
  SETTABLEKS R46 R45 K4 ["LayoutOrder"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K149 ["DistributeToMarketplaceMessage"]
  CALL R39 3 1
  JUMP [+1]
  LOADNIL R39
  SETTABLEKS R39 R38 K98 ["DistributeToMarketplace"]
  JUMPIFNOT R15 [+74]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K52 ["createElement"]
  GETUPVAL R40 12
  DUPTABLE R41 K148 [{"AutomaticSize", "Layout", "HorizontalAlignment", "LayoutOrder", "Padding"}]
  GETIMPORT R42 K127 [Enum.AutomaticSize.XY]
  SETTABLEKS R42 R41 K54 ["AutomaticSize"]
  GETIMPORT R42 K110 [Enum.FillDirection.Vertical]
  SETTABLEKS R42 R41 K111 ["Layout"]
  GETIMPORT R42 K74 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R42 R41 K66 ["HorizontalAlignment"]
  NAMECALL R42 R30 K114 ["getNextOrder"]
  CALL R42 1 1
  SETTABLEKS R42 R41 K4 ["LayoutOrder"]
  DUPTABLE R42 K134 [{"Top", "Bottom"}]
  LOADN R43 5
  SETTABLEKS R43 R42 K75 ["Top"]
  LOADN R43 5
  SETTABLEKS R43 R42 K115 ["Bottom"]
  SETTABLEKS R42 R41 K69 ["Padding"]
  DUPTABLE R42 K154 [{"QuotaMessage"}]
  JUMPIFNOT R18 [+36]
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K52 ["createElement"]
  LOADK R44 K80 ["TextLabel"]
  DUPTABLE R45 K151 [{"AutomaticSize", "BackgroundTransparency", "Font", "Text", "TextWrapped", "TextSize", "TextColor3", "LayoutOrder"}]
  GETIMPORT R46 K127 [Enum.AutomaticSize.XY]
  SETTABLEKS R46 R45 K54 ["AutomaticSize"]
  LOADN R46 1
  SETTABLEKS R46 R45 K55 ["BackgroundTransparency"]
  GETUPVAL R47 11
  GETTABLEKS R46 R47 K94 ["FONT"]
  SETTABLEKS R46 R45 K87 ["Font"]
  SETTABLEKS R15 R45 K81 ["Text"]
  LOADB R46 1
  SETTABLEKS R46 R45 K86 ["TextWrapped"]
  GETUPVAL R47 11
  GETTABLEKS R46 R47 K132 ["FONT_SIZE_LARGE"]
  SETTABLEKS R46 R45 K84 ["TextSize"]
  GETTABLEKS R46 R13 K152 ["distributionQuotaTextColor"]
  SETTABLEKS R46 R45 K85 ["TextColor3"]
  LOADN R46 1
  SETTABLEKS R46 R45 K4 ["LayoutOrder"]
  CALL R43 2 1
  JUMP [+1]
  LOADNIL R43
  SETTABLEKS R43 R42 K153 ["QuotaMessage"]
  CALL R39 3 1
  JUMP [+1]
  LOADNIL R39
  SETTABLEKS R39 R38 K99 ["QuotaInfo"]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K52 ["createElement"]
  GETUPVAL R40 15
  DUPTABLE R41 K156 [{"AutomaticSize", "Size", "Text", "StyleModifier", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize", "LayoutOrder"}]
  GETIMPORT R42 K59 [Enum.AutomaticSize.Y]
  SETTABLEKS R42 R41 K54 ["AutomaticSize"]
  GETIMPORT R42 K61 [UDim2.new]
  LOADN R43 1
  LOADN R44 0
  LOADN R45 0
  LOADN R46 0
  CALL R42 4 1
  SETTABLEKS R42 R41 K56 ["Size"]
  SETTABLEKS R26 R41 K81 ["Text"]
  GETUPVAL R43 16
  GETTABLEKS R42 R43 K120 ["Disabled"]
  SETTABLEKS R42 R41 K155 ["StyleModifier"]
  LOADB R42 1
  SETTABLEKS R42 R41 K86 ["TextWrapped"]
  GETIMPORT R42 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R42 R41 K82 ["TextXAlignment"]
  GETIMPORT R42 K131 [Enum.TextYAlignment.Center]
  SETTABLEKS R42 R41 K83 ["TextYAlignment"]
  GETUPVAL R43 11
  GETTABLEKS R42 R43 K132 ["FONT_SIZE_LARGE"]
  SETTABLEKS R42 R41 K84 ["TextSize"]
  NAMECALL R42 R30 K114 ["getNextOrder"]
  CALL R42 1 1
  SETTABLEKS R42 R41 K4 ["LayoutOrder"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K100 ["TipsLabel"]
  GETUPVAL R41 17
  GETTABLEKS R40 R41 K157 ["hideAssetConfigDistributeLearnMoreLink"]
  CALL R40 0 1
  JUMPIF R40 [+18]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K52 ["createElement"]
  GETUPVAL R40 14
  DUPTABLE R41 K158 [{"LayoutOrder", "OnClick", "Text"}]
  NAMECALL R42 R30 K114 ["getNextOrder"]
  CALL R42 1 1
  SETTABLEKS R42 R41 K4 ["LayoutOrder"]
  GETTABLEKS R42 R0 K159 ["onLearnMoreActivated"]
  SETTABLEKS R42 R41 K121 ["OnClick"]
  SETTABLEKS R27 R41 K81 ["Text"]
  CALL R39 2 1
  JUMP [+1]
  LOADNIL R39
  SETTABLEKS R39 R38 K101 ["LinkButton"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K63 ["RightFrame"]
  CALL R31 3 -1
  RETURN R31 -1

PROTO_19:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["publishingRequirements"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETTABLEKS R3 R2 K1 ["verification"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  GETTABLEKS R4 R2 K2 ["publishing"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  GETUPVAL R6 0
  JUMPIFNOT R6 [+6]
  GETTABLEKS R5 R4 K3 ["allowedSubTypes"]
  JUMPIF R5 [+5]
  NEWTABLE R5 0 0
  JUMP [+2]
  NEWTABLE R5 0 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["contains"]
  MOVE R7 R5
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["Package"]
  CALL R6 2 1
  DUPTABLE R7 K9 [{"isVerified", "verificationSupportedTypes", "isPackageMarketplacePublishAllowed"}]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R8 R3 K6 ["isVerified"]
  JUMP [+1]
  LOADB R8 0
  SETTABLEKS R8 R7 K6 ["isVerified"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R8 R3 K10 ["supportedTypes"]
  JUMPIF R8 [+5]
  NEWTABLE R8 0 0
  JUMP [+2]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K7 ["verificationSupportedTypes"]
  SETTABLEKS R6 R7 K8 ["isPackageMarketplacePublishAllowed"]
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ToolboxAssetConfigDisabledAudioSharingLearnMoreLink"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ToolboxAssetConfigEnabledAudioSharingLearnMoreLink"]
  NAMECALL R1 R1 K3 ["GetFastString"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["UnifyModelPackagePublish3"]
  NAMECALL R2 R2 K6 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
  NAMECALL R3 R3 K6 ["GetFastFlag"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
  NAMECALL R4 R4 K6 ["GetFastFlag"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["ToolboxVideoConfigSharing2"]
  NAMECALL R5 R5 K6 ["GetFastFlag"]
  CALL R5 2 1
  GETIMPORT R10 K11 [script]
  GETTABLEKS R9 R10 K12 ["Parent"]
  GETTABLEKS R8 R9 K12 ["Parent"]
  GETTABLEKS R7 R8 K12 ["Parent"]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETIMPORT R7 K14 [require]
  GETTABLEKS R11 R6 K15 ["Core"]
  GETTABLEKS R10 R11 K16 ["Util"]
  GETTABLEKS R9 R10 K17 ["SharedFlags"]
  GETTABLEKS R8 R9 K18 ["getFFlagToolboxRestrictAssetConfig"]
  CALL R7 1 1
  GETTABLEKS R8 R6 K19 ["Packages"]
  GETIMPORT R9 K14 [require]
  GETTABLEKS R10 R8 K20 ["Cryo"]
  CALL R9 1 1
  GETIMPORT R10 K14 [require]
  GETTABLEKS R11 R8 K21 ["Framework"]
  CALL R10 1 1
  GETIMPORT R11 K14 [require]
  GETTABLEKS R12 R8 K22 ["Roact"]
  CALL R11 1 1
  GETIMPORT R12 K14 [require]
  GETTABLEKS R13 R8 K23 ["RoactRodux"]
  CALL R12 1 1
  GETIMPORT R13 K14 [require]
  GETTABLEKS R16 R6 K15 ["Core"]
  GETTABLEKS R15 R16 K24 ["Types"]
  GETTABLEKS R14 R15 K25 ["AssetQuotaTypes"]
  CALL R13 1 1
  GETIMPORT R14 K14 [require]
  GETTABLEKS R17 R6 K15 ["Core"]
  GETTABLEKS R16 R17 K24 ["Types"]
  GETTABLEKS R15 R16 K26 ["AssetSubTypes"]
  CALL R14 1 1
  GETTABLEKS R16 R10 K16 ["Util"]
  GETTABLEKS R15 R16 K27 ["formatLocalDateTime"]
  GETIMPORT R17 K14 [require]
  GETTABLEKS R18 R8 K21 ["Framework"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K28 ["ContextServices"]
  GETIMPORT R17 K14 [require]
  GETTABLEKS R20 R6 K15 ["Core"]
  GETTABLEKS R19 R20 K28 ["ContextServices"]
  GETTABLEKS R18 R19 K29 ["IXPContext"]
  CALL R17 1 1
  GETIMPORT R18 K14 [require]
  GETTABLEKS R21 R6 K15 ["Core"]
  GETTABLEKS R20 R21 K28 ["ContextServices"]
  GETTABLEKS R19 R20 K30 ["NetworkContext"]
  CALL R18 1 1
  GETTABLEKS R19 R16 K31 ["withContext"]
  GETTABLEKS R21 R6 K15 ["Core"]
  GETTABLEKS R20 R21 K16 ["Util"]
  GETIMPORT R21 K14 [require]
  GETTABLEKS R22 R20 K32 ["DebugFlags"]
  CALL R21 1 1
  GETIMPORT R22 K14 [require]
  GETTABLEKS R23 R20 K33 ["Constants"]
  CALL R22 1 1
  GETIMPORT R23 K14 [require]
  GETTABLEKS R24 R20 K34 ["AssetConfigConstants"]
  CALL R23 1 1
  GETIMPORT R24 K14 [require]
  GETTABLEKS R25 R20 K35 ["AssetConfigUtil"]
  CALL R24 1 1
  GETIMPORT R25 K14 [require]
  GETTABLEKS R28 R6 K15 ["Core"]
  GETTABLEKS R27 R28 K16 ["Util"]
  GETTABLEKS R26 R27 K36 ["ToolboxUtilities"]
  CALL R25 1 1
  GETIMPORT R26 K14 [require]
  GETTABLEKS R27 R20 K37 ["LayoutOrderIterator"]
  CALL R26 1 1
  MOVE R28 R7
  CALL R28 0 1
  JUMPIFNOT R28 [+6]
  GETIMPORT R27 K14 [require]
  GETTABLEKS R28 R20 K38 ["PublishUtil"]
  CALL R27 1 1
  JUMP [+1]
  LOADNIL R27
  GETIMPORT R28 K14 [require]
  GETTABLEKS R29 R20 K39 ["Urls"]
  CALL R28 1 1
  GETIMPORT R29 K14 [require]
  GETTABLEKS R30 R20 K40 ["sanitizeRichText"]
  CALL R29 1 1
  LOADNIL R30
  JUMPIFNOT R3 [+6]
  GETIMPORT R31 K14 [require]
  GETTABLEKS R32 R20 K41 ["getIsIXPVariableEnabled"]
  CALL R31 1 1
  MOVE R30 R31
  GETIMPORT R31 K14 [require]
  GETTABLEKS R32 R8 K42 ["Dash"]
  CALL R31 1 1
  GETTABLEKS R32 R10 K43 ["UI"]
  GETTABLEKS R33 R32 K44 ["TextLabel"]
  GETTABLEKS R34 R32 K45 ["LinkText"]
  GETTABLEKS R35 R32 K46 ["List"]
  GETTABLEKS R36 R32 K47 ["Pane"]
  GETTABLEKS R37 R32 K48 ["ToggleButton"]
  GETTABLEKS R39 R10 K16 ["Util"]
  GETTABLEKS R38 R39 K49 ["StyleModifier"]
  GETIMPORT R39 K1 [game]
  LOADK R41 K50 ["GuiService"]
  NAMECALL R39 R39 K51 ["GetService"]
  CALL R39 2 1
  GETTABLEKS R40 R11 K52 ["PureComponent"]
  LOADK R42 K53 ["ConfigCopy"]
  NAMECALL R40 R40 K54 ["extend"]
  CALL R40 2 1
  DUPCLOSURE R41 K55 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R39
  CAPTURE VAL R25
  CAPTURE VAL R7
  CAPTURE VAL R27
  CAPTURE VAL R5
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R11
  CAPTURE VAL R36
  CAPTURE VAL R33
  CAPTURE VAL R22
  SETTABLEKS R41 R40 K56 ["init"]
  DUPCLOSURE R41 K57 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R41 R40 K58 ["didMount"]
  DUPCLOSURE R41 K59 [PROTO_9]
  SETTABLEKS R41 R40 K60 ["willUnmount"]
  DUPCLOSURE R41 K61 [PROTO_12]
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R2
  SETTABLEKS R41 R40 K62 ["didUpdate"]
  DUPCLOSURE R41 K63 [PROTO_16]
  CAPTURE VAL R11
  CAPTURE VAL R31
  CAPTURE VAL R21
  SETTABLEKS R41 R40 K64 ["updateDistributionQuotas"]
  DUPCLOSURE R41 K65 [PROTO_17]
  CAPTURE VAL R15
  SETTABLEKS R41 R40 K66 ["getDistributionQuotaStatus"]
  NEWCLOSURE R41 P6
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE REF R30
  CAPTURE VAL R29
  CAPTURE VAL R7
  CAPTURE VAL R27
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R26
  CAPTURE VAL R11
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R36
  CAPTURE VAL R37
  CAPTURE VAL R34
  CAPTURE VAL R33
  CAPTURE VAL R38
  CAPTURE VAL R25
  SETTABLEKS R41 R40 K67 ["render"]
  MOVE R41 R19
  DUPTABLE R42 K72 [{"IXP", "Localization", "Stylizer", "Network"}]
  JUMPIFNOT R3 [+2]
  MOVE R43 R17
  JUMP [+1]
  LOADNIL R43
  SETTABLEKS R43 R42 K68 ["IXP"]
  GETTABLEKS R43 R16 K69 ["Localization"]
  SETTABLEKS R43 R42 K69 ["Localization"]
  GETTABLEKS R43 R16 K70 ["Stylizer"]
  SETTABLEKS R43 R42 K70 ["Stylizer"]
  SETTABLEKS R18 R42 K71 ["Network"]
  CALL R41 1 1
  MOVE R42 R40
  CALL R41 1 1
  MOVE R40 R41
  DUPCLOSURE R41 K73 [PROTO_19]
  CAPTURE VAL R2
  CAPTURE VAL R14
  GETTABLEKS R42 R12 K74 ["connect"]
  MOVE R43 R41
  LOADNIL R44
  CALL R42 2 1
  MOVE R43 R40
  CALL R42 1 -1
  CLOSEUPVALS R30
  RETURN R42 -1
