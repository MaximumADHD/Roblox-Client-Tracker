PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["isFinal"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 DUPTABLE                         R1 K3 [{"requestId", "arguments"}]
        5 GETUPVAL                         R2 0
        6 SETTABLEKS                       R2 R1 K1 ["requestId"]
        8 NEWTABLE                         R2 0 3
       10 GETTABLEKS                       R3 R0 K4 ["command"]
       12 GETTABLEKS                       R5 R0 K4 ["command"]
       14 JUMPIFNOTEQKS                    R5 K5 ["DisplayContent"] ; [+3]
       16 LOADK                            R4 K6 ["StreamText"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K7 ["Dictionary"]
       22 GETTABLEKS                       R5 R6 K8 ["join"]
       24 NEWTABLE                         R6 2 0
       26 GETUPVAL                         R7 0
       27 SETTABLEKS                       R7 R6 K1 ["requestId"]
       29 GETUPVAL                         R7 2
       30 SETTABLEKS                       R7 R6 K9 ["streamId"]
       32 MOVE                             R7 R0
       33 CALL                             R5 2 -1
       34 SETLIST                          R2 R3 -1 [1]
       36 SETTABLEKS                       R2 R1 K2 ["arguments"]
       38 GETUPVAL                         R2 3
       39 CALL                             R2 0 1
       40 JUMPIFNOT                        R2 ; [+9]
       41 GETUPVAL                         R2 4
       42 GETUPVAL                         R4 0
       43 LOADK                            R5 K10 ["QueueRichText"]
       44 GETTABLEKS                       R6 R1 K2 ["arguments"]
       46 NAMECALL                         R2 R2 K11 ["ExecuteCommandAsync"]
       48 CALL                             R2 4 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R2 4
       51 GETUPVAL                         R4 0
       52 LOADK                            R5 K10 ["QueueRichText"]
       53 GETTABLEKS                       R6 R1 K2 ["arguments"]
       55 NAMECALL                         R2 R2 K12 ["InvokeCommand"]
       57 CALL                             R2 4 0
       58 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R0 R1 K0 ["requestId"]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K1 ["streamId"]
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K2 ["MessageBubble"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R2 R2 K3 ["DisplayContent"]
       12 CALL                             R2 3 0
       13 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"requestId", "arguments"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["requestId"]
        4 NEWTABLE                         R1 0 3
        6 LOADK                            R2 K3 ["DisplayContent"]
        7 LOADK                            R3 K4 ["StreamEnded"]
        8 DUPTABLE                         R4 K6 [{"requestId", "streamId"}]
        9 GETUPVAL                         R5 0
       10 SETTABLEKS                       R5 R4 K0 ["requestId"]
       12 GETUPVAL                         R5 1
       13 SETTABLEKS                       R5 R4 K5 ["streamId"]
       15 SETLIST                          R1 R2 3 [1]
       17 SETTABLEKS                       R1 R0 K1 ["arguments"]
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R3 0
       21 LOADK                            R4 K7 ["QueueRichText"]
       22 GETTABLEKS                       R5 R0 K1 ["arguments"]
       24 NAMECALL                         R1 R1 K8 ["InvokeCommand"]
       26 CALL                             R1 4 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETTABLEKS                       R2 R0 K1 ["arguments"]
        4 GETTABLEKS                       R4 R2 K2 ["text"]
        6 GETTABLEKS                       R3 R4 K3 ["streamId"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K4 ["RunningEval"]
       11 JUMPIFNOT                        R4 ; [+20]
       12 JUMPIF                           R3 ; [+19]
       13 GETTABLEKS                       R5 R2 K2 ["text"]
       15 FASTCALL1                        TYPE R5 ; [+2]
       16 GETIMPORT                        R4 K6 [type]
       18 CALL                             R4 1 1
       19 JUMPIFNOTEQKS                    R4 K7 ["string"] ; [+12]
       21 GETIMPORT                        R4 K9 [print]
       23 LOADK                            R6 K10 ["<< DisplayText got collapsed stream >> \n%*\n<< /DisplayText >>"]
       24 GETTABLEKS                       R8 R2 K2 ["text"]
       26 NAMECALL                         R6 R6 K11 ["format"]
       28 CALL                             R6 2 1
       29 MOVE                             R5 R6
       30 CALL                             R4 1 0
       31 RETURN                           R0 0
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 NEWCLOSURE                       R5 P1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U4
       41 NEWCLOSURE                       R6 P2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U3
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R7 R8 K12 ["requestStreamSubscription"]
       48 MOVE                             R8 R1
       49 MOVE                             R9 R3
       50 LOADB                            R10 1
       51 MOVE                             R11 R4
       52 MOVE                             R12 R5
       53 MOVE                             R13 R6
       54 CALL                             R7 6 0
       55 RETURN                           R0 0

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
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Cache"]
       29 GETTABLEKS                       R4 R5 K12 ["StreamCache"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R6 K13 ["Types"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K14 ["GetService"]
       41 LOADK                            R6 K15 ["ChatbotUIService"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R1 K14 ["GetService"]
       45 LOADK                            R7 K16 ["StreamingService"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R11 R0 K6 ["Src"]
       51 GETTABLEKS                       R10 R11 K17 ["Flags"]
       53 GETTABLEKS                       R9 R10 K18 ["FFlagConvAIFixStreamCreationTiming"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R7 R8 K19 ["Get"]
       58 DUPCLOSURE                       R8 K20 [PROTO_3]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 RETURN                           R8 1
