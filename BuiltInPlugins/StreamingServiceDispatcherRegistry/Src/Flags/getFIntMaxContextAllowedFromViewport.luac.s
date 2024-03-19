PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MaxContextAllowedFromViewport"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MaxContextAllowedFromViewport"]
  LOADN R3 50
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  DUPCLOSURE R0 K4 [PROTO_0]
  RETURN R0 1
