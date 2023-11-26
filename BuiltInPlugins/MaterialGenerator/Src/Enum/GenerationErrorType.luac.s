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
  GETTABLEKS R2 R3 K8 ["enumerate"]
  MOVE R3 R2
  LOADK R4 K9 ["GenerationErrorType"]
  NEWTABLE R5 0 12
  LOADK R6 K10 ["None"]
  LOADK R7 K11 ["Unknown"]
  LOADK R8 K12 ["CustomMessage"]
  LOADK R9 K13 ["NoSession"]
  LOADK R10 K14 ["NoSelectedMaterial"]
  LOADK R11 K15 ["FailedToGenerateMaps"]
  LOADK R12 K16 ["TooManyRequests"]
  LOADK R13 K17 ["ServerError500"]
  LOADK R14 K18 ["ServerError504"]
  LOADK R15 K19 ["TextFullyFiltered"]
  LOADK R16 K20 ["AccountingFailedDecrement"]
  LOADK R17 K21 ["FailedToSetImage"]
  SETLIST R5 R6 12 [1]
  CALL R3 2 -1
  RETURN R3 -1
