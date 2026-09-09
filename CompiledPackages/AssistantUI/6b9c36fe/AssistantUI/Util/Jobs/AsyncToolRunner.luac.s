PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K2 [string.split]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["FStringAssistantJobRunTools"]
        7 LOADK                            R3 K4 [","]
        8 CALL                             R1 2 1
        9 MOVE                             R2 R1
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 LOADB                            R7 1
       14 SETTABLE                         R7 R0 R6
       15 FORGLOOP                         R2 2 ; [-3]
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["name"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 DUPTABLE                         R3 K3 [{[1] = "async", ["schema"]}]
        9 DUPTABLE                         R4 K7 [{["type"] = "boolean", ["description"]}]
       10 GETIMPORT                        R5 K10 [table.concat]
       12 NEWTABLE                         R6 0 4
       14 LOADK                            R7 K11 ["Run this tool asynchronously and return immediately with a jobId, without blocking on completion."]
       15 LOADK                            R8 K12 ["Use this when you want to kick off the work (e.g. several generations at once, or when the user does not need to wait for the result) and continue with other tasks."]
       16 LOADK                            R10 K13 ["The tool runs in the background and updates its own UI. Poll the returned jobId with the %* tool only when you actually need the final result."]
       17 GETUPVAL                         R12 2
       18 GETTABLEKS                       R12 R12 K14 ["JobWait"]
       20 NAMECALL                         R10 R10 K15 ["format"]
       22 CALL                             R10 2 1
       23 MOVE                             R9 R10
       24 LOADK                            R10 K16 ["If you DO need the result before proceeding, omit this argument (or set it false) and call the tool normally."]
       25 SETLIST                          R6 R7 4 [1]
       27 LOADK                            R7 K17 [" "]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K6 ["description"]
       31 SETTABLEKS                       R4 R3 K2 ["schema"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

PROTO_3:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_4:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 2
        8 LOADNIL                          R2
        9 JUMPIFNOT                        R0 ; [+2]
       10 MOVE                             R2 R1
       11 JUMP                             ; [+18]
       12 GETUPVAL                         R3 4
       13 CALL                             R3 0 1
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R6 R1
       16 GETIMPORT                        R5 K3 [tostring]
       18 CALL                             R5 1 1
       19 NAMECALL                         R3 R3 K4 ["addText"]
       21 CALL                             R3 2 1
       22 LOADB                            R5 1
       23 NAMECALL                         R3 R3 K5 ["setError"]
       25 CALL                             R3 2 1
       26 NAMECALL                         R3 R3 K6 ["build"]
       28 CALL                             R3 1 1
       29 MOVE                             R2 R3
       30 LOADNIL                          R3
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R4 R4 K7 ["aborted"]
       34 JUMPIFNOT                        R4 ; [+4]
       35 GETUPVAL                         R4 6
       36 GETTABLEKS                       R3 R4 K8 ["Cancelled"]
       38 JUMP                             ; [+11]
       39 JUMPIFNOT                        R0 ; [+3]
       40 GETTABLEKS                       R4 R2 K9 ["isError"]
       42 JUMPIFNOT                        R4 ; [+4]
       43 GETUPVAL                         R4 6
       44 GETTABLEKS                       R3 R4 K10 ["Failed"]
       46 JUMP                             ; [+3]
       47 GETUPVAL                         R4 6
       48 GETTABLEKS                       R3 R4 K11 ["Completed"]
       50 GETUPVAL                         R4 7
       51 GETTABLEKS                       R4 R4 K12 ["updateJob"]
       53 GETUPVAL                         R5 8
       54 DUPTABLE                         R6 K15 [{"status", "toolResult"}]
       55 SETTABLEKS                       R3 R6 K13 ["status"]
       57 SETTABLEKS                       R2 R6 K14 ["toolResult"]
       59 CALL                             R4 2 0
       60 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["args"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R1 K1 ["async"]
        5 JUMPIFEQKB                       R2 TRUE ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R0 K2 ["toolName"]
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R3 R4 R2
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 GETTABLEKS                       R3 R0 K3 ["handler"]
       18 GETTABLEKS                       R4 R0 K4 ["meta"]
       20 GETTABLEKS                       R5 R0 K5 ["extra"]
       22 GETUPVAL                         R6 1
       23 LOADB                            R8 0
       24 NAMECALL                         R6 R6 K6 ["GenerateGUID"]
       26 CALL                             R6 2 1
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K7 ["setJob"]
       30 MOVE                             R8 R6
       31 DUPTABLE                         R9 K13 [{["jobId"], ["status"], ["toolName"], ["threadId"], ["inSession"] = True}]
       32 SETTABLEKS                       R6 R9 K8 ["jobId"]
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R10 R10 K14 ["Running"]
       37 SETTABLEKS                       R10 R9 K9 ["status"]
       39 SETTABLEKS                       R2 R9 K2 ["toolName"]
       41 JUMPIFNOT                        R4 ; [+3]
       42 GETTABLEKS                       R10 R4 K10 ["threadId"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R10
       46 SETTABLEKS                       R10 R9 K10 ["threadId"]
       48 CALL                             R7 2 0
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K15 ["getOrCreateController"]
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K18 [table.clone]
       56 MOVE                             R9 R5
       57 JUMPIF                           R9 ; [+2]
       58 NEWTABLE                         R9 0 0
       60 CALL                             R8 1 1
       61 SETTABLEKS                       R7 R8 K19 ["signal"]
       63 DUPCLOSURE                       R9 K20 [PROTO_3]
       64 SETTABLEKS                       R9 R8 K21 ["sendProgress"]
       66 DUPCLOSURE                       R9 K22 [PROTO_4]
       67 SETTABLEKS                       R9 R8 K23 ["sendNotification"]
       69 GETIMPORT                        R9 K26 [task.spawn]
       71 NEWCLOSURE                       R10 P2
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R8
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          VAL R7
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          VAL R6
       81 CALL                             R9 1 0
       82 GETUPVAL                         R9 2
       83 GETTABLEKS                       R9 R9 K27 ["getJob"]
       85 MOVE                             R10 R6
       86 CALL                             R9 1 1
       87 JUMPIFNOT                        R9 ; [+3]
       88 GETTABLEKS                       R10 R9 K9 ["status"]
       90 JUMP                             ; [+3]
       91 GETUPVAL                         R10 3
       92 GETTABLEKS                       R10 R10 K14 ["Running"]
       94 MOVE                             R11 R9
       95 JUMPIFNOT                        R11 ; [+5]
       96 GETUPVAL                         R11 2
       97 GETTABLEKS                       R11 R11 K28 ["isTerminal"]
       99 MOVE                             R12 R10
      100 CALL                             R11 1 1
      101 JUMPIFNOT                        R11 ; [+10]
      102 GETUPVAL                         R12 5
      103 GETTABLEKS                       R12 R12 K29 ["FFlagAssistantAsyncSlashCommands"]
      105 JUMPIFNOT                        R12 ; [+6]
      106 GETUPVAL                         R12 2
      107 GETTABLEKS                       R12 R12 K30 ["updateJob"]
      109 MOVE                             R13 R6
      110 DUPTABLE                         R14 K32 [{["resultPersisted"] = True}]
      111 CALL                             R12 2 0
      112 DUPTABLE                         R12 K34 [{"jobId", "status", "jobResult"}]
      113 SETTABLEKS                       R6 R12 K8 ["jobId"]
      115 SETTABLEKS                       R10 R12 K9 ["status"]
      117 JUMPIFNOT                        R11 ; [+4]
      118 JUMPIFNOT                        R9 ; [+3]
      119 GETTABLEKS                       R13 R9 K35 ["toolResult"]
      121 JUMP                             ; [+1]
      122 LOADNIL                          R13
      123 SETTABLEKS                       R13 R12 K33 ["jobResult"]
      125 GETUPVAL                         R13 4
      126 CALL                             R13 0 1
      127 GETUPVAL                         R15 1
      128 MOVE                             R17 R12
      129 NAMECALL                         R15 R15 K36 ["JSONEncode"]
      131 CALL                             R15 2 -1
      132 NAMECALL                         R13 R13 K37 ["addText"]
      134 CALL                             R13 -1 1
      135 MOVE                             R15 R12
      136 NAMECALL                         R13 R13 K38 ["setStructuredContent"]
      138 CALL                             R13 2 1
      139 NAMECALL                         R13 R13 K39 ["build"]
      141 CALL                             R13 1 -1
      142 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["ModelContextProtocol"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Flags"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Util"]
       29 GETTABLEKS                       R6 R6 K14 ["Jobs"]
       31 GETTABLEKS                       R6 R6 K15 ["JobStore"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K10 [require]
       36 GETTABLEKS                       R7 R0 K16 ["Tools"]
       38 GETTABLEKS                       R7 R7 K17 ["ToolTypes"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K10 [require]
       43 GETTABLEKS                       R8 R0 K13 ["Util"]
       45 GETTABLEKS                       R8 R8 K18 ["patchToolDefinition"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R6 K19 ["ToolNames"]
       50 GETTABLEKS                       R9 R5 K20 ["JobStatus"]
       52 GETTABLEKS                       R10 R3 K13 ["Util"]
       54 GETTABLEKS                       R10 R10 K21 ["ToolResult"]
       56 NEWTABLE                         R12 0 0
       58 GETIMPORT                        R13 K24 [string.split]
       60 GETTABLEKS                       R14 R4 K25 ["FStringAssistantJobRunTools"]
       62 LOADK                            R15 K26 [","]
       63 CALL                             R13 2 1
       64 MOVE                             R14 R13
       65 LOADNIL                          R15
       66 LOADNIL                          R16
       67 FORGPREP                         R14
       68 LOADB                            R19 1
       69 SETTABLE                         R19 R12 R18
       70 FORGLOOP                         R14 2 ; [-3]
       72 MOVE                             R11 R12
       73 NEWTABLE                         R12 4 0
       75 LOADK                            R13 K27 ["async"]
       76 SETTABLEKS                       R13 R12 K28 ["ASYNC_ARG"]
       78 DUPCLOSURE                       R13 K29 [PROTO_1]
       79 CAPTURE                          VAL R11
       80 SETTABLEKS                       R13 R12 K30 ["isAllowed"]
       82 DUPCLOSURE                       R13 K31 [PROTO_2]
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R8
       86 SETTABLEKS                       R13 R12 K32 ["patchDefinitionWithAsyncArg"]
       88 DUPCLOSURE                       R13 K33 [PROTO_7]
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R4
       95 SETTABLEKS                       R13 R12 K34 ["tryRunAsync"]
       97 RETURN                           R12 1
