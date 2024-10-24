PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnReturn"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETUPVAL R3 0
  CALL R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K6 [{"Layout", "Padding", "Spacing"}]
  GETIMPORT R7 K10 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K3 ["Layout"]
  LOADN R7 50
  SETTABLEKS R7 R6 K4 ["Padding"]
  LOADN R7 20
  SETTABLEKS R7 R6 K5 ["Spacing"]
  DUPTABLE R7 K14 [{"Title", "Description", "Row"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K19 [{"AutomaticSize", "LayoutOrder", "Text", "Style"}]
  GETIMPORT R11 K21 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K15 ["AutomaticSize"]
  MOVE R11 R3
  CALL R11 0 1
  SETTABLEKS R11 R10 K16 ["LayoutOrder"]
  LOADK R13 K22 ["Completed"]
  LOADK R14 K11 ["Title"]
  NAMECALL R11 R2 K23 ["getText"]
  CALL R11 3 1
  GETTABLEKS R13 R1 K24 ["Name"]
  NAMECALL R11 R11 K25 ["format"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["Text"]
  LOADK R11 K11 ["Title"]
  SETTABLEKS R11 R10 K18 ["Style"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["Title"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K27 [{"AutomaticSize", "LayoutOrder", "Text", "TextWrapped", "Style"}]
  GETIMPORT R11 K21 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K15 ["AutomaticSize"]
  MOVE R11 R3
  CALL R11 0 1
  SETTABLEKS R11 R10 K16 ["LayoutOrder"]
  LOADK R13 K22 ["Completed"]
  LOADK R14 K12 ["Description"]
  NAMECALL R11 R2 K23 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K17 ["Text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K26 ["TextWrapped"]
  LOADK R11 K28 ["Subtitle"]
  SETTABLEKS R11 R10 K18 ["Style"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["Description"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K29 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
  GETIMPORT R11 K21 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K15 ["AutomaticSize"]
  GETIMPORT R11 K31 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K3 ["Layout"]
  MOVE R11 R3
  CALL R11 0 1
  SETTABLEKS R11 R10 K16 ["LayoutOrder"]
  LOADN R11 20
  SETTABLEKS R11 R10 K5 ["Spacing"]
  DUPTABLE R11 K34 [{"Dashboard", "Continue"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K2 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K37 [{"LayoutOrder", "Text", "Style", "OnClick", "Size"}]
  MOVE R15 R3
  CALL R15 0 1
  SETTABLEKS R15 R14 K16 ["LayoutOrder"]
  LOADK R17 K22 ["Completed"]
  LOADK R18 K38 ["Back"]
  NAMECALL R15 R2 K23 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K17 ["Text"]
  LOADK R15 K39 ["Round"]
  SETTABLEKS R15 R14 K18 ["Style"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K35 ["OnClick"]
  GETIMPORT R15 K42 [UDim2.fromOffset]
  LOADN R16 150
  LOADN R17 32
  CALL R15 2 1
  SETTABLEKS R15 R14 K36 ["Size"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K32 ["Dashboard"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K2 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K37 [{"LayoutOrder", "Text", "Style", "OnClick", "Size"}]
  MOVE R15 R3
  CALL R15 0 1
  SETTABLEKS R15 R14 K16 ["LayoutOrder"]
  LOADK R17 K22 ["Completed"]
  LOADK R18 K33 ["Continue"]
  NAMECALL R15 R2 K23 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K17 ["Text"]
  LOADK R15 K43 ["RoundPrimary"]
  SETTABLEKS R15 R14 K18 ["Style"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K35 ["OnClick"]
  GETIMPORT R15 K42 [UDim2.fromOffset]
  LOADN R16 80
  LOADN R17 32
  CALL R15 2 1
  SETTABLEKS R15 R14 K36 ["Size"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["Continue"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K13 ["Row"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R3 K10 ["Analytics"]
  GETTABLEKS R6 R3 K11 ["Localization"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K14 ["counter"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["Button"]
  GETTABLEKS R10 R8 K17 ["Pane"]
  GETTABLEKS R11 R8 K18 ["TextLabel"]
  GETTABLEKS R12 R1 K19 ["PureComponent"]
  LOADK R14 K20 ["CompletedTutorialDialog"]
  NAMECALL R12 R12 K21 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K22 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R9
  SETTABLEKS R13 R12 K23 ["render"]
  MOVE R13 R4
  DUPTABLE R14 K24 [{"Analytics", "Localization"}]
  SETTABLEKS R5 R14 K10 ["Analytics"]
  SETTABLEKS R6 R14 K11 ["Localization"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
