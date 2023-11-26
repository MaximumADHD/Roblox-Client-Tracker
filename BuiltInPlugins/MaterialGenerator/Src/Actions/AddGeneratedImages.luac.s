PROTO_0:
  GETUPVAL R5 0
  CALL R5 0 1
  NOT R4 R5
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Expected FFlagConcurrentMaterialMapsRequests to be false"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  DUPTABLE R3 K6 [{"textPrompt", "temporaryImageIds", "generationId"}]
  SETTABLEKS R0 R3 K3 ["textPrompt"]
  SETTABLEKS R1 R3 K4 ["temporaryImageIds"]
  SETTABLEKS R2 R3 K5 ["generationId"]
  RETURN R3 1

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
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Action"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Flags"]
  GETTABLEKS R4 R5 K11 ["getFFlagConcurrentMaterialMapsRequests"]
  CALL R3 1 1
  MOVE R4 R2
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K12 ["Name"]
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R3
  CALL R4 2 -1
  RETURN R4 -1
