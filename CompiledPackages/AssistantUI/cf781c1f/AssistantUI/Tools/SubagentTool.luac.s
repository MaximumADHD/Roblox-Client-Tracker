PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+8]
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["getVisibleSubagents"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 MOVE                             R1 R2
       11 JUMP                             ; [+5]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["getAll"]
       15 CALL                             R2 0 1
       16 MOVE                             R1 R2
       17 NEWTABLE                         R2 0 0
       19 MOVE                             R3 R1
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 LOADK                            R11 K2 ["  <subagent>\n    <name>%*</name>\n    <description>%*</description>\n  </subagent>"]
       24 GETTABLEKS                       R13 R7 K3 ["name"]
       26 GETTABLEKS                       R14 R7 K4 ["description"]
       28 NAMECALL                         R11 R11 K5 ["format"]
       30 CALL                             R11 3 1
       31 MOVE                             R10 R11
       32 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       34 MOVE                             R9 R2
       35 GETIMPORT                        R8 K8 [table.insert]
       37 CALL                             R8 2 0
       38 FORGLOOP                         R3 2 ; [-16]
       40 GETIMPORT                        R3 K10 [table.sort]
       42 MOVE                             R4 R2
       43 CALL                             R3 1 0
       44 LOADK                            R4 K11 ["Launch a specialized subagent to handle complex, multi-step tasks autonomously.\nSubagents are independent AI assistants with restricted tool access and specialized instructions.\n\n<available_subagents>\n"]
       45 GETIMPORT                        R7 K13 [table.concat]
       47 MOVE                             R8 R2
       48 LOADK                            R9 K14 ["\n"]
       49 CALL                             R7 2 1
       50 MOVE                             R5 R7
       51 LOADK                            R6 K15 ["\n</available_subagents>\n\nWhen to use subagents:\n1. When you need to explore the codebase before making decisions\n2. When a task requires multiple search/read steps across many files\n3. When you're uncertain about the right approach and need autonomous investigation\n4. To separate concerns (e.g., explore first, then modify)\n\nImportant:\n1. Subagents return a final text result summarizing their work\n2. You cannot have a back-and-forth conversation with a subagent\n3. Subagents cannot spawn other subagents (no nesting)\n4. Choose the most specific subagent for your task"]
       52 CONCAT                           R3 R4 R6
       53 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R2
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 LOADB                            R9 1
        7 SETTABLE                         R9 R3 R8
        8 FORGLOOP                         R4 2 ; [-3]
       10 NEWTABLE                         R4 0 0
       12 GETTABLEKS                       R5 R0 K0 ["listTools"]
       14 DUPTABLE                         R6 K2 [{"assistantMode"}]
       15 MOVE                             R7 R1
       16 JUMPIFNOT                        R7 ; [+2]
       17 GETTABLEKS                       R7 R1 K1 ["assistantMode"]
       19 SETTABLEKS                       R7 R6 K1 ["assistantMode"]
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R6 R5 K3 ["tools"]
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 GETTABLEKS                       R12 R10 K4 ["name"]
       29 GETTABLE                         R11 R3 R12
       30 JUMPIFNOT                        R11 ; [+7]
       31 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       33 MOVE                             R12 R4
       34 MOVE                             R13 R10
       35 GETIMPORT                        R11 K7 [table.insert]
       37 CALL                             R11 2 0
       38 FORGLOOP                         R6 2 ; [-12]
       40 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["callTool"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_3:
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
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U3
       29 CALL                             R2 1 2
       30 JUMPIF                           R2 ; [+24]
       31 GETUPVAL                         R4 1
       32 CALL                             R4 0 1
       33 LOADK                            R7 K7 ["Error executing tool \"%*\": %*"]
       34 MOVE                             R9 R0
       35 FASTCALL1                        TOSTRING R3 ; [+3]
       36 MOVE                             R11 R3
       37 GETIMPORT                        R10 K9 [tostring]
       39 CALL                             R10 1 1
       40 NAMECALL                         R7 R7 K1 ["format"]
       42 CALL                             R7 3 1
       43 MOVE                             R6 R7
       44 NAMECALL                         R4 R4 K2 ["addText"]
       46 CALL                             R4 2 1
       47 LOADB                            R6 1
       48 NAMECALL                         R4 R4 K3 ["setError"]
       50 CALL                             R4 2 1
       51 NAMECALL                         R4 R4 K4 ["build"]
       53 CALL                             R4 1 -1
       54 RETURN                           R4 -1
       55 RETURN                           R3 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R2
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 LOADB                            R9 1
        7 SETTABLE                         R9 R3 R8
        8 FORGLOOP                         R4 2 ; [-3]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 RETURN                           R4 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancel"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendProgress"]
        3 DUPTABLE                         R1 K3 [{"progress", "total"}]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["progress"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R1 K2 ["total"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 GETTABLEKS                       R4 R0 K1 ["subagent_type"]
        5 CALL                             R3 1 1
        6 JUMPIF                           R3 ; [+29]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["getNames"]
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
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K12 ["getRequestHandler"]
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
       56 MOVE                             R6 R2
       57 MOVE                             R7 R1
       58 GETTABLEKS                       R8 R3 K14 ["allowedTools"]
       60 CALL                             R5 3 1
       61 DUPTABLE                         R6 K16 [{"cancel"}]
       62 DUPCLOSURE                       R7 K17 [PROTO_5]
       63 SETTABLEKS                       R7 R6 K15 ["cancel"]
       65 JUMPIFNOT                        R2 ; [+31]
       66 GETTABLEKS                       R7 R2 K18 ["signal"]
       68 JUMPIFNOT                        R7 ; [+28]
       69 GETTABLEKS                       R7 R2 K18 ["signal"]
       71 GETTABLEKS                       R7 R7 K19 ["aborted"]
       73 JUMPIFNOT                        R7 ; [+14]
       74 GETUPVAL                         R7 1
       75 CALL                             R7 0 1
       76 LOADK                            R9 K20 ["Task was cancelled before execution."]
       77 NAMECALL                         R7 R7 K9 ["addText"]
       79 CALL                             R7 2 1
       80 LOADB                            R9 1
       81 NAMECALL                         R7 R7 K10 ["setError"]
       83 CALL                             R7 2 1
       84 NAMECALL                         R7 R7 K11 ["build"]
       86 CALL                             R7 1 -1
       87 RETURN                           R7 -1
       88 GETTABLEKS                       R7 R2 K18 ["signal"]
       90 GETTABLEKS                       R7 R7 K21 ["abortSignal"]
       92 NEWCLOSURE                       R9 P1
       93 CAPTURE                          VAL R6
       94 NAMECALL                         R7 R7 K22 ["Connect"]
       96 CALL                             R7 2 0
       97 GETUPVAL                         R7 4
       98 GETTABLEKS                       R7 R7 K23 ["execute"]
      100 DUPTABLE                         R8 K33 [{"definition", "prompt", "requestLLM", "callTool", "formattedTools", "contentId", "parentMessageGuid", "parentToolId", "onPacketReceived"}]
      101 SETTABLEKS                       R3 R8 K24 ["definition"]
      103 GETTABLEKS                       R9 R0 K34 ["task"]
      105 SETTABLEKS                       R9 R8 K25 ["prompt"]
      107 SETTABLEKS                       R4 R8 K26 ["requestLLM"]
      109 GETTABLEKS                       R10 R3 K14 ["allowedTools"]
      111 NEWTABLE                         R11 0 0
      113 MOVE                             R12 R10
      114 LOADNIL                          R13
      115 LOADNIL                          R14
      116 FORGPREP                         R12
      117 LOADB                            R17 1
      118 SETTABLE                         R17 R11 R16
      119 FORGLOOP                         R12 2 ; [-3]
      121 NEWCLOSURE                       R9 P2
      122 CAPTURE                          VAL R11
      123 CAPTURE                          UPVAL U1
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R1
      126 SETTABLEKS                       R9 R8 K27 ["callTool"]
      128 SETTABLEKS                       R5 R8 K28 ["formattedTools"]
      130 JUMPIFNOT                        R1 ; [+3]
      131 GETTABLEKS                       R9 R1 K29 ["contentId"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R9
      135 SETTABLEKS                       R9 R8 K29 ["contentId"]
      137 JUMPIFNOT                        R1 ; [+3]
      138 GETTABLEKS                       R9 R1 K35 ["messageGuid"]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R9
      142 SETTABLEKS                       R9 R8 K30 ["parentMessageGuid"]
      144 JUMPIFNOT                        R1 ; [+3]
      145 GETTABLEKS                       R9 R1 K36 ["toolId"]
      147 JUMP                             ; [+1]
      148 LOADNIL                          R9
      149 SETTABLEKS                       R9 R8 K31 ["parentToolId"]
      151 NEWCLOSURE                       R9 P3
      152 CAPTURE                          VAL R2
      153 SETTABLEKS                       R9 R8 K32 ["onPacketReceived"]
      155 MOVE                             R9 R6
      156 CALL                             R7 2 1
      157 GETTABLEKS                       R8 R7 K37 ["error"]
      159 JUMPIFNOT                        R8 ; [+22]
      160 GETUPVAL                         R8 1
      161 CALL                             R8 0 1
      162 LOADK                            R11 K38 ["Subagent encountered an error: %*\n\nPartial result:\n%*"]
      163 GETTABLEKS                       R13 R7 K37 ["error"]
      165 GETTABLEKS                       R14 R7 K39 ["finalAnswer"]
      167 NAMECALL                         R11 R11 K8 ["format"]
      169 CALL                             R11 3 1
      170 MOVE                             R10 R11
      171 NAMECALL                         R8 R8 K9 ["addText"]
      173 CALL                             R8 2 1
      174 LOADB                            R10 1
      175 NAMECALL                         R8 R8 K10 ["setError"]
      177 CALL                             R8 2 1
      178 NAMECALL                         R8 R8 K11 ["build"]
      180 CALL                             R8 1 -1
      181 RETURN                           R8 -1
      182 GETUPVAL                         R8 1
      183 CALL                             R8 0 1
      184 GETTABLEKS                       R10 R7 K39 ["finalAnswer"]
      186 NAMECALL                         R8 R8 K9 ["addText"]
      188 CALL                             R8 2 1
      189 NAMECALL                         R8 R8 K11 ["build"]
      191 CALL                             R8 1 -1
      192 RETURN                           R8 -1

PROTO_10:
        0 DUPTABLE                         R0 K4 [{"type", "description", "inProgress", "expanded"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K5 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 LOADK                            R1 K6 [""]
        7 SETTABLEKS                       R1 R0 K1 ["description"]
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["inProgress"]
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K3 ["expanded"]
       15 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["description"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["subagentType"]
        6 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K1 ["input"]
        2 GETTABLEKS                       R2 R2 K2 ["description"]
        4 ORK                              R1 R2 K0 [""]
        5 GETTABLEKS                       R3 R0 K1 ["input"]
        7 GETTABLEKS                       R3 R3 K3 ["subagent_type"]
        9 ORK                              R2 R3 K0 [""]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 RETURN                           R3 1

PROTO_13:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["inProgress"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["expanded"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["isError"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 1
       11 SETTABLEKS                       R1 R0 K3 ["errorMessage"]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 SETTABLEKS                       R1 R0 K4 ["finalAnswer"]
       17 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 DUPCLOSURE                       R1 K0 [PROTO_9]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["getNames"]
        9 CALL                             R2 0 1
       10 GETIMPORT                        R3 K4 [table.sort]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 5
       15 GETTABLEKS                       R3 R3 K5 ["define"]
       17 CALL                             R3 0 1
       18 LOADK                            R5 K6 ["subagent"]
       19 NAMECALL                         R3 R3 K7 ["setName"]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R5 6
       23 CALL                             R5 0 1
       24 NAMECALL                         R3 R3 K8 ["setDescription"]
       26 CALL                             R3 2 1
       27 LOADK                            R5 K9 ["subagent_type"]
       28 DUPTABLE                         R6 K12 [{"type", "description"}]
       29 LOADK                            R7 K13 ["string"]
       30 SETTABLEKS                       R7 R6 K10 ["type"]
       32 LOADK                            R8 K14 ["The type of subagent to invoke. Options: "]
       33 GETIMPORT                        R9 K16 [table.concat]
       35 MOVE                             R10 R2
       36 LOADK                            R11 K17 [", "]
       37 CALL                             R9 2 1
       38 CONCAT                           R7 R8 R9
       39 SETTABLEKS                       R7 R6 K11 ["description"]
       41 NAMECALL                         R3 R3 K18 ["addArgument"]
       43 CALL                             R3 3 1
       44 LOADK                            R5 K11 ["description"]
       45 DUPTABLE                         R6 K12 [{"type", "description"}]
       46 LOADK                            R7 K13 ["string"]
       47 SETTABLEKS                       R7 R6 K10 ["type"]
       49 LOADK                            R7 K19 ["A short 3-5 word description of the task in present continuous tense (e.g., 'Exploring player spawn logic', 'Finding lighting scripts'). Used for display."]
       50 SETTABLEKS                       R7 R6 K11 ["description"]
       52 NAMECALL                         R3 R3 K18 ["addArgument"]
       54 CALL                             R3 3 1
       55 LOADK                            R5 K20 ["task"]
       56 DUPTABLE                         R6 K12 [{"type", "description"}]
       57 LOADK                            R7 K13 ["string"]
       58 SETTABLEKS                       R7 R6 K10 ["type"]
       60 LOADK                            R7 K21 ["Detailed task description and instructions for the subagent. Be specific about what you need the subagent to do and what information to return."]
       61 SETTABLEKS                       R7 R6 K11 ["description"]
       63 NAMECALL                         R3 R3 K18 ["addArgument"]
       65 CALL                             R3 3 1
       66 DUPTABLE                         R5 K27 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       67 LOADK                            R6 K28 ["Subagent"]
       68 SETTABLEKS                       R6 R5 K22 ["title"]
       70 LOADB                            R6 0
       71 SETTABLEKS                       R6 R5 K23 ["readOnlyHint"]
       73 LOADB                            R6 0
       74 SETTABLEKS                       R6 R5 K24 ["destructiveHint"]
       76 LOADB                            R6 0
       77 SETTABLEKS                       R6 R5 K25 ["idempotentHint"]
       79 LOADB                            R6 0
       80 SETTABLEKS                       R6 R5 K26 ["openWorldHint"]
       82 NAMECALL                         R3 R3 K29 ["setAnnotations"]
       84 CALL                             R3 2 1
       85 MOVE                             R5 R1
       86 NAMECALL                         R3 R3 K30 ["setHandler"]
       88 CALL                             R3 2 1
       89 NAMECALL                         R3 R3 K31 ["build"]
       91 CALL                             R3 1 1
       92 DUPTABLE                         R4 K35 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       93 DUPCLOSURE                       R5 K36 [PROTO_10]
       94 CAPTURE                          UPVAL U7
       95 SETTABLEKS                       R5 R4 K32 ["transformInitialContent"]
       97 DUPCLOSURE                       R5 K37 [PROTO_12]
       98 SETTABLEKS                       R5 R4 K33 ["getTransformPreExecuteFn"]
      100 DUPCLOSURE                       R5 K38 [PROTO_14]
      101 SETTABLEKS                       R5 R4 K34 ["getTransformResultFn"]
      103 DUPTABLE                         R5 K44 [{"definition", "toolCallOptions", "contentWidgets", "streamTransform", "getDescription"}]
      104 SETTABLEKS                       R3 R5 K39 ["definition"]
      106 DUPTABLE                         R6 K47 [{"timeout", "resetTimeoutOnProgress"}]
      107 LOADK                            R7 K48 [600000]
      108 SETTABLEKS                       R7 R6 K45 ["timeout"]
      110 LOADB                            R7 1
      111 SETTABLEKS                       R7 R6 K46 ["resetTimeoutOnProgress"]
      113 SETTABLEKS                       R6 R5 K40 ["toolCallOptions"]
      115 NEWTABLE                         R6 0 1
      117 GETUPVAL                         R7 7
      118 SETLIST                          R6 R7 1 [1]
      120 SETTABLEKS                       R6 R5 K41 ["contentWidgets"]
      122 SETTABLEKS                       R4 R5 K42 ["streamTransform"]
      124 GETUPVAL                         R6 6
      125 SETTABLEKS                       R6 R5 K43 ["getDescription"]
      127 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R3 K10 ["SubagentProgressWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Tools"]
       27 GETTABLEKS                       R4 R4 K12 ["ToolTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Subagents"]
       34 GETTABLEKS                       R5 R5 K14 ["SubagentRegistry"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Subagents"]
       41 GETTABLEKS                       R6 R6 K15 ["SubagentSessionRunner"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Subagents"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Flags"]
       53 GETTABLEKS                       R8 R8 K17 ["FFlagAssistantDynamicToolDescription"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R1 K18 ["Util"]
       58 GETTABLEKS                       R8 R8 K19 ["ToolBuilder"]
       60 GETTABLEKS                       R9 R1 K18 ["Util"]
       62 GETTABLEKS                       R9 R9 K20 ["ToolResult"]
       64 DUPCLOSURE                       R10 K21 [PROTO_0]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R4
       67 DUPCLOSURE                       R11 K22 [PROTO_1]
       68 DUPCLOSURE                       R12 K23 [PROTO_4]
       69 CAPTURE                          VAL R9
       70 DUPCLOSURE                       R13 K24 [PROTO_15]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R2
       79 RETURN                           R13 1
