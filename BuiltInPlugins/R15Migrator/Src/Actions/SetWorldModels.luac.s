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
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["Action"]
  MOVE R4 R3
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["Name"]
  DUPCLOSURE R6 K10 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1
