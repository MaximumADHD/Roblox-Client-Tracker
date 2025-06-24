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
  LOADK R4 K10 [".Component-QualitySettings"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 6
  MOVE R7 R2
  LOADK R8 K11 [">> .LeftArrow"]
  DUPTABLE R9 K13 [{"Image"}]
  LOADK R10 K14 ["$LeftArrow"]
  SETTABLEKS R10 R9 K12 ["Image"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K15 [">> .RightArrow"]
  DUPTABLE R10 K13 [{"Image"}]
  LOADK R11 K16 ["$RightArrow"]
  SETTABLEKS R11 R10 K12 ["Image"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K17 [">> .MainTitle"]
  DUPTABLE R11 K19 [{"TextSize"}]
  LOADK R12 K20 ["$FontSize_350"]
  SETTABLEKS R12 R11 K18 ["TextSize"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K21 [">> .QualityBarFullSquare"]
  DUPTABLE R12 K23 [{"BackgroundColor3"}]
  LOADK R13 K24 ["$QualityBarFullSquare"]
  SETTABLEKS R13 R12 K22 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K25 [">> .QualityBarEmptySquare"]
  DUPTABLE R13 K23 [{"BackgroundColor3"}]
  LOADK R14 K26 ["$QualityBarEmptySquare"]
  SETTABLEKS R14 R13 K22 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K27 [">> .QualityBarDisabledSquare"]
  DUPTABLE R14 K23 [{"BackgroundColor3"}]
  LOADK R15 K28 ["$QualityBarDisabledSquare"]
  SETTABLEKS R15 R14 K22 ["BackgroundColor3"]
  CALL R12 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
