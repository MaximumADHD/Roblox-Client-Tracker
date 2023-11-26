MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETTABLEKS R2 R1 K3 ["Packages"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K6 ["enumerate"]
  CALL R3 1 1
  MOVE R4 R3
  LOADK R5 K7 ["EditingMode"]
  NEWTABLE R6 0 5
  LOADK R7 K8 ["None"]
  LOADK R8 K9 ["Transform"]
  LOADK R9 K10 ["SelectGeometry"]
  LOADK R10 K11 ["SelectSurface"]
  LOADK R11 K12 ["SelectPart"]
  SETLIST R6 R7 5 [1]
  CALL R4 2 -1
  RETURN R4 -1
