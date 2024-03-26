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
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K1 ["selection"]
  GETTABLEKS R3 R0 K2 ["ScriptConversionContext"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
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
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K3 ["revertEnabled"]
  RETURN R0 0

PROTO_5:
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
  DUPTABLE R9 K13 [{"BackgroundColor", "LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  GETTABLEKS R10 R4 K7 ["BackgroundColor"]
  SETTABLEKS R10 R9 K7 ["BackgroundColor"]
  SETTABLEKS R3 R9 K2 ["LayoutOrder"]
  SETTABLEKS R5 R9 K4 ["Size"]
  GETIMPORT R10 K17 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K8 ["Layout"]
  GETIMPORT R10 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K9 ["HorizontalAlignment"]
  GETIMPORT R10 K21 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K10 ["VerticalAlignment"]
  GETTABLEKS R10 R4 K11 ["Spacing"]
  SETTABLEKS R10 R9 K11 ["Spacing"]
  GETTABLEKS R10 R4 K22 ["ButtonPadding"]
  SETTABLEKS R10 R9 K12 ["Padding"]
  DUPTABLE R10 K25 [{"ScriptConversionConsole", "FooterButtons"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K26 [{"LayoutOrder"}]
  NAMECALL R14 R6 K27 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["ScriptConversionConsole"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K29 [{"LayoutOrder", "Size", "AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
  NAMECALL R14 R6 K27 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K2 ["LayoutOrder"]
  GETIMPORT R14 K32 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K4 ["Size"]
  GETIMPORT R14 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K28 ["AutomaticSize"]
  GETIMPORT R14 K36 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K8 ["Layout"]
  GETIMPORT R14 K38 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R14 R13 K9 ["HorizontalAlignment"]
  GETIMPORT R14 K40 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K10 ["VerticalAlignment"]
  GETTABLEKS R14 R4 K41 ["ButtonSpacing"]
  SETTABLEKS R14 R13 K11 ["Spacing"]
  DUPTABLE R14 K44 [{"RevertButton", "ConvertButton"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K48 [{"Size", "Text", "OnClick", "StyleModifier", "LayoutOrder"}]
  GETTABLEKS R18 R4 K49 ["RevertButtonSize"]
  SETTABLEKS R18 R17 K4 ["Size"]
  LOADK R20 K50 ["ScriptConversion"]
  LOADK R21 K51 ["Revert"]
  NAMECALL R18 R2 K52 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K45 ["Text"]
  GETTABLEKS R18 R0 K53 ["openDialog"]
  SETTABLEKS R18 R17 K46 ["OnClick"]
  GETTABLEKS R19 R0 K54 ["revertEnabled"]
  CALL R19 0 1
  JUMPIF R19 [+4]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K55 ["Disabled"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K47 ["StyleModifier"]
  NAMECALL R18 R6 K27 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K2 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["RevertButton"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K57 [{"Style", "Size", "Text", "OnClick", "LayoutOrder"}]
  LOADK R18 K58 ["RoundPrimary"]
  SETTABLEKS R18 R17 K56 ["Style"]
  GETTABLEKS R18 R4 K59 ["ReplaceButtonSize"]
  SETTABLEKS R18 R17 K4 ["Size"]
  LOADK R20 K50 ["ScriptConversion"]
  LOADK R21 K60 ["Replace"]
  NAMECALL R18 R2 K52 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K45 ["Text"]
  GETTABLEKS R18 R0 K61 ["onConvertClicked"]
  SETTABLEKS R18 R17 K46 ["OnClick"]
  NAMECALL R18 R6 K27 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K2 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K43 ["ConvertButton"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K24 ["FooterButtons"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_6:
  GETUPVAL R4 0
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R5 4 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_8:
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

PROTO_9:
  DUPTABLE R2 K1 [{"selection"}]
  GETTABLEKS R4 R0 K2 ["ScriptConversion"]
  GETTABLEKS R3 R4 K0 ["selection"]
  SETTABLEKS R3 R2 K0 ["selection"]
  RETURN R2 1

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
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Thunks"]
  GETTABLEKS R6 R7 K13 ["ReplaceWithRules"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Thunks"]
  GETTABLEKS R7 R8 K14 ["RevertScripts"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETTABLEKS R8 R9 K16 ["ConfirmRevertDialog"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K17 ["ScriptConversionConsole"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K18 ["Contexts"]
  GETTABLEKS R10 R11 K19 ["ScriptConversionContext"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K20 ["Util"]
  GETTABLEKS R11 R12 K21 ["showDialog"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K11 ["Src"]
  GETTABLEKS R14 R15 K20 ["Util"]
  GETTABLEKS R13 R14 K22 ["ScriptHistory"]
  GETTABLEKS R12 R13 K23 ["selectionHasScriptBackups"]
  CALL R11 1 1
  GETTABLEKS R12 R1 K24 ["UI"]
  GETTABLEKS R13 R12 K25 ["Pane"]
  GETTABLEKS R14 R12 K26 ["Button"]
  GETTABLEKS R15 R1 K20 ["Util"]
  GETTABLEKS R16 R15 K27 ["StyleModifier"]
  GETTABLEKS R17 R15 K28 ["LayoutOrderIterator"]
  GETTABLEKS R18 R2 K29 ["PureComponent"]
  LOADK R20 K30 ["ScriptConversionPaneFooter"]
  NAMECALL R18 R18 K31 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K32 [PROTO_4]
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R11
  SETTABLEKS R19 R18 K33 ["init"]
  DUPCLOSURE R19 K34 [PROTO_5]
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R16
  SETTABLEKS R19 R18 K35 ["render"]
  GETTABLEKS R19 R4 K36 ["withContext"]
  DUPTABLE R20 K41 [{"Analytics", "Plugin", "Localization", "Stylizer", "ScriptConversionContext"}]
  GETTABLEKS R21 R4 K37 ["Analytics"]
  SETTABLEKS R21 R20 K37 ["Analytics"]
  GETTABLEKS R21 R4 K38 ["Plugin"]
  SETTABLEKS R21 R20 K38 ["Plugin"]
  GETTABLEKS R21 R4 K39 ["Localization"]
  SETTABLEKS R21 R20 K39 ["Localization"]
  GETTABLEKS R21 R4 K40 ["Stylizer"]
  SETTABLEKS R21 R20 K40 ["Stylizer"]
  SETTABLEKS R9 R20 K19 ["ScriptConversionContext"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  DUPCLOSURE R19 K42 [PROTO_8]
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPCLOSURE R20 K43 [PROTO_9]
  GETTABLEKS R21 R3 K44 ["connect"]
  MOVE R22 R20
  MOVE R23 R19
  CALL R21 2 1
  MOVE R22 R18
  CALL R21 1 -1
  RETURN R21 -1
