PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["isAllowed"]
        6 GETTABLEKS                       R3 R1 K2 ["name"]
        8 CALL                             R2 1 1
        9 JUMPIF                           R2 ; [+2]
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R1 K3 ["input"]
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R4 R2
       16 GETIMPORT                        R3 K5 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+7]
       21 GETUPVAL                         R4 1
       22 GETTABLE                         R3 R2 R4
       23 JUMPIFNOTEQKB                    R3 TRUE ; [+3]
       25 LOADB                            R3 1
       26 RETURN                           R3 1
       27 GETTABLEKS                       R3 R0 K7 ["toolResult"]
       29 MOVE                             R4 R3
       30 JUMPIFNOT                        R4 ; [+2]
       31 GETTABLEKS                       R4 R3 K8 ["structuredContent"]
       33 LOADB                            R5 0
       34 FASTCALL1                        TYPEOF R4 ; [+3]
       35 MOVE                             R7 R4
       36 GETIMPORT                        R6 K5 [typeof]
       38 CALL                             R6 1 1
       39 JUMPIFNOTEQKS                    R6 K6 ["table"] ; [+7]
       41 GETTABLEKS                       R6 R4 K9 ["jobId"]
       43 JUMPIFNOTEQKNIL                  R6 ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
        3 JUMPIFNOT                        R1 ; [+56]
        4 GETTABLEKS                       R2 R0 K1 ["toolUse"]
        6 JUMPIFNOT                        R2 ; [+7]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["isAllowed"]
       10 GETTABLEKS                       R4 R2 K3 ["name"]
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADB                            R1 0
       15 JUMP                             ; [+35]
       16 GETTABLEKS                       R3 R2 K4 ["input"]
       18 FASTCALL1                        TYPEOF R3 ; [+3]
       19 MOVE                             R5 R3
       20 GETIMPORT                        R4 K6 [typeof]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQKS                    R4 K7 ["table"] ; [+7]
       25 GETUPVAL                         R5 2
       26 GETTABLE                         R4 R3 R5
       27 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
       29 LOADB                            R1 1
       30 JUMP                             ; [+20]
       31 GETTABLEKS                       R4 R0 K8 ["toolResult"]
       33 MOVE                             R5 R4
       34 JUMPIFNOT                        R5 ; [+2]
       35 GETTABLEKS                       R5 R4 K9 ["structuredContent"]
       37 LOADB                            R1 0
       38 FASTCALL1                        TYPEOF R5 ; [+3]
       39 MOVE                             R7 R5
       40 GETIMPORT                        R6 K6 [typeof]
       42 CALL                             R6 1 1
       43 JUMPIFNOTEQKS                    R6 K7 ["table"] ; [+7]
       45 GETTABLEKS                       R6 R5 K10 ["jobId"]
       47 JUMPIFNOTEQKNIL                  R6 ; [+2]
       49 LOADB                            R1 0 +1
       50 LOADB                            R1 1
       51 JUMPIFNOT                        R1 ; [+8]
       52 GETUPVAL                         R1 3
       53 GETTABLEKS                       R1 R1 K11 ["get"]
       55 GETUPVAL                         R2 4
       56 GETTABLEKS                       R2 R2 K12 ["Type"]
       58 CALL                             R1 1 -1
       59 RETURN                           R1 -1
       60 GETUPVAL                         R1 3
       61 GETTABLEKS                       R1 R1 K11 ["get"]
       63 GETTABLEKS                       R2 R0 K13 ["type"]
       65 CALL                             R1 1 -1
       66 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["AsyncContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Jobs"]
       22 GETTABLEKS                       R3 R3 K11 ["AsyncToolRunner"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K7 ["ContentWidgets"]
       31 GETTABLEKS                       R4 R4 K12 ["ContentWidgetRegistry"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K13 ["Flags"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Types"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K15 ["ASYNC_ARG"]
       46 DUPCLOSURE                       R7 K16 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 DUPCLOSURE                       R8 K17 [PROTO_1]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 RETURN                           R8 1
