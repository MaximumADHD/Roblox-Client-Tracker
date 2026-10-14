PROTO_0:
        0 LOADK                            R1 K0 ["job_wait_%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["dispatchToolCall"]
        5 DUPTABLE                         R2 K3 [{"name", "arguments"}]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K4 ["JobWait"]
        9 SETTABLEKS                       R3 R2 K1 ["name"]
       11 DUPTABLE                         R3 K6 [{"jobId"}]
       12 GETUPVAL                         R4 3
       13 SETTABLEKS                       R4 R3 K5 ["jobId"]
       15 SETTABLEKS                       R3 R2 K2 ["arguments"]
       17 DUPTABLE                         R3 K14 [{["client"], ["messageId"], ["threadId"], ["userPromptText"], ["blockInput"] = True, ["onComplete"]}]
       18 SETTABLEKS                       R0 R3 K7 ["client"]
       20 GETUPVAL                         R4 4
       21 SETTABLEKS                       R4 R3 K8 ["messageId"]
       23 GETUPVAL                         R4 5
       24 SETTABLEKS                       R4 R3 K9 ["threadId"]
       26 GETUPVAL                         R4 6
       27 GETTABLEKS                       R4 R4 K15 ["getSystemReminder"]
       29 LOADK                            R5 K16 ["Persisting the result of background job %*"]
       30 GETUPVAL                         R7 3
       31 NAMECALL                         R5 R5 K17 ["format"]
       33 CALL                             R5 2 1
       34 CALL                             R4 1 1
       35 SETTABLEKS                       R4 R3 K10 ["userPromptText"]
       37 NEWCLOSURE                       R4 P0
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 SETTABLEKS                       R4 R3 K13 ["onComplete"]
       42 CALL                             R1 2 0
       43 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["withClient"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          REF R1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CALL                             R2 1 0
       15 JUMPIF                           R1 ; [+7]
       16 GETUPVAL                         R2 5
       17 JUMPIFNOT                        R2 ; [+1]
       18 JUMP                             ; [+4]
       19 LOADB                            R2 1
       20 SETUPVAL                         R2 5
       21 GETUPVAL                         R2 6
       22 CALL                             R2 0 0
       23 CLOSEUPVALS                      R1
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADB                            R2 0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["getJob"]
       10 GETUPVAL                         R5 2
       11 CALL                             R4 1 1
       12 JUMPIFNOT                        R4 ; [+3]
       13 GETTABLEKS                       R5 R4 K2 ["resultPersisted"]
       15 JUMPIFNOT                        R5 ; [+7]
       16 JUMPIFNOT                        R2 ; [+1]
       17 JUMP                             ; [+3]
       18 LOADB                            R2 1
       19 MOVE                             R5 R0
       20 CALL                             R5 0 0
       21 CLOSEUPVALS                      R2
       22 RETURN                           R0 0
       23 GETTABLEKS                       R5 R1 K3 ["getOrAddMessage"]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K4 ["ROLE"]
       28 GETTABLEKS                       R6 R6 K5 ["Assistant"]
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          REF R2
       37 CAPTURE                          VAL R0
       38 GETUPVAL                         R8 5
       39 CALL                             R5 3 0
       40 CLOSEUPVALS                      R2
       41 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["getJob"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+10]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["isTerminal"]
       12 GETTABLEKS                       R4 R2 K3 ["status"]
       14 CALL                             R3 1 1
       15 JUMPIFNOT                        R3 ; [+3]
       16 GETTABLEKS                       R3 R2 K4 ["resultPersisted"]
       18 JUMPIFNOT                        R3 ; [+1]
       19 RETURN                           R0 0
       20 LOADK                            R3 K5 ["job_wait_%*"]
       21 MOVE                             R5 R0
       22 NAMECALL                         R3 R3 K6 ["format"]
       24 CALL                             R3 2 1
       25 GETTABLEKS                       R4 R1 K7 ["queue"]
       27 GETTABLEKS                       R4 R4 K8 ["has"]
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 JUMPIFNOT                        R4 ; [+1]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R4 R2 K9 ["threadId"]
       35 JUMPIF                           R4 ; [+2]
       36 GETTABLEKS                       R4 R1 K10 ["currentThreadId"]
       38 GETTABLEKS                       R5 R1 K7 ["queue"]
       40 GETTABLEKS                       R5 R5 K11 ["enqueue"]
       42 DUPTABLE                         R6 K14 [{"key", "threadId", "run"}]
       43 SETTABLEKS                       R3 R6 K12 ["key"]
       45 SETTABLEKS                       R4 R6 K9 ["threadId"]
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R4
       54 SETTABLEKS                       R7 R6 K13 ["run"]
       56 CALL                             R5 1 0
       57 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWCLOSURE                       R0 P0
        4 CAPTURE                          UPVAL U1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["getTerminalJobIds"]
        8 CALL                             R1 0 3
        9 FORGPREP                         R1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K1 ["current"]
       13 MOVE                             R7 R4
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 1 ; [-6]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K2 ["subscribeAll"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K0 ["useContext"]
       11 GETUPVAL                         R5 5
       12 GETTABLEKS                       R5 R5 K1 ["Context"]
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R5 R5 K0 ["useContext"]
       18 GETUPVAL                         R6 6
       19 GETTABLEKS                       R6 R6 K1 ["Context"]
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R7 R5 K2 ["runWithClient"]
       24 JUMPIFNOTEQKNIL                  R7 ; [+2]
       26 LOADB                            R6 0 +1
       27 LOADB                            R6 1
       28 GETUPVAL                         R7 7
       29 DUPTABLE                         R8 K8 [{"getOrAddMessage", "withClient", "dispatchToolCall", "currentThreadId", "queue"}]
       30 SETTABLEKS                       R0 R8 K3 ["getOrAddMessage"]
       32 SETTABLEKS                       R1 R8 K4 ["withClient"]
       34 SETTABLEKS                       R3 R8 K5 ["dispatchToolCall"]
       36 SETTABLEKS                       R2 R8 K6 ["currentThreadId"]
       38 SETTABLEKS                       R4 R8 K7 ["queue"]
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R8 R8 K9 ["useCallback"]
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          VAL R7
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          UPVAL U10
       49 NEWTABLE                         R10 0 0
       51 CALL                             R8 2 1
       52 GETUPVAL                         R9 7
       53 MOVE                             R10 R8
       54 CALL                             R9 1 1
       55 GETUPVAL                         R10 4
       56 GETTABLEKS                       R10 R10 K10 ["useEffect"]
       58 NEWCLOSURE                       R11 P1
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R9
       61 CAPTURE                          UPVAL U8
       62 NEWTABLE                         R12 0 1
       64 MOVE                             R13 R6
       65 SETLIST                          R12 R13 1 [1]
       67 CALL                             R10 2 0
       68 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Jobs"]
       13 GETTABLEKS                       R2 R2 K8 ["JobStore"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K11 ["McpClientContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Parent"]
       29 GETTABLEKS                       R4 R4 K13 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Components"]
       36 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K14 ["ThreadWorkQueueContext"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K15 ["Tools"]
       45 GETTABLEKS                       R6 R6 K16 ["ToolTypes"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K17 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K18 ["Hooks"]
       57 GETTABLEKS                       R8 R8 K19 ["useDispatchToolCall"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       64 GETTABLEKS                       R9 R9 K20 ["useGetOrAddMessage"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K18 ["Hooks"]
       71 GETTABLEKS                       R10 R10 K21 ["useLatest"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       78 GETTABLEKS                       R11 R11 K22 ["useThreadId"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K18 ["Hooks"]
       85 GETTABLEKS                       R12 R12 K23 ["useWithClient"]
       87 CALL                             R11 1 1
       88 GETTABLEKS                       R12 R5 K24 ["ToolNames"]
       90 DUPCLOSURE                       R13 K25 [PROTO_0]
       91 DUPCLOSURE                       R14 K26 [PROTO_9]
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R12
      103 RETURN                           R14 1
