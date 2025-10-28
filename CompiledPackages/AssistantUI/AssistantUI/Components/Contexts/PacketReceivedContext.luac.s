PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["default"]
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["default is not supported in this context"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["useState"]
  LOADN R2 0
  CALL R1 1 2
  DUPTABLE R3 K7 [{"lastPacketTime", "setLastPacketTime"}]
  GETTABLEKS R5 R0 K5 ["lastPacketTime"]
  OR R4 R5 R1
  SETTABLEKS R4 R3 K5 ["lastPacketTime"]
  GETTABLEKS R5 R0 K6 ["setLastPacketTime"]
  OR R4 R5 R2
  SETTABLEKS R4 R3 K6 ["setLastPacketTime"]
  GETUPVAL R4 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["Provider"]
  DUPTABLE R6 K10 [{"value"}]
  SETTABLEKS R3 R6 K9 ["value"]
  GETTABLEKS R7 R0 K11 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createElement"]
  DUPTABLE R3 K12 [{"default", "lastPacketTime", "setLastPacketTime"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K9 ["default"]
  LOADN R4 0
  SETTABLEKS R4 R3 K10 ["lastPacketTime"]
  DUPCLOSURE R4 K13 [PROTO_0]
  SETTABLEKS R4 R3 K11 ["setLastPacketTime"]
  GETTABLEKS R4 R1 K14 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  DUPCLOSURE R5 K15 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPTABLE R6 K18 [{"Context", "Provider"}]
  SETTABLEKS R4 R6 K16 ["Context"]
  SETTABLEKS R5 R6 K17 ["Provider"]
  RETURN R6 1
