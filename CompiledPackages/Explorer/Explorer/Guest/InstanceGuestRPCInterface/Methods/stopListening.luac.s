PROTO_0:
  GETUPVAL R2 0
  LOADK R3 K0 ["Stopped listening to %*"]
  MOVE R4 R1
  CALL R2 2 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K2 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K3 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["Instance ID is not a string"]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Guest"]
  GETTABLEKS R3 R4 K7 ["InstanceGuestRPCInterface"]
  GETTABLEKS R2 R3 K8 ["InstanceGuestRPCInterfaceTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K9 ["RpcTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["createDebugLogger"]
  CALL R3 1 1
  MOVE R4 R3
  LOADK R5 K12 ["stopListening"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R4
  RETURN R5 1
