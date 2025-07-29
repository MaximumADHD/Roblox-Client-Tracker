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
  LOADK R4 K10 [".Component-TabRow"]
  DUPTABLE R5 K13 [{"AutoButtonColor", "Text"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K11 ["AutoButtonColor"]
  LOADK R6 K14 [""]
  SETTABLEKS R6 R5 K12 ["Text"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K15 [":hover"]
  DUPTABLE R9 K18 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R10 K19 ["$SemanticColorStatesHover"]
  SETTABLEKS R10 R9 K16 ["BackgroundColor3"]
  LOADK R10 K20 ["$SemanticColorStatesHoverTransparency"]
  SETTABLEKS R10 R9 K17 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K21 [".Selected"]
  DUPTABLE R10 K22 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R11 K23 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R11 R10 K17 ["BackgroundTransparency"]
  LOADK R11 K24 ["$SemanticColorStatesSelected"]
  SETTABLEKS R11 R10 K16 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K25 ["::UIPadding"]
  DUPTABLE R11 K30 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
  LOADK R12 K31 ["$GlobalSpace100"]
  SETTABLEKS R12 R11 K26 ["PaddingLeft"]
  LOADK R12 K32 ["$GlobalSpace50"]
  SETTABLEKS R12 R11 K27 ["PaddingTop"]
  LOADK R12 K31 ["$GlobalSpace100"]
  SETTABLEKS R12 R11 K28 ["PaddingRight"]
  LOADK R12 K32 ["$GlobalSpace50"]
  SETTABLEKS R12 R11 K29 ["PaddingBottom"]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
