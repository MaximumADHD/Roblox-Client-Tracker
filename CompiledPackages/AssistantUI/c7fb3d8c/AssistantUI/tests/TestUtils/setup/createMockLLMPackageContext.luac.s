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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Context"]
        4 GETTABLEKS                       R2 R3 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 DUPTABLE                         R4 K9 [{"requestHandler", "processEvent", "createLLMSession", "formatTools", "systemMessage"}]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R5 R4 K4 ["requestHandler"]
       12 GETUPVAL                         R5 3
       13 SETTABLEKS                       R5 R4 K5 ["processEvent"]
       15 GETUPVAL                         R5 4
       16 SETTABLEKS                       R5 R4 K6 ["createLLMSession"]
       18 DUPCLOSURE                       R5 K10 [PROTO_1]
       19 SETTABLEKS                       R5 R4 K7 ["formatTools"]
       21 LOADK                            R5 K11 [""]
       22 SETTABLEKS                       R5 R4 K8 ["systemMessage"]
       24 SETTABLEKS                       R4 R3 K2 ["value"]
       26 GETTABLEKS                       R4 R0 K12 ["children"]
       28 CALL                             R1 3 -1
       29 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 LOADB                            R0 0 +1
        4 LOADB                            R0 1
        5 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createProcessEventHandler"]
        3 CALL                             R0 0 2
        4 LOADNIL                          R2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          REF R2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 MOVE                             R4 R3
       12 DUPTABLE                         R5 K5 [{"getProcessEvent", "getCreateLLMSession", "wasRequestHandlerCalled", "getLastRequestHandlerBody"}]
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R6 R5 K1 ["getProcessEvent"]
       17 NEWCLOSURE                       R6 P2
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R6 R5 K2 ["getCreateLLMSession"]
       21 NEWCLOSURE                       R6 P3
       22 CAPTURE                          REF R2
       23 SETTABLEKS                       R6 R5 K3 ["wasRequestHandlerCalled"]
       25 NEWCLOSURE                       R6 P4
       26 CAPTURE                          REF R2
       27 SETTABLEKS                       R6 R5 K4 ["getLastRequestHandlerBody"]
       29 CLOSEUPVALS                      R2
       30 RETURN                           R4 2

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
       43 DUPCLOSURE                       R6 K15 [PROTO_7]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
