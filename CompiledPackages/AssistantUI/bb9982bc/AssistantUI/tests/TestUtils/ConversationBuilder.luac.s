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
        0 DUPTABLE                         R1 K18 [{[1], ["ephemeral"] = False, ["isDirty"] = False, ["createdAt"] = 0, ["updatedAt"] = 0, ["lastActivityAt"] = 0, ["lastViewedAt"] = -1, ["title"], ["isPinned"] = False, ["messages"], ["messageLoadState"], ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0}]
        1 SETTABLEKS                       R0 R1 K0 ["threadId"]
        3 SETTABLEKS                       R0 R1 K10 ["title"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K12 ["messages"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K19 ["PersistenceLoadStates"]
       12 GETTABLEKS                       R2 R2 K20 ["Disabled"]
       14 SETTABLEKS                       R2 R1 K13 ["messageLoadState"]
       16 RETURN                           R1 1

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
        8 DUPTABLE                         R1 K8 [{["threads"], ["threadLoadState"], ["threadPageState"] = }]
        9 GETTABLEKS                       R2 R0 K4 ["threads"]
       11 SETTABLEKS                       R2 R1 K4 ["threads"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K9 ["PersistenceLoadStates"]
       16 GETTABLEKS                       R2 R2 K10 ["Disabled"]
       18 SETTABLEKS                       R2 R1 K5 ["threadLoadState"]
       20 RETURN                           R1 1

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
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["makeMessage"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 8 0
       23 SETTABLEKS                       R3 R3 K9 ["__index"]
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R4 R3 K11 ["define"]
       29 DUPCLOSURE                       R4 K12 [PROTO_1]
       30 SETTABLEKS                       R4 R3 K13 ["startThread"]
       32 DUPCLOSURE                       R4 K14 [PROTO_2]
       33 CAPTURE                          VAL R1
       34 DUPCLOSURE                       R5 K15 [PROTO_3]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 DUPCLOSURE                       R6 K16 [PROTO_4]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R6 R3 K17 ["addAssistantMessage"]
       42 DUPCLOSURE                       R6 K18 [PROTO_5]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R6 R3 K19 ["addUserMessage"]
       47 DUPCLOSURE                       R6 K20 [PROTO_6]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R6 R3 K21 ["addSystemMessage"]
       52 DUPCLOSURE                       R6 K22 [PROTO_7]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R6 R3 K23 ["build"]
       56 RETURN                           R3 1
