MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  NEWTABLE R4 0 3
  MOVE R5 R2
  LOADK R6 K11 ["TextLabel"]
  DUPTABLE R7 K15 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R8 K18 [Enum.Font.SourceSans]
  SETTABLEKS R8 R7 K12 ["Font"]
  LOADK R8 K19 ["$NormalTextSize"]
  SETTABLEKS R8 R7 K13 ["TextSize"]
  LOADK R8 K20 ["$TextContrast"]
  SETTABLEKS R8 R7 K14 ["TextColor3"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K11 ["TextLabel"]
  DUPTABLE R8 K23 [{"BackgroundTransparency", "TextXAlignment"}]
  LOADK R9 K24 ["$Transparent"]
  SETTABLEKS R9 R8 K21 ["BackgroundTransparency"]
  GETIMPORT R9 K26 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K22 ["TextXAlignment"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K27 ["Frame"]
  DUPTABLE R9 K28 [{"BackgroundTransparency"}]
  LOADK R10 K24 ["$Transparent"]
  SETTABLEKS R10 R9 K21 ["BackgroundTransparency"]
  CALL R7 2 -1
  SETLIST R4 R5 -1 [1]
  DUPTABLE R5 K32 [{"NormalTextSize", "NotTransparent", "Transparent"}]
  LOADN R6 16
  SETTABLEKS R6 R5 K29 ["NormalTextSize"]
  LOADN R6 0
  SETTABLEKS R6 R5 K30 ["NotTransparent"]
  LOADN R6 1
  SETTABLEKS R6 R5 K31 ["Transparent"]
  MOVE R6 R3
  LOADK R7 K2 ["CancellableDialog"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
