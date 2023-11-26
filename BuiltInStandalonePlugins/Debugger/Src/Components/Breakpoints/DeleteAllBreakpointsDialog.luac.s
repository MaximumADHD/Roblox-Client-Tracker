PROTO_0:
  JUMPIFNOTEQKS R0 K0 ["Yes"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["DeleteAllBreakpoints"]
  CALL R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["CloseDialog"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CloseDialog"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K11 [{"Style", "Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
  LOADK R6 K12 ["AcceptCancel"]
  SETTABLEKS R6 R5 K3 ["Style"]
  GETTABLEKS R6 R1 K4 ["Enabled"]
  SETTABLEKS R6 R5 K4 ["Enabled"]
  LOADB R6 1
  SETTABLEKS R6 R5 K5 ["Modal"]
  LOADK R8 K13 ["BreakpointsWindow"]
  LOADK R9 K14 ["DeleteAll"]
  NAMECALL R6 R2 K15 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["Title"]
  GETIMPORT R6 K18 [Vector2.new]
  LOADN R7 44
  LOADN R8 100
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["MinContentSize"]
  NEWTABLE R6 0 2
  DUPTABLE R7 K21 [{"Key", "Text"}]
  LOADK R8 K22 ["Yes"]
  SETTABLEKS R8 R7 K19 ["Key"]
  LOADK R10 K13 ["BreakpointsWindow"]
  LOADK R11 K23 ["DeleteAllPopupYes"]
  NAMECALL R8 R2 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K20 ["Text"]
  DUPTABLE R8 K21 [{"Key", "Text"}]
  LOADK R9 K24 ["No"]
  SETTABLEKS R9 R8 K19 ["Key"]
  LOADK R11 K13 ["BreakpointsWindow"]
  LOADK R12 K25 ["DeleteAllPopupNo"]
  NAMECALL R9 R2 K15 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K20 ["Text"]
  SETLIST R6 R7 2 [1]
  SETTABLEKS R6 R5 K8 ["Buttons"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K9 ["OnButtonPressed"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K10 ["OnClose"]
  DUPTABLE R6 K27 [{"Contents"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K33 [{"BackgroundTransparency", "TextSize", "Text", "TextColor3", "Size", "Position"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K28 ["BackgroundTransparency"]
  LOADN R10 20
  SETTABLEKS R10 R9 K29 ["TextSize"]
  LOADK R12 K13 ["BreakpointsWindow"]
  LOADK R13 K34 ["DeleteAllPopupText"]
  NAMECALL R10 R2 K15 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K20 ["Text"]
  GETIMPORT R10 K36 [Color3.new]
  LOADN R11 1
  LOADN R12 1
  LOADN R13 1
  CALL R10 3 1
  SETTABLEKS R10 R9 K30 ["TextColor3"]
  GETIMPORT R10 K39 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K31 ["Size"]
  GETIMPORT R10 K39 [UDim2.fromScale]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K32 ["Position"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K26 ["Contents"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["TextLabel"]
  GETTABLEKS R5 R3 K10 ["StyledDialog"]
  GETTABLEKS R6 R2 K11 ["ContextServices"]
  GETTABLEKS R7 R6 K12 ["Localization"]
  GETTABLEKS R8 R1 K13 ["PureComponent"]
  LOADK R10 K14 ["DeleteAllBreakpointsDialog"]
  NAMECALL R8 R8 K15 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K16 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K17 ["render"]
  GETTABLEKS R9 R6 K18 ["withContext"]
  DUPTABLE R10 K19 [{"Localization"}]
  SETTABLEKS R7 R10 K12 ["Localization"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
