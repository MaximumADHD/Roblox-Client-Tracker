PROTO_0:
  DUPTABLE R1 K4 [{"type", "raw", "message", "trace"}]
  LOADK R2 K5 ["Error"]
  SETTABLEKS R2 R1 K0 ["type"]
  SETTABLEKS R0 R1 K1 ["raw"]
  LOADK R4 K6 ["^.+:%d+:%s*"]
  LOADK R5 K7 [""]
  NAMECALL R2 R0 K8 ["gsub"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K2 ["message"]
  GETIMPORT R2 K11 [debug.traceback]
  LOADNIL R3
  LOADN R4 2
  CALL R2 2 1
  SETTABLEKS R2 R1 K3 ["trace"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K6 [PROTO_0]
  RETURN R2 1
