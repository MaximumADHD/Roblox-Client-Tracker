PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  LOADK R1 K1 ["AssetExport"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K2 ["mockComponents"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K3 ["AssetExportController"]
  DUPTABLE R1 K7 [{"analytics", "localization", "exportController"}]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["Analytics"]
  GETTABLEKS R2 R3 K9 ["mock"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K4 ["analytics"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K10 ["Localization"]
  GETTABLEKS R2 R3 K9 ["mock"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K5 ["localization"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K9 ["mock"]
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["exportController"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetExport"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Controllers"]
  GETTABLEKS R4 R5 K11 ["ExportController"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K12 ["TestHelpers"]
  GETTABLEKS R6 R4 K13 ["Instances"]
  GETTABLEKS R5 R6 K14 ["MockPlugin"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["mockAssetExportController"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R7 1
