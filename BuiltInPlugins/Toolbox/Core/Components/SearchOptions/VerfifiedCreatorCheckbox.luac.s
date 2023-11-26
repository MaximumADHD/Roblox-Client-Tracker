PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R2 K2 ["searchOptions"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  LOADK R7 K4 ["General"]
  LOADK R8 K5 ["SearchOptionsIncludeUnverifiedDescription"]
  NAMECALL R5 R4 K6 ["getText"]
  CALL R5 3 1
  LOADK R8 K4 ["General"]
  LOADK R9 K7 ["SearchOptionsIncludeUnverifiedHeader"]
  NAMECALL R6 R4 K6 ["getText"]
  CALL R6 3 1
  LOADK R9 K4 ["General"]
  LOADK R10 K8 ["SearchOptionsIncludeUnverifiedTooltip"]
  NAMECALL R7 R4 K6 ["getText"]
  CALL R7 3 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["new"]
  CALL R8 0 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K16 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
  GETIMPORT R12 K19 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K11 ["AutomaticSize"]
  GETIMPORT R12 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K12 ["HorizontalAlignment"]
  GETIMPORT R12 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K13 ["Layout"]
  GETTABLEKS R12 R1 K14 ["LayoutOrder"]
  SETTABLEKS R12 R11 K14 ["LayoutOrder"]
  LOADN R12 3
  SETTABLEKS R12 R11 K15 ["Spacing"]
  DUPTABLE R12 K27 [{"IncludeUnverifiedToggle", "VerifiedDescriptionContainer"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K32 [{"Checked", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
  GETTABLEKS R16 R1 K33 ["IsChecked"]
  SETTABLEKS R16 R15 K28 ["Checked"]
  NAMECALL R16 R8 K34 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K14 ["LayoutOrder"]
  GETTABLEKS R16 R1 K29 ["OnClick"]
  SETTABLEKS R16 R15 K29 ["OnClick"]
  SETTABLEKS R6 R15 K30 ["Text"]
  LOADB R16 1
  SETTABLEKS R16 R15 K31 ["TextWrapped"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["IncludeUnverifiedToggle"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K37 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment"}]
  GETIMPORT R16 K19 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K11 ["AutomaticSize"]
  GETIMPORT R16 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K12 ["HorizontalAlignment"]
  GETIMPORT R16 K39 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K13 ["Layout"]
  NAMECALL R16 R8 K34 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K14 ["LayoutOrder"]
  DUPTABLE R16 K40 [{"Left"}]
  LOADN R17 24
  SETTABLEKS R17 R16 K20 ["Left"]
  SETTABLEKS R16 R15 K35 ["Padding"]
  LOADN R16 6
  SETTABLEKS R16 R15 K15 ["Spacing"]
  GETIMPORT R16 K42 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K36 ["VerticalAlignment"]
  DUPTABLE R16 K45 [{"Image", "VerifiedDescription"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K10 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K49 [{"AnchorPoint", "Image", "ImageColor3", "LayoutOrder", "Size"}]
  GETIMPORT R20 K51 [Vector2.new]
  LOADN R21 0
  LOADK R22 K52 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K46 ["AnchorPoint"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K53 ["WARNING_ICON_SMALL"]
  SETTABLEKS R20 R19 K43 ["Image"]
  GETTABLEKS R20 R3 K54 ["warningIconColor"]
  SETTABLEKS R20 R19 K47 ["ImageColor3"]
  NAMECALL R20 R8 K34 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K14 ["LayoutOrder"]
  GETIMPORT R20 K57 [UDim2.fromOffset]
  LOADN R21 16
  LOADN R22 16
  CALL R20 2 1
  SETTABLEKS R20 R19 K48 ["Size"]
  DUPTABLE R20 K59 [{"Tooltip"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K10 ["createElement"]
  GETUPVAL R22 6
  DUPTABLE R23 K61 [{"Text", "Priority"}]
  SETTABLEKS R7 R23 K30 ["Text"]
  LOADN R24 11
  SETTABLEKS R24 R23 K60 ["Priority"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K58 ["Tooltip"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K43 ["Image"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K10 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K65 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextSize", "TextWrapped", "TextXAlignment"}]
  GETIMPORT R20 K19 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K11 ["AutomaticSize"]
  NAMECALL R20 R8 K34 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K14 ["LayoutOrder"]
  LOADK R20 K66 ["SubText"]
  SETTABLEKS R20 R19 K62 ["Style"]
  SETTABLEKS R5 R19 K30 ["Text"]
  LOADN R20 14
  SETTABLEKS R20 R19 K63 ["TextSize"]
  LOADB R20 1
  SETTABLEKS R20 R19 K31 ["TextWrapped"]
  GETIMPORT R20 K67 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K64 ["TextXAlignment"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K44 ["VerifiedDescription"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K26 ["VerifiedDescriptionContainer"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K9 ["Core"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R4 K11 ["Images"]
  CALL R5 1 1
  GETTABLEKS R7 R3 K12 ["UI"]
  GETTABLEKS R6 R7 K13 ["Checkbox"]
  GETTABLEKS R7 R3 K12 ["UI"]
  GETTABLEKS R8 R7 K14 ["Image"]
  GETTABLEKS R9 R7 K15 ["TextLabel"]
  GETTABLEKS R11 R3 K10 ["Util"]
  GETTABLEKS R10 R11 K16 ["LayoutOrderIterator"]
  GETTABLEKS R11 R7 K17 ["Pane"]
  GETTABLEKS R12 R7 K18 ["Tooltip"]
  GETTABLEKS R13 R3 K19 ["ContextServices"]
  GETTABLEKS R14 R13 K20 ["withContext"]
  GETTABLEKS R15 R2 K21 ["PureComponent"]
  LOADK R17 K22 ["VerfifiedCreatorCheckbox"]
  NAMECALL R15 R15 K23 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K24 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K25 ["render"]
  MOVE R16 R14
  DUPTABLE R17 K28 [{"Localization", "Stylizer"}]
  GETTABLEKS R18 R13 K26 ["Localization"]
  SETTABLEKS R18 R17 K26 ["Localization"]
  GETTABLEKS R18 R13 K27 ["Stylizer"]
  SETTABLEKS R18 R17 K27 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
