PROTO_0:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["getToolInfoByAlias"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R2 R1 K1 ["actualToolName"]
        7 SETUPVAL                         R2 1
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADK                            R0 K0 [""]
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 0
        5 GETIMPORT                        R1 K2 [pcall]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          REF R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["FFlagAssistantUseRemoteService"]
       15 JUMPIFNOT                        R2 ; [+6]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K4 ["stripCloudPrefix"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 JUMP                             ; [+1]
       22 MOVE                             R1 R0
       23 CLOSEUPVALS                      R0
       24 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NEWTABLE                         R4 0 2
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 SETLIST                          R4 R5 2 [1]
       16 CALL                             R2 2 1
       17 RETURN                           R2 1

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
       21 GETTABLEKS                       R4 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       30 GETTABLEKS                       R5 R5 K11 ["useWithClient"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R1 K12 ["ToolNaming"]
       35 DUPCLOSURE                       R6 K13 [PROTO_3]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 RETURN                           R6 1
