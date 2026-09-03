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
        1 GETTABLEKS                       R0 R0 K0 ["getHandler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_4:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["arguments"]
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 CALL                             R0 3 -1
       10 RETURN                           R0 -1

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
        0 GETTABLEKS                       R3 R0 K0 ["toolName"]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R3
        4 JUMPIF                           R4 ; [+24]
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 1
        7 LOADK                            R7 K1 ["Tool \"%*\" cannot be run as a job. Allowed tools: %*"]
        8 MOVE                             R9 R3
        9 GETIMPORT                        R10 K4 [table.concat]
       11 GETUPVAL                         R11 2
       12 LOADK                            R12 K5 [", "]
       13 CALL                             R10 2 1
       14 NAMECALL                         R7 R7 K6 ["format"]
       16 CALL                             R7 3 1
       17 MOVE                             R6 R7
       18 NAMECALL                         R4 R4 K7 ["addText"]
       20 CALL                             R4 2 1
       21 LOADB                            R6 1
       22 NAMECALL                         R4 R4 K8 ["setError"]
       24 CALL                             R4 2 1
       25 NAMECALL                         R4 R4 K9 ["build"]
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1
       29 GETIMPORT                        R4 K11 [pcall]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R3
       34 CALL                             R4 1 2
       35 JUMPIFNOT                        R4 ; [+2]
       36 JUMPIFNOTEQKNIL                  R5 ; [+20]
       38 GETUPVAL                         R6 1
       39 CALL                             R6 0 1
       40 LOADK                            R9 K12 ["No handler registered for tool \"%*\""]
       41 MOVE                             R11 R3
       42 NAMECALL                         R9 R9 K6 ["format"]
       44 CALL                             R9 2 1
       45 MOVE                             R8 R9
       46 NAMECALL                         R6 R6 K7 ["addText"]
       48 CALL                             R6 2 1
       49 LOADB                            R8 1
       50 NAMECALL                         R6 R6 K8 ["setError"]
       52 CALL                             R6 2 1
       53 NAMECALL                         R6 R6 K9 ["build"]
       55 CALL                             R6 1 -1
       56 RETURN                           R6 -1
       57 GETUPVAL                         R6 4
       58 LOADB                            R8 0
       59 NAMECALL                         R6 R6 K13 ["GenerateGUID"]
       61 CALL                             R6 2 1
       62 GETUPVAL                         R7 5
       63 GETTABLEKS                       R7 R7 K14 ["setJob"]
       65 MOVE                             R8 R6
       66 DUPTABLE                         R9 K20 [{["jobId"], ["status"], [3], ["threadId"], ["inSession"] = True}]
       67 SETTABLEKS                       R6 R9 K15 ["jobId"]
       69 GETUPVAL                         R10 6
       70 GETTABLEKS                       R10 R10 K21 ["Running"]
       72 SETTABLEKS                       R10 R9 K16 ["status"]
       74 SETTABLEKS                       R3 R9 K0 ["toolName"]
       76 JUMPIFNOT                        R1 ; [+3]
       77 GETTABLEKS                       R10 R1 K17 ["threadId"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R10
       81 SETTABLEKS                       R10 R9 K17 ["threadId"]
       83 CALL                             R7 2 0
       84 GETUPVAL                         R7 5
       85 GETTABLEKS                       R7 R7 K22 ["getOrCreateController"]
       87 MOVE                             R8 R6
       88 CALL                             R7 1 1
       89 GETIMPORT                        R8 K24 [table.clone]
       91 MOVE                             R9 R2
       92 JUMPIF                           R9 ; [+2]
       93 NEWTABLE                         R9 0 0
       95 CALL                             R8 1 1
       96 SETTABLEKS                       R7 R8 K25 ["signal"]
       98 DUPCLOSURE                       R9 K26 [PROTO_3]
       99 SETTABLEKS                       R9 R8 K27 ["sendProgress"]
      101 DUPCLOSURE                       R9 K28 [PROTO_4]
      102 SETTABLEKS                       R9 R8 K29 ["sendNotification"]
      104 GETIMPORT                        R9 K32 [task.spawn]
      106 NEWCLOSURE                       R10 P3
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R8
      111 CAPTURE                          UPVAL U1
      112 CAPTURE                          VAL R7
      113 CAPTURE                          UPVAL U6
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          VAL R6
      116 CALL                             R9 1 0
      117 GETUPVAL                         R9 5
      118 GETTABLEKS                       R9 R9 K33 ["getJob"]
      120 MOVE                             R10 R6
      121 CALL                             R9 1 1
      122 JUMPIFNOT                        R9 ; [+3]
      123 GETTABLEKS                       R10 R9 K16 ["status"]
      125 JUMP                             ; [+3]
      126 GETUPVAL                         R10 6
      127 GETTABLEKS                       R10 R10 K21 ["Running"]
      129 MOVE                             R11 R9
      130 JUMPIFNOT                        R11 ; [+5]
      131 GETUPVAL                         R11 5
      132 GETTABLEKS                       R11 R11 K34 ["isTerminal"]
      134 MOVE                             R12 R10
      135 CALL                             R11 1 1
      136 JUMPIFNOT                        R11 ; [+10]
      137 GETUPVAL                         R12 7
      138 GETTABLEKS                       R12 R12 K35 ["FFlagAssistantAsyncSlashCommands"]
      140 JUMPIFNOT                        R12 ; [+6]
      141 GETUPVAL                         R12 5
      142 GETTABLEKS                       R12 R12 K36 ["updateJob"]
      144 MOVE                             R13 R6
      145 DUPTABLE                         R14 K38 [{["resultPersisted"] = True}]
      146 CALL                             R12 2 0
      147 DUPTABLE                         R12 K40 [{"jobId", "status", "jobResult"}]
      148 SETTABLEKS                       R6 R12 K15 ["jobId"]
      150 SETTABLEKS                       R10 R12 K16 ["status"]
      152 JUMPIFNOT                        R11 ; [+4]
      153 JUMPIFNOT                        R9 ; [+3]
      154 GETTABLEKS                       R13 R9 K41 ["toolResult"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R13
      158 SETTABLEKS                       R13 R12 K39 ["jobResult"]
      160 GETUPVAL                         R13 1
      161 CALL                             R13 0 1
      162 GETUPVAL                         R15 4
      163 MOVE                             R17 R12
      164 NAMECALL                         R15 R15 K42 ["JSONEncode"]
      166 CALL                             R15 2 -1
      167 NAMECALL                         R13 R13 K7 ["addText"]
      169 CALL                             R13 -1 1
      170 MOVE                             R15 R12
      171 NAMECALL                         R13 R13 K43 ["setStructuredContent"]
      173 CALL                             R13 2 1
      174 NAMECALL                         R13 R13 K9 ["build"]
      176 CALL                             R13 1 -1
      177 RETURN                           R13 -1

PROTO_8:
        0 DUPCLOSURE                       R1 K0 [PROTO_7]
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
       19 GETIMPORT                        R4 K6 [table.concat]
       21 NEWTABLE                         R5 0 7
       23 LOADK                            R6 K7 ["Run a tool asynchronously and return immediately with a jobId."]
       24 LOADK                            R7 K8 [""]
       25 LOADK                            R9 K9 ["Use this when you want to run a tool (%*) without blocking on its completion — for example when kicking off several generations, or when the user does not need to wait for the result before you continue."]
       26 GETIMPORT                        R11 K6 [table.concat]
       28 GETUPVAL                         R12 2
       29 LOADK                            R13 K10 [", "]
       30 CALL                             R11 2 1
       31 NAMECALL                         R9 R9 K11 ["format"]
       33 CALL                             R9 2 1
       34 MOVE                             R8 R9
       35 LOADK                            R9 K8 [""]
       36 LOADK                            R11 K12 ["Pass the target tool's name as 'toolName' and its arguments as 'arguments'. The tool runs asynchronously and updates its own UI. Poll %* with the returned jobId when you need the final result."]
       37 GETUPVAL                         R13 9
       38 GETTABLEKS                       R13 R13 K13 ["JobWait"]
       40 NAMECALL                         R11 R11 K11 ["format"]
       42 CALL                             R11 2 1
       43 MOVE                             R10 R11
       44 LOADK                            R11 K8 [""]
       45 LOADK                            R12 K14 ["If you DO need the result before proceeding (e.g. a follow-up action depends on it), call the target tool directly instead of wrapping it here."]
       46 SETLIST                          R5 R6 7 [1]
       48 LOADK                            R6 K15 ["\n"]
       49 CALL                             R4 2 -1
       50 NAMECALL                         R2 R2 K16 ["setDescription"]
       52 CALL                             R2 -1 1
       53 LOADK                            R4 K17 ["toolName"]
       54 DUPTABLE                         R5 K23 [{["type"] = "string", ["enum"], ["description"] = "The name of the tool to run as a background job."}]
       55 GETUPVAL                         R6 2
       56 SETTABLEKS                       R6 R5 K20 ["enum"]
       58 NAMECALL                         R2 R2 K24 ["addArgument"]
       60 CALL                             R2 3 1
       61 LOADK                            R4 K25 ["arguments"]
       62 DUPTABLE                         R5 K28 [{["type"] = "object", ["description"] = "The arguments object to pass to the wrapped tool, matching that tool's own schema."}]
       63 NAMECALL                         R2 R2 K29 ["addOptionalArgument"]
       65 CALL                             R2 3 1
       66 MOVE                             R4 R1
       67 NAMECALL                         R2 R2 K30 ["setHandler"]
       69 CALL                             R2 2 1
       70 DUPTABLE                         R4 K38 [{["title"] = "Run As Job", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       71 NAMECALL                         R2 R2 K39 ["setAnnotations"]
       73 CALL                             R2 2 1
       74 NAMECALL                         R2 R2 K40 ["build"]
       76 CALL                             R2 1 1
       77 DUPTABLE                         R3 K42 [{"definition"}]
       78 SETTABLEKS                       R2 R3 K41 ["definition"]
       80 RETURN                           R3 1

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
       74 DUPCLOSURE                       R14 K29 [PROTO_8]
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R9
       85 RETURN                           R14 1
