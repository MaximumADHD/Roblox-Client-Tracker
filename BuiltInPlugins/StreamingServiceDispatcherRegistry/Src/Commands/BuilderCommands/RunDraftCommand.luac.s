PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isDraftModeEnabled"]
        3 GETTABLEKS                       R2 R0 K1 ["requestId"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+11]
        7 GETUPVAL                         R1 1
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K2 ["activeDraftGuids"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K3 ["enableDraftMode"]
       15 GETTABLEKS                       R2 R0 K1 ["requestId"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R3 R0 K1 ["requestId"]
       21 GETTABLEKS                       R5 R0 K4 ["arguments"]
       23 GETTABLEKS                       R4 R5 K5 ["command"]
       25 GETTABLEKS                       R6 R0 K4 ["arguments"]
       27 GETTABLEKS                       R5 R6 K4 ["arguments"]
       29 NAMECALL                         R1 R1 K6 ["ExecuteCommandAsync"]
       31 CALL                             R1 4 0
       32 RETURN                           R0 0

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
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R5
       51 RETURN                           R6 1
