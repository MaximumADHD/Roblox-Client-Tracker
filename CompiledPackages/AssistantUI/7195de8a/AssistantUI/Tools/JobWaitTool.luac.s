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
       24 JUMPIF                           R4 ; [+19]
       25 GETUPVAL                         R4 0
       26 CALL                             R4 0 1
       27 LOADK                            R7 K7 ["No job found with id: %*"]
       28 MOVE                             R9 R3
       29 NAMECALL                         R7 R7 K8 ["format"]
       31 CALL                             R7 2 1
       32 MOVE                             R6 R7
       33 NAMECALL                         R4 R4 K3 ["addText"]
       35 CALL                             R4 2 1
       36 LOADB                            R6 1
       37 NAMECALL                         R4 R4 K4 ["setError"]
       39 CALL                             R4 2 1
       40 NAMECALL                         R4 R4 K5 ["build"]
       42 CALL                             R4 1 -1
       43 RETURN                           R4 -1
       44 GETTABLEKS                       R4 R0 K9 ["timeout"]
       46 JUMPIF                           R4 ; [+1]
       47 GETUPVAL                         R4 2
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K10 ["waitForTerminal"]
       51 MOVE                             R6 R3
       52 MOVE                             R7 R4
       53 GETTABLEKS                       R8 R2 K11 ["signal"]
       55 CALL                             R5 3 0
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R5 R5 K6 ["getJob"]
       59 MOVE                             R6 R3
       60 CALL                             R5 1 1
       61 JUMPIF                           R5 ; [+19]
       62 GETUPVAL                         R6 0
       63 CALL                             R6 0 1
       64 LOADK                            R9 K12 ["Job %* was removed during wait."]
       65 MOVE                             R11 R3
       66 NAMECALL                         R9 R9 K8 ["format"]
       68 CALL                             R9 2 1
       69 MOVE                             R8 R9
       70 NAMECALL                         R6 R6 K3 ["addText"]
       72 CALL                             R6 2 1
       73 LOADB                            R8 1
       74 NAMECALL                         R6 R6 K4 ["setError"]
       76 CALL                             R6 2 1
       77 NAMECALL                         R6 R6 K5 ["build"]
       79 CALL                             R6 1 -1
       80 RETURN                           R6 -1
       81 GETUPVAL                         R6 1
       82 GETTABLEKS                       R6 R6 K13 ["isTerminal"]
       84 GETTABLEKS                       R7 R5 K14 ["status"]
       86 CALL                             R6 1 1
       87 JUMPIF                           R6 ; [+66]
       88 GETTABLEKS                       R6 R2 K11 ["signal"]
       90 JUMPIFEQKNIL                     R6 ; [+31]
       92 GETTABLEKS                       R6 R2 K11 ["signal"]
       94 GETTABLEKS                       R6 R6 K15 ["aborted"]
       96 JUMPIFNOTEQKB                    R6 TRUE ; [+25]
       98 GETUPVAL                         R6 1
       99 GETTABLEKS                       R6 R6 K16 ["cancelJob"]
      101 MOVE                             R7 R3
      102 CALL                             R6 1 0
      103 GETUPVAL                         R6 0
      104 CALL                             R6 0 1
      105 LOADK                            R9 K17 ["Job %* was cancelled by user."]
      106 MOVE                             R11 R3
      107 NAMECALL                         R9 R9 K8 ["format"]
      109 CALL                             R9 2 1
      110 MOVE                             R8 R9
      111 NAMECALL                         R6 R6 K3 ["addText"]
      113 CALL                             R6 2 1
      114 LOADB                            R8 1
      115 NAMECALL                         R6 R6 K4 ["setError"]
      117 CALL                             R6 2 1
      118 NAMECALL                         R6 R6 K5 ["build"]
      120 CALL                             R6 1 -1
      121 RETURN                           R6 -1
      122 DUPTABLE                         R6 K19 [{"status", "jobResult"}]
      123 GETUPVAL                         R7 3
      124 GETTABLEKS                       R7 R7 K20 ["Timeout"]
      126 SETTABLEKS                       R7 R6 K14 ["status"]
      128 GETTABLEKS                       R7 R5 K21 ["toolResult"]
      130 SETTABLEKS                       R7 R6 K18 ["jobResult"]
      132 GETUPVAL                         R7 0
      133 CALL                             R7 0 1
      134 GETUPVAL                         R9 4
      135 MOVE                             R11 R6
      136 NAMECALL                         R9 R9 K22 ["JSONEncode"]
      138 CALL                             R9 2 -1
      139 NAMECALL                         R7 R7 K3 ["addText"]
      141 CALL                             R7 -1 1
      142 MOVE                             R9 R6
      143 NAMECALL                         R7 R7 K23 ["setStructuredContent"]
      145 CALL                             R7 2 1
      146 LOADB                            R9 1
      147 NAMECALL                         R7 R7 K4 ["setError"]
      149 CALL                             R7 2 1
      150 NAMECALL                         R7 R7 K5 ["build"]
      152 CALL                             R7 1 -1
      153 RETURN                           R7 -1
      154 GETUPVAL                         R6 5
      155 GETTABLEKS                       R6 R6 K24 ["FFlagAssistantAsyncSlashCommands"]
      157 JUMPIFNOT                        R6 ; [+6]
      158 GETUPVAL                         R6 1
      159 GETTABLEKS                       R6 R6 K25 ["updateJob"]
      161 MOVE                             R7 R3
      162 DUPTABLE                         R8 K28 [{["resultPersisted"] = True}]
      163 CALL                             R6 2 0
      164 DUPTABLE                         R6 K19 [{"status", "jobResult"}]
      165 GETTABLEKS                       R7 R5 K14 ["status"]
      167 SETTABLEKS                       R7 R6 K14 ["status"]
      169 GETTABLEKS                       R7 R5 K21 ["toolResult"]
      171 SETTABLEKS                       R7 R6 K18 ["jobResult"]
      173 GETUPVAL                         R7 0
      174 CALL                             R7 0 1
      175 GETUPVAL                         R9 4
      176 MOVE                             R11 R6
      177 NAMECALL                         R9 R9 K22 ["JSONEncode"]
      179 CALL                             R9 2 -1
      180 NAMECALL                         R7 R7 K3 ["addText"]
      182 CALL                             R7 -1 1
      183 MOVE                             R9 R6
      184 NAMECALL                         R7 R7 K23 ["setStructuredContent"]
      186 CALL                             R7 2 1
      187 NAMECALL                         R7 R7 K5 ["build"]
      189 CALL                             R7 1 -1
      190 RETURN                           R7 -1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 GETUPVAL                         R2 6
        8 GETTABLEKS                       R2 R2 K1 ["define"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R4 7
       12 GETTABLEKS                       R4 R4 K2 ["JobWait"]
       14 NAMECALL                         R2 R2 K3 ["setName"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R4 K6 [table.concat]
       19 NEWTABLE                         R5 0 7
       21 LOADK                            R7 K7 ["Wait for a background job to finish. Returns the final status and details when the job reaches a terminal state (%*, %*, or %*)."]
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R9 R9 K8 ["Completed"]
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R10 R10 K9 ["Failed"]
       28 GETUPVAL                         R11 3
       29 GETTABLEKS                       R11 R11 K10 ["Cancelled"]
       31 NAMECALL                         R7 R7 K11 ["format"]
       33 CALL                             R7 4 1
       34 MOVE                             R6 R7
       35 LOADK                            R7 K12 [""]
       36 LOADK                            R9 K13 ["Pass the jobId returned by %*."]
       37 GETUPVAL                         R11 7
       38 GETTABLEKS                       R11 R11 K14 ["JobRun"]
       40 NAMECALL                         R9 R9 K11 ["format"]
       42 CALL                             R9 2 1
       43 MOVE                             R8 R9
       44 LOADK                            R9 K12 [""]
       45 LOADK                            R10 K15 ["Only call this tool when:"]
       46 LOADK                            R11 K16 ["- The user EXPLICITLY asks to wait for a backgrounded job to finish (e.g. \"wait for it to complete\", \"let me know when it's done\")"]
       47 LOADK                            R12 K17 ["- You need to confirm a job's result before performing a follow-up action that depends on it"]
       48 SETLIST                          R5 R6 7 [1]
       50 LOADK                            R6 K18 ["\n"]
       51 CALL                             R4 2 -1
       52 NAMECALL                         R2 R2 K19 ["setDescription"]
       54 CALL                             R2 -1 1
       55 LOADK                            R4 K20 ["jobId"]
       56 DUPTABLE                         R5 K24 [{["type"] = "string", ["description"]}]
       57 LOADK                            R7 K25 ["The jobId returned by the %* tool."]
       58 GETUPVAL                         R9 7
       59 GETTABLEKS                       R9 R9 K14 ["JobRun"]
       61 NAMECALL                         R7 R7 K11 ["format"]
       63 CALL                             R7 2 1
       64 MOVE                             R6 R7
       65 SETTABLEKS                       R6 R5 K23 ["description"]
       67 NAMECALL                         R2 R2 K26 ["addArgument"]
       69 CALL                             R2 3 1
       70 LOADK                            R4 K27 ["timeout"]
       71 DUPTABLE                         R5 K29 [{["type"] = "number", ["description"]}]
       72 LOADK                            R7 K30 ["Maximum time in seconds to wait for the job to finish. Defaults to %* seconds."]
       73 GETUPVAL                         R9 2
       74 NAMECALL                         R7 R7 K11 ["format"]
       76 CALL                             R7 2 1
       77 MOVE                             R6 R7
       78 SETTABLEKS                       R6 R5 K23 ["description"]
       80 NAMECALL                         R2 R2 K31 ["addOptionalArgument"]
       82 CALL                             R2 3 1
       83 MOVE                             R4 R1
       84 NAMECALL                         R2 R2 K32 ["setHandler"]
       86 CALL                             R2 2 1
       87 DUPTABLE                         R4 K41 [{["title"] = "Wait Job Finished", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       88 NAMECALL                         R2 R2 K42 ["setAnnotations"]
       90 CALL                             R2 2 1
       91 NAMECALL                         R2 R2 K43 ["build"]
       93 CALL                             R2 1 1
       94 DUPTABLE                         R3 K45 [{"definition"}]
       95 SETTABLEKS                       R2 R3 K44 ["definition"]
       97 RETURN                           R3 1

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
       49 GETTABLEKS                       R8 R5 K20 ["ToolNames"]
       51 GETTABLEKS                       R9 R3 K21 ["JobStatus"]
       53 GETTABLEKS                       R10 R2 K22 ["FIntAssistantJobWaitDefaultTimeout"]
       55 DUPCLOSURE                       R11 K23 [PROTO_1]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R8
       64 RETURN                           R11 1
