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
      154 DUPTABLE                         R6 K19 [{"status", "jobResult"}]
      155 GETTABLEKS                       R7 R5 K14 ["status"]
      157 SETTABLEKS                       R7 R6 K14 ["status"]
      159 GETTABLEKS                       R7 R5 K21 ["toolResult"]
      161 SETTABLEKS                       R7 R6 K18 ["jobResult"]
      163 GETUPVAL                         R7 0
      164 CALL                             R7 0 1
      165 GETUPVAL                         R9 4
      166 MOVE                             R11 R6
      167 NAMECALL                         R9 R9 K22 ["JSONEncode"]
      169 CALL                             R9 2 -1
      170 NAMECALL                         R7 R7 K3 ["addText"]
      172 CALL                             R7 -1 1
      173 MOVE                             R9 R6
      174 NAMECALL                         R7 R7 K23 ["setStructuredContent"]
      176 CALL                             R7 2 1
      177 NAMECALL                         R7 R7 K5 ["build"]
      179 CALL                             R7 1 -1
      180 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantMigratePrimitiveGenTool"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 DUPCLOSURE                       R1 K1 [PROTO_0]
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 GETUPVAL                         R2 7
       15 GETTABLEKS                       R2 R2 K2 ["define"]
       17 CALL                             R2 0 1
       18 GETUPVAL                         R4 8
       19 GETTABLEKS                       R4 R4 K3 ["JobWait"]
       21 NAMECALL                         R2 R2 K4 ["setName"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R4 K7 [table.concat]
       26 NEWTABLE                         R5 0 7
       28 LOADK                            R7 K8 ["Wait for a background job to finish. Returns the final status and details when the job reaches a terminal state (%*, %*, or %*)."]
       29 GETUPVAL                         R9 5
       30 GETTABLEKS                       R9 R9 K9 ["Completed"]
       32 GETUPVAL                         R10 5
       33 GETTABLEKS                       R10 R10 K10 ["Failed"]
       35 GETUPVAL                         R11 5
       36 GETTABLEKS                       R11 R11 K11 ["Cancelled"]
       38 NAMECALL                         R7 R7 K12 ["format"]
       40 CALL                             R7 4 1
       41 MOVE                             R6 R7
       42 LOADK                            R7 K13 [""]
       43 LOADK                            R9 K14 ["Pass the jobId returned by %*."]
       44 GETUPVAL                         R11 8
       45 GETTABLEKS                       R11 R11 K15 ["JobRun"]
       47 NAMECALL                         R9 R9 K12 ["format"]
       49 CALL                             R9 2 1
       50 MOVE                             R8 R9
       51 LOADK                            R9 K13 [""]
       52 LOADK                            R10 K16 ["Only call this tool when:"]
       53 LOADK                            R11 K17 ["- The user EXPLICITLY asks to wait for a backgrounded job to finish (e.g. \"wait for it to complete\", \"let me know when it's done\")"]
       54 LOADK                            R12 K18 ["- You need to confirm a job's result before performing a follow-up action that depends on it"]
       55 SETLIST                          R5 R6 7 [1]
       57 LOADK                            R6 K19 ["\n"]
       58 CALL                             R4 2 -1
       59 NAMECALL                         R2 R2 K20 ["setDescription"]
       61 CALL                             R2 -1 1
       62 LOADK                            R4 K21 ["jobId"]
       63 DUPTABLE                         R5 K25 [{["type"] = "string", ["description"]}]
       64 LOADK                            R7 K26 ["The jobId returned by the %* tool."]
       65 GETUPVAL                         R9 8
       66 GETTABLEKS                       R9 R9 K15 ["JobRun"]
       68 NAMECALL                         R7 R7 K12 ["format"]
       70 CALL                             R7 2 1
       71 MOVE                             R6 R7
       72 SETTABLEKS                       R6 R5 K24 ["description"]
       74 NAMECALL                         R2 R2 K27 ["addArgument"]
       76 CALL                             R2 3 1
       77 LOADK                            R4 K28 ["timeout"]
       78 DUPTABLE                         R5 K30 [{["type"] = "number", ["description"]}]
       79 LOADK                            R7 K31 ["Maximum time in seconds to wait for the job to finish. Defaults to %* seconds."]
       80 GETUPVAL                         R9 4
       81 NAMECALL                         R7 R7 K12 ["format"]
       83 CALL                             R7 2 1
       84 MOVE                             R6 R7
       85 SETTABLEKS                       R6 R5 K24 ["description"]
       87 NAMECALL                         R2 R2 K32 ["addOptionalArgument"]
       89 CALL                             R2 3 1
       90 MOVE                             R4 R1
       91 NAMECALL                         R2 R2 K33 ["setHandler"]
       93 CALL                             R2 2 1
       94 DUPTABLE                         R4 K42 [{["title"] = "Wait Job Finished", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       95 NAMECALL                         R2 R2 K43 ["setAnnotations"]
       97 CALL                             R2 2 1
       98 NAMECALL                         R2 R2 K44 ["build"]
      100 CALL                             R2 1 1
      101 DUPTABLE                         R3 K46 [{"definition"}]
      102 SETTABLEKS                       R2 R3 K45 ["definition"]
      104 RETURN                           R3 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Tools"]
       17 GETTABLEKS                       R3 R3 K11 ["DEPRECATED_JobWaitTool"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Util"]
       29 GETTABLEKS                       R5 R5 K14 ["Jobs"]
       31 GETTABLEKS                       R5 R5 K15 ["JobStore"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Parent"]
       38 GETTABLEKS                       R6 R6 K17 ["ModelContextProtocol"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Tools"]
       45 GETTABLEKS                       R7 R7 K18 ["ToolTypes"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R5 K13 ["Util"]
       50 GETTABLEKS                       R7 R7 K19 ["ToolBuilder"]
       52 GETTABLEKS                       R8 R5 K13 ["Util"]
       54 GETTABLEKS                       R8 R8 K20 ["ToolResult"]
       56 GETTABLEKS                       R9 R6 K21 ["ToolNames"]
       58 GETTABLEKS                       R10 R4 K22 ["JobStatus"]
       60 GETTABLEKS                       R11 R3 K23 ["FIntAssistantJobWaitDefaultTimeout"]
       62 DUPCLOSURE                       R12 K24 [PROTO_1]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 RETURN                           R12 1
