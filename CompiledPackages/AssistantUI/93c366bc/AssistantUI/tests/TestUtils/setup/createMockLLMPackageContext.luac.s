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
        0 GETTABLEKS                       R1 R0 K0 ["assistantMode"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["AssistantMode"]
        5 GETTABLEKS                       R2 R3 K2 ["Test"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+7]
        9 NEWTABLE                         R1 0 1
       11 LOADK                            R2 K3 ["- Current Studio Mode: Stop"]
       12 SETLIST                          R1 R2 1 [1]
       14 RETURN                           R1 1
       15 NEWTABLE                         R1 0 0
       17 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Provider"]
        4 DUPTABLE                         R3 K2 [{"studioProvider"}]
        5 DUPTABLE                         R4 K10 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R5 R4 K3 ["requestHandler"]
       10 GETUPVAL                         R5 3
       11 SETTABLEKS                       R5 R4 K4 ["processEvent"]
       13 GETUPVAL                         R5 4
       14 SETTABLEKS                       R5 R4 K5 ["createLLMSession"]
       16 GETUPVAL                         R5 5
       17 SETTABLEKS                       R5 R4 K6 ["cancelSession"]
       19 DUPCLOSURE                       R5 K11 [PROTO_1]
       20 SETTABLEKS                       R5 R4 K7 ["formatTools"]
       22 LOADK                            R5 K12 [""]
       23 SETTABLEKS                       R5 R4 K8 ["systemMessage"]
       25 DUPCLOSURE                       R5 K13 [PROTO_2]
       26 CAPTURE                          UPVAL U6
       27 SETTABLEKS                       R5 R4 K9 ["systemRemindersGetter"]
       29 SETTABLEKS                       R4 R3 K1 ["studioProvider"]
       31 GETTABLEKS                       R4 R0 K14 ["children"]
       33 CALL                             R1 3 -1
       34 RETURN                           R1 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createProcessEventHandler"]
        3 CALL                             R0 0 3
        4 LOADNIL                          R3
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          REF R3
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U3
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
       14 GETTABLEKS                       R6 R0 K7 ["Components"]
       16 GETTABLEKS                       R5 R6 K8 ["Contexts"]
       18 GETTABLEKS                       R4 R5 K9 ["DefaultLLMProvider"]
       20 GETTABLEKS                       R3 R4 K10 ["LLMPackageContextProvider"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R5 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K13 ["createElement"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R9 R0 K7 ["Components"]
       36 GETTABLEKS                       R8 R9 K8 ["Contexts"]
       38 GETTABLEKS                       R7 R8 K9 ["DefaultLLMProvider"]
       40 GETTABLEKS                       R6 R7 K14 ["LLMProcessEvent"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K15 [PROTO_8]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 RETURN                           R6 1
