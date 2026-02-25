PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETTABLEKS                       R2 R0 K1 ["arguments"]
        4 GETTABLEKS                       R3 R2 K2 ["direct_instance"]
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+7]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["get"]
       11 GETTABLEKS                       R5 R2 K4 ["sourceInstanceId"]
       13 MOVE                             R6 R1
       14 CALL                             R4 2 1
       15 JUMPIF                           R4 ; [+4]
       16 GETIMPORT                        R5 K6 [error]
       18 LOADK                            R6 K7 ["Failed to find instance to clone"]
       19 CALL                             R5 1 0
       20 FASTCALL2K                       ASSERT R4 K8 ; [+5]
       22 MOVE                             R6 R4
       23 LOADK                            R7 K8 ["Luau"]
       24 GETIMPORT                        R5 K10 [assert]
       26 CALL                             R5 2 0
       27 JUMPIF                           R3 ; [+5]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K11 ["StartRecordingActions"]
       31 MOVE                             R6 R1
       32 CALL                             R5 1 0
       33 NAMECALL                         R5 R4 K12 ["Clone"]
       35 CALL                             R5 1 1
       36 JUMPIF                           R5 ; [+10]
       37 JUMPIF                           R3 ; [+5]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R6 R7 K13 ["EndRecordingActions"]
       41 MOVE                             R7 R1
       42 CALL                             R6 1 0
       43 GETIMPORT                        R6 K6 [error]
       45 LOADK                            R7 K14 ["Failed to clone instance"]
       46 CALL                             R6 1 0
       47 GETTABLEKS                       R6 R2 K15 ["newInstanceId"]
       49 JUMPIFNOT                        R6 ; [+7]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R6 R7 K16 ["set"]
       53 GETTABLEKS                       R7 R2 K15 ["newInstanceId"]
       55 MOVE                             R8 R5
       56 CALL                             R6 2 0
       57 SETTABLEKS                       R5 R2 K2 ["direct_instance"]
       59 GETUPVAL                         R6 1
       60 MOVE                             R8 R1
       61 LOADK                            R9 K17 ["SetProperty"]
       62 GETTABLEKS                       R10 R0 K1 ["arguments"]
       64 NAMECALL                         R6 R6 K18 ["ExecuteCommandAsync"]
       66 CALL                             R6 4 0
       67 GETUPVAL                         R7 2
       68 GETTABLEKS                       R6 R7 K19 ["getRequestParent"]
       70 MOVE                             R7 R5
       71 MOVE                             R8 R1
       72 CALL                             R6 2 1
       73 SETTABLEKS                       R6 R5 K20 ["Parent"]
       75 JUMPIF                           R3 ; [+5]
       76 GETUPVAL                         R7 0
       77 GETTABLEKS                       R6 R7 K13 ["EndRecordingActions"]
       79 MOVE                             R7 R1
       80 CALL                             R6 1 0
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R6 R7 K21 ["modifyChatWithInstanceLink"]
       84 MOVE                             R7 R1
       85 MOVE                             R8 R5
       86 LOADK                            R9 K22 ["copied"]
       87 GETTABLEKS                       R10 R2 K23 ["chatGroup"]
       89 JUMPIF                           R10 ; [+2]
       90 GETTABLEKS                       R10 R2 K15 ["newInstanceId"]
       92 CALL                             R6 4 0
       93 RETURN                           R0 0

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
       47 DUPCLOSURE                       R6 K15 [PROTO_0]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R4
       51 RETURN                           R6 1
