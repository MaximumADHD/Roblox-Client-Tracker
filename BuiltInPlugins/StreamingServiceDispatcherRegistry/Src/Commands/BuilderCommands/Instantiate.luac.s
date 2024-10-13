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
  GETTABLEKS R7 R0 K0 ["arguments"]
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
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utils"]
  GETTABLEKS R2 R3 K8 ["CliAdapter"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["GetService"]
  LOADK R3 K10 ["StreamingService"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["GetService"]
  LOADK R4 K11 ["ConversationalAIAcceptanceService"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Utils"]
  GETTABLEKS R5 R6 K7 ["Utils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K12 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K13 ["Commands"]
  GETTABLEKS R8 R9 K14 ["BuilderCommands"]
  GETTABLEKS R7 R8 K15 ["BuilderNameMap"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R7 1
