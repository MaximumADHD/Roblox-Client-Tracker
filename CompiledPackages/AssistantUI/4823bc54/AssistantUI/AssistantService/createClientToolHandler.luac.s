PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["user_requested_cancellation"]
        2 NAMECALL                         R0 R0 K1 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["callTool"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K3 ["arguments"]
        9 GETUPVAL                         R4 3
       10 DUPTABLE                         R5 K7 [{"acpSessionId", "messageId", "contentId"}]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K8 ["sessionId"]
       14 SETTABLEKS                       R6 R5 K4 ["acpSessionId"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K5 ["messageId"]
       19 SETTABLEKS                       R6 R5 K5 ["messageId"]
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K6 ["contentId"]
       24 SETTABLEKS                       R6 R5 K6 ["contentId"]
       26 CALL                             R0 5 2
       27 JUMPIFNOT                        R0 ; [+6]
       28 GETUPVAL                         R2 4
       29 DUPTABLE                         R3 K10 [{"result"}]
       30 SETTABLEKS                       R1 R3 K9 ["result"]
       32 CALL                             R2 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 5
       35 FASTCALL1                        TOSTRING R1 ; [+3]
       36 MOVE                             R4 R1
       37 GETIMPORT                        R3 K12 [tostring]
       39 CALL                             R3 1 1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["stripPrefix"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["name"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["getToolCallOptions"]
       10 MOVE                             R5 R3
       11 CALL                             R4 1 1
       12 JUMPIFNOT                        R4 ; [+6]
       13 GETIMPORT                        R5 K5 [table.clone]
       15 MOVE                             R6 R4
       16 CALL                             R5 1 1
       17 MOVE                             R4 R5
       18 JUMP                             ; [+2]
       19 NEWTABLE                         R4 0 0
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K6 ["new"]
       24 CALL                             R5 0 1
       25 SETTABLEKS                       R5 R4 K7 ["signal"]
       27 MOVE                             R6 R2
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          VAL R5
       30 CALL                             R6 1 0
       31 GETIMPORT                        R6 K10 [task.spawn]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          REF R4
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 CALL                             R6 1 0
       41 CLOSEUPVALS                      R4
       42 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U3
        8 RETURN                           R2 1

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
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["AssistantService"]
       32 GETTABLEKS                       R5 R5 K11 ["buildToolTransports"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["ToolNaming"]
       37 DUPCLOSURE                       R6 K13 [PROTO_4]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 RETURN                           R6 1
