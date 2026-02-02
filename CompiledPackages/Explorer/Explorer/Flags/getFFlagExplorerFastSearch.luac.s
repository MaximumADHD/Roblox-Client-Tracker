PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ExplorerFastSearch"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  CALL R0 0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["createGetSafeFFlag"]
  CALL R1 1 1
  MOVE R2 R1
  LOADK R3 K8 ["ExplorerFilterHasIncrementalSearch"]
  CALL R2 1 1
  GETIMPORT R3 K10 [game]
  LOADK R5 K11 ["ExplorerFastSearch"]
  LOADB R6 0
  NAMECALL R3 R3 K12 ["DefineFastFlag"]
  CALL R3 3 0
  DUPCLOSURE R3 K13 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
