PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["HistoryItems"]
  GETTABLEKS R2 R0 K2 ["Stylizer"]
  GETTABLEKS R4 R2 K3 ["Layout"]
  GETTABLEKS R3 R4 K4 ["Vertical"]
  DUPTABLE R4 K5 [{"Layout"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["createElement"]
  LOADK R6 K7 ["UIListLayout"]
  GETTABLEKS R7 R3 K4 ["Vertical"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["Layout"]
  GETIMPORT R5 K9 [pairs]
  MOVE R6 R1
  CALL R5 1 3
  FORGPREP_NEXT R5
  MOVE R11 R4
  LOADN R12 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K6 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K13 [{"View", "Name", "Data"}]
  GETTABLEKS R16 R9 K10 ["View"]
  SETTABLEKS R16 R15 K10 ["View"]
  GETTABLEKS R16 R9 K11 ["Name"]
  SETTABLEKS R16 R15 K11 ["Name"]
  GETTABLEKS R16 R9 K12 ["Data"]
  SETTABLEKS R16 R15 K12 ["Data"]
  CALL R13 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R10 K16 [table.insert]
  CALL R10 -1 0
  FORGLOOP R5 2 [-25]
  RETURN R4 1

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K0 ["createChildren"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R2 K2 ["Text"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K6 [{"Style", "Layout"}]
  LOADK R7 K7 ["RoundBox"]
  SETTABLEKS R7 R6 K4 ["Style"]
  GETIMPORT R7 K11 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K5 ["Layout"]
  DUPTABLE R7 K14 [{"Header", "ScrollingContainer"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K17 [{"AutomaticSize", "TextXAlignment", "Style", "Text"}]
  GETIMPORT R11 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K15 ["AutomaticSize"]
  GETIMPORT R11 K21 [Enum.TextXAlignment.Center]
  SETTABLEKS R11 R10 K16 ["TextXAlignment"]
  LOADK R11 K22 ["Bold"]
  SETTABLEKS R11 R10 K4 ["Style"]
  LOADK R11 K23 ["History"]
  SETTABLEKS R11 R10 K2 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["Header"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K25 [{"Size"}]
  GETIMPORT R11 K28 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  GETTABLEKS R17 R3 K29 ["BrightText"]
  GETTABLEKS R16 R17 K24 ["Size"]
  MINUS R15 R16
  CALL R11 4 1
  SETTABLEKS R11 R10 K24 ["Size"]
  GETTABLEKS R11 R0 K30 ["createChildren"]
  CALL R11 0 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K13 ["ScrollingContainer"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  DUPTABLE R2 K1 [{"HistoryItems"}]
  GETTABLEKS R4 R0 K2 ["History"]
  GETTABLEKS R3 R4 K0 ["HistoryItems"]
  SETTABLEKS R3 R2 K0 ["HistoryItems"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Components"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R6 K13 ["RepopulatableHistoryItem"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["Pane"]
  GETTABLEKS R10 R8 K16 ["TextLabel"]
  GETTABLEKS R11 R8 K17 ["ScrollingFrame"]
  GETTABLEKS R12 R1 K18 ["PureComponent"]
  LOADK R14 K19 ["RepopulatableHistory"]
  NAMECALL R12 R12 K20 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K21 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K22 ["init"]
  DUPCLOSURE R13 K23 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K24 ["render"]
  MOVE R13 R5
  DUPTABLE R14 K26 [{"Stylizer"}]
  GETTABLEKS R15 R4 K25 ["Stylizer"]
  SETTABLEKS R15 R14 K25 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  GETTABLEKS R13 R2 K27 ["connect"]
  DUPCLOSURE R14 K28 [PROTO_3]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 -1
  RETURN R13 -1
