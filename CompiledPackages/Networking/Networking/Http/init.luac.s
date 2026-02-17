MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Networking"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["strict"]
  CALL R1 1 1
  MOVE R2 R1
  DUPTABLE R3 K10 [{"HttpResponse", "Networking", "StatusCodes"}]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K8 ["HttpResponse"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["HttpResponse"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Networking"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["Networking"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["StatusCodes"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["StatusCodes"]
  CALL R2 1 -1
  RETURN R2 -1
