MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
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
  LOADK R6 K11 [".Assistant-CustomIconButton-Disabled GuiButton"]
  DUPTABLE R7 K13 [{"BackgroundTransparency"}]
  LOADK R8 K14 [0.5]
  SETTABLEKS R8 R7 K12 ["BackgroundTransparency"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K15 [".Assistant-CustomIconButton-Disabled"]
  DUPTABLE R8 K17 [{"ImageTransparency"}]
  LOADK R9 K14 [0.5]
  SETTABLEKS R9 R8 K16 ["ImageTransparency"]
  CALL R6 2 -1
  SETLIST R4 R5 -1 [1]
  NEWTABLE R5 0 0
  MOVE R6 R3
  LOADK R7 K2 ["Assistant"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
