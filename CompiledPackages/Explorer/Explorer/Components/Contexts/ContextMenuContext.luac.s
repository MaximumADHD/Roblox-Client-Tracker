PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Provider"]
  DUPTABLE R3 K2 [{"value"}]
  SETTABLEKS R0 R3 K1 ["value"]
  GETTABLEKS R4 R0 K3 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K8 ["RpcTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Signal"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["createUnimplemented"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K12 ["createElement"]
  DUPTABLE R6 K17 [{"showContextMenu", "actionTriggeredSignal", "showStreamingContextMenu", "streamingActionTriggeredSignal"}]
  MOVE R7 R4
  LOADK R8 K13 ["showContextMenu"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K13 ["showContextMenu"]
  GETTABLEKS R7 R3 K18 ["new"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K14 ["actionTriggeredSignal"]
  MOVE R7 R4
  LOADK R8 K15 ["showStreamingContextMenu"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K15 ["showStreamingContextMenu"]
  GETTABLEKS R7 R3 K18 ["new"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K16 ["streamingActionTriggeredSignal"]
  GETTABLEKS R7 R1 K19 ["createContext"]
  MOVE R8 R6
  CALL R7 1 1
  DUPCLOSURE R8 K20 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R7
  DUPTABLE R9 K23 [{"Context", "Provider"}]
  SETTABLEKS R7 R9 K21 ["Context"]
  SETTABLEKS R8 R9 K22 ["Provider"]
  RETURN R9 1
