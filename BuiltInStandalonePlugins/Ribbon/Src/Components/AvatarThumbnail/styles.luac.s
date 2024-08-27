MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-AvatarThumbnail"]
  DUPTABLE R5 K13 [{"AutoButtonColor", "Text"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K11 ["AutoButtonColor"]
  LOADK R6 K14 [""]
  SETTABLEKS R6 R5 K12 ["Text"]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K15 ["> #Avatar"]
  DUPTABLE R9 K18 [{"BorderSizePixel", "BackgroundColor3"}]
  LOADK R10 K19 ["$BorderNone"]
  SETTABLEKS R10 R9 K16 ["BorderSizePixel"]
  LOADK R10 K20 ["$SemanticColorComponentMediaFill"]
  SETTABLEKS R10 R9 K17 ["BackgroundColor3"]
  NEWTABLE R10 0 2
  MOVE R11 R2
  LOADK R12 K21 ["::UICorner"]
  DUPTABLE R13 K23 [{"CornerRadius"}]
  LOADK R14 K24 ["$GlobalRadiusCircle"]
  SETTABLEKS R14 R13 K22 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K25 [".XSmall"]
  DUPTABLE R14 K27 [{"Size"}]
  LOADK R15 K28 ["$AvatarXS"]
  SETTABLEKS R15 R14 K26 ["Size"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
