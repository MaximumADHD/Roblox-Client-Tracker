PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Completed"]
        4 JUMPIFEQ                         R0 R2 ; [+14]
        6 LOADB                            R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["Failed"]
       10 JUMPIFEQ                         R0 R2 ; [+8]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["Cancelled"]
       15 JUMPIFEQ                         R0 R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"status", "generationId", "prompt"}]
        1 GETTABLEKS                       R2 R0 K0 ["status"]
        3 SETTABLEKS                       R2 R1 K0 ["status"]
        5 GETTABLEKS                       R2 R0 K1 ["generationId"]
        7 SETTABLEKS                       R2 R1 K1 ["generationId"]
        9 GETTABLEKS                       R2 R0 K2 ["prompt"]
       11 SETTABLEKS                       R2 R1 K2 ["prompt"]
       13 GETTABLEKS                       R2 R0 K0 ["status"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["Completed"]
       18 JUMPIFNOTEQ                      R2 R3 ; [+10]
       20 GETTABLEKS                       R2 R0 K5 ["resultName"]
       22 SETTABLEKS                       R2 R1 K5 ["resultName"]
       24 GETTABLEKS                       R2 R0 K6 ["modelFullName"]
       26 SETTABLEKS                       R2 R1 K6 ["modelFullName"]
       28 JUMP                             ; [+11]
       29 GETTABLEKS                       R2 R0 K0 ["status"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K7 ["Failed"]
       34 JUMPIFNOTEQ                      R2 R3 ; [+5]
       36 GETTABLEKS                       R2 R0 K8 ["errorMessage"]
       38 SETTABLEKS                       R2 R1 K8 ["errorMessage"]
       40 GETUPVAL                         R2 1
       41 CALL                             R2 0 1
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K9 ["encode"]
       45 MOVE                             R5 R1
       46 CALL                             R4 1 -1
       47 NAMECALL                         R2 R2 K10 ["addText"]
       49 CALL                             R2 -1 1
       50 GETTABLEKS                       R5 R0 K0 ["status"]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K7 ["Failed"]
       55 JUMPIFEQ                         R5 R6 ; [+2]
       57 LOADB                            R4 0 +1
       58 LOADB                            R4 1
       59 NAMECALL                         R2 R2 K11 ["setError"]
       61 CALL                             R2 2 1
       62 NAMECALL                         R2 R2 K12 ["build"]
       64 CALL                             R2 1 -1
       65 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["signal"]
        3 GETTABLEKS                       R0 R0 K1 ["aborted"]
        5 RETURN                           R0 1

PROTO_3:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["generationId"]
        2 GETTABLEKS                       R5 R0 K2 ["timeout"]
        4 ORK                              R4 R5 K1 [600]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K3 ["getJob"]
        8 MOVE                             R6 R3
        9 CALL                             R5 1 1
       10 JUMPIF                           R5 ; [+19]
       11 GETUPVAL                         R6 1
       12 CALL                             R6 0 1
       13 LOADK                            R9 K4 ["No job found with generation ID: %*"]
       14 MOVE                             R11 R3
       15 NAMECALL                         R9 R9 K5 ["format"]
       17 CALL                             R9 2 1
       18 MOVE                             R8 R9
       19 NAMECALL                         R6 R6 K6 ["addText"]
       21 CALL                             R6 2 1
       22 LOADB                            R8 1
       23 NAMECALL                         R6 R6 K7 ["setError"]
       25 CALL                             R6 2 1
       26 NAMECALL                         R6 R6 K8 ["build"]
       28 CALL                             R6 1 -1
       29 RETURN                           R6 -1
       30 GETIMPORT                        R6 K11 [os.clock]
       32 CALL                             R6 0 1
       33 JUMPIFNOT                        R2 ; [+6]
       34 GETTABLEKS                       R8 R2 K12 ["signal"]
       36 JUMPIFNOT                        R8 ; [+3]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R2
       39 JUMPIF                           R7 ; [+1]
       40 DUPCLOSURE                       R7 K13 [PROTO_3]
       41 GETTABLEKS                       R9 R5 K14 ["status"]
       43 LOADB                            R8 1
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R10 R10 K15 ["Completed"]
       47 JUMPIFEQ                         R9 R10 ; [+14]
       49 LOADB                            R8 1
       50 GETUPVAL                         R10 2
       51 GETTABLEKS                       R10 R10 K16 ["Failed"]
       53 JUMPIFEQ                         R9 R10 ; [+8]
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R10 R10 K17 ["Cancelled"]
       58 JUMPIFEQ                         R9 R10 ; [+2]
       60 LOADB                            R8 0 +1
       61 LOADB                            R8 1
       62 JUMPIF                           R8 ; [+84]
       63 MOVE                             R8 R7
       64 CALL                             R8 0 1
       65 JUMPIFNOT                        R8 ; [+15]
       66 GETUPVAL                         R8 1
       67 CALL                             R8 0 1
       68 LOADK                            R11 K18 ["Wait cancelled by user for generation ID: %*"]
       69 MOVE                             R13 R3
       70 NAMECALL                         R11 R11 K5 ["format"]
       72 CALL                             R11 2 1
       73 MOVE                             R10 R11
       74 NAMECALL                         R8 R8 K6 ["addText"]
       76 CALL                             R8 2 1
       77 NAMECALL                         R8 R8 K8 ["build"]
       79 CALL                             R8 1 -1
       80 RETURN                           R8 -1
       81 GETIMPORT                        R9 K11 [os.clock]
       83 CALL                             R9 0 1
       84 SUB                              R8 R9 R6
       85 JUMPIFNOTLE                      R4 R8 ; [+30]
       87 DUPTABLE                         R8 K22 [{["status"] = "Timeout", [2], ["lastKnownStatus"], ["serverStage"]}]
       88 SETTABLEKS                       R3 R8 K0 ["generationId"]
       90 GETTABLEKS                       R9 R5 K14 ["status"]
       92 SETTABLEKS                       R9 R8 K20 ["lastKnownStatus"]
       94 GETTABLEKS                       R9 R5 K21 ["serverStage"]
       96 SETTABLEKS                       R9 R8 K21 ["serverStage"]
       98 GETUPVAL                         R9 1
       99 CALL                             R9 0 1
      100 GETUPVAL                         R11 3
      101 GETTABLEKS                       R11 R11 K23 ["encode"]
      103 MOVE                             R12 R8
      104 CALL                             R11 1 -1
      105 NAMECALL                         R9 R9 K6 ["addText"]
      107 CALL                             R9 -1 1
      108 LOADB                            R11 1
      109 NAMECALL                         R9 R9 K7 ["setError"]
      111 CALL                             R9 2 1
      112 NAMECALL                         R9 R9 K8 ["build"]
      114 CALL                             R9 1 -1
      115 RETURN                           R9 -1
      116 GETIMPORT                        R8 K26 [task.wait]
      118 LOADN                            R9 2
      119 CALL                             R8 1 0
      120 GETUPVAL                         R8 0
      121 GETTABLEKS                       R8 R8 K3 ["getJob"]
      123 MOVE                             R9 R3
      124 CALL                             R8 1 1
      125 MOVE                             R5 R8
      126 JUMPIF                           R5 ; [+19]
      127 GETUPVAL                         R8 1
      128 CALL                             R8 0 1
      129 LOADK                            R11 K27 ["Job with generation ID %* was removed during wait"]
      130 MOVE                             R13 R3
      131 NAMECALL                         R11 R11 K5 ["format"]
      133 CALL                             R11 2 1
      134 MOVE                             R10 R11
      135 NAMECALL                         R8 R8 K6 ["addText"]
      137 CALL                             R8 2 1
      138 LOADB                            R10 1
      139 NAMECALL                         R8 R8 K7 ["setError"]
      141 CALL                             R8 2 1
      142 NAMECALL                         R8 R8 K8 ["build"]
      144 CALL                             R8 1 -1
      145 RETURN                           R8 -1
      146 JUMPBACK                         ; [-106]
      147 GETUPVAL                         R8 4
      148 MOVE                             R9 R5
      149 CALL                             R8 1 -1
      150 RETURN                           R8 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["WaitJobFinished"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 DUPCLOSURE                       R1 K0 [PROTO_4]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 GETUPVAL                         R2 5
        7 GETTABLEKS                       R2 R2 K1 ["define"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R4 6
       11 GETTABLEKS                       R4 R4 K2 ["WaitJobFinished"]
       13 NAMECALL                         R2 R2 K3 ["setName"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 6
       17 GETTABLEKS                       R4 R4 K4 ["replaceTokens"]
       19 LOADK                            R5 K5 ["Wait for a primitive generation job to finish. Returns the final status and details when the job reaches a terminal state (Completed, Failed, or Cancelled).\n\nDO NOT call this tool automatically after {ToolNames.PrimitiveGen}. The {ToolNames.PrimitiveGen} tool already handles generation in the background and updates the UI.\n\nOnly call this tool when:\n- The user EXPLICITLY asks to wait for the generation to finish (e.g. \"wait for it to complete\", \"let me know when it's done\")\n- You need to confirm the generation result before performing a follow-up action that depends on it (e.g. the user says \"create a car with primitives and then change its color to red\")"]
       20 CALL                             R4 1 -1
       21 NAMECALL                         R2 R2 K6 ["setDescription"]
       23 CALL                             R2 -1 1
       24 LOADK                            R4 K7 ["generationId"]
       25 DUPTABLE                         R5 K11 [{["type"] = "string", ["description"]}]
       26 LOADK                            R7 K12 ["The generation ID returned by the %* tool."]
       27 GETUPVAL                         R9 6
       28 GETTABLEKS                       R9 R9 K13 ["PrimitiveGen"]
       30 NAMECALL                         R7 R7 K14 ["format"]
       32 CALL                             R7 2 1
       33 MOVE                             R6 R7
       34 SETTABLEKS                       R6 R5 K10 ["description"]
       36 NAMECALL                         R2 R2 K15 ["addArgument"]
       38 CALL                             R2 3 1
       39 LOADK                            R4 K16 ["timeout"]
       40 DUPTABLE                         R5 K19 [{["type"] = "number", ["description"] = "Maximum time in seconds to wait for the job to finish. Defaults to 600 (10 minutes)."}]
       41 NAMECALL                         R2 R2 K20 ["addOptionalArgument"]
       43 CALL                             R2 3 1
       44 MOVE                             R4 R1
       45 NAMECALL                         R2 R2 K21 ["setHandler"]
       47 CALL                             R2 2 1
       48 DUPTABLE                         R4 K30 [{["title"] = "Wait Job Finished", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       49 NAMECALL                         R2 R2 K31 ["setAnnotations"]
       51 CALL                             R2 2 1
       52 NAMECALL                         R2 R2 K32 ["build"]
       54 CALL                             R2 1 1
       55 DUPTABLE                         R3 K35 [{"definition", "displayNameFunction"}]
       56 SETTABLEKS                       R2 R3 K33 ["definition"]
       58 GETUPVAL                         R5 7
       59 GETTABLEKS                       R5 R5 K36 ["FFlagAssistantSplitToolsAndWidgets"]
       61 JUMPIFNOT                        R5 ; [+2]
       62 LOADNIL                          R4
       63 JUMP                             ; [+2]
       64 DUPCLOSURE                       R4 K37 [PROTO_5]
       65 CAPTURE                          UPVAL U8
       66 SETTABLEKS                       R4 R3 K34 ["displayNameFunction"]
       68 RETURN                           R3 1

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
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Features"]
       23 GETTABLEKS                       R4 R4 K10 ["PrimitiveGen"]
       25 GETTABLEKS                       R4 R4 K11 ["PrimitiveGenTool"]
       27 GETTABLEKS                       R4 R4 K12 ["PrimitiveGenJobStore"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Tools"]
       34 GETTABLEKS                       R5 R5 K14 ["ToolTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K15 ["Resources"]
       41 GETTABLEKS                       R6 R6 K16 ["Localization"]
       43 GETTABLEKS                       R6 R6 K17 ["Translator"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K18 ["Util"]
       48 GETTABLEKS                       R6 R6 K19 ["ToolBuilder"]
       50 GETTABLEKS                       R7 R2 K18 ["Util"]
       52 GETTABLEKS                       R7 R7 K20 ["ToolResult"]
       54 GETTABLEKS                       R8 R2 K21 ["Json"]
       56 GETTABLEKS                       R9 R4 K22 ["ToolNames"]
       58 GETTABLEKS                       R10 R3 K23 ["JobStatus"]
       60 DUPCLOSURE                       R11 K24 [PROTO_0]
       61 CAPTURE                          VAL R10
       62 DUPCLOSURE                       R12 K25 [PROTO_1]
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R13 K26 [PROTO_6]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R5
       76 RETURN                           R13 1
