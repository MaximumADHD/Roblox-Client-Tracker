PROTO_0:
  NEWTABLE R1 2 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K2 ["threads"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_currentThreadId"]
  RETURN R0 1

PROTO_1:
  SETTABLEKS R1 R0 K0 ["_currentThreadId"]
  RETURN R0 1

PROTO_2:
  DUPTABLE R1 K7 [{"threadId", "ephemeral", "title", "isPinned", "createdAt", "updatedAt", "messages"}]
  SETTABLEKS R0 R1 K0 ["threadId"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["ephemeral"]
  LOADK R2 K8 [""]
  SETTABLEKS R2 R1 K2 ["title"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["isPinned"]
  LOADN R2 0
  SETTABLEKS R2 R1 K4 ["createdAt"]
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["updatedAt"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K6 ["messages"]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R4 R0 K0 ["_currentThreadId"]
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["No current thread to add message to"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K4 ["threads"]
  GETTABLEKS R5 R0 K0 ["_currentThreadId"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+24]
  GETTABLEKS R4 R0 K0 ["_currentThreadId"]
  DUPTABLE R3 K12 [{"threadId", "ephemeral", "title", "isPinned", "createdAt", "updatedAt", "messages"}]
  SETTABLEKS R4 R3 K5 ["threadId"]
  LOADB R5 0
  SETTABLEKS R5 R3 K6 ["ephemeral"]
  LOADK R5 K13 [""]
  SETTABLEKS R5 R3 K7 ["title"]
  LOADB R5 0
  SETTABLEKS R5 R3 K8 ["isPinned"]
  LOADN R5 0
  SETTABLEKS R5 R3 K9 ["createdAt"]
  LOADN R5 0
  SETTABLEKS R5 R3 K10 ["updatedAt"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R3 K11 ["messages"]
  GETUPVAL R4 0
  MOVE R5 R1
  MOVE R6 R2
  CALL R4 2 1
  GETTABLEKS R5 R3 K11 ["messages"]
  FASTCALL2K ASSERT R5 K14 [+5]
  MOVE R7 R5
  LOADK R8 K14 ["Thread messages should not be nil"]
  GETIMPORT R6 K3 [assert]
  CALL R6 2 0
  GETTABLEKS R6 R4 K15 ["messageId"]
  SETTABLE R4 R5 R6
  GETTABLEKS R6 R0 K4 ["threads"]
  GETTABLEKS R7 R0 K0 ["_currentThreadId"]
  SETTABLE R3 R6 R7
  RETURN R0 1

PROTO_4:
  GETTABLEKS R4 R0 K0 ["_currentThreadId"]
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["No current thread to add message to"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K4 ["threads"]
  GETTABLEKS R5 R0 K0 ["_currentThreadId"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+24]
  GETTABLEKS R4 R0 K0 ["_currentThreadId"]
  DUPTABLE R3 K12 [{"threadId", "ephemeral", "title", "isPinned", "createdAt", "updatedAt", "messages"}]
  SETTABLEKS R4 R3 K5 ["threadId"]
  LOADB R5 0
  SETTABLEKS R5 R3 K6 ["ephemeral"]
  LOADK R5 K13 [""]
  SETTABLEKS R5 R3 K7 ["title"]
  LOADB R5 0
  SETTABLEKS R5 R3 K8 ["isPinned"]
  LOADN R5 0
  SETTABLEKS R5 R3 K9 ["createdAt"]
  LOADN R5 0
  SETTABLEKS R5 R3 K10 ["updatedAt"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R3 K11 ["messages"]
  GETUPVAL R4 0
  LOADK R5 K14 ["assistant"]
  MOVE R6 R1
  CALL R4 2 1
  GETTABLEKS R5 R3 K11 ["messages"]
  FASTCALL2K ASSERT R5 K15 [+5]
  MOVE R7 R5
  LOADK R8 K15 ["Thread messages should not be nil"]
  GETIMPORT R6 K3 [assert]
  CALL R6 2 0
  GETTABLEKS R6 R4 K16 ["messageId"]
  SETTABLE R4 R5 R6
  GETTABLEKS R6 R0 K4 ["threads"]
  GETTABLEKS R7 R0 K0 ["_currentThreadId"]
  SETTABLE R3 R6 R7
  MOVE R2 R0
  RETURN R2 1

PROTO_5:
  GETTABLEKS R4 R0 K0 ["_currentThreadId"]
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["No current thread to add message to"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K4 ["threads"]
  GETTABLEKS R5 R0 K0 ["_currentThreadId"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+24]
  GETTABLEKS R4 R0 K0 ["_currentThreadId"]
  DUPTABLE R3 K12 [{"threadId", "ephemeral", "title", "isPinned", "createdAt", "updatedAt", "messages"}]
  SETTABLEKS R4 R3 K5 ["threadId"]
  LOADB R5 0
  SETTABLEKS R5 R3 K6 ["ephemeral"]
  LOADK R5 K13 [""]
  SETTABLEKS R5 R3 K7 ["title"]
  LOADB R5 0
  SETTABLEKS R5 R3 K8 ["isPinned"]
  LOADN R5 0
  SETTABLEKS R5 R3 K9 ["createdAt"]
  LOADN R5 0
  SETTABLEKS R5 R3 K10 ["updatedAt"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R3 K11 ["messages"]
  GETUPVAL R4 0
  LOADK R5 K14 ["user"]
  MOVE R6 R1
  CALL R4 2 1
  GETTABLEKS R5 R3 K11 ["messages"]
  FASTCALL2K ASSERT R5 K15 [+5]
  MOVE R7 R5
  LOADK R8 K15 ["Thread messages should not be nil"]
  GETIMPORT R6 K3 [assert]
  CALL R6 2 0
  GETTABLEKS R6 R4 K16 ["messageId"]
  SETTABLE R4 R5 R6
  GETTABLEKS R6 R0 K4 ["threads"]
  GETTABLEKS R7 R0 K0 ["_currentThreadId"]
  SETTABLE R3 R6 R7
  MOVE R2 R0
  RETURN R2 1

PROTO_6:
  GETTABLEKS R4 R0 K0 ["_currentThreadId"]
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["No current thread to add message to"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K4 ["threads"]
  GETTABLEKS R5 R0 K0 ["_currentThreadId"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+24]
  GETTABLEKS R4 R0 K0 ["_currentThreadId"]
  DUPTABLE R3 K12 [{"threadId", "ephemeral", "title", "isPinned", "createdAt", "updatedAt", "messages"}]
  SETTABLEKS R4 R3 K5 ["threadId"]
  LOADB R5 0
  SETTABLEKS R5 R3 K6 ["ephemeral"]
  LOADK R5 K13 [""]
  SETTABLEKS R5 R3 K7 ["title"]
  LOADB R5 0
  SETTABLEKS R5 R3 K8 ["isPinned"]
  LOADN R5 0
  SETTABLEKS R5 R3 K9 ["createdAt"]
  LOADN R5 0
  SETTABLEKS R5 R3 K10 ["updatedAt"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R3 K11 ["messages"]
  GETUPVAL R4 0
  LOADK R5 K14 ["system"]
  MOVE R6 R1
  CALL R4 2 1
  GETTABLEKS R5 R3 K11 ["messages"]
  FASTCALL2K ASSERT R5 K15 [+5]
  MOVE R7 R5
  LOADK R8 K15 ["Thread messages should not be nil"]
  GETIMPORT R6 K3 [assert]
  CALL R6 2 0
  GETTABLEKS R6 R4 K16 ["messageId"]
  SETTABLE R4 R5 R6
  GETTABLEKS R6 R0 K4 ["threads"]
  GETTABLEKS R7 R0 K0 ["_currentThreadId"]
  SETTABLE R3 R6 R7
  MOVE R2 R0
  RETURN R2 1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_currentThreadId"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["No current thread to build conversation"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+6]
  DUPTABLE R1 K5 [{"threads"}]
  GETTABLEKS R2 R0 K4 ["threads"]
  SETTABLEKS R2 R1 K4 ["threads"]
  RETURN R1 1
  GETTABLEKS R1 R0 K4 ["threads"]
  RETURN R1 1

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
  GETTABLEKS R5 R0 K7 ["tests"]
  GETTABLEKS R4 R5 K8 ["TestUtils"]
  GETTABLEKS R3 R4 K9 ["makeMessage"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Flags"]
  GETTABLEKS R4 R5 K11 ["FFlagAssistantMultipleChatSupport"]
  CALL R3 1 1
  NEWTABLE R4 8 0
  SETTABLEKS R4 R4 K12 ["__index"]
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K14 ["define"]
  DUPCLOSURE R5 K15 [PROTO_1]
  SETTABLEKS R5 R4 K16 ["startThread"]
  DUPCLOSURE R5 K17 [PROTO_2]
  DUPCLOSURE R6 K18 [PROTO_3]
  CAPTURE VAL R2
  DUPCLOSURE R7 K19 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R7 R4 K20 ["addAssistantMessage"]
  DUPCLOSURE R7 K21 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R7 R4 K22 ["addUserMessage"]
  DUPCLOSURE R7 K23 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R7 R4 K24 ["addSystemMessage"]
  DUPCLOSURE R7 K25 [PROTO_7]
  CAPTURE VAL R3
  SETTABLEKS R7 R4 K26 ["build"]
  RETURN R4 1
