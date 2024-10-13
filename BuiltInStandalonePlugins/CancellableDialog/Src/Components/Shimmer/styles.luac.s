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
  MOVE R3 R2
  LOADK R4 K10 [".Component-Shimmer"]
  DUPTABLE R5 K12 [{"BackgroundTransparency"}]
  LOADK R6 K13 ["$Transparent"]
  SETTABLEKS R6 R5 K11 ["BackgroundTransparency"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K14 [">> .ShimmerForeground"]
  DUPTABLE R9 K16 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R10 K17 ["$SemanticColorBackdrop"]
  SETTABLEKS R10 R9 K15 ["BackgroundColor3"]
  LOADK R10 K18 ["$NotTransparent"]
  SETTABLEKS R10 R9 K11 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K19 [">> .RoundedCorner8 ::UICorner"]
  DUPTABLE R10 K21 [{"CornerRadius"}]
  LOADK R11 K22 ["$CornerSize8"]
  SETTABLEKS R11 R10 K20 ["CornerRadius"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K23 [">> .NoBorder"]
  DUPTABLE R11 K25 [{"BorderSizePixel"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K24 ["BorderSizePixel"]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
