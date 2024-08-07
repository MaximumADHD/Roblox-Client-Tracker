MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["getFFlagCOLLAB6176PlaceAnnotations"]
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETIMPORT R3 K14 [error]
  LOADK R4 K15 ["roblox-cli should not be loading standalone plugins"]
  CALL R3 1 0
  RETURN R0 0
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Bin"]
  GETTABLEKS R5 R6 K7 ["Common"]
  GETTABLEKS R4 R5 K16 ["pluginType"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K17 ["get"]
  CALL R4 0 1
  GETTABLEKS R5 R3 K18 ["Standalone"]
  JUMPIFEQ R4 R5 [+2]
  RETURN R0 0
  GETIMPORT R4 K21 [Instance.new]
  LOADK R5 K22 ["Folder"]
  CALL R4 1 1
  GETIMPORT R5 K24 [plugin]
  SETTABLEKS R5 R4 K25 ["Parent"]
  LOADK R5 K26 ["AnnotationInstances"]
  SETTABLEKS R5 R4 K27 ["Name"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Bin"]
  GETTABLEKS R7 R8 K7 ["Common"]
  GETTABLEKS R6 R7 K28 ["setup"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Bin"]
  GETTABLEKS R8 R9 K7 ["Common"]
  GETTABLEKS R7 R8 K29 ["setupMain"]
  CALL R6 1 1
  MOVE R7 R5
  GETIMPORT R8 K24 [plugin]
  MOVE R9 R6
  CALL R7 2 0
  RETURN R0 0
