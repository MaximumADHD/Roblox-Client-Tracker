PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["shouldCompact"]
        3 MOVE                             R3 R0
        4 GETTABLEKS                       R4 R1 K1 ["isSubagent"]
        6 GETTABLEKS                       R5 R1 K2 ["selectedModel"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

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
        6 JUMPIFNOT                        R1 ; [+48]
        7 GETTABLEKS                       R1 R0 K2 ["delta"]
        9 GETTABLEKS                       R1 R1 K0 ["type"]
       11 JUMPIFNOTEQKS                    R1 K3 ["text_delta"] ; [+43]
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
       34 JUMPIFNOTEQKS                    R1 K7 ["error"] ; [+20]
       36 GETTABLEKS                       R3 R0 K7 ["error"]
       38 ORK                              R2 R3 K8 ["stream_error"]
       39 FASTCALL1                        TOSTRING R2 ; [+2]
       40 GETIMPORT                        R1 K10 [tostring]
       42 CALL                             R1 1 1
       43 SETUPVAL                         R1 3
       44 GETIMPORT                        R1 K12 [warn]
       46 LOADK                            R2 K13 ["[ContextCompaction] Summarizer LLM error:"]
       47 MOVE                             R3 R0
       48 CALL                             R1 2 0
       49 LOADB                            R1 1
       50 SETUPVAL                         R1 1
       51 GETUPVAL                         R1 2
       52 NAMECALL                         R1 R1 K6 ["Fire"]
       54 CALL                             R1 1 0
       55 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["requestLLM"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 2 0
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+12]
        2 LOADK                            R0 K0 ["timeout"]
        3 SETUPVAL                         R0 1
        4 GETIMPORT                        R0 K2 [warn]
        6 LOADK                            R1 K3 ["[ContextCompaction] Summarizer timed out"]
        7 CALL                             R0 1 0
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 2
       11 NAMECALL                         R0 R0 K4 ["Fire"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

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
       35 LOADNIL                          R6
       36 DUPTABLE                         R7 K18 [{"threadId", "messageGuid", "system", "messages", "tools", "isFirstMessage", "isAgenticMode", "selectedModel", "apiKeys", "isSubagent"}]
       37 LOADK                            R9 K19 ["compaction-"]
       38 GETUPVAL                         R10 2
       39 LOADB                            R12 0
       40 NAMECALL                         R10 R10 K20 ["GenerateGUID"]
       42 CALL                             R10 2 1
       43 CONCAT                           R8 R9 R10
       44 SETTABLEKS                       R8 R7 K9 ["threadId"]
       46 GETUPVAL                         R8 2
       47 LOADB                            R10 0
       48 NAMECALL                         R8 R8 K20 ["GenerateGUID"]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K10 ["messageGuid"]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K21 ["systemMessage"]
       56 SETTABLEKS                       R8 R7 K11 ["system"]
       58 NEWTABLE                         R8 0 1
       60 DUPTABLE                         R9 K24 [{"role", "content"}]
       61 LOADK                            R10 K25 ["user"]
       62 SETTABLEKS                       R10 R9 K22 ["role"]
       64 NEWTABLE                         R10 0 1
       66 DUPTABLE                         R11 K28 [{"type", "text"}]
       67 LOADK                            R12 K27 ["text"]
       68 SETTABLEKS                       R12 R11 K26 ["type"]
       70 LOADK                            R13 K29 ["Summarize the following conversation transcript into a structured JSON object as described in your instructions. Do NOT continue the conversation — only produce the JSON summary.\n\n<transcript>\n"]
       71 MOVE                             R14 R0
       72 LOADK                            R15 K30 ["\n</transcript>"]
       73 CONCAT                           R12 R13 R15
       74 SETTABLEKS                       R12 R11 K27 ["text"]
       76 SETLIST                          R10 R11 1 [1]
       78 SETTABLEKS                       R10 R9 K23 ["content"]
       80 SETLIST                          R8 R9 1 [1]
       82 SETTABLEKS                       R8 R7 K12 ["messages"]
       84 NEWTABLE                         R8 0 0
       86 SETTABLEKS                       R8 R7 K13 ["tools"]
       88 LOADB                            R8 0
       89 SETTABLEKS                       R8 R7 K14 ["isFirstMessage"]
       91 LOADB                            R8 0
       92 SETTABLEKS                       R8 R7 K15 ["isAgenticMode"]
       94 SETTABLEKS                       R2 R7 K3 ["selectedModel"]
       96 GETTABLEKS                       R8 R1 K16 ["apiKeys"]
       98 SETTABLEKS                       R8 R7 K16 ["apiKeys"]
      100 LOADB                            R8 1
      101 SETTABLEKS                       R8 R7 K17 ["isSubagent"]
      103 GETIMPORT                        R8 K32 [pcall]
      105 NEWCLOSURE                       R9 P0
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R7
      108 CAPTURE                          REF R3
      109 CAPTURE                          REF R4
      110 CAPTURE                          VAL R5
      111 CAPTURE                          REF R6
      112 CALL                             R8 1 2
      113 JUMPIF                           R8 ; [+17]
      114 GETIMPORT                        R10 K34 [warn]
      116 LOADK                            R11 K35 ["[ContextCompaction] Summarizer request failed:"]
      117 FASTCALL1                        TOSTRING R9 ; [+3]
      118 MOVE                             R13 R9
      119 GETIMPORT                        R12 K37 [tostring]
      121 CALL                             R12 1 1
      122 CALL                             R10 2 0
      123 LOADK                            R10 K4 [""]
      124 FASTCALL1                        TOSTRING R9 ; [+3]
      125 MOVE                             R12 R9
      126 GETIMPORT                        R11 K37 [tostring]
      128 CALL                             R11 1 1
      129 CLOSEUPVALS                      R3
      130 RETURN                           R10 2
      131 JUMPIF                           R4 ; [+21]
      132 GETUPVAL                         R10 3
      133 GETTABLEKS                       R10 R10 K8 ["new"]
      135 GETUPVAL                         R11 4
      136 CALL                             R11 0 -1
      137 CALL                             R10 -1 1
      138 GETTABLEKS                       R11 R10 K38 ["onTimeout"]
      140 NEWCLOSURE                       R13 P1
      141 CAPTURE                          REF R4
      142 CAPTURE                          REF R6
      143 CAPTURE                          VAL R5
      144 NAMECALL                         R11 R11 K39 ["Connect"]
      146 CALL                             R11 2 0
      147 NAMECALL                         R11 R5 K40 ["Wait"]
      149 CALL                             R11 1 0
      150 GETTABLEKS                       R11 R10 K41 ["close"]
      152 CALL                             R11 0 0
      153 MOVE                             R10 R3
      154 MOVE                             R11 R6
      155 CLOSEUPVALS                      R3
      156 RETURN                           R10 2

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
       63 JUMP                             ; [+10]
       64 GETTABLEKS                       R9 R8 K20 ["logCompactionSuccess"]
       66 DUPTABLE                         R10 K21 [{"threadId", "messageCount"}]
       67 GETTABLEKS                       R11 R1 K15 ["threadId"]
       69 SETTABLEKS                       R11 R10 K15 ["threadId"]
       71 SETTABLEKS                       R3 R10 K17 ["messageCount"]
       73 CALL                             R9 1 0
       74 SETTABLEKS                       R6 R2 K22 ["summary"]
       76 GETTABLEKS                       R10 R1 K24 ["uiMessageCount"]
       78 ORK                              R9 R10 K23 [0]
       79 SETTABLEKS                       R9 R2 K25 ["compactedUIMessageCount"]
       81 GETUPVAL                         R9 0
       82 GETTABLEKS                       R9 R9 K26 ["set"]
       84 GETTABLEKS                       R10 R1 K15 ["threadId"]
       86 MOVE                             R11 R2
       87 CALL                             R9 2 0
       88 GETUPVAL                         R9 1
       89 GETTABLEKS                       R9 R9 K27 ["assembleCompactedMessages"]
       91 MOVE                             R10 R6
       92 MOVE                             R11 R2
       93 CALL                             R9 2 1
       94 DUPTABLE                         R10 K3 [{"messages", "compactedStore"}]
       95 SETTABLEKS                       R9 R10 K2 ["messages"]
       97 SETTABLEKS                       R2 R10 K0 ["compactedStore"]
       99 RETURN                           R10 1

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
       93 GETTABLEKS                       R13 R13 K30 ["FIntContextCompactionSummarizerTimeoutMs"]
       95 CALL                             R12 1 1
       96 NEWTABLE                         R13 4 0
       98 GETTABLEKS                       R14 R8 K31 ["ReadFile"]
      100 LOADB                            R15 1
      101 SETTABLE                         R15 R13 R14
      102 GETTABLEKS                       R14 R8 K32 ["GameTree"]
      104 LOADB                            R15 1
      105 SETTABLE                         R15 R13 R14
      106 GETTABLEKS                       R14 R8 K33 ["GrepSearch"]
      108 LOADB                            R15 1
      109 SETTABLE                         R15 R13 R14
      110 GETTABLEKS                       R14 R8 K34 ["InspectInstance"]
      112 LOADB                            R15 1
      113 SETTABLE                         R15 R13 R14
      114 NEWTABLE                         R14 8 0
      116 DUPCLOSURE                       R15 K35 [PROTO_0]
      117 CAPTURE                          VAL R10
      118 SETTABLEKS                       R15 R14 K36 ["shouldCompact"]
      120 DUPCLOSURE                       R15 K37 [PROTO_1]
      121 CAPTURE                          VAL R10
      122 SETTABLEKS                       R15 R14 K38 ["estimateMessages"]
      124 DUPCLOSURE                       R15 K39 [PROTO_3]
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R13
      128 SETTABLEKS                       R15 R14 K40 ["serializeForSummary"]
      130 DUPCLOSURE                       R15 K41 [PROTO_4]
      131 CAPTURE                          VAL R3
      132 DUPCLOSURE                       R16 K42 [PROTO_8]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R12
      138 DUPCLOSURE                       R17 K43 [PROTO_9]
      139 DUPCLOSURE                       R18 K44 [PROTO_10]
      140 CAPTURE                          VAL R2
      141 SETTABLEKS                       R18 R14 K45 ["assembleCompactedMessages"]
      143 DUPCLOSURE                       R18 K46 [PROTO_11]
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R4
      148 SETTABLEKS                       R18 R14 K47 ["compact"]
      150 DUPCLOSURE                       R18 K48 [PROTO_12]
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R10
      154 SETTABLEKS                       R18 R14 K49 ["reconstructFromStore"]
      156 RETURN                           R14 1
