PROTO_0:
  DUPTABLE R4 K4 [{"colorMap", "metalnessMap", "normalMap", "roughnessMap"}]
  SETTABLEKS R0 R4 K0 ["colorMap"]
  SETTABLEKS R1 R4 K1 ["metalnessMap"]
  SETTABLEKS R2 R4 K2 ["normalMap"]
  SETTABLEKS R3 R4 K3 ["roughnessMap"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["DynamicHeadExportTool"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K8 ["Util"]
  GETTABLEKS R1 R2 K9 ["Action"]
  MOVE R2 R1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K10 ["Name"]
  DUPCLOSURE R4 K11 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
