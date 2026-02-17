MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["enumerate"]
  CALL R2 1 1
  MOVE R3 R2
  LOADK R4 K6 ["MaterialPreviewGeometryType"]
  NEWTABLE R5 0 4
  LOADK R6 K7 ["Cube"]
  LOADK R7 K8 ["Dominus"]
  LOADK R8 K9 ["Plane"]
  LOADK R9 K10 ["Sphere"]
  SETLIST R5 R6 4 [1]
  CALL R3 2 -1
  RETURN R3 -1
