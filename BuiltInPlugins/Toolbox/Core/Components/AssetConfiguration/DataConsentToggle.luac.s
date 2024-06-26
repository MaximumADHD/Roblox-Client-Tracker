PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R5 1
  GETTABLEKS R3 R5 K0 ["CREATE_URL"]
  GETUPVAL R4 2
  CONCAT R2 R3 R4
  NAMECALL R0 R0 K1 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R5 1
  GETTABLEKS R3 R5 K0 ["CREATE_URL"]
  GETUPVAL R4 2
  CONCAT R2 R3 R4
  NAMECALL R0 R0 K1 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Stylizer"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Localization"]
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["new"]
  CALL R3 0 1
  DUPTABLE R4 K8 [{"Font", "Style", "TextSize", "TextXAlignment"}]
  GETTABLEKS R5 R1 K4 ["Font"]
  SETTABLEKS R5 R4 K4 ["Font"]
  LOADK R5 K9 ["Body"]
  SETTABLEKS R5 R4 K5 ["Style"]
  LOADN R5 16
  SETTABLEKS R5 R4 K6 ["TextSize"]
  GETIMPORT R5 K12 [Enum.TextXAlignment.Left]
  SETTABLEKS R5 R4 K7 ["TextXAlignment"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K13 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K17 [{"AutomaticSize", "LayoutOrder", "Title"}]
  GETIMPORT R8 K19 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K14 ["AutomaticSize"]
  GETTABLEKS R8 R0 K15 ["LayoutOrder"]
  SETTABLEKS R8 R7 K15 ["LayoutOrder"]
  LOADK R10 K20 ["AssetConfig"]
  LOADK R11 K21 ["ShareDataHeader"]
  NAMECALL R8 R2 K22 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K16 ["Title"]
  DUPTABLE R8 K24 [{"DescriptionPane"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K13 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K28 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
  GETIMPORT R12 K30 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K14 ["AutomaticSize"]
  NAMECALL R12 R3 K31 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K15 ["LayoutOrder"]
  GETIMPORT R12 K34 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K25 ["Layout"]
  GETIMPORT R12 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K26 ["HorizontalAlignment"]
  GETTABLEKS R13 R1 K36 ["toggle"]
  GETTABLEKS R12 R13 K37 ["verticalListPadding"]
  SETTABLEKS R12 R11 K27 ["Spacing"]
  DUPTABLE R12 K40 [{"ToggleButton", "DescriptionTextPane"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K13 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K44 [{"LayoutOrder", "OnClick", "Selected", "Size"}]
  NAMECALL R16 R3 K31 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K15 ["LayoutOrder"]
  GETTABLEKS R16 R0 K45 ["onDataConsentToggleClick"]
  SETTABLEKS R16 R15 K41 ["OnClick"]
  GETTABLEKS R16 R0 K46 ["dataSharingToggled"]
  SETTABLEKS R16 R15 K42 ["Selected"]
  GETIMPORT R16 K48 [UDim2.new]
  LOADN R17 0
  GETTABLEKS R19 R1 K36 ["toggle"]
  GETTABLEKS R18 R19 K49 ["buttonWidth"]
  LOADN R19 0
  GETTABLEKS R21 R1 K36 ["toggle"]
  GETTABLEKS R20 R21 K50 ["buttonHeight"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K43 ["Size"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K38 ["ToggleButton"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K13 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K51 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
  GETIMPORT R16 K30 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K14 ["AutomaticSize"]
  GETIMPORT R16 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K26 ["HorizontalAlignment"]
  GETIMPORT R16 K34 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K25 ["Layout"]
  NAMECALL R16 R3 K31 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K15 ["LayoutOrder"]
  GETTABLEKS R17 R1 K36 ["toggle"]
  GETTABLEKS R16 R17 K52 ["verticalTextSpacing"]
  SETTABLEKS R16 R15 K27 ["Spacing"]
  DUPTABLE R16 K55 [{"DescriptionText", "LinkText"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K13 ["createElement"]
  GETUPVAL R18 6
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K56 ["join"]
  DUPTABLE R20 K60 [{"Text", "AutomaticSize", "HorizontalAlignment", "LayoutOrder", "MaxWidth", "TextWrapped"}]
  LOADK R23 K20 ["AssetConfig"]
  LOADK R24 K61 ["ShareDataDescriptionText"]
  NAMECALL R21 R2 K22 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K57 ["Text"]
  GETIMPORT R21 K19 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K14 ["AutomaticSize"]
  GETIMPORT R21 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R21 R20 K26 ["HorizontalAlignment"]
  NAMECALL R21 R3 K31 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K15 ["LayoutOrder"]
  GETTABLEKS R21 R1 K58 ["MaxWidth"]
  SETTABLEKS R21 R20 K58 ["MaxWidth"]
  LOADB R21 1
  SETTABLEKS R21 R20 K59 ["TextWrapped"]
  MOVE R21 R4
  CALL R19 2 -1
  CALL R17 -1 1
  SETTABLEKS R17 R16 K53 ["DescriptionText"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K13 ["createElement"]
  GETUPVAL R18 8
  DUPTABLE R19 K64 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Text", "TextProps", "TextWrapped"}]
  GETIMPORT R20 K30 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K14 ["AutomaticSize"]
  GETIMPORT R20 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K26 ["HorizontalAlignment"]
  NAMECALL R20 R3 K31 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K15 ["LayoutOrder"]
  NEWTABLE R20 2 0
  DUPTABLE R21 K66 [{"LinkText", "LinkCallback"}]
  LOADK R24 K20 ["AssetConfig"]
  LOADK R25 K67 ["ShareDataDescriptionLinkPreferences"]
  NAMECALL R22 R2 K22 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K54 ["LinkText"]
  DUPCLOSURE R22 K68 [PROTO_0]
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  SETTABLEKS R22 R21 K65 ["LinkCallback"]
  SETTABLEKS R21 R20 K69 ["[link1]"]
  DUPTABLE R21 K66 [{"LinkText", "LinkCallback"}]
  LOADK R24 K20 ["AssetConfig"]
  LOADK R25 K70 ["ShareDataDescriptionLinkLearnMore"]
  NAMECALL R22 R2 K22 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K54 ["LinkText"]
  DUPCLOSURE R22 K71 [PROTO_1]
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U12
  SETTABLEKS R22 R21 K65 ["LinkCallback"]
  SETTABLEKS R21 R20 K72 ["[link2]"]
  SETTABLEKS R20 R19 K62 ["LinkMap"]
  LOADK R22 K20 ["AssetConfig"]
  LOADK R23 K73 ["ShareDataDescriptionLinks"]
  NAMECALL R20 R2 K22 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K57 ["Text"]
  SETTABLEKS R4 R19 K63 ["TextProps"]
  LOADB R20 1
  SETTABLEKS R20 R19 K59 ["TextWrapped"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K54 ["LinkText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K39 ["DescriptionTextPane"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K23 ["DescriptionPane"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["React"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K10 ["Core"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R5 K12 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R5 K13 ["AssetConfigConstants"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K14 ["Libs"]
  GETTABLEKS R10 R11 K15 ["Http"]
  GETTABLEKS R9 R10 K16 ["Url"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K17 ["ContextServices"]
  GETIMPORT R10 K19 [game]
  LOADK R12 K20 ["BrowserService"]
  NAMECALL R10 R10 K21 ["GetService"]
  CALL R10 2 1
  GETTABLEKS R11 R3 K22 ["UI"]
  GETTABLEKS R12 R11 K23 ["Pane"]
  GETTABLEKS R13 R11 K24 ["TextLabel"]
  GETTABLEKS R14 R11 K25 ["TextWithLinks"]
  GETTABLEKS R15 R11 K26 ["ToggleButton"]
  GETTABLEKS R17 R3 K11 ["Util"]
  GETTABLEKS R16 R17 K27 ["LayoutOrderIterator"]
  GETTABLEKS R18 R3 K11 ["Util"]
  GETTABLEKS R17 R18 K28 ["StyleModifier"]
  GETTABLEKS R20 R0 K10 ["Core"]
  GETTABLEKS R19 R20 K29 ["Components"]
  GETTABLEKS R18 R19 K30 ["AssetConfiguration"]
  GETIMPORT R19 K6 [require]
  GETTABLEKS R20 R18 K31 ["ConfigSectionWrapper"]
  CALL R19 1 1
  GETIMPORT R20 K19 [game]
  LOADK R22 K32 ["DataSharing_PreferencesUrlSuffix"]
  LOADK R23 K33 ["settings/data-collection?tab=avatar-items"]
  NAMECALL R20 R20 K34 ["DefineFastString"]
  CALL R20 3 1
  GETIMPORT R21 K19 [game]
  LOADK R23 K35 ["DataSharing_TermsUrlSuffix"]
  LOADK R24 K36 ["docs/ai-data-sharing"]
  NAMECALL R21 R21 K34 ["DefineFastString"]
  CALL R21 3 1
  DUPCLOSURE R22 K37 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R16
  CAPTURE VAL R4
  CAPTURE VAL R19
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R20
  CAPTURE VAL R21
  RETURN R22 1
