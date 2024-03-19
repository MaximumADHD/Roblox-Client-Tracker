PROTO_0:
  GETTABLEKS R1 R0 K0 ["arguments"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["StartRecordingActions"]
  GETTABLEKS R3 R0 K2 ["requestId"]
  CALL R2 1 0
  GETIMPORT R2 K5 [Instance.new]
  GETTABLEKS R3 R1 K6 ["className"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K7 ["newInstanceId"]
  JUMPIFNOT R3 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["set"]
  GETTABLEKS R4 R1 K7 ["newInstanceId"]
  MOVE R5 R2
  CALL R3 2 0
  SETTABLEKS R2 R1 K9 ["direct_instance"]
  GETUPVAL R3 1
  GETTABLEKS R5 R0 K2 ["requestId"]
  LOADK R6 K10 ["SetProperty"]
  MOVE R7 R0
  NAMECALL R3 R3 K11 ["ExecuteCommandAsync"]
  CALL R3 4 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K12 ["getRequestParent"]
  MOVE R4 R2
  GETTABLEKS R5 R0 K2 ["requestId"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K13 ["Parent"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["EndRecordingActions"]
  GETTABLEKS R4 R0 K2 ["requestId"]
  CALL R3 1 0
  GETUPVAL R3 3
  GETTABLEKS R5 R0 K2 ["requestId"]
  NAMECALL R3 R3 K15 ["InstanceInserted"]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K16 ["modifyChatWithInstanceLink"]
  GETTABLEKS R4 R0 K2 ["requestId"]
  MOVE R5 R2
  LOADK R6 K17 ["created"]
  GETTABLEKS R7 R1 K18 ["chatGroup"]
  JUMPIF R7 [+2]
  GETTABLEKS R7 R1 K7 ["newInstanceId"]
  CALL R3 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StreamingService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ConversationalAIAcceptanceService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R6 R2 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Utils"]
  GETTABLEKS R4 R5 K12 ["Utils"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R2 K11 ["Src"]
  GETTABLEKS R5 R6 K13 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R9 R2 K11 ["Src"]
  GETTABLEKS R8 R9 K14 ["Commands"]
  GETTABLEKS R7 R8 K15 ["BuilderCommands"]
  GETTABLEKS R6 R7 K16 ["BuilderNameMap"]
  CALL R5 1 1
  DUPCLOSURE R6 K17 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R6 1
