PROTO_0:
  GETTABLEKS R1 R0 K0 ["Size"]
  JUMPIF R1 [+7]
  GETIMPORT R1 K3 [UDim2.new]
  LOADN R2 1
  LOADN R3 20
  LOADN R4 0
  LOADN R5 50
  CALL R1 4 1
  GETUPVAL R2 0
  NAMECALL R2 R2 K4 ["use"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["createElement"]
  LOADK R5 K6 ["Frame"]
  DUPTABLE R6 K9 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K7 ["BackgroundTransparency"]
  SETTABLEKS R1 R6 K0 ["Size"]
  GETTABLEKS R7 R0 K8 ["LayoutOrder"]
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  DUPTABLE R7 K15 [{"ListLayout", "LeftPadding", "SettingsLabel", "Separator2", "AutoImportCheckBox"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["createElement"]
  LOADK R9 K16 ["UIListLayout"]
  DUPTABLE R10 K20 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R11 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K17 ["FillDirection"]
  GETIMPORT R11 K25 [UDim.new]
  LOADN R12 0
  LOADN R13 4
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["Padding"]
  GETIMPORT R11 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K19 ["SortOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["ListLayout"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["createElement"]
  LOADK R9 K27 ["UIPadding"]
  DUPTABLE R10 K29 [{"PaddingLeft"}]
  GETIMPORT R11 K25 [UDim.new]
  LOADN R12 0
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K30 ["SIDE_PADDING"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["PaddingLeft"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["LeftPadding"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K34 [{"Text", "Style", "TextXAlignment", "Size", "BackgroundTransparency", "LayoutOrder"}]
  LOADK R13 K35 ["Labels"]
  LOADK R14 K36 ["Settings"]
  NAMECALL R11 R2 K37 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K31 ["Text"]
  LOADK R11 K38 ["Bold"]
  SETTABLEKS R11 R10 K32 ["Style"]
  GETIMPORT R11 K40 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K33 ["TextXAlignment"]
  GETIMPORT R11 K3 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 20
  CALL R11 4 1
  SETTABLEKS R11 R10 K0 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K7 ["BackgroundTransparency"]
  NAMECALL R11 R3 K41 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["SettingsLabel"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K42 [{"LayoutOrder"}]
  NAMECALL R11 R3 K41 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Separator2"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K45 [{"Text", "Checked", "OnClick", "Size", "LayoutOrder"}]
  LOADK R13 K35 ["Labels"]
  LOADK R14 K46 ["AutoImport"]
  NAMECALL R11 R2 K37 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K31 ["Text"]
  GETTABLEKS R11 R0 K47 ["IsChecked"]
  SETTABLEKS R11 R10 K43 ["Checked"]
  GETTABLEKS R11 R0 K44 ["OnClick"]
  SETTABLEKS R11 R10 K44 ["OnClick"]
  GETIMPORT R11 K3 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 20
  CALL R11 4 1
  SETTABLEKS R11 R10 K0 ["Size"]
  NAMECALL R11 R3 K41 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["AutoImportCheckBox"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FileSync"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K12 ["ContextServices"]
  GETTABLEKS R4 R5 K13 ["Localization"]
  GETTABLEKS R5 R3 K14 ["UI"]
  GETTABLEKS R6 R5 K15 ["TextLabel"]
  GETTABLEKS R7 R5 K16 ["Separator"]
  GETTABLEKS R8 R5 K17 ["Checkbox"]
  GETTABLEKS R9 R3 K9 ["Util"]
  GETTABLEKS R10 R9 K18 ["LayoutOrderIterator"]
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R11 1
