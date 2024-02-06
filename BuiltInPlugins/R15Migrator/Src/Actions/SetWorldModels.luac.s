PROTO_0:
  DUPTABLE R5 K1 [{"newWorldModelEntries"}]
  NEWTABLE R6 1 0
  DUPTABLE R7 K6 [{"previewModel", "convertedModel", "resetPreviewModel", "resetConvertedModel"}]
  SETTABLEKS R1 R7 K2 ["previewModel"]
  SETTABLEKS R2 R7 K3 ["convertedModel"]
  SETTABLEKS R3 R7 K4 ["resetPreviewModel"]
  SETTABLEKS R4 R7 K5 ["resetConvertedModel"]
  SETTABLE R7 R6 R0
  SETTABLEKS R6 R5 K0 ["newWorldModelEntries"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Util"]
  GETTABLEKS R3 R2 K9 ["Action"]
  MOVE R4 R3
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["Name"]
  DUPCLOSURE R6 K11 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1
