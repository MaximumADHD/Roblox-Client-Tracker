PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["threads"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K3 ["_currentThreadId"]
       15 RETURN                           R0 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["_currentThreadId"]
        2 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R1 K7 [{"threadId", "ephemeral", "title", "isPinned", "createdAt", "updatedAt", "messages"}]
        1 SETTABLEKS                       R0 R1 K0 ["threadId"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K1 ["ephemeral"]
        6 LOADK                            R2 K8 [""]
        7 SETTABLEKS                       R2 R1 K2 ["title"]
        9 LOADB                            R2 0
       10 SETTABLEKS                       R2 R1 K3 ["isPinned"]
       12 LOADN                            R2 0
       13 SETTABLEKS                       R2 R1 K4 ["createdAt"]
       15 LOADN                            R2 0
       16 SETTABLEKS                       R2 R1 K5 ["updatedAt"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K6 ["messages"]
       22 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        4 LOADK                            R5 K1 ["No current thread to add message to"]
        5 GETIMPORT                        R3 K3 [assert]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R4 R0 K4 ["threads"]
       10 GETTABLEKS                       R5 R0 K0 ["_currentThreadId"]
       12 GETTABLE                         R3 R4 R5
       13 JUMPIF                           R3 ; [+24]
       14 GETTABLEKS                       R4 R0 K0 ["_currentThreadId"]
       16 DUPTABLE                         R3 K12 [{"threadId", "ephemeral", "title", "isPinned", "createdAt", "updatedAt", "messages"}]
       17 SETTABLEKS                       R4 R3 K5 ["threadId"]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R3 K6 ["ephemeral"]
       22 LOADK                            R5 K13 [""]
       23 SETTABLEKS                       R5 R3 K7 ["title"]
       25 LOADB                            R5 0
       26 SETTABLEKS                       R5 R3 K8 ["isPinned"]
       28 LOADN                            R5 0
       29 SETTABLEKS                       R5 R3 K9 ["createdAt"]
       31 LOADN                            R5 0
       32 SETTABLEKS                       R5 R3 K10 ["updatedAt"]
       34 NEWTABLE                         R5 0 0
       36 SETTABLEKS                       R5 R3 K11 ["messages"]
       38 GETUPVAL                         R4 0
       39 MOVE                             R5 R1
       40 MOVE                             R6 R2
       41 CALL                             R4 2 1
       42 GETTABLEKS                       R5 R3 K11 ["messages"]
       44 FASTCALL2K                       ASSERT R5 K14 ; [+5]
       46 MOVE                             R7 R5
       47 LOADK                            R8 K14 ["Thread messages should not be nil"]
       48 GETIMPORT                        R6 K3 [assert]
       50 CALL                             R6 2 0
       51 GETTABLEKS                       R6 R4 K15 ["messageId"]
       53 SETTABLE                         R4 R5 R6
       54 GETTABLEKS                       R6 R0 K4 ["threads"]
       56 GETTABLEKS                       R7 R0 K0 ["_currentThreadId"]
       58 SETTABLE                         R3 R6 R7
       59 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        4 LOADK                            R5 K1 ["No current thread to add message to"]
        5 GETIMPORT                        R3 K3 [assert]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R4 R0 K4 ["threads"]
       10 GETTABLEKS                       R5 R0 K0 ["_currentThreadId"]
       12 GETTABLE                         R3 R4 R5
       13 JUMPIF                           R3 ; [+24]
       14 GETTABLEKS                       R4 R0 K0 ["_currentThreadId"]
       16 DUPTABLE                         R3 K12 [{"threadId", "ephemeral", "title", "isPinned", "createdAt", "updatedAt", "messages"}]
       17 SETTABLEKS                       R4 R3 K5 ["threadId"]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R3 K6 ["ephemeral"]
       22 LOADK                            R5 K13 [""]
       23 SETTABLEKS                       R5 R3 K7 ["title"]
       25 LOADB                            R5 0
       26 SETTABLEKS                       R5 R3 K8 ["isPinned"]
       28 LOADN                            R5 0
       29 SETTABLEKS                       R5 R3 K9 ["createdAt"]
       31 LOADN                            R5 0
       32 SETTABLEKS                       R5 R3 K10 ["updatedAt"]
       34 NEWTABLE                         R5 0 0
       36 SETTABLEKS                       R5 R3 K11 ["messages"]
       38 GETUPVAL                         R4 0
       39 LOADK                            R5 K14 ["assistant"]
       40 MOVE                             R6 R1
       41 CALL                             R4 2 1
       42 GETTABLEKS                       R5 R3 K11 ["messages"]
       44 FASTCALL2K                       ASSERT R5 K15 ; [+5]
       46 MOVE                             R7 R5
       47 LOADK                            R8 K15 ["Thread messages should not be nil"]
       48 GETIMPORT                        R6 K3 [assert]
       50 CALL                             R6 2 0
       51 GETTABLEKS                       R6 R4 K16 ["messageId"]
       53 SETTABLE                         R4 R5 R6
       54 GETTABLEKS                       R6 R0 K4 ["threads"]
       56 GETTABLEKS                       R7 R0 K0 ["_currentThreadId"]
       58 SETTABLE                         R3 R6 R7
       59 MOVE                             R2 R0
       60 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        4 LOADK                            R5 K1 ["No current thread to add message to"]
        5 GETIMPORT                        R3 K3 [assert]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R4 R0 K4 ["threads"]
       10 GETTABLEKS                       R5 R0 K0 ["_currentThreadId"]
       12 GETTABLE                         R3 R4 R5
       13 JUMPIF                           R3 ; [+24]
       14 GETTABLEKS                       R4 R0 K0 ["_currentThreadId"]
       16 DUPTABLE                         R3 K12 [{"threadId", "ephemeral", "title", "isPinned", "createdAt", "updatedAt", "messages"}]
       17 SETTABLEKS                       R4 R3 K5 ["threadId"]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R3 K6 ["ephemeral"]
       22 LOADK                            R5 K13 [""]
       23 SETTABLEKS                       R5 R3 K7 ["title"]
       25 LOADB                            R5 0
       26 SETTABLEKS                       R5 R3 K8 ["isPinned"]
       28 LOADN                            R5 0
       29 SETTABLEKS                       R5 R3 K9 ["createdAt"]
       31 LOADN                            R5 0
       32 SETTABLEKS                       R5 R3 K10 ["updatedAt"]
       34 NEWTABLE                         R5 0 0
       36 SETTABLEKS                       R5 R3 K11 ["messages"]
       38 GETUPVAL                         R4 0
       39 LOADK                            R5 K14 ["user"]
       40 MOVE                             R6 R1
       41 CALL                             R4 2 1
       42 GETTABLEKS                       R5 R3 K11 ["messages"]
       44 FASTCALL2K                       ASSERT R5 K15 ; [+5]
       46 MOVE                             R7 R5
       47 LOADK                            R8 K15 ["Thread messages should not be nil"]
       48 GETIMPORT                        R6 K3 [assert]
       50 CALL                             R6 2 0
       51 GETTABLEKS                       R6 R4 K16 ["messageId"]
       53 SETTABLE                         R4 R5 R6
       54 GETTABLEKS                       R6 R0 K4 ["threads"]
       56 GETTABLEKS                       R7 R0 K0 ["_currentThreadId"]
       58 SETTABLE                         R3 R6 R7
       59 MOVE                             R2 R0
       60 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        4 LOADK                            R5 K1 ["No current thread to add message to"]
        5 GETIMPORT                        R3 K3 [assert]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R4 R0 K4 ["threads"]
       10 GETTABLEKS                       R5 R0 K0 ["_currentThreadId"]
       12 GETTABLE                         R3 R4 R5
       13 JUMPIF                           R3 ; [+24]
       14 GETTABLEKS                       R4 R0 K0 ["_currentThreadId"]
       16 DUPTABLE                         R3 K12 [{"threadId", "ephemeral", "title", "isPinned", "createdAt", "updatedAt", "messages"}]
       17 SETTABLEKS                       R4 R3 K5 ["threadId"]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R3 K6 ["ephemeral"]
       22 LOADK                            R5 K13 [""]
       23 SETTABLEKS                       R5 R3 K7 ["title"]
       25 LOADB                            R5 0
       26 SETTABLEKS                       R5 R3 K8 ["isPinned"]
       28 LOADN                            R5 0
       29 SETTABLEKS                       R5 R3 K9 ["createdAt"]
       31 LOADN                            R5 0
       32 SETTABLEKS                       R5 R3 K10 ["updatedAt"]
       34 NEWTABLE                         R5 0 0
       36 SETTABLEKS                       R5 R3 K11 ["messages"]
       38 GETUPVAL                         R4 0
       39 LOADK                            R5 K14 ["system"]
       40 MOVE                             R6 R1
       41 CALL                             R4 2 1
       42 GETTABLEKS                       R5 R3 K11 ["messages"]
       44 FASTCALL2K                       ASSERT R5 K15 ; [+5]
       46 MOVE                             R7 R5
       47 LOADK                            R8 K15 ["Thread messages should not be nil"]
       48 GETIMPORT                        R6 K3 [assert]
       50 CALL                             R6 2 0
       51 GETTABLEKS                       R6 R4 K16 ["messageId"]
       53 SETTABLE                         R4 R5 R6
       54 GETTABLEKS                       R6 R0 K4 ["threads"]
       56 GETTABLEKS                       R7 R0 K0 ["_currentThreadId"]
       58 SETTABLE                         R3 R6 R7
       59 MOVE                             R2 R0
       60 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["No current thread to build conversation"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+6]
       11 DUPTABLE                         R1 K5 [{"threads"}]
       12 GETTABLEKS                       R2 R0 K4 ["threads"]
       14 SETTABLEKS                       R2 R1 K4 ["threads"]
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K4 ["threads"]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R5 R0 K7 ["tests"]
       16 GETTABLEKS                       R4 R5 K8 ["TestUtils"]
       18 GETTABLEKS                       R3 R4 K9 ["makeMessage"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Flags"]
       25 GETTABLEKS                       R4 R5 K11 ["FFlagAssistantMultipleChatSupport"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 8 0
       30 SETTABLEKS                       R4 R4 K12 ["__index"]
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R5 R4 K14 ["define"]
       36 DUPCLOSURE                       R5 K15 [PROTO_1]
       37 SETTABLEKS                       R5 R4 K16 ["startThread"]
       39 DUPCLOSURE                       R5 K17 [PROTO_2]
       40 DUPCLOSURE                       R6 K18 [PROTO_3]
       41 CAPTURE                          VAL R2
       42 DUPCLOSURE                       R7 K19 [PROTO_4]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R7 R4 K20 ["addAssistantMessage"]
       46 DUPCLOSURE                       R7 K21 [PROTO_5]
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R7 R4 K22 ["addUserMessage"]
       50 DUPCLOSURE                       R7 K23 [PROTO_6]
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R7 R4 K24 ["addSystemMessage"]
       54 DUPCLOSURE                       R7 K25 [PROTO_7]
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R7 R4 K26 ["build"]
       58 RETURN                           R4 1
