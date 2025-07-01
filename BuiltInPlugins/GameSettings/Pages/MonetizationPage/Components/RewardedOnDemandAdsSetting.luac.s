PROTO_0:
  LOADK R3 K0 ["%%UNIVERSE_ID%%"]
  GETIMPORT R6 K2 [game]
  GETTABLEKS R5 R6 K3 ["GameId"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K5 [tostring]
  CALL R4 1 1
  NAMECALL R1 R0 K6 ["gsub"]
  CALL R1 3 1
  MOVE R0 R1
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K9 [string.len]
  CALL R1 1 1
  JUMPIFNOTEQKN R1 K10 [0] [+3]
  LOADK R1 K11 ["https://www.roblox.com"]
  RETURN R1 1
  RETURN R0 1

PROTO_1:
  JUMPIFNOT R1 [+44]
  DUPTABLE R4 K3 [{"subText", "linkText", "linkUrl"}]
  LOADK R7 K4 ["Monetization"]
  LOADK R8 K5 ["RewardedAdsSubtext"]
  NAMECALL R5 R0 K6 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K0 ["subText"]
  LOADK R7 K4 ["Monetization"]
  LOADK R8 K7 ["RewardedAdsSubtextLink"]
  NAMECALL R5 R0 K6 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K1 ["linkText"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["eligible"]
  LOADK R9 K9 ["%%UNIVERSE_ID%%"]
  GETIMPORT R12 K11 [game]
  GETTABLEKS R11 R12 K12 ["GameId"]
  FASTCALL1 TOSTRING R11 [+2]
  GETIMPORT R10 K14 [tostring]
  CALL R10 1 1
  NAMECALL R7 R6 K15 ["gsub"]
  CALL R7 3 1
  MOVE R6 R7
  FASTCALL1 STRING_LEN R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K18 [string.len]
  CALL R7 1 1
  JUMPIFNOTEQKN R7 K19 [0] [+3]
  LOADK R5 K20 ["https://www.roblox.com"]
  JUMP [+1]
  MOVE R5 R6
  SETTABLEKS R5 R4 K2 ["linkUrl"]
  RETURN R4 1
  JUMPIFNOT R2 [+44]
  DUPTABLE R4 K3 [{"subText", "linkText", "linkUrl"}]
  LOADK R7 K4 ["Monetization"]
  LOADK R8 K21 ["RewardedAdsSuspendedSubtext"]
  NAMECALL R5 R0 K6 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K0 ["subText"]
  LOADK R7 K4 ["Monetization"]
  LOADK R8 K22 ["RewardedAdsSuspendedSubtextLink"]
  NAMECALL R5 R0 K6 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K1 ["linkText"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K23 ["appeal"]
  LOADK R9 K9 ["%%UNIVERSE_ID%%"]
  GETIMPORT R12 K11 [game]
  GETTABLEKS R11 R12 K12 ["GameId"]
  FASTCALL1 TOSTRING R11 [+2]
  GETIMPORT R10 K14 [tostring]
  CALL R10 1 1
  NAMECALL R7 R6 K15 ["gsub"]
  CALL R7 3 1
  MOVE R6 R7
  FASTCALL1 STRING_LEN R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K18 [string.len]
  CALL R7 1 1
  JUMPIFNOTEQKN R7 K19 [0] [+3]
  LOADK R5 K20 ["https://www.roblox.com"]
  JUMP [+1]
  MOVE R5 R6
  SETTABLEKS R5 R4 K2 ["linkUrl"]
  RETURN R4 1
  JUMPIFNOT R3 [+44]
  DUPTABLE R4 K3 [{"subText", "linkText", "linkUrl"}]
  LOADK R7 K4 ["Monetization"]
  LOADK R8 K24 ["RewardedAdsLostEligibilitySubtext"]
  NAMECALL R5 R0 K6 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K0 ["subText"]
  LOADK R7 K4 ["Monetization"]
  LOADK R8 K25 ["RewardedAdsLostEligibilitySubtextLink"]
  NAMECALL R5 R0 K6 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K1 ["linkText"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K26 ["wasEligible"]
  LOADK R9 K9 ["%%UNIVERSE_ID%%"]
  GETIMPORT R12 K11 [game]
  GETTABLEKS R11 R12 K12 ["GameId"]
  FASTCALL1 TOSTRING R11 [+2]
  GETIMPORT R10 K14 [tostring]
  CALL R10 1 1
  NAMECALL R7 R6 K15 ["gsub"]
  CALL R7 3 1
  MOVE R6 R7
  FASTCALL1 STRING_LEN R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K18 [string.len]
  CALL R7 1 1
  JUMPIFNOTEQKN R7 K19 [0] [+3]
  LOADK R5 K20 ["https://www.roblox.com"]
  JUMP [+1]
  MOVE R5 R6
  SETTABLEKS R5 R4 K2 ["linkUrl"]
  RETURN R4 1
  DUPTABLE R4 K3 [{"subText", "linkText", "linkUrl"}]
  LOADK R7 K4 ["Monetization"]
  LOADK R8 K27 ["RewardedAdsIneligibleSubtext"]
  NAMECALL R5 R0 K6 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K0 ["subText"]
  LOADK R7 K4 ["Monetization"]
  LOADK R8 K28 ["RewardedAdsIneligibleSubtextLink"]
  NAMECALL R5 R0 K6 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K1 ["linkText"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K29 ["ineligible"]
  LOADK R9 K9 ["%%UNIVERSE_ID%%"]
  GETIMPORT R12 K11 [game]
  GETTABLEKS R11 R12 K12 ["GameId"]
  FASTCALL1 TOSTRING R11 [+2]
  GETIMPORT R10 K14 [tostring]
  CALL R10 1 1
  NAMECALL R7 R6 K15 ["gsub"]
  CALL R7 3 1
  MOVE R6 R7
  FASTCALL1 STRING_LEN R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K18 [string.len]
  CALL R7 1 1
  JUMPIFNOTEQKN R7 K19 [0] [+3]
  LOADK R5 K20 ["https://www.roblox.com"]
  JUMP [+1]
  MOVE R5 R6
  SETTABLEKS R5 R4 K2 ["linkUrl"]
  RETURN R4 1

PROTO_2:
  DUPTABLE R1 K1 [{"IsEnabled"}]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R2 R3 K0 ["IsEnabled"]
  SETTABLEKS R2 R1 K0 ["IsEnabled"]
  SETTABLEKS R1 R0 K3 ["state"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["IsEnabled"]
  NOT R1 R2
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 0
  DUPTABLE R2 K1 [{"IsEnabled"}]
  SETTABLEKS R1 R2 K0 ["IsEnabled"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  NAMECALL R0 R0 K0 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R0 3
  JUMPIFNOT R0 [+14]
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K3 [string.len]
  CALL R1 1 1
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+7]
  GETUPVAL R1 4
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["OpenBrowserWindow"]
  CALL R1 2 0
  RETURN R0 0
  GETIMPORT R1 K5 [error]
  LOADK R2 K6 ["Failed to open rewarded ads documentation"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnToggled"]
  GETTABLEKS R3 R1 K2 ["Title"]
  LOADNIL R4
  LOADNIL R5
  LOADNIL R6
  GETUPVAL R7 0
  JUMPIFNOT R7 [+28]
  GETTABLEKS R7 R1 K3 ["Localization"]
  JUMPIFNOT R7 [+25]
  GETUPVAL R7 1
  GETTABLEKS R8 R1 K3 ["Localization"]
  GETTABLEKS R9 R1 K4 ["IsEligible"]
  GETTABLEKS R11 R1 K5 ["IsSuspended"]
  JUMPIFEQKB R11 TRUE [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETTABLEKS R12 R1 K6 ["HasBeenEligible"]
  JUMPIFEQKB R12 TRUE [+2]
  LOADB R11 0 +1
  LOADB R11 1
  CALL R7 4 1
  GETTABLEKS R4 R7 K7 ["subText"]
  GETTABLEKS R5 R7 K8 ["linkText"]
  GETTABLEKS R6 R7 K9 ["linkUrl"]
  JUMP [+4]
  GETTABLEKS R4 R1 K10 ["SubText"]
  GETTABLEKS R5 R1 K11 ["LinkText"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K13 ["LayoutOrderIterator"]
  GETTABLEKS R8 R7 K14 ["new"]
  CALL R8 0 1
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R9 R0 K15 ["updateToggleState"]
  GETUPVAL R10 0
  JUMPIFNOT R10 [+4]
  GETTABLEKS R10 R1 K4 ["IsEligible"]
  NOT R9 R10
  JUMP [+1]
  LOADNIL R9
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K20 [{"AutomaticSize", "Layout", "LayoutOrder"}]
  GETIMPORT R13 K23 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K17 ["AutomaticSize"]
  GETIMPORT R13 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K18 ["Layout"]
  GETTABLEKS R14 R0 K0 ["props"]
  GETTABLEKS R13 R14 K19 ["LayoutOrder"]
  SETTABLEKS R13 R12 K19 ["LayoutOrder"]
  DUPTABLE R13 K28 [{"ToggleRewardedVideoAds"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K16 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K29 [{"LayoutOrder", "Title"}]
  NAMECALL R17 R8 K30 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K19 ["LayoutOrder"]
  SETTABLEKS R3 R16 K2 ["Title"]
  DUPTABLE R17 K33 [{"ToggleButton", "TextContents"}]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K16 ["createElement"]
  GETUPVAL R19 6
  DUPTABLE R20 K37 [{"Disabled", "Selected", "OnClick", "LayoutOrder"}]
  GETUPVAL R22 0
  JUMPIFNOT R22 [+2]
  MOVE R21 R9
  JUMP [+1]
  LOADB R21 0
  SETTABLEKS R21 R20 K34 ["Disabled"]
  GETUPVAL R22 0
  JUMPIFNOT R22 [+7]
  GETTABLEKS R22 R0 K38 ["state"]
  GETTABLEKS R21 R22 K39 ["IsEnabled"]
  JUMPIFNOT R21 [+6]
  NOT R21 R9
  JUMP [+4]
  GETTABLEKS R22 R0 K38 ["state"]
  GETTABLEKS R21 R22 K39 ["IsEnabled"]
  SETTABLEKS R21 R20 K35 ["Selected"]
  GETTABLEKS R21 R0 K15 ["updateToggleState"]
  SETTABLEKS R21 R20 K36 ["OnClick"]
  NAMECALL R21 R8 K30 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K19 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K31 ["ToggleButton"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K16 ["createElement"]
  LOADK R19 K40 ["Frame"]
  DUPTABLE R20 K42 [{"BackgroundTransparency", "AutomaticSize", "LayoutOrder"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K41 ["BackgroundTransparency"]
  GETIMPORT R21 K23 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K17 ["AutomaticSize"]
  NAMECALL R21 R8 K30 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K19 ["LayoutOrder"]
  DUPTABLE R21 K44 [{"UIListLayout", "SubText", "LinkText"}]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K16 ["createElement"]
  LOADK R23 K43 ["UIListLayout"]
  DUPTABLE R24 K49 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Wraps"}]
  GETIMPORT R25 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K24 ["FillDirection"]
  GETUPVAL R26 0
  JUMPIFNOT R26 [+3]
  GETIMPORT R25 K53 [Enum.HorizontalAlignment.Left]
  JUMP [+2]
  GETIMPORT R25 K55 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R25 R24 K45 ["HorizontalAlignment"]
  GETUPVAL R26 0
  JUMPIFNOT R26 [+3]
  GETIMPORT R25 K57 [Enum.VerticalAlignment.Top]
  JUMP [+2]
  GETIMPORT R25 K58 [Enum.VerticalAlignment.Center]
  SETTABLEKS R25 R24 K46 ["VerticalAlignment"]
  GETIMPORT R25 K59 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K47 ["SortOrder"]
  GETUPVAL R26 0
  JUMPIFNOT R26 [+2]
  LOADB R25 1
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K48 ["Wraps"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K43 ["UIListLayout"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K16 ["createElement"]
  GETUPVAL R23 7
  DUPTABLE R24 K64 [{"AutomaticSize", "TextXAlignment", "Style", "Text", "TextWrapped", "LayoutOrder"}]
  GETIMPORT R25 K23 [Enum.AutomaticSize.XY]
  SETTABLEKS R25 R24 K17 ["AutomaticSize"]
  GETIMPORT R25 K65 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K60 ["TextXAlignment"]
  LOADK R25 K66 ["Body"]
  SETTABLEKS R25 R24 K61 ["Style"]
  MOVE R26 R4
  LOADK R27 K67 [" "]
  CONCAT R25 R26 R27
  SETTABLEKS R25 R24 K62 ["Text"]
  LOADB R25 1
  SETTABLEKS R25 R24 K63 ["TextWrapped"]
  NAMECALL R25 R8 K30 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K19 ["LayoutOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K10 ["SubText"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K16 ["createElement"]
  GETUPVAL R23 8
  DUPTABLE R24 K68 [{"AutomaticSize", "TextXAlignment", "Style", "TextWrapped", "Text", "OnClick", "LayoutOrder"}]
  GETIMPORT R25 K23 [Enum.AutomaticSize.XY]
  SETTABLEKS R25 R24 K17 ["AutomaticSize"]
  GETIMPORT R25 K65 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K60 ["TextXAlignment"]
  LOADK R25 K66 ["Body"]
  SETTABLEKS R25 R24 K61 ["Style"]
  GETUPVAL R26 0
  JUMPIFNOT R26 [+2]
  LOADB R25 1
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K63 ["TextWrapped"]
  SETTABLEKS R5 R24 K62 ["Text"]
  NEWCLOSURE R25 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U9
  CAPTURE REF R6
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  SETTABLEKS R25 R24 K36 ["OnClick"]
  NAMECALL R25 R8 K30 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K19 ["LayoutOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K11 ["LinkText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K32 ["TextContents"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K27 ["ToggleRewardedVideoAds"]
  CALL R10 3 -1
  CLOSEUPVALS R6
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["Pane"]
  GETTABLEKS R5 R3 K10 ["TextLabel"]
  GETTABLEKS R6 R3 K11 ["LinkText"]
  GETTABLEKS R7 R3 K12 ["TitledFrame"]
  GETTABLEKS R8 R3 K13 ["ToggleButton"]
  GETIMPORT R9 K15 [game]
  LOADK R11 K16 ["GuiService"]
  NAMECALL R9 R9 K17 ["GetService"]
  CALL R9 2 1
  GETIMPORT R10 K15 [game]
  LOADK R12 K18 ["BrowserService"]
  NAMECALL R10 R10 K17 ["GetService"]
  CALL R10 2 1
  GETIMPORT R11 K4 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K2 ["Parent"]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K19 ["Flags"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K20 ["FFlagEnableToggleRegardlessOfUniverseEligibility"]
  GETTABLEKS R13 R1 K21 ["PureComponent"]
  LOADK R15 K22 ["RewardedOnDemandAdsSetting"]
  NAMECALL R13 R13 K23 ["extend"]
  CALL R13 2 1
  LOADNIL R14
  LOADNIL R15
  JUMPIFNOT R12 [+39]
  DUPTABLE R16 K28 [{"eligible", "appeal", "wasEligible", "ineligible"}]
  GETIMPORT R17 K15 [game]
  LOADK R19 K29 ["RewardedVideoAdsDocumentationUrl"]
  LOADK R20 K30 ["https://www.roblox.com"]
  NAMECALL R17 R17 K31 ["DefineFastString"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K24 ["eligible"]
  GETIMPORT R17 K15 [game]
  LOADK R19 K32 ["RewardedVideoAdsModerationAppealUrl"]
  LOADK R20 K30 ["https://www.roblox.com"]
  NAMECALL R17 R17 K31 ["DefineFastString"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K25 ["appeal"]
  GETIMPORT R17 K15 [game]
  LOADK R19 K33 ["RewardedVideoAdsWasEligibleDocumentationUrl"]
  LOADK R20 K30 ["https://www.roblox.com"]
  NAMECALL R17 R17 K31 ["DefineFastString"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K26 ["wasEligible"]
  GETIMPORT R17 K15 [game]
  LOADK R19 K34 ["RewardedVideoAdsIneligibleDocumentationUrl"]
  LOADK R20 K30 ["https://www.roblox.com"]
  NAMECALL R17 R17 K31 ["DefineFastString"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K27 ["ineligible"]
  MOVE R14 R16
  JUMP [+14]
  GETIMPORT R16 K15 [game]
  LOADK R18 K29 ["RewardedVideoAdsDocumentationUrl"]
  LOADK R19 K30 ["https://www.roblox.com"]
  NAMECALL R16 R16 K31 ["DefineFastString"]
  CALL R16 3 0
  GETIMPORT R16 K15 [game]
  LOADK R18 K29 ["RewardedVideoAdsDocumentationUrl"]
  NAMECALL R16 R16 K35 ["GetFastString"]
  CALL R16 2 1
  MOVE R15 R16
  DUPCLOSURE R16 K36 [PROTO_0]
  NEWCLOSURE R17 P1
  CAPTURE REF R14
  DUPCLOSURE R18 K37 [PROTO_2]
  SETTABLEKS R18 R13 K38 ["init"]
  NEWCLOSURE R18 P3
  CAPTURE VAL R12
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE REF R15
  CAPTURE VAL R9
  SETTABLEKS R18 R13 K39 ["render"]
  CLOSEUPVALS R14
  RETURN R13 1
