PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getScript"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETTABLEKS                       R3 R2 K1 ["content"]
       10 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getGrep"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETTABLEKS                       R3 R2 K1 ["results"]
       10 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getInspect"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETTABLEKS                       R3 R2 K1 ["properties"]
       10 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getGameTree"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETTABLEKS                       R3 R2 K1 ["result"]
       10 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getPlan"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 LOADK                            R4 K1 ["# %*\n\n**Summary:** %*\n\n%*"]
       10 GETTABLEKS                       R6 R2 K2 ["title"]
       12 GETTABLEKS                       R7 R2 K3 ["summary"]
       14 GETTABLEKS                       R8 R2 K4 ["content"]
       16 NAMECALL                         R4 R4 K5 ["format"]
       18 CALL                             R4 4 1
       19 MOVE                             R3 R4
       20 RETURN                           R3 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R4
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 1 ; [-8]
       15 GETIMPORT                        R1 K4 [table.sort]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 GETIMPORT                        R1 K6 [table.concat]
       21 MOVE                             R2 R0
       22 LOADK                            R3 K7 [", "]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

PROTO_6:
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R1 K0 ["threadId"]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["get"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 JUMPIF                           R3 ; [+11]
       13 JUMPIFNOT                        R1 ; [+10]
       14 GETTABLEKS                       R4 R1 K2 ["acpSessionId"]
       16 JUMPIFNOT                        R4 ; [+7]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K1 ["get"]
       20 GETTABLEKS                       R5 R1 K2 ["acpSessionId"]
       22 CALL                             R4 1 1
       23 MOVE                             R3 R4
       24 JUMPIF                           R3 ; [+14]
       25 GETUPVAL                         R4 1
       26 CALL                             R4 0 1
       27 LOADK                            R6 K3 ["No compacted history available. Context has not been compacted yet."]
       28 NAMECALL                         R4 R4 K4 ["addText"]
       30 CALL                             R4 2 1
       31 LOADB                            R6 1
       32 NAMECALL                         R4 R4 K5 ["setError"]
       34 CALL                             R4 2 1
       35 NAMECALL                         R4 R4 K6 ["build"]
       37 CALL                             R4 1 -1
       38 RETURN                           R4 -1
       39 GETTABLEKS                       R4 R0 K7 ["type"]
       41 GETTABLEKS                       R5 R0 K8 ["key"]
       43 GETUPVAL                         R6 2
       44 CALL                             R6 0 1
       45 GETUPVAL                         R8 3
       46 GETTABLE                         R7 R8 R4
       47 JUMPIF                           R7 ; [+20]
       48 GETUPVAL                         R8 1
       49 CALL                             R8 0 1
       50 LOADK                            R11 K9 ["Unknown type '%*'. Valid types: %*"]
       51 MOVE                             R13 R4
       52 MOVE                             R14 R6
       53 NAMECALL                         R11 R11 K10 ["format"]
       55 CALL                             R11 3 1
       56 MOVE                             R10 R11
       57 NAMECALL                         R8 R8 K4 ["addText"]
       59 CALL                             R8 2 1
       60 LOADB                            R10 1
       61 NAMECALL                         R8 R8 K5 ["setError"]
       63 CALL                             R8 2 1
       64 NAMECALL                         R8 R8 K6 ["build"]
       66 CALL                             R8 1 -1
       67 RETURN                           R8 -1
       68 MOVE                             R8 R7
       69 MOVE                             R9 R3
       70 MOVE                             R10 R5
       71 CALL                             R8 2 1
       72 JUMPIF                           R8 ; [+20]
       73 GETUPVAL                         R9 1
       74 CALL                             R9 0 1
       75 LOADK                            R12 K11 ["No historical entry found for type='%*', key='%*'."]
       76 MOVE                             R14 R4
       77 FASTCALL1                        TOSTRING R5 ; [+3]
       78 MOVE                             R16 R5
       79 GETIMPORT                        R15 K13 [tostring]
       81 CALL                             R15 1 1
       82 NAMECALL                         R12 R12 K10 ["format"]
       84 CALL                             R12 3 1
       85 MOVE                             R11 R12
       86 NAMECALL                         R9 R9 K4 ["addText"]
       88 CALL                             R9 2 1
       89 NAMECALL                         R9 R9 K6 ["build"]
       91 CALL                             R9 1 -1
       92 RETURN                           R9 -1
       93 GETUPVAL                         R9 4
       94 GETTABLEKS                       R9 R9 K14 ["FIntFromHistoryMaxResultChars"]
       96 LENGTH                           R10 R8
       97 JUMPIFNOTLT                      R9 R10 ; [+28]
       99 GETUPVAL                         R10 1
      100 CALL                             R10 0 1
      101 GETIMPORT                        R12 K16 [string.format]
      103 LOADK                            R13 K17 ["%s\n\n[TRUNCATED — content is %d chars. Use the original tool (%s) to read the full content if needed.]"]
      104 GETUPVAL                         R14 5
      105 MOVE                             R15 R8
      106 MOVE                             R16 R9
      107 CALL                             R14 2 1
      108 LENGTH                           R15 R8
      109 MOVE                             R16 R4
      110 CALL                             R12 4 -1
      111 NAMECALL                         R10 R10 K4 ["addText"]
      113 CALL                             R10 -1 1
      114 DUPTABLE                         R12 K20 [{["type"], ["key"], ["truncated"] = True}]
      115 SETTABLEKS                       R4 R12 K7 ["type"]
      117 SETTABLEKS                       R5 R12 K8 ["key"]
      119 NAMECALL                         R10 R10 K21 ["setStructuredContent"]
      121 CALL                             R10 2 1
      122 NAMECALL                         R10 R10 K6 ["build"]
      124 CALL                             R10 1 -1
      125 RETURN                           R10 -1
      126 GETUPVAL                         R10 1
      127 CALL                             R10 0 1
      128 MOVE                             R12 R8
      129 NAMECALL                         R10 R10 K4 ["addText"]
      131 CALL                             R10 2 1
      132 DUPTABLE                         R12 K22 [{"type", "key"}]
      133 SETTABLEKS                       R4 R12 K7 ["type"]
      135 SETTABLEKS                       R5 R12 K8 ["key"]
      137 NAMECALL                         R10 R10 K21 ["setStructuredContent"]
      139 CALL                             R10 2 1
      140 NAMECALL                         R10 R10 K6 ["build"]
      142 CALL                             R10 1 -1
      143 RETURN                           R10 -1

PROTO_7:
        0 DUPCLOSURE                       R1 K0 [PROTO_6]
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
       12 GETTABLEKS                       R4 R4 K2 ["FromHistory"]
       14 NAMECALL                         R2 R2 K3 ["setName"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R4 7
       18 GETTABLEKS                       R4 R4 K4 ["replaceTokens"]
       20 LOADK                            R5 K5 ["Retrieve previously read content from compacted conversation history.\nUse this when you need to recall script content, grep results, instance properties,\ngame tree structure, or plan content that were examined earlier in the conversation\nbut are no longer in the active context.\nNOTE: Script content may be stale if it was modified after the original reading."]
       21 CALL                             R4 1 -1
       22 NAMECALL                         R2 R2 K6 ["setDescription"]
       24 CALL                             R2 -1 1
       25 LOADK                            R4 K7 ["type"]
       26 DUPTABLE                         R5 K10 [{["type"] = "string", ["description"]}]
       27 GETUPVAL                         R6 7
       28 GETTABLEKS                       R6 R6 K4 ["replaceTokens"]
       30 LOADK                            R7 K11 ["The type of data to retrieve: \"{ToolNames.ReadFile}\" (previously read script content), \"{ToolNames.GrepSearch}\" (previous grep/search results), \"{ToolNames.InspectInstance}\" (previous instance inspection), \"{ToolNames.GameTree}\" (previously explored game hierarchy), or \"plan_mode\" (previously created plan content)."]
       31 CALL                             R6 1 1
       32 SETTABLEKS                       R6 R5 K9 ["description"]
       34 NAMECALL                         R2 R2 K12 ["addArgument"]
       36 CALL                             R2 3 1
       37 LOADK                            R4 K13 ["key"]
       38 DUPTABLE                         R5 K10 [{["type"] = "string", ["description"]}]
       39 GETUPVAL                         R6 7
       40 GETTABLEKS                       R6 R6 K4 ["replaceTokens"]
       42 LOADK                            R7 K14 ["The key to look up: script path (for {ToolNames.ReadFile}/{ToolNames.InspectInstance}), search query (for {ToolNames.GrepSearch}), root path like \"game\" or \"Workspace\" (for {ToolNames.GameTree}), or plan ID (for plan_mode)."]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K9 ["description"]
       46 NAMECALL                         R2 R2 K12 ["addArgument"]
       48 CALL                             R2 3 1
       49 DUPTABLE                         R4 K23 [{["title"] = "Read History", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       50 NAMECALL                         R2 R2 K24 ["setAnnotations"]
       52 CALL                             R2 2 1
       53 MOVE                             R4 R1
       54 NAMECALL                         R2 R2 K25 ["setHandler"]
       56 CALL                             R2 2 1
       57 NAMECALL                         R2 R2 K26 ["build"]
       59 CALL                             R2 1 1
       60 DUPTABLE                         R3 K28 [{"definition"}]
       61 SETTABLEKS                       R2 R3 K27 ["definition"]
       63 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Engine"]
       16 GETTABLEKS                       R2 R2 K9 ["CompactedStore"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Flags"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R5 R5 K11 ["ModelContextProtocol"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Tools"]
       34 GETTABLEKS                       R6 R6 K13 ["ToolTypes"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R1 K8 ["Engine"]
       39 GETTABLEKS                       R6 R6 K14 ["truncateUtf8Safe"]
       41 GETTABLEKS                       R7 R4 K15 ["Util"]
       43 GETTABLEKS                       R7 R7 K16 ["ToolBuilder"]
       45 GETTABLEKS                       R8 R4 K15 ["Util"]
       47 GETTABLEKS                       R8 R8 K17 ["ToolResult"]
       49 GETTABLEKS                       R9 R5 K18 ["ToolNames"]
       51 NEWTABLE                         R10 4 0
       53 GETTABLEKS                       R11 R9 K19 ["ReadFile"]
       55 DUPCLOSURE                       R12 K20 [PROTO_0]
       56 CAPTURE                          VAL R2
       57 SETTABLE                         R12 R10 R11
       58 GETTABLEKS                       R11 R9 K21 ["GrepSearch"]
       60 DUPCLOSURE                       R12 K22 [PROTO_1]
       61 CAPTURE                          VAL R2
       62 SETTABLE                         R12 R10 R11
       63 GETTABLEKS                       R11 R9 K23 ["InspectInstance"]
       65 DUPCLOSURE                       R12 K24 [PROTO_2]
       66 CAPTURE                          VAL R2
       67 SETTABLE                         R12 R10 R11
       68 GETTABLEKS                       R11 R9 K25 ["GameTree"]
       70 DUPCLOSURE                       R12 K26 [PROTO_3]
       71 CAPTURE                          VAL R2
       72 SETTABLE                         R12 R10 R11
       73 GETTABLEKS                       R11 R3 K27 ["FFlagAssistantMarkdownPlanMode"]
       75 JUMPIFNOT                        R11 ; [+4]
       76 DUPCLOSURE                       R11 K28 [PROTO_4]
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R11 R10 K29 ["plan_mode"]
       80 DUPCLOSURE                       R11 K30 [PROTO_5]
       81 CAPTURE                          VAL R10
       82 DUPCLOSURE                       R12 K31 [PROTO_7]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R9
       91 RETURN                           R12 1
