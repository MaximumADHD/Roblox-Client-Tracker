PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["string"] [+62]
  GETIMPORT R1 K4 [string.find]
  MOVE R2 R0
  LOADK R3 K5 ["got network error status: 429"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["TooManyRequests"]
  RETURN R1 1
  GETIMPORT R1 K4 [string.find]
  MOVE R2 R0
  LOADK R3 K7 ["got network error status: 500"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["ServerError500"]
  RETURN R1 1
  GETIMPORT R1 K4 [string.find]
  MOVE R2 R0
  LOADK R3 K9 ["got network error status: 504"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["ServerError504"]
  RETURN R1 1
  GETIMPORT R1 K4 [string.find]
  MOVE R2 R0
  LOADK R3 K11 ["TextFullyFiltered"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["TextFullyFiltered"]
  RETURN R1 1
  GETIMPORT R1 K4 [string.find]
  MOVE R2 R0
  LOADK R3 K12 ["AccountingFailed"]
  CALL R1 2 1
  JUMPIFNOT R1 [+10]
  GETIMPORT R1 K4 [string.find]
  MOVE R2 R0
  LOADK R3 K13 ["Decrementing account failed"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K14 ["AccountingFailedDecrement"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K15 ["CustomMessage"]
  MOVE R2 R0
  RETURN R1 2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K16 ["Unknown"]
  LOADNIL R2
  RETURN R1 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Enum"]
  GETTABLEKS R2 R3 K8 ["GenerationErrorType"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
