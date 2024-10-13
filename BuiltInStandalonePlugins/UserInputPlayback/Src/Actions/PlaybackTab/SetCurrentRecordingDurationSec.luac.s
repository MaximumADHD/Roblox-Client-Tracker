PROTO_0:
  LOADN R3 0
  JUMPIFLE R3 R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Duration should not be negative"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  DUPTABLE R1 K4 [{"currentRecordingDurationSec"}]
  SETTABLEKS R0 R1 K3 ["currentRecordingDurationSec"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Action"]
  MOVE R3 R2
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["Name"]
  DUPCLOSURE R5 K10 [PROTO_0]
  CALL R3 2 -1
  RETURN R3 -1
