PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableCageEditingTools_Dev"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+3]
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  GETUPVAL R0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["BaseWrapVerticesModified"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["BaseWrapVerticesModifiedArgument"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["EnableCageEditingTools_Dev"]
  LOADB R5 0
  NAMECALL R2 R2 K6 ["DefineFastFlag"]
  CALL R2 3 0
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1
