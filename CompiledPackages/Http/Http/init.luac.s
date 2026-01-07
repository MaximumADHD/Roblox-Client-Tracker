MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"API", "BaseUrl", "HttpResponse", "Networking", "StatusCodes"}]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K0 ["API"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["API"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K1 ["BaseUrl"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["BaseUrl"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K2 ["HttpResponse"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["HttpResponse"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K3 ["Networking"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Networking"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K4 ["StatusCodes"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["StatusCodes"]
  RETURN R0 1
