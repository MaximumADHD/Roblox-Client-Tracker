PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ConfigWebViewInitAutoRetryMaxAttempts"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ConfigWebViewInitAutoRetryMaxAttempts"]
  LOADN R3 5
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  DUPTABLE R0 K5 [{"getIntMaxAttempts"}]
  DUPCLOSURE R1 K6 [PROTO_0]
  SETTABLEKS R1 R0 K4 ["getIntMaxAttempts"]
  RETURN R0 1
