PROTO_0:
  GETIMPORT R1 K2 [table.clone]
  NAMECALL R4 R0 K3 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K4 ["Sessions"]
  GETTABLEKS R2 R3 K5 ["sessionQueue"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  GETUPVAL R3 0
  LOADNIL R4
  SETTABLE R4 R1 R3
  GETUPVAL R5 1
  MOVE R6 R2
  LOADNIL R7
  CALL R5 2 -1
  NAMECALL R3 R0 K6 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R5 2
  MOVE R6 R1
  CALL R5 1 -1
  NAMECALL R3 R0 K6 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Actions"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["SetSessionQueue"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R6 R0 K4 ["Src"]
  GETTABLEKS R5 R6 K9 ["Thunks"]
  GETTABLEKS R4 R5 K10 ["UpdateSessionCount"]
  CALL R3 1 1
  DUPCLOSURE R4 K11 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
