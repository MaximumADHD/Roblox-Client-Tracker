PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getScript"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETTABLEKS                       R3 R2 K1 ["content"]
       10 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getGrep"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETTABLEKS                       R3 R2 K1 ["results"]
       10 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getInspect"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETTABLEKS                       R3 R2 K1 ["properties"]
       10 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getGameTree"]
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
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["get"]
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
       84 JUMPIFNOTLT                      R9 R10 ; [+35]
       86 GETUPVAL                         R10 1
       87 CALL                             R10 0 1
       88 GETIMPORT                        R12 K14 [string.format]
       90 LOADK                            R13 K15 ["%s\n\n[TRUNCATED — content is %d chars. Use the original tool (%s) to read the full content if needed.]"]
       91 LOADN                            R16 1
       92 FASTCALL3                        STRING_SUB R8 R16 R9
       94 MOVE                             R15 R8
       95 MOVE                             R17 R9
       96 GETIMPORT                        R14 K17 [string.sub]
       98 CALL                             R14 3 1
       99 LENGTH                           R15 R8
      100 MOVE                             R16 R4
      101 CALL                             R12 4 -1
      102 NAMECALL                         R10 R10 K3 ["addText"]
      104 CALL                             R10 -1 1
      105 DUPTABLE                         R12 K19 [{"type", "key", "truncated"}]
      106 SETTABLEKS                       R4 R12 K6 ["type"]
      108 SETTABLEKS                       R5 R12 K7 ["key"]
      110 LOADB                            R13 1
      111 SETTABLEKS                       R13 R12 K18 ["truncated"]
      113 NAMECALL                         R10 R10 K20 ["setStructuredContent"]
      115 CALL                             R10 2 1
      116 NAMECALL                         R10 R10 K5 ["build"]
      118 CALL                             R10 1 -1
      119 RETURN                           R10 -1
      120 GETUPVAL                         R10 1
      121 CALL                             R10 0 1
      122 MOVE                             R12 R8
      123 NAMECALL                         R10 R10 K3 ["addText"]
      125 CALL                             R10 2 1
      126 DUPTABLE                         R12 K21 [{"type", "key"}]
      127 SETTABLEKS                       R4 R12 K6 ["type"]
      129 SETTABLEKS                       R5 R12 K7 ["key"]
      131 NAMECALL                         R10 R10 K20 ["setStructuredContent"]
      133 CALL                             R10 2 1
      134 NAMECALL                         R10 R10 K5 ["build"]
      136 CALL                             R10 1 -1
      137 RETURN                           R10 -1

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"type", "summary"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K4 ["FromHistory"]
        8 LOADK                            R4 K5 ["Pending"]
        9 NAMECALL                         R1 R1 K6 ["getText"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["summary"]
       14 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isError"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["FromHistory"]
        6 LOADK                            R4 K2 ["Failed"]
        7 NAMECALL                         R1 R1 K3 ["getText"]
        9 CALL                             R1 3 1
       10 SETTABLEKS                       R1 R0 K4 ["summary"]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 2
       14 JUMPIFNOT                        R1 ; [+22]
       15 GETUPVAL                         R1 1
       16 LOADK                            R3 K1 ["FromHistory"]
       17 LOADK                            R4 K5 ["Retrieved"]
       18 DUPTABLE                         R5 K8 [{"type", "key"}]
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R7 R8 K6 ["type"]
       22 ORK                              R6 R7 K9 [""]
       23 SETTABLEKS                       R6 R5 K6 ["type"]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R7 R8 K7 ["key"]
       28 ORK                              R6 R7 K9 [""]
       29 SETTABLEKS                       R6 R5 K7 ["key"]
       31 NAMECALL                         R1 R1 K3 ["getText"]
       33 CALL                             R1 4 1
       34 SETTABLEKS                       R1 R0 K4 ["summary"]
       36 RETURN                           R0 0
       37 GETUPVAL                         R1 1
       38 LOADK                            R3 K1 ["FromHistory"]
       39 LOADK                            R4 K2 ["Failed"]
       40 NAMECALL                         R1 R1 K3 ["getText"]
       42 CALL                             R1 3 1
       43 SETTABLEKS                       R1 R0 K4 ["summary"]
       45 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 RETURN                           R2 1

PROTO_9:
        0 DUPCLOSURE                       R1 K0 [PROTO_5]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 GETUPVAL                         R3 5
        7 GETTABLEKS                       R2 R3 K1 ["define"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R5 6
       11 GETTABLEKS                       R4 R5 K2 ["FromHistory"]
       13 NAMECALL                         R2 R2 K3 ["setName"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R5 6
       17 GETTABLEKS                       R4 R5 K4 ["replaceTokens"]
       19 LOADK                            R5 K5 ["Retrieve previously read content from compacted conversation history.\nUse this when you need to recall script content, grep results, instance properties,\nor game tree structure that were examined earlier in the conversation but are no\nlonger in the active context.\nNOTE: Script content may be stale if it was modified after the original reading."]
       20 CALL                             R4 1 -1
       21 NAMECALL                         R2 R2 K6 ["setDescription"]
       23 CALL                             R2 -1 1
       24 LOADK                            R4 K7 ["type"]
       25 DUPTABLE                         R5 K9 [{"type", "description"}]
       26 LOADK                            R6 K10 ["string"]
       27 SETTABLEKS                       R6 R5 K7 ["type"]
       29 GETUPVAL                         R7 6
       30 GETTABLEKS                       R6 R7 K4 ["replaceTokens"]
       32 LOADK                            R7 K11 ["The type of data to retrieve: \"{ToolNames.ReadFile}\" (previously read script content), \"{ToolNames.GrepSearch}\" (previous grep/search results), \"{ToolNames.InspectInstance}\" (previous instance inspection), or \"{ToolNames.GameTree}\" (previously explored game hierarchy)."]
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R6 R5 K8 ["description"]
       36 NAMECALL                         R2 R2 K12 ["addArgument"]
       38 CALL                             R2 3 1
       39 LOADK                            R4 K13 ["key"]
       40 DUPTABLE                         R5 K9 [{"type", "description"}]
       41 LOADK                            R6 K10 ["string"]
       42 SETTABLEKS                       R6 R5 K7 ["type"]
       44 GETUPVAL                         R7 6
       45 GETTABLEKS                       R6 R7 K4 ["replaceTokens"]
       47 LOADK                            R7 K14 ["The key to look up: script path (for {ToolNames.ReadFile}/{ToolNames.InspectInstance}), search query (for {ToolNames.GrepSearch}), or root path like \"game\" or \"Workspace\" (for {ToolNames.GameTree})."]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K8 ["description"]
       51 NAMECALL                         R2 R2 K12 ["addArgument"]
       53 CALL                             R2 3 1
       54 MOVE                             R4 R1
       55 NAMECALL                         R2 R2 K15 ["setHandler"]
       57 CALL                             R2 2 1
       58 NAMECALL                         R2 R2 K16 ["build"]
       60 CALL                             R2 1 1
       61 DUPTABLE                         R3 K19 [{"transformInitialContent", "getTransformResultFn"}]
       62 DUPCLOSURE                       R4 K20 [PROTO_6]
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U8
       65 SETTABLEKS                       R4 R3 K17 ["transformInitialContent"]
       67 DUPCLOSURE                       R4 K21 [PROTO_8]
       68 CAPTURE                          UPVAL U8
       69 SETTABLEKS                       R4 R3 K18 ["getTransformResultFn"]
       71 DUPTABLE                         R4 K25 [{"definition", "contentWidgets", "streamTransform"}]
       72 SETTABLEKS                       R2 R4 K22 ["definition"]
       74 NEWTABLE                         R5 0 1
       76 GETUPVAL                         R6 7
       77 SETLIST                          R5 R6 1 [1]
       79 SETTABLEKS                       R5 R4 K23 ["contentWidgets"]
       81 SETTABLEKS                       R3 R4 K24 ["streamTransform"]
       83 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["Compaction"]
       13 GETTABLEKS                       R2 R3 K8 ["CompactedStore"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["ModelContextProtocol"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K11 ["Components"]
       27 GETTABLEKS                       R5 R6 K12 ["ContentWidgets"]
       29 GETTABLEKS                       R4 R5 K13 ["SummarizedContentWidget"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Tools"]
       36 GETTABLEKS                       R5 R6 K15 ["ToolTypes"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K16 ["Resources"]
       43 GETTABLEKS                       R7 R8 K17 ["Localization"]
       45 GETTABLEKS                       R6 R7 K18 ["Translator"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R7 R2 K6 ["Util"]
       50 GETTABLEKS                       R6 R7 K19 ["ToolBuilder"]
       52 GETTABLEKS                       R8 R2 K6 ["Util"]
       54 GETTABLEKS                       R7 R8 K20 ["ToolResult"]
       56 GETTABLEKS                       R8 R4 K21 ["ToolNames"]
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R11 R0 K22 ["Flags"]
       62 GETTABLEKS                       R10 R11 K23 ["FIntFromHistoryMaxResultChars"]
       64 CALL                             R9 1 1
       65 NEWTABLE                         R10 4 0
       67 GETTABLEKS                       R11 R8 K24 ["ReadFile"]
       69 DUPCLOSURE                       R12 K25 [PROTO_0]
       70 CAPTURE                          VAL R1
       71 SETTABLE                         R12 R10 R11
       72 GETTABLEKS                       R11 R8 K26 ["GrepSearch"]
       74 DUPCLOSURE                       R12 K27 [PROTO_1]
       75 CAPTURE                          VAL R1
       76 SETTABLE                         R12 R10 R11
       77 GETTABLEKS                       R11 R8 K28 ["InspectInstance"]
       79 DUPCLOSURE                       R12 K29 [PROTO_2]
       80 CAPTURE                          VAL R1
       81 SETTABLE                         R12 R10 R11
       82 GETTABLEKS                       R11 R8 K30 ["GameTree"]
       84 DUPCLOSURE                       R12 K31 [PROTO_3]
       85 CAPTURE                          VAL R1
       86 SETTABLE                         R12 R10 R11
       87 DUPCLOSURE                       R11 K32 [PROTO_4]
       88 CAPTURE                          VAL R10
       89 DUPCLOSURE                       R12 K33 [PROTO_9]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R5
       99 RETURN                           R12 1
