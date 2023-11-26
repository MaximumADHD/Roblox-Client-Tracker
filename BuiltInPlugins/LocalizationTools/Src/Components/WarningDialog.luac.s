PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["CancelCallback"]
  GETTABLEKS R5 R1 K4 ["OkCallback"]
  GETTABLEKS R6 R1 K5 ["Text"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K14 [{"AutomaticSize", "Layout", "HorizontalAlignment", "BackgroundTransparency", "BackgroundColor3", "Size", "Spacing"}]
  GETIMPORT R10 K17 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K7 ["AutomaticSize"]
  GETIMPORT R10 K20 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K8 ["Layout"]
  GETIMPORT R10 K22 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R10 R9 K9 ["HorizontalAlignment"]
  LOADN R10 0
  SETTABLEKS R10 R9 K10 ["BackgroundTransparency"]
  GETTABLEKS R10 R2 K23 ["MainBackground"]
  SETTABLEKS R10 R9 K11 ["BackgroundColor3"]
  GETIMPORT R10 K26 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  LOADN R10 15
  SETTABLEKS R10 R9 K13 ["Spacing"]
  DUPTABLE R10 K29 [{"Message", "Buttons"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K34 [{"TextXAlignment", "BackgroundTransparency", "Text", "Size", "AutomaticSize", "TextWrapped", "TextColor3", "LayoutOrder"}]
  GETIMPORT R14 K36 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K30 ["TextXAlignment"]
  LOADN R14 1
  SETTABLEKS R14 R13 K10 ["BackgroundTransparency"]
  SETTABLEKS R6 R13 K5 ["Text"]
  GETIMPORT R14 K26 [UDim2.new]
  LOADN R15 0
  LOADN R16 144
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K12 ["Size"]
  GETIMPORT R14 K17 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K7 ["AutomaticSize"]
  LOADB R14 1
  SETTABLEKS R14 R13 K31 ["TextWrapped"]
  GETTABLEKS R14 R2 K37 ["WarningText"]
  SETTABLEKS R14 R13 K32 ["TextColor3"]
  LOADN R14 1
  SETTABLEKS R14 R13 K33 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["Message"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K38 [{"AutomaticSize", "Layout", "HorizontalAlignment", "BackgroundTransparency", "BackgroundColor3", "Size", "Spacing", "LayoutOrder"}]
  GETIMPORT R14 K17 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K7 ["AutomaticSize"]
  GETIMPORT R14 K40 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K8 ["Layout"]
  GETIMPORT R14 K22 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K9 ["HorizontalAlignment"]
  LOADN R14 0
  SETTABLEKS R14 R13 K10 ["BackgroundTransparency"]
  GETTABLEKS R14 R2 K23 ["MainBackground"]
  SETTABLEKS R14 R13 K11 ["BackgroundColor3"]
  GETIMPORT R14 K26 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K12 ["Size"]
  LOADN R14 40
  SETTABLEKS R14 R13 K13 ["Spacing"]
  LOADN R14 2
  SETTABLEKS R14 R13 K33 ["LayoutOrder"]
  DUPTABLE R14 K43 [{"Confirm", "Cancel"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K46 [{"LayoutOrder", "OnClick", "Size", "Style", "Text"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K33 ["LayoutOrder"]
  SETTABLEKS R5 R17 K44 ["OnClick"]
  GETIMPORT R18 K26 [UDim2.new]
  LOADN R19 0
  GETTABLEKS R20 R2 K47 ["ButtonWidth"]
  LOADN R21 0
  GETTABLEKS R22 R2 K48 ["ButtonHeight"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K12 ["Size"]
  LOADK R18 K49 ["PrimeTextButton"]
  SETTABLEKS R18 R17 K45 ["Style"]
  LOADK R20 K50 ["UploadDialogContent"]
  LOADK R21 K51 ["ConfirmButton"]
  NAMECALL R18 R3 K52 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K5 ["Text"]
  NEWTABLE R18 0 1
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K54 [{"Cursor"}]
  LOADK R22 K55 ["PointingHand"]
  SETTABLEKS R22 R21 K53 ["Cursor"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  SETTABLEKS R15 R14 K41 ["Confirm"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K46 [{"LayoutOrder", "OnClick", "Size", "Style", "Text"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K33 ["LayoutOrder"]
  SETTABLEKS R4 R17 K44 ["OnClick"]
  GETIMPORT R18 K26 [UDim2.new]
  LOADN R19 0
  GETTABLEKS R20 R2 K47 ["ButtonWidth"]
  LOADN R21 0
  GETTABLEKS R22 R2 K48 ["ButtonHeight"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K12 ["Size"]
  LOADK R18 K56 ["TextButton"]
  SETTABLEKS R18 R17 K45 ["Style"]
  LOADK R20 K50 ["UploadDialogContent"]
  LOADK R21 K57 ["CancelButton"]
  NAMECALL R18 R3 K52 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K5 ["Text"]
  NEWTABLE R18 0 1
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K54 [{"Cursor"}]
  LOADK R22 K55 ["PointingHand"]
  SETTABLEKS R22 R21 K53 ["Cursor"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  SETTABLEKS R15 R14 K42 ["Cancel"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K28 ["Buttons"]
  CALL R7 3 -1
  RETURN R7 -1

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
  LOADK R12 K16 ["WarningDialog"]
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
