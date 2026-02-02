MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R2 K3 [script]
  LOADK R4 K4 ["helpers"]
  NAMECALL R2 R2 K5 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K4 ["helpers"]
  GETIMPORT R1 K1 [require]
  GETIMPORT R2 K3 [script]
  LOADK R4 K6 ["Console"]
  NAMECALL R2 R2 K5 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K6 ["Console"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K7 ["BufferedConsole"]
  NAMECALL R3 R3 K5 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R3 R2 K8 ["default"]
  SETTABLEKS R3 R0 K7 ["BufferedConsole"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R4 K3 [script]
  LOADK R6 K9 ["CustomConsole"]
  NAMECALL R4 R4 K5 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETTABLEKS R4 R3 K8 ["default"]
  SETTABLEKS R4 R0 K9 ["CustomConsole"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R5 K3 [script]
  LOADK R7 K10 ["NullConsole"]
  NAMECALL R5 R5 K5 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETTABLEKS R5 R4 K8 ["default"]
  SETTABLEKS R5 R0 K10 ["NullConsole"]
  GETIMPORT R6 K1 [require]
  GETIMPORT R7 K3 [script]
  LOADK R9 K11 ["getConsoleOutput"]
  NAMECALL R7 R7 K5 ["WaitForChild"]
  CALL R7 2 -1
  CALL R6 -1 1
  GETTABLEKS R5 R6 K8 ["default"]
  SETTABLEKS R5 R0 K11 ["getConsoleOutput"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K12 ["types"]
  NAMECALL R6 R6 K5 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  RETURN R0 1
