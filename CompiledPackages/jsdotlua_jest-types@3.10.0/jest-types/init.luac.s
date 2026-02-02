MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R1 K3 [script]
  LOADK R3 K4 ["Circus"]
  NAMECALL R1 R1 K5 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R2 K3 [script]
  LOADK R4 K6 ["Config"]
  NAMECALL R2 R2 K5 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K7 ["Global"]
  NAMECALL R3 R3 K5 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R4 K3 [script]
  LOADK R6 K8 ["TestResult"]
  NAMECALL R4 R4 K5 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R5 K3 [script]
  LOADK R7 K9 ["Transform"]
  NAMECALL R5 R5 K5 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  NEWTABLE R5 0 0
  RETURN R5 1
