MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetExport"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Bin"]
  GETTABLEKS R1 R2 K5 ["Common"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["safeGetFFlagCallback"]
  CALL R2 1 1
  DUPTABLE R3 K10 [{"getFFlagEnableAssetExport"}]
  MOVE R4 R2
  LOADK R5 K11 ["EnableAssetExport"]
  LOADB R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["getFFlagEnableAssetExport"]
  RETURN R3 1
