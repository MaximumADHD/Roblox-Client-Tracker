PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADB                            R2 0
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["shouldCompact"]
        8 MOVE                             R3 R0
        9 GETTABLEKS                       R4 R1 K1 ["isSubagent"]
       11 GETTABLEKS                       R5 R1 K2 ["selectedModel"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["estimateTokens"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["input"]
        4 NAMECALL                         R0 R0 K1 ["JSONEncode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["content"]
        8 JUMPIFNOT                        R7 ; [+153]
        9 GETTABLEKS                       R7 R6 K0 ["content"]
       11 LOADNIL                          R8
       12 LOADNIL                          R9
       13 FORGPREP                         R7
       14 GETTABLEKS                       R12 R11 K1 ["type"]
       16 JUMPIFNOTEQKS                    R12 K2 ["text"] ; [+18]
       18 LOADK                            R15 K3 ["[%*]: %*"]
       19 GETTABLEKS                       R17 R6 K4 ["role"]
       21 GETTABLEKS                       R19 R11 K2 ["text"]
       23 ORK                              R18 R19 K5 [""]
       24 NAMECALL                         R15 R15 K6 ["format"]
       26 CALL                             R15 3 1
       27 MOVE                             R14 R15
       28 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
       30 MOVE                             R13 R1
       31 GETIMPORT                        R12 K9 [table.insert]
       33 CALL                             R12 2 0
       34 JUMP                             ; [+125]
       35 GETTABLEKS                       R12 R11 K1 ["type"]
       37 JUMPIFNOTEQKS                    R12 K10 ["tool_use"] ; [+42]
       39 LOADK                            R12 K5 [""]
       40 GETTABLEKS                       R13 R11 K11 ["input"]
       42 JUMPIFNOT                        R13 ; [+22]
       43 GETIMPORT                        R13 K13 [pcall]
       45 NEWCLOSURE                       R14 P0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R11
       48 CALL                             R13 1 2
       49 JUMPIFNOT                        R13 ; [+15]
       50 LENGTH                           R15 R14
       51 LOADN                            R16 200
       52 JUMPIFNOTLT                      R16 R15 ; [+11]
       54 LOADK                            R15 K14 ["%*..."]
       55 GETUPVAL                         R17 1
       56 MOVE                             R18 R14
       57 LOADN                            R19 200
       58 CALL                             R17 2 1
       59 NAMECALL                         R15 R15 K6 ["format"]
       61 CALL                             R15 2 1
       62 MOVE                             R12 R15
       63 JUMP                             ; [+1]
       64 MOVE                             R12 R14
       65 LOADK                            R16 K15 ["[tool_call]: %*(%*)"]
       66 GETTABLEKS                       R18 R11 K16 ["name"]
       68 MOVE                             R19 R12
       69 NAMECALL                         R16 R16 K6 ["format"]
       71 CALL                             R16 3 1
       72 MOVE                             R15 R16
       73 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       75 MOVE                             R14 R1
       76 GETIMPORT                        R13 K9 [table.insert]
       78 CALL                             R13 2 0
       79 JUMP                             ; [+80]
       80 GETTABLEKS                       R12 R11 K1 ["type"]
       82 JUMPIFNOTEQKS                    R12 K17 ["tool_result"] ; [+77]
       84 GETTABLEKS                       R13 R11 K18 ["isError"]
       86 JUMPIFNOT                        R13 ; [+2]
       87 LOADK                            R12 K19 ["ERROR"]
       88 JUMP                             ; [+1]
       89 LOADK                            R12 K20 ["OK"]
       90 GETTABLEKS                       R13 R11 K16 ["name"]
       92 GETUPVAL                         R15 2
       93 GETTABLE                         R14 R15 R13
       94 JUMPIFNOT                        R14 ; [+14]
       95 LOADK                            R17 K21 ["[tool_result]: %* -> %* (stored in history)"]
       96 MOVE                             R19 R13
       97 MOVE                             R20 R12
       98 NAMECALL                         R17 R17 K6 ["format"]
      100 CALL                             R17 3 1
      101 MOVE                             R16 R17
      102 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
      104 MOVE                             R15 R1
      105 GETIMPORT                        R14 K9 [table.insert]
      107 CALL                             R14 2 0
      108 JUMP                             ; [+51]
      109 LOADK                            R14 K5 [""]
      110 GETTABLEKS                       R15 R11 K0 ["content"]
      112 JUMPIFNOT                        R15 ; [+20]
      113 GETTABLEKS                       R15 R11 K0 ["content"]
      115 LOADNIL                          R16
      116 LOADNIL                          R17
      117 FORGPREP                         R15
      118 FASTCALL1                        TYPEOF R19 ; [+3]
      119 MOVE                             R21 R19
      120 GETIMPORT                        R20 K23 [typeof]
      122 CALL                             R20 1 1
      123 JUMPIFNOTEQKS                    R20 K7 ["table"] ; [+7]
      125 GETTABLEKS                       R20 R19 K2 ["text"]
      127 JUMPIFNOT                        R20 ; [+3]
      128 GETTABLEKS                       R14 R19 K2 ["text"]
      130 JUMP                             ; [+2]
      131 FORGLOOP                         R15 2 ; [-14]
      133 LENGTH                           R15 R14
      134 LOADN                            R16 44
      135 JUMPIFNOTLT                      R16 R15 ; [+10]
      137 LOADK                            R15 K14 ["%*..."]
      138 GETUPVAL                         R17 1
      139 MOVE                             R18 R14
      140 LOADN                            R19 44
      141 CALL                             R17 2 1
      142 NAMECALL                         R15 R15 K6 ["format"]
      144 CALL                             R15 2 1
      145 MOVE                             R14 R15
      146 LOADK                            R18 K24 ["[tool_result]: %* -> %*: %*"]
      147 MOVE                             R20 R13
      148 MOVE                             R21 R12
      149 MOVE                             R22 R14
      150 NAMECALL                         R18 R18 K6 ["format"]
      152 CALL                             R18 4 1
      153 MOVE                             R17 R18
      154 FASTCALL2                        TABLE_INSERT R1 R17 ; [+4]
      156 MOVE                             R16 R1
      157 GETIMPORT                        R15 K9 [table.insert]
      159 CALL                             R15 2 0
      160 FORGLOOP                         R7 2 ; [-147]
      162 FORGLOOP                         R2 2 ; [-157]
      164 GETIMPORT                        R2 K26 [table.concat]
      166 MOVE                             R3 R1
      167 LOADK                            R4 K27 ["\n"]
      168 CALL                             R2 2 -1
      169 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K1 ["selectedProvider"]
        2 ORK                              R1 R2 K0 ["Studio"]
        3 JUMPIFEQKS                       R1 K0 ["Studio"] ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["model"]
       11 RETURN                           R3 1
       12 GETTABLEKS                       R4 R0 K3 ["selectedModel"]
       14 JUMPIFNOT                        R4 ; [+6]
       15 GETTABLEKS                       R5 R0 K3 ["selectedModel"]
       17 JUMPIFNOTEQKS                    R5 K4 [""] ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       23 LOADK                            R5 K5 ["BYOK provider requires a selectedModel"]
       24 GETIMPORT                        R3 K7 [assert]
       26 CALL                             R3 2 0
       27 GETTABLEKS                       R3 R0 K3 ["selectedModel"]
       29 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["content_delta"] ; [+18]
        4 GETTABLEKS                       R1 R0 K2 ["delta"]
        6 JUMPIFNOT                        R1 ; [+40]
        7 GETTABLEKS                       R1 R0 K2 ["delta"]
        9 GETTABLEKS                       R1 R1 K0 ["type"]
       11 JUMPIFNOTEQKS                    R1 K3 ["text_delta"] ; [+35]
       13 GETTABLEKS                       R1 R0 K2 ["delta"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R4 R1 K4 ["text"]
       18 CONCAT                           R2 R3 R4
       19 SETUPVAL                         R2 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R1 R0 K0 ["type"]
       23 JUMPIFNOTEQKS                    R1 K5 ["message_stop"] ; [+8]
       25 LOADB                            R1 1
       26 SETUPVAL                         R1 1
       27 GETUPVAL                         R1 2
       28 NAMECALL                         R1 R1 K6 ["Fire"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R1 R0 K0 ["type"]
       34 JUMPIFNOTEQKS                    R1 K7 ["error"] ; [+12]
       36 GETIMPORT                        R1 K9 [warn]
       38 LOADK                            R2 K10 ["[ContextCompaction] Summarizer LLM error:"]
       39 MOVE                             R3 R0
       40 CALL                             R1 2 0
       41 LOADB                            R1 1
       42 SETUPVAL                         R1 1
       43 GETUPVAL                         R1 2
       44 NAMECALL                         R1 R1 K6 ["Fire"]
       46 CALL                             R1 1 0
       47 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["requestLLM"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 2 0
        9 LOADNIL                          R0
       10 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["[ContextCompaction] Summarizer timed out"]
        5 CALL                             R0 1 0
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K3 ["Fire"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R4 R1 K1 ["selectedProvider"]
        2 ORK                              R3 R4 K0 ["Studio"]
        3 JUMPIFEQKS                       R3 K0 ["Studio"] ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["model"]
       11 JUMP                             ; [+17]
       12 GETTABLEKS                       R6 R1 K3 ["selectedModel"]
       14 JUMPIFNOT                        R6 ; [+6]
       15 GETTABLEKS                       R7 R1 K3 ["selectedModel"]
       17 JUMPIFNOTEQKS                    R7 K4 [""] ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       23 LOADK                            R7 K5 ["BYOK provider requires a selectedModel"]
       24 GETIMPORT                        R5 K7 [assert]
       26 CALL                             R5 2 0
       27 GETTABLEKS                       R2 R1 K3 ["selectedModel"]
       29 LOADK                            R3 K4 [""]
       30 LOADB                            R4 0
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K8 ["new"]
       34 CALL                             R5 0 1
       35 DUPTABLE                         R6 K18 [{"threadId", "messageGuid", "system", "messages", "tools", "isFirstMessage", "isAgenticMode", "selectedModel", "apiKeys", "isSubagent"}]
       36 LOADK                            R8 K19 ["compaction-"]
       37 GETUPVAL                         R9 2
       38 LOADB                            R11 0
       39 NAMECALL                         R9 R9 K20 ["GenerateGUID"]
       41 CALL                             R9 2 1
       42 CONCAT                           R7 R8 R9
       43 SETTABLEKS                       R7 R6 K9 ["threadId"]
       45 GETUPVAL                         R7 2
       46 LOADB                            R9 0
       47 NAMECALL                         R7 R7 K20 ["GenerateGUID"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K10 ["messageGuid"]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K21 ["systemMessage"]
       55 SETTABLEKS                       R7 R6 K11 ["system"]
       57 NEWTABLE                         R7 0 1
       59 DUPTABLE                         R8 K24 [{"role", "content"}]
       60 LOADK                            R9 K25 ["user"]
       61 SETTABLEKS                       R9 R8 K22 ["role"]
       63 NEWTABLE                         R9 0 1
       65 DUPTABLE                         R10 K28 [{"type", "text"}]
       66 LOADK                            R11 K27 ["text"]
       67 SETTABLEKS                       R11 R10 K26 ["type"]
       69 LOADK                            R12 K29 ["Summarize the following conversation transcript into a structured JSON object as described in your instructions. Do NOT continue the conversation — only produce the JSON summary.\n\n<transcript>\n"]
       70 MOVE                             R13 R0
       71 LOADK                            R14 K30 ["\n</transcript>"]
       72 CONCAT                           R11 R12 R14
       73 SETTABLEKS                       R11 R10 K27 ["text"]
       75 SETLIST                          R9 R10 1 [1]
       77 SETTABLEKS                       R9 R8 K23 ["content"]
       79 SETLIST                          R7 R8 1 [1]
       81 SETTABLEKS                       R7 R6 K12 ["messages"]
       83 NEWTABLE                         R7 0 0
       85 SETTABLEKS                       R7 R6 K13 ["tools"]
       87 LOADB                            R7 0
       88 SETTABLEKS                       R7 R6 K14 ["isFirstMessage"]
       90 LOADB                            R7 0
       91 SETTABLEKS                       R7 R6 K15 ["isAgenticMode"]
       93 SETTABLEKS                       R2 R6 K3 ["selectedModel"]
       95 GETTABLEKS                       R7 R1 K16 ["apiKeys"]
       97 SETTABLEKS                       R7 R6 K16 ["apiKeys"]
       99 LOADB                            R7 1
      100 SETTABLEKS                       R7 R6 K17 ["isSubagent"]
      102 GETIMPORT                        R7 K32 [pcall]
      104 NEWCLOSURE                       R8 P0
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R6
      107 CAPTURE                          REF R3
      108 CAPTURE                          REF R4
      109 CAPTURE                          VAL R5
      110 CALL                             R7 1 2
      111 JUMPIF                           R7 ; [+17]
      112 GETIMPORT                        R9 K34 [warn]
      114 LOADK                            R10 K35 ["[ContextCompaction] Summarizer request failed:"]
      115 FASTCALL1                        TOSTRING R8 ; [+3]
      116 MOVE                             R12 R8
      117 GETIMPORT                        R11 K37 [tostring]
      119 CALL                             R11 1 1
      120 CALL                             R9 2 0
      121 LOADK                            R9 K4 [""]
      122 FASTCALL1                        TOSTRING R8 ; [+3]
      123 MOVE                             R11 R8
      124 GETIMPORT                        R10 K37 [tostring]
      126 CALL                             R10 1 1
      127 CLOSEUPVALS                      R3
      128 RETURN                           R9 2
      129 JUMPIF                           R4 ; [+20]
      130 GETUPVAL                         R9 3
      131 GETTABLEKS                       R9 R9 K8 ["new"]
      133 GETUPVAL                         R10 4
      134 CALL                             R10 0 -1
      135 CALL                             R9 -1 1
      136 GETTABLEKS                       R10 R9 K38 ["onTimeout"]
      138 NEWCLOSURE                       R12 P1
      139 CAPTURE                          REF R4
      140 CAPTURE                          VAL R5
      141 NAMECALL                         R10 R10 K39 ["Connect"]
      143 CALL                             R10 2 0
      144 NAMECALL                         R10 R5 K40 ["Wait"]
      146 CALL                             R10 1 0
      147 GETTABLEKS                       R10 R9 K41 ["close"]
      149 CALL                             R10 0 0
      150 MOVE                             R9 R3
      151 LOADNIL                          R10
      152 CLOSEUPVALS                      R3
      153 RETURN                           R9 2

PROTO_9:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["<compacted_history>\nThe following is a summary of the conversation so far. The original messages have been compacted to fit within the context window.\n\n## Conversation Summary\n%s\n\n## Available Historical Data\nYou can retrieve the following data from the compacted history using tools:\n\n%s\n\nNote: Some historical data may be stale if the game state was modified after the original reading. Use from_history tools to retrieve specific data, or re-run the original tool if you need guaranteed fresh data.\n</compacted_history>"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["buildManifest"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K3 [string.format]
        7 LOADK                            R5 K4 ["<compacted_history>\nThe following is a summary of the conversation so far. The original messages have been compacted to fit within the context window.\n\n## Conversation Summary\n%s\n\n## Available Historical Data\nYou can retrieve the following data from the compacted history using tools:\n\n%s\n\nNote: Some historical data may be stale if the game state was modified after the original reading. Use from_history tools to retrieve specific data, or re-run the original tool if you need guaranteed fresh data.\n</compacted_history>"]
        8 MOVE                             R6 R0
        9 MOVE                             R7 R3
       10 CALL                             R4 3 1
       11 DUPTABLE                         R5 K7 [{"role", "content"}]
       12 LOADK                            R6 K8 ["user"]
       13 SETTABLEKS                       R6 R5 K5 ["role"]
       15 NEWTABLE                         R6 0 1
       17 DUPTABLE                         R7 K11 [{"type", "text"}]
       18 LOADK                            R8 K10 ["text"]
       19 SETTABLEKS                       R8 R7 K9 ["type"]
       21 SETTABLEKS                       R4 R7 K10 ["text"]
       23 SETLIST                          R6 R7 1 [1]
       25 SETTABLEKS                       R6 R5 K6 ["content"]
       27 NEWTABLE                         R6 0 1
       29 MOVE                             R7 R5
       30 SETLIST                          R6 R7 1 [1]
       32 JUMPIFNOT                        R2 ; [+13]
       33 MOVE                             R7 R2
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       39 MOVE                             R13 R6
       40 MOVE                             R14 R11
       41 GETIMPORT                        R12 K14 [table.insert]
       43 CALL                             R12 2 0
       44 FORGLOOP                         R7 2 ; [-8]
       46 RETURN                           R6 1

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["compactedStore"]
        2 JUMPIF                           R2 ; [+4]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["new"]
        6 CALL                             R2 0 1
        7 LENGTH                           R3 R0
        8 LOADN                            R4 1
        9 JUMPIFNOTLE                      R3 R4 ; [+7]
       11 DUPTABLE                         R4 K3 [{"messages", "compactedStore"}]
       12 SETTABLEKS                       R0 R4 K2 ["messages"]
       14 SETTABLEKS                       R2 R4 K0 ["compactedStore"]
       16 RETURN                           R4 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["buildIndex"]
       20 MOVE                             R5 R0
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K5 ["mergeIndex"]
       25 MOVE                             R6 R2
       26 MOVE                             R7 R4
       27 CALL                             R5 2 0
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K6 ["serializeForSummary"]
       31 MOVE                             R6 R0
       32 CALL                             R5 1 1
       33 GETUPVAL                         R6 2
       34 MOVE                             R7 R5
       35 MOVE                             R8 R1
       36 CALL                             R6 2 2
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R8 R8 K7 ["get"]
       40 CALL                             R8 0 1
       41 GETTABLEKS                       R8 R8 K8 ["EventLogger"]
       43 JUMPIFNOTEQKS                    R6 K9 [""] ; [+20]
       45 GETIMPORT                        R9 K11 [warn]
       47 LOADK                            R10 K12 ["[ContextCompaction] Summarizer failed, using fallback summary"]
       48 CALL                             R9 1 0
       49 LOADK                            R6 K13 ["The conversation history was compacted but the summarizer failed to generate a detailed summary. Use the Available Historical Data below to retrieve previously examined content via from_history."]
       50 GETTABLEKS                       R9 R8 K14 ["logCompactionFallback"]
       52 DUPTABLE                         R10 K18 [{"threadId", "errorMessage", "messageCount"}]
       53 GETTABLEKS                       R11 R1 K15 ["threadId"]
       55 SETTABLEKS                       R11 R10 K15 ["threadId"]
       57 ORK                              R11 R7 K19 ["empty_response"]
       58 SETTABLEKS                       R11 R10 K16 ["errorMessage"]
       60 SETTABLEKS                       R3 R10 K17 ["messageCount"]
       62 CALL                             R9 1 0
       63 JUMP                             ; [+13]
       64 GETUPVAL                         R9 4
       65 CALL                             R9 0 1
       66 JUMPIFNOT                        R9 ; [+10]
       67 GETTABLEKS                       R9 R8 K20 ["logCompactionSuccess"]
       69 DUPTABLE                         R10 K21 [{"threadId", "messageCount"}]
       70 GETTABLEKS                       R11 R1 K15 ["threadId"]
       72 SETTABLEKS                       R11 R10 K15 ["threadId"]
       74 SETTABLEKS                       R3 R10 K17 ["messageCount"]
       76 CALL                             R9 1 0
       77 SETTABLEKS                       R6 R2 K22 ["summary"]
       79 GETTABLEKS                       R10 R1 K24 ["uiMessageCount"]
       81 ORK                              R9 R10 K23 [0]
       82 SETTABLEKS                       R9 R2 K25 ["compactedUIMessageCount"]
       84 GETUPVAL                         R9 0
       85 GETTABLEKS                       R9 R9 K26 ["set"]
       87 GETTABLEKS                       R10 R1 K15 ["threadId"]
       89 MOVE                             R11 R2
       90 CALL                             R9 2 0
       91 GETUPVAL                         R9 1
       92 GETTABLEKS                       R9 R9 K27 ["assembleCompactedMessages"]
       94 MOVE                             R10 R6
       95 MOVE                             R11 R2
       96 CALL                             R9 2 1
       97 DUPTABLE                         R10 K3 [{"messages", "compactedStore"}]
       98 SETTABLEKS                       R9 R10 K2 ["messages"]
      100 SETTABLEKS                       R2 R10 K0 ["compactedStore"]
      102 RETURN                           R10 1

PROTO_12:
        0 GETTABLEKS                       R3 R1 K0 ["summary"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R3 R1 K1 ["compactedUIMessageCount"]
        5 LOADN                            R4 0
        6 JUMPIFNOTLE                      R3 R4 ; [+3]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["buildIndex"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K3 ["mergeIndex"]
       18 MOVE                             R5 R1
       19 MOVE                             R6 R3
       20 CALL                             R4 2 0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K4 ["set"]
       24 GETTABLEKS                       R5 R2 K5 ["threadId"]
       26 MOVE                             R6 R1
       27 CALL                             R4 2 0
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K6 ["assembleCompactedMessages"]
       31 GETTABLEKS                       R5 R1 K0 ["summary"]
       33 MOVE                             R6 R1
       34 MOVE                             R7 R0
       35 CALL                             R4 3 1
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K7 ["shouldCompact"]
       39 MOVE                             R6 R4
       40 LOADB                            R7 0
       41 GETTABLEKS                       R8 R2 K8 ["selectedModel"]
       43 CALL                             R5 3 1
       44 JUMPIFNOT                        R5 ; [+2]
       45 LOADNIL                          R5
       46 RETURN                           R5 1
       47 DUPTABLE                         R5 K11 [{"messages", "compactedStore"}]
       48 SETTABLEKS                       R4 R5 K9 ["messages"]
       50 SETTABLEKS                       R1 R5 K10 ["compactedStore"]
       52 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Compaction"]
       19 GETTABLEKS                       R3 R3 K12 ["CompactedStore"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Subagents"]
       26 GETTABLEKS                       R4 R4 K14 ["CompactionSubagent"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Guest"]
       33 GETTABLEKS                       R5 R5 K16 ["Environment"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K17 ["Components"]
       40 GETTABLEKS                       R6 R6 K18 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K19 ["DefaultLLMProvider"]
       44 GETTABLEKS                       R6 R6 K20 ["LLMRequest"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R0 K21 ["Parent"]
       51 GETTABLEKS                       R7 R7 K22 ["Signal"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K10 ["Util"]
       58 GETTABLEKS                       R8 R8 K23 ["Timer"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R0 K24 ["Tools"]
       65 GETTABLEKS                       R9 R9 K25 ["ToolNames"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R0 K26 ["Types"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K10 ["Util"]
       77 GETTABLEKS                       R11 R11 K11 ["Compaction"]
       79 GETTABLEKS                       R11 R11 K27 ["estimateTokens"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R0 K10 ["Util"]
       86 GETTABLEKS                       R12 R12 K28 ["truncateUtf8Safe"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R13 R0 K29 ["Flags"]
       93 GETTABLEKS                       R13 R13 K30 ["FFlagAssistantContextCompaction"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K9 [require]
       98 GETTABLEKS                       R14 R0 K29 ["Flags"]
      100 GETTABLEKS                       R14 R14 K31 ["FFlagAssistantContextCompactionExp"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K9 [require]
      105 GETTABLEKS                       R15 R0 K29 ["Flags"]
      107 GETTABLEKS                       R15 R15 K32 ["FIntContextCompactionSummarizerTimeoutMs"]
      109 CALL                             R14 1 1
      110 NEWTABLE                         R15 4 0
      112 GETTABLEKS                       R16 R8 K33 ["ReadFile"]
      114 LOADB                            R17 1
      115 SETTABLE                         R17 R15 R16
      116 GETTABLEKS                       R16 R8 K34 ["GameTree"]
      118 LOADB                            R17 1
      119 SETTABLE                         R17 R15 R16
      120 GETTABLEKS                       R16 R8 K35 ["GrepSearch"]
      122 LOADB                            R17 1
      123 SETTABLE                         R17 R15 R16
      124 GETTABLEKS                       R16 R8 K36 ["InspectInstance"]
      126 LOADB                            R17 1
      127 SETTABLE                         R17 R15 R16
      128 NEWTABLE                         R16 8 0
      130 DUPCLOSURE                       R17 K37 [PROTO_0]
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R10
      133 SETTABLEKS                       R17 R16 K38 ["shouldCompact"]
      135 DUPCLOSURE                       R17 K39 [PROTO_1]
      136 CAPTURE                          VAL R10
      137 SETTABLEKS                       R17 R16 K40 ["estimateMessages"]
      139 DUPCLOSURE                       R17 K41 [PROTO_3]
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R15
      143 SETTABLEKS                       R17 R16 K42 ["serializeForSummary"]
      145 DUPCLOSURE                       R17 K43 [PROTO_4]
      146 CAPTURE                          VAL R3
      147 DUPCLOSURE                       R18 K44 [PROTO_8]
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R14
      153 DUPCLOSURE                       R19 K45 [PROTO_9]
      154 DUPCLOSURE                       R20 K46 [PROTO_10]
      155 CAPTURE                          VAL R2
      156 SETTABLEKS                       R20 R16 K47 ["assembleCompactedMessages"]
      158 DUPCLOSURE                       R20 K48 [PROTO_11]
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R13
      164 SETTABLEKS                       R20 R16 K49 ["compact"]
      166 DUPCLOSURE                       R20 K50 [PROTO_12]
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R10
      170 SETTABLEKS                       R20 R16 K51 ["reconstructFromStore"]
      172 RETURN                           R16 1
