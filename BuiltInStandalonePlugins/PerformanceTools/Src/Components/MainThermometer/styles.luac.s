MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PerformanceTools"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-MainThermometer"]
  DUPTABLE R5 K13 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R6 K14 ["$BackgroundPaper"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K15 [">> TextLabel"]
  DUPTABLE R9 K20 [{"TextColor3", "BackgroundTransparency", "TextSize", "Font"}]
  LOADK R10 K21 ["$TextPrimary"]
  SETTABLEKS R10 R9 K16 ["TextColor3"]
  LOADN R10 1
  SETTABLEKS R10 R9 K17 ["BackgroundTransparency"]
  LOADN R10 16
  SETTABLEKS R10 R9 K18 ["TextSize"]
  GETIMPORT R10 K24 [Enum.Font.BuilderSans]
  SETTABLEKS R10 R9 K19 ["Font"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K25 [">> .Heading"]
  DUPTABLE R10 K26 [{"TextSize"}]
  LOADK R11 K27 ["$FontSize_350"]
  SETTABLEKS R11 R10 K18 ["TextSize"]
  CALL R8 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
