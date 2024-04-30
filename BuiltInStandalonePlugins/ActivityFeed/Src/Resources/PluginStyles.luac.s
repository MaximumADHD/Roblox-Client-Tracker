MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
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
  GETTABLEKS R5 R1 K10 ["Styling"]
  GETTABLEKS R4 R5 K12 ["createStyleSheet"]
  NEWTABLE R5 0 5
  MOVE R6 R3
  LOADK R7 K13 [".CX-Invisible"]
  DUPTABLE R8 K15 [{"BackgroundTransparency"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K14 ["BackgroundTransparency"]
  CALL R6 2 1
  MOVE R7 R3
  LOADK R8 K16 [".CX-Divider"]
  DUPTABLE R9 K19 [{"Size", "BackgroundColor3"}]
  GETIMPORT R10 K22 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 1
  CALL R10 4 1
  SETTABLEKS R10 R9 K17 ["Size"]
  LOADK R10 K23 ["$Divider"]
  SETTABLEKS R10 R9 K18 ["BackgroundColor3"]
  CALL R7 2 1
  MOVE R8 R3
  LOADK R9 K24 ["Frame"]
  DUPTABLE R10 K26 [{"BorderSizePixel"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K25 ["BorderSizePixel"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K27 ["TextLabel"]
  DUPTABLE R11 K31 [{"Font", "TextSize", "TextColor"}]
  GETTABLEKS R12 R2 K32 ["defaultFont"]
  SETTABLEKS R12 R11 K28 ["Font"]
  GETTABLEKS R12 R2 K33 ["normalFontSize"]
  SETTABLEKS R12 R11 K29 ["TextSize"]
  LOADK R12 K34 ["$TextPrimary"]
  SETTABLEKS R12 R11 K30 ["TextColor"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K35 ["TextButton"]
  DUPTABLE R12 K31 [{"Font", "TextSize", "TextColor"}]
  GETTABLEKS R13 R2 K32 ["defaultFont"]
  SETTABLEKS R13 R12 K28 ["Font"]
  GETTABLEKS R13 R2 K36 ["buttonFontSize"]
  SETTABLEKS R13 R12 K29 ["TextSize"]
  LOADK R13 K34 ["$TextPrimary"]
  SETTABLEKS R13 R12 K30 ["TextColor"]
  CALL R10 2 -1
  SETLIST R5 R6 -1 [1]
  NEWTABLE R6 0 0
  MOVE R7 R4
  LOADK R8 K37 ["ActivityHistoryPlugin"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
