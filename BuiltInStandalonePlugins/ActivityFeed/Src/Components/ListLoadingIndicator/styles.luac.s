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
  MOVE R4 R3
  LOADK R5 K12 [".Component-ListLoadingIndicator"]
  DUPTABLE R6 K15 [{"Size", "BackgroundColor3"}]
  GETIMPORT R7 K18 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R2 K19 ["bubbleHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K13 ["Size"]
  LOADK R7 K20 ["$ForegroundMain"]
  SETTABLEKS R7 R6 K14 ["BackgroundColor3"]
  NEWTABLE R7 0 2
  MOVE R8 R3
  LOADK R9 K21 ["::UICorner"]
  DUPTABLE R10 K23 [{"CornerRadius"}]
  GETIMPORT R11 K25 [UDim.new]
  LOADN R12 0
  GETTABLEKS R13 R2 K26 ["bubbleCornerRadius"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["CornerRadius"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K27 ["::UIStroke"]
  DUPTABLE R11 K30 [{"Color", "Thickness"}]
  LOADK R12 K31 ["$Divider"]
  SETTABLEKS R12 R11 K28 ["Color"]
  LOADN R12 1
  SETTABLEKS R12 R11 K29 ["Thickness"]
  CALL R9 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
