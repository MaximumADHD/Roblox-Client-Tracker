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
       66 DUPTABLE                         R9 K17 [{"jobId", "status", "toolName"}]
       67 SETTABLEKS                       R6 R9 K15 ["jobId"]
       69 GETUPVAL                         R10 6
       70 GETTABLEKS                       R10 R10 K18 ["Running"]
       72 SETTABLEKS                       R10 R9 K16 ["status"]
       74 SETTABLEKS                       R3 R9 K0 ["toolName"]
       76 CALL                             R7 2 0
       77 GETUPVAL                         R7 5
       78 GETTABLEKS                       R7 R7 K19 ["getOrCreateController"]
       80 MOVE                             R8 R6
       81 CALL                             R7 1 1
       82 GETIMPORT                        R8 K21 [table.clone]
       84 MOVE                             R9 R2
       85 JUMPIF                           R9 ; [+2]
       86 NEWTABLE                         R9 0 0
       88 CALL                             R8 1 1
       89 SETTABLEKS                       R7 R8 K22 ["signal"]
       91 DUPCLOSURE                       R9 K23 [PROTO_3]
       92 SETTABLEKS                       R9 R8 K24 ["sendProgress"]
       94 DUPCLOSURE                       R9 K25 [PROTO_4]
       95 SETTABLEKS                       R9 R8 K26 ["sendNotification"]
       97 GETIMPORT                        R9 K29 [task.spawn]
       99 NEWCLOSURE                       R10 P3
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R8
      104 CAPTURE                          UPVAL U1
      105 CAPTURE                          VAL R7
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          UPVAL U5
      108 CAPTURE                          VAL R6
      109 CALL                             R9 1 0
      110 GETUPVAL                         R9 5
      111 GETTABLEKS                       R9 R9 K30 ["getJob"]
      113 MOVE                             R10 R6
      114 CALL                             R9 1 1
      115 JUMPIFNOT                        R9 ; [+3]
      116 GETTABLEKS                       R10 R9 K16 ["status"]
      118 JUMP                             ; [+3]
      119 GETUPVAL                         R10 6
      120 GETTABLEKS                       R10 R10 K18 ["Running"]
      122 MOVE                             R11 R9
      123 JUMPIFNOT                        R11 ; [+5]
      124 GETUPVAL                         R11 5
      125 GETTABLEKS                       R11 R11 K31 ["isTerminal"]
      127 MOVE                             R12 R10
      128 CALL                             R11 1 1
      129 DUPTABLE                         R12 K33 [{"jobId", "status", "jobResult"}]
      130 SETTABLEKS                       R6 R12 K15 ["jobId"]
      132 SETTABLEKS                       R10 R12 K16 ["status"]
      134 JUMPIFNOT                        R11 ; [+4]
      135 JUMPIFNOT                        R9 ; [+3]
      136 GETTABLEKS                       R13 R9 K34 ["toolResult"]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R13
      140 SETTABLEKS                       R13 R12 K32 ["jobResult"]
      142 GETUPVAL                         R13 1
      143 CALL                             R13 0 1
      144 GETUPVAL                         R15 4
      145 MOVE                             R17 R12
      146 NAMECALL                         R15 R15 K35 ["JSONEncode"]
      148 CALL                             R15 2 -1
      149 NAMECALL                         R13 R13 K7 ["addText"]
      151 CALL                             R13 -1 1
      152 MOVE                             R15 R12
      153 NAMECALL                         R13 R13 K36 ["setStructuredContent"]
      155 CALL                             R13 2 1
      156 NAMECALL                         R13 R13 K9 ["build"]
      158 CALL                             R13 1 -1
      159 RETURN                           R13 -1

PROTO_8:
        0 DUPCLOSURE                       R1 K0 [PROTO_7]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 GETUPVAL                         R2 7
        9 GETTABLEKS                       R2 R2 K1 ["define"]
       11 CALL                             R2 0 1
       12 GETUPVAL                         R4 8
       13 GETTABLEKS                       R4 R4 K2 ["JobRun"]
       15 NAMECALL                         R2 R2 K3 ["setName"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R4 K6 [table.concat]
       20 NEWTABLE                         R5 0 7
       22 LOADK                            R6 K7 ["Run a tool asynchronously and return immediately with a jobId."]
       23 LOADK                            R7 K8 [""]
       24 LOADK                            R9 K9 ["Use this when you want to run a tool (%*) without blocking on its completion — for example when kicking off several generations, or when the user does not need to wait for the result before you continue."]
       25 GETIMPORT                        R11 K6 [table.concat]
       27 GETUPVAL                         R12 2
       28 LOADK                            R13 K10 [", "]
       29 CALL                             R11 2 1
       30 NAMECALL                         R9 R9 K11 ["format"]
       32 CALL                             R9 2 1
       33 MOVE                             R8 R9
       34 LOADK                            R9 K8 [""]
       35 LOADK                            R11 K12 ["Pass the target tool's name as 'toolName' and its arguments as 'arguments'. The tool runs asynchronously and updates its own UI. Poll %* with the returned jobId when you need the final result."]
       36 GETUPVAL                         R13 8
       37 GETTABLEKS                       R13 R13 K13 ["JobWait"]
       39 NAMECALL                         R11 R11 K11 ["format"]
       41 CALL                             R11 2 1
       42 MOVE                             R10 R11
       43 LOADK                            R11 K8 [""]
       44 LOADK                            R12 K14 ["If you DO need the result before proceeding (e.g. a follow-up action depends on it), call the target tool directly instead of wrapping it here."]
       45 SETLIST                          R5 R6 7 [1]
       47 LOADK                            R6 K15 ["\n"]
       48 CALL                             R4 2 -1
       49 NAMECALL                         R2 R2 K16 ["setDescription"]
       51 CALL                             R2 -1 1
       52 LOADK                            R4 K17 ["toolName"]
       53 DUPTABLE                         R5 K23 [{["type"] = "string", ["enum"], ["description"] = "The name of the tool to run as a background job."}]
       54 GETUPVAL                         R6 2
       55 SETTABLEKS                       R6 R5 K20 ["enum"]
       57 NAMECALL                         R2 R2 K24 ["addArgument"]
       59 CALL                             R2 3 1
       60 LOADK                            R4 K25 ["arguments"]
       61 DUPTABLE                         R5 K28 [{["type"] = "object", ["description"] = "The arguments object to pass to the wrapped tool, matching that tool's own schema."}]
       62 NAMECALL                         R2 R2 K29 ["addOptionalArgument"]
       64 CALL                             R2 3 1
       65 MOVE                             R4 R1
       66 NAMECALL                         R2 R2 K30 ["setHandler"]
       68 CALL                             R2 2 1
       69 DUPTABLE                         R4 K38 [{["title"] = "Run As Job", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       70 NAMECALL                         R2 R2 K39 ["setAnnotations"]
       72 CALL                             R2 2 1
       73 NAMECALL                         R2 R2 K40 ["build"]
       75 CALL                             R2 1 1
       76 DUPTABLE                         R3 K42 [{"definition"}]
       77 SETTABLEKS                       R2 R3 K41 ["definition"]
       79 RETURN                           R3 1

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
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R9
       84 RETURN                           R14 1
