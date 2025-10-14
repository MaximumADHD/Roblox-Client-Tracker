PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["guestRpcInterface"]
  GETTABLEKS R0 R1 K1 ["openInsertObjectMenuAsync"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["guestRpcInterface"]
  GETTABLEKS R0 R1 K1 ["getCapabilitiesAsync"]
  CALL R0 0 1
  GETTABLEKS R1 R0 K2 ["insertObjectButton"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CALL R1 1 0
  GETUPVAL R1 2
  GETTABLEKS R2 R0 K3 ["scriptOpening"]
  SETTABLEKS R2 R1 K4 ["canOpenScripts"]
  GETUPVAL R1 2
  GETTABLEKS R2 R0 K5 ["respondsToScriptClicks"]
  SETTABLEKS R2 R1 K5 ["respondsToScriptClicks"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["create"]
  LOADNIL R2
  CALL R1 1 2
  DUPTABLE R3 K4 [{"openInsertObjectMenuAsyncObservable", "canOpenScripts", "respondsToScriptClicks"}]
  SETTABLEKS R1 R3 K1 ["openInsertObjectMenuAsyncObservable"]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["canOpenScripts"]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["respondsToScriptClicks"]
  GETIMPORT R4 K7 [task.spawn]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CALL R4 1 0
  RETURN R3 1

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
  DUPCLOSURE R4 K12 [PROTO_2]
  CAPTURE VAL R1
  RETURN R4 1
