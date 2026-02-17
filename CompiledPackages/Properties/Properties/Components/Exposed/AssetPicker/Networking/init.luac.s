MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetPicker"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["tests"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["MockData"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K9 ["Networking"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R0 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["tests"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K11 ["createMockNetworking"]
  CALL R4 1 1
  GETIMPORT R5 K13 [game]
  LOADK R7 K14 ["DebugAssetPickerUseMockNetworking"]
  LOADB R8 0
  NAMECALL R5 R5 K15 ["DefineFastFlag"]
  CALL R5 3 1
  JUMPIFNOT R5 [+12]
  MOVE R6 R4
  DUPTABLE R7 K18 [{"scopes", "assets"}]
  GETTABLEKS R8 R1 K16 ["scopes"]
  SETTABLEKS R8 R7 K16 ["scopes"]
  GETTABLEKS R8 R1 K17 ["assets"]
  SETTABLEKS R8 R7 K17 ["assets"]
  CALL R6 1 1
  RETURN R6 1
  MOVE R6 R2
  RETURN R6 1
