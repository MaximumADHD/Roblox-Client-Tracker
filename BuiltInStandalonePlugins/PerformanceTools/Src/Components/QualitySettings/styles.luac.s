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
  NEWTABLE R6 0 5
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
  LOADK R10 K17 [">> .QualityBarFullSquare"]
  DUPTABLE R11 K19 [{"BackgroundColor3"}]
  LOADK R12 K20 ["$QualityBarFullSquare"]
  SETTABLEKS R12 R11 K18 ["BackgroundColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K21 [">> .QualityBarEmptySquare"]
  DUPTABLE R12 K19 [{"BackgroundColor3"}]
  LOADK R13 K22 ["$QualityBarEmptySquare"]
  SETTABLEKS R13 R12 K18 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K23 [">> .QualityBarDisabledSquare"]
  DUPTABLE R13 K19 [{"BackgroundColor3"}]
  LOADK R14 K24 ["$QualityBarDisabledSquare"]
  SETTABLEKS R14 R13 K18 ["BackgroundColor3"]
  CALL R11 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
