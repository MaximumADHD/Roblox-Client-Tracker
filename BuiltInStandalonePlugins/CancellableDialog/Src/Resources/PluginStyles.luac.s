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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Bin"]
  GETTABLEKS R6 R7 K12 ["Common"]
  GETTABLEKS R5 R6 K13 ["defineLuaFlags"]
  CALL R4 1 1
  NEWTABLE R5 0 2
  MOVE R6 R2
  LOADK R7 K14 ["TextLabel"]
  DUPTABLE R8 K20 [{"Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextXAlignment"}]
  GETIMPORT R9 K23 [Enum.Font.SourceSans]
  SETTABLEKS R9 R8 K15 ["Font"]
  LOADK R9 K24 ["$NormalTextSize"]
  SETTABLEKS R9 R8 K16 ["TextSize"]
  LOADK R9 K25 ["$TextContrast"]
  SETTABLEKS R9 R8 K17 ["TextColor3"]
  LOADK R9 K26 ["$Transparent"]
  SETTABLEKS R9 R8 K18 ["BackgroundTransparency"]
  GETIMPORT R9 K28 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K19 ["TextXAlignment"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K29 ["Frame"]
  DUPTABLE R9 K30 [{"BackgroundTransparency"}]
  LOADK R10 K26 ["$Transparent"]
  SETTABLEKS R10 R9 K18 ["BackgroundTransparency"]
  CALL R7 2 -1
  SETLIST R5 R6 -1 [1]
  DUPTABLE R6 K35 [{"NormalTextSize", "NotTransparent", "Transparent", "TextDisabledTransparency"}]
  LOADN R7 16
  SETTABLEKS R7 R6 K31 ["NormalTextSize"]
  LOADN R7 0
  SETTABLEKS R7 R6 K32 ["NotTransparent"]
  LOADN R7 1
  SETTABLEKS R7 R6 K33 ["Transparent"]
  GETTABLEKS R8 R4 K36 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADK R7 K37 [0.5]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K34 ["TextDisabledTransparency"]
  MOVE R7 R3
  LOADK R8 K2 ["CancellableDialog"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
