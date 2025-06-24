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
  LOADK R4 K10 [".Component-MeasuringBar"]
  DUPTABLE R5 K13 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R6 K14 ["$BackgroundPaper"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 8
  MOVE R7 R2
  LOADK R8 K15 ["> TextLabel"]
  DUPTABLE R9 K18 [{"TextColor3", "TextXAlignment"}]
  LOADK R10 K19 ["$TextPrimary"]
  SETTABLEKS R10 R9 K16 ["TextColor3"]
  GETIMPORT R10 K22 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K17 ["TextXAlignment"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K23 [">> .Component-MeasuringBarPip"]
  DUPTABLE R10 K26 [{"BackgroundColor3", "Size", "BorderSizePixel", "LayoutOrder"}]
  LOADK R11 K14 ["$BackgroundPaper"]
  SETTABLEKS R11 R10 K11 ["BackgroundColor3"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 0
  LOADN R13 2
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K24 ["Size"]
  LOADN R11 0
  SETTABLEKS R11 R10 K12 ["BorderSizePixel"]
  LOADN R11 4
  SETTABLEKS R11 R10 K25 ["LayoutOrder"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K30 [">> .Component-MeasuringBarBackground"]
  DUPTABLE R11 K32 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K33 ["$MeasuringBarBackground"]
  SETTABLEKS R12 R11 K11 ["BackgroundColor3"]
  LOADK R12 K34 [0.92]
  SETTABLEKS R12 R11 K31 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K35 [">> .Component-MeasurementBarFillLow"]
  DUPTABLE R12 K36 [{"BackgroundColor3"}]
  LOADK R13 K37 ["$MeasuringBarFillLow"]
  SETTABLEKS R13 R12 K11 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K38 [">> .Component-MeasurementBarFillMedium"]
  DUPTABLE R13 K36 [{"BackgroundColor3"}]
  LOADK R14 K39 ["$MeasuringBarFillMedium"]
  SETTABLEKS R14 R13 K11 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K40 [">> .Component-MeasurementBarFillHigh"]
  DUPTABLE R14 K36 [{"BackgroundColor3"}]
  LOADK R15 K41 ["$MeasuringBarFillHigh"]
  SETTABLEKS R15 R14 K11 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K42 [">> .ChildRenderBar"]
  DUPTABLE R15 K44 [{"TextSize"}]
  LOADK R16 K45 ["$FontSize_300"]
  SETTABLEKS R16 R15 K43 ["TextSize"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K46 [">> .MainRenderBar"]
  DUPTABLE R16 K44 [{"TextSize"}]
  LOADK R17 K47 ["$FontSize_350"]
  SETTABLEKS R17 R16 K43 ["TextSize"]
  CALL R14 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
