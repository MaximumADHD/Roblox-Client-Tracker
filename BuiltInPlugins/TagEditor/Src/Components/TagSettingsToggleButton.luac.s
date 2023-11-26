PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["setMinimizedSettingsPane"]
  GETTABLEKS R3 R0 K2 ["minimizedSettingsPane"]
  NOT R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onExpandCollapseClicked"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["TagSettingsToggleButton"]
  LOADK R6 K4 ["Info"]
  LOADK R7 K5 ["SettingsFor"]
  NAMECALL R4 R2 K6 ["getText"]
  CALL R4 3 1
  LOADK R7 K4 ["Info"]
  LOADK R8 K7 ["TagSettings"]
  NAMECALL R5 R2 K6 ["getText"]
  CALL R5 3 1
  GETTABLEKS R6 R1 K8 ["tagMenu"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K16 [{"Style", "Size", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
  LOADK R10 K17 ["SubtleBox"]
  SETTABLEKS R10 R9 K10 ["Style"]
  GETTABLEKS R10 R3 K11 ["Size"]
  SETTABLEKS R10 R9 K11 ["Size"]
  GETTABLEKS R10 R1 K12 ["LayoutOrder"]
  SETTABLEKS R10 R9 K12 ["LayoutOrder"]
  GETIMPORT R10 K21 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K13 ["Layout"]
  GETIMPORT R10 K23 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K14 ["HorizontalAlignment"]
  GETTABLEKS R10 R3 K15 ["Spacing"]
  SETTABLEKS R10 R9 K15 ["Spacing"]
  DUPTABLE R10 K25 [{"ExpandCollapseButton"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K31 [{"Text", "LeftIcon", "OnClick", "Size", "AutomaticSize", "BackgroundStyle"}]
  JUMPIFEQKNIL R6 [+6]
  MOVE R15 R4
  LOADK R16 K32 [" "]
  MOVE R17 R6
  CONCAT R14 R15 R17
  JUMP [+1]
  MOVE R14 R5
  SETTABLEKS R14 R13 K26 ["Text"]
  GETTABLEKS R15 R1 K33 ["minimizedSettingsPane"]
  JUMPIFNOT R15 [+3]
  GETTABLEKS R14 R3 K34 ["ClosedArrowImage"]
  JUMP [+2]
  GETTABLEKS R14 R3 K35 ["OpenArrowImage"]
  SETTABLEKS R14 R13 K27 ["LeftIcon"]
  GETTABLEKS R14 R0 K36 ["onExpandCollapseClicked"]
  SETTABLEKS R14 R13 K28 ["OnClick"]
  GETTABLEKS R14 R3 K11 ["Size"]
  SETTABLEKS R14 R13 K11 ["Size"]
  GETIMPORT R14 K38 [Enum.AutomaticSize.X]
  SETTABLEKS R14 R13 K29 ["AutomaticSize"]
  LOADK R14 K17 ["SubtleBox"]
  SETTABLEKS R14 R13 K30 ["BackgroundStyle"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["ExpandCollapseButton"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_3:
  DUPTABLE R2 K2 [{"tagMenu", "minimizedSettingsPane"}]
  GETTABLEKS R3 R0 K3 ["TagMenu"]
  SETTABLEKS R3 R2 K0 ["tagMenu"]
  GETTABLEKS R3 R0 K4 ["MinimizedSettingsPane"]
  SETTABLEKS R3 R2 K1 ["minimizedSettingsPane"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["SetMinimizedSettingsPane"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"setMinimizedSettingsPane"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["setMinimizedSettingsPane"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R7 R5 K13 ["Analytics"]
  GETTABLEKS R8 R5 K14 ["Localization"]
  GETTABLEKS R10 R4 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["Stylizer"]
  GETTABLEKS R10 R4 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["IconButton"]
  GETTABLEKS R12 R10 K19 ["Pane"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R15 R0 K5 ["Src"]
  GETTABLEKS R14 R15 K20 ["Actions"]
  CALL R13 1 1
  GETTABLEKS R14 R2 K21 ["PureComponent"]
  LOADK R16 K22 ["TagSettingsToggleButton"]
  NAMECALL R14 R14 K23 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K24 [PROTO_1]
  SETTABLEKS R15 R14 K25 ["init"]
  DUPCLOSURE R15 K26 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R15 R14 K27 ["render"]
  MOVE R15 R6
  DUPTABLE R16 K28 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R7 R16 K13 ["Analytics"]
  SETTABLEKS R8 R16 K14 ["Localization"]
  SETTABLEKS R9 R16 K16 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  DUPCLOSURE R15 K29 [PROTO_3]
  DUPCLOSURE R16 K30 [PROTO_5]
  CAPTURE VAL R13
  GETTABLEKS R17 R3 K31 ["connect"]
  MOVE R18 R15
  MOVE R19 R16
  CALL R17 2 1
  MOVE R18 R14
  CALL R17 1 -1
  RETURN R17 -1
