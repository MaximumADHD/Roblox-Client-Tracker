PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableStudioThumbnailController"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"getFFlagEnableStudioThumbnailController"}]
  DUPCLOSURE R1 K2 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["getFFlagEnableStudioThumbnailController"]
  RETURN R0 1
