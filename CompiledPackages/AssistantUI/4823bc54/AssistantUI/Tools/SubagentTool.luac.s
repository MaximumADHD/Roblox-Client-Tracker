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
      130 MOVE                             R10 R1
      131 GETTABLEKS                       R11 R3 K19 ["allowedTools"]
      133 NEWTABLE                         R12 0 0
      135 MOVE                             R13 R11
      136 LOADNIL                          R14
      137 LOADNIL                          R15
      138 FORGPREP                         R13
      139 LOADB                            R18 1
      140 SETTABLE                         R18 R12 R17
      141 FORGLOOP                         R13 2 ; [-3]
      143 NEWCLOSURE                       R9 P2
      144 CAPTURE                          VAL R12
      145 CAPTURE                          UPVAL U1
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R10
      148 SETTABLEKS                       R9 R8 K32 ["callTool"]
      150 SETTABLEKS                       R5 R8 K33 ["formattedTools"]
      152 JUMPIFNOT                        R1 ; [+3]
      153 GETTABLEKS                       R9 R1 K34 ["contentId"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R9
      157 SETTABLEKS                       R9 R8 K34 ["contentId"]
      159 JUMPIFNOT                        R1 ; [+3]
      160 GETTABLEKS                       R9 R1 K40 ["messageGuid"]
      162 JUMP                             ; [+1]
      163 LOADNIL                          R9
      164 SETTABLEKS                       R9 R8 K35 ["parentMessageGuid"]
      166 JUMPIFNOT                        R1 ; [+3]
      167 GETTABLEKS                       R9 R1 K41 ["toolId"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R9
      171 SETTABLEKS                       R9 R8 K36 ["parentToolId"]
      173 NEWCLOSURE                       R9 P3
      174 CAPTURE                          VAL R2
      175 SETTABLEKS                       R9 R8 K37 ["onPacketReceived"]
      177 MOVE                             R9 R6
      178 CALL                             R7 2 1
      179 GETTABLEKS                       R8 R7 K42 ["error"]
      181 JUMPIFNOT                        R8 ; [+22]
      182 GETUPVAL                         R8 1
      183 CALL                             R8 0 1
      184 LOADK                            R11 K43 ["Subagent encountered an error: %*\n\nPartial result:\n%*"]
      185 GETTABLEKS                       R13 R7 K42 ["error"]
      187 GETTABLEKS                       R14 R7 K44 ["finalAnswer"]
      189 NAMECALL                         R11 R11 K8 ["format"]
      191 CALL                             R11 3 1
      192 MOVE                             R10 R11
      193 NAMECALL                         R8 R8 K9 ["addText"]
      195 CALL                             R8 2 1
      196 LOADB                            R10 1
      197 NAMECALL                         R8 R8 K10 ["setError"]
      199 CALL                             R8 2 1
      200 NAMECALL                         R8 R8 K11 ["build"]
      202 CALL                             R8 1 -1
      203 RETURN                           R8 -1
      204 GETUPVAL                         R8 1
      205 CALL                             R8 0 1
      206 GETTABLEKS                       R10 R7 K44 ["finalAnswer"]
      208 NAMECALL                         R8 R8 K9 ["addText"]
      210 CALL                             R8 2 1
      211 NAMECALL                         R8 R8 K11 ["build"]
      213 CALL                             R8 1 -1
      214 RETURN                           R8 -1

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
       29 DUPTABLE                         R6 K13 [{["type"] = "string", ["description"]}]
       30 LOADK                            R8 K14 ["The type of subagent to invoke. Options: "]
       31 GETIMPORT                        R9 K16 [table.concat]
       33 MOVE                             R10 R2
       34 LOADK                            R11 K17 [", "]
       35 CALL                             R9 2 1
       36 CONCAT                           R7 R8 R9
       37 SETTABLEKS                       R7 R6 K12 ["description"]
       39 NAMECALL                         R3 R3 K18 ["addArgument"]
       41 CALL                             R3 3 1
       42 LOADK                            R5 K12 ["description"]
       43 DUPTABLE                         R6 K20 [{["type"] = "string", ["description"] = "A short 3-5 word description of the task in present continuous tense (e.g., 'Exploring player spawn logic', 'Finding lighting scripts'). Used for display."}]
       44 NAMECALL                         R3 R3 K18 ["addArgument"]
       46 CALL                             R3 3 1
       47 LOADK                            R5 K21 ["task"]
       48 DUPTABLE                         R6 K23 [{["type"] = "string", ["description"] = "Detailed task description and instructions for the subagent. Be specific about what you need the subagent to do and what information to return."}]
       49 NAMECALL                         R3 R3 K18 ["addArgument"]
       51 CALL                             R3 3 1
       52 DUPTABLE                         R5 K31 [{["title"] = "Subagent", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       53 NAMECALL                         R3 R3 K32 ["setAnnotations"]
       55 CALL                             R3 2 1
       56 MOVE                             R5 R1
       57 NAMECALL                         R3 R3 K33 ["setHandler"]
       59 CALL                             R3 2 1
       60 NAMECALL                         R3 R3 K34 ["build"]
       62 CALL                             R3 1 1
       63 DUPTABLE                         R4 K38 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       64 DUPCLOSURE                       R5 K39 [PROTO_10]
       65 CAPTURE                          UPVAL U8
       66 SETTABLEKS                       R5 R4 K35 ["transformInitialContent"]
       68 DUPCLOSURE                       R5 K40 [PROTO_12]
       69 SETTABLEKS                       R5 R4 K36 ["getTransformPreExecuteFn"]
       71 DUPCLOSURE                       R5 K41 [PROTO_14]
       72 SETTABLEKS                       R5 R4 K37 ["getTransformResultFn"]
       74 DUPTABLE                         R5 K47 [{"definition", "toolCallOptions", "contentWidgets", "streamTransform", "getDescription"}]
       75 SETTABLEKS                       R3 R5 K42 ["definition"]
       77 DUPTABLE                         R6 K52 [{["timeout"] = 600000, ["resetTimeoutOnProgress"] = True}]
       78 SETTABLEKS                       R6 R5 K43 ["toolCallOptions"]
       80 GETUPVAL                         R7 3
       81 GETTABLEKS                       R7 R7 K53 ["FFlagAssistantSplitToolsAndWidgets"]
       83 JUMPIFNOT                        R7 ; [+2]
       84 LOADNIL                          R6
       85 JUMP                             ; [+5]
       86 NEWTABLE                         R6 0 1
       88 GETUPVAL                         R7 8
       89 SETLIST                          R6 R7 1 [1]
       91 SETTABLEKS                       R6 R5 K44 ["contentWidgets"]
       93 SETTABLEKS                       R4 R5 K45 ["streamTransform"]
       95 GETUPVAL                         R6 7
       96 SETTABLEKS                       R6 R5 K46 ["getDescription"]
       98 RETURN                           R5 1

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
       39 GETTABLEKS                       R6 R6 K15 ["SubagentRegistry"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Subagents"]
       46 GETTABLEKS                       R7 R7 K16 ["SubagentSessionRunner"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Subagents"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R1 K17 ["Util"]
       56 GETTABLEKS                       R8 R8 K18 ["ToolBuilder"]
       58 GETTABLEKS                       R9 R1 K17 ["Util"]
       60 GETTABLEKS                       R9 R9 K19 ["ToolResult"]
       62 DUPCLOSURE                       R10 K20 [PROTO_0]
       63 CAPTURE                          VAL R5
       64 DUPCLOSURE                       R11 K21 [PROTO_1]
       65 DUPCLOSURE                       R12 K22 [PROTO_4]
       66 CAPTURE                          VAL R9
       67 DUPCLOSURE                       R13 K23 [PROTO_15]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R2
       77 RETURN                           R13 1
