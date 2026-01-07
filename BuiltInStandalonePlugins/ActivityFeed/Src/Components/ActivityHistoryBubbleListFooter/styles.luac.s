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
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["StyleTips"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["defaultPadding"]
  MULK R5 R4 K13 [3]
  GETTABLEKS R8 R3 K14 ["normalFontSize"]
  ADD R7 R8 R5
  ADD R6 R7 R4
  GETIMPORT R7 K16 [game]
  LOADK R9 K17 ["ActivityHistoryCompactUI"]
  NAMECALL R7 R7 K18 ["GetFastFlag"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K19 [".Component-ActivityHistoryBubbleListFooter"]
  DUPTABLE R10 K21 [{"Size"}]
  GETIMPORT R11 K24 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  MOVE R15 R6
  CALL R11 4 1
  SETTABLEKS R11 R10 K20 ["Size"]
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K25 ["::UIListLayout"]
  DUPTABLE R14 K27 [{"HorizontalAlignment"}]
  GETIMPORT R15 K30 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R15 R14 K26 ["HorizontalAlignment"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K31 ["::UIPadding"]
  DUPTABLE R15 K36 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R16 K38 [UDim.new]
  LOADN R17 0
  MOVE R18 R5
  CALL R16 2 1
  SETTABLEKS R16 R15 K32 ["PaddingTop"]
  GETIMPORT R16 K38 [UDim.new]
  LOADN R17 0
  MOVE R18 R4
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["PaddingBottom"]
  GETIMPORT R16 K38 [UDim.new]
  LOADN R17 0
  MOVE R18 R4
  CALL R16 2 1
  SETTABLEKS R16 R15 K34 ["PaddingLeft"]
  GETIMPORT R16 K38 [UDim.new]
  LOADN R17 0
  MOVE R18 R4
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["PaddingRight"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K39 ["> #Title"]
  DUPTABLE R16 K41 [{"TextColor3"}]
  JUMPIFNOT R7 [+2]
  LOADK R17 K42 ["$FoundationColorsContentMuted"]
  JUMP [+1]
  LOADK R17 K43 ["$TextSecondary"]
  SETTABLEKS R17 R16 K40 ["TextColor3"]
  CALL R14 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  RETURN R8 -1
