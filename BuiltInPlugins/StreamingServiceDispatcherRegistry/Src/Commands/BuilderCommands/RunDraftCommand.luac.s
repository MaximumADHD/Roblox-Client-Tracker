PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isDraftModeEnabled"]
  GETTABLEKS R2 R0 K1 ["requestId"]
  CALL R1 1 1
  JUMPIF R1 [+11]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["activeDraftGuids"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["enableDraftMode"]
  GETTABLEKS R2 R0 K1 ["requestId"]
  CALL R1 1 0
  DUPTABLE R1 K5 [{"requestId", "arguments"}]
  GETTABLEKS R2 R0 K1 ["requestId"]
  SETTABLEKS R2 R1 K1 ["requestId"]
  GETTABLEKS R3 R0 K4 ["arguments"]
  GETTABLEKS R2 R3 K4 ["arguments"]
  SETTABLEKS R2 R1 K4 ["arguments"]
  GETUPVAL R2 2
  GETTABLEKS R4 R0 K1 ["requestId"]
  GETTABLEKS R6 R0 K4 ["arguments"]
  GETTABLEKS R5 R6 K6 ["command"]
  GETUPVAL R7 3
  CALL R7 0 1
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R0 K4 ["arguments"]
  GETTABLEKS R6 R7 K4 ["arguments"]
  JUMPIF R6 [+1]
  MOVE R6 R1
  NAMECALL R2 R2 K7 ["ExecuteCommandAsync"]
  CALL R2 4 0
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Utils"]
  GETTABLEKS R4 R5 K7 ["Utils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K12 ["Commands"]
  GETTABLEKS R7 R8 K13 ["BuilderCommands"]
  GETTABLEKS R6 R7 K14 ["BuilderNameMap"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K15 ["Flags"]
  GETTABLEKS R7 R8 K16 ["getFFlagConvAICodeRunnerExecuteCommand"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R6
  RETURN R7 1
