PROTO_0:
  GETUPVAL R2 0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["runDraftCommand: FFlagConvAIAddDraftModeForSceneCreate is not enabled!"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["isDraftModeEnabled"]
  GETTABLEKS R2 R0 K4 ["requestId"]
  CALL R1 1 1
  JUMPIF R1 [+11]
  GETUPVAL R1 2
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K5 ["activeDraftGuids"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["enableDraftMode"]
  GETTABLEKS R2 R0 K4 ["requestId"]
  CALL R1 1 0
  DUPTABLE R1 K8 [{"requestId", "arguments"}]
  GETTABLEKS R2 R0 K4 ["requestId"]
  SETTABLEKS R2 R1 K4 ["requestId"]
  GETTABLEKS R3 R0 K7 ["arguments"]
  GETTABLEKS R2 R3 K7 ["arguments"]
  SETTABLEKS R2 R1 K7 ["arguments"]
  GETUPVAL R2 3
  GETTABLEKS R4 R0 K4 ["requestId"]
  GETTABLEKS R6 R0 K7 ["arguments"]
  GETTABLEKS R5 R6 K9 ["command"]
  MOVE R6 R1
  NAMECALL R2 R2 K10 ["ExecuteCommandAsync"]
  CALL R2 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StreamingService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Utils"]
  GETTABLEKS R3 R4 K10 ["Utils"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETIMPORT R7 K5 [script]
  GETTABLEKS R6 R7 K6 ["Parent"]
  GETTABLEKS R5 R6 K12 ["BuilderNameMap"]
  CALL R4 1 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K13 ["ConvAIAddDraftModeForSceneCreate"]
  NAMECALL R5 R5 K14 ["GetFastFlag"]
  CALL R5 2 1
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R0
  RETURN R6 1
