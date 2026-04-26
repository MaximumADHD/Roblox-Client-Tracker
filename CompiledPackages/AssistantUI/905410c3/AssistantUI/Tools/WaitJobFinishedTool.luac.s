PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["Completed"]
        4 JUMPIFEQ                         R0 R2 ; [+14]
        6 LOADB                            R1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["Failed"]
       10 JUMPIFEQ                         R0 R2 ; [+8]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["Cancelled"]
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
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K4 ["Completed"]
       18 JUMPIFNOTEQ                      R2 R3 ; [+10]
       20 GETTABLEKS                       R2 R0 K5 ["resultName"]
       22 SETTABLEKS                       R2 R1 K5 ["resultName"]
       24 GETTABLEKS                       R2 R0 K6 ["modelFullName"]
       26 SETTABLEKS                       R2 R1 K6 ["modelFullName"]
       28 JUMP                             ; [+11]
       29 GETTABLEKS                       R2 R0 K0 ["status"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K7 ["Failed"]
       34 JUMPIFNOTEQ                      R2 R3 ; [+5]
       36 GETTABLEKS                       R2 R0 K8 ["errorMessage"]
       38 SETTABLEKS                       R2 R1 K8 ["errorMessage"]
       40 GETUPVAL                         R2 1
       41 CALL                             R2 0 1
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R4 R5 K9 ["encode"]
       45 MOVE                             R5 R1
       46 CALL                             R4 1 -1
       47 NAMECALL                         R2 R2 K10 ["addText"]
       49 CALL                             R2 -1 1
       50 GETTABLEKS                       R5 R0 K0 ["status"]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R6 R7 K7 ["Failed"]
       55 JUMPIFEQ                         R5 R6 ; [+2]
       57 LOADB                            R4 0 +1
       58 LOADB                            R4 1
       59 NAMECALL                         R2 R2 K11 ["setError"]
       61 CALL                             R2 2 1
       62 NAMECALL                         R2 R2 K12 ["build"]
       64 CALL                             R2 1 -1
       65 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["signal"]
        3 GETTABLEKS                       R0 R1 K1 ["aborted"]
        5 RETURN                           R0 1

PROTO_3:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["generationId"]
        2 GETTABLEKS                       R5 R0 K2 ["timeout"]
        4 ORK                              R4 R5 K1 [600]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K3 ["getJob"]
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
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R10 R11 K15 ["Completed"]
       47 JUMPIFEQ                         R9 R10 ; [+14]
       49 LOADB                            R8 1
       50 GETUPVAL                         R11 2
       51 GETTABLEKS                       R10 R11 K16 ["Failed"]
       53 JUMPIFEQ                         R9 R10 ; [+8]
       55 GETUPVAL                         R11 2
       56 GETTABLEKS                       R10 R11 K17 ["Cancelled"]
       58 JUMPIFEQ                         R9 R10 ; [+2]
       60 LOADB                            R8 0 +1
       61 LOADB                            R8 1
       62 JUMPIF                           R8 ; [+87]
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
       85 JUMPIFNOTLE                      R4 R8 ; [+33]
       87 DUPTABLE                         R8 K21 [{"status", "generationId", "lastKnownStatus", "serverStage"}]
       88 LOADK                            R9 K22 ["Timeout"]
       89 SETTABLEKS                       R9 R8 K14 ["status"]
       91 SETTABLEKS                       R3 R8 K0 ["generationId"]
       93 GETTABLEKS                       R9 R5 K14 ["status"]
       95 SETTABLEKS                       R9 R8 K19 ["lastKnownStatus"]
       97 GETTABLEKS                       R9 R5 K20 ["serverStage"]
       99 SETTABLEKS                       R9 R8 K20 ["serverStage"]
      101 GETUPVAL                         R9 1
      102 CALL                             R9 0 1
      103 GETUPVAL                         R12 3
      104 GETTABLEKS                       R11 R12 K23 ["encode"]
      106 MOVE                             R12 R8
      107 CALL                             R11 1 -1
      108 NAMECALL                         R9 R9 K6 ["addText"]
      110 CALL                             R9 -1 1
      111 LOADB                            R11 1
      112 NAMECALL                         R9 R9 K7 ["setError"]
      114 CALL                             R9 2 1
      115 NAMECALL                         R9 R9 K8 ["build"]
      117 CALL                             R9 1 -1
      118 RETURN                           R9 -1
      119 GETIMPORT                        R8 K26 [task.wait]
      121 LOADN                            R9 2
      122 CALL                             R8 1 0
      123 GETUPVAL                         R9 0
      124 GETTABLEKS                       R8 R9 K3 ["getJob"]
      126 MOVE                             R9 R3
      127 CALL                             R8 1 1
      128 MOVE                             R5 R8
      129 JUMPIF                           R5 ; [+19]
      130 GETUPVAL                         R8 1
      131 CALL                             R8 0 1
      132 LOADK                            R11 K27 ["Job with generation ID %* was removed during wait"]
      133 MOVE                             R13 R3
      134 NAMECALL                         R11 R11 K5 ["format"]
      136 CALL                             R11 2 1
      137 MOVE                             R10 R11
      138 NAMECALL                         R8 R8 K6 ["addText"]
      140 CALL                             R8 2 1
      141 LOADB                            R10 1
      142 NAMECALL                         R8 R8 K7 ["setError"]
      144 CALL                             R8 2 1
      145 NAMECALL                         R8 R8 K8 ["build"]
      147 CALL                             R8 1 -1
      148 RETURN                           R8 -1
      149 JUMPBACK                         ; [-109]
      150 GETUPVAL                         R8 4
      151 MOVE                             R9 R5
      152 CALL                             R8 1 -1
      153 RETURN                           R8 -1

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
        6 GETUPVAL                         R3 5
        7 GETTABLEKS                       R2 R3 K1 ["define"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R5 6
       11 GETTABLEKS                       R4 R5 K2 ["WaitJobFinished"]
       13 NAMECALL                         R2 R2 K3 ["setName"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R5 6
       17 GETTABLEKS                       R4 R5 K4 ["replaceTokens"]
       19 LOADK                            R5 K5 ["Wait for a primitive generation job to finish. Returns the final status and details when the job reaches a terminal state (Completed, Failed, or Cancelled).\n\nDO NOT call this tool automatically after {ToolNames.PrimitiveGen}. The {ToolNames.PrimitiveGen} tool already handles generation in the background and updates the UI.\n\nOnly call this tool when:\n- The user EXPLICITLY asks to wait for the generation to finish (e.g. \"wait for it to complete\", \"let me know when it's done\")\n- You need to confirm the generation result before performing a follow-up action that depends on it (e.g. the user says \"create a car with primitives and then change its color to red\")"]
       20 CALL                             R4 1 -1
       21 NAMECALL                         R2 R2 K6 ["setDescription"]
       23 CALL                             R2 -1 1
       24 LOADK                            R4 K7 ["generationId"]
       25 DUPTABLE                         R5 K10 [{"type", "description"}]
       26 LOADK                            R6 K11 ["string"]
       27 SETTABLEKS                       R6 R5 K8 ["type"]
       29 LOADK                            R7 K12 ["The generation ID returned by the %* tool."]
       30 GETUPVAL                         R10 6
       31 GETTABLEKS                       R9 R10 K13 ["PrimitiveGen"]
       33 NAMECALL                         R7 R7 K14 ["format"]
       35 CALL                             R7 2 1
       36 MOVE                             R6 R7
       37 SETTABLEKS                       R6 R5 K9 ["description"]
       39 NAMECALL                         R2 R2 K15 ["addArgument"]
       41 CALL                             R2 3 1
       42 LOADK                            R4 K16 ["timeout"]
       43 DUPTABLE                         R5 K10 [{"type", "description"}]
       44 LOADK                            R6 K17 ["number"]
       45 SETTABLEKS                       R6 R5 K8 ["type"]
       47 LOADK                            R6 K18 ["Maximum time in seconds to wait for the job to finish. Defaults to 600 (10 minutes)."]
       48 SETTABLEKS                       R6 R5 K9 ["description"]
       50 NAMECALL                         R2 R2 K19 ["addOptionalArgument"]
       52 CALL                             R2 3 1
       53 MOVE                             R4 R1
       54 NAMECALL                         R2 R2 K20 ["setHandler"]
       56 CALL                             R2 2 1
       57 NAMECALL                         R2 R2 K21 ["build"]
       59 CALL                             R2 1 1
       60 DUPTABLE                         R3 K24 [{"definition", "displayNameFunction"}]
       61 SETTABLEKS                       R2 R3 K22 ["definition"]
       63 DUPCLOSURE                       R4 K25 [PROTO_5]
       64 CAPTURE                          UPVAL U7
       65 SETTABLEKS                       R4 R3 K23 ["displayNameFunction"]
       67 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Features"]
       18 GETTABLEKS                       R5 R6 K9 ["PrimitiveGen"]
       20 GETTABLEKS                       R4 R5 K10 ["PrimitiveGenTool"]
       22 GETTABLEKS                       R3 R4 K11 ["PrimitiveGenJobStore"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Tools"]
       29 GETTABLEKS                       R4 R5 K13 ["ToolTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K14 ["Resources"]
       36 GETTABLEKS                       R6 R7 K15 ["Localization"]
       38 GETTABLEKS                       R5 R6 K16 ["Translator"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R6 R1 K17 ["Util"]
       43 GETTABLEKS                       R5 R6 K18 ["ToolBuilder"]
       45 GETTABLEKS                       R7 R1 K17 ["Util"]
       47 GETTABLEKS                       R6 R7 K19 ["ToolResult"]
       49 GETTABLEKS                       R7 R1 K20 ["Json"]
       51 GETTABLEKS                       R8 R3 K21 ["ToolNames"]
       53 GETTABLEKS                       R9 R2 K22 ["JobStatus"]
       55 DUPCLOSURE                       R10 K23 [PROTO_0]
       56 CAPTURE                          VAL R9
       57 DUPCLOSURE                       R11 K24 [PROTO_1]
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 DUPCLOSURE                       R12 K25 [PROTO_6]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R4
       70 RETURN                           R12 1
