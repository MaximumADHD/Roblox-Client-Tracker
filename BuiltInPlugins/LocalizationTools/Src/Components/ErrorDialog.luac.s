PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["OkCallback"]
  GETTABLEKS R5 R1 K4 ["Text"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K13 [{"AutomaticSize", "Layout", "HorizontalAlignment", "BackgroundTransparency", "BackgroundColor3", "Size", "Spacing"}]
  GETIMPORT R9 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K6 ["AutomaticSize"]
  GETIMPORT R9 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K7 ["Layout"]
  GETIMPORT R9 K21 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K8 ["HorizontalAlignment"]
  LOADN R9 0
  SETTABLEKS R9 R8 K9 ["BackgroundTransparency"]
  GETTABLEKS R9 R2 K22 ["MainBackground"]
  SETTABLEKS R9 R8 K10 ["BackgroundColor3"]
  GETIMPORT R9 K25 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K11 ["Size"]
  LOADN R9 15
  SETTABLEKS R9 R8 K12 ["Spacing"]
  DUPTABLE R9 K28 [{"Message", "Confirm"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K33 [{"TextXAlignment", "BackgroundTransparency", "Text", "Size", "AutomaticSize", "TextWrapped", "TextColor3", "LayoutOrder"}]
  GETIMPORT R13 K35 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K29 ["TextXAlignment"]
  LOADN R13 1
  SETTABLEKS R13 R12 K9 ["BackgroundTransparency"]
  SETTABLEKS R5 R12 K4 ["Text"]
  GETIMPORT R13 K25 [UDim2.new]
  LOADN R14 0
  LOADN R15 144
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K11 ["Size"]
  GETIMPORT R13 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K6 ["AutomaticSize"]
  LOADB R13 1
  SETTABLEKS R13 R12 K30 ["TextWrapped"]
  GETTABLEKS R13 R2 K36 ["ErrorText"]
  SETTABLEKS R13 R12 K31 ["TextColor3"]
  LOADN R13 1
  SETTABLEKS R13 R12 K32 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K26 ["Message"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K40 [{"LayoutOrder", "OnClick", "Position", "Size", "Style", "Text"}]
  LOADN R13 2
  SETTABLEKS R13 R12 K32 ["LayoutOrder"]
  SETTABLEKS R4 R12 K37 ["OnClick"]
  GETIMPORT R13 K25 [UDim2.new]
  LOADK R14 K41 [0.5]
  LOADK R15 K41 [0.5]
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K38 ["Position"]
  GETIMPORT R13 K25 [UDim2.new]
  LOADN R14 0
  GETTABLEKS R15 R2 K42 ["ButtonWidth"]
  LOADN R16 0
  GETTABLEKS R17 R2 K43 ["ButtonHeight"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K11 ["Size"]
  LOADK R13 K44 ["PrimeTextButton"]
  SETTABLEKS R13 R12 K39 ["Style"]
  LOADK R15 K45 ["UploadDialogContent"]
  LOADK R16 K46 ["ConfirmButton"]
  NAMECALL R13 R3 K47 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K4 ["Text"]
  NEWTABLE R13 0 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K49 [{"Cursor"}]
  LOADK R17 K50 ["PointingHand"]
  SETTABLEKS R17 R16 K48 ["Cursor"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  SETTABLEKS R10 R9 K27 ["Confirm"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Button"]
  GETTABLEKS R7 R5 K12 ["HoverArea"]
  GETTABLEKS R8 R5 K13 ["TextLabel"]
  GETTABLEKS R9 R5 K14 ["Pane"]
  GETTABLEKS R10 R1 K15 ["PureComponent"]
  LOADK R12 K16 ["ErrorDialog"]
  NAMECALL R10 R10 K17 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K18 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K19 ["render"]
  MOVE R11 R4
  DUPTABLE R12 K22 [{"Stylizer", "Localization"}]
  GETTABLEKS R13 R3 K20 ["Stylizer"]
  SETTABLEKS R13 R12 K20 ["Stylizer"]
  GETTABLEKS R13 R3 K21 ["Localization"]
  SETTABLEKS R13 R12 K21 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
