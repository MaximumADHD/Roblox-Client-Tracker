PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["RevertScripts"]
  GETTABLEKS R2 R0 K2 ["ScriptConversionContext"]
  GETTABLEKS R3 R0 K3 ["Localization"]
  GETTABLEKS R4 R0 K4 ["Analytics"]
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Plugin"]
  GETTABLEKS R2 R0 K2 ["Localization"]
  GETUPVAL R3 1
  MOVE R4 R1
  MOVE R5 R2
  GETUPVAL R6 2
  DUPTABLE R7 K4 [{"OnConfirm"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["onRevertClicked"]
  SETTABLEKS R8 R7 K3 ["OnConfirm"]
  CALL R3 4 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["ReplaceWithRules"]
  GETTABLEKS R2 R0 K2 ["ScriptConversionContext"]
  GETTABLEKS R3 R0 K3 ["Localization"]
  LOADB R4 1
  GETTABLEKS R5 R0 K4 ["Analytics"]
  CALL R1 4 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onRevertClicked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K1 ["openDialog"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onConvertClicked"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["Stylizer"]
  GETTABLEKS R5 R1 K4 ["Size"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K12 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  SETTABLEKS R3 R9 K2 ["LayoutOrder"]
  SETTABLEKS R5 R9 K4 ["Size"]
  GETIMPORT R10 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K7 ["Layout"]
  GETIMPORT R10 K18 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K8 ["HorizontalAlignment"]
  GETIMPORT R10 K20 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K9 ["VerticalAlignment"]
  GETTABLEKS R10 R4 K10 ["Spacing"]
  SETTABLEKS R10 R9 K10 ["Spacing"]
  GETTABLEKS R10 R4 K21 ["ButtonPadding"]
  SETTABLEKS R10 R9 K11 ["Padding"]
  DUPTABLE R10 K24 [{"ScriptConversionConsole", "FooterButtons"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K25 [{"LayoutOrder"}]
  NAMECALL R14 R6 K26 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["ScriptConversionConsole"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K28 [{"LayoutOrder", "Size", "AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
  NAMECALL R14 R6 K26 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  GETIMPORT R14 K31 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K4 ["Size"]
  GETIMPORT R14 K33 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K27 ["AutomaticSize"]
  GETIMPORT R14 K35 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K7 ["Layout"]
  GETIMPORT R14 K37 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R14 R13 K8 ["HorizontalAlignment"]
  GETIMPORT R14 K39 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K9 ["VerticalAlignment"]
  GETTABLEKS R14 R4 K40 ["ButtonSpacing"]
  SETTABLEKS R14 R13 K10 ["Spacing"]
  DUPTABLE R14 K43 [{"RevertButton", "ConvertButton"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K46 [{"Size", "Text", "OnClick", "LayoutOrder"}]
  GETTABLEKS R18 R4 K47 ["RevertButtonSize"]
  SETTABLEKS R18 R17 K4 ["Size"]
  LOADK R20 K48 ["ScriptConversion"]
  LOADK R21 K49 ["Revert"]
  NAMECALL R18 R2 K50 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K44 ["Text"]
  GETTABLEKS R18 R0 K51 ["openDialog"]
  SETTABLEKS R18 R17 K45 ["OnClick"]
  NAMECALL R18 R6 K26 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K2 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K41 ["RevertButton"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K46 [{"Size", "Text", "OnClick", "LayoutOrder"}]
  GETTABLEKS R18 R4 K52 ["ConvertButtonSize"]
  SETTABLEKS R18 R17 K4 ["Size"]
  LOADK R20 K48 ["ScriptConversion"]
  LOADK R21 K53 ["Convert"]
  NAMECALL R18 R2 K50 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K44 ["Text"]
  GETTABLEKS R18 R0 K54 ["onConvertClicked"]
  SETTABLEKS R18 R17 K45 ["OnClick"]
  NAMECALL R18 R6 K26 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K2 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["ConvertButton"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["FooterButtons"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_5:
  GETUPVAL R4 0
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R5 4 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K2 [{"ReplaceWithRules", "RevertScripts"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ReplaceWithRules"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["RevertScripts"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["ContextServices"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Thunks"]
  GETTABLEKS R6 R7 K12 ["ReplaceWithRules"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Thunks"]
  GETTABLEKS R7 R8 K13 ["RevertScripts"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K14 ["Components"]
  GETTABLEKS R8 R9 K15 ["ConfirmRevertDialog"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K16 ["ScriptConversionConsole"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K17 ["Contexts"]
  GETTABLEKS R10 R11 K18 ["ScriptConversionContext"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K19 ["Util"]
  GETTABLEKS R11 R12 K20 ["showDialog"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K21 ["UI"]
  GETTABLEKS R12 R11 K22 ["Pane"]
  GETTABLEKS R13 R11 K23 ["Button"]
  GETTABLEKS R14 R1 K19 ["Util"]
  GETTABLEKS R15 R14 K24 ["LayoutOrderIterator"]
  GETTABLEKS R16 R2 K25 ["PureComponent"]
  LOADK R18 K26 ["ScriptConversionPaneFooter"]
  NAMECALL R16 R16 K27 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K28 [PROTO_3]
  CAPTURE VAL R10
  CAPTURE VAL R7
  SETTABLEKS R17 R16 K29 ["init"]
  DUPCLOSURE R17 K30 [PROTO_4]
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R13
  SETTABLEKS R17 R16 K31 ["render"]
  GETTABLEKS R17 R4 K32 ["withContext"]
  DUPTABLE R18 K37 [{"Analytics", "Plugin", "Localization", "Stylizer", "ScriptConversionContext"}]
  GETTABLEKS R19 R4 K33 ["Analytics"]
  SETTABLEKS R19 R18 K33 ["Analytics"]
  GETTABLEKS R19 R4 K34 ["Plugin"]
  SETTABLEKS R19 R18 K34 ["Plugin"]
  GETTABLEKS R19 R4 K35 ["Localization"]
  SETTABLEKS R19 R18 K35 ["Localization"]
  GETTABLEKS R19 R4 K36 ["Stylizer"]
  SETTABLEKS R19 R18 K36 ["Stylizer"]
  SETTABLEKS R9 R18 K18 ["ScriptConversionContext"]
  CALL R17 1 1
  MOVE R18 R16
  CALL R17 1 1
  MOVE R16 R17
  DUPCLOSURE R17 K38 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R6
  GETTABLEKS R18 R3 K39 ["connect"]
  LOADNIL R19
  MOVE R20 R17
  CALL R18 2 1
  MOVE R19 R16
  CALL R18 1 -1
  RETURN R18 -1
