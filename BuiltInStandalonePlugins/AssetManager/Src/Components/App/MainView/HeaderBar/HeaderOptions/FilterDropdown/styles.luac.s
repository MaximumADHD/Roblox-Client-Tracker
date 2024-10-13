MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".FilterDropdown"]
  DUPTABLE R5 K12 [{"Size"}]
  LOADK R6 K13 ["$HeaderButtonSize"]
  SETTABLEKS R6 R5 K11 ["Size"]
  NEWTABLE R6 0 0
  CALL R3 3 -1
  RETURN R3 -1
