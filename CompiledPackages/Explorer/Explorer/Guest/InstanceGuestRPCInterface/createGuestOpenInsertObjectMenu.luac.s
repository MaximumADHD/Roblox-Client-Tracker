PROTO_0:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["openInsertObjectMenuAsync called when the guest does not support opening it"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  LOADK R5 K0 ["opening insert object menu"]
  CALL R2 3 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["openInsertObjectMenuAsync called on unknown instance"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETUPVAL R3 2
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOTEQKNIL R1 [+3]
  DUPCLOSURE R2 K0 [PROTO_0]
  RETURN R2 1
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

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
  GETTABLEKS R7 R0 K6 ["Guest"]
  GETTABLEKS R6 R7 K7 ["InstanceGuestRPCInterface"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["getInstanceById"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_2]
  CAPTURE VAL R3
  RETURN R4 1
