MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["enumerate"]
  CALL R1 1 1
  MOVE R2 R1
  LOADK R3 K7 ["GenerationErrorType"]
  NEWTABLE R4 0 12
  LOADK R5 K8 ["None"]
  LOADK R6 K9 ["Unknown"]
  LOADK R7 K10 ["CustomMessage"]
  LOADK R8 K11 ["NoSession"]
  LOADK R9 K12 ["NoSelectedMaterial"]
  LOADK R10 K13 ["FailedToGenerateMaps"]
  LOADK R11 K14 ["TooManyRequests"]
  LOADK R12 K15 ["ServerError500"]
  LOADK R13 K16 ["ServerError504"]
  LOADK R14 K17 ["TextFullyFiltered"]
  LOADK R15 K18 ["AccountingFailedDecrement"]
  LOADK R16 K19 ["FailedToSetImage"]
  SETLIST R4 R5 12 [1]
  CALL R2 2 -1
  RETURN R2 -1
