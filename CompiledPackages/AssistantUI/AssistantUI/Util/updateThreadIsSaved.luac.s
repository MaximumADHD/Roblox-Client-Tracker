PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["updateThreadIsSaved should only be called when multiple chat support is enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["ephemeral"]
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADB R1 1
  GETTABLEKS R2 R0 K4 ["messages"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K5 ["role"]
  JUMPIFNOTEQKS R7 K6 ["user"] [+3]
  LOADB R1 0
  JUMP [+2]
  FORGLOOP R2 2 [-7]
  JUMPIF R1 [+12]
  LOADB R2 0
  SETTABLEKS R2 R0 K3 ["ephemeral"]
  LOADK R3 K7 ["THREAD_%*"]
  GETTABLEKS R5 R0 K8 ["threadId"]
  NAMECALL R3 R3 K9 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  SETTABLEKS R2 R0 K10 ["title"]
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
