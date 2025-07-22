MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["Style"]
  GETTABLEKS R4 R3 K10 ["StyleKey"]
  GETTABLEKS R5 R3 K11 ["ComponentSymbols"]
  NEWTABLE R6 0 0
  LOADK R9 K12 ["PresetTooltipCheck"]
  NAMECALL R7 R5 K13 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K12 ["PresetTooltipCheck"]
  DUPTABLE R8 K15 [{"Image"}]
  GETTABLEKS R9 R4 K16 ["PresetTooltipCheckImage"]
  SETTABLEKS R9 R8 K14 ["Image"]
  SETTABLE R8 R6 R7
  LOADK R9 K17 ["PresetTooltipX"]
  NAMECALL R7 R5 K13 ["add"]
  CALL R7 2 0
  GETTABLEKS R7 R5 K17 ["PresetTooltipX"]
  DUPTABLE R8 K15 [{"Image"}]
  GETTABLEKS R9 R4 K18 ["PresetTooltipXImage"]
  SETTABLEKS R9 R8 K14 ["Image"]
  SETTABLE R8 R6 R7
  RETURN R6 1
