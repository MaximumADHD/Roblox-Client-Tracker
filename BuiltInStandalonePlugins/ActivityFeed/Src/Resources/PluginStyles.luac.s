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
  GETIMPORT R5 K14 [game]
  LOADK R7 K15 ["ActivityHistoryCompactUI"]
  NAMECALL R5 R5 K16 ["GetFastFlag"]
  CALL R5 2 1
  NEWTABLE R6 0 5
  MOVE R7 R3
  LOADK R8 K17 [".CX-Invisible"]
  DUPTABLE R9 K19 [{"BackgroundTransparency"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K18 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R3
  LOADK R9 K20 [".CX-Divider"]
  DUPTABLE R10 K23 [{"Size", "BackgroundColor3"}]
  GETIMPORT R11 K26 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K21 ["Size"]
  JUMPIFNOT R5 [+2]
  LOADK R11 K27 ["$FoundationColorsShift300"]
  JUMP [+1]
  LOADK R11 K28 ["$Divider"]
  SETTABLEKS R11 R10 K22 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K29 ["Frame"]
  DUPTABLE R11 K31 [{"BorderSizePixel"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K30 ["BorderSizePixel"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K32 ["TextLabel"]
  DUPTABLE R12 K36 [{"Font", "TextSize", "TextColor"}]
  GETTABLEKS R13 R2 K37 ["defaultFont"]
  SETTABLEKS R13 R12 K33 ["Font"]
  GETTABLEKS R13 R2 K38 ["normalFontSize"]
  SETTABLEKS R13 R12 K34 ["TextSize"]
  JUMPIFNOT R5 [+2]
  LOADK R13 K39 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R13 K40 ["$TextPrimary"]
  SETTABLEKS R13 R12 K35 ["TextColor"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K41 ["TextButton"]
  DUPTABLE R13 K36 [{"Font", "TextSize", "TextColor"}]
  GETTABLEKS R14 R2 K37 ["defaultFont"]
  SETTABLEKS R14 R13 K33 ["Font"]
  GETTABLEKS R14 R2 K42 ["buttonFontSize"]
  SETTABLEKS R14 R13 K34 ["TextSize"]
  JUMPIFNOT R5 [+2]
  LOADK R14 K39 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R14 K40 ["$TextPrimary"]
  SETTABLEKS R14 R13 K35 ["TextColor"]
  CALL R11 2 -1
  SETLIST R6 R7 -1 [1]
  NEWTABLE R7 0 0
  MOVE R8 R4
  LOADK R9 K43 ["ActivityHistoryPlugin"]
  MOVE R10 R6
  MOVE R11 R7
  CALL R8 3 -1
  RETURN R8 -1
