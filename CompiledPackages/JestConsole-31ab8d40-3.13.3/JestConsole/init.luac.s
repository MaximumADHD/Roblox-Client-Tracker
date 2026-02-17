MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  NEWTABLE R1 8 0
  GETIMPORT R2 K3 [require]
  GETTABLEKS R3 R0 K4 ["helpers"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["helpers"]
  GETIMPORT R2 K3 [require]
  GETTABLEKS R3 R0 K5 ["Console"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["Console"]
  GETIMPORT R3 K3 [require]
  GETTABLEKS R4 R0 K6 ["BufferedConsole"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K7 ["default"]
  SETTABLEKS R4 R1 K6 ["BufferedConsole"]
  GETIMPORT R4 K3 [require]
  GETTABLEKS R5 R0 K8 ["CustomConsole"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K7 ["default"]
  SETTABLEKS R5 R1 K8 ["CustomConsole"]
  GETIMPORT R5 K3 [require]
  GETTABLEKS R6 R0 K9 ["NullConsole"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K7 ["default"]
  SETTABLEKS R6 R1 K9 ["NullConsole"]
  GETIMPORT R7 K3 [require]
  GETTABLEKS R8 R0 K10 ["getConsoleOutput"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K7 ["default"]
  SETTABLEKS R6 R1 K10 ["getConsoleOutput"]
  GETIMPORT R6 K3 [require]
  GETTABLEKS R7 R0 K11 ["types"]
  CALL R6 1 1
  RETURN R1 1
