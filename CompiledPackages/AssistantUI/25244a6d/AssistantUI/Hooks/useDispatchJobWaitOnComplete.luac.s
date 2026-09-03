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
       15 GETUPVAL                         R5 6
       16 CALL                             R5 0 1
       17 GETUPVAL                         R6 7
       18 GETTABLEKS                       R6 R6 K1 ["useContext"]
       20 GETUPVAL                         R7 8
       21 GETTABLEKS                       R7 R7 K2 ["Context"]
       23 CALL                             R6 1 1
       24 GETTABLEKS                       R8 R6 K3 ["runWithClient"]
       26 JUMPIFNOTEQKNIL                  R8 ; [+2]
       28 LOADB                            R7 0 +1
       29 LOADB                            R7 1
       30 GETUPVAL                         R8 9
       31 DUPTABLE                         R9 K10 [{"getContentObserver", "getOrAddMessage", "withClient", "dispatchToolCall", "currentThreadId", "queue"}]
       32 SETTABLEKS                       R0 R9 K4 ["getContentObserver"]
       34 SETTABLEKS                       R1 R9 K5 ["getOrAddMessage"]
       36 SETTABLEKS                       R2 R9 K6 ["withClient"]
       38 SETTABLEKS                       R4 R9 K7 ["dispatchToolCall"]
       40 SETTABLEKS                       R3 R9 K8 ["currentThreadId"]
       42 SETTABLEKS                       R5 R9 K9 ["queue"]
       44 CALL                             R8 1 1
       45 GETUPVAL                         R9 7
       46 GETTABLEKS                       R9 R9 K11 ["useCallback"]
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          VAL R8
       50 CAPTURE                          UPVAL U10
       51 CAPTURE                          UPVAL U11
       52 CAPTURE                          UPVAL U12
       53 NEWTABLE                         R11 0 0
       55 CALL                             R9 2 1
       56 GETUPVAL                         R10 9
       57 MOVE                             R11 R9
       58 CALL                             R10 1 1
       59 GETUPVAL                         R11 7
       60 GETTABLEKS                       R11 R11 K12 ["useEffect"]
       62 NEWCLOSURE                       R12 P1
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R10
       65 CAPTURE                          UPVAL U10
       66 NEWTABLE                         R13 0 1
       68 MOVE                             R14 R7
       69 SETLIST                          R13 R14 1 [1]
       71 CALL                             R11 2 0
       72 RETURN                           R0 0

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
       39 GETTABLEKS                       R6 R0 K15 ["Tools"]
       41 GETTABLEKS                       R6 R6 K16 ["ToolTypes"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K17 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K18 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K19 ["useDispatchToolCall"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       60 GETTABLEKS                       R9 R9 K20 ["useGetContentObserver"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K18 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K21 ["useGetOrAddMessage"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K22 ["useLatest"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K18 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K23 ["useThreadId"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K18 ["Hooks"]
       88 GETTABLEKS                       R13 R13 K24 ["useThreadWorkQueue"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K18 ["Hooks"]
       95 GETTABLEKS                       R14 R14 K25 ["useWithClient"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R14 R5 K26 ["ToolNames"]
      100 DUPCLOSURE                       R15 K27 [PROTO_0]
      101 DUPCLOSURE                       R16 K28 [PROTO_9]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R14
      115 RETURN                           R16 1
