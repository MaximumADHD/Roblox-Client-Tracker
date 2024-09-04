MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["enumerate"]
  CALL R1 1 1
  MOVE R2 R1
  LOADK R3 K8 ["StatusLevel"]
  DUPTABLE R4 K11 [{"Error", "Warning"}]
  LOADK R5 K9 ["Error"]
  SETTABLEKS R5 R4 K9 ["Error"]
  LOADK R5 K10 ["Warning"]
  SETTABLEKS R5 R4 K10 ["Warning"]
  CALL R2 2 -1
  RETURN R2 -1
