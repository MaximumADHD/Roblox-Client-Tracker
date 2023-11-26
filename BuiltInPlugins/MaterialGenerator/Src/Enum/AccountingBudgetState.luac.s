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
  LOADK R4 K9 ["AccountingBudgetState"]
  NEWTABLE R5 0 5
  LOADK R6 K10 ["Unknown"]
  LOADK R7 K11 ["Querying"]
  LOADK R8 K12 ["Error"]
  LOADK R9 K13 ["Exhausted"]
  LOADK R10 K14 ["Known"]
  SETLIST R5 R6 5 [1]
  CALL R3 2 -1
  RETURN R3 -1
