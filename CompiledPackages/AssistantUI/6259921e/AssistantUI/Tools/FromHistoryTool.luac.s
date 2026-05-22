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

PROTO_5:
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
       12 JUMPIF                           R3 ; [+14]
       13 GETUPVAL                         R4 1
       14 CALL                             R4 0 1
       15 LOADK                            R6 K2 ["No compacted history available. Context has not been compacted yet."]
       16 NAMECALL                         R4 R4 K3 ["addText"]
       18 CALL                             R4 2 1
       19 LOADB                            R6 1
       20 NAMECALL                         R4 R4 K4 ["setError"]
       22 CALL                             R4 2 1
       23 NAMECALL                         R4 R4 K5 ["build"]
       25 CALL                             R4 1 -1
       26 RETURN                           R4 -1
       27 GETTABLEKS                       R4 R0 K6 ["type"]
       29 GETTABLEKS                       R5 R0 K7 ["key"]
       31 GETUPVAL                         R6 2
       32 CALL                             R6 0 1
       33 GETUPVAL                         R8 3
       34 GETTABLE                         R7 R8 R4
       35 JUMPIF                           R7 ; [+20]
       36 GETUPVAL                         R8 1
       37 CALL                             R8 0 1
       38 LOADK                            R11 K8 ["Unknown type '%*'. Valid types: %*"]
       39 MOVE                             R13 R4
       40 MOVE                             R14 R6
       41 NAMECALL                         R11 R11 K9 ["format"]
       43 CALL                             R11 3 1
       44 MOVE                             R10 R11
       45 NAMECALL                         R8 R8 K3 ["addText"]
       47 CALL                             R8 2 1
       48 LOADB                            R10 1
       49 NAMECALL                         R8 R8 K4 ["setError"]
       51 CALL                             R8 2 1
       52 NAMECALL                         R8 R8 K5 ["build"]
       54 CALL                             R8 1 -1
       55 RETURN                           R8 -1
       56 MOVE                             R8 R7
       57 MOVE                             R9 R3
       58 MOVE                             R10 R5
       59 CALL                             R8 2 1
       60 JUMPIF                           R8 ; [+20]
       61 GETUPVAL                         R9 1
       62 CALL                             R9 0 1
       63 LOADK                            R12 K10 ["No historical entry found for type='%*', key='%*'."]
       64 MOVE                             R14 R4
       65 FASTCALL1                        TOSTRING R5 ; [+3]
       66 MOVE                             R16 R5
       67 GETIMPORT                        R15 K12 [tostring]
       69 CALL                             R15 1 1
       70 NAMECALL                         R12 R12 K9 ["format"]
       72 CALL                             R12 3 1
       73 MOVE                             R11 R12
       74 NAMECALL                         R9 R9 K3 ["addText"]
       76 CALL                             R9 2 1
       77 NAMECALL                         R9 R9 K5 ["build"]
       79 CALL                             R9 1 -1
       80 RETURN                           R9 -1
       81 GETUPVAL                         R9 4
       82 CALL                             R9 0 1
       83 LENGTH                           R10 R8
       84 JUMPIFNOTLT                      R9 R10 ; [+31]
       86 GETUPVAL                         R10 1
       87 CALL                             R10 0 1
       88 GETIMPORT                        R12 K14 [string.format]
       90 LOADK                            R13 K15 ["%s\n\n[TRUNCATED — content is %d chars. Use the original tool (%s) to read the full content if needed.]"]
       91 GETUPVAL                         R14 5
       92 MOVE                             R15 R8
       93 MOVE                             R16 R9
       94 CALL                             R14 2 1
       95 LENGTH                           R15 R8
       96 MOVE                             R16 R4
       97 CALL                             R12 4 -1
       98 NAMECALL                         R10 R10 K3 ["addText"]
      100 CALL                             R10 -1 1
      101 DUPTABLE                         R12 K17 [{"type", "key", "truncated"}]
      102 SETTABLEKS                       R4 R12 K6 ["type"]
      104 SETTABLEKS                       R5 R12 K7 ["key"]
      106 LOADB                            R13 1
      107 SETTABLEKS                       R13 R12 K16 ["truncated"]
      109 NAMECALL                         R10 R10 K18 ["setStructuredContent"]
      111 CALL                             R10 2 1
      112 NAMECALL                         R10 R10 K5 ["build"]
      114 CALL                             R10 1 -1
      115 RETURN                           R10 -1
      116 GETUPVAL                         R10 1
      117 CALL                             R10 0 1
      118 MOVE                             R12 R8
      119 NAMECALL                         R10 R10 K3 ["addText"]
      121 CALL                             R10 2 1
      122 DUPTABLE                         R12 K19 [{"type", "key"}]
      123 SETTABLEKS                       R4 R12 K6 ["type"]
      125 SETTABLEKS                       R5 R12 K7 ["key"]
      127 NAMECALL                         R10 R10 K18 ["setStructuredContent"]
      129 CALL                             R10 2 1
      130 NAMECALL                         R10 R10 K5 ["build"]
      132 CALL                             R10 1 -1
      133 RETURN                           R10 -1

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"type", "summary"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K4 ["FromHistory"]
        8 LOADK                            R4 K5 ["Pending"]
        9 NAMECALL                         R1 R1 K6 ["getText"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["summary"]
       14 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+26]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["isError"]
        5 JUMPIF                           R1 ; [+22]
        6 GETUPVAL                         R1 2
        7 LOADK                            R3 K1 ["FromHistory"]
        8 LOADK                            R4 K2 ["Retrieved"]
        9 DUPTABLE                         R5 K5 [{"type", "key"}]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K3 ["type"]
       13 ORK                              R6 R7 K6 [""]
       14 SETTABLEKS                       R6 R5 K3 ["type"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K4 ["key"]
       19 ORK                              R6 R7 K6 [""]
       20 SETTABLEKS                       R6 R5 K4 ["key"]
       22 NAMECALL                         R1 R1 K7 ["getText"]
       24 CALL                             R1 4 1
       25 SETTABLEKS                       R1 R0 K8 ["summary"]
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 2
       29 LOADK                            R3 K1 ["FromHistory"]
       30 LOADK                            R4 K9 ["Failed"]
       31 NAMECALL                         R1 R1 K7 ["getText"]
       33 CALL                             R1 3 1
       34 SETTABLEKS                       R1 R0 K8 ["summary"]
       36 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 RETURN                           R2 1

PROTO_9:
        0 DUPCLOSURE                       R1 K0 [PROTO_5]
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
       20 LOADK                            R5 K5 ["Retrieve previously read content from compacted conversation history.\nUse this when you need to recall script content, grep results, instance properties,\nor game tree structure that were examined earlier in the conversation but are no\nlonger in the active context.\nNOTE: Script content may be stale if it was modified after the original reading."]
       21 CALL                             R4 1 -1
       22 NAMECALL                         R2 R2 K6 ["setDescription"]
       24 CALL                             R2 -1 1
       25 LOADK                            R4 K7 ["type"]
       26 DUPTABLE                         R5 K9 [{"type", "description"}]
       27 LOADK                            R6 K10 ["string"]
       28 SETTABLEKS                       R6 R5 K7 ["type"]
       30 GETUPVAL                         R6 7
       31 GETTABLEKS                       R6 R6 K4 ["replaceTokens"]
       33 LOADK                            R7 K11 ["The type of data to retrieve: \"{ToolNames.ReadFile}\" (previously read script content), \"{ToolNames.GrepSearch}\" (previous grep/search results), \"{ToolNames.InspectInstance}\" (previous instance inspection), or \"{ToolNames.GameTree}\" (previously explored game hierarchy)."]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K8 ["description"]
       37 NAMECALL                         R2 R2 K12 ["addArgument"]
       39 CALL                             R2 3 1
       40 LOADK                            R4 K13 ["key"]
       41 DUPTABLE                         R5 K9 [{"type", "description"}]
       42 LOADK                            R6 K10 ["string"]
       43 SETTABLEKS                       R6 R5 K7 ["type"]
       45 GETUPVAL                         R6 7
       46 GETTABLEKS                       R6 R6 K4 ["replaceTokens"]
       48 LOADK                            R7 K14 ["The key to look up: script path (for {ToolNames.ReadFile}/{ToolNames.InspectInstance}), search query (for {ToolNames.GrepSearch}), or root path like \"game\" or \"Workspace\" (for {ToolNames.GameTree})."]
       49 CALL                             R6 1 1
       50 SETTABLEKS                       R6 R5 K8 ["description"]
       52 NAMECALL                         R2 R2 K12 ["addArgument"]
       54 CALL                             R2 3 1
       55 DUPTABLE                         R4 K20 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       56 LOADK                            R5 K21 ["Read History"]
       57 SETTABLEKS                       R5 R4 K15 ["title"]
       59 LOADB                            R5 1
       60 SETTABLEKS                       R5 R4 K16 ["readOnlyHint"]
       62 LOADB                            R5 0
       63 SETTABLEKS                       R5 R4 K17 ["destructiveHint"]
       65 LOADB                            R5 1
       66 SETTABLEKS                       R5 R4 K18 ["idempotentHint"]
       68 LOADB                            R5 0
       69 SETTABLEKS                       R5 R4 K19 ["openWorldHint"]
       71 NAMECALL                         R2 R2 K22 ["setAnnotations"]
       73 CALL                             R2 2 1
       74 MOVE                             R4 R1
       75 NAMECALL                         R2 R2 K23 ["setHandler"]
       77 CALL                             R2 2 1
       78 NAMECALL                         R2 R2 K24 ["build"]
       80 CALL                             R2 1 1
       81 DUPTABLE                         R3 K27 [{"transformInitialContent", "getTransformResultFn"}]
       82 DUPCLOSURE                       R4 K28 [PROTO_6]
       83 CAPTURE                          UPVAL U8
       84 CAPTURE                          UPVAL U9
       85 SETTABLEKS                       R4 R3 K25 ["transformInitialContent"]
       87 DUPCLOSURE                       R4 K29 [PROTO_8]
       88 CAPTURE                          UPVAL U9
       89 SETTABLEKS                       R4 R3 K26 ["getTransformResultFn"]
       91 DUPTABLE                         R4 K33 [{"definition", "contentWidgets", "streamTransform"}]
       92 SETTABLEKS                       R2 R4 K30 ["definition"]
       94 NEWTABLE                         R5 0 1
       96 GETUPVAL                         R6 8
       97 SETLIST                          R5 R6 1 [1]
       99 SETTABLEKS                       R5 R4 K31 ["contentWidgets"]
      101 SETTABLEKS                       R3 R4 K32 ["streamTransform"]
      103 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Compaction"]
       13 GETTABLEKS                       R2 R2 K8 ["CompactedStore"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["ModelContextProtocol"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Components"]
       27 GETTABLEKS                       R4 R4 K12 ["ContentWidgets"]
       29 GETTABLEKS                       R4 R4 K13 ["SummarizedContentWidget"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["Tools"]
       36 GETTABLEKS                       R5 R5 K15 ["ToolTypes"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K16 ["Resources"]
       43 GETTABLEKS                       R6 R6 K17 ["Localization"]
       45 GETTABLEKS                       R6 R6 K18 ["Translator"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Util"]
       52 GETTABLEKS                       R7 R7 K19 ["truncateUtf8Safe"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R2 K6 ["Util"]
       57 GETTABLEKS                       R7 R7 K20 ["ToolBuilder"]
       59 GETTABLEKS                       R8 R2 K6 ["Util"]
       61 GETTABLEKS                       R8 R8 K21 ["ToolResult"]
       63 GETTABLEKS                       R9 R4 K22 ["ToolNames"]
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R0 K23 ["Flags"]
       69 GETTABLEKS                       R11 R11 K24 ["FIntFromHistoryMaxResultChars"]
       71 CALL                             R10 1 1
       72 NEWTABLE                         R11 4 0
       74 GETTABLEKS                       R12 R9 K25 ["ReadFile"]
       76 DUPCLOSURE                       R13 K26 [PROTO_0]
       77 CAPTURE                          VAL R1
       78 SETTABLE                         R13 R11 R12
       79 GETTABLEKS                       R12 R9 K27 ["GrepSearch"]
       81 DUPCLOSURE                       R13 K28 [PROTO_1]
       82 CAPTURE                          VAL R1
       83 SETTABLE                         R13 R11 R12
       84 GETTABLEKS                       R12 R9 K29 ["InspectInstance"]
       86 DUPCLOSURE                       R13 K30 [PROTO_2]
       87 CAPTURE                          VAL R1
       88 SETTABLE                         R13 R11 R12
       89 GETTABLEKS                       R12 R9 K31 ["GameTree"]
       91 DUPCLOSURE                       R13 K32 [PROTO_3]
       92 CAPTURE                          VAL R1
       93 SETTABLE                         R13 R11 R12
       94 DUPCLOSURE                       R12 K33 [PROTO_4]
       95 CAPTURE                          VAL R11
       96 DUPCLOSURE                       R13 K34 [PROTO_9]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R5
      107 RETURN                           R13 1
