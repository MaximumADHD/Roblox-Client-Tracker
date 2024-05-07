PROTO_0:
  DUPTABLE R1 K2 [{"paneSize", "replaceRulesPaneSize"}]
  GETIMPORT R2 K5 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["paneSize"]
  GETIMPORT R2 K5 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K1 ["replaceRulesPaneSize"]
  SETTABLEKS R1 R0 K6 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K8 ["ref"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"paneSize"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["AbsoluteSize"]
  SETTABLEKS R3 R2 K0 ["paneSize"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"replaceRulesPaneSize"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["AbsoluteSize"]
  SETTABLEKS R3 R2 K0 ["replaceRulesPaneSize"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["ref"]
  NAMECALL R1 R1 K1 ["getValue"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R2 R1 K2 ["ReplacementRulesExpandablePane"]
  LOADK R5 K3 ["AbsoluteSize"]
  NAMECALL R3 R1 K4 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K6 ["onPaneSizeChanged"]
  LOADK R5 K3 ["AbsoluteSize"]
  NAMECALL R3 R2 K4 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE VAL R2
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K7 ["replaceRulesPaneSizeChanged"]
  RETURN R0 0

PROTO_4:
  LOADK R3 K0 ["LuaSourceContainer"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["AttributeUnificationScriptName"]
  NAMECALL R1 R0 K3 ["GetAttribute"]
  CALL R1 2 1
  JUMPIFNOT R1 [+2]
  LOADB R1 0
  RETURN R1 1
  LOADB R1 1
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["diagnostics"]
  GETTABLEKS R3 R1 K2 ["Analytics"]
  DUPCLOSURE R4 K3 [PROTO_4]
  CAPTURE UPVAL U0
  GETUPVAL R5 1
  MOVE R6 R4
  CALL R5 1 1
  GETTABLEKS R6 R1 K4 ["updateScriptAnalytics"]
  MOVE R7 R5
  MOVE R8 R2
  MOVE R9 R3
  CALL R6 3 0
  NAMECALL R6 R0 K5 ["initConnections"]
  CALL R6 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["ref"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R1 R0 K2 ["onPaneSizeChanged"]
  JUMPIF R1 [+6]
  GETTABLEKS R1 R0 K3 ["replaceRulesPaneSizeChanged"]
  JUMPIF R1 [+3]
  NAMECALL R1 R0 K4 ["initConnections"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R7 R2 K3 ["paneSize"]
  GETTABLEKS R6 R7 K4 ["Y"]
  GETTABLEKS R8 R2 K5 ["replaceRulesPaneSize"]
  GETTABLEKS R7 R8 K4 ["Y"]
  SUB R5 R6 R7
  GETTABLEKS R8 R3 K6 ["ExpandablePaneHeaderSize"]
  GETTABLEKS R7 R8 K4 ["Y"]
  GETTABLEKS R6 R7 K7 ["Offset"]
  SUB R4 R5 R6
  GETIMPORT R5 K10 [UDim2.fromOffset]
  GETTABLEKS R7 R2 K3 ["paneSize"]
  GETTABLEKS R6 R7 K11 ["X"]
  MOVE R7 R4
  CALL R5 2 -1
  RETURN R5 -1

PROTO_8:
  LOADB R1 1
  GETIMPORT R2 K1 [next]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["diagnostics"]
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+12]
  GETIMPORT R2 K1 [next]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K4 ["completedScripts"]
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["progressBarMessageKey"]
  GETTABLEKS R3 R1 K2 ["replaceProgress"]
  GETTABLEKS R4 R1 K3 ["Stylizer"]
  GETTABLEKS R5 R1 K4 ["Localization"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 1
  NAMECALL R7 R0 K6 ["hasScripts"]
  CALL R7 1 1
  JUMPIF R7 [+24]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 2
  NEWTABLE R9 0 0
  DUPTABLE R10 K9 [{"Label"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K11 [{"Text"}]
  LOADK R16 K12 ["ScriptConversion"]
  LOADK R17 K13 ["NoScripts"]
  NAMECALL R14 R5 K14 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K10 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K8 ["Label"]
  CALL R7 3 -1
  RETURN R7 -1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K21 [{"BackgroundColor3", "BorderSizePixel", "Layout", "HorizontalAlignment", "VerticalAlignment", "ForwardRef"}]
  GETTABLEKS R10 R4 K22 ["BackgroundColor"]
  SETTABLEKS R10 R9 K15 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K16 ["BorderSizePixel"]
  GETIMPORT R10 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K17 ["Layout"]
  GETIMPORT R10 K28 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K18 ["HorizontalAlignment"]
  GETIMPORT R10 K30 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K19 ["VerticalAlignment"]
  GETTABLEKS R10 R0 K31 ["ref"]
  SETTABLEKS R10 R9 K20 ["ForwardRef"]
  DUPTABLE R10 K35 [{"ReplacementRulesExpandablePane", "ScriptConversionExpandablePane", "ReplaceProgressBar"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K38 [{"LayoutOrder", "HeaderSize"}]
  NAMECALL R14 R6 K39 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K36 ["LayoutOrder"]
  GETTABLEKS R14 R4 K40 ["ExpandablePaneHeaderSize"]
  SETTABLEKS R14 R13 K37 ["HeaderSize"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["ReplacementRulesExpandablePane"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K43 [{"LayoutOrder", "HeaderSize", "ContentSize", "OnResetPlugin"}]
  NAMECALL R14 R6 K39 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K36 ["LayoutOrder"]
  GETTABLEKS R14 R4 K40 ["ExpandablePaneHeaderSize"]
  SETTABLEKS R14 R13 K37 ["HeaderSize"]
  NAMECALL R14 R0 K44 ["getScriptExpandablePaneSize"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K41 ["ContentSize"]
  GETTABLEKS R14 R1 K42 ["OnResetPlugin"]
  SETTABLEKS R14 R13 K42 ["OnResetPlugin"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["ScriptConversionExpandablePane"]
  JUMPIFNOT R3 [+16]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K46 [{"Text", "Progress"}]
  LOADK R16 K47 ["ProgressBar"]
  MOVE R17 R2
  NAMECALL R14 R5 K14 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K10 ["Text"]
  SETTABLEKS R3 R13 K45 ["Progress"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K34 ["ReplaceProgressBar"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["onPaneSizeChanged"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["onPaneSizeChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["onPaneSizeChanged"]
  GETTABLEKS R1 R0 K2 ["replaceRulesPaneSizeChanged"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["replaceRulesPaneSizeChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["replaceRulesPaneSizeChanged"]
  RETURN R0 0

PROTO_11:
  DUPTABLE R2 K4 [{"diagnostics", "completedScripts", "replaceProgress", "progressBarMessageKey"}]
  GETTABLEKS R4 R0 K5 ["ScriptConversion"]
  GETTABLEKS R3 R4 K0 ["diagnostics"]
  SETTABLEKS R3 R2 K0 ["diagnostics"]
  GETTABLEKS R4 R0 K5 ["ScriptConversion"]
  GETTABLEKS R3 R4 K1 ["completedScripts"]
  SETTABLEKS R3 R2 K1 ["completedScripts"]
  GETTABLEKS R4 R0 K5 ["ScriptConversion"]
  GETTABLEKS R3 R4 K2 ["replaceProgress"]
  SETTABLEKS R3 R2 K2 ["replaceProgress"]
  GETTABLEKS R4 R0 K5 ["ScriptConversion"]
  GETTABLEKS R3 R4 K6 ["messageKey"]
  SETTABLEKS R3 R2 K3 ["progressBarMessageKey"]
  RETURN R2 1

PROTO_12:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K1 [{"updateScriptAnalytics"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["updateScriptAnalytics"]
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
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R1 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["TextLabel"]
  GETTABLEKS R8 R1 K14 ["Util"]
  GETTABLEKS R9 R8 K15 ["LayoutOrderIterator"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K16 ["Src"]
  GETTABLEKS R12 R13 K17 ["Components"]
  GETTABLEKS R11 R12 K18 ["ProgressBar"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K16 ["Src"]
  GETTABLEKS R13 R14 K17 ["Components"]
  GETTABLEKS R12 R13 K19 ["ReplacementRulesExpandablePane"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K16 ["Src"]
  GETTABLEKS R14 R15 K17 ["Components"]
  GETTABLEKS R13 R14 K20 ["ScriptConversionExpandablePane"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K16 ["Src"]
  GETTABLEKS R15 R16 K14 ["Util"]
  GETTABLEKS R14 R15 K21 ["findAllInServices"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K16 ["Src"]
  GETTABLEKS R17 R18 K14 ["Util"]
  GETTABLEKS R16 R17 K22 ["ScriptAnalysis"]
  GETTABLEKS R15 R16 K23 ["Constants"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K16 ["Src"]
  GETTABLEKS R17 R18 K24 ["Thunks"]
  GETTABLEKS R16 R17 K25 ["UpdateScriptAnalytics"]
  CALL R15 1 1
  GETTABLEKS R16 R2 K26 ["PureComponent"]
  LOADK R18 K27 ["ScriptConversionPane"]
  NAMECALL R16 R16 K28 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K29 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R17 R16 K30 ["init"]
  DUPCLOSURE R17 K31 [PROTO_3]
  SETTABLEKS R17 R16 K32 ["initConnections"]
  DUPCLOSURE R17 K33 [PROTO_5]
  CAPTURE VAL R14
  CAPTURE VAL R13
  SETTABLEKS R17 R16 K34 ["didMount"]
  DUPCLOSURE R17 K35 [PROTO_6]
  SETTABLEKS R17 R16 K36 ["didUpdate"]
  DUPCLOSURE R17 K37 [PROTO_7]
  SETTABLEKS R17 R16 K38 ["getScriptExpandablePaneSize"]
  DUPCLOSURE R17 K39 [PROTO_8]
  SETTABLEKS R17 R16 K40 ["hasScripts"]
  DUPCLOSURE R17 K41 [PROTO_9]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R10
  SETTABLEKS R17 R16 K42 ["render"]
  DUPCLOSURE R17 K43 [PROTO_10]
  SETTABLEKS R17 R16 K44 ["willUnmount"]
  GETTABLEKS R17 R4 K45 ["withContext"]
  DUPTABLE R18 K49 [{"Analytics", "Stylizer", "Localization"}]
  GETTABLEKS R19 R4 K46 ["Analytics"]
  SETTABLEKS R19 R18 K46 ["Analytics"]
  GETTABLEKS R19 R4 K47 ["Stylizer"]
  SETTABLEKS R19 R18 K47 ["Stylizer"]
  GETTABLEKS R19 R4 K48 ["Localization"]
  SETTABLEKS R19 R18 K48 ["Localization"]
  CALL R17 1 1
  MOVE R18 R16
  CALL R17 1 1
  MOVE R16 R17
  DUPCLOSURE R17 K50 [PROTO_11]
  DUPCLOSURE R18 K51 [PROTO_13]
  CAPTURE VAL R15
  GETTABLEKS R19 R3 K52 ["connect"]
  MOVE R20 R17
  MOVE R21 R18
  CALL R19 2 1
  MOVE R20 R16
  CALL R19 1 -1
  RETURN R19 -1
