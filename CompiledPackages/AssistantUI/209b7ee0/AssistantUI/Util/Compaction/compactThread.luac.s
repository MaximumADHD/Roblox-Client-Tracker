PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADB                            R2 0
        4 RETURN                           R2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K0 ["shouldCompact"]
        8 MOVE                             R3 R0
        9 GETTABLEKS                       R4 R1 K1 ["isSubagent"]
       11 GETTABLEKS                       R5 R1 K2 ["selectedModel"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["estimateTokens"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["input"]
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
        8 JUMPIFNOT                        R7 ; [+161]
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
       34 JUMP                             ; [+133]
       35 GETTABLEKS                       R12 R11 K1 ["type"]
       37 JUMPIFNOTEQKS                    R12 K10 ["tool_use"] ; [+46]
       39 LOADK                            R12 K5 [""]
       40 GETTABLEKS                       R13 R11 K11 ["input"]
       42 JUMPIFNOT                        R13 ; [+26]
       43 GETIMPORT                        R13 K13 [pcall]
       45 NEWCLOSURE                       R14 P0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R11
       48 CALL                             R13 1 2
       49 JUMPIFNOT                        R13 ; [+19]
       50 LENGTH                           R15 R14
       51 LOADN                            R16 200
       52 JUMPIFNOTLT                      R16 R15 ; [+15]
       54 LOADK                            R15 K14 ["%*..."]
       55 LOADN                            R19 1
       56 LOADN                            R20 200
       57 FASTCALL3                        STRING_SUB R14 R19 R20
       59 MOVE                             R18 R14
       60 GETIMPORT                        R17 K17 [string.sub]
       62 CALL                             R17 3 1
       63 NAMECALL                         R15 R15 K6 ["format"]
       65 CALL                             R15 2 1
       66 MOVE                             R12 R15
       67 JUMP                             ; [+1]
       68 MOVE                             R12 R14
       69 LOADK                            R16 K18 ["[tool_call]: %*(%*)"]
       70 GETTABLEKS                       R18 R11 K19 ["name"]
       72 MOVE                             R19 R12
       73 NAMECALL                         R16 R16 K6 ["format"]
       75 CALL                             R16 3 1
       76 MOVE                             R15 R16
       77 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       79 MOVE                             R14 R1
       80 GETIMPORT                        R13 K9 [table.insert]
       82 CALL                             R13 2 0
       83 JUMP                             ; [+84]
       84 GETTABLEKS                       R12 R11 K1 ["type"]
       86 JUMPIFNOTEQKS                    R12 K20 ["tool_result"] ; [+81]
       88 GETTABLEKS                       R13 R11 K21 ["isError"]
       90 JUMPIFNOT                        R13 ; [+2]
       91 LOADK                            R12 K22 ["ERROR"]
       92 JUMP                             ; [+1]
       93 LOADK                            R12 K23 ["OK"]
       94 GETTABLEKS                       R13 R11 K19 ["name"]
       96 GETUPVAL                         R15 1
       97 GETTABLE                         R14 R15 R13
       98 JUMPIFNOT                        R14 ; [+14]
       99 LOADK                            R17 K24 ["[tool_result]: %* -> %* (stored in history)"]
      100 MOVE                             R19 R13
      101 MOVE                             R20 R12
      102 NAMECALL                         R17 R17 K6 ["format"]
      104 CALL                             R17 3 1
      105 MOVE                             R16 R17
      106 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
      108 MOVE                             R15 R1
      109 GETIMPORT                        R14 K9 [table.insert]
      111 CALL                             R14 2 0
      112 JUMP                             ; [+55]
      113 LOADK                            R14 K5 [""]
      114 GETTABLEKS                       R15 R11 K0 ["content"]
      116 JUMPIFNOT                        R15 ; [+20]
      117 GETTABLEKS                       R15 R11 K0 ["content"]
      119 LOADNIL                          R16
      120 LOADNIL                          R17
      121 FORGPREP                         R15
      122 FASTCALL1                        TYPEOF R19 ; [+3]
      123 MOVE                             R21 R19
      124 GETIMPORT                        R20 K26 [typeof]
      126 CALL                             R20 1 1
      127 JUMPIFNOTEQKS                    R20 K7 ["table"] ; [+7]
      129 GETTABLEKS                       R20 R19 K2 ["text"]
      131 JUMPIFNOT                        R20 ; [+3]
      132 GETTABLEKS                       R14 R19 K2 ["text"]
      134 JUMP                             ; [+2]
      135 FORGLOOP                         R15 2 ; [-14]
      137 LENGTH                           R15 R14
      138 LOADN                            R16 44
      139 JUMPIFNOTLT                      R16 R15 ; [+14]
      141 LOADK                            R15 K14 ["%*..."]
      142 LOADN                            R19 1
      143 LOADN                            R20 44
      144 FASTCALL3                        STRING_SUB R14 R19 R20
      146 MOVE                             R18 R14
      147 GETIMPORT                        R17 K17 [string.sub]
      149 CALL                             R17 3 1
      150 NAMECALL                         R15 R15 K6 ["format"]
      152 CALL                             R15 2 1
      153 MOVE                             R14 R15
      154 LOADK                            R18 K27 ["[tool_result]: %* -> %*: %*"]
      155 MOVE                             R20 R13
      156 MOVE                             R21 R12
      157 MOVE                             R22 R14
      158 NAMECALL                         R18 R18 K6 ["format"]
      160 CALL                             R18 4 1
      161 MOVE                             R17 R18
      162 FASTCALL2                        TABLE_INSERT R1 R17 ; [+4]
      164 MOVE                             R16 R1
      165 GETIMPORT                        R15 K9 [table.insert]
      167 CALL                             R15 2 0
      168 FORGLOOP                         R7 2 ; [-155]
      170 FORGLOOP                         R2 2 ; [-165]
      172 GETIMPORT                        R2 K29 [table.concat]
      174 MOVE                             R3 R1
      175 LOADK                            R4 K30 ["\n"]
      176 CALL                             R2 2 -1
      177 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K1 ["selectedProvider"]
        2 ORK                              R1 R2 K0 ["Studio"]
        3 JUMPIFEQKS                       R1 K0 ["Studio"] ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["model"]
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
        7 GETTABLEKS                       R2 R0 K2 ["delta"]
        9 GETTABLEKS                       R1 R2 K0 ["type"]
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

PROTO_7:
        0 GETTABLEKS                       R4 R1 K1 ["selectedProvider"]
        2 ORK                              R3 R4 K0 ["Studio"]
        3 JUMPIFEQKS                       R3 K0 ["Studio"] ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R2 R5 K2 ["model"]
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
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R5 R6 K8 ["new"]
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
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K21 ["systemMessage"]
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
      102 GETTABLEKS                       R7 R1 K31 ["requestLLM"]
      104 MOVE                             R8 R6
      105 NEWCLOSURE                       R9 P0
      106 CAPTURE                          REF R3
      107 CAPTURE                          REF R4
      108 CAPTURE                          VAL R5
      109 CALL                             R7 2 0
      110 JUMPIF                           R4 ; [+20]
      111 GETUPVAL                         R8 3
      112 GETTABLEKS                       R7 R8 K8 ["new"]
      114 GETUPVAL                         R8 4
      115 CALL                             R8 0 -1
      116 CALL                             R7 -1 1
      117 GETTABLEKS                       R8 R7 K32 ["onTimeout"]
      119 NEWCLOSURE                       R10 P1
      120 CAPTURE                          REF R4
      121 CAPTURE                          VAL R5
      122 NAMECALL                         R8 R8 K33 ["Connect"]
      124 CALL                             R8 2 0
      125 NAMECALL                         R8 R5 K34 ["Wait"]
      127 CALL                             R8 1 0
      128 GETTABLEKS                       R8 R7 K35 ["close"]
      130 CALL                             R8 0 0
      131 CLOSEUPVALS                      R3
      132 RETURN                           R3 1

PROTO_8:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["<compacted_history>\nThe following is a summary of the conversation so far. The original messages have been compacted to fit within the context window.\n\n## Conversation Summary\n%s\n\n## Available Historical Data\nYou can retrieve the following data from the compacted history using tools:\n\n%s\n\nNote: Some historical data may be stale if the game state was modified after the original reading. Use from_history tools to retrieve specific data, or re-run the original tool if you need guaranteed fresh data.\n</compacted_history>"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["buildManifest"]
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

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["compactedStore"]
        2 JUMPIF                           R2 ; [+4]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["new"]
        6 CALL                             R2 0 1
        7 LENGTH                           R3 R0
        8 LOADN                            R4 1
        9 JUMPIFNOTLE                      R3 R4 ; [+7]
       11 DUPTABLE                         R4 K3 [{"messages", "compactedStore"}]
       12 SETTABLEKS                       R0 R4 K2 ["messages"]
       14 SETTABLEKS                       R2 R4 K0 ["compactedStore"]
       16 RETURN                           R4 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K4 ["buildIndex"]
       20 MOVE                             R5 R0
       21 CALL                             R4 1 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K5 ["mergeIndex"]
       25 MOVE                             R6 R2
       26 MOVE                             R7 R4
       27 CALL                             R5 2 0
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K6 ["serializeForSummary"]
       31 MOVE                             R6 R0
       32 CALL                             R5 1 1
       33 GETUPVAL                         R6 2
       34 MOVE                             R7 R5
       35 MOVE                             R8 R1
       36 CALL                             R6 2 1
       37 JUMPIFNOTEQKS                    R6 K7 [""] ; [+6]
       39 GETIMPORT                        R7 K9 [warn]
       41 LOADK                            R8 K10 ["[ContextCompaction] Summarizer failed, using fallback summary"]
       42 CALL                             R7 1 0
       43 LOADK                            R6 K11 ["The conversation history was compacted but the summarizer failed to generate a detailed summary. Use the Available Historical Data below to retrieve previously examined content via from_history."]
       44 SETTABLEKS                       R6 R2 K12 ["summary"]
       46 GETTABLEKS                       R8 R1 K14 ["uiMessageCount"]
       48 ORK                              R7 R8 K13 [0]
       49 SETTABLEKS                       R7 R2 K15 ["compactedUIMessageCount"]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R7 R8 K16 ["set"]
       54 GETTABLEKS                       R8 R1 K17 ["threadId"]
       56 MOVE                             R9 R2
       57 CALL                             R7 2 0
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R7 R8 K18 ["assembleCompactedMessages"]
       61 MOVE                             R8 R6
       62 MOVE                             R9 R2
       63 CALL                             R7 2 1
       64 DUPTABLE                         R8 K3 [{"messages", "compactedStore"}]
       65 SETTABLEKS                       R7 R8 K2 ["messages"]
       67 SETTABLEKS                       R2 R8 K0 ["compactedStore"]
       69 RETURN                           R8 1

PROTO_11:
        0 GETTABLEKS                       R3 R1 K0 ["summary"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R3 R1 K1 ["compactedUIMessageCount"]
        5 LOADN                            R4 0
        6 JUMPIFNOTLE                      R3 R4 ; [+3]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["buildIndex"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K3 ["mergeIndex"]
       18 MOVE                             R5 R1
       19 MOVE                             R6 R3
       20 CALL                             R4 2 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K4 ["set"]
       24 GETTABLEKS                       R5 R2 K5 ["threadId"]
       26 MOVE                             R6 R1
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K6 ["assembleCompactedMessages"]
       31 GETTABLEKS                       R5 R1 K0 ["summary"]
       33 MOVE                             R6 R1
       34 MOVE                             R7 R0
       35 CALL                             R4 3 1
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R5 R6 K7 ["shouldCompact"]
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
       15 GETTABLEKS                       R5 R0 K10 ["Util"]
       17 GETTABLEKS                       R4 R5 K11 ["Compaction"]
       19 GETTABLEKS                       R3 R4 K12 ["CompactedStore"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R0 K13 ["Subagents"]
       26 GETTABLEKS                       R4 R5 K14 ["CompactionSubagent"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R8 R0 K15 ["Components"]
       33 GETTABLEKS                       R7 R8 K16 ["Contexts"]
       35 GETTABLEKS                       R6 R7 K17 ["DefaultLLMProvider"]
       37 GETTABLEKS                       R5 R6 K18 ["LLMRequest"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R7 R0 K19 ["Parent"]
       44 GETTABLEKS                       R6 R7 K20 ["Signal"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R8 R0 K10 ["Util"]
       51 GETTABLEKS                       R7 R8 K21 ["Timer"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R9 R0 K22 ["Tools"]
       58 GETTABLEKS                       R8 R9 K23 ["ToolNames"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R0 K24 ["Types"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R12 R0 K10 ["Util"]
       70 GETTABLEKS                       R11 R12 K11 ["Compaction"]
       72 GETTABLEKS                       R10 R11 K25 ["estimateTokens"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R12 R0 K26 ["Flags"]
       79 GETTABLEKS                       R11 R12 K27 ["FFlagAssistantContextCompaction"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R13 R0 K26 ["Flags"]
       86 GETTABLEKS                       R12 R13 K28 ["FIntContextCompactionSummarizerTimeoutMs"]
       88 CALL                             R11 1 1
       89 NEWTABLE                         R12 4 0
       91 GETTABLEKS                       R13 R7 K29 ["ReadFile"]
       93 LOADB                            R14 1
       94 SETTABLE                         R14 R12 R13
       95 GETTABLEKS                       R13 R7 K30 ["GameTree"]
       97 LOADB                            R14 1
       98 SETTABLE                         R14 R12 R13
       99 GETTABLEKS                       R13 R7 K31 ["GrepSearch"]
      101 LOADB                            R14 1
      102 SETTABLE                         R14 R12 R13
      103 GETTABLEKS                       R13 R7 K32 ["InspectInstance"]
      105 LOADB                            R14 1
      106 SETTABLE                         R14 R12 R13
      107 NEWTABLE                         R13 8 0
      109 DUPCLOSURE                       R14 K33 [PROTO_0]
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R9
      112 SETTABLEKS                       R14 R13 K34 ["shouldCompact"]
      114 DUPCLOSURE                       R14 K35 [PROTO_1]
      115 CAPTURE                          VAL R9
      116 SETTABLEKS                       R14 R13 K36 ["estimateMessages"]
      118 DUPCLOSURE                       R14 K37 [PROTO_3]
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R12
      121 SETTABLEKS                       R14 R13 K38 ["serializeForSummary"]
      123 DUPCLOSURE                       R14 K39 [PROTO_4]
      124 CAPTURE                          VAL R3
      125 DUPCLOSURE                       R15 K40 [PROTO_7]
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R11
      131 DUPCLOSURE                       R16 K41 [PROTO_8]
      132 DUPCLOSURE                       R17 K42 [PROTO_9]
      133 CAPTURE                          VAL R2
      134 SETTABLEKS                       R17 R13 K43 ["assembleCompactedMessages"]
      136 DUPCLOSURE                       R17 K44 [PROTO_10]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R15
      140 SETTABLEKS                       R17 R13 K45 ["compact"]
      142 DUPCLOSURE                       R17 K46 [PROTO_11]
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R9
      146 SETTABLEKS                       R17 R13 K47 ["reconstructFromStore"]
      148 RETURN                           R13 1
