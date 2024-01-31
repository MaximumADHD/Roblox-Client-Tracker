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
  GETTABLEKS R3 R4 K2 ["UnificationScriptAttributeName"]
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
  GETUPVAL R6 2
  JUMPIF R6 [+9]
  LOADK R8 K4 ["onInitialScriptAnalysisScan"]
  NAMECALL R6 R3 K5 ["getHandler"]
  CALL R6 2 1
  MOVE R7 R2
  LENGTH R8 R5
  CALL R6 2 0
  LOADB R6 1
  SETUPVAL R6 2
  NAMECALL R6 R0 K6 ["initConnections"]
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
  GETTABLEKS R8 R2 K3 ["paneSize"]
  GETTABLEKS R7 R8 K4 ["Y"]
  GETTABLEKS R9 R2 K5 ["replaceRulesPaneSize"]
  GETTABLEKS R8 R9 K4 ["Y"]
  SUB R6 R7 R8
  GETTABLEKS R9 R3 K6 ["ExpandablePaneHeaderSize"]
  GETTABLEKS R8 R9 K4 ["Y"]
  GETTABLEKS R7 R8 K7 ["Offset"]
  SUB R5 R6 R7
  GETTABLEKS R6 R3 K8 ["InstructionsHeight"]
  SUB R4 R5 R6
  GETIMPORT R5 K11 [UDim2.fromOffset]
  GETTABLEKS R7 R2 K3 ["paneSize"]
  GETTABLEKS R6 R7 K12 ["X"]
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
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["LearnMore"]
  NAMECALL R0 R0 K1 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
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
  DUPTABLE R9 K20 [{"BorderSizePixel", "Layout", "HorizontalAlignment", "VerticalAlignment", "ForwardRef"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K15 ["BorderSizePixel"]
  GETIMPORT R10 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K16 ["Layout"]
  GETIMPORT R10 K26 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K17 ["HorizontalAlignment"]
  GETIMPORT R10 K28 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K18 ["VerticalAlignment"]
  GETTABLEKS R10 R0 K29 ["ref"]
  SETTABLEKS R10 R9 K19 ["ForwardRef"]
  DUPTABLE R10 K34 [{"Instructions", "ReplacementRulesExpandablePane", "ScriptConversionExpandablePane", "ReplaceProgressBar"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K39 [{"LayoutOrder", "Message", "Height", "LinkMap"}]
  NAMECALL R14 R6 K40 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K35 ["LayoutOrder"]
  GETUPVAL R15 5
  CALL R15 0 1
  JUMPIFNOT R15 [+9]
  LOADK R19 K12 ["ScriptConversion"]
  LOADK R20 K30 ["Instructions"]
  NAMECALL R17 R5 K14 ["getText"]
  CALL R17 3 1
  MOVE R15 R17
  LOADK R16 K41 ["
{link}"]
  CONCAT R14 R15 R16
  JUMP [+5]
  LOADK R16 K12 ["ScriptConversion"]
  LOADK R17 K30 ["Instructions"]
  NAMECALL R14 R5 K14 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K36 ["Message"]
  GETTABLEKS R14 R4 K42 ["InstructionsHeight"]
  SETTABLEKS R14 R13 K37 ["Height"]
  NEWTABLE R14 1 0
  DUPTABLE R15 K45 [{"LinkText", "LinkCallback"}]
  LOADK R18 K12 ["ScriptConversion"]
  LOADK R19 K46 ["LearnMore"]
  NAMECALL R16 R5 K14 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K43 ["LinkText"]
  DUPCLOSURE R16 K47 [PROTO_9]
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R16 R15 K44 ["LinkCallback"]
  SETTABLEKS R15 R14 K48 ["{link}"]
  SETTABLEKS R14 R13 K38 ["LinkMap"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K30 ["Instructions"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 8
  DUPTABLE R13 K50 [{"LayoutOrder", "HeaderSize"}]
  NAMECALL R14 R6 K40 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K35 ["LayoutOrder"]
  GETTABLEKS R14 R4 K51 ["ExpandablePaneHeaderSize"]
  SETTABLEKS R14 R13 K49 ["HeaderSize"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["ReplacementRulesExpandablePane"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 9
  DUPTABLE R13 K53 [{"LayoutOrder", "HeaderSize", "ContentSize"}]
  NAMECALL R14 R6 K40 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K35 ["LayoutOrder"]
  GETTABLEKS R14 R4 K51 ["ExpandablePaneHeaderSize"]
  SETTABLEKS R14 R13 K49 ["HeaderSize"]
  NAMECALL R14 R0 K54 ["getScriptExpandablePaneSize"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K52 ["ContentSize"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["ScriptConversionExpandablePane"]
  JUMPIFNOT R3 [+16]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 10
  DUPTABLE R13 K56 [{"Text", "Progress"}]
  LOADK R16 K57 ["ProgressBar"]
  MOVE R17 R2
  NAMECALL R14 R5 K14 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K10 ["Text"]
  SETTABLEKS R3 R13 K55 ["Progress"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K33 ["ReplaceProgressBar"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_11:
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

PROTO_12:
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

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["RoactRodux"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K13 ["ContextServices"]
  GETTABLEKS R6 R2 K14 ["UI"]
  GETTABLEKS R7 R6 K15 ["Pane"]
  GETTABLEKS R8 R6 K16 ["TextLabel"]
  GETTABLEKS R9 R2 K17 ["Util"]
  GETTABLEKS R10 R9 K18 ["LayoutOrderIterator"]
  GETTABLEKS R12 R2 K19 ["SharedFlags"]
  GETTABLEKS R11 R12 K20 ["getFFlagAssetPreviewContentAttribution"]
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K21 ["Src"]
  GETTABLEKS R14 R15 K22 ["Components"]
  GETTABLEKS R13 R14 K23 ["ProgressBar"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R1 K21 ["Src"]
  GETTABLEKS R15 R16 K22 ["Components"]
  GETTABLEKS R14 R15 K24 ["ReplacementRulesExpandablePane"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETTABLEKS R17 R1 K21 ["Src"]
  GETTABLEKS R16 R17 K22 ["Components"]
  GETTABLEKS R15 R16 K25 ["ScriptConversionExpandablePane"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R18 R1 K21 ["Src"]
  GETTABLEKS R17 R18 K22 ["Components"]
  GETTABLEKS R16 R17 K26 ["TabInstructions"]
  CALL R15 1 1
  GETIMPORT R16 K8 [require]
  GETTABLEKS R19 R1 K21 ["Src"]
  GETTABLEKS R18 R19 K17 ["Util"]
  GETTABLEKS R17 R18 K27 ["findAllInServices"]
  CALL R16 1 1
  GETIMPORT R17 K8 [require]
  GETTABLEKS R21 R1 K21 ["Src"]
  GETTABLEKS R20 R21 K17 ["Util"]
  GETTABLEKS R19 R20 K28 ["ScriptAnalysis"]
  GETTABLEKS R18 R19 K29 ["Constants"]
  CALL R17 1 1
  GETIMPORT R18 K8 [require]
  GETTABLEKS R21 R1 K21 ["Src"]
  GETTABLEKS R20 R21 K17 ["Util"]
  GETTABLEKS R19 R20 K30 ["DocumentationUrls"]
  CALL R18 1 1
  LOADB R19 0
  GETTABLEKS R20 R3 K31 ["PureComponent"]
  LOADK R22 K32 ["ScriptConversionPane"]
  NAMECALL R20 R20 K33 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K34 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R21 R20 K35 ["init"]
  DUPCLOSURE R21 K36 [PROTO_3]
  SETTABLEKS R21 R20 K37 ["initConnections"]
  NEWCLOSURE R21 P2
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE REF R19
  SETTABLEKS R21 R20 K38 ["didMount"]
  DUPCLOSURE R21 K39 [PROTO_6]
  SETTABLEKS R21 R20 K40 ["didUpdate"]
  DUPCLOSURE R21 K41 [PROTO_7]
  SETTABLEKS R21 R20 K42 ["getScriptExpandablePaneSize"]
  DUPCLOSURE R21 K43 [PROTO_8]
  SETTABLEKS R21 R20 K44 ["hasScripts"]
  DUPCLOSURE R21 K45 [PROTO_10]
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R0
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R12
  SETTABLEKS R21 R20 K46 ["render"]
  DUPCLOSURE R21 K47 [PROTO_11]
  SETTABLEKS R21 R20 K48 ["willUnmount"]
  GETTABLEKS R21 R5 K49 ["withContext"]
  DUPTABLE R22 K53 [{"Analytics", "Stylizer", "Localization"}]
  GETTABLEKS R23 R5 K50 ["Analytics"]
  SETTABLEKS R23 R22 K50 ["Analytics"]
  GETTABLEKS R23 R5 K51 ["Stylizer"]
  SETTABLEKS R23 R22 K51 ["Stylizer"]
  GETTABLEKS R23 R5 K52 ["Localization"]
  SETTABLEKS R23 R22 K52 ["Localization"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  DUPCLOSURE R21 K54 [PROTO_12]
  GETTABLEKS R22 R4 K55 ["connect"]
  MOVE R23 R21
  CALL R22 1 1
  MOVE R23 R20
  CALL R22 1 -1
  CLOSEUPVALS R19
  RETURN R22 -1
