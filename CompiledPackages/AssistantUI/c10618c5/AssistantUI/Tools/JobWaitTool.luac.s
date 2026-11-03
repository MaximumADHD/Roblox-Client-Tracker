PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["jobId"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 JUMPIFNOTEQKS                    R3 K1 [""] ; [+15]
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 LOADK                            R6 K2 ["jobId is required"]
        8 NAMECALL                         R4 R4 K3 ["addText"]
       10 CALL                             R4 2 1
       11 LOADB                            R6 1
       12 NAMECALL                         R4 R4 K4 ["setError"]
       14 CALL                             R4 2 1
       15 NAMECALL                         R4 R4 K5 ["build"]
       17 CALL                             R4 1 -1
       18 RETURN                           R4 -1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K6 ["getJob"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 JUMPIF                           R4 ; [+18]
       25 GETUPVAL                         R4 0
       26 CALL                             R4 0 1
       27 LOADK                            R6 K7 ["No job found with id: %*"]
       28 MOVE                             R8 R3
       29 NAMECALL                         R6 R6 K8 ["format"]
       31 CALL                             R6 2 1
       32 NAMECALL                         R4 R4 K3 ["addText"]
       34 CALL                             R4 2 1
       35 LOADB                            R6 1
       36 NAMECALL                         R4 R4 K4 ["setError"]
       38 CALL                             R4 2 1
       39 NAMECALL                         R4 R4 K5 ["build"]
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1
       43 GETTABLEKS                       R4 R0 K9 ["timeout"]
       45 JUMPIF                           R4 ; [+1]
       46 GETUPVAL                         R4 2
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K10 ["waitForTerminal"]
       50 MOVE                             R6 R3
       51 MOVE                             R7 R4
       52 GETTABLEKS                       R8 R2 K11 ["signal"]
       54 CALL                             R5 3 0
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K6 ["getJob"]
       58 MOVE                             R6 R3
       59 CALL                             R5 1 1
       60 JUMPIF                           R5 ; [+18]
       61 GETUPVAL                         R6 0
       62 CALL                             R6 0 1
       63 LOADK                            R8 K12 ["Job %* was removed during wait."]
       64 MOVE                             R10 R3
       65 NAMECALL                         R8 R8 K8 ["format"]
       67 CALL                             R8 2 1
       68 NAMECALL                         R6 R6 K3 ["addText"]
       70 CALL                             R6 2 1
       71 LOADB                            R8 1
       72 NAMECALL                         R6 R6 K4 ["setError"]
       74 CALL                             R6 2 1
       75 NAMECALL                         R6 R6 K5 ["build"]
       77 CALL                             R6 1 -1
       78 RETURN                           R6 -1
       79 GETUPVAL                         R6 1
       80 GETTABLEKS                       R6 R6 K13 ["isTerminal"]
       82 GETTABLEKS                       R7 R5 K14 ["status"]
       84 CALL                             R6 1 1
       85 JUMPIF                           R6 ; [+65]
       86 GETTABLEKS                       R6 R2 K11 ["signal"]
       88 JUMPIFEQKNIL                     R6 ; [+30]
       90 GETTABLEKS                       R6 R2 K11 ["signal"]
       92 GETTABLEKS                       R6 R6 K15 ["aborted"]
       94 JUMPIFNOTEQKB                    R6 TRUE ; [+24]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K16 ["cancelJob"]
       99 MOVE                             R7 R3
      100 CALL                             R6 1 0
      101 GETUPVAL                         R6 0
      102 CALL                             R6 0 1
      103 LOADK                            R8 K17 ["Job %* was cancelled by user."]
      104 MOVE                             R10 R3
      105 NAMECALL                         R8 R8 K8 ["format"]
      107 CALL                             R8 2 1
      108 NAMECALL                         R6 R6 K3 ["addText"]
      110 CALL                             R6 2 1
      111 LOADB                            R8 1
      112 NAMECALL                         R6 R6 K4 ["setError"]
      114 CALL                             R6 2 1
      115 NAMECALL                         R6 R6 K5 ["build"]
      117 CALL                             R6 1 -1
      118 RETURN                           R6 -1
      119 DUPTABLE                         R6 K19 [{"status", "jobResult"}]
      120 GETUPVAL                         R7 3
      121 GETTABLEKS                       R7 R7 K20 ["Timeout"]
      123 SETTABLEKS                       R7 R6 K14 ["status"]
      125 GETTABLEKS                       R7 R5 K21 ["toolResult"]
      127 SETTABLEKS                       R7 R6 K18 ["jobResult"]
      129 GETUPVAL                         R7 0
      130 CALL                             R7 0 1
      131 GETUPVAL                         R9 4
      132 MOVE                             R11 R6
      133 NAMECALL                         R9 R9 K22 ["JSONEncode"]
      135 CALL                             R9 2 -1
      136 NAMECALL                         R7 R7 K3 ["addText"]
      138 CALL                             R7 -1 1
      139 MOVE                             R9 R6
      140 NAMECALL                         R7 R7 K23 ["setStructuredContent"]
      142 CALL                             R7 2 1
      143 LOADB                            R9 1
      144 NAMECALL                         R7 R7 K4 ["setError"]
      146 CALL                             R7 2 1
      147 NAMECALL                         R7 R7 K5 ["build"]
      149 CALL                             R7 1 -1
      150 RETURN                           R7 -1
      151 GETUPVAL                         R6 1
      152 GETTABLEKS                       R6 R6 K24 ["updateJob"]
      154 MOVE                             R7 R3
      155 DUPTABLE                         R8 K27 [{["resultPersisted"] = True}]
      156 CALL                             R6 2 0
      157 DUPTABLE                         R6 K19 [{"status", "jobResult"}]
      158 GETTABLEKS                       R7 R5 K14 ["status"]
      160 SETTABLEKS                       R7 R6 K14 ["status"]
      162 GETTABLEKS                       R7 R5 K21 ["toolResult"]
      164 SETTABLEKS                       R7 R6 K18 ["jobResult"]
      166 GETUPVAL                         R7 0
      167 CALL                             R7 0 1
      168 GETUPVAL                         R9 4
      169 MOVE                             R11 R6
      170 NAMECALL                         R9 R9 K22 ["JSONEncode"]
      172 CALL                             R9 2 -1
      173 NAMECALL                         R7 R7 K3 ["addText"]
      175 CALL                             R7 -1 1
      176 MOVE                             R9 R6
      177 NAMECALL                         R7 R7 K23 ["setStructuredContent"]
      179 CALL                             R7 2 1
      180 NAMECALL                         R7 R7 K5 ["build"]
      182 CALL                             R7 1 -1
      183 RETURN                           R7 -1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 GETUPVAL                         R2 5
        7 GETTABLEKS                       R2 R2 K1 ["define"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R4 6
       11 GETTABLEKS                       R4 R4 K2 ["JobWait"]
       13 NAMECALL                         R2 R2 K3 ["setName"]
       15 CALL                             R2 2 1
       16 GETIMPORT                        R4 K6 [table.concat]
       18 NEWTABLE                         R5 0 7
       20 LOADK                            R6 K7 ["Wait for a background job to finish. Returns the final status and details when the job reaches a terminal state (%*, %*, or %*)."]
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K8 ["Completed"]
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K9 ["Failed"]
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R10 R10 K10 ["Cancelled"]
       30 NAMECALL                         R6 R6 K11 ["format"]
       32 CALL                             R6 4 1
       33 LOADK                            R7 K12 [""]
       34 LOADK                            R8 K13 ["Pass the jobId returned when a tool was called with its '%*' argument set to true."]
       35 GETUPVAL                         R10 7
       36 GETTABLEKS                       R10 R10 K14 ["ASYNC_ARG"]
       38 NAMECALL                         R8 R8 K11 ["format"]
       40 CALL                             R8 2 1
       41 LOADK                            R9 K12 [""]
       42 LOADK                            R10 K15 ["Only call this tool when:"]
       43 LOADK                            R11 K16 ["- The user EXPLICITLY asks to wait for a backgrounded job to finish (e.g. \"wait for it to complete\", \"let me know when it's done\")"]
       44 LOADK                            R12 K17 ["- You need to confirm a job's result before performing a follow-up action that depends on it"]
       45 SETLIST                          R5 R6 7 [1]
       47 LOADK                            R6 K18 ["\n"]
       48 CALL                             R4 2 -1
       49 NAMECALL                         R2 R2 K19 ["setDescription"]
       51 CALL                             R2 -1 1
       52 LOADK                            R4 K20 ["jobId"]
       53 DUPTABLE                         R5 K24 [{["type"] = "string", ["description"]}]
       54 LOADK                            R6 K25 ["The jobId returned when a tool was called with its '%*' argument set to true."]
       55 GETUPVAL                         R8 7
       56 GETTABLEKS                       R8 R8 K14 ["ASYNC_ARG"]
       58 NAMECALL                         R6 R6 K11 ["format"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K23 ["description"]
       63 NAMECALL                         R2 R2 K26 ["addArgument"]
       65 CALL                             R2 3 1
       66 LOADK                            R4 K27 ["timeout"]
       67 DUPTABLE                         R5 K29 [{["type"] = "number", ["description"]}]
       68 LOADK                            R6 K30 ["Maximum time in seconds to wait for the job to finish. Defaults to %* seconds."]
       69 GETUPVAL                         R8 2
       70 NAMECALL                         R6 R6 K11 ["format"]
       72 CALL                             R6 2 1
       73 SETTABLEKS                       R6 R5 K23 ["description"]
       75 NAMECALL                         R2 R2 K31 ["addOptionalArgument"]
       77 CALL                             R2 3 1
       78 MOVE                             R4 R1
       79 NAMECALL                         R2 R2 K32 ["setHandler"]
       81 CALL                             R2 2 1
       82 LOADK                            R4 K33 ["Wait Job Finished"]
       83 NAMECALL                         R2 R2 K34 ["setTitle"]
       85 CALL                             R2 2 1
       86 DUPTABLE                         R4 K42 [{["title"] = "Wait Job Finished", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       87 NAMECALL                         R2 R2 K43 ["setAnnotations"]
       89 CALL                             R2 2 1
       90 NAMECALL                         R2 R2 K44 ["build"]
       92 CALL                             R2 1 1
       93 DUPTABLE                         R3 K46 [{"definition"}]
       94 SETTABLEKS                       R2 R3 K45 ["definition"]
       96 RETURN                           R3 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Jobs"]
       19 GETTABLEKS                       R3 R3 K12 ["AsyncToolRunner"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Flags"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Util"]
       31 GETTABLEKS                       R5 R5 K11 ["Jobs"]
       33 GETTABLEKS                       R5 R5 K14 ["JobStore"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K15 ["Parent"]
       40 GETTABLEKS                       R6 R6 K16 ["ModelContextProtocol"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K17 ["Tools"]
       47 GETTABLEKS                       R7 R7 K18 ["ToolTypes"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R5 K10 ["Util"]
       52 GETTABLEKS                       R7 R7 K19 ["ToolBuilder"]
       54 GETTABLEKS                       R8 R5 K10 ["Util"]
       56 GETTABLEKS                       R8 R8 K20 ["ToolResult"]
       58 GETTABLEKS                       R9 R6 K21 ["ToolNames"]
       60 GETTABLEKS                       R10 R4 K22 ["JobStatus"]
       62 GETTABLEKS                       R11 R3 K23 ["FIntAssistantJobWaitDefaultTimeout"]
       64 DUPCLOSURE                       R12 K24 [PROTO_1]
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R2
       73 RETURN                           R12 1
