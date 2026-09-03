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
        3 GETTABLEKS                       R1 R1 K0 ["getContentObserver"]
        5 GETUPVAL                         R2 2
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K1 ["onNewMessage"]
        9 GETUPVAL                         R3 3
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["dispatchToolCall"]
       14 DUPTABLE                         R3 K5 [{"name", "arguments"}]
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R4 R4 K6 ["JobWait"]
       18 SETTABLEKS                       R4 R3 K3 ["name"]
       20 DUPTABLE                         R4 K8 [{"jobId"}]
       21 GETUPVAL                         R5 5
       22 SETTABLEKS                       R5 R4 K7 ["jobId"]
       24 SETTABLEKS                       R4 R3 K4 ["arguments"]
       26 DUPTABLE                         R4 K19 [{["client"], ["contentObserver"], ["messageId"], ["threadId"], ["toolIdPrefix"] = "persist_job_", ["userPromptText"], ["blockInput"] = True, ["onComplete"]}]
       27 SETTABLEKS                       R0 R4 K9 ["client"]
       29 SETTABLEKS                       R1 R4 K10 ["contentObserver"]
       31 GETUPVAL                         R5 3
       32 SETTABLEKS                       R5 R4 K11 ["messageId"]
       34 GETUPVAL                         R5 2
       35 SETTABLEKS                       R5 R4 K12 ["threadId"]
       37 GETUPVAL                         R5 6
       38 GETTABLEKS                       R5 R5 K20 ["getSystemReminder"]
       40 LOADK                            R7 K21 ["Persisting the result of background job %*"]
       41 GETUPVAL                         R9 5
       42 NAMECALL                         R7 R7 K22 ["format"]
       44 CALL                             R7 2 1
       45 MOVE                             R6 R7
       46 CALL                             R5 1 1
       47 SETTABLEKS                       R5 R4 K15 ["userPromptText"]
       49 NEWCLOSURE                       R5 P0
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          UPVAL U8
       52 SETTABLEKS                       R5 R4 K18 ["onComplete"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["withClient"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          REF R1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
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
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          REF R2
       37 CAPTURE                          VAL R0
       38 GETUPVAL                         R8 4
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
       53 CAPTURE                          VAL R4
       54 CAPTURE                          UPVAL U3
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
       13 GETUPVAL                         R4 5
       14 CALL                             R4 0 1
       15 LOADNIL                          R5
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K1 ["FFlagAssistantExternalInterface"]
       19 JUMPIFNOT                        R6 ; [+9]
       20 GETUPVAL                         R6 6
       21 GETTABLEKS                       R6 R6 K2 ["useContext"]
       23 GETUPVAL                         R7 7
       24 GETTABLEKS                       R7 R7 K3 ["Context"]
       26 CALL                             R6 1 1
       27 MOVE                             R5 R6
       28 JUMP                             ; [+3]
       29 GETUPVAL                         R6 8
       30 CALL                             R6 0 1
       31 MOVE                             R5 R6
       32 GETUPVAL                         R6 6
       33 GETTABLEKS                       R6 R6 K2 ["useContext"]
       35 GETUPVAL                         R7 9
       36 GETTABLEKS                       R7 R7 K3 ["Context"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R8 R6 K4 ["runWithClient"]
       41 JUMPIFNOTEQKNIL                  R8 ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 GETUPVAL                         R8 10
       46 DUPTABLE                         R9 K11 [{"getContentObserver", "getOrAddMessage", "withClient", "dispatchToolCall", "currentThreadId", "queue"}]
       47 SETTABLEKS                       R0 R9 K5 ["getContentObserver"]
       49 SETTABLEKS                       R1 R9 K6 ["getOrAddMessage"]
       51 SETTABLEKS                       R2 R9 K7 ["withClient"]
       53 SETTABLEKS                       R4 R9 K8 ["dispatchToolCall"]
       55 SETTABLEKS                       R3 R9 K9 ["currentThreadId"]
       57 SETTABLEKS                       R5 R9 K10 ["queue"]
       59 CALL                             R8 1 1
       60 GETUPVAL                         R9 6
       61 GETTABLEKS                       R9 R9 K12 ["useCallback"]
       63 NEWCLOSURE                       R10 P0
       64 CAPTURE                          VAL R8
       65 CAPTURE                          UPVAL U11
       66 CAPTURE                          UPVAL U12
       67 CAPTURE                          UPVAL U13
       68 NEWTABLE                         R11 0 0
       70 CALL                             R9 2 1
       71 GETUPVAL                         R10 10
       72 MOVE                             R11 R9
       73 CALL                             R10 1 1
       74 GETUPVAL                         R11 6
       75 GETTABLEKS                       R11 R11 K13 ["useEffect"]
       77 NEWCLOSURE                       R12 P1
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R10
       80 CAPTURE                          UPVAL U11
       81 NEWTABLE                         R13 0 1
       83 MOVE                             R14 R7
       84 SETLIST                          R13 R14 1 [1]
       86 CALL                             R11 2 0
       87 RETURN                           R0 0

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
       69 GETTABLEKS                       R10 R10 K21 ["useGetContentObserver"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K22 ["useGetOrAddMessage"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K23 ["useLatest"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K19 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K24 ["useThreadId"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K19 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K25 ["useThreadWorkQueue"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K19 ["Hooks"]
      104 GETTABLEKS                       R15 R15 K26 ["useWithClient"]
      106 CALL                             R14 1 1
      107 GETTABLEKS                       R15 R6 K27 ["ToolNames"]
      109 DUPCLOSURE                       R16 K28 [PROTO_0]
      110 DUPCLOSURE                       R17 K29 [PROTO_9]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R15
      125 RETURN                           R17 1
