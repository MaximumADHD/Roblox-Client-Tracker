PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  LOADK R6 K3 ["AlertDialog"]
  LOADK R7 K4 ["NoDeviceDetected"]
  NAMECALL R4 R3 K5 ["getText"]
  CALL R4 3 1
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K6 ["deviceName"]
  JUMPIFEQKS R5 K7 [""] [+33]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K8 ["vrEnabled"]
  JUMPIFNOT R6 [+6]
  LOADK R7 K3 ["AlertDialog"]
  LOADK R8 K9 ["ModeOn"]
  NAMECALL R5 R3 K5 ["getText"]
  CALL R5 3 1
  JUMP [+5]
  LOADK R7 K3 ["AlertDialog"]
  LOADK R8 K10 ["ModeOff"]
  NAMECALL R5 R3 K5 ["getText"]
  CALL R5 3 1
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R6 R10 K6 ["deviceName"]
  LOADK R7 K11 [" "]
  LOADK R12 K3 ["AlertDialog"]
  LOADK R13 K12 ["Detected"]
  NAMECALL R10 R3 K5 ["getText"]
  CALL R10 3 1
  MOVE R8 R10
  LOADK R9 K13 [". "]
  CONCAT R4 R6 R9
  MOVE R6 R4
  MOVE R7 R5
  CONCAT R4 R6 R7
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K14 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K23 [{"Style", "Enabled", "Title", "Buttons", "OnButtonPressed", "OnClose", "MinContentSize", "Modal"}]
  LOADK R8 K24 ["Alert"]
  SETTABLEKS R8 R7 K15 ["Style"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K25 ["enabled"]
  SETTABLEKS R8 R7 K16 ["Enabled"]
  LOADK R8 K26 ["VR Status Information"]
  SETTABLEKS R8 R7 K17 ["Title"]
  NEWTABLE R8 0 1
  DUPTABLE R9 K29 [{"Key", "Text"}]
  LOADK R10 K30 ["ok"]
  SETTABLEKS R10 R9 K27 ["Key"]
  LOADK R12 K3 ["AlertDialog"]
  LOADK R13 K31 ["OkButtonText"]
  NAMECALL R10 R3 K5 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K28 ["Text"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K18 ["Buttons"]
  GETTABLEKS R8 R1 K20 ["OnClose"]
  SETTABLEKS R8 R7 K19 ["OnButtonPressed"]
  GETTABLEKS R8 R1 K20 ["OnClose"]
  SETTABLEKS R8 R7 K20 ["OnClose"]
  GETTABLEKS R8 R2 K32 ["PopupMessageSize"]
  SETTABLEKS R8 R7 K21 ["MinContentSize"]
  LOADB R8 1
  SETTABLEKS R8 R7 K22 ["Modal"]
  DUPTABLE R8 K34 [{"Label"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K14 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K42 [{"Size", "AnchorPoint", "Position", "Text", "TextColor", "TextWrapped", "TextSize", "TextXAlignment"}]
  GETIMPORT R12 K45 [UDim2.fromScale]
  LOADK R13 K46 [0.95]
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K35 ["Size"]
  GETIMPORT R12 K49 [Vector2.new]
  LOADK R13 K50 [0.5]
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K36 ["AnchorPoint"]
  GETIMPORT R12 K45 [UDim2.fromScale]
  LOADK R13 K50 [0.5]
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K37 ["Position"]
  SETTABLEKS R4 R11 K28 ["Text"]
  GETTABLEKS R12 R2 K38 ["TextColor"]
  SETTABLEKS R12 R11 K38 ["TextColor"]
  LOADB R12 1
  SETTABLEKS R12 R11 K39 ["TextWrapped"]
  GETTABLEKS R12 R2 K40 ["TextSize"]
  SETTABLEKS R12 R11 K40 ["TextSize"]
  GETIMPORT R12 K53 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K41 ["TextXAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K33 ["Label"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R5 R3 K10 ["Localization"]
  GETTABLEKS R6 R2 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["StyledDialog"]
  GETTABLEKS R8 R6 K13 ["TextLabel"]
  GETTABLEKS R9 R1 K14 ["PureComponent"]
  LOADK R11 K15 ["AlertDialog"]
  NAMECALL R9 R9 K16 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K18 ["render"]
  MOVE R10 R4
  DUPTABLE R11 K20 [{"Localization", "Stylizer"}]
  SETTABLEKS R5 R11 K10 ["Localization"]
  GETTABLEKS R12 R3 K19 ["Stylizer"]
  SETTABLEKS R12 R11 K19 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
