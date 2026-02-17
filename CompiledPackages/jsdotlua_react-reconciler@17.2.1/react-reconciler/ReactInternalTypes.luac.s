MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K7 ["shared"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K8 ["ReactWorkTags"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K9 ["ReactTypeOfMode"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K10 ["ReactFiberFlags"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  LOADK R8 K11 ["ReactRootTags"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K4 ["Parent"]
  LOADK R9 K7 ["shared"]
  NAMECALL R7 R7 K6 ["WaitForChild"]
  CALL R7 2 -1
  CALL R6 -1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K4 ["Parent"]
  LOADK R10 K12 ["scheduler"]
  NAMECALL R8 R8 K6 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  NEWTABLE R8 0 0
  RETURN R8 1
