MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-AddCollaboratorButton"]
  DUPTABLE R5 K14 [{"AutomaticSize", "Size", "Text", "LayoutOrder"}]
  GETIMPORT R6 K17 [Enum.AutomaticSize.XY]
  SETTABLEKS R6 R5 K10 ["AutomaticSize"]
  GETIMPORT R6 K20 [UDim2.new]
  LOADN R7 0
  LOADN R8 24
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K11 ["Size"]
  LOADK R6 K21 [""]
  SETTABLEKS R6 R5 K12 ["Text"]
  LOADN R6 100
  SETTABLEKS R6 R5 K13 ["LayoutOrder"]
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K22 ["> ImageLabel"]
  DUPTABLE R9 K26 [{"Image", "Size", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R10 K27 ["$AddCollaboratorIcon"]
  SETTABLEKS R10 R9 K23 ["Image"]
  GETIMPORT R10 K29 [UDim2.fromOffset]
  LOADN R11 16
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K11 ["Size"]
  LOADN R10 0
  SETTABLEKS R10 R9 K24 ["BorderSizePixel"]
  LOADN R10 1
  SETTABLEKS R10 R9 K25 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K30 ["> TextLabel"]
  DUPTABLE R10 K34 [{"TextColor3", "BackgroundTransparency", "BorderSizePixel", "AutomaticSize", "Font", "TextSize"}]
  LOADK R11 K35 ["$TextPrimary"]
  SETTABLEKS R11 R10 K31 ["TextColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K25 ["BackgroundTransparency"]
  LOADN R11 0
  SETTABLEKS R11 R10 K24 ["BorderSizePixel"]
  GETIMPORT R11 K37 [Enum.AutomaticSize.X]
  SETTABLEKS R11 R10 K10 ["AutomaticSize"]
  GETIMPORT R11 K39 [Enum.Font.BuilderSans]
  SETTABLEKS R11 R10 K32 ["Font"]
  LOADN R11 16
  SETTABLEKS R11 R10 K33 ["TextSize"]
  CALL R8 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
