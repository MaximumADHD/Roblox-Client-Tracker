PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableCageEditingTools_Dev"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+1]
  GETUPVAL R0 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["BaseWrapVerticesModified"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["EnableCageEditingTools_Dev"]
  LOADB R4 0
  NAMECALL R1 R1 K5 ["DefineFastFlag"]
  CALL R1 3 0
  DUPCLOSURE R1 K6 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
