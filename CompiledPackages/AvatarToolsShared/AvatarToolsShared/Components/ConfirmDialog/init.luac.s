PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Title"]
  JUMPIF R3 [+5]
  LOADK R5 K3 ["Dialog"]
  LOADK R6 K4 ["DefaultTitle"]
  NAMECALL R3 R2 K5 ["getText"]
  CALL R3 3 1
  GETTABLEKS R4 R1 K6 ["Stylizer"]
  GETTABLEKS R5 R1 K7 ["OnClose"]
  GETTABLEKS R6 R1 K8 ["Resizable"]
  GETTABLEKS R7 R1 K9 ["ConfirmText"]
  JUMPIF R7 [+7]
  GETTABLEKS R7 R1 K1 ["Localization"]
  LOADK R9 K3 ["Dialog"]
  LOADK R10 K10 ["Confirm"]
  NAMECALL R7 R7 K5 ["getText"]
  CALL R7 3 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K16 [{"Title", "OnClose", "OnButtonPressed", "Buttons", "MinContentSize", "Resizable", "Modal"}]
  SETTABLEKS R3 R10 K2 ["Title"]
  SETTABLEKS R5 R10 K7 ["OnClose"]
  SETTABLEKS R5 R10 K12 ["OnButtonPressed"]
  NEWTABLE R11 0 1
  DUPTABLE R12 K20 [{"Text", "Key", "Style"}]
  SETTABLEKS R7 R12 K17 ["Text"]
  LOADK R13 K10 ["Confirm"]
  SETTABLEKS R13 R12 K18 ["Key"]
  LOADK R13 K21 ["Round"]
  SETTABLEKS R13 R12 K19 ["Style"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K13 ["Buttons"]
  GETTABLEKS R11 R4 K22 ["PopupMessageSize"]
  SETTABLEKS R11 R10 K14 ["MinContentSize"]
  SETTABLEKS R6 R10 K8 ["Resizable"]
  LOADB R11 1
  SETTABLEKS R11 R10 K15 ["Modal"]
  DUPTABLE R11 K24 [{"PromptPane"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K28 [{"Layout", "Spacing", "Padding"}]
  GETIMPORT R15 K32 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K25 ["Layout"]
  GETTABLEKS R15 R4 K26 ["Spacing"]
  SETTABLEKS R15 R14 K26 ["Spacing"]
  GETTABLEKS R15 R4 K27 ["Padding"]
  SETTABLEKS R15 R14 K27 ["Padding"]
  DUPTABLE R15 K34 [{"Message"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K39 [{"Size", "AutomaticSize", "Text", "BackgroundTransparency", "TextWrapped"}]
  GETIMPORT R19 K42 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K35 ["Size"]
  GETIMPORT R19 K44 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K36 ["AutomaticSize"]
  GETTABLEKS R19 R1 K17 ["Text"]
  SETTABLEKS R19 R18 K17 ["Text"]
  LOADN R19 1
  SETTABLEKS R19 R18 K37 ["BackgroundTransparency"]
  LOADB R19 1
  SETTABLEKS R19 R18 K38 ["TextWrapped"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["Message"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K23 ["PromptPane"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R1 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K7 ["ContextServices"]
  GETTABLEKS R5 R4 K8 ["withContext"]
  GETTABLEKS R6 R2 K9 ["PureComponent"]
  LOADK R8 K10 ["ConfirmDialog"]
  NAMECALL R6 R6 K11 ["extend"]
  CALL R6 2 1
  GETTABLEKS R7 R3 K12 ["UI"]
  GETTABLEKS R8 R7 K13 ["Pane"]
  GETTABLEKS R9 R7 K14 ["TextLabel"]
  GETTABLEKS R10 R7 K15 ["StyledDialog"]
  GETTABLEKS R11 R3 K16 ["Util"]
  GETTABLEKS R12 R11 K17 ["Typecheck"]
  GETTABLEKS R13 R12 K18 ["wrap"]
  MOVE R14 R6
  GETIMPORT R15 K1 [script]
  CALL R13 2 0
  DUPCLOSURE R13 K19 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R13 R6 K20 ["render"]
  MOVE R13 R5
  DUPTABLE R14 K23 [{"Stylizer", "Localization"}]
  GETTABLEKS R15 R4 K21 ["Stylizer"]
  SETTABLEKS R15 R14 K21 ["Stylizer"]
  GETTABLEKS R15 R4 K22 ["Localization"]
  SETTABLEKS R15 R14 K22 ["Localization"]
  CALL R13 1 1
  MOVE R14 R6
  CALL R13 1 1
  MOVE R6 R13
  RETURN R6 1
