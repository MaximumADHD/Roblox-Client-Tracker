PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getAll"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 LOADK                            R10 K1 ["  <subagent>\n    <name>%*</name>\n    <description>%*</description>\n  </subagent>"]
       11 GETTABLEKS                       R12 R6 K2 ["name"]
       13 GETTABLEKS                       R13 R6 K3 ["description"]
       15 NAMECALL                         R10 R10 K4 ["format"]
       17 CALL                             R10 3 1
       18 MOVE                             R9 R10
       19 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       21 MOVE                             R8 R1
       22 GETIMPORT                        R7 K7 [table.insert]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-16]
       27 GETIMPORT                        R2 K9 [table.sort]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 LOADK                            R3 K10 ["Launch a specialized subagent to handle complex, multi-step tasks autonomously.\nSubagents are independent AI assistants with restricted tool access and specialized instructions.\n\n<available_subagents>\n"]
       32 GETIMPORT                        R6 K12 [table.concat]
       34 MOVE                             R7 R1
       35 LOADK                            R8 K13 ["\n"]
       36 CALL                             R6 2 1
       37 MOVE                             R4 R6
       38 LOADK                            R5 K14 ["\n</available_subagents>\n\nWhen to use subagents:\n1. When you need to explore the codebase before making decisions\n2. When a task requires multiple search/read steps across many files\n3. When you're uncertain about the right approach and need autonomous investigation\n4. To separate concerns (e.g., explore first, then modify)\n\nImportant:\n1. Subagents return a final text result summarizing their work\n2. You cannot have a back-and-forth conversation with a subagent\n3. Subagents cannot spawn other subagents (no nesting)\n4. Choose the most specific subagent for your task"]
       39 CONCAT                           R2 R3 R5
       40 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 1
        7 SETTABLE                         R7 R1 R6
        8 FORGLOOP                         R2 2 ; [-3]
       10 NEWTABLE                         R2 0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["getDefinitions"]
       15 CALL                             R3 0 3
       16 FORGPREP                         R3
       17 GETTABLEKS                       R9 R7 K1 ["name"]
       19 GETTABLE                         R8 R1 R9
       20 JUMPIFNOT                        R8 ; [+7]
       21 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       23 MOVE                             R9 R2
       24 MOVE                             R10 R7
       25 GETIMPORT                        R8 K4 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R3 2 ; [-12]
       30 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getHandler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+19]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 LOADK                            R5 K0 ["Error: Tool \"%*\" is not available to this subagent."]
        6 MOVE                             R7 R0
        7 NAMECALL                         R5 R5 K1 ["format"]
        9 CALL                             R5 2 1
       10 MOVE                             R4 R5
       11 NAMECALL                         R2 R2 K2 ["addText"]
       13 CALL                             R2 2 1
       14 LOADB                            R4 1
       15 NAMECALL                         R2 R2 K3 ["setError"]
       17 CALL                             R2 2 1
       18 NAMECALL                         R2 R2 K4 ["build"]
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1
       22 GETIMPORT                        R2 K6 [pcall]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 CALL                             R2 1 2
       28 JUMPIFNOT                        R2 ; [+1]
       29 JUMPIF                           R3 ; [+19]
       30 GETUPVAL                         R4 1
       31 CALL                             R4 0 1
       32 LOADK                            R7 K7 ["Error: Tool \"%*\" not found."]
       33 MOVE                             R9 R0
       34 NAMECALL                         R7 R7 K1 ["format"]
       36 CALL                             R7 2 1
       37 MOVE                             R6 R7
       38 NAMECALL                         R4 R4 K2 ["addText"]
       40 CALL                             R4 2 1
       41 LOADB                            R6 1
       42 NAMECALL                         R4 R4 K3 ["setError"]
       44 CALL                             R4 2 1
       45 NAMECALL                         R4 R4 K4 ["build"]
       47 CALL                             R4 1 -1
       48 RETURN                           R4 -1
       49 GETIMPORT                        R4 K6 [pcall]
       51 NEWCLOSURE                       R5 P1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R1
       54 CALL                             R4 1 2
       55 JUMPIF                           R4 ; [+24]
       56 GETUPVAL                         R6 1
       57 CALL                             R6 0 1
       58 LOADK                            R9 K8 ["Error executing tool \"%*\": %*"]
       59 MOVE                             R11 R0
       60 FASTCALL1                        TOSTRING R5 ; [+3]
       61 MOVE                             R13 R5
       62 GETIMPORT                        R12 K10 [tostring]
       64 CALL                             R12 1 1
       65 NAMECALL                         R9 R9 K1 ["format"]
       67 CALL                             R9 3 1
       68 MOVE                             R8 R9
       69 NAMECALL                         R6 R6 K2 ["addText"]
       71 CALL                             R6 2 1
       72 LOADB                            R8 1
       73 NAMECALL                         R6 R6 K3 ["setError"]
       75 CALL                             R6 2 1
       76 NAMECALL                         R6 R6 K4 ["build"]
       78 CALL                             R6 1 -1
       79 RETURN                           R6 -1
       80 RETURN                           R5 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 1
        7 SETTABLE                         R7 R1 R6
        8 FORGLOOP                         R2 2 ; [-3]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 RETURN                           R2 1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["cancel"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["sendProgress"]
        3 DUPTABLE                         R1 K3 [{"progress", "total"}]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["progress"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R1 K2 ["total"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["get"]
        3 GETTABLEKS                       R4 R0 K1 ["subagent_type"]
        5 CALL                             R3 1 1
        6 JUMPIF                           R3 ; [+29]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["getNames"]
       10 CALL                             R4 0 1
       11 GETUPVAL                         R5 1
       12 CALL                             R5 0 1
       13 LOADK                            R8 K3 ["Unknown subagent type: \"%*\". Available types: %*"]
       14 GETTABLEKS                       R10 R0 K1 ["subagent_type"]
       16 GETIMPORT                        R11 K6 [table.concat]
       18 MOVE                             R12 R4
       19 LOADK                            R13 K7 [", "]
       20 CALL                             R11 2 1
       21 NAMECALL                         R8 R8 K8 ["format"]
       23 CALL                             R8 3 1
       24 MOVE                             R7 R8
       25 NAMECALL                         R5 R5 K9 ["addText"]
       27 CALL                             R5 2 1
       28 LOADB                            R7 1
       29 NAMECALL                         R5 R5 K10 ["setError"]
       31 CALL                             R5 2 1
       32 NAMECALL                         R5 R5 K11 ["build"]
       34 CALL                             R5 1 -1
       35 RETURN                           R5 -1
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R4 R5 K12 ["getRequestHandler"]
       39 CALL                             R4 0 1
       40 JUMPIF                           R4 ; [+14]
       41 GETUPVAL                         R5 1
       42 CALL                             R5 0 1
       43 LOADK                            R7 K13 ["Subagent execution is not available. No LLM request handler configured."]
       44 NAMECALL                         R5 R5 K9 ["addText"]
       46 CALL                             R5 2 1
       47 LOADB                            R7 1
       48 NAMECALL                         R5 R5 K10 ["setError"]
       50 CALL                             R5 2 1
       51 NAMECALL                         R5 R5 K11 ["build"]
       53 CALL                             R5 1 -1
       54 RETURN                           R5 -1
       55 GETUPVAL                         R5 3
       56 GETTABLEKS                       R6 R3 K14 ["allowedTools"]
       58 CALL                             R5 1 1
       59 DUPTABLE                         R6 K16 [{"cancel"}]
       60 DUPCLOSURE                       R7 K17 [PROTO_6]
       61 SETTABLEKS                       R7 R6 K15 ["cancel"]
       63 JUMPIFNOT                        R2 ; [+31]
       64 GETTABLEKS                       R7 R2 K18 ["signal"]
       66 JUMPIFNOT                        R7 ; [+28]
       67 GETTABLEKS                       R8 R2 K18 ["signal"]
       69 GETTABLEKS                       R7 R8 K19 ["aborted"]
       71 JUMPIFNOT                        R7 ; [+14]
       72 GETUPVAL                         R7 1
       73 CALL                             R7 0 1
       74 LOADK                            R9 K20 ["Task was cancelled before execution."]
       75 NAMECALL                         R7 R7 K9 ["addText"]
       77 CALL                             R7 2 1
       78 LOADB                            R9 1
       79 NAMECALL                         R7 R7 K10 ["setError"]
       81 CALL                             R7 2 1
       82 NAMECALL                         R7 R7 K11 ["build"]
       84 CALL                             R7 1 -1
       85 RETURN                           R7 -1
       86 GETTABLEKS                       R8 R2 K18 ["signal"]
       88 GETTABLEKS                       R7 R8 K21 ["abortSignal"]
       90 NEWCLOSURE                       R9 P1
       91 CAPTURE                          VAL R6
       92 NAMECALL                         R7 R7 K22 ["Connect"]
       94 CALL                             R7 2 0
       95 GETUPVAL                         R8 4
       96 GETTABLEKS                       R7 R8 K23 ["execute"]
       98 DUPTABLE                         R8 K31 [{"definition", "prompt", "requestLLM", "callTool", "formattedTools", "contentId", "onPacketReceived"}]
       99 SETTABLEKS                       R3 R8 K24 ["definition"]
      101 GETTABLEKS                       R9 R0 K32 ["task"]
      103 SETTABLEKS                       R9 R8 K25 ["prompt"]
      105 SETTABLEKS                       R4 R8 K26 ["requestLLM"]
      107 GETTABLEKS                       R10 R3 K14 ["allowedTools"]
      109 NEWTABLE                         R11 0 0
      111 MOVE                             R12 R10
      112 LOADNIL                          R13
      113 LOADNIL                          R14
      114 FORGPREP                         R12
      115 LOADB                            R17 1
      116 SETTABLE                         R17 R11 R16
      117 FORGLOOP                         R12 2 ; [-3]
      119 NEWCLOSURE                       R9 P2
      120 CAPTURE                          VAL R11
      121 CAPTURE                          UPVAL U1
      122 CAPTURE                          UPVAL U5
      123 SETTABLEKS                       R9 R8 K27 ["callTool"]
      125 SETTABLEKS                       R5 R8 K28 ["formattedTools"]
      127 JUMPIFNOT                        R1 ; [+3]
      128 GETTABLEKS                       R9 R1 K29 ["contentId"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R9
      132 SETTABLEKS                       R9 R8 K29 ["contentId"]
      134 NEWCLOSURE                       R9 P3
      135 CAPTURE                          VAL R2
      136 SETTABLEKS                       R9 R8 K30 ["onPacketReceived"]
      138 MOVE                             R9 R6
      139 CALL                             R7 2 1
      140 GETTABLEKS                       R8 R7 K33 ["error"]
      142 JUMPIFNOT                        R8 ; [+22]
      143 GETUPVAL                         R8 1
      144 CALL                             R8 0 1
      145 LOADK                            R11 K34 ["Subagent encountered an error: %*\n\nPartial result:\n%*"]
      146 GETTABLEKS                       R13 R7 K33 ["error"]
      148 GETTABLEKS                       R14 R7 K35 ["finalAnswer"]
      150 NAMECALL                         R11 R11 K8 ["format"]
      152 CALL                             R11 3 1
      153 MOVE                             R10 R11
      154 NAMECALL                         R8 R8 K9 ["addText"]
      156 CALL                             R8 2 1
      157 LOADB                            R10 1
      158 NAMECALL                         R8 R8 K10 ["setError"]
      160 CALL                             R8 2 1
      161 NAMECALL                         R8 R8 K11 ["build"]
      163 CALL                             R8 1 -1
      164 RETURN                           R8 -1
      165 GETUPVAL                         R8 1
      166 CALL                             R8 0 1
      167 GETTABLEKS                       R10 R7 K35 ["finalAnswer"]
      169 NAMECALL                         R8 R8 K9 ["addText"]
      171 CALL                             R8 2 1
      172 NAMECALL                         R8 R8 K11 ["build"]
      174 CALL                             R8 1 -1
      175 RETURN                           R8 -1

PROTO_11:
        0 DUPTABLE                         R0 K4 [{"type", "description", "inProgress", "expanded"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K5 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 LOADK                            R1 K6 [""]
        7 SETTABLEKS                       R1 R0 K1 ["description"]
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["inProgress"]
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K3 ["expanded"]
       15 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["description"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["subagentType"]
        6 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K1 ["input"]
        2 GETTABLEKS                       R2 R3 K2 ["description"]
        4 ORK                              R1 R2 K0 [""]
        5 GETTABLEKS                       R4 R0 K1 ["input"]
        7 GETTABLEKS                       R3 R4 K3 ["subagent_type"]
        9 ORK                              R2 R3 K0 [""]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 RETURN                           R3 1

PROTO_14:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["inProgress"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["expanded"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["isError"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 1
       11 SETTABLEKS                       R1 R0 K3 ["errorMessage"]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 SETTABLEKS                       R1 R0 K4 ["finalAnswer"]
       17 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["content"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["content"]
        5 GETTABLEN                        R1 R2 1
        6 LOADK                            R2 K1 [""]
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETTABLEKS                       R3 R1 K2 ["type"]
       10 JUMPIFNOTEQKS                    R3 K3 ["text"] ; [+4]
       12 GETTABLEKS                       R3 R1 K3 ["text"]
       14 ORK                              R2 R3 K1 [""]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          REF R2
       18 CLOSEUPVALS                      R2
       19 RETURN                           R3 1

PROTO_16:
        0 DUPCLOSURE                       R1 K0 [PROTO_10]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["getNames"]
       10 CALL                             R2 0 1
       11 GETIMPORT                        R3 K4 [table.sort]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 0
       15 GETUPVAL                         R4 6
       16 GETTABLEKS                       R3 R4 K5 ["define"]
       18 CALL                             R3 0 1
       19 LOADK                            R5 K6 ["subagent"]
       20 NAMECALL                         R3 R3 K7 ["setName"]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R5 7
       24 CALL                             R5 0 1
       25 NAMECALL                         R3 R3 K8 ["setDescription"]
       27 CALL                             R3 2 1
       28 LOADK                            R5 K9 ["subagent_type"]
       29 DUPTABLE                         R6 K12 [{"type", "description"}]
       30 LOADK                            R7 K13 ["string"]
       31 SETTABLEKS                       R7 R6 K10 ["type"]
       33 LOADK                            R8 K14 ["The type of subagent to invoke. Options: "]
       34 GETIMPORT                        R9 K16 [table.concat]
       36 MOVE                             R10 R2
       37 LOADK                            R11 K17 [", "]
       38 CALL                             R9 2 1
       39 CONCAT                           R7 R8 R9
       40 SETTABLEKS                       R7 R6 K11 ["description"]
       42 NAMECALL                         R3 R3 K18 ["addArgument"]
       44 CALL                             R3 3 1
       45 LOADK                            R5 K11 ["description"]
       46 DUPTABLE                         R6 K12 [{"type", "description"}]
       47 LOADK                            R7 K13 ["string"]
       48 SETTABLEKS                       R7 R6 K10 ["type"]
       50 LOADK                            R7 K19 ["A short 3-5 word description of the task in present continuous tense (e.g., 'Exploring player spawn logic', 'Finding lighting scripts'). Used for display."]
       51 SETTABLEKS                       R7 R6 K11 ["description"]
       53 NAMECALL                         R3 R3 K18 ["addArgument"]
       55 CALL                             R3 3 1
       56 LOADK                            R5 K20 ["task"]
       57 DUPTABLE                         R6 K12 [{"type", "description"}]
       58 LOADK                            R7 K13 ["string"]
       59 SETTABLEKS                       R7 R6 K10 ["type"]
       61 LOADK                            R7 K21 ["Detailed task description and instructions for the subagent. Be specific about what you need the subagent to do and what information to return."]
       62 SETTABLEKS                       R7 R6 K11 ["description"]
       64 NAMECALL                         R3 R3 K18 ["addArgument"]
       66 CALL                             R3 3 1
       67 MOVE                             R5 R1
       68 NAMECALL                         R3 R3 K22 ["setHandler"]
       70 CALL                             R3 2 1
       71 NAMECALL                         R3 R3 K23 ["build"]
       73 CALL                             R3 1 1
       74 DUPTABLE                         R4 K27 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       75 DUPCLOSURE                       R5 K28 [PROTO_11]
       76 CAPTURE                          UPVAL U8
       77 SETTABLEKS                       R5 R4 K24 ["transformInitialContent"]
       79 DUPCLOSURE                       R5 K29 [PROTO_13]
       80 SETTABLEKS                       R5 R4 K25 ["getTransformPreExecuteFn"]
       82 DUPCLOSURE                       R5 K30 [PROTO_15]
       83 SETTABLEKS                       R5 R4 K26 ["getTransformResultFn"]
       85 DUPTABLE                         R5 K35 [{"definition", "toolCallOptions", "contentWidgets", "streamTransform"}]
       86 SETTABLEKS                       R3 R5 K31 ["definition"]
       88 DUPTABLE                         R6 K38 [{"timeout", "resetTimeoutOnProgress"}]
       89 LOADK                            R7 K39 [600000]
       90 SETTABLEKS                       R7 R6 K36 ["timeout"]
       92 LOADB                            R7 1
       93 SETTABLEKS                       R7 R6 K37 ["resetTimeoutOnProgress"]
       95 SETTABLEKS                       R6 R5 K32 ["toolCallOptions"]
       97 NEWTABLE                         R6 0 1
       99 GETUPVAL                         R7 8
      100 SETLIST                          R6 R7 1 [1]
      102 SETTABLEKS                       R6 R5 K33 ["contentWidgets"]
      104 SETTABLEKS                       R4 R5 K34 ["streamTransform"]
      106 RETURN                           R5 1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R4 K10 ["SubagentProgressWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Tools"]
       27 GETTABLEKS                       R4 R5 K12 ["ToolTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Subagents"]
       34 GETTABLEKS                       R5 R6 K14 ["SubagentRegistry"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Subagents"]
       41 GETTABLEKS                       R6 R7 K15 ["SubagentSessionRunner"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Subagents"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R8 R1 K16 ["Util"]
       51 GETTABLEKS                       R7 R8 K17 ["ToolBuilder"]
       53 GETTABLEKS                       R8 R1 K18 ["ToolRegistry"]
       55 GETTABLEKS                       R10 R1 K16 ["Util"]
       57 GETTABLEKS                       R9 R10 K19 ["ToolResult"]
       59 DUPCLOSURE                       R10 K20 [PROTO_0]
       60 CAPTURE                          VAL R4
       61 DUPCLOSURE                       R11 K21 [PROTO_1]
       62 CAPTURE                          VAL R8
       63 DUPCLOSURE                       R12 K22 [PROTO_5]
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R13 K23 [PROTO_16]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R2
       76 RETURN                           R13 1
