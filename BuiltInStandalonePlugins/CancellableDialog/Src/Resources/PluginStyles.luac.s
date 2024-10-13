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
  NEWTABLE R4 0 2
  MOVE R5 R2
  LOADK R6 K11 ["TextLabel"]
  DUPTABLE R7 K17 [{"Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextXAlignment"}]
  GETIMPORT R8 K20 [Enum.Font.SourceSans]
  SETTABLEKS R8 R7 K12 ["Font"]
  LOADK R8 K21 ["$NormalTextSize"]
  SETTABLEKS R8 R7 K13 ["TextSize"]
  LOADK R8 K22 ["$TextContrast"]
  SETTABLEKS R8 R7 K14 ["TextColor3"]
  LOADK R8 K23 ["$Transparent"]
  SETTABLEKS R8 R7 K15 ["BackgroundTransparency"]
  GETIMPORT R8 K25 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K16 ["TextXAlignment"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K26 ["Frame"]
  DUPTABLE R8 K27 [{"BackgroundTransparency"}]
  LOADK R9 K23 ["$Transparent"]
  SETTABLEKS R9 R8 K15 ["BackgroundTransparency"]
  CALL R6 2 -1
  SETLIST R4 R5 -1 [1]
  DUPTABLE R5 K32 [{"NormalTextSize", "NotTransparent", "Transparent", "TextDisabledTransparency"}]
  LOADN R6 16
  SETTABLEKS R6 R5 K28 ["NormalTextSize"]
  LOADN R6 0
  SETTABLEKS R6 R5 K29 ["NotTransparent"]
  LOADN R6 1
  SETTABLEKS R6 R5 K30 ["Transparent"]
  LOADK R6 K33 [0.5]
  SETTABLEKS R6 R5 K31 ["TextDisabledTransparency"]
  MOVE R6 R3
  LOADK R7 K2 ["CancellableDialog"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
