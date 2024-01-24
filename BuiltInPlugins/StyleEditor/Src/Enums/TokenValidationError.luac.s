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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K11 ["TokenValidationError"]
  NEWTABLE R6 0 5
  LOADK R7 K12 ["None"]
  LOADK R8 K13 ["InvalidSyntax"]
  LOADK R9 K14 ["DoesNotExist"]
  LOADK R10 K15 ["IncorrectType"]
  LOADK R11 K16 ["CyclicReference"]
  SETLIST R6 R7 5 [1]
  CALL R4 2 1
  RETURN R4 1
