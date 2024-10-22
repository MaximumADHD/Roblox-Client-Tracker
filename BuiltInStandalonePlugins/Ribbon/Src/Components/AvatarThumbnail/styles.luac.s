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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["SharedFlags"]
  GETTABLEKS R4 R5 K12 ["getFFlagAddUsernameToRibbonAvatars"]
  CALL R3 1 1
  CALL R3 0 1
  MOVE R4 R2
  LOADK R5 K13 [".Component-AvatarThumbnail"]
  DUPTABLE R6 K16 [{"AutoButtonColor", "Text"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K14 ["AutoButtonColor"]
  LOADK R7 K17 [""]
  SETTABLEKS R7 R6 K15 ["Text"]
  NEWTABLE R7 0 1
  MOVE R8 R2
  JUMPIFNOT R3 [+2]
  LOADK R9 K18 ["> ImageLabel"]
  JUMP [+1]
  LOADK R9 K19 ["> #Avatar"]
  DUPTABLE R10 K22 [{"BorderSizePixel", "BackgroundColor3"}]
  LOADK R11 K23 ["$BorderNone"]
  SETTABLEKS R11 R10 K20 ["BorderSizePixel"]
  LOADK R11 K24 ["$SemanticColorComponentMediaFill"]
  SETTABLEKS R11 R10 K21 ["BackgroundColor3"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K25 ["::UICorner"]
  DUPTABLE R14 K27 [{"CornerRadius"}]
  LOADK R15 K28 ["$GlobalRadiusCircle"]
  SETTABLEKS R15 R14 K26 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K29 [".XSmall"]
  DUPTABLE R15 K31 [{"Size"}]
  LOADK R16 K32 ["$AvatarXS"]
  SETTABLEKS R16 R15 K30 ["Size"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
