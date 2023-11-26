PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["ColorPickerTopControls"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["new"]
  CALL R4 0 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K10 [{"LayoutOrder", "Layout", "Size", "Spacing"}]
  GETTABLEKS R8 R1 K6 ["LayoutOrder"]
  SETTABLEKS R8 R7 K6 ["LayoutOrder"]
  GETIMPORT R8 K14 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K7 ["Layout"]
  GETTABLEKS R8 R2 K8 ["Size"]
  SETTABLEKS R8 R7 K8 ["Size"]
  GETTABLEKS R8 R2 K9 ["Spacing"]
  SETTABLEKS R8 R7 K9 ["Spacing"]
  DUPTABLE R8 K18 [{"TitleText", "Buttons", "ColorPane"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K20 [{"Text", "Size", "LayoutOrder"}]
  LOADK R18 K21 ["Info"]
  LOADK R19 K22 ["ColorPickerTitle"]
  NAMECALL R16 R3 K23 ["getText"]
  CALL R16 3 1
  MOVE R13 R16
  LOADK R14 K24 [" "]
  GETTABLEKS R15 R1 K25 ["TagName"]
  CONCAT R12 R13 R15
  SETTABLEKS R12 R11 K19 ["Text"]
  GETTABLEKS R12 R2 K26 ["TitleTextSize"]
  SETTABLEKS R12 R11 K8 ["Size"]
  NAMECALL R12 R4 K27 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K6 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["TitleText"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K30 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "Spacing", "Padding"}]
  NAMECALL R12 R4 K27 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K6 ["LayoutOrder"]
  GETTABLEKS R12 R2 K31 ["ButtonsPaneSize"]
  SETTABLEKS R12 R11 K8 ["Size"]
  GETIMPORT R12 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K7 ["Layout"]
  GETIMPORT R12 K35 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K28 ["HorizontalAlignment"]
  GETTABLEKS R12 R2 K36 ["ButtonsPaneSpacing"]
  SETTABLEKS R12 R11 K9 ["Spacing"]
  GETTABLEKS R12 R2 K37 ["ButtonsPanePadding"]
  SETTABLEKS R12 R11 K29 ["Padding"]
  DUPTABLE R12 K40 [{"Cancel", "Submit"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K43 [{"Size", "Text", "OnClick", "LayoutOrder", "Style"}]
  GETTABLEKS R16 R2 K44 ["CancelButtonSize"]
  SETTABLEKS R16 R15 K8 ["Size"]
  LOADK R18 K45 ["General"]
  LOADK R19 K38 ["Cancel"]
  NAMECALL R16 R3 K23 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K19 ["Text"]
  GETTABLEKS R16 R1 K46 ["Close"]
  SETTABLEKS R16 R15 K41 ["OnClick"]
  LOADN R16 1
  SETTABLEKS R16 R15 K6 ["LayoutOrder"]
  LOADK R16 K47 ["Round"]
  SETTABLEKS R16 R15 K42 ["Style"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K38 ["Cancel"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K48 [{"Size", "LayoutOrder", "Text", "Style", "OnClick"}]
  GETTABLEKS R16 R2 K49 ["SubmitButtonSize"]
  SETTABLEKS R16 R15 K8 ["Size"]
  LOADN R16 2
  SETTABLEKS R16 R15 K6 ["LayoutOrder"]
  LOADK R18 K45 ["General"]
  LOADK R19 K50 ["Apply"]
  NAMECALL R16 R3 K23 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K19 ["Text"]
  LOADK R16 K51 ["RoundPrimary"]
  SETTABLEKS R16 R15 K42 ["Style"]
  GETTABLEKS R16 R1 K52 ["Save"]
  SETTABLEKS R16 R15 K41 ["OnClick"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K39 ["Submit"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["Buttons"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K53 [{"LayoutOrder", "Size", "Layout", "Spacing", "Padding"}]
  NAMECALL R12 R4 K27 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K6 ["LayoutOrder"]
  GETTABLEKS R12 R2 K54 ["ColorPaneSize"]
  SETTABLEKS R12 R11 K8 ["Size"]
  GETIMPORT R12 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K7 ["Layout"]
  GETTABLEKS R12 R2 K55 ["ColorPaneSpacing"]
  SETTABLEKS R12 R11 K9 ["Spacing"]
  GETTABLEKS R12 R2 K56 ["ColorPanePadding"]
  SETTABLEKS R12 R11 K29 ["Padding"]
  DUPTABLE R12 K58 [{"TitleText", "Preview"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K60 [{"TextXAlignment", "Text", "Size", "LayoutOrder"}]
  GETIMPORT R16 K62 [Enum.TextXAlignment.Right]
  SETTABLEKS R16 R15 K59 ["TextXAlignment"]
  LOADK R18 K21 ["Info"]
  LOADK R19 K63 ["SelectedColor"]
  NAMECALL R16 R3 K23 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K19 ["Text"]
  GETTABLEKS R16 R2 K64 ["PreviewTitleSize"]
  SETTABLEKS R16 R15 K8 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K6 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["TitleText"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K66 [{"LayoutOrder", "Size", "BackgroundColor"}]
  LOADN R16 2
  SETTABLEKS R16 R15 K6 ["LayoutOrder"]
  GETTABLEKS R16 R2 K67 ["ColorPreviewSize"]
  SETTABLEKS R16 R15 K8 ["Size"]
  GETTABLEKS R16 R1 K68 ["Color"]
  SETTABLEKS R16 R15 K65 ["BackgroundColor"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K57 ["Preview"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["ColorPane"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R3 K10 ["Analytics"]
  GETTABLEKS R6 R3 K11 ["Localization"]
  GETTABLEKS R8 R2 K12 ["Style"]
  GETTABLEKS R7 R8 K13 ["Stylizer"]
  GETTABLEKS R8 R2 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["Button"]
  GETTABLEKS R10 R8 K16 ["Pane"]
  GETTABLEKS R11 R8 K17 ["TextLabel"]
  GETTABLEKS R12 R2 K18 ["Util"]
  GETTABLEKS R13 R12 K19 ["LayoutOrderIterator"]
  GETTABLEKS R14 R1 K20 ["PureComponent"]
  LOADK R16 K21 ["ColorPickerTopControls"]
  NAMECALL R14 R14 K22 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K23 [PROTO_0]
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K24 ["render"]
  MOVE R15 R4
  DUPTABLE R16 K25 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R5 R16 K10 ["Analytics"]
  SETTABLEKS R6 R16 K11 ["Localization"]
  SETTABLEKS R7 R16 K13 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  RETURN R14 1
