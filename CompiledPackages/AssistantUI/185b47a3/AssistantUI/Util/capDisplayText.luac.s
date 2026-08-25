PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantACPFixPendingToolCall"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 1
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+3]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["FIntAssistantMaxDisplayTextChars"]
       10 LOADN                            R5 0
       11 LOADK                            R6 K2 [199999]
       12 FASTCALL3                        MATH_CLAMP R2 R5 R6
       14 MOVE                             R4 R2
       15 GETIMPORT                        R3 K5 [math.clamp]
       17 CALL                             R3 3 1
       18 LENGTH                           R4 R0
       19 JUMPIFNOTLE                      R4 R3 ; [+2]
       21 RETURN                           R0 1
       22 GETIMPORT                        R4 K8 [string.format]
       24 LOADK                            R5 K9 ["\n\n[... truncated for display: full text is %d characters ...]"]
       25 LENGTH                           R6 R0
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 1
       28 MOVE                             R6 R0
       29 LENGTH                           R9 R4
       30 SUB                              R8 R3 R9
       31 FASTCALL2K                       MATH_MAX R8 K10 ; [+4]
       33 LOADK                            R9 K10 [0]
       34 GETIMPORT                        R7 K12 [math.max]
       36 CALL                             R7 2 1
       37 CALL                             R5 2 1
       38 MOVE                             R7 R5
       39 MOVE                             R8 R4
       40 CONCAT                           R6 R7 R8
       41 RETURN                           R6 1

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
       19 GETTABLEKS                       R3 R1 K9 ["Engine"]
       21 GETTABLEKS                       R3 R3 K10 ["truncateUtf8Safe"]
       23 DUPCLOSURE                       R4 K11 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 RETURN                           R4 1
