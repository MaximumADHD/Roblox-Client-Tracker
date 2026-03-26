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
        0 DUPTABLE                         R1 K9 [{"threadId", "ephemeral", "isDirty", "title", "isPinned", "createdAt", "updatedAt", "messages", "messageCount"}]
        1 SETTABLEKS                       R0 R1 K0 ["threadId"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K1 ["ephemeral"]
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K2 ["isDirty"]
        9 SETTABLEKS                       R0 R1 K3 ["title"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K4 ["isPinned"]
       14 LOADN                            R2 0
       15 SETTABLEKS                       R2 R1 K5 ["createdAt"]
       17 LOADN                            R2 0
       18 SETTABLEKS                       R2 R1 K6 ["updatedAt"]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K7 ["messages"]
       24 LOADN                            R2 0
       25 SETTABLEKS                       R2 R1 K8 ["messageCount"]
       27 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        4 LOADK                            R5 K1 ["No current thread to add message to"]
        5 GETIMPORT                        R3 K3 [assert]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R4 R0 K4 ["threads"]
       10 GETTABLEKS                       R5 R0 K0 ["_currentThreadId"]
       12 GETTABLE                         R3 R4 R5
       13 JUMPIF                           R3 ; [+4]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R4 R0 K0 ["_currentThreadId"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R3 K5 ["messageCount"]
       20 ADDK                             R4 R4 K6 [1]
       21 SETTABLEKS                       R4 R3 K5 ["messageCount"]
       23 GETUPVAL                         R4 1
       24 MOVE                             R5 R1
       25 MOVE                             R6 R2
       26 GETTABLEKS                       R7 R3 K5 ["messageCount"]
       28 CALL                             R4 3 1
       29 GETTABLEKS                       R5 R3 K7 ["messages"]
       31 FASTCALL2K                       ASSERT R5 K8 ; [+5]
       33 MOVE                             R7 R5
       34 LOADK                            R8 K8 ["Thread messages should not be nil"]
       35 GETIMPORT                        R6 K3 [assert]
       37 CALL                             R6 2 0
       38 GETTABLEKS                       R6 R4 K9 ["messageId"]
       40 SETTABLE                         R4 R5 R6
       41 GETTABLEKS                       R6 R0 K4 ["threads"]
       43 GETTABLEKS                       R7 R0 K0 ["_currentThreadId"]
       45 SETTABLE                         R3 R6 R7
       46 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["assistant"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 1
        5 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["user"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 1
        5 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["system"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 1
        5 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["No current thread to build conversation"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+15]
       11 DUPTABLE                         R1 K8 [{"wasLoadedFromPersistence", "isDirty", "ephemeral", "threads"}]
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K4 ["wasLoadedFromPersistence"]
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R1 K5 ["isDirty"]
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R1 K6 ["ephemeral"]
       21 GETTABLEKS                       R2 R0 K7 ["threads"]
       23 SETTABLEKS                       R2 R1 K7 ["threads"]
       25 RETURN                           R1 1
       26 GETTABLEKS                       R1 R0 K7 ["threads"]
       28 RETURN                           R1 1

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
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R2
       43 DUPCLOSURE                       R7 K19 [PROTO_4]
       44 CAPTURE                          VAL R6
       45 SETTABLEKS                       R7 R4 K20 ["addAssistantMessage"]
       47 DUPCLOSURE                       R7 K21 [PROTO_5]
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R7 R4 K22 ["addUserMessage"]
       51 DUPCLOSURE                       R7 K23 [PROTO_6]
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R7 R4 K24 ["addSystemMessage"]
       55 DUPCLOSURE                       R7 K25 [PROTO_7]
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R7 R4 K26 ["build"]
       59 RETURN                           R4 1
