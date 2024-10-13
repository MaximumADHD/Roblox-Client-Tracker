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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Bin"]
  GETTABLEKS R5 R6 K10 ["Common"]
  GETTABLEKS R4 R5 K11 ["defineLuaFlags"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K12 [".Component-PopoverBase"]
  DUPTABLE R6 K16 [{"BackgroundColor3", "BackgroundTransparency", "AutomaticSize"}]
  GETTABLEKS R8 R3 K17 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K18 ["$SemanticColorSurface200"]
  JUMP [+1]
  LOADK R7 K19 ["$ForegroundMain"]
  SETTABLEKS R7 R6 K13 ["BackgroundColor3"]
  LOADK R7 K20 [0.1]
  SETTABLEKS R7 R6 K14 ["BackgroundTransparency"]
  GETIMPORT R7 K23 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K15 ["AutomaticSize"]
  NEWTABLE R7 0 2
  MOVE R8 R2
  LOADK R9 K24 ["::UICorner"]
  DUPTABLE R10 K26 [{"CornerRadius"}]
  LOADN R11 18
  SETTABLEKS R11 R10 K25 ["CornerRadius"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K27 ["::UIPadding"]
  DUPTABLE R11 K32 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R12 K35 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["PaddingTop"]
  GETIMPORT R12 K35 [UDim.new]
  LOADN R13 0
  LOADN R14 16
  CALL R12 2 1
  SETTABLEKS R12 R11 K29 ["PaddingLeft"]
  GETIMPORT R12 K35 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K30 ["PaddingBottom"]
  GETIMPORT R12 K35 [UDim.new]
  LOADN R13 0
  LOADN R14 16
  CALL R12 2 1
  SETTABLEKS R12 R11 K31 ["PaddingRight"]
  CALL R9 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
