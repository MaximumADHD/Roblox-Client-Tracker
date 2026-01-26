PROTO_0:
  DUPTABLE R3 K3 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  SETTABLEKS R0 R3 K0 ["assetIds"]
  SETTABLEKS R1 R3 K1 ["positionOverride"]
  SETTABLEKS R2 R3 K2 ["scriptWarningOverride"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K8 ["Util"]
  GETTABLEKS R3 R2 K9 ["Action"]
  MOVE R4 R3
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["Name"]
  DUPCLOSURE R6 K11 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1
