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
       47 GETUPVAL                         R5 3
       48 GETTABLEKS                       R5 R5 K10 ["FFlagAssistantJobWaitExternalMcp"]
       50 JUMPIFNOT                        R5 ; [+16]
       51 JUMPIFEQKNIL                     R1 ; [+15]
       53 GETTABLEKS                       R5 R1 K11 ["isThirdPartyRequest"]
       55 JUMPIFNOTEQKB                    R5 TRUE ; [+11]
       57 GETUPVAL                         R7 3
       58 GETTABLEKS                       R7 R7 K12 ["FIntAssistantJobWaitExternalMaxTimeout"]
       60 FASTCALL2                        MATH_MIN R4 R7 ; [+4]
       62 MOVE                             R6 R4
       63 GETIMPORT                        R5 K15 [math.min]
       65 CALL                             R5 2 1
       66 MOVE                             R4 R5
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K16 ["waitForTerminal"]
       70 MOVE                             R6 R3
       71 MOVE                             R7 R4
       72 GETTABLEKS                       R8 R2 K17 ["signal"]
       74 CALL                             R5 3 0
       75 GETUPVAL                         R5 1
       76 GETTABLEKS                       R5 R5 K6 ["getJob"]
       78 MOVE                             R6 R3
       79 CALL                             R5 1 1
       80 JUMPIF                           R5 ; [+18]
       81 GETUPVAL                         R6 0
       82 CALL                             R6 0 1
       83 LOADK                            R8 K18 ["Job %* was removed during wait."]
       84 MOVE                             R10 R3
       85 NAMECALL                         R8 R8 K8 ["format"]
       87 CALL                             R8 2 1
       88 NAMECALL                         R6 R6 K3 ["addText"]
       90 CALL                             R6 2 1
       91 LOADB                            R8 1
       92 NAMECALL                         R6 R6 K4 ["setError"]
       94 CALL                             R6 2 1
       95 NAMECALL                         R6 R6 K5 ["build"]
       97 CALL                             R6 1 -1
       98 RETURN                           R6 -1
       99 GETUPVAL                         R6 1
      100 GETTABLEKS                       R6 R6 K19 ["isTerminal"]
      102 GETTABLEKS                       R7 R5 K20 ["status"]
      104 CALL                             R6 1 1
      105 JUMPIF                           R6 ; [+107]
      106 GETTABLEKS                       R6 R2 K17 ["signal"]
      108 JUMPIFEQKNIL                     R6 ; [+30]
      110 GETTABLEKS                       R6 R2 K17 ["signal"]
      112 GETTABLEKS                       R6 R6 K21 ["aborted"]
      114 JUMPIFNOTEQKB                    R6 TRUE ; [+24]
      116 GETUPVAL                         R6 1
      117 GETTABLEKS                       R6 R6 K22 ["cancelJob"]
      119 MOVE                             R7 R3
      120 CALL                             R6 1 0
      121 GETUPVAL                         R6 0
      122 CALL                             R6 0 1
      123 LOADK                            R8 K23 ["Job %* was cancelled by user."]
      124 MOVE                             R10 R3
      125 NAMECALL                         R8 R8 K8 ["format"]
      127 CALL                             R8 2 1
      128 NAMECALL                         R6 R6 K3 ["addText"]
      130 CALL                             R6 2 1
      131 LOADB                            R8 1
      132 NAMECALL                         R6 R6 K4 ["setError"]
      134 CALL                             R6 2 1
      135 NAMECALL                         R6 R6 K5 ["build"]
      137 CALL                             R6 1 -1
      138 RETURN                           R6 -1
      139 GETUPVAL                         R6 3
      140 GETTABLEKS                       R6 R6 K10 ["FFlagAssistantJobWaitExternalMcp"]
      142 JUMPIFNOT                        R6 ; [+38]
      143 DUPTABLE                         R6 K25 [{"status", "jobResult"}]
      144 GETTABLEKS                       R7 R5 K20 ["status"]
      146 SETTABLEKS                       R7 R6 K20 ["status"]
      148 GETTABLEKS                       R7 R5 K26 ["toolResult"]
      150 SETTABLEKS                       R7 R6 K24 ["jobResult"]
      152 GETUPVAL                         R7 0
      153 CALL                             R7 0 1
      154 GETUPVAL                         R9 4
      155 MOVE                             R11 R6
      156 NAMECALL                         R9 R9 K27 ["JSONEncode"]
      158 CALL                             R9 2 -1
      159 NAMECALL                         R7 R7 K3 ["addText"]
      161 CALL                             R7 -1 1
      162 LOADK                            R9 K28 ["Job %* is still running. Call %* again to keep waiting."]
      163 MOVE                             R11 R3
      164 GETUPVAL                         R12 5
      165 GETTABLEKS                       R12 R12 K29 ["JobWait"]
      167 NAMECALL                         R9 R9 K8 ["format"]
      169 CALL                             R9 3 1
      170 NAMECALL                         R7 R7 K3 ["addText"]
      172 CALL                             R7 2 1
      173 MOVE                             R9 R6
      174 NAMECALL                         R7 R7 K30 ["setStructuredContent"]
      176 CALL                             R7 2 1
      177 NAMECALL                         R7 R7 K5 ["build"]
      179 CALL                             R7 1 -1
      180 RETURN                           R7 -1
      181 DUPTABLE                         R6 K25 [{"status", "jobResult"}]
      182 GETUPVAL                         R7 6
      183 GETTABLEKS                       R7 R7 K31 ["Timeout"]
      185 SETTABLEKS                       R7 R6 K20 ["status"]
      187 GETTABLEKS                       R7 R5 K26 ["toolResult"]
      189 SETTABLEKS                       R7 R6 K24 ["jobResult"]
      191 GETUPVAL                         R7 0
      192 CALL                             R7 0 1
      193 GETUPVAL                         R9 4
      194 MOVE                             R11 R6
      195 NAMECALL                         R9 R9 K27 ["JSONEncode"]
      197 CALL                             R9 2 -1
      198 NAMECALL                         R7 R7 K3 ["addText"]
      200 CALL                             R7 -1 1
      201 MOVE                             R9 R6
      202 NAMECALL                         R7 R7 K30 ["setStructuredContent"]
      204 CALL                             R7 2 1
      205 LOADB                            R9 1
      206 NAMECALL                         R7 R7 K4 ["setError"]
      208 CALL                             R7 2 1
      209 NAMECALL                         R7 R7 K5 ["build"]
      211 CALL                             R7 1 -1
      212 RETURN                           R7 -1
      213 GETUPVAL                         R6 1
      214 GETTABLEKS                       R6 R6 K32 ["updateJob"]
      216 MOVE                             R7 R3
      217 DUPTABLE                         R8 K35 [{["resultPersisted"] = True}]
      218 CALL                             R6 2 0
      219 DUPTABLE                         R6 K25 [{"status", "jobResult"}]
      220 GETTABLEKS                       R7 R5 K20 ["status"]
      222 SETTABLEKS                       R7 R6 K20 ["status"]
      224 GETTABLEKS                       R7 R5 K26 ["toolResult"]
      226 SETTABLEKS                       R7 R6 K24 ["jobResult"]
      228 GETUPVAL                         R7 0
      229 CALL                             R7 0 1
      230 GETUPVAL                         R9 4
      231 MOVE                             R11 R6
      232 NAMECALL                         R9 R9 K27 ["JSONEncode"]
      234 CALL                             R9 2 -1
      235 NAMECALL                         R7 R7 K3 ["addText"]
      237 CALL                             R7 -1 1
      238 MOVE                             R9 R6
      239 NAMECALL                         R7 R7 K30 ["setStructuredContent"]
      241 CALL                             R7 2 1
      242 NAMECALL                         R7 R7 K5 ["build"]
      244 CALL                             R7 1 -1
      245 RETURN                           R7 -1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
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
       12 GETUPVAL                         R4 5
       13 GETTABLEKS                       R4 R4 K2 ["JobWait"]
       15 NAMECALL                         R2 R2 K3 ["setName"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R5 K6 [table.concat]
       20 NEWTABLE                         R6 0 7
       22 LOADK                            R7 K7 ["Wait for a background job to finish. Returns the final status and details when the job reaches a terminal state (%*, %*, or %*)."]
       23 GETUPVAL                         R9 6
       24 GETTABLEKS                       R9 R9 K8 ["Completed"]
       26 GETUPVAL                         R10 6
       27 GETTABLEKS                       R10 R10 K9 ["Failed"]
       29 GETUPVAL                         R11 6
       30 GETTABLEKS                       R11 R11 K10 ["Cancelled"]
       32 NAMECALL                         R7 R7 K11 ["format"]
       34 CALL                             R7 4 1
       35 LOADK                            R8 K12 [""]
       36 LOADK                            R9 K13 ["Pass the jobId returned when a tool was called with its '%*' argument set to true."]
       37 GETUPVAL                         R11 8
       38 GETTABLEKS                       R11 R11 K14 ["ASYNC_ARG"]
       40 NAMECALL                         R9 R9 K11 ["format"]
       42 CALL                             R9 2 1
       43 LOADK                            R10 K12 [""]
       44 LOADK                            R11 K15 ["Only call this tool when:"]
       45 LOADK                            R12 K16 ["- The user EXPLICITLY asks to wait for a backgrounded job to finish (e.g. \"wait for it to complete\", \"let me know when it's done\")"]
       46 LOADK                            R13 K17 ["- You need to confirm a job's result before performing a follow-up action that depends on it"]
       47 SETLIST                          R6 R7 7 [1]
       49 LOADK                            R7 K18 ["\n"]
       50 CALL                             R5 2 1
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K19 ["FFlagAssistantJobWaitExternalMcp"]
       54 JUMPIFNOT                        R7 ; [+8]
       55 LOADK                            R6 K20 ["\n\nIf the job is still running when the wait ends, the status is %*. Call this tool again with the same jobId to keep waiting."]
       56 GETUPVAL                         R8 6
       57 GETTABLEKS                       R8 R8 K21 ["Running"]
       59 NAMECALL                         R6 R6 K11 ["format"]
       61 CALL                             R6 2 1
       62 JUMP                             ; [+1]
       63 LOADK                            R6 K12 [""]
       64 CONCAT                           R4 R5 R6
       65 NAMECALL                         R2 R2 K22 ["setDescription"]
       67 CALL                             R2 2 1
       68 LOADK                            R4 K23 ["jobId"]
       69 DUPTABLE                         R5 K27 [{["type"] = "string", ["description"]}]
       70 LOADK                            R6 K28 ["The jobId returned when a tool was called with its '%*' argument set to true."]
       71 GETUPVAL                         R8 8
       72 GETTABLEKS                       R8 R8 K14 ["ASYNC_ARG"]
       74 NAMECALL                         R6 R6 K11 ["format"]
       76 CALL                             R6 2 1
       77 SETTABLEKS                       R6 R5 K26 ["description"]
       79 NAMECALL                         R2 R2 K29 ["addArgument"]
       81 CALL                             R2 3 1
       82 LOADK                            R4 K30 ["timeout"]
       83 DUPTABLE                         R5 K32 [{["type"] = "number", ["description"]}]
       84 GETUPVAL                         R7 3
       85 GETTABLEKS                       R7 R7 K19 ["FFlagAssistantJobWaitExternalMcp"]
       87 JUMPIFNOT                        R7 ; [+9]
       88 LOADK                            R6 K33 ["Maximum time in seconds to wait for the job to finish. Defaults to %* seconds, capped at %* seconds for external MCP clients."]
       89 GETUPVAL                         R8 2
       90 GETUPVAL                         R9 3
       91 GETTABLEKS                       R9 R9 K34 ["FIntAssistantJobWaitExternalMaxTimeout"]
       93 NAMECALL                         R6 R6 K11 ["format"]
       95 CALL                             R6 3 1
       96 JUMP                             ; [+5]
       97 LOADK                            R6 K35 ["Maximum time in seconds to wait for the job to finish. Defaults to %* seconds."]
       98 GETUPVAL                         R8 2
       99 NAMECALL                         R6 R6 K11 ["format"]
      101 CALL                             R6 2 1
      102 SETTABLEKS                       R6 R5 K26 ["description"]
      104 NAMECALL                         R2 R2 K36 ["addOptionalArgument"]
      106 CALL                             R2 3 1
      107 MOVE                             R4 R1
      108 NAMECALL                         R2 R2 K37 ["setHandler"]
      110 CALL                             R2 2 1
      111 LOADK                            R4 K38 ["Wait Job Finished"]
      112 NAMECALL                         R2 R2 K39 ["setTitle"]
      114 CALL                             R2 2 1
      115 DUPTABLE                         R4 K47 [{["title"] = "Wait Job Finished", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      116 NAMECALL                         R2 R2 K48 ["setAnnotations"]
      118 CALL                             R2 2 1
      119 NAMECALL                         R2 R2 K49 ["build"]
      121 CALL                             R2 1 1
      122 DUPTABLE                         R3 K51 [{"definition"}]
      123 SETTABLEKS                       R2 R3 K50 ["definition"]
      125 RETURN                           R3 1

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
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R2
       74 RETURN                           R12 1
