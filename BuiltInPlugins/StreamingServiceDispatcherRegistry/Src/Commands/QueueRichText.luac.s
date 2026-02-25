PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["requestId"]
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R5 3
        6 GETTABLEKS                       R4 R5 K1 ["arguments"]
        8 NAMECALL                         R0 R0 K2 ["ExecuteCommandAsync"]
       10 CALL                             R0 4 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["arguments"]
        2 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        3 GETIMPORT                        R1 K2 [unpack]
        5 CALL                             R1 1 3
        6 JUMPIFNOTEQKS                    R1 K3 ["DisplayContent"] ; [+8]
        8 GETUPVAL                         R4 0
        9 MOVE                             R6 R2
       10 MOVE                             R7 R3
       11 NAMECALL                         R4 R4 K3 ["DisplayContent"]
       13 CALL                             R4 3 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R4 K5 [pcall]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R3
       22 CALL                             R4 1 2
       23 JUMPIF                           R4 ; [+8]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R8 R0 K6 ["requestId"]
       27 MOVE                             R9 R1
       28 MOVE                             R10 R5
       29 NAMECALL                         R6 R6 K7 ["SendCommandErrorTelemetry"]
       31 CALL                             R6 4 0
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utils"]
       13 GETTABLEKS                       R2 R3 K8 ["CliAdapter"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K10 ["GetService"]
       25 LOADK                            R4 K11 ["ChatbotUIService"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R1 K10 ["GetService"]
       29 LOADK                            R5 K12 ["StreamingService"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R1 K10 ["GetService"]
       33 LOADK                            R6 K13 ["ConversationalAIAcceptanceService"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K14 [PROTO_1]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 RETURN                           R6 1
