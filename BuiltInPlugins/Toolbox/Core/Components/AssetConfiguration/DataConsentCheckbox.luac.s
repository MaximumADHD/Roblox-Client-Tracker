PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
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
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K14 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment"}]
  GETIMPORT R7 K17 [Enum.AutomaticSize.XY]
  SETTABLEKS R7 R6 K5 ["AutomaticSize"]
  GETTABLEKS R8 R1 K18 ["typeSelection"]
  GETTABLEKS R7 R8 K19 ["background"]
  SETTABLEKS R7 R6 K6 ["BackgroundColor3"]
  LOADN R7 1
  SETTABLEKS R7 R6 K7 ["BackgroundTransparency"]
  GETIMPORT R7 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K8 ["HorizontalAlignment"]
  GETIMPORT R7 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K9 ["Layout"]
  GETTABLEKS R7 R0 K10 ["LayoutOrder"]
  SETTABLEKS R7 R6 K10 ["LayoutOrder"]
  DUPTABLE R7 K26 [{"Bottom"}]
  GETTABLEKS R9 R1 K27 ["checkbox"]
  GETTABLEKS R8 R9 K28 ["bottomPadding"]
  SETTABLEKS R8 R7 K25 ["Bottom"]
  SETTABLEKS R7 R6 K11 ["Padding"]
  GETTABLEKS R8 R1 K27 ["checkbox"]
  GETTABLEKS R7 R8 K29 ["verticalListPadding"]
  SETTABLEKS R7 R6 K12 ["Spacing"]
  GETIMPORT R7 K31 [Enum.VerticalAlignment.Top]
  SETTABLEKS R7 R6 K13 ["VerticalAlignment"]
  DUPTABLE R7 K33 [{"DataConsentPane"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K34 [{"Layout", "LayoutOrder", "AutomaticSize", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R11 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K9 ["Layout"]
  NAMECALL R11 R3 K35 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K10 ["LayoutOrder"]
  GETIMPORT R11 K17 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K5 ["AutomaticSize"]
  GETIMPORT R11 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K8 ["HorizontalAlignment"]
  GETIMPORT R11 K37 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K13 ["VerticalAlignment"]
  DUPTABLE R11 K40 [{"CheckboxPane", "DescriptionPane"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K42 [{"AutomaticSize", "LayoutOrder", "OnClick", "Layout"}]
  GETIMPORT R15 K17 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K5 ["AutomaticSize"]
  NAMECALL R15 R3 K35 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K10 ["LayoutOrder"]
  GETTABLEKS R15 R0 K43 ["onDataConsentCheckboxClick"]
  SETTABLEKS R15 R14 K41 ["OnClick"]
  GETIMPORT R15 K45 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K9 ["Layout"]
  DUPTABLE R15 K48 [{"DataConsentCheckbox", "CheckboxLabel"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K50 [{"LayoutOrder", "Checked", "OnClick"}]
  NAMECALL R19 R3 K35 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K10 ["LayoutOrder"]
  GETTABLEKS R19 R0 K51 ["dataSharingChecked"]
  SETTABLEKS R19 R18 K49 ["Checked"]
  GETTABLEKS R19 R0 K43 ["onDataConsentCheckboxClick"]
  SETTABLEKS R19 R18 K41 ["OnClick"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K46 ["DataConsentCheckbox"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K56 [{"LayoutOrder", "Text", "Style", "TextXAlignment", "TextYAlignment", "AutomaticSize"}]
  NAMECALL R19 R3 K35 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K10 ["LayoutOrder"]
  LOADK R21 K57 ["AssetConfig"]
  LOADK R22 K58 ["ShareDataTitle"]
  NAMECALL R19 R2 K59 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K52 ["Text"]
  LOADK R19 K60 ["Normal"]
  SETTABLEKS R19 R18 K53 ["Style"]
  GETIMPORT R19 K61 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K54 ["TextXAlignment"]
  GETIMPORT R19 K62 [Enum.TextYAlignment.Center]
  SETTABLEKS R19 R18 K55 ["TextYAlignment"]
  GETIMPORT R19 K17 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K5 ["AutomaticSize"]
  DUPTABLE R19 K63 [{"Padding"}]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K4 ["createElement"]
  LOADK R21 K64 ["UIPadding"]
  DUPTABLE R22 K66 [{"PaddingLeft"}]
  GETIMPORT R23 K68 [UDim.new]
  LOADN R24 0
  GETTABLEKS R27 R1 K27 ["checkbox"]
  GETTABLEKS R26 R27 K70 ["labelIndent"]
  ADDK R25 R26 K69 [6]
  CALL R23 2 1
  SETTABLEKS R23 R22 K65 ["PaddingLeft"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K11 ["Padding"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K47 ["CheckboxLabel"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K38 ["CheckboxPane"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K71 [{"AutomaticSize", "LayoutOrder", "Layout"}]
  GETIMPORT R15 K17 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K5 ["AutomaticSize"]
  NAMECALL R15 R3 K35 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K10 ["LayoutOrder"]
  GETIMPORT R15 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K9 ["Layout"]
  DUPTABLE R15 K73 [{"Link", "Padding"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K79 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "MaxWidth", "Size", "Text", "TextXAlignment", "TextProps", "TextWrapped"}]
  GETIMPORT R19 K17 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K5 ["AutomaticSize"]
  GETIMPORT R19 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K8 ["HorizontalAlignment"]
  NAMECALL R19 R3 K35 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K10 ["LayoutOrder"]
  NEWTABLE R19 2 0
  DUPTABLE R20 K82 [{"LinkText", "LinkCallback"}]
  LOADK R23 K57 ["AssetConfig"]
  LOADK R24 K83 ["ShareDataLearnMoreLinkTerms"]
  NAMECALL R21 R2 K59 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K80 ["LinkText"]
  DUPCLOSURE R21 K84 [PROTO_0]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  SETTABLEKS R21 R20 K81 ["LinkCallback"]
  SETTABLEKS R20 R19 K85 ["[link1]"]
  DUPTABLE R20 K82 [{"LinkText", "LinkCallback"}]
  LOADK R23 K57 ["AssetConfig"]
  LOADK R24 K86 ["ShareDataLearnMoreLinkPrivacyPolicy"]
  NAMECALL R21 R2 K59 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K80 ["LinkText"]
  DUPCLOSURE R21 K87 [PROTO_1]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U9
  SETTABLEKS R21 R20 K81 ["LinkCallback"]
  SETTABLEKS R20 R19 K88 ["[link2]"]
  SETTABLEKS R19 R18 K74 ["LinkMap"]
  GETTABLEKS R19 R1 K75 ["MaxWidth"]
  SETTABLEKS R19 R18 K75 ["MaxWidth"]
  GETIMPORT R19 K91 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K76 ["Size"]
  LOADK R21 K57 ["AssetConfig"]
  LOADK R22 K92 ["ShareDataDescription"]
  NAMECALL R19 R2 K59 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K52 ["Text"]
  GETIMPORT R19 K61 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K54 ["TextXAlignment"]
  DUPTABLE R19 K95 [{"Font", "TextSize", "Style"}]
  GETTABLEKS R20 R1 K93 ["Font"]
  SETTABLEKS R20 R19 K93 ["Font"]
  LOADN R20 16
  SETTABLEKS R20 R19 K94 ["TextSize"]
  LOADK R20 K96 ["Body"]
  SETTABLEKS R20 R19 K53 ["Style"]
  SETTABLEKS R19 R18 K77 ["TextProps"]
  LOADB R19 1
  SETTABLEKS R19 R18 K78 ["TextWrapped"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K72 ["Link"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K4 ["createElement"]
  LOADK R17 K64 ["UIPadding"]
  DUPTABLE R18 K98 [{"PaddingTop", "PaddingLeft"}]
  GETIMPORT R19 K68 [UDim.new]
  LOADN R20 0
  GETTABLEKS R22 R1 K27 ["checkbox"]
  GETTABLEKS R21 R22 K99 ["verticalTextSpacing"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K97 ["PaddingTop"]
  GETIMPORT R19 K68 [UDim.new]
  LOADN R20 0
  GETTABLEKS R23 R1 K27 ["checkbox"]
  GETTABLEKS R22 R23 K100 ["checkboxIndent"]
  ADDK R21 R22 K69 [6]
  CALL R19 2 1
  SETTABLEKS R19 R18 K65 ["PaddingLeft"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K11 ["Padding"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K39 ["DescriptionPane"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K32 ["DataConsentPane"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETIMPORT R5 K11 [game]
  LOADK R7 K12 ["BrowserService"]
  NAMECALL R5 R5 K13 ["GetService"]
  CALL R5 2 1
  GETTABLEKS R6 R2 K14 ["UI"]
  GETTABLEKS R7 R6 K15 ["Checkbox"]
  GETTABLEKS R8 R6 K16 ["Pane"]
  GETTABLEKS R9 R6 K17 ["TextLabel"]
  GETTABLEKS R10 R6 K18 ["TextWithLinks"]
  GETTABLEKS R12 R2 K19 ["Util"]
  GETTABLEKS R11 R12 K20 ["LayoutOrderIterator"]
  GETIMPORT R12 K11 [game]
  LOADK R14 K21 ["DataSharing_TermsUrl"]
  LOADK R15 K22 ["https://en.help.roblox.com/hc/articles/20681705234580"]
  NAMECALL R12 R12 K23 ["DefineFastString"]
  CALL R12 3 1
  GETIMPORT R13 K11 [game]
  LOADK R15 K24 ["DataSharing_PrivacyPolicyUrl"]
  LOADK R16 K25 ["https://en.help.roblox.com/hc/articles/115004630823"]
  NAMECALL R13 R13 K23 ["DefineFastString"]
  CALL R13 3 1
  DUPCLOSURE R14 K26 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R13
  RETURN R14 1
