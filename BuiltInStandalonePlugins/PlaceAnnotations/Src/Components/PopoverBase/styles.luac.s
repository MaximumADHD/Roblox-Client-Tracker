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
  LOADK R4 K9 [".Component-PopoverBase"]
  DUPTABLE R5 K13 [{"BackgroundColor3", "BackgroundTransparency", "AutomaticSize"}]
  LOADK R6 K14 ["$ForegroundMain"]
  SETTABLEKS R6 R5 K10 ["BackgroundColor3"]
  LOADK R6 K15 [0.1]
  SETTABLEKS R6 R5 K11 ["BackgroundTransparency"]
  GETIMPORT R6 K18 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K12 ["AutomaticSize"]
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K19 ["::UICorner"]
  DUPTABLE R9 K21 [{"CornerRadius"}]
  LOADN R10 18
  SETTABLEKS R10 R9 K20 ["CornerRadius"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K22 ["::UIPadding"]
  DUPTABLE R10 K27 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R11 K30 [UDim.new]
  LOADN R12 0
  LOADN R13 12
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["PaddingTop"]
  GETIMPORT R11 K30 [UDim.new]
  LOADN R12 0
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["PaddingLeft"]
  GETIMPORT R11 K30 [UDim.new]
  LOADN R12 0
  LOADN R13 12
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["PaddingBottom"]
  GETIMPORT R11 K30 [UDim.new]
  LOADN R12 0
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["PaddingRight"]
  CALL R8 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
