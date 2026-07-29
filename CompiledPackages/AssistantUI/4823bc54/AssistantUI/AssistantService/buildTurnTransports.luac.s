PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getRequestLLM"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 MOVE                             R3 R2
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSystemMessage"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R3 K2 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K3 ["string"] ; [+3]
       15 MOVE                             R2 R1
       16 RETURN                           R2 1
       17 LOADK                            R2 K4 [""]
       18 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K6 [{"requestLLM", "buildSystemMessage", "listTools", "formatTools", "maxToolCalls", "timeoutMs"}]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K0 ["requestLLM"]
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R3 R2 K1 ["buildSystemMessage"]
       12 GETTABLEKS                       R3 R1 K2 ["listTools"]
       14 SETTABLEKS                       R3 R2 K2 ["listTools"]
       16 GETTABLEKS                       R3 R1 K3 ["formatTools"]
       18 SETTABLEKS                       R3 R2 K3 ["formatTools"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K7 ["FIntMCPAssistantMaxToolCalls"]
       23 SETTABLEKS                       R3 R2 K4 ["maxToolCalls"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K8 ["FIntAssistantProcessEventTimeoutMS"]
       28 SETTABLEKS                       R3 R2 K5 ["timeoutMs"]
       30 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["AssistantService"]
       23 GETTABLEKS                       R4 R4 K10 ["buildToolTransports"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_2]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 RETURN                           R4 1
