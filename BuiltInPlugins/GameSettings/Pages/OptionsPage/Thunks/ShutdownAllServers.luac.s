PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Metadata"]
  GETTABLEKS R3 R4 K2 ["gameId"]
  GETTABLEKS R4 R1 K3 ["gameOptionsController"]
  MOVE R7 R3
  NAMECALL R5 R4 K4 ["shutdownAllServers"]
  CALL R5 2 0
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_1]
  RETURN R0 1
