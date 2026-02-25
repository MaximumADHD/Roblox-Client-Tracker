PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["arguments"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["StartRecordingActions"]
        5 GETTABLEKS                       R3 R0 K2 ["requestId"]
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K5 [Instance.new]
       10 GETTABLEKS                       R3 R1 K6 ["className"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R1 K7 ["newInstanceId"]
       15 JUMPIFNOT                        R3 ; [+7]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K8 ["set"]
       19 GETTABLEKS                       R4 R1 K7 ["newInstanceId"]
       21 MOVE                             R5 R2
       22 CALL                             R3 2 0
       23 SETTABLEKS                       R2 R1 K9 ["direct_instance"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R5 R0 K2 ["requestId"]
       28 LOADK                            R6 K10 ["SetProperty"]
       29 GETTABLEKS                       R7 R0 K0 ["arguments"]
       31 NAMECALL                         R3 R3 K11 ["ExecuteCommandAsync"]
       33 CALL                             R3 4 0
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R3 R4 K12 ["getRequestParent"]
       37 MOVE                             R4 R2
       38 GETTABLEKS                       R5 R0 K2 ["requestId"]
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K13 ["Parent"]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R3 R4 K14 ["EndRecordingActions"]
       46 GETTABLEKS                       R4 R0 K2 ["requestId"]
       48 CALL                             R3 1 0
       49 GETUPVAL                         R3 3
       50 GETTABLEKS                       R5 R0 K2 ["requestId"]
       52 NAMECALL                         R3 R3 K15 ["InstanceInserted"]
       54 CALL                             R3 2 0
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R3 R4 K16 ["modifyChatWithInstanceLink"]
       58 GETTABLEKS                       R4 R0 K2 ["requestId"]
       60 MOVE                             R5 R2
       61 LOADK                            R6 K17 ["created"]
       62 GETTABLEKS                       R7 R1 K18 ["chatGroup"]
       64 JUMPIF                           R7 ; [+2]
       65 GETTABLEKS                       R7 R1 K7 ["newInstanceId"]
       67 CALL                             R3 4 0
       68 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Utils"]
       24 GETTABLEKS                       R3 R4 K11 ["CliAdapter"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R5 K12 ["Types"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K10 ["Utils"]
       40 GETTABLEKS                       R5 R6 K10 ["Utils"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R2 K13 ["GetService"]
       45 LOADK                            R6 K14 ["StreamingService"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R2 K13 ["GetService"]
       49 LOADK                            R7 K15 ["ConversationalAIAcceptanceService"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K16 [PROTO_0]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 RETURN                           R7 1
