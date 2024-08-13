PROTO_0:
  GETTABLEKS R1 R0 K0 ["endSelectionOnDrag"]
  CALL R1 0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["reachedMinimalMouseDistance"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  RETURN R1 1
