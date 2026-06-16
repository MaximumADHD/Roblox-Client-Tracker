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
       56 CALL                             R5 0 1
       57 JUMPIFNOT                        R5 ; [+17]
       58 JUMPIFNOTEQKNIL                  R1 ; [+3]
       60 NEWTABLE                         R1 0 0
       62 JUMPIFNOTEQKNIL                  R1 ; [+2]
       64 LOADB                            R6 0 +1
       65 LOADB                            R6 1
       66 FASTCALL2K                       ASSERT R6 K14 ; [+4]
       68 LOADK                            R7 K14 ["meta is nil"]
       69 GETIMPORT                        R5 K16 [assert]
       71 CALL                             R5 2 0
       72 LOADB                            R5 1
       73 SETTABLEKS                       R5 R1 K17 ["isSubagent"]
       75 GETUPVAL                         R5 4
       76 MOVE                             R6 R2
       77 MOVE                             R7 R1
       78 GETTABLEKS                       R8 R3 K18 ["allowedTools"]
       80 CALL                             R5 3 1
       81 DUPTABLE                         R6 K20 [{"cancel"}]
       82 DUPCLOSURE                       R7 K21 [PROTO_5]
       83 SETTABLEKS                       R7 R6 K19 ["cancel"]
       85 JUMPIFNOT                        R2 ; [+31]
       86 GETTABLEKS                       R7 R2 K22 ["signal"]
       88 JUMPIFNOT                        R7 ; [+28]
       89 GETTABLEKS                       R7 R2 K22 ["signal"]
       91 GETTABLEKS                       R7 R7 K23 ["aborted"]
       93 JUMPIFNOT                        R7 ; [+14]
       94 GETUPVAL                         R7 1
       95 CALL                             R7 0 1
       96 LOADK                            R9 K24 ["Task was cancelled before execution."]
       97 NAMECALL                         R7 R7 K9 ["addText"]
       99 CALL                             R7 2 1
      100 LOADB                            R9 1
      101 NAMECALL                         R7 R7 K10 ["setError"]
      103 CALL                             R7 2 1
      104 NAMECALL                         R7 R7 K11 ["build"]
      106 CALL                             R7 1 -1
      107 RETURN                           R7 -1
      108 GETTABLEKS                       R7 R2 K22 ["signal"]
      110 GETTABLEKS                       R7 R7 K25 ["abortSignal"]
      112 NEWCLOSURE                       R9 P1
      113 CAPTURE                          VAL R6
      114 NAMECALL                         R7 R7 K26 ["Connect"]
      116 CALL                             R7 2 0
      117 GETUPVAL                         R7 5
      118 GETTABLEKS                       R7 R7 K27 ["execute"]
      120 DUPTABLE                         R8 K37 [{"definition", "prompt", "requestLLM", "callTool", "formattedTools", "contentId", "parentMessageGuid", "parentToolId", "onPacketReceived"}]
      121 SETTABLEKS                       R3 R8 K28 ["definition"]
      123 GETTABLEKS                       R9 R0 K38 ["task"]
      125 SETTABLEKS                       R9 R8 K29 ["prompt"]
      127 SETTABLEKS                       R4 R8 K30 ["requestLLM"]
      129 MOVE                             R10 R1
      130 GETTABLEKS                       R11 R3 K18 ["allowedTools"]
      132 NEWTABLE                         R12 0 0
      134 MOVE                             R13 R11
      135 LOADNIL                          R14
      136 LOADNIL                          R15
      137 FORGPREP                         R13
      138 LOADB                            R18 1
      139 SETTABLE                         R18 R12 R17
      140 FORGLOOP                         R13 2 ; [-3]
      142 NEWCLOSURE                       R9 P2
      143 CAPTURE                          VAL R12
      144 CAPTURE                          UPVAL U1
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R10
      147 SETTABLEKS                       R9 R8 K31 ["callTool"]
      149 SETTABLEKS                       R5 R8 K32 ["formattedTools"]
      151 JUMPIFNOT                        R1 ; [+3]
      152 GETTABLEKS                       R9 R1 K33 ["contentId"]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R9
      156 SETTABLEKS                       R9 R8 K33 ["contentId"]
      158 JUMPIFNOT                        R1 ; [+3]
      159 GETTABLEKS                       R9 R1 K39 ["messageGuid"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R9
      163 SETTABLEKS                       R9 R8 K34 ["parentMessageGuid"]
      165 JUMPIFNOT                        R1 ; [+3]
      166 GETTABLEKS                       R9 R1 K40 ["toolId"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R9
      170 SETTABLEKS                       R9 R8 K35 ["parentToolId"]
      172 NEWCLOSURE                       R9 P3
      173 CAPTURE                          VAL R2
      174 SETTABLEKS                       R9 R8 K36 ["onPacketReceived"]
      176 MOVE                             R9 R6
      177 CALL                             R7 2 1
      178 GETTABLEKS                       R8 R7 K41 ["error"]
      180 JUMPIFNOT                        R8 ; [+22]
      181 GETUPVAL                         R8 1
      182 CALL                             R8 0 1
      183 LOADK                            R11 K42 ["Subagent encountered an error: %*\n\nPartial result:\n%*"]
      184 GETTABLEKS                       R13 R7 K41 ["error"]
      186 GETTABLEKS                       R14 R7 K43 ["finalAnswer"]
      188 NAMECALL                         R11 R11 K8 ["format"]
      190 CALL                             R11 3 1
      191 MOVE                             R10 R11
      192 NAMECALL                         R8 R8 K9 ["addText"]
      194 CALL                             R8 2 1
      195 LOADB                            R10 1
      196 NAMECALL                         R8 R8 K10 ["setError"]
      198 CALL                             R8 2 1
      199 NAMECALL                         R8 R8 K11 ["build"]
      201 CALL                             R8 1 -1
      202 RETURN                           R8 -1
      203 GETUPVAL                         R8 1
      204 CALL                             R8 0 1
      205 GETTABLEKS                       R10 R7 K43 ["finalAnswer"]
      207 NAMECALL                         R8 R8 K9 ["addText"]
      209 CALL                             R8 2 1
      210 NAMECALL                         R8 R8 K11 ["build"]
      212 CALL                             R8 1 -1
      213 RETURN                           R8 -1

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
        6 CAPTURE                          UPVAL U5
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["getNames"]
       10 CALL                             R2 0 1
       11 GETIMPORT                        R3 K4 [table.sort]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 6
       16 GETTABLEKS                       R3 R3 K5 ["define"]
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
       67 DUPTABLE                         R5 K27 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       68 LOADK                            R6 K28 ["Subagent"]
       69 SETTABLEKS                       R6 R5 K22 ["title"]
       71 LOADB                            R6 0
       72 SETTABLEKS                       R6 R5 K23 ["readOnlyHint"]
       74 LOADB                            R6 0
       75 SETTABLEKS                       R6 R5 K24 ["destructiveHint"]
       77 LOADB                            R6 0
       78 SETTABLEKS                       R6 R5 K25 ["idempotentHint"]
       80 LOADB                            R6 0
       81 SETTABLEKS                       R6 R5 K26 ["openWorldHint"]
       83 NAMECALL                         R3 R3 K29 ["setAnnotations"]
       85 CALL                             R3 2 1
       86 MOVE                             R5 R1
       87 NAMECALL                         R3 R3 K30 ["setHandler"]
       89 CALL                             R3 2 1
       90 NAMECALL                         R3 R3 K31 ["build"]
       92 CALL                             R3 1 1
       93 DUPTABLE                         R4 K35 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       94 DUPCLOSURE                       R5 K36 [PROTO_10]
       95 CAPTURE                          UPVAL U8
       96 SETTABLEKS                       R5 R4 K32 ["transformInitialContent"]
       98 DUPCLOSURE                       R5 K37 [PROTO_12]
       99 SETTABLEKS                       R5 R4 K33 ["getTransformPreExecuteFn"]
      101 DUPCLOSURE                       R5 K38 [PROTO_14]
      102 SETTABLEKS                       R5 R4 K34 ["getTransformResultFn"]
      104 DUPTABLE                         R5 K44 [{"definition", "toolCallOptions", "contentWidgets", "streamTransform", "getDescription"}]
      105 SETTABLEKS                       R3 R5 K39 ["definition"]
      107 DUPTABLE                         R6 K47 [{"timeout", "resetTimeoutOnProgress"}]
      108 LOADK                            R7 K48 [600000]
      109 SETTABLEKS                       R7 R6 K45 ["timeout"]
      111 LOADB                            R7 1
      112 SETTABLEKS                       R7 R6 K46 ["resetTimeoutOnProgress"]
      114 SETTABLEKS                       R6 R5 K40 ["toolCallOptions"]
      116 GETUPVAL                         R7 9
      117 CALL                             R7 0 1
      118 JUMPIFNOT                        R7 ; [+2]
      119 LOADNIL                          R6
      120 JUMP                             ; [+5]
      121 NEWTABLE                         R6 0 1
      123 GETUPVAL                         R7 8
      124 SETLIST                          R6 R7 1 [1]
      126 SETTABLEKS                       R6 R5 K41 ["contentWidgets"]
      128 SETTABLEKS                       R4 R5 K42 ["streamTransform"]
      130 GETUPVAL                         R6 7
      131 SETTABLEKS                       R6 R5 K43 ["getDescription"]
      133 RETURN                           R5 1

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
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Flags"]
       60 GETTABLEKS                       R9 R9 K18 ["FFlagAssistantSplitToolsAndWidgets"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K16 ["Flags"]
       67 GETTABLEKS                       R10 R10 K19 ["FFlagSubagentScriptEditAutoConfirmation"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R1 K20 ["Util"]
       72 GETTABLEKS                       R10 R10 K21 ["ToolBuilder"]
       74 GETTABLEKS                       R11 R1 K20 ["Util"]
       76 GETTABLEKS                       R11 R11 K22 ["ToolResult"]
       78 DUPCLOSURE                       R12 K23 [PROTO_0]
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R4
       81 DUPCLOSURE                       R13 K24 [PROTO_1]
       82 DUPCLOSURE                       R14 K25 [PROTO_4]
       83 CAPTURE                          VAL R11
       84 DUPCLOSURE                       R15 K26 [PROTO_15]
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R8
       95 RETURN                           R15 1
