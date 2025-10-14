PROTO_0:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["guestRpcInterface"]
  GETTABLEKS R1 R2 K1 ["instancePickerSubmitInstance"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["create"]
  LOADB R2 0
  CALL R1 1 2
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  NEWCLOSURE R4 P1
  CAPTURE VAL R2
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE VAL R2
  DUPTABLE R6 K5 [{"instancePickerActivated", "instancePickerDeactivated", "instancePickerActiveObservable", "instancePickerSubmitInstance"}]
  SETTABLEKS R3 R6 K1 ["instancePickerActivated"]
  SETTABLEKS R4 R6 K2 ["instancePickerDeactivated"]
  SETTABLEKS R1 R6 K3 ["instancePickerActiveObservable"]
  SETTABLEKS R5 R6 K4 ["instancePickerSubmitInstance"]
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Observable"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K8 ["RpcTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Networking"]
  GETTABLEKS R5 R6 K10 ["createSession"]
  GETTABLEKS R4 R5 K11 ["createSessionTypes"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_3]
  CAPTURE VAL R1
  RETURN R4 1
