PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getVisibleSubagents"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 JUMP                             ; [+5]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["getAll"]
       12 CALL                             R2 0 1
       13 MOVE                             R1 R2
       14 NEWTABLE                         R2 0 0
       16 MOVE                             R3 R1
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 LOADK                            R11 K2 ["  <subagent>\n    <name>%*</name>\n    <description>%*</description>\n  </subagent>"]
       21 GETTABLEKS                       R13 R7 K3 ["name"]
       23 GETTABLEKS                       R14 R7 K4 ["description"]
       25 NAMECALL                         R11 R11 K5 ["format"]
       27 CALL                             R11 3 1
       28 MOVE                             R10 R11
       29 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       31 MOVE                             R9 R2
       32 GETIMPORT                        R8 K8 [table.insert]
       34 CALL                             R8 2 0
       35 FORGLOOP                         R3 2 ; [-16]
       37 GETIMPORT                        R3 K10 [table.sort]
       39 MOVE                             R4 R2
       40 CALL                             R3 1 0
       41 LOADK                            R4 K11 ["Launch a specialized subagent to handle complex, multi-step tasks autonomously.\nSubagents are independent AI assistants with restricted tool access and specialized instructions.\n\n<available_subagents>\n"]
       42 GETIMPORT                        R7 K13 [table.concat]
       44 MOVE                             R8 R2
       45 LOADK                            R9 K14 ["\n"]
       46 CALL                             R7 2 1
       47 MOVE                             R5 R7
       48 LOADK                            R6 K15 ["\n</available_subagents>\n\nWhen to use subagents:\n1. When you need to explore the codebase before making decisions\n2. When a task requires multiple search/read steps across many files\n3. When you're uncertain about the right approach and need autonomous investigation\n4. To separate concerns (e.g., explore first, then modify)\n\nImportant:\n1. Subagents return a final text result summarizing their work\n2. You cannot have a back-and-forth conversation with a subagent\n3. Subagents cannot spawn other subagents (no nesting)\n4. Choose the most specific subagent for your task"]
       49 CONCAT                           R3 R4 R6
       50 RETURN                           R3 1

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
        2 JUMPIF                           R2 ; [+20]
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
       21 CLOSEUPVALS                      R1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K5 ["transformToolCall"]
       26 JUMPIFNOT                        R2 ; [+38]
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K5 ["transformToolCall"]
       30 MOVE                             R3 R0
       31 MOVE                             R4 R1
       32 GETUPVAL                         R5 3
       33 CALL                             R2 3 1
       34 GETTABLEKS                       R3 R2 K6 ["shortCircuit"]
       36 JUMPIFNOT                        R3 ; [+22]
       37 GETUPVAL                         R3 1
       38 CALL                             R3 0 1
       39 GETTABLEKS                       R6 R2 K8 ["message"]
       41 ORK                              R5 R6 K7 [""]
       42 NAMECALL                         R3 R3 K2 ["addText"]
       44 CALL                             R3 2 1
       45 GETTABLEKS                       R6 R2 K9 ["isError"]
       47 JUMPIFEQKB                       R6 TRUE ; [+2]
       49 LOADB                            R5 0 +1
       50 LOADB                            R5 1
       51 NAMECALL                         R3 R3 K3 ["setError"]
       53 CALL                             R3 2 1
       54 NAMECALL                         R3 R3 K4 ["build"]
       56 CALL                             R3 1 -1
       57 CLOSEUPVALS                      R1
       58 RETURN                           R3 -1
       59 GETTABLEKS                       R3 R2 K10 ["args"]
       61 JUMPIFEQKNIL                     R3 ; [+3]
       63 GETTABLEKS                       R1 R2 K10 ["args"]
       65 GETIMPORT                        R2 K12 [pcall]
       67 NEWCLOSURE                       R3 P0
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          VAL R0
       70 CAPTURE                          REF R1
       71 CAPTURE                          UPVAL U5
       72 CALL                             R2 1 2
       73 LOADNIL                          R4
       74 JUMPIFNOT                        R2 ; [+2]
       75 MOVE                             R4 R3
       76 JUMP                             ; [+24]
       77 GETUPVAL                         R5 1
       78 CALL                             R5 0 1
       79 LOADK                            R8 K13 ["Error executing tool \"%*\": %*"]
       80 MOVE                             R10 R0
       81 FASTCALL1                        TOSTRING R3 ; [+3]
       82 MOVE                             R12 R3
       83 GETIMPORT                        R11 K15 [tostring]
       85 CALL                             R11 1 1
       86 NAMECALL                         R8 R8 K1 ["format"]
       88 CALL                             R8 3 1
       89 MOVE                             R7 R8
       90 NAMECALL                         R5 R5 K2 ["addText"]
       92 CALL                             R5 2 1
       93 LOADB                            R7 1
       94 NAMECALL                         R5 R5 K3 ["setError"]
       96 CALL                             R5 2 1
       97 NAMECALL                         R5 R5 K4 ["build"]
       99 CALL                             R5 1 1
      100 MOVE                             R4 R5
      101 GETUPVAL                         R5 2
      102 GETTABLEKS                       R5 R5 K16 ["transformToolResult"]
      104 JUMPIFNOT                        R5 ; [+10]
      105 GETUPVAL                         R5 2
      106 GETTABLEKS                       R5 R5 K16 ["transformToolResult"]
      108 MOVE                             R6 R0
      109 MOVE                             R7 R1
      110 MOVE                             R8 R4
      111 GETUPVAL                         R9 3
      112 CALL                             R5 4 -1
      113 CLOSEUPVALS                      R1
      114 RETURN                           R5 -1
      115 CLOSEUPVALS                      R1
      116 RETURN                           R4 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R2 K0 ["allowedTools"]
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 LOADB                            R9 1
        8 SETTABLE                         R9 R3 R8
        9 FORGLOOP                         R4 2 ; [-3]
       11 NEWTABLE                         R4 0 0
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 RETURN                           R5 1

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
        3 DUPTABLE                         R1 K5 [{["progress"] = 0, ["total"] = 1}]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

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
       56 GETTABLEKS                       R5 R5 K14 ["FFlagSubagentScriptEditAutoConfirmation"]
       58 JUMPIFNOT                        R5 ; [+17]
       59 JUMPIFNOTEQKNIL                  R1 ; [+3]
       61 NEWTABLE                         R1 0 0
       63 JUMPIFNOTEQKNIL                  R1 ; [+2]
       65 LOADB                            R6 0 +1
       66 LOADB                            R6 1
       67 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       69 LOADK                            R7 K15 ["meta is nil"]
       70 GETIMPORT                        R5 K17 [assert]
       72 CALL                             R5 2 0
       73 LOADB                            R5 1
       74 SETTABLEKS                       R5 R1 K18 ["isSubagent"]
       76 GETUPVAL                         R5 4
       77 MOVE                             R6 R2
       78 MOVE                             R7 R1
       79 GETTABLEKS                       R8 R3 K19 ["allowedTools"]
       81 CALL                             R5 3 1
       82 DUPTABLE                         R6 K21 [{"cancel"}]
       83 DUPCLOSURE                       R7 K22 [PROTO_5]
       84 SETTABLEKS                       R7 R6 K20 ["cancel"]
       86 JUMPIFNOT                        R2 ; [+31]
       87 GETTABLEKS                       R7 R2 K23 ["signal"]
       89 JUMPIFNOT                        R7 ; [+28]
       90 GETTABLEKS                       R7 R2 K23 ["signal"]
       92 GETTABLEKS                       R7 R7 K24 ["aborted"]
       94 JUMPIFNOT                        R7 ; [+14]
       95 GETUPVAL                         R7 1
       96 CALL                             R7 0 1
       97 LOADK                            R9 K25 ["Task was cancelled before execution."]
       98 NAMECALL                         R7 R7 K9 ["addText"]
      100 CALL                             R7 2 1
      101 LOADB                            R9 1
      102 NAMECALL                         R7 R7 K10 ["setError"]
      104 CALL                             R7 2 1
      105 NAMECALL                         R7 R7 K11 ["build"]
      107 CALL                             R7 1 -1
      108 RETURN                           R7 -1
      109 GETTABLEKS                       R7 R2 K23 ["signal"]
      111 GETTABLEKS                       R7 R7 K26 ["abortSignal"]
      113 NEWCLOSURE                       R9 P1
      114 CAPTURE                          VAL R6
      115 NAMECALL                         R7 R7 K27 ["Connect"]
      117 CALL                             R7 2 0
      118 GETUPVAL                         R7 5
      119 GETTABLEKS                       R7 R7 K28 ["execute"]
      121 DUPTABLE                         R8 K38 [{"definition", "prompt", "requestLLM", "callTool", "formattedTools", "contentId", "parentMessageGuid", "parentToolId", "onPacketReceived"}]
      122 SETTABLEKS                       R3 R8 K29 ["definition"]
      124 GETTABLEKS                       R9 R0 K39 ["task"]
      126 SETTABLEKS                       R9 R8 K30 ["prompt"]
      128 SETTABLEKS                       R4 R8 K31 ["requestLLM"]
      130 GETUPVAL                         R9 6
      131 MOVE                             R10 R2
      132 MOVE                             R11 R1
      133 MOVE                             R12 R3
      134 CALL                             R9 3 1
      135 SETTABLEKS                       R9 R8 K32 ["callTool"]
      137 SETTABLEKS                       R5 R8 K33 ["formattedTools"]
      139 JUMPIFNOT                        R1 ; [+3]
      140 GETTABLEKS                       R9 R1 K34 ["contentId"]
      142 JUMP                             ; [+1]
      143 LOADNIL                          R9
      144 SETTABLEKS                       R9 R8 K34 ["contentId"]
      146 JUMPIFNOT                        R1 ; [+3]
      147 GETTABLEKS                       R9 R1 K40 ["messageGuid"]
      149 JUMP                             ; [+1]
      150 LOADNIL                          R9
      151 SETTABLEKS                       R9 R8 K35 ["parentMessageGuid"]
      153 JUMPIFNOT                        R1 ; [+3]
      154 GETTABLEKS                       R9 R1 K41 ["toolId"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R9
      158 SETTABLEKS                       R9 R8 K36 ["parentToolId"]
      160 NEWCLOSURE                       R9 P2
      161 CAPTURE                          VAL R2
      162 SETTABLEKS                       R9 R8 K37 ["onPacketReceived"]
      164 MOVE                             R9 R6
      165 CALL                             R7 2 1
      166 GETTABLEKS                       R8 R7 K42 ["error"]
      168 JUMPIFNOT                        R8 ; [+22]
      169 GETUPVAL                         R8 1
      170 CALL                             R8 0 1
      171 LOADK                            R11 K43 ["Subagent encountered an error: %*\n\nPartial result:\n%*"]
      172 GETTABLEKS                       R13 R7 K42 ["error"]
      174 GETTABLEKS                       R14 R7 K44 ["finalAnswer"]
      176 NAMECALL                         R11 R11 K8 ["format"]
      178 CALL                             R11 3 1
      179 MOVE                             R10 R11
      180 NAMECALL                         R8 R8 K9 ["addText"]
      182 CALL                             R8 2 1
      183 LOADB                            R10 1
      184 NAMECALL                         R8 R8 K10 ["setError"]
      186 CALL                             R8 2 1
      187 NAMECALL                         R8 R8 K11 ["build"]
      189 CALL                             R8 1 -1
      190 RETURN                           R8 -1
      191 GETUPVAL                         R8 1
      192 CALL                             R8 0 1
      193 GETTABLEKS                       R10 R7 K44 ["finalAnswer"]
      195 NAMECALL                         R8 R8 K9 ["addText"]
      197 CALL                             R8 2 1
      198 NAMECALL                         R8 R8 K11 ["build"]
      200 CALL                             R8 1 -1
      201 RETURN                           R8 -1

PROTO_10:
        0 DUPTABLE                         R0 K6 [{[1], ["description"] = "", ["inProgress"] = True, ["expanded"] = True}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K7 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 RETURN                           R0 1

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
        7 CAPTURE                          UPVAL U6
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["getNames"]
       11 CALL                             R2 0 1
       12 GETIMPORT                        R3 K4 [table.sort]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 7
       17 GETTABLEKS                       R3 R3 K5 ["define"]
       19 CALL                             R3 0 1
       20 LOADK                            R5 K6 ["subagent"]
       21 NAMECALL                         R3 R3 K7 ["setName"]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R5 8
       25 CALL                             R5 0 1
       26 NAMECALL                         R3 R3 K8 ["setDescription"]
       28 CALL                             R3 2 1
       29 LOADK                            R5 K9 ["subagent_type"]
       30 DUPTABLE                         R6 K13 [{["type"] = "string", ["description"]}]
       31 LOADK                            R8 K14 ["The type of subagent to invoke. Options: "]
       32 GETIMPORT                        R9 K16 [table.concat]
       34 MOVE                             R10 R2
       35 LOADK                            R11 K17 [", "]
       36 CALL                             R9 2 1
       37 CONCAT                           R7 R8 R9
       38 SETTABLEKS                       R7 R6 K12 ["description"]
       40 NAMECALL                         R3 R3 K18 ["addArgument"]
       42 CALL                             R3 3 1
       43 LOADK                            R5 K12 ["description"]
       44 DUPTABLE                         R6 K20 [{["type"] = "string", ["description"] = "A short 3-5 word description of the task in present continuous tense (e.g., 'Exploring player spawn logic', 'Finding lighting scripts'). Used for display."}]
       45 NAMECALL                         R3 R3 K18 ["addArgument"]
       47 CALL                             R3 3 1
       48 LOADK                            R5 K21 ["task"]
       49 DUPTABLE                         R6 K23 [{["type"] = "string", ["description"] = "Detailed task description and instructions for the subagent. Be specific about what you need the subagent to do and what information to return."}]
       50 NAMECALL                         R3 R3 K18 ["addArgument"]
       52 CALL                             R3 3 1
       53 DUPTABLE                         R5 K31 [{["title"] = "Subagent", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       54 NAMECALL                         R3 R3 K32 ["setAnnotations"]
       56 CALL                             R3 2 1
       57 MOVE                             R5 R1
       58 NAMECALL                         R3 R3 K33 ["setHandler"]
       60 CALL                             R3 2 1
       61 NAMECALL                         R3 R3 K34 ["build"]
       63 CALL                             R3 1 1
       64 DUPTABLE                         R4 K38 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       65 DUPCLOSURE                       R5 K39 [PROTO_10]
       66 CAPTURE                          UPVAL U9
       67 SETTABLEKS                       R5 R4 K35 ["transformInitialContent"]
       69 DUPCLOSURE                       R5 K40 [PROTO_12]
       70 SETTABLEKS                       R5 R4 K36 ["getTransformPreExecuteFn"]
       72 DUPCLOSURE                       R5 K41 [PROTO_14]
       73 SETTABLEKS                       R5 R4 K37 ["getTransformResultFn"]
       75 DUPTABLE                         R5 K47 [{"definition", "toolCallOptions", "contentWidgets", "streamTransform", "getDescription"}]
       76 SETTABLEKS                       R3 R5 K42 ["definition"]
       78 DUPTABLE                         R6 K52 [{["timeout"] = 600000, ["resetTimeoutOnProgress"] = True}]
       79 SETTABLEKS                       R6 R5 K43 ["toolCallOptions"]
       81 GETUPVAL                         R7 3
       82 GETTABLEKS                       R7 R7 K53 ["FFlagAssistantSplitToolsAndWidgets"]
       84 JUMPIFNOT                        R7 ; [+2]
       85 LOADNIL                          R6
       86 JUMP                             ; [+5]
       87 NEWTABLE                         R6 0 1
       89 GETUPVAL                         R7 9
       90 SETLIST                          R6 R7 1 [1]
       92 SETTABLEKS                       R6 R5 K44 ["contentWidgets"]
       94 SETTABLEKS                       R4 R5 K45 ["streamTransform"]
       96 GETUPVAL                         R6 8
       97 SETTABLEKS                       R6 R5 K46 ["getDescription"]
       99 RETURN                           R5 1

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
       20 GETTABLEKS                       R3 R3 K10 ["SubagentProgressContentWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Tools"]
       27 GETTABLEKS                       R4 R4 K12 ["ToolTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Subagents"]
       39 GETTABLEKS                       R6 R6 K15 ["SubagentDefinition"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Subagents"]
       46 GETTABLEKS                       R7 R7 K16 ["SubagentRegistry"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Subagents"]
       53 GETTABLEKS                       R8 R8 K17 ["SubagentSessionRunner"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Subagents"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R1 K18 ["Util"]
       63 GETTABLEKS                       R9 R9 K19 ["ToolBuilder"]
       65 GETTABLEKS                       R10 R1 K18 ["Util"]
       67 GETTABLEKS                       R10 R10 K20 ["ToolResult"]
       69 DUPCLOSURE                       R11 K21 [PROTO_0]
       70 CAPTURE                          VAL R6
       71 DUPCLOSURE                       R12 K22 [PROTO_1]
       72 DUPCLOSURE                       R13 K23 [PROTO_4]
       73 CAPTURE                          VAL R10
       74 DUPCLOSURE                       R14 K24 [PROTO_15]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R2
       85 RETURN                           R14 1
