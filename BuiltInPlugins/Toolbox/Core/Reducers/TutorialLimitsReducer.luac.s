PROTO_0:
  DUPTABLE R2 K3 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  GETTABLEKS R3 R1 K0 ["assetIds"]
  SETTABLEKS R3 R2 K0 ["assetIds"]
  GETTABLEKS R3 R1 K1 ["positionOverride"]
  SETTABLEKS R3 R2 K1 ["positionOverride"]
  GETTABLEKS R3 R1 K2 ["scriptWarningOverride"]
  SETTABLEKS R3 R2 K2 ["scriptWarningOverride"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Rodux"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K9 ["Core"]
  GETTABLEKS R4 R5 K10 ["Actions"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R4 K11 ["SetTutorialLimits"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K12 ["createReducer"]
  DUPTABLE R7 K16 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  LOADNIL R8
  SETTABLEKS R8 R7 K13 ["assetIds"]
  LOADNIL R8
  SETTABLEKS R8 R7 K14 ["positionOverride"]
  LOADB R8 0
  SETTABLEKS R8 R7 K15 ["scriptWarningOverride"]
  NEWTABLE R8 1 0
  GETTABLEKS R9 R5 K17 ["name"]
  DUPCLOSURE R10 K18 [PROTO_0]
  SETTABLE R10 R8 R9
  CALL R6 2 -1
  RETURN R6 -1
