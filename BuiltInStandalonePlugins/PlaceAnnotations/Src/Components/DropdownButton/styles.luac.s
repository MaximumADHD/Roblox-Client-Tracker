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
  LOADK R4 K9 [".Component-DropdownButton"]
  DUPTABLE R5 K13 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R6 K16 [UDim2.fromOffset]
  LOADN R7 16
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Size"]
  LOADN R6 1
  SETTABLEKS R6 R5 K11 ["BackgroundTransparency"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K17 [":hover"]
  DUPTABLE R9 K19 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K11 ["BackgroundTransparency"]
  LOADK R10 K20 ["$ResolveIconBase"]
  SETTABLEKS R10 R9 K18 ["BackgroundColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K21 [":pressed"]
  DUPTABLE R10 K19 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K11 ["BackgroundTransparency"]
  LOADK R11 K22 ["$ResolveIconSelected"]
  SETTABLEKS R11 R10 K18 ["BackgroundColor3"]
  CALL R8 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
