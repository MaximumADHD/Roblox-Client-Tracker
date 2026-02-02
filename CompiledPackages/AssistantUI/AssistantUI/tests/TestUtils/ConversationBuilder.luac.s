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
  GETTABLEKS R6 R4 K14 ["messageId"]
  SETTABLE R4 R5 R6
  GETTABLEKS R5 R0 K4 ["threads"]
  GETTABLEKS R6 R0 K0 ["_currentThreadId"]
  SETTABLE R3 R5 R6
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
  GETTABLEKS R6 R4 K15 ["messageId"]
  SETTABLE R4 R5 R6
  GETTABLEKS R5 R0 K4 ["threads"]
  GETTABLEKS R6 R0 K0 ["_currentThreadId"]
  SETTABLE R3 R5 R6
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
  GETTABLEKS R6 R4 K15 ["messageId"]
  SETTABLE R4 R5 R6
  GETTABLEKS R5 R0 K4 ["threads"]
  GETTABLEKS R6 R0 K0 ["_currentThreadId"]
  SETTABLE R3 R5 R6
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
  GETTABLEKS R6 R4 K15 ["messageId"]
  SETTABLE R4 R5 R6
  GETTABLEKS R5 R0 K4 ["threads"]
  GETTABLEKS R6 R0 K0 ["_currentThreadId"]
  SETTABLE R3 R5 R6
  MOVE R2 R0
  RETURN R2 1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_currentThreadId"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["No current thread to build conversation"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
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
  NEWTABLE R3 8 0
  SETTABLEKS R3 R3 K10 ["__index"]
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K12 ["define"]
  DUPCLOSURE R4 K13 [PROTO_1]
  SETTABLEKS R4 R3 K14 ["startThread"]
  DUPCLOSURE R4 K15 [PROTO_2]
  DUPCLOSURE R5 K16 [PROTO_3]
  CAPTURE VAL R2
  DUPCLOSURE R6 K17 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R6 R3 K18 ["addAssistantMessage"]
  DUPCLOSURE R6 K19 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R6 R3 K20 ["addUserMessage"]
  DUPCLOSURE R6 K21 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R6 R3 K22 ["addSystemMessage"]
  DUPCLOSURE R6 K23 [PROTO_7]
  SETTABLEKS R6 R3 K24 ["build"]
  RETURN R3 1
