MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["enumerate"]
  MOVE R3 R2
  LOADK R4 K10 ["StatusLevel"]
  DUPTABLE R5 K13 [{"Error", "Warning"}]
  LOADK R6 K11 ["Error"]
  SETTABLEKS R6 R5 K11 ["Error"]
  LOADK R6 K12 ["Warning"]
  SETTABLEKS R6 R5 K12 ["Warning"]
  CALL R3 2 -1
  RETURN R3 -1
