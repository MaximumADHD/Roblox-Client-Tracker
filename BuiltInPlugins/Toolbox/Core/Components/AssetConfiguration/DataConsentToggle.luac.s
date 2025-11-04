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
  GETTABLEKS R5 R6 K13 ["join"]
  DUPTABLE R6 K19 [{"Text", "AutomaticSize", "LayoutOrder", "MaxWidth", "TextWrapped"}]
  LOADK R9 K20 ["AssetConfig"]
  LOADK R10 K21 ["ShareDataDescriptionText"]
  NAMECALL R7 R2 K22 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K14 ["Text"]
  GETIMPORT R7 K24 [Enum.AutomaticSize.XY]
  SETTABLEKS R7 R6 K15 ["AutomaticSize"]
  NAMECALL R7 R3 K25 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K16 ["LayoutOrder"]
  GETTABLEKS R7 R1 K17 ["MaxWidth"]
  SETTABLEKS R7 R6 K17 ["MaxWidth"]
  LOADB R7 1
  SETTABLEKS R7 R6 K18 ["TextWrapped"]
  MOVE R7 R4
  CALL R5 2 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K26 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K28 [{"AutomaticSize", "LayoutOrder", "Title"}]
  GETIMPORT R9 K24 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K15 ["AutomaticSize"]
  GETTABLEKS R9 R0 K16 ["LayoutOrder"]
  SETTABLEKS R9 R8 K16 ["LayoutOrder"]
  LOADK R11 K20 ["AssetConfig"]
  LOADK R12 K29 ["ShareDataHeader"]
  NAMECALL R9 R2 K22 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K27 ["Title"]
  DUPTABLE R9 K31 [{"DescriptionPane"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K26 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K35 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
  GETIMPORT R13 K37 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K15 ["AutomaticSize"]
  NAMECALL R13 R3 K25 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K16 ["LayoutOrder"]
  GETIMPORT R13 K40 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K32 ["Layout"]
  GETIMPORT R13 K41 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K33 ["HorizontalAlignment"]
  GETTABLEKS R14 R1 K42 ["toggle"]
  GETTABLEKS R13 R14 K43 ["verticalListPadding"]
  SETTABLEKS R13 R12 K34 ["Spacing"]
  DUPTABLE R13 K46 [{"ToggleButton", "DescriptionTextPane"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K26 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K50 [{"LayoutOrder", "OnClick", "Selected", "Size"}]
  NAMECALL R17 R3 K25 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K16 ["LayoutOrder"]
  GETTABLEKS R17 R0 K51 ["onDataConsentToggleClick"]
  SETTABLEKS R17 R16 K47 ["OnClick"]
  GETTABLEKS R17 R0 K52 ["dataSharingToggled"]
  SETTABLEKS R17 R16 K48 ["Selected"]
  GETIMPORT R17 K54 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R20 R1 K42 ["toggle"]
  GETTABLEKS R19 R20 K55 ["buttonWidth"]
  LOADN R20 0
  GETTABLEKS R22 R1 K42 ["toggle"]
  GETTABLEKS R21 R22 K56 ["buttonHeight"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K49 ["Size"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K44 ["ToggleButton"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K26 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K57 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
  GETIMPORT R17 K37 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K15 ["AutomaticSize"]
  GETIMPORT R17 K41 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K33 ["HorizontalAlignment"]
  GETIMPORT R17 K40 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K32 ["Layout"]
  NAMECALL R17 R3 K25 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K16 ["LayoutOrder"]
  GETTABLEKS R18 R1 K42 ["toggle"]
  GETTABLEKS R17 R18 K58 ["verticalTextSpacing"]
  SETTABLEKS R17 R16 K34 ["Spacing"]
  DUPTABLE R17 K61 [{"DescriptionText", "LinkText"}]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K26 ["createElement"]
  GETUPVAL R19 7
  MOVE R20 R5
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["DescriptionText"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K26 ["createElement"]
  GETUPVAL R19 8
  DUPTABLE R20 K64 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Text", "TextProps", "TextWrapped"}]
  GETIMPORT R21 K37 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K15 ["AutomaticSize"]
  GETIMPORT R21 K41 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R21 R20 K33 ["HorizontalAlignment"]
  NAMECALL R21 R3 K25 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K16 ["LayoutOrder"]
  NEWTABLE R21 2 0
  DUPTABLE R22 K66 [{"LinkText", "LinkCallback"}]
  LOADK R25 K20 ["AssetConfig"]
  LOADK R26 K67 ["ShareDataDescriptionLinkPreferences"]
  NAMECALL R23 R2 K22 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K60 ["LinkText"]
  DUPCLOSURE R23 K68 [PROTO_0]
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  SETTABLEKS R23 R22 K65 ["LinkCallback"]
  SETTABLEKS R22 R21 K69 ["[link1]"]
  DUPTABLE R22 K66 [{"LinkText", "LinkCallback"}]
  LOADK R25 K20 ["AssetConfig"]
  LOADK R26 K70 ["ShareDataDescriptionLinkLearnMore"]
  NAMECALL R23 R2 K22 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K60 ["LinkText"]
  DUPCLOSURE R23 K71 [PROTO_1]
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U12
  SETTABLEKS R23 R22 K65 ["LinkCallback"]
  SETTABLEKS R22 R21 K72 ["[link2]"]
  SETTABLEKS R21 R20 K62 ["LinkMap"]
  LOADK R23 K20 ["AssetConfig"]
  LOADK R24 K73 ["ShareDataDescriptionLinks"]
  NAMECALL R21 R2 K22 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K14 ["Text"]
  SETTABLEKS R4 R20 K63 ["TextProps"]
  LOADB R21 1
  SETTABLEKS R21 R20 K18 ["TextWrapped"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K60 ["LinkText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K45 ["DescriptionTextPane"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K30 ["DescriptionPane"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETIMPORT R22 K6 [require]
  GETTABLEKS R25 R0 K10 ["Core"]
  GETTABLEKS R24 R25 K37 ["Flags"]
  GETTABLEKS R23 R24 K38 ["getFFlagToolboxCreatorDropdownReset"]
  CALL R22 1 1
  DUPCLOSURE R23 K39 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R16
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R19
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R20
  CAPTURE VAL R21
  RETURN R23 1
