PROTO_0:
        0 LOADK                            R2 K0 ["job_wait_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

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
       29 LOADK                            R6 K16 ["Persisting the result of background job %*"]
       30 GETUPVAL                         R8 3
       31 NAMECALL                         R6 R6 K17 ["format"]
       33 CALL                             R6 2 1
       34 MOVE                             R5 R6
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K10 ["userPromptText"]
       38 NEWCLOSURE                       R4 P0
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U8
       41 SETTABLEKS                       R4 R3 K13 ["onComplete"]
       43 CALL                             R1 2 0
       44 RETURN                           R0 0

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
       20 LOADK                            R4 K5 ["job_wait_%*"]
       21 MOVE                             R6 R0
       22 NAMECALL                         R4 R4 K6 ["format"]
       24 CALL                             R4 2 1
       25 MOVE                             R3 R4
       26 GETTABLEKS                       R4 R1 K7 ["queue"]
       28 GETTABLEKS                       R4 R4 K8 ["has"]
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 JUMPIFNOT                        R4 ; [+1]
       33 RETURN                           R0 0
       34 GETTABLEKS                       R4 R2 K9 ["threadId"]
       36 JUMPIF                           R4 ; [+2]
       37 GETTABLEKS                       R4 R1 K10 ["currentThreadId"]
       39 GETTABLEKS                       R5 R1 K7 ["queue"]
       41 GETTABLEKS                       R5 R5 K11 ["enqueue"]
       43 DUPTABLE                         R6 K14 [{"key", "threadId", "run"}]
       44 SETTABLEKS                       R3 R6 K12 ["key"]
       46 SETTABLEKS                       R4 R6 K9 ["threadId"]
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R7 R6 K13 ["run"]
       57 CALL                             R5 1 0
       58 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantAsyncSlashCommands"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 3
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 4
       12 CALL                             R3 0 1
       13 LOADNIL                          R4
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K1 ["FFlagAssistantExternalInterface"]
       17 JUMPIFNOT                        R5 ; [+9]
       18 GETUPVAL                         R5 5
       19 GETTABLEKS                       R5 R5 K2 ["useContext"]
       21 GETUPVAL                         R6 6
       22 GETTABLEKS                       R6 R6 K3 ["Context"]
       24 CALL                             R5 1 1
       25 MOVE                             R4 R5
       26 JUMP                             ; [+3]
       27 GETUPVAL                         R5 7
       28 CALL                             R5 0 1
       29 MOVE                             R4 R5
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K2 ["useContext"]
       33 GETUPVAL                         R6 8
       34 GETTABLEKS                       R6 R6 K3 ["Context"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R7 R5 K4 ["runWithClient"]
       39 JUMPIFNOTEQKNIL                  R7 ; [+2]
       41 LOADB                            R6 0 +1
       42 LOADB                            R6 1
       43 GETUPVAL                         R7 9
       44 DUPTABLE                         R8 K10 [{"getOrAddMessage", "withClient", "dispatchToolCall", "currentThreadId", "queue"}]
       45 SETTABLEKS                       R0 R8 K5 ["getOrAddMessage"]
       47 SETTABLEKS                       R1 R8 K6 ["withClient"]
       49 SETTABLEKS                       R3 R8 K7 ["dispatchToolCall"]
       51 SETTABLEKS                       R2 R8 K8 ["currentThreadId"]
       53 SETTABLEKS                       R4 R8 K9 ["queue"]
       55 CALL                             R7 1 1
       56 GETUPVAL                         R8 5
       57 GETTABLEKS                       R8 R8 K11 ["useCallback"]
       59 NEWCLOSURE                       R9 P0
       60 CAPTURE                          VAL R7
       61 CAPTURE                          UPVAL U10
       62 CAPTURE                          UPVAL U11
       63 CAPTURE                          UPVAL U12
       64 NEWTABLE                         R10 0 0
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 9
       68 MOVE                             R10 R8
       69 CALL                             R9 1 1
       70 GETUPVAL                         R10 5
       71 GETTABLEKS                       R10 R10 K12 ["useEffect"]
       73 NEWCLOSURE                       R11 P1
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R9
       76 CAPTURE                          UPVAL U10
       77 NEWTABLE                         R12 0 1
       79 MOVE                             R13 R6
       80 SETLIST                          R12 R13 1 [1]
       82 CALL                             R10 2 0
       83 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["Jobs"]
       18 GETTABLEKS                       R3 R3 K9 ["JobStore"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["McpClientContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Parent"]
       34 GETTABLEKS                       R5 R5 K14 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Components"]
       41 GETTABLEKS                       R6 R6 K11 ["Contexts"]
       43 GETTABLEKS                       R6 R6 K15 ["ThreadWorkQueueContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Tools"]
       50 GETTABLEKS                       R7 R7 K17 ["ToolTypes"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K18 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K19 ["Hooks"]
       62 GETTABLEKS                       R9 R9 K20 ["useDispatchToolCall"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Hooks"]
       69 GETTABLEKS                       R10 R10 K21 ["useGetOrAddMessage"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K22 ["useLatest"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K23 ["useThreadId"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K19 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K24 ["useThreadWorkQueue"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K19 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K25 ["useWithClient"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R6 K26 ["ToolNames"]
      102 DUPCLOSURE                       R15 K27 [PROTO_0]
      103 DUPCLOSURE                       R16 K28 [PROTO_9]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R14
      117 RETURN                           R16 1
