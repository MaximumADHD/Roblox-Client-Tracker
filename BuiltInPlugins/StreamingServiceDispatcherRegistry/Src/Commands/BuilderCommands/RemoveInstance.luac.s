PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETTABLEKS                       R2 R0 K1 ["arguments"]
        4 GETTABLEKS                       R3 R2 K2 ["direct_instance"]
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+7]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["get"]
       11 GETTABLEKS                       R5 R2 K4 ["instanceId"]
       13 MOVE                             R6 R1
       14 CALL                             R4 2 1
       15 JUMPIF                           R4 ; [+4]
       16 GETIMPORT                        R5 K6 [error]
       18 LOADK                            R6 K7 ["Failed to find instance to remove"]
       19 CALL                             R5 1 0
       20 FASTCALL2K                       ASSERT R4 K8 ; [+5]
       22 MOVE                             R6 R4
       23 LOADK                            R7 K8 ["Luau"]
       24 GETIMPORT                        R5 K10 [assert]
       26 CALL                             R5 2 0
       27 GETTABLEKS                       R5 R4 K11 ["Parent"]
       29 JUMPIFNOT                        R5 ; [+15]
       30 JUMPIF                           R3 ; [+5]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K12 ["StartRecordingActions"]
       34 MOVE                             R6 R1
       35 CALL                             R5 1 0
       36 LOADNIL                          R5
       37 SETTABLEKS                       R5 R4 K11 ["Parent"]
       39 JUMPIF                           R3 ; [+5]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K13 ["EndRecordingActions"]
       43 MOVE                             R6 R1
       44 CALL                             R5 1 0
       45 RETURN                           R0 0

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
       20 GETTABLEKS                       R4 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R4 K10 ["Types"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 RETURN                           R3 1
