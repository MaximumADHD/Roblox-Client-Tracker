PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CinFixUploadResults"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
