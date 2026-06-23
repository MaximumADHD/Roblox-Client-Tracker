PROTO_0:
        0 SETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"type"}]
        2 LOADK                            R3 K2 ["message_start"]
        3 SETTABLEKS                       R3 R2 K0 ["type"]
        5 MOVE                             R3 R1
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R0 K0 ["tools"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["Provider"]
        6 DUPTABLE                         R4 K2 [{"studioProvider"}]
        7 DUPTABLE                         R5 K10 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          UPVAL U3
       10 SETTABLEKS                       R6 R5 K3 ["requestHandler"]
       12 GETUPVAL                         R6 4
       13 SETTABLEKS                       R6 R5 K4 ["processEvent"]
       15 GETUPVAL                         R6 5
       16 SETTABLEKS                       R6 R5 K5 ["createLLMSession"]
       18 GETUPVAL                         R6 6
       19 SETTABLEKS                       R6 R5 K6 ["cancelSession"]
       21 DUPCLOSURE                       R6 K11 [PROTO_1]
       22 SETTABLEKS                       R6 R5 K7 ["formatTools"]
       24 LOADK                            R6 K12 [""]
       25 SETTABLEKS                       R6 R5 K8 ["systemMessage"]
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R6 R5 K9 ["systemRemindersGetter"]
       31 SETTABLEKS                       R5 R4 K1 ["studioProvider"]
       33 GETTABLEKS                       R5 R0 K13 ["children"]
       35 CALL                             R2 3 -1
       36 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 LOADB                            R0 0 +1
        4 LOADB                            R0 1
        5 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createProcessEventHandler"]
        3 CALL                             R0 0 3
        4 LOADNIL                          R3
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          REF R3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 MOVE                             R5 R4
       14 DUPTABLE                         R6 K5 [{"getProcessEvent", "getCreateLLMSession", "wasRequestHandlerCalled", "getLastRequestHandlerBody"}]
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R7 R6 K1 ["getProcessEvent"]
       19 NEWCLOSURE                       R7 P2
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R7 R6 K2 ["getCreateLLMSession"]
       23 NEWCLOSURE                       R7 P3
       24 CAPTURE                          REF R3
       25 SETTABLEKS                       R7 R6 K3 ["wasRequestHandlerCalled"]
       27 NEWCLOSURE                       R7 P4
       28 CAPTURE                          REF R3
       29 SETTABLEKS                       R7 R6 K4 ["getLastRequestHandlerBody"]
       31 CLOSEUPVALS                      R3
       32 RETURN                           R5 2

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
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["DefaultLLMProvider"]
       20 GETTABLEKS                       R3 R3 K10 ["LLMPackageContextProvider"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K13 ["createElement"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K7 ["Components"]
       36 GETTABLEKS                       R6 R6 K8 ["Contexts"]
       38 GETTABLEKS                       R6 R6 K9 ["DefaultLLMProvider"]
       40 GETTABLEKS                       R6 R6 K14 ["LLMProcessEvent"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K15 ["Hooks"]
       47 GETTABLEKS                       R7 R7 K16 ["SystemReminders"]
       49 GETTABLEKS                       R7 R7 K17 ["useToolsChangedSystemReminders"]
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K18 [PROTO_8]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 RETURN                           R7 1
