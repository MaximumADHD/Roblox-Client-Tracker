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
        0 DUPTABLE                         R1 K13 [{"threadId", "ephemeral", "isDirty", "lastActivityAt", "title", "isPinned", "createdAt", "updatedAt", "messages", "messageLoadState", "messagePageState", "messageCountAdded", "messageCountLoaded"}]
        1 SETTABLEKS                       R0 R1 K0 ["threadId"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K1 ["ephemeral"]
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K2 ["isDirty"]
        9 LOADN                            R2 0
       10 SETTABLEKS                       R2 R1 K3 ["lastActivityAt"]
       12 SETTABLEKS                       R0 R1 K4 ["title"]
       14 LOADB                            R2 0
       15 SETTABLEKS                       R2 R1 K5 ["isPinned"]
       17 LOADN                            R2 0
       18 SETTABLEKS                       R2 R1 K6 ["createdAt"]
       20 LOADN                            R2 0
       21 SETTABLEKS                       R2 R1 K7 ["updatedAt"]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R1 K8 ["messages"]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K14 ["PersistenceLoadStates"]
       30 GETTABLEKS                       R2 R2 K15 ["Disabled"]
       32 SETTABLEKS                       R2 R1 K9 ["messageLoadState"]
       34 LOADNIL                          R2
       35 SETTABLEKS                       R2 R1 K10 ["messagePageState"]
       37 LOADN                            R2 0
       38 SETTABLEKS                       R2 R1 K11 ["messageCountAdded"]
       40 LOADN                            R2 0
       41 SETTABLEKS                       R2 R1 K12 ["messageCountLoaded"]
       43 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        4 MOVE                             R5 R3
        5 LOADK                            R6 K1 ["No current thread to add message to"]
        6 GETIMPORT                        R4 K3 [assert]
        8 CALL                             R4 2 0
        9 GETTABLEKS                       R5 R0 K4 ["threads"]
       11 GETTABLE                         R4 R5 R3
       12 JUMPIF                           R4 ; [+3]
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R1
       18 MOVE                             R7 R2
       19 GETTABLEKS                       R8 R4 K5 ["messageCountAdded"]
       21 MOVE                             R9 R3
       22 CALL                             R5 4 1
       23 GETTABLEKS                       R6 R4 K6 ["messages"]
       25 FASTCALL2K                       ASSERT R6 K7 ; [+5]
       27 MOVE                             R8 R6
       28 LOADK                            R9 K7 ["Thread messages should not be nil"]
       29 GETIMPORT                        R7 K3 [assert]
       31 CALL                             R7 2 0
       32 GETTABLEKS                       R7 R5 K8 ["messageId"]
       34 SETTABLE                         R5 R6 R7
       35 GETTABLEKS                       R7 R4 K5 ["messageCountAdded"]
       37 ADDK                             R7 R7 K9 [1]
       38 SETTABLEKS                       R7 R4 K5 ["messageCountAdded"]
       40 GETTABLEKS                       R7 R0 K4 ["threads"]
       42 SETTABLE                         R4 R7 R3
       43 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        4 MOVE                             R5 R3
        5 LOADK                            R6 K1 ["No current thread to add message to"]
        6 GETIMPORT                        R4 K3 [assert]
        8 CALL                             R4 2 0
        9 GETTABLEKS                       R5 R0 K4 ["threads"]
       11 GETTABLE                         R4 R5 R3
       12 JUMPIF                           R4 ; [+3]
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 1
       17 LOADK                            R6 K5 ["assistant"]
       18 MOVE                             R7 R1
       19 GETTABLEKS                       R8 R4 K6 ["messageCountAdded"]
       21 MOVE                             R9 R3
       22 CALL                             R5 4 1
       23 GETTABLEKS                       R6 R4 K7 ["messages"]
       25 FASTCALL2K                       ASSERT R6 K8 ; [+5]
       27 MOVE                             R8 R6
       28 LOADK                            R9 K8 ["Thread messages should not be nil"]
       29 GETIMPORT                        R7 K3 [assert]
       31 CALL                             R7 2 0
       32 GETTABLEKS                       R7 R5 K9 ["messageId"]
       34 SETTABLE                         R5 R6 R7
       35 GETTABLEKS                       R7 R4 K6 ["messageCountAdded"]
       37 ADDK                             R7 R7 K10 [1]
       38 SETTABLEKS                       R7 R4 K6 ["messageCountAdded"]
       40 GETTABLEKS                       R7 R0 K4 ["threads"]
       42 SETTABLE                         R4 R7 R3
       43 MOVE                             R2 R0
       44 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        4 MOVE                             R5 R3
        5 LOADK                            R6 K1 ["No current thread to add message to"]
        6 GETIMPORT                        R4 K3 [assert]
        8 CALL                             R4 2 0
        9 GETTABLEKS                       R5 R0 K4 ["threads"]
       11 GETTABLE                         R4 R5 R3
       12 JUMPIF                           R4 ; [+3]
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 1
       17 LOADK                            R6 K5 ["user"]
       18 MOVE                             R7 R1
       19 GETTABLEKS                       R8 R4 K6 ["messageCountAdded"]
       21 MOVE                             R9 R3
       22 CALL                             R5 4 1
       23 GETTABLEKS                       R6 R4 K7 ["messages"]
       25 FASTCALL2K                       ASSERT R6 K8 ; [+5]
       27 MOVE                             R8 R6
       28 LOADK                            R9 K8 ["Thread messages should not be nil"]
       29 GETIMPORT                        R7 K3 [assert]
       31 CALL                             R7 2 0
       32 GETTABLEKS                       R7 R5 K9 ["messageId"]
       34 SETTABLE                         R5 R6 R7
       35 GETTABLEKS                       R7 R4 K6 ["messageCountAdded"]
       37 ADDK                             R7 R7 K10 [1]
       38 SETTABLEKS                       R7 R4 K6 ["messageCountAdded"]
       40 GETTABLEKS                       R7 R0 K4 ["threads"]
       42 SETTABLE                         R4 R7 R3
       43 MOVE                             R2 R0
       44 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        4 MOVE                             R5 R3
        5 LOADK                            R6 K1 ["No current thread to add message to"]
        6 GETIMPORT                        R4 K3 [assert]
        8 CALL                             R4 2 0
        9 GETTABLEKS                       R5 R0 K4 ["threads"]
       11 GETTABLE                         R4 R5 R3
       12 JUMPIF                           R4 ; [+3]
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 1
       17 LOADK                            R6 K5 ["system"]
       18 MOVE                             R7 R1
       19 GETTABLEKS                       R8 R4 K6 ["messageCountAdded"]
       21 MOVE                             R9 R3
       22 CALL                             R5 4 1
       23 GETTABLEKS                       R6 R4 K7 ["messages"]
       25 FASTCALL2K                       ASSERT R6 K8 ; [+5]
       27 MOVE                             R8 R6
       28 LOADK                            R9 K8 ["Thread messages should not be nil"]
       29 GETIMPORT                        R7 K3 [assert]
       31 CALL                             R7 2 0
       32 GETTABLEKS                       R7 R5 K9 ["messageId"]
       34 SETTABLE                         R5 R6 R7
       35 GETTABLEKS                       R7 R4 K6 ["messageCountAdded"]
       37 ADDK                             R7 R7 K10 [1]
       38 SETTABLEKS                       R7 R4 K6 ["messageCountAdded"]
       40 GETTABLEKS                       R7 R0 K4 ["threads"]
       42 SETTABLE                         R4 R7 R3
       43 MOVE                             R2 R0
       44 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_currentThreadId"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["No current thread to build conversation"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+16]
       11 DUPTABLE                         R1 K7 [{"threads", "threadLoadState", "threadPageState"}]
       12 GETTABLEKS                       R2 R0 K4 ["threads"]
       14 SETTABLEKS                       R2 R1 K4 ["threads"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K8 ["PersistenceLoadStates"]
       19 GETTABLEKS                       R2 R2 K9 ["Disabled"]
       21 SETTABLEKS                       R2 R1 K5 ["threadLoadState"]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K6 ["threadPageState"]
       26 RETURN                           R1 1
       27 GETTABLEKS                       R1 R0 K4 ["threads"]
       29 RETURN                           R1 1

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
       14 GETTABLEKS                       R3 R0 K7 ["tests"]
       16 GETTABLEKS                       R3 R3 K8 ["TestUtils"]
       18 GETTABLEKS                       R3 R3 K9 ["makeMessage"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 GETTABLEKS                       R4 R4 K11 ["FFlagAssistantMultipleChatPersistence"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 8 0
       30 SETTABLEKS                       R4 R4 K12 ["__index"]
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R5 R4 K14 ["define"]
       36 DUPCLOSURE                       R5 K15 [PROTO_1]
       37 SETTABLEKS                       R5 R4 K16 ["startThread"]
       39 DUPCLOSURE                       R5 K17 [PROTO_2]
       40 CAPTURE                          VAL R1
       41 DUPCLOSURE                       R6 K18 [PROTO_3]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R2
       44 DUPCLOSURE                       R7 K19 [PROTO_4]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R7 R4 K20 ["addAssistantMessage"]
       49 DUPCLOSURE                       R7 K21 [PROTO_5]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R7 R4 K22 ["addUserMessage"]
       54 DUPCLOSURE                       R7 K23 [PROTO_6]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R7 R4 K24 ["addSystemMessage"]
       59 DUPCLOSURE                       R7 K25 [PROTO_7]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R7 R4 K26 ["build"]
       64 RETURN                           R4 1
