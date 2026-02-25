PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["SavePlace command is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+13]
       11 GETTABLEKS                       R1 R0 K3 ["arguments"]
       13 GETTABLEKS                       R3 R1 K5 ["toolSource"]
       15 ORK                              R2 R3 K4 [""]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R5 R0 K6 ["requestId"]
       19 MOVE                             R6 R2
       20 NAMECALL                         R3 R3 K7 ["AttemptSaveAndSendPlaceTelemetry"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R3 R0 K6 ["requestId"]
       27 LOADK                            R4 K4 [""]
       28 NAMECALL                         R1 R1 K7 ["AttemptSaveAndSendPlaceTelemetry"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

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
       25 LOADK                            R4 K11 ["StreamingService"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R8 R0 K6 ["Src"]
       31 GETTABLEKS                       R7 R8 K12 ["Flags"]
       33 GETTABLEKS                       R6 R7 K13 ["FFlagConvAIAddSavePlaceCommand"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R4 R5 K14 ["Get"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R9 R0 K6 ["Src"]
       42 GETTABLEKS                       R8 R9 K12 ["Flags"]
       44 GETTABLEKS                       R7 R8 K15 ["FFlagConvAIUpdateSavePlaceTelemetry"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R5 R6 K14 ["Get"]
       49 DUPCLOSURE                       R6 K16 [PROTO_0]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R3
       53 RETURN                           R6 1
