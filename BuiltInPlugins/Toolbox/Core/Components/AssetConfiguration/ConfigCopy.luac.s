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
  JUMPIFNOT R3 [+22]
  GETIMPORT R3 K7 [Enum.AssetType.Video]
  JUMPIFNOTEQ R2 R3 [+10]
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["getVideoPrivacyLearnMoreUrl"]
  CALL R5 0 -1
  NAMECALL R3 R3 K4 ["OpenBrowserWindow"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K9 ["getAudioPrivacyLearnMoreUrl"]
  CALL R5 0 -1
  NAMECALL R3 R3 K4 ["OpenBrowserWindow"]
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K9 ["getAudioPrivacyLearnMoreUrl"]
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
  SETTABLEKS R2 R0 K5 ["onLearnMoreActivated"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
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
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
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
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K41 ["None"]
  JUMPIFNOTEQ R12 R29 [+2]
  LOADB R28 0 +1
  LOADB R28 1
  GETIMPORT R29 K43 [Enum.AssetType.Audio]
  JUMPIFEQ R6 R29 [+7]
  GETUPVAL R29 5
  JUMPIFNOT R29 [+21]
  GETIMPORT R29 K45 [Enum.AssetType.Video]
  JUMPIFNOTEQ R6 R29 [+18]
  GETTABLEKS R25 R2 K20 ["Localization"]
  JUMPIFNOT R9 [+7]
  LOADK R31 K21 ["AssetConfigCopy"]
  LOADK R32 K38 ["DistributeAgreement"]
  NAMECALL R29 R25 K23 ["getText"]
  CALL R29 3 1
  MOVE R26 R29
  JUMP [+7]
  LOADK R31 K21 ["AssetConfigCopy"]
  LOADK R32 K46 ["TemporarilyDisabledMessageOnCreatorStore"]
  NAMECALL R29 R25 K23 ["getText"]
  CALL R29 3 1
  MOVE R26 R29
  LOADB R14 0
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K47 ["new"]
  CALL R29 0 1
  GETUPVAL R31 7
  GETTABLEKS R30 R31 K48 ["createElement"]
  LOADK R31 K49 ["Frame"]
  DUPTABLE R32 K53 [{"AutomaticSize", "BackgroundTransparency", "Size", "LayoutOrder"}]
  GETIMPORT R33 K55 [Enum.AutomaticSize.Y]
  SETTABLEKS R33 R32 K50 ["AutomaticSize"]
  LOADN R33 1
  SETTABLEKS R33 R32 K51 ["BackgroundTransparency"]
  GETIMPORT R33 K57 [UDim2.new]
  LOADN R34 1
  LOADN R35 0
  LOADN R36 0
  LOADN R37 54
  CALL R33 4 1
  SETTABLEKS R33 R32 K52 ["Size"]
  SETTABLEKS R5 R32 K4 ["LayoutOrder"]
  DUPTABLE R33 K60 [{"UIListLayout", "Title", "RightFrame"}]
  GETUPVAL R35 7
  GETTABLEKS R34 R35 K48 ["createElement"]
  LOADK R35 K58 ["UIListLayout"]
  DUPTABLE R36 K66 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R37 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R37 R36 K61 ["FillDirection"]
  GETIMPORT R37 K70 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R37 R36 K62 ["HorizontalAlignment"]
  GETIMPORT R37 K72 [Enum.VerticalAlignment.Top]
  SETTABLEKS R37 R36 K63 ["VerticalAlignment"]
  GETIMPORT R37 K73 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R37 R36 K64 ["SortOrder"]
  GETIMPORT R37 K75 [UDim.new]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  SETTABLEKS R37 R36 K65 ["Padding"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K58 ["UIListLayout"]
  GETUPVAL R35 7
  GETTABLEKS R34 R35 K48 ["createElement"]
  LOADK R35 K76 ["TextLabel"]
  DUPTABLE R36 K84 [{"AutomaticSize", "BackgroundTransparency", "Size", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "TextWrapped", "Font", "LayoutOrder"}]
  GETIMPORT R37 K55 [Enum.AutomaticSize.Y]
  SETTABLEKS R37 R36 K50 ["AutomaticSize"]
  LOADN R37 1
  SETTABLEKS R37 R36 K51 ["BackgroundTransparency"]
  GETIMPORT R37 K57 [UDim2.new]
  LOADN R38 0
  GETUPVAL R40 8
  GETTABLEKS R39 R40 K85 ["TITLE_GUTTER_WIDTH"]
  LOADN R40 0
  LOADN R41 40
  CALL R37 4 1
  SETTABLEKS R37 R36 K52 ["Size"]
  SETTABLEKS R4 R36 K77 ["Text"]
  GETIMPORT R37 K86 [Enum.TextXAlignment.Left]
  SETTABLEKS R37 R36 K78 ["TextXAlignment"]
  GETIMPORT R37 K87 [Enum.TextYAlignment.Top]
  SETTABLEKS R37 R36 K79 ["TextYAlignment"]
  GETUPVAL R38 9
  GETTABLEKS R37 R38 K88 ["FONT_SIZE_TITLE"]
  SETTABLEKS R37 R36 K80 ["TextSize"]
  GETTABLEKS R37 R13 K89 ["titleTextColor"]
  SETTABLEKS R37 R36 K81 ["TextColor3"]
  LOADB R37 1
  SETTABLEKS R37 R36 K82 ["TextWrapped"]
  GETUPVAL R38 9
  GETTABLEKS R37 R38 K90 ["FONT"]
  SETTABLEKS R37 R36 K83 ["Font"]
  LOADN R37 1
  SETTABLEKS R37 R36 K4 ["LayoutOrder"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K3 ["Title"]
  GETUPVAL R35 7
  GETTABLEKS R34 R35 K48 ["createElement"]
  LOADK R35 K49 ["Frame"]
  DUPTABLE R36 K53 [{"AutomaticSize", "BackgroundTransparency", "Size", "LayoutOrder"}]
  GETIMPORT R37 K55 [Enum.AutomaticSize.Y]
  SETTABLEKS R37 R36 K50 ["AutomaticSize"]
  LOADN R37 1
  SETTABLEKS R37 R36 K51 ["BackgroundTransparency"]
  GETIMPORT R37 K57 [UDim2.new]
  LOADN R38 1
  GETUPVAL R41 8
  GETTABLEKS R40 R41 K85 ["TITLE_GUTTER_WIDTH"]
  MINUS R39 R40
  LOADN R40 0
  LOADN R41 0
  CALL R37 4 1
  SETTABLEKS R37 R36 K52 ["Size"]
  LOADN R37 2
  SETTABLEKS R37 R36 K4 ["LayoutOrder"]
  DUPTABLE R37 K98 [{"UIPadding", "UIListLayout", "ToggleButtonContainer", "VerifyNotice", "DistributeToMarketplace", "QuotaInfo", "TipsLabel", "LinkButton"}]
  GETUPVAL R39 7
  GETTABLEKS R38 R39 K48 ["createElement"]
  LOADK R39 K91 ["UIPadding"]
  DUPTABLE R40 K103 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R41 K75 [UDim.new]
  LOADN R42 0
  LOADN R43 25
  CALL R41 2 1
  SETTABLEKS R41 R40 K99 ["PaddingBottom"]
  GETIMPORT R41 K75 [UDim.new]
  LOADN R42 0
  LOADN R43 0
  CALL R41 2 1
  SETTABLEKS R41 R40 K100 ["PaddingLeft"]
  GETIMPORT R41 K75 [UDim.new]
  LOADN R42 0
  LOADN R43 0
  CALL R41 2 1
  SETTABLEKS R41 R40 K101 ["PaddingRight"]
  GETIMPORT R41 K75 [UDim.new]
  LOADN R42 0
  LOADN R43 0
  CALL R41 2 1
  SETTABLEKS R41 R40 K102 ["PaddingTop"]
  CALL R38 2 1
  SETTABLEKS R38 R37 K91 ["UIPadding"]
  GETUPVAL R39 7
  GETTABLEKS R38 R39 K48 ["createElement"]
  LOADK R39 K58 ["UIListLayout"]
  DUPTABLE R40 K104 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R41 K73 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R41 R40 K64 ["SortOrder"]
  GETIMPORT R41 K106 [Enum.FillDirection.Vertical]
  SETTABLEKS R41 R40 K61 ["FillDirection"]
  GETIMPORT R41 K70 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R41 R40 K62 ["HorizontalAlignment"]
  GETIMPORT R41 K72 [Enum.VerticalAlignment.Top]
  SETTABLEKS R41 R40 K63 ["VerticalAlignment"]
  GETIMPORT R41 K75 [UDim.new]
  LOADN R42 0
  LOADN R43 0
  CALL R41 2 1
  SETTABLEKS R41 R40 K65 ["Padding"]
  CALL R38 2 1
  SETTABLEKS R38 R37 K58 ["UIListLayout"]
  GETUPVAL R39 7
  GETTABLEKS R38 R39 K48 ["createElement"]
  GETUPVAL R39 10
  DUPTABLE R40 K109 [{"BackgroundTransparency", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Size", "Spacing", "VerticalAlignment"}]
  LOADN R41 1
  SETTABLEKS R41 R40 K51 ["BackgroundTransparency"]
  GETIMPORT R41 K70 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R41 R40 K62 ["HorizontalAlignment"]
  GETIMPORT R41 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R41 R40 K107 ["Layout"]
  NAMECALL R41 R29 K110 ["getNextOrder"]
  CALL R41 1 1
  SETTABLEKS R41 R40 K4 ["LayoutOrder"]
  DUPTABLE R41 K112 [{"Bottom"}]
  LOADN R42 10
  SETTABLEKS R42 R41 K111 ["Bottom"]
  SETTABLEKS R41 R40 K65 ["Padding"]
  GETIMPORT R41 K57 [UDim2.new]
  LOADN R42 1
  LOADN R43 0
  LOADN R44 0
  LOADN R45 34
  CALL R41 4 1
  SETTABLEKS R41 R40 K52 ["Size"]
  LOADN R41 10
  SETTABLEKS R41 R40 K108 ["Spacing"]
  GETIMPORT R41 K72 [Enum.VerticalAlignment.Top]
  SETTABLEKS R41 R40 K63 ["VerticalAlignment"]
  DUPTABLE R41 K115 [{"ToggleButton", "ErrorText"}]
  GETUPVAL R43 7
  GETTABLEKS R42 R43 K48 ["createElement"]
  GETUPVAL R43 11
  DUPTABLE R44 K119 [{"Disabled", "LayoutOrder", "OnClick", "Selected", "Size"}]
  NOT R45 R8
  SETTABLEKS R45 R44 K116 ["Disabled"]
  LOADN R45 1
  SETTABLEKS R45 R44 K4 ["LayoutOrder"]
  GETTABLEKS R45 R0 K120 ["toggleCallback"]
  SETTABLEKS R45 R44 K117 ["OnClick"]
  SETTABLEKS R7 R44 K118 ["Selected"]
  GETIMPORT R45 K57 [UDim2.new]
  LOADN R46 0
  LOADN R47 40
  LOADN R48 0
  LOADN R49 24
  CALL R45 4 1
  SETTABLEKS R45 R44 K52 ["Size"]
  CALL R42 2 1
  SETTABLEKS R42 R41 K113 ["ToggleButton"]
  JUMPIFNOT R28 [+55]
  GETUPVAL R43 7
  GETTABLEKS R42 R43 K48 ["createElement"]
  LOADK R43 K76 ["TextLabel"]
  DUPTABLE R44 K121 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "Text", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment", "TextSize"}]
  GETIMPORT R45 K123 [Enum.AutomaticSize.XY]
  SETTABLEKS R45 R44 K50 ["AutomaticSize"]
  LOADN R45 2
  SETTABLEKS R45 R44 K4 ["LayoutOrder"]
  LOADN R45 1
  SETTABLEKS R45 R44 K51 ["BackgroundTransparency"]
  GETUPVAL R46 9
  GETTABLEKS R45 R46 K90 ["FONT"]
  SETTABLEKS R45 R44 K83 ["Font"]
  GETIMPORT R45 K57 [UDim2.new]
  LOADN R46 1
  LOADN R47 0
  LOADN R48 0
  LOADN R49 0
  CALL R45 4 1
  SETTABLEKS R45 R44 K52 ["Size"]
  SETTABLEKS R12 R44 K77 ["Text"]
  LOADB R45 1
  SETTABLEKS R45 R44 K82 ["TextWrapped"]
  GETTABLEKS R46 R1 K124 ["assetConfig"]
  GETTABLEKS R45 R46 K125 ["errorColor"]
  SETTABLEKS R45 R44 K81 ["TextColor3"]
  GETIMPORT R45 K86 [Enum.TextXAlignment.Left]
  SETTABLEKS R45 R44 K78 ["TextXAlignment"]
  GETIMPORT R45 K127 [Enum.TextYAlignment.Center]
  SETTABLEKS R45 R44 K79 ["TextYAlignment"]
  GETUPVAL R46 9
  GETTABLEKS R45 R46 K128 ["FONT_SIZE_LARGE"]
  SETTABLEKS R45 R44 K80 ["TextSize"]
  CALL R42 2 1
  JUMP [+1]
  LOADNIL R42
  SETTABLEKS R42 R41 K114 ["ErrorText"]
  CALL R38 3 1
  SETTABLEKS R38 R37 K92 ["ToggleButtonContainer"]
  JUMPIFNOT R14 [+138]
  GETUPVAL R39 7
  GETTABLEKS R38 R39 K48 ["createElement"]
  GETUPVAL R39 10
  DUPTABLE R40 K129 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding"}]
  GETIMPORT R41 K123 [Enum.AutomaticSize.XY]
  SETTABLEKS R41 R40 K50 ["AutomaticSize"]
  GETIMPORT R41 K70 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R41 R40 K62 ["HorizontalAlignment"]
  GETIMPORT R41 K106 [Enum.FillDirection.Vertical]
  SETTABLEKS R41 R40 K107 ["Layout"]
  NAMECALL R41 R29 K110 ["getNextOrder"]
  CALL R41 1 1
  SETTABLEKS R41 R40 K4 ["LayoutOrder"]
  DUPTABLE R41 K130 [{"Top", "Bottom"}]
  LOADN R42 5
  SETTABLEKS R42 R41 K71 ["Top"]
  LOADN R42 5
  SETTABLEKS R42 R41 K111 ["Bottom"]
  SETTABLEKS R41 R40 K65 ["Padding"]
  DUPTABLE R41 K134 [{"VerifyNoticeHeader", "VerifyReasonList", "CurrentLimitText"}]
  GETUPVAL R43 7
  GETTABLEKS R42 R43 K48 ["createElement"]
  GETUPVAL R43 12
  DUPTABLE R44 K135 [{"Text", "OnClick", "LayoutOrder"}]
  SETTABLEKS R19 R44 K77 ["Text"]
  GETTABLEKS R45 R0 K136 ["onClickVerifyLink"]
  SETTABLEKS R45 R44 K117 ["OnClick"]
  NAMECALL R45 R29 K110 ["getNextOrder"]
  CALL R45 1 1
  SETTABLEKS R45 R44 K4 ["LayoutOrder"]
  CALL R42 2 1
  SETTABLEKS R42 R41 K131 ["VerifyNoticeHeader"]
  GETUPVAL R43 7
  GETTABLEKS R42 R43 K48 ["createElement"]
  GETUPVAL R43 10
  DUPTABLE R44 K129 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding"}]
  GETIMPORT R45 K123 [Enum.AutomaticSize.XY]
  SETTABLEKS R45 R44 K50 ["AutomaticSize"]
  GETIMPORT R45 K70 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R45 R44 K62 ["HorizontalAlignment"]
  GETIMPORT R45 K106 [Enum.FillDirection.Vertical]
  SETTABLEKS R45 R44 K107 ["Layout"]
  NAMECALL R45 R29 K110 ["getNextOrder"]
  CALL R45 1 1
  SETTABLEKS R45 R44 K4 ["LayoutOrder"]
  DUPTABLE R45 K137 [{"Left"}]
  LOADN R46 10
  SETTABLEKS R46 R45 K69 ["Left"]
  SETTABLEKS R45 R44 K65 ["Padding"]
  MOVE R45 R20
  CALL R42 3 1
  SETTABLEKS R42 R41 K132 ["VerifyReasonList"]
  JUMPIFNOT R15 [+49]
  GETUPVAL R43 7
  GETTABLEKS R42 R43 K48 ["createElement"]
  GETUPVAL R43 10
  DUPTABLE R44 K138 [{"AutomaticSize", "LayoutOrder", "Padding"}]
  GETIMPORT R45 K123 [Enum.AutomaticSize.XY]
  SETTABLEKS R45 R44 K50 ["AutomaticSize"]
  NAMECALL R45 R29 K110 ["getNextOrder"]
  CALL R45 1 1
  SETTABLEKS R45 R44 K4 ["LayoutOrder"]
  DUPTABLE R45 K137 [{"Left"}]
  LOADN R46 15
  SETTABLEKS R46 R45 K69 ["Left"]
  SETTABLEKS R45 R44 K65 ["Padding"]
  DUPTABLE R45 K139 [{"Text"}]
  GETUPVAL R47 7
  GETTABLEKS R46 R47 K48 ["createElement"]
  GETUPVAL R47 13
  DUPTABLE R48 K142 [{"AutomaticSize", "RichText", "Text", "TextColor", "TextSize"}]
  GETIMPORT R49 K123 [Enum.AutomaticSize.XY]
  SETTABLEKS R49 R48 K50 ["AutomaticSize"]
  LOADB R49 1
  SETTABLEKS R49 R48 K140 ["RichText"]
  SETTABLEKS R21 R48 K77 ["Text"]
  GETTABLEKS R49 R13 K143 ["verifyTextColor"]
  SETTABLEKS R49 R48 K141 ["TextColor"]
  GETUPVAL R50 9
  GETTABLEKS R49 R50 K128 ["FONT_SIZE_LARGE"]
  SETTABLEKS R49 R48 K80 ["TextSize"]
  CALL R46 2 1
  SETTABLEKS R46 R45 K77 ["Text"]
  CALL R42 3 1
  JUMP [+1]
  LOADNIL R42
  SETTABLEKS R42 R41 K133 ["CurrentLimitText"]
  CALL R38 3 1
  JUMP [+1]
  LOADNIL R38
  SETTABLEKS R38 R37 K93 ["VerifyNotice"]
  JUMPIFNOT R17 [+71]
  GETUPVAL R39 7
  GETTABLEKS R38 R39 K48 ["createElement"]
  GETUPVAL R39 10
  DUPTABLE R40 K144 [{"AutomaticSize", "Layout", "HorizontalAlignment", "LayoutOrder", "Padding"}]
  GETIMPORT R41 K123 [Enum.AutomaticSize.XY]
  SETTABLEKS R41 R40 K50 ["AutomaticSize"]
  GETIMPORT R41 K106 [Enum.FillDirection.Vertical]
  SETTABLEKS R41 R40 K107 ["Layout"]
  GETIMPORT R41 K70 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R41 R40 K62 ["HorizontalAlignment"]
  NAMECALL R41 R29 K110 ["getNextOrder"]
  CALL R41 1 1
  SETTABLEKS R41 R40 K4 ["LayoutOrder"]
  DUPTABLE R41 K130 [{"Top", "Bottom"}]
  LOADN R42 5
  SETTABLEKS R42 R41 K71 ["Top"]
  LOADN R42 5
  SETTABLEKS R42 R41 K111 ["Bottom"]
  SETTABLEKS R41 R40 K65 ["Padding"]
  DUPTABLE R41 K146 [{"DistributeToMarketplaceMessage"}]
  GETUPVAL R43 7
  GETTABLEKS R42 R43 K48 ["createElement"]
  LOADK R43 K76 ["TextLabel"]
  DUPTABLE R44 K147 [{"AutomaticSize", "BackgroundTransparency", "Font", "Text", "TextWrapped", "TextSize", "TextColor3", "LayoutOrder"}]
  GETIMPORT R45 K123 [Enum.AutomaticSize.XY]
  SETTABLEKS R45 R44 K50 ["AutomaticSize"]
  LOADN R45 1
  SETTABLEKS R45 R44 K51 ["BackgroundTransparency"]
  GETUPVAL R46 9
  GETTABLEKS R45 R46 K90 ["FONT"]
  SETTABLEKS R45 R44 K83 ["Font"]
  SETTABLEKS R17 R44 K77 ["Text"]
  LOADB R45 1
  SETTABLEKS R45 R44 K82 ["TextWrapped"]
  GETUPVAL R46 9
  GETTABLEKS R45 R46 K128 ["FONT_SIZE_LARGE"]
  SETTABLEKS R45 R44 K80 ["TextSize"]
  GETTABLEKS R45 R13 K148 ["distributionQuotaTextColor"]
  SETTABLEKS R45 R44 K81 ["TextColor3"]
  LOADN R45 1
  SETTABLEKS R45 R44 K4 ["LayoutOrder"]
  CALL R42 2 1
  SETTABLEKS R42 R41 K145 ["DistributeToMarketplaceMessage"]
  CALL R38 3 1
  JUMP [+1]
  LOADNIL R38
  SETTABLEKS R38 R37 K94 ["DistributeToMarketplace"]
  JUMPIFNOT R15 [+74]
  GETUPVAL R39 7
  GETTABLEKS R38 R39 K48 ["createElement"]
  GETUPVAL R39 10
  DUPTABLE R40 K144 [{"AutomaticSize", "Layout", "HorizontalAlignment", "LayoutOrder", "Padding"}]
  GETIMPORT R41 K123 [Enum.AutomaticSize.XY]
  SETTABLEKS R41 R40 K50 ["AutomaticSize"]
  GETIMPORT R41 K106 [Enum.FillDirection.Vertical]
  SETTABLEKS R41 R40 K107 ["Layout"]
  GETIMPORT R41 K70 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R41 R40 K62 ["HorizontalAlignment"]
  NAMECALL R41 R29 K110 ["getNextOrder"]
  CALL R41 1 1
  SETTABLEKS R41 R40 K4 ["LayoutOrder"]
  DUPTABLE R41 K130 [{"Top", "Bottom"}]
  LOADN R42 5
  SETTABLEKS R42 R41 K71 ["Top"]
  LOADN R42 5
  SETTABLEKS R42 R41 K111 ["Bottom"]
  SETTABLEKS R41 R40 K65 ["Padding"]
  DUPTABLE R41 K150 [{"QuotaMessage"}]
  JUMPIFNOT R18 [+36]
  GETUPVAL R43 7
  GETTABLEKS R42 R43 K48 ["createElement"]
  LOADK R43 K76 ["TextLabel"]
  DUPTABLE R44 K147 [{"AutomaticSize", "BackgroundTransparency", "Font", "Text", "TextWrapped", "TextSize", "TextColor3", "LayoutOrder"}]
  GETIMPORT R45 K123 [Enum.AutomaticSize.XY]
  SETTABLEKS R45 R44 K50 ["AutomaticSize"]
  LOADN R45 1
  SETTABLEKS R45 R44 K51 ["BackgroundTransparency"]
  GETUPVAL R46 9
  GETTABLEKS R45 R46 K90 ["FONT"]
  SETTABLEKS R45 R44 K83 ["Font"]
  SETTABLEKS R15 R44 K77 ["Text"]
  LOADB R45 1
  SETTABLEKS R45 R44 K82 ["TextWrapped"]
  GETUPVAL R46 9
  GETTABLEKS R45 R46 K128 ["FONT_SIZE_LARGE"]
  SETTABLEKS R45 R44 K80 ["TextSize"]
  GETTABLEKS R45 R13 K148 ["distributionQuotaTextColor"]
  SETTABLEKS R45 R44 K81 ["TextColor3"]
  LOADN R45 1
  SETTABLEKS R45 R44 K4 ["LayoutOrder"]
  CALL R42 2 1
  JUMP [+1]
  LOADNIL R42
  SETTABLEKS R42 R41 K149 ["QuotaMessage"]
  CALL R38 3 1
  JUMP [+1]
  LOADNIL R38
  SETTABLEKS R38 R37 K95 ["QuotaInfo"]
  GETUPVAL R39 7
  GETTABLEKS R38 R39 K48 ["createElement"]
  GETUPVAL R39 13
  DUPTABLE R40 K152 [{"AutomaticSize", "Size", "Text", "StyleModifier", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize", "LayoutOrder"}]
  GETIMPORT R41 K55 [Enum.AutomaticSize.Y]
  SETTABLEKS R41 R40 K50 ["AutomaticSize"]
  GETIMPORT R41 K57 [UDim2.new]
  LOADN R42 1
  LOADN R43 0
  LOADN R44 0
  LOADN R45 0
  CALL R41 4 1
  SETTABLEKS R41 R40 K52 ["Size"]
  SETTABLEKS R26 R40 K77 ["Text"]
  GETUPVAL R42 14
  GETTABLEKS R41 R42 K116 ["Disabled"]
  SETTABLEKS R41 R40 K151 ["StyleModifier"]
  LOADB R41 1
  SETTABLEKS R41 R40 K82 ["TextWrapped"]
  GETIMPORT R41 K86 [Enum.TextXAlignment.Left]
  SETTABLEKS R41 R40 K78 ["TextXAlignment"]
  GETIMPORT R41 K127 [Enum.TextYAlignment.Center]
  SETTABLEKS R41 R40 K79 ["TextYAlignment"]
  GETUPVAL R42 9
  GETTABLEKS R41 R42 K128 ["FONT_SIZE_LARGE"]
  SETTABLEKS R41 R40 K80 ["TextSize"]
  NAMECALL R41 R29 K110 ["getNextOrder"]
  CALL R41 1 1
  SETTABLEKS R41 R40 K4 ["LayoutOrder"]
  CALL R38 2 1
  SETTABLEKS R38 R37 K96 ["TipsLabel"]
  GETUPVAL R40 15
  GETTABLEKS R39 R40 K153 ["hideAssetConfigDistributeLearnMoreLink"]
  CALL R39 0 1
  JUMPIF R39 [+18]
  GETUPVAL R39 7
  GETTABLEKS R38 R39 K48 ["createElement"]
  GETUPVAL R39 12
  DUPTABLE R40 K154 [{"LayoutOrder", "OnClick", "Text"}]
  NAMECALL R41 R29 K110 ["getNextOrder"]
  CALL R41 1 1
  SETTABLEKS R41 R40 K4 ["LayoutOrder"]
  GETTABLEKS R41 R0 K155 ["onLearnMoreActivated"]
  SETTABLEKS R41 R40 K117 ["OnClick"]
  SETTABLEKS R27 R40 K77 ["Text"]
  CALL R38 2 1
  JUMP [+1]
  LOADNIL R38
  SETTABLEKS R38 R37 K97 ["LinkButton"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K59 ["RightFrame"]
  CALL R30 3 -1
  RETURN R30 -1

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
  GETTABLEKS R7 R6 K13 ["Packages"]
  GETIMPORT R8 K15 [require]
  GETTABLEKS R9 R7 K16 ["Cryo"]
  CALL R8 1 1
  GETIMPORT R9 K15 [require]
  GETTABLEKS R10 R7 K17 ["Framework"]
  CALL R9 1 1
  GETIMPORT R10 K15 [require]
  GETTABLEKS R11 R7 K18 ["Roact"]
  CALL R10 1 1
  GETIMPORT R11 K15 [require]
  GETTABLEKS R12 R7 K19 ["RoactRodux"]
  CALL R11 1 1
  GETIMPORT R12 K15 [require]
  GETTABLEKS R15 R6 K20 ["Core"]
  GETTABLEKS R14 R15 K21 ["Types"]
  GETTABLEKS R13 R14 K22 ["AssetQuotaTypes"]
  CALL R12 1 1
  GETIMPORT R13 K15 [require]
  GETTABLEKS R16 R6 K20 ["Core"]
  GETTABLEKS R15 R16 K21 ["Types"]
  GETTABLEKS R14 R15 K23 ["AssetSubTypes"]
  CALL R13 1 1
  GETTABLEKS R15 R9 K24 ["Util"]
  GETTABLEKS R14 R15 K25 ["formatLocalDateTime"]
  GETIMPORT R16 K15 [require]
  GETTABLEKS R17 R7 K17 ["Framework"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K26 ["ContextServices"]
  GETIMPORT R16 K15 [require]
  GETTABLEKS R19 R6 K20 ["Core"]
  GETTABLEKS R18 R19 K26 ["ContextServices"]
  GETTABLEKS R17 R18 K27 ["IXPContext"]
  CALL R16 1 1
  GETIMPORT R17 K15 [require]
  GETTABLEKS R20 R6 K20 ["Core"]
  GETTABLEKS R19 R20 K26 ["ContextServices"]
  GETTABLEKS R18 R19 K28 ["NetworkContext"]
  CALL R17 1 1
  GETTABLEKS R18 R15 K29 ["withContext"]
  GETTABLEKS R20 R6 K20 ["Core"]
  GETTABLEKS R19 R20 K24 ["Util"]
  GETIMPORT R20 K15 [require]
  GETTABLEKS R21 R19 K30 ["DebugFlags"]
  CALL R20 1 1
  GETIMPORT R21 K15 [require]
  GETTABLEKS R22 R19 K31 ["Constants"]
  CALL R21 1 1
  GETIMPORT R22 K15 [require]
  GETTABLEKS R23 R19 K32 ["AssetConfigConstants"]
  CALL R22 1 1
  GETIMPORT R23 K15 [require]
  GETTABLEKS R24 R19 K33 ["AssetConfigUtil"]
  CALL R23 1 1
  GETIMPORT R24 K15 [require]
  GETTABLEKS R27 R6 K20 ["Core"]
  GETTABLEKS R26 R27 K24 ["Util"]
  GETTABLEKS R25 R26 K34 ["ToolboxUtilities"]
  CALL R24 1 1
  GETIMPORT R25 K15 [require]
  GETTABLEKS R26 R19 K35 ["LayoutOrderIterator"]
  CALL R25 1 1
  GETIMPORT R26 K15 [require]
  GETTABLEKS R27 R19 K36 ["Urls"]
  CALL R26 1 1
  GETIMPORT R27 K15 [require]
  GETTABLEKS R28 R19 K37 ["sanitizeRichText"]
  CALL R27 1 1
  LOADNIL R28
  JUMPIFNOT R3 [+6]
  GETIMPORT R29 K15 [require]
  GETTABLEKS R30 R19 K38 ["getIsIXPVariableEnabled"]
  CALL R29 1 1
  MOVE R28 R29
  GETIMPORT R29 K15 [require]
  GETTABLEKS R30 R7 K39 ["Dash"]
  CALL R29 1 1
  GETTABLEKS R30 R9 K40 ["UI"]
  GETTABLEKS R31 R30 K41 ["TextLabel"]
  GETTABLEKS R32 R30 K42 ["LinkText"]
  GETTABLEKS R33 R30 K43 ["List"]
  GETTABLEKS R34 R30 K44 ["Pane"]
  GETTABLEKS R35 R30 K45 ["ToggleButton"]
  GETTABLEKS R37 R9 K24 ["Util"]
  GETTABLEKS R36 R37 K46 ["StyleModifier"]
  GETIMPORT R37 K1 [game]
  LOADK R39 K47 ["GuiService"]
  NAMECALL R37 R37 K48 ["GetService"]
  CALL R37 2 1
  GETTABLEKS R38 R10 K49 ["PureComponent"]
  LOADK R40 K50 ["ConfigCopy"]
  NAMECALL R38 R38 K51 ["extend"]
  CALL R38 2 1
  DUPCLOSURE R39 K52 [PROTO_5]
  CAPTURE VAL R8
  CAPTURE VAL R37
  CAPTURE VAL R24
  CAPTURE VAL R5
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R10
  CAPTURE VAL R34
  CAPTURE VAL R31
  CAPTURE VAL R21
  SETTABLEKS R39 R38 K53 ["init"]
  DUPCLOSURE R39 K54 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R8
  SETTABLEKS R39 R38 K55 ["didMount"]
  DUPCLOSURE R39 K56 [PROTO_9]
  SETTABLEKS R39 R38 K57 ["willUnmount"]
  DUPCLOSURE R39 K58 [PROTO_12]
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R39 R38 K59 ["didUpdate"]
  DUPCLOSURE R39 K60 [PROTO_16]
  CAPTURE VAL R10
  CAPTURE VAL R29
  CAPTURE VAL R20
  SETTABLEKS R39 R38 K61 ["updateDistributionQuotas"]
  DUPCLOSURE R39 K62 [PROTO_17]
  CAPTURE VAL R14
  SETTABLEKS R39 R38 K63 ["getDistributionQuotaStatus"]
  NEWCLOSURE R39 P6
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE REF R28
  CAPTURE VAL R27
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R25
  CAPTURE VAL R10
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R34
  CAPTURE VAL R35
  CAPTURE VAL R32
  CAPTURE VAL R31
  CAPTURE VAL R36
  CAPTURE VAL R24
  SETTABLEKS R39 R38 K64 ["render"]
  MOVE R39 R18
  DUPTABLE R40 K69 [{"IXP", "Localization", "Stylizer", "Network"}]
  JUMPIFNOT R3 [+2]
  MOVE R41 R16
  JUMP [+1]
  LOADNIL R41
  SETTABLEKS R41 R40 K65 ["IXP"]
  GETTABLEKS R41 R15 K66 ["Localization"]
  SETTABLEKS R41 R40 K66 ["Localization"]
  GETTABLEKS R41 R15 K67 ["Stylizer"]
  SETTABLEKS R41 R40 K67 ["Stylizer"]
  SETTABLEKS R17 R40 K68 ["Network"]
  CALL R39 1 1
  MOVE R40 R38
  CALL R39 1 1
  MOVE R38 R39
  DUPCLOSURE R39 K70 [PROTO_19]
  CAPTURE VAL R2
  CAPTURE VAL R13
  GETTABLEKS R40 R11 K71 ["connect"]
  MOVE R41 R39
  LOADNIL R42
  CALL R40 2 1
  MOVE R41 R38
  CALL R40 1 -1
  CLOSEUPVALS R28
  RETURN R40 -1
