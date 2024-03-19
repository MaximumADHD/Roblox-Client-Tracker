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
  MOVE R6 R1
  NAMECALL R2 R2 K7 ["ExecuteCommandAsync"]
  CALL R2 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StreamingService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Utils"]
  GETTABLEKS R3 R4 K11 ["Utils"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K12 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R8 R1 K10 ["Src"]
  GETTABLEKS R7 R8 K13 ["Commands"]
  GETTABLEKS R6 R7 K14 ["BuilderCommands"]
  GETTABLEKS R5 R6 K15 ["BuilderNameMap"]
  CALL R4 1 1
  DUPCLOSURE R5 K16 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R0
  RETURN R5 1
