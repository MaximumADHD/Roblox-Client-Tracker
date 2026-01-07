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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Resources"]
  GETTABLEKS R3 R4 K9 ["StyleTips"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["ActivityHistoryCompactUI"]
  NAMECALL R4 R4 K15 ["GetFastFlag"]
  CALL R4 2 1
  MOVE R5 R3
  LOADK R6 K16 [".Component-ListLoadingIndicator"]
  DUPTABLE R7 K19 [{"Size", "BackgroundColor3"}]
  GETIMPORT R8 K22 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  GETTABLEKS R12 R2 K23 ["bubbleHeight"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K17 ["Size"]
  JUMPIFNOT R4 [+2]
  LOADK R8 K24 ["$FoundationColorsBackgroundDefault"]
  JUMP [+1]
  LOADK R8 K25 ["$ForegroundMain"]
  SETTABLEKS R8 R7 K18 ["BackgroundColor3"]
  NEWTABLE R8 0 2
  MOVE R9 R3
  LOADK R10 K26 ["::UICorner"]
  DUPTABLE R11 K28 [{"CornerRadius"}]
  GETIMPORT R12 K30 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R2 K31 ["bubbleCornerRadius"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K27 ["CornerRadius"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K32 ["::UIStroke"]
  DUPTABLE R12 K35 [{"Color", "Thickness"}]
  JUMPIFNOT R4 [+2]
  LOADK R13 K36 ["$FoundationColorsShift300"]
  JUMP [+1]
  LOADK R13 K37 ["$Divider"]
  SETTABLEKS R13 R12 K33 ["Color"]
  LOADN R13 1
  SETTABLEKS R13 R12 K34 ["Thickness"]
  CALL R10 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
