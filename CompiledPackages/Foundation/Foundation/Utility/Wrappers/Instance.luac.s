PROTO_0:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["GetPropertyChangedSignal"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"GetPropertyChangedSignal"}]
  DUPCLOSURE R1 K2 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["GetPropertyChangedSignal"]
  RETURN R0 1
