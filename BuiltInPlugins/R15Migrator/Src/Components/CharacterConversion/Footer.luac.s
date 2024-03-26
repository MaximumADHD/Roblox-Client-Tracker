PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["ConvertCharacters"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Analytics"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["RevertCharacters"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Analytics"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["convertCharacters"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["revertCharacters"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["processResultMessage"]
  GETTABLEKS R5 R1 K4 ["Stylizer"]
  GETTABLEKS R6 R1 K5 ["Size"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["new"]
  CALL R7 0 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K12 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
  SETTABLEKS R3 R10 K2 ["LayoutOrder"]
  SETTABLEKS R6 R10 K5 ["Size"]
  GETIMPORT R11 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K8 ["Layout"]
  GETIMPORT R11 K18 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K9 ["HorizontalAlignment"]
  GETIMPORT R11 K20 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K10 ["VerticalAlignment"]
  GETTABLEKS R11 R5 K11 ["Spacing"]
  SETTABLEKS R11 R10 K11 ["Spacing"]
  DUPTABLE R11 K23 [{"ResultContainer", "FooterButtons"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K26 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BorderSizePixel", "Padding", "Size", "Spacing"}]
  GETIMPORT R15 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K8 ["Layout"]
  GETIMPORT R15 K18 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K9 ["HorizontalAlignment"]
  GETIMPORT R15 K20 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K10 ["VerticalAlignment"]
  LOADN R15 0
  SETTABLEKS R15 R14 K24 ["BorderSizePixel"]
  GETTABLEKS R15 R5 K27 ["ResultContainerPadding"]
  SETTABLEKS R15 R14 K25 ["Padding"]
  GETTABLEKS R15 R5 K28 ["ResultContainerSize"]
  SETTABLEKS R15 R14 K5 ["Size"]
  GETTABLEKS R15 R5 K29 ["ResultContainerSpacing"]
  SETTABLEKS R15 R14 K11 ["Spacing"]
  DUPTABLE R15 K32 [{"Separator", "ProcessResult"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K35 [{"DominantAxis", "LayoutOrder", "Style"}]
  GETIMPORT R19 K37 [Enum.DominantAxis.Width]
  SETTABLEKS R19 R18 K33 ["DominantAxis"]
  NAMECALL R19 R7 K38 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K2 ["LayoutOrder"]
  GETTABLEKS R19 R5 K39 ["SeparatorStyle"]
  SETTABLEKS R19 R18 K34 ["Style"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K30 ["Separator"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K42 [{"Size", "LayoutOrder", "Text", "TextXAlignment"}]
  GETTABLEKS R19 R5 K43 ["ResultSize"]
  SETTABLEKS R19 R18 K5 ["Size"]
  NAMECALL R19 R7 K38 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K2 ["LayoutOrder"]
  ORK R19 R4 K44 [""]
  SETTABLEKS R19 R18 K40 ["Text"]
  GETIMPORT R19 K45 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K41 ["TextXAlignment"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K31 ["ProcessResult"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K21 ["ResultContainer"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K47 [{"LayoutOrder", "Size", "AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  NAMECALL R15 R7 K38 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K2 ["LayoutOrder"]
  GETIMPORT R15 K50 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K5 ["Size"]
  GETIMPORT R15 K52 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K46 ["AutomaticSize"]
  GETIMPORT R15 K54 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K8 ["Layout"]
  GETIMPORT R15 K56 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R15 R14 K9 ["HorizontalAlignment"]
  GETIMPORT R15 K58 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K10 ["VerticalAlignment"]
  GETTABLEKS R15 R5 K59 ["ButtonSpacing"]
  SETTABLEKS R15 R14 K11 ["Spacing"]
  GETTABLEKS R15 R5 K60 ["ButtonPadding"]
  SETTABLEKS R15 R14 K25 ["Padding"]
  DUPTABLE R15 K63 [{"RevertButton", "ConvertButton"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K65 [{"Size", "Text", "OnClick", "LayoutOrder"}]
  GETTABLEKS R19 R5 K66 ["RevertButtonSize"]
  SETTABLEKS R19 R18 K5 ["Size"]
  LOADK R21 K67 ["CharacterConversion"]
  LOADK R22 K68 ["Revert"]
  NAMECALL R19 R2 K69 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K40 ["Text"]
  GETTABLEKS R19 R0 K70 ["revertCharacters"]
  SETTABLEKS R19 R18 K64 ["OnClick"]
  NAMECALL R19 R7 K38 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K2 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K61 ["RevertButton"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K71 [{"Style", "Size", "Text", "OnClick", "LayoutOrder"}]
  LOADK R19 K72 ["RoundPrimary"]
  SETTABLEKS R19 R18 K34 ["Style"]
  GETTABLEKS R19 R5 K73 ["ReplaceButtonSize"]
  SETTABLEKS R19 R18 K5 ["Size"]
  LOADK R21 K67 ["CharacterConversion"]
  LOADK R22 K74 ["Replace"]
  NAMECALL R19 R2 K69 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K40 ["Text"]
  GETTABLEKS R19 R0 K75 ["convertCharacters"]
  SETTABLEKS R19 R18 K64 ["OnClick"]
  NAMECALL R19 R7 K38 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K2 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K62 ["ConvertButton"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K22 ["FooterButtons"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_4:
  DUPTABLE R2 K1 [{"selection"}]
  GETTABLEKS R4 R0 K2 ["CharacterConversion"]
  GETTABLEKS R3 R4 K0 ["selection"]
  SETTABLEKS R3 R2 K0 ["selection"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K2 [{"ConvertCharacters", "RevertCharacters"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ConvertCharacters"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["RevertCharacters"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Thunks"]
  GETTABLEKS R5 R6 K12 ["ConvertCharacters"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Thunks"]
  GETTABLEKS R6 R7 K13 ["RevertCharacters"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K14 ["ContextServices"]
  GETTABLEKS R7 R1 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["Pane"]
  GETTABLEKS R9 R7 K17 ["Button"]
  GETTABLEKS R10 R7 K18 ["Separator"]
  GETTABLEKS R11 R7 K19 ["TextLabel"]
  GETTABLEKS R12 R1 K20 ["Util"]
  GETTABLEKS R13 R12 K21 ["LayoutOrderIterator"]
  GETTABLEKS R14 R2 K22 ["PureComponent"]
  LOADK R16 K23 ["CharacterConversionPaneFooter"]
  NAMECALL R14 R14 K24 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K25 [PROTO_2]
  SETTABLEKS R15 R14 K26 ["init"]
  DUPCLOSURE R15 K27 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K28 ["render"]
  GETTABLEKS R15 R6 K29 ["withContext"]
  DUPTABLE R16 K34 [{"Analytics", "Plugin", "Localization", "Stylizer"}]
  GETTABLEKS R17 R6 K30 ["Analytics"]
  SETTABLEKS R17 R16 K30 ["Analytics"]
  GETTABLEKS R17 R6 K31 ["Plugin"]
  SETTABLEKS R17 R16 K31 ["Plugin"]
  GETTABLEKS R17 R6 K32 ["Localization"]
  SETTABLEKS R17 R16 K32 ["Localization"]
  GETTABLEKS R17 R6 K33 ["Stylizer"]
  SETTABLEKS R17 R16 K33 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  DUPCLOSURE R15 K35 [PROTO_4]
  DUPCLOSURE R16 K36 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R5
  GETTABLEKS R17 R3 K37 ["connect"]
  MOVE R18 R15
  MOVE R19 R16
  CALL R17 2 1
  MOVE R18 R14
  CALL R17 1 -1
  RETURN R17 -1
