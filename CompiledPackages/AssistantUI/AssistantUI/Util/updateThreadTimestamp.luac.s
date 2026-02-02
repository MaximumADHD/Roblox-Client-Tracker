PROTO_0:
  GETUPVAL R3 0
  CALL R3 0 1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["updateThreadTimestamp should only be called when multiple chat support is enabled"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETIMPORT R2 K5 [os.clock]
  CALL R2 0 1
  SETTABLEKS R2 R0 K6 ["updatedAt"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R3 R1 K7 ["setCreatedAt"]
  JUMPIFNOT R3 [+2]
  SETTABLEKS R2 R0 K8 ["createdAt"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Flags"]
  GETTABLEKS R3 R4 K8 ["FFlagAssistantMultipleChatSupport"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
