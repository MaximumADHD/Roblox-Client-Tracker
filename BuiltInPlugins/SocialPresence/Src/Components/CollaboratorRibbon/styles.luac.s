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
  LOADK R4 K9 [".Component-CollaboratorRibbon"]
  DUPTABLE R5 K13 [{"BackgroundTransparency", "AutomaticSize", "Size"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K10 ["BackgroundTransparency"]
  GETIMPORT R6 K16 [Enum.AutomaticSize.X]
  SETTABLEKS R6 R5 K11 ["AutomaticSize"]
  GETIMPORT R6 K19 [UDim2.fromScale]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Size"]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K20 [">> .Component-OverflowBubble"]
  DUPTABLE R9 K22 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K10 ["BackgroundTransparency"]
  LOADK R10 K23 ["$SecondaryMain"]
  SETTABLEKS R10 R9 K21 ["BackgroundColor3"]
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K24 ["> TextLabel"]
  DUPTABLE R13 K28 [{"BackgroundTransparency", "TextSize", "TextColor3", "Font"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K10 ["BackgroundTransparency"]
  LOADN R14 13
  SETTABLEKS R14 R13 K25 ["TextSize"]
  LOADK R14 K29 ["$TextPrimary"]
  SETTABLEKS R14 R13 K26 ["TextColor3"]
  GETIMPORT R14 K31 [Enum.Font.BuilderSansBold]
  SETTABLEKS R14 R13 K27 ["Font"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
