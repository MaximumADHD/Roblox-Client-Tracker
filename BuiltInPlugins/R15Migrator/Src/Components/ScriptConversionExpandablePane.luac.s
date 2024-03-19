PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["initialIssueCounts"]
  GETUPVAL R5 1
  MOVE R6 R3
  CALL R5 1 1
  LENGTH R4 R5
  LOADN R5 0
  MOVE R6 R3
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  ADD R5 R5 R10
  FORGLOOP R6 2 [-2]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 3
  GETUPVAL R8 4
  DUPTABLE R9 K6 [{"HorizontalAlignment", "Layout"}]
  GETIMPORT R10 K9 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R10 R9 K4 ["HorizontalAlignment"]
  GETIMPORT R10 K12 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K5 ["Layout"]
  MOVE R10 R0
  CALL R8 2 1
  DUPTABLE R9 K14 [{"MessageText"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K17 [{"AutomaticSize", "Text"}]
  GETIMPORT R13 K19 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K15 ["AutomaticSize"]
  LOADK R15 K20 ["ScriptConversion"]
  LOADK R16 K21 ["HeaderMessage"]
  DUPTABLE R17 K24 [{"scriptCount", "issueCount"}]
  GETIMPORT R18 K27 [string.format]
  LOADK R19 K28 ["%d"]
  MOVE R20 R4
  CALL R18 2 1
  SETTABLEKS R18 R17 K22 ["scriptCount"]
  GETIMPORT R18 K27 [string.format]
  LOADK R19 K28 ["%d"]
  MOVE R20 R5
  CALL R18 2 1
  SETTABLEKS R18 R17 K23 ["issueCount"]
  NAMECALL R13 R2 K29 ["getText"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K16 ["Text"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["MessageText"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K0 ["customHeader"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["HeaderSize"]
  GETTABLEKS R5 R1 K4 ["ContentSize"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K14 [{"HeaderComponent", "Size", "Style", "LayoutOrder", "Text", "Expanded", "ContentPadding", "ContentSpacing"}]
  GETTABLEKS R10 R0 K15 ["customHeader"]
  SETTABLEKS R10 R9 K7 ["HeaderComponent"]
  SETTABLEKS R4 R9 K8 ["Size"]
  LOADK R10 K16 ["Section"]
  SETTABLEKS R10 R9 K9 ["Style"]
  SETTABLEKS R3 R9 K2 ["LayoutOrder"]
  LOADK R10 K17 ["Scripts"]
  SETTABLEKS R10 R9 K10 ["Text"]
  LOADB R10 1
  SETTABLEKS R10 R9 K11 ["Expanded"]
  LOADN R10 0
  SETTABLEKS R10 R9 K12 ["ContentPadding"]
  LOADN R10 0
  SETTABLEKS R10 R9 K13 ["ContentSpacing"]
  DUPTABLE R10 K19 [{"Container"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K23 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Size"}]
  GETIMPORT R14 K27 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K20 ["Layout"]
  GETIMPORT R14 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K21 ["HorizontalAlignment"]
  GETIMPORT R14 K31 [Enum.VerticalAlignment.Top]
  SETTABLEKS R14 R13 K22 ["VerticalAlignment"]
  SETTABLEKS R5 R13 K8 ["Size"]
  DUPTABLE R14 K35 [{"ScriptConversionPaneHeader", "ScriptIssueTreeView", "ScriptConversionPaneFooter"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K36 [{"LayoutOrder", "Size"}]
  NAMECALL R18 R6 K37 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K2 ["LayoutOrder"]
  GETIMPORT R18 K39 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  GETTABLEKS R22 R2 K40 ["HeaderHeight"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K8 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K32 ["ScriptConversionPaneHeader"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K42 [{"LayoutOrder", "Size", "OnResetPlugin"}]
  NAMECALL R18 R6 K37 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K2 ["LayoutOrder"]
  GETIMPORT R18 K39 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  GETTABLEKS R24 R2 K40 ["HeaderHeight"]
  MINUS R23 R24
  GETTABLEKS R24 R2 K43 ["FooterHeight"]
  SUB R22 R23 R24
  CALL R18 4 1
  SETTABLEKS R18 R17 K8 ["Size"]
  GETTABLEKS R18 R1 K41 ["OnResetPlugin"]
  SETTABLEKS R18 R17 K41 ["OnResetPlugin"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K33 ["ScriptIssueTreeView"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K36 [{"LayoutOrder", "Size"}]
  NAMECALL R18 R6 K37 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K2 ["LayoutOrder"]
  GETIMPORT R18 K39 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  GETTABLEKS R22 R2 K43 ["FooterHeight"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K8 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K34 ["ScriptConversionPaneFooter"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K18 ["Container"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_3:
  DUPTABLE R2 K1 [{"initialIssueCounts"}]
  GETTABLEKS R4 R0 K2 ["ScriptConversion"]
  GETTABLEKS R3 R4 K0 ["initialIssueCounts"]
  SETTABLEKS R3 R2 K0 ["initialIssueCounts"]
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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Dash"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["join"]
  GETTABLEKS R6 R4 K12 ["keys"]
  GETTABLEKS R7 R1 K13 ["ContextServices"]
  GETTABLEKS R8 R1 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["SimpleExpandablePane"]
  GETTABLEKS R10 R8 K16 ["Pane"]
  GETTABLEKS R11 R8 K17 ["TextLabel"]
  GETTABLEKS R12 R1 K18 ["Util"]
  GETTABLEKS R13 R12 K19 ["LayoutOrderIterator"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K20 ["Src"]
  GETTABLEKS R16 R17 K21 ["Components"]
  GETTABLEKS R15 R16 K22 ["ScriptIssueTreeView"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K20 ["Src"]
  GETTABLEKS R17 R18 K21 ["Components"]
  GETTABLEKS R16 R17 K23 ["ScriptConversionPaneHeader"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K20 ["Src"]
  GETTABLEKS R18 R19 K21 ["Components"]
  GETTABLEKS R17 R18 K24 ["ScriptConversionPaneFooter"]
  CALL R16 1 1
  GETTABLEKS R17 R2 K25 ["PureComponent"]
  LOADK R19 K26 ["ScriptConversionExpandablePane"]
  NAMECALL R17 R17 K27 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K28 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R11
  SETTABLEKS R18 R17 K29 ["init"]
  DUPCLOSURE R18 K30 [PROTO_2]
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R16
  SETTABLEKS R18 R17 K31 ["render"]
  GETTABLEKS R18 R7 K32 ["withContext"]
  DUPTABLE R19 K35 [{"Stylizer", "Localization"}]
  GETTABLEKS R20 R7 K33 ["Stylizer"]
  SETTABLEKS R20 R19 K33 ["Stylizer"]
  GETTABLEKS R20 R7 K34 ["Localization"]
  SETTABLEKS R20 R19 K34 ["Localization"]
  CALL R18 1 1
  MOVE R19 R17
  CALL R18 1 1
  MOVE R17 R18
  DUPCLOSURE R18 K36 [PROTO_3]
  GETTABLEKS R19 R3 K37 ["connect"]
  MOVE R20 R18
  CALL R19 1 1
  MOVE R20 R17
  CALL R19 1 -1
  RETURN R19 -1
