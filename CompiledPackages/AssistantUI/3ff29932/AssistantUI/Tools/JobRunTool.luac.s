PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADB                            R6 1
        7 SETTABLE                         R6 R0 R5
        8 FORGLOOP                         R1 2 ; [-3]
       10 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.concat]
        2 GETUPVAL                         R1 0
        3 LOADK                            R2 K3 [", "]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantDisableForceSyncJobRun"]
        3 JUMPIFNOT                        R0 ; [+30]
        4 GETIMPORT                        R0 K3 [table.concat]
        6 NEWTABLE                         R1 0 7
        8 LOADK                            R2 K4 ["Run a tool asynchronously and return immediately with a jobId."]
        9 LOADK                            R3 K5 [""]
       10 LOADK                            R4 K6 ["Use this when you want to run a tool (%*) without blocking on its completion — for example when kicking off several generations, or when the user does not need to wait for the result before you continue."]
       11 GETIMPORT                        R6 K3 [table.concat]
       13 GETUPVAL                         R7 1
       14 LOADK                            R8 K7 [", "]
       15 CALL                             R6 2 1
       16 NAMECALL                         R4 R4 K8 ["format"]
       18 CALL                             R4 2 1
       19 LOADK                            R5 K5 [""]
       20 LOADK                            R6 K9 ["Pass the target tool's name as 'toolName' and its arguments as 'arguments'. The tool runs asynchronously and updates its own UI. Poll %* with the returned jobId when you need the final result."]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K10 ["JobWait"]
       24 NAMECALL                         R6 R6 K8 ["format"]
       26 CALL                             R6 2 1
       27 LOADK                            R7 K5 [""]
       28 LOADK                            R8 K11 ["If you DO need the result before proceeding (e.g. a follow-up action depends on it), call the target tool directly instead of wrapping it here."]
       29 SETLIST                          R1 R2 7 [1]
       31 LOADK                            R2 K12 ["\n"]
       32 CALL                             R0 2 -1
       33 RETURN                           R0 -1
       34 GETIMPORT                        R0 K3 [table.concat]
       36 NEWTABLE                         R1 0 9
       38 LOADK                            R2 K4 ["Run a tool asynchronously and return immediately with a jobId."]
       39 LOADK                            R3 K5 [""]
       40 LOADK                            R4 K13 ["Use this when you want to run a tool (%*) without blocking on its completion — for example when the user does not need to wait for the result before you continue."]
       41 GETIMPORT                        R6 K3 [table.concat]
       43 GETUPVAL                         R7 1
       44 LOADK                            R8 K7 [", "]
       45 CALL                             R6 2 1
       46 NAMECALL                         R4 R4 K8 ["format"]
       48 CALL                             R4 2 1
       49 LOADK                            R5 K5 [""]
       50 LOADK                            R6 K14 ["Call this at most ONCE per turn. If several jobs are needed, start one now and start the next on a following turn; never emit more than one %* call in the same response."]
       51 GETUPVAL                         R8 2
       52 GETTABLEKS                       R8 R8 K15 ["JobRun"]
       54 NAMECALL                         R6 R6 K8 ["format"]
       56 CALL                             R6 2 1
       57 LOADK                            R7 K5 [""]
       58 LOADK                            R8 K9 ["Pass the target tool's name as 'toolName' and its arguments as 'arguments'. The tool runs asynchronously and updates its own UI. Poll %* with the returned jobId when you need the final result."]
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K10 ["JobWait"]
       62 NAMECALL                         R8 R8 K8 ["format"]
       64 CALL                             R8 2 1
       65 LOADK                            R9 K5 [""]
       66 LOADK                            R10 K11 ["If you DO need the result before proceeding (e.g. a follow-up action depends on it), call the target tool directly instead of wrapping it here."]
       67 SETLIST                          R1 R2 9 [1]
       69 LOADK                            R2 K12 ["\n"]
       70 CALL                             R0 2 -1
       71 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getHandler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_5:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["arguments"]
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 CALL                             R0 3 -1
       10 RETURN                           R0 -1

PROTO_7:
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

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["toolName"]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R3
        4 JUMPIF                           R4 ; [+23]
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 1
        7 LOADK                            R6 K1 ["Tool \"%*\" cannot be run as a job. Allowed tools: %*"]
        8 MOVE                             R8 R3
        9 GETIMPORT                        R9 K4 [table.concat]
       11 GETUPVAL                         R10 2
       12 LOADK                            R11 K5 [", "]
       13 CALL                             R9 2 1
       14 NAMECALL                         R6 R6 K6 ["format"]
       16 CALL                             R6 3 1
       17 NAMECALL                         R4 R4 K7 ["addText"]
       19 CALL                             R4 2 1
       20 LOADB                            R6 1
       21 NAMECALL                         R4 R4 K8 ["setError"]
       23 CALL                             R4 2 1
       24 NAMECALL                         R4 R4 K9 ["build"]
       26 CALL                             R4 1 -1
       27 RETURN                           R4 -1
       28 GETIMPORT                        R4 K11 [pcall]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R3
       33 CALL                             R4 1 2
       34 JUMPIFNOT                        R4 ; [+2]
       35 JUMPIFNOTEQKNIL                  R5 ; [+19]
       37 GETUPVAL                         R6 1
       38 CALL                             R6 0 1
       39 LOADK                            R8 K12 ["No handler registered for tool \"%*\""]
       40 MOVE                             R10 R3
       41 NAMECALL                         R8 R8 K6 ["format"]
       43 CALL                             R8 2 1
       44 NAMECALL                         R6 R6 K7 ["addText"]
       46 CALL                             R6 2 1
       47 LOADB                            R8 1
       48 NAMECALL                         R6 R6 K8 ["setError"]
       50 CALL                             R6 2 1
       51 NAMECALL                         R6 R6 K9 ["build"]
       53 CALL                             R6 1 -1
       54 RETURN                           R6 -1
       55 GETUPVAL                         R6 4
       56 LOADB                            R8 0
       57 NAMECALL                         R6 R6 K13 ["GenerateGUID"]
       59 CALL                             R6 2 1
       60 GETUPVAL                         R7 5
       61 GETTABLEKS                       R7 R7 K14 ["setJob"]
       63 MOVE                             R8 R6
       64 DUPTABLE                         R9 K20 [{["jobId"], ["status"], [3], ["threadId"], ["inSession"] = True}]
       65 SETTABLEKS                       R6 R9 K15 ["jobId"]
       67 GETUPVAL                         R10 6
       68 GETTABLEKS                       R10 R10 K21 ["Running"]
       70 SETTABLEKS                       R10 R9 K16 ["status"]
       72 SETTABLEKS                       R3 R9 K0 ["toolName"]
       74 JUMPIFNOT                        R1 ; [+3]
       75 GETTABLEKS                       R10 R1 K17 ["threadId"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R10
       79 SETTABLEKS                       R10 R9 K17 ["threadId"]
       81 CALL                             R7 2 0
       82 GETUPVAL                         R7 5
       83 GETTABLEKS                       R7 R7 K22 ["getOrCreateController"]
       85 MOVE                             R8 R6
       86 CALL                             R7 1 1
       87 GETIMPORT                        R8 K24 [table.clone]
       89 MOVE                             R9 R2
       90 JUMPIF                           R9 ; [+2]
       91 NEWTABLE                         R9 0 0
       93 CALL                             R8 1 1
       94 SETTABLEKS                       R7 R8 K25 ["signal"]
       96 DUPCLOSURE                       R9 K26 [PROTO_4]
       97 SETTABLEKS                       R9 R8 K27 ["sendProgress"]
       99 DUPCLOSURE                       R9 K28 [PROTO_5]
      100 SETTABLEKS                       R9 R8 K29 ["sendNotification"]
      102 GETIMPORT                        R9 K32 [task.spawn]
      104 NEWCLOSURE                       R10 P3
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R8
      109 CAPTURE                          UPVAL U1
      110 CAPTURE                          VAL R7
      111 CAPTURE                          UPVAL U6
      112 CAPTURE                          UPVAL U5
      113 CAPTURE                          VAL R6
      114 CALL                             R9 1 0
      115 GETUPVAL                         R9 5
      116 GETTABLEKS                       R9 R9 K33 ["getJob"]
      118 MOVE                             R10 R6
      119 CALL                             R9 1 1
      120 JUMPIFNOT                        R9 ; [+3]
      121 GETTABLEKS                       R10 R9 K16 ["status"]
      123 JUMP                             ; [+3]
      124 GETUPVAL                         R10 6
      125 GETTABLEKS                       R10 R10 K21 ["Running"]
      127 MOVE                             R11 R9
      128 JUMPIFNOT                        R11 ; [+5]
      129 GETUPVAL                         R11 5
      130 GETTABLEKS                       R11 R11 K34 ["isTerminal"]
      132 MOVE                             R12 R10
      133 CALL                             R11 1 1
      134 JUMPIFNOT                        R11 ; [+10]
      135 GETUPVAL                         R12 7
      136 GETTABLEKS                       R12 R12 K35 ["FFlagAssistantAsyncSlashCommands"]
      138 JUMPIFNOT                        R12 ; [+6]
      139 GETUPVAL                         R12 5
      140 GETTABLEKS                       R12 R12 K36 ["updateJob"]
      142 MOVE                             R13 R6
      143 DUPTABLE                         R14 K38 [{["resultPersisted"] = True}]
      144 CALL                             R12 2 0
      145 DUPTABLE                         R12 K40 [{"jobId", "status", "jobResult"}]
      146 SETTABLEKS                       R6 R12 K15 ["jobId"]
      148 SETTABLEKS                       R10 R12 K16 ["status"]
      150 JUMPIFNOT                        R11 ; [+4]
      151 JUMPIFNOT                        R9 ; [+3]
      152 GETTABLEKS                       R13 R9 K41 ["toolResult"]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R13
      156 SETTABLEKS                       R13 R12 K39 ["jobResult"]
      158 GETUPVAL                         R13 1
      159 CALL                             R13 0 1
      160 GETUPVAL                         R15 4
      161 MOVE                             R17 R12
      162 NAMECALL                         R15 R15 K42 ["JSONEncode"]
      164 CALL                             R15 2 -1
      165 NAMECALL                         R13 R13 K7 ["addText"]
      167 CALL                             R13 -1 1
      168 MOVE                             R15 R12
      169 NAMECALL                         R13 R13 K43 ["setStructuredContent"]
      171 CALL                             R13 2 1
      172 NAMECALL                         R13 R13 K9 ["build"]
      174 CALL                             R13 1 -1
      175 RETURN                           R13 -1

PROTO_9:
        0 DUPCLOSURE                       R1 K0 [PROTO_8]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 GETUPVAL                         R2 8
       10 GETTABLEKS                       R2 R2 K1 ["define"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R4 9
       14 GETTABLEKS                       R4 R4 K2 ["JobRun"]
       16 NAMECALL                         R2 R2 K3 ["setName"]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R4 10
       20 CALL                             R4 0 -1
       21 NAMECALL                         R2 R2 K4 ["setDescription"]
       23 CALL                             R2 -1 1
       24 LOADK                            R4 K5 ["toolName"]
       25 DUPTABLE                         R5 K11 [{["type"] = "string", ["enum"], ["description"] = "The name of the tool to run as a background job."}]
       26 GETUPVAL                         R6 2
       27 SETTABLEKS                       R6 R5 K8 ["enum"]
       29 NAMECALL                         R2 R2 K12 ["addArgument"]
       31 CALL                             R2 3 1
       32 LOADK                            R4 K13 ["arguments"]
       33 DUPTABLE                         R5 K16 [{["type"] = "object", ["description"] = "The arguments object to pass to the wrapped tool, matching that tool's own schema."}]
       34 NAMECALL                         R2 R2 K17 ["addOptionalArgument"]
       36 CALL                             R2 3 1
       37 MOVE                             R4 R1
       38 NAMECALL                         R2 R2 K18 ["setHandler"]
       40 CALL                             R2 2 1
       41 DUPTABLE                         R4 K26 [{["title"] = "Run As Job", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       42 NAMECALL                         R2 R2 K27 ["setAnnotations"]
       44 CALL                             R2 2 1
       45 NAMECALL                         R2 R2 K28 ["build"]
       47 CALL                             R2 1 1
       48 DUPTABLE                         R3 K30 [{"definition"}]
       49 SETTABLEKS                       R2 R3 K29 ["definition"]
       51 RETURN                           R3 1

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
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Flags"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R0 K11 ["Util"]
       22 GETTABLEKS                       R4 R4 K12 ["Jobs"]
       24 GETTABLEKS                       R4 R4 K13 ["JobStore"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Parent"]
       31 GETTABLEKS                       R5 R5 K15 ["ModelContextProtocol"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Tools"]
       38 GETTABLEKS                       R6 R6 K17 ["ToolTypes"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R4 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K18 ["ToolBuilder"]
       45 GETTABLEKS                       R7 R4 K11 ["Util"]
       47 GETTABLEKS                       R7 R7 K19 ["ToolResult"]
       49 GETTABLEKS                       R8 R4 K20 ["ToolRegistry"]
       51 GETTABLEKS                       R9 R5 K21 ["ToolNames"]
       53 GETTABLEKS                       R10 R3 K22 ["JobStatus"]
       55 GETIMPORT                        R11 K25 [string.split]
       57 GETTABLEKS                       R12 R2 K26 ["FStringAssistantJobRunTools"]
       59 LOADK                            R13 K27 [","]
       60 CALL                             R11 2 1
       61 NEWTABLE                         R13 0 0
       63 MOVE                             R14 R11
       64 LOADNIL                          R15
       65 LOADNIL                          R16
       66 FORGPREP                         R14
       67 LOADB                            R19 1
       68 SETTABLE                         R19 R13 R18
       69 FORGLOOP                         R14 2 ; [-3]
       71 MOVE                             R12 R13
       72 DUPCLOSURE                       R13 K28 [PROTO_1]
       73 CAPTURE                          VAL R11
       74 DUPCLOSURE                       R14 K29 [PROTO_2]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R9
       78 DUPCLOSURE                       R15 K30 [PROTO_9]
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R14
       90 RETURN                           R15 1
