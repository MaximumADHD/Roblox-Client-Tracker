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
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+10]
        3 LOADN                            R4 1
        4 LENGTH                           R7 R0
        5 SUB                              R6 R7 R1
        6 ADDK                             R5 R6 K0 [1]
        7 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
        9 GETIMPORT                        R3 K3 [math.max]
       11 CALL                             R3 2 1
       12 JUMP                             ; [+1]
       13 LOADN                            R3 1
       14 MOVE                             R6 R3
       15 LENGTH                           R4 R0
       16 LOADN                            R5 1
       17 FORNPREP                         R4
       18 GETTABLE                         R7 R0 R6
       19 GETTABLEKS                       R8 R7 K4 ["content"]
       21 JUMPIFNOT                        R8 ; [+160]
       22 GETTABLEKS                       R8 R7 K4 ["content"]
       24 LOADNIL                          R9
       25 LOADNIL                          R10
       26 FORGPREP                         R8
       27 GETTABLEKS                       R13 R12 K5 ["type"]
       29 JUMPIFNOTEQKS                    R13 K6 ["text"] ; [+17]
       31 LOADK                            R15 K7 ["[%*]: %*"]
       32 GETTABLEKS                       R17 R7 K8 ["role"]
       34 GETTABLEKS                       R19 R12 K6 ["text"]
       36 ORK                              R18 R19 K9 [""]
       37 NAMECALL                         R15 R15 K10 ["format"]
       39 CALL                             R15 3 1
       40 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       42 MOVE                             R14 R2
       43 GETIMPORT                        R13 K13 [table.insert]
       45 CALL                             R13 2 0
       46 JUMP                             ; [+133]
       47 GETTABLEKS                       R13 R12 K5 ["type"]
       49 JUMPIFNOTEQKS                    R13 K14 ["tool_use"] ; [+41]
       51 LOADK                            R13 K9 [""]
       52 GETTABLEKS                       R14 R12 K15 ["input"]
       54 JUMPIFNOT                        R14 ; [+22]
       55 GETIMPORT                        R14 K17 [pcall]
       57 NEWCLOSURE                       R15 P0
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          VAL R12
       60 CALL                             R14 1 2
       61 JUMPIFNOT                        R14 ; [+15]
       62 LENGTH                           R16 R15
       63 LOADN                            R17 200
       64 JUMPIFNOTLT                      R17 R16 ; [+11]
       66 LOADK                            R16 K18 ["%*..."]
       67 GETUPVAL                         R18 1
       68 MOVE                             R19 R15
       69 LOADN                            R20 200
       70 CALL                             R18 2 1
       71 NAMECALL                         R16 R16 K10 ["format"]
       73 CALL                             R16 2 1
       74 MOVE                             R13 R16
       75 JUMP                             ; [+1]
       76 MOVE                             R13 R15
       77 LOADK                            R16 K19 ["[tool_call]: %*(%*)"]
       78 GETTABLEKS                       R18 R12 K20 ["name"]
       80 MOVE                             R19 R13
       81 NAMECALL                         R16 R16 K10 ["format"]
       83 CALL                             R16 3 1
       84 FASTCALL2                        TABLE_INSERT R2 R16 ; [+4]
       86 MOVE                             R15 R2
       87 GETIMPORT                        R14 K13 [table.insert]
       89 CALL                             R14 2 0
       90 JUMP                             ; [+89]
       91 GETTABLEKS                       R13 R12 K5 ["type"]
       93 JUMPIFNOTEQKS                    R13 K21 ["tool_result"] ; [+86]
       95 GETTABLEKS                       R14 R12 K22 ["isError"]
       97 JUMPIFNOT                        R14 ; [+2]
       98 LOADK                            R13 K23 ["ERROR"]
       99 JUMP                             ; [+1]
      100 LOADK                            R13 K24 ["OK"]
      101 GETTABLEKS                       R14 R12 K20 ["name"]
      103 GETUPVAL                         R16 2
      104 GETTABLEKS                       R16 R16 K25 ["FFlagAssistantNormalizeStudioToolNames"]
      106 JUMPIFNOT                        R16 ; [+6]
      107 GETUPVAL                         R15 3
      108 GETTABLEKS                       R15 R15 K26 ["stripPrefix"]
      110 MOVE                             R16 R14
      111 CALL                             R15 1 1
      112 JUMP                             ; [+1]
      113 MOVE                             R15 R14
      114 GETUPVAL                         R17 4
      115 GETTABLE                         R16 R17 R15
      116 JUMPIFNOT                        R16 ; [+13]
      117 LOADK                            R18 K27 ["[tool_result]: %* -> %* (stored in history)"]
      118 MOVE                             R20 R14
      119 MOVE                             R21 R13
      120 NAMECALL                         R18 R18 K10 ["format"]
      122 CALL                             R18 3 1
      123 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      125 MOVE                             R17 R2
      126 GETIMPORT                        R16 K13 [table.insert]
      128 CALL                             R16 2 0
      129 JUMP                             ; [+50]
      130 LOADK                            R16 K9 [""]
      131 GETTABLEKS                       R17 R12 K4 ["content"]
      133 JUMPIFNOT                        R17 ; [+20]
      134 GETTABLEKS                       R17 R12 K4 ["content"]
      136 LOADNIL                          R18
      137 LOADNIL                          R19
      138 FORGPREP                         R17
      139 FASTCALL1                        TYPEOF R21 ; [+3]
      140 MOVE                             R23 R21
      141 GETIMPORT                        R22 K29 [typeof]
      143 CALL                             R22 1 1
      144 JUMPIFNOTEQKS                    R22 K11 ["table"] ; [+7]
      146 GETTABLEKS                       R22 R21 K6 ["text"]
      148 JUMPIFNOT                        R22 ; [+3]
      149 GETTABLEKS                       R16 R21 K6 ["text"]
      151 JUMP                             ; [+2]
      152 FORGLOOP                         R17 2 ; [-14]
      154 LENGTH                           R17 R16
      155 LOADN                            R18 300
      156 JUMPIFNOTLT                      R18 R17 ; [+10]
      158 LOADK                            R17 K18 ["%*..."]
      159 GETUPVAL                         R19 1
      160 MOVE                             R20 R16
      161 LOADN                            R21 300
      162 CALL                             R19 2 1
      163 NAMECALL                         R17 R17 K10 ["format"]
      165 CALL                             R17 2 1
      166 MOVE                             R16 R17
      167 LOADK                            R19 K30 ["[tool_result]: %* -> %*: %*"]
      168 MOVE                             R21 R14
      169 MOVE                             R22 R13
      170 MOVE                             R23 R16
      171 NAMECALL                         R19 R19 K10 ["format"]
      173 CALL                             R19 4 1
      174 FASTCALL2                        TABLE_INSERT R2 R19 ; [+4]
      176 MOVE                             R18 R2
      177 GETIMPORT                        R17 K13 [table.insert]
      179 CALL                             R17 2 0
      180 FORGLOOP                         R8 2 ; [-154]
      182 FORNLOOP                         R4
      183 GETIMPORT                        R4 K32 [table.concat]
      185 MOVE                             R5 R2
      186 LOADK                            R6 K33 ["\n"]
      187 CALL                             R4 2 -1
      188 RETURN                           R4 -1

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
       36 DUPTABLE                         R7 K20 [{["threadId"], ["messageGuid"], ["system"], ["messages"], ["tools"], ["isFirstMessage"] = False, ["isAgenticMode"] = False, ["selectedModel"], ["selectedProvider"], ["apiKeys"], ["isSubagent"] = True}]
       37 LOADK                            R9 K21 ["compaction-"]
       38 GETUPVAL                         R10 2
       39 LOADB                            R12 0
       40 NAMECALL                         R10 R10 K22 ["GenerateGUID"]
       42 CALL                             R10 2 1
       43 CONCAT                           R8 R9 R10
       44 SETTABLEKS                       R8 R7 K9 ["threadId"]
       46 GETUPVAL                         R8 2
       47 LOADB                            R10 0
       48 NAMECALL                         R8 R8 K22 ["GenerateGUID"]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K10 ["messageGuid"]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K23 ["systemMessage"]
       56 SETTABLEKS                       R8 R7 K11 ["system"]
       58 NEWTABLE                         R8 0 1
       60 DUPTABLE                         R9 K27 [{["role"] = "user", ["content"]}]
       61 NEWTABLE                         R10 0 1
       63 DUPTABLE                         R11 K30 [{["type"] = "text", ["text"]}]
       64 LOADK                            R13 K31 ["Summarize the following conversation transcript into a structured JSON object as described in your instructions. Do NOT continue the conversation — only produce the JSON summary.\n\n<transcript>\n"]
       65 MOVE                             R14 R0
       66 LOADK                            R15 K32 ["\n</transcript>"]
       67 CONCAT                           R12 R13 R15
       68 SETTABLEKS                       R12 R11 K29 ["text"]
       70 SETLIST                          R10 R11 1 [1]
       72 SETTABLEKS                       R10 R9 K26 ["content"]
       74 SETLIST                          R8 R9 1 [1]
       76 SETTABLEKS                       R8 R7 K12 ["messages"]
       78 NEWTABLE                         R8 0 0
       80 SETTABLEKS                       R8 R7 K13 ["tools"]
       82 SETTABLEKS                       R2 R7 K3 ["selectedModel"]
       84 GETTABLEKS                       R8 R1 K1 ["selectedProvider"]
       86 SETTABLEKS                       R8 R7 K1 ["selectedProvider"]
       88 GETTABLEKS                       R8 R1 K17 ["apiKeys"]
       90 SETTABLEKS                       R8 R7 K17 ["apiKeys"]
       92 GETIMPORT                        R8 K34 [pcall]
       94 NEWCLOSURE                       R9 P0
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R7
       97 CAPTURE                          REF R3
       98 CAPTURE                          REF R4
       99 CAPTURE                          VAL R5
      100 CAPTURE                          REF R6
      101 CALL                             R8 1 2
      102 JUMPIF                           R8 ; [+17]
      103 GETIMPORT                        R10 K36 [warn]
      105 LOADK                            R11 K37 ["[ContextCompaction] Summarizer request failed:"]
      106 FASTCALL1                        TOSTRING R9 ; [+3]
      107 MOVE                             R13 R9
      108 GETIMPORT                        R12 K39 [tostring]
      110 CALL                             R12 1 1
      111 CALL                             R10 2 0
      112 LOADK                            R10 K4 [""]
      113 FASTCALL1                        TOSTRING R9 ; [+3]
      114 MOVE                             R12 R9
      115 GETIMPORT                        R11 K39 [tostring]
      117 CALL                             R11 1 1
      118 CLOSEUPVALS                      R3
      119 RETURN                           R10 2
      120 JUMPIF                           R4 ; [+22]
      121 GETUPVAL                         R10 3
      122 GETTABLEKS                       R10 R10 K8 ["new"]
      124 GETUPVAL                         R11 4
      125 GETTABLEKS                       R11 R11 K40 ["FIntContextCompactionSummarizerTimeoutMs"]
      127 CALL                             R10 1 1
      128 GETTABLEKS                       R11 R10 K41 ["onTimeout"]
      130 NEWCLOSURE                       R13 P1
      131 CAPTURE                          REF R4
      132 CAPTURE                          REF R6
      133 CAPTURE                          VAL R5
      134 NAMECALL                         R11 R11 K42 ["Connect"]
      136 CALL                             R11 2 0
      137 NAMECALL                         R11 R5 K43 ["Wait"]
      139 CALL                             R11 1 0
      140 GETTABLEKS                       R11 R10 K44 ["close"]
      142 CALL                             R11 0 0
      143 MOVE                             R10 R3
      144 MOVE                             R11 R6
      145 CLOSEUPVALS                      R3
      146 RETURN                           R10 2

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
       11 DUPTABLE                         R5 K8 [{["role"] = "user", ["content"]}]
       12 NEWTABLE                         R6 0 1
       14 DUPTABLE                         R7 K11 [{["type"] = "text", ["text"]}]
       15 SETTABLEKS                       R4 R7 K10 ["text"]
       17 SETLIST                          R6 R7 1 [1]
       19 SETTABLEKS                       R6 R5 K7 ["content"]
       21 NEWTABLE                         R6 0 1
       23 MOVE                             R7 R5
       24 SETLIST                          R6 R7 1 [1]
       26 JUMPIFNOT                        R2 ; [+13]
       27 MOVE                             R7 R2
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 FORGPREP                         R7
       31 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       33 MOVE                             R13 R6
       34 MOVE                             R14 R11
       35 GETIMPORT                        R12 K14 [table.insert]
       37 CALL                             R12 2 0
       38 FORGLOOP                         R7 2 ; [-8]
       40 RETURN                           R6 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["content"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["content"]
        5 GETTABLEN                        R1 R2 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETTABLEKS                       R2 R1 K1 ["type"]
        9 JUMPIFEQKS                       R2 K2 ["text"] ; [+3]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 GETTABLEKS                       R3 R1 K2 ["text"]
       15 ORK                              R2 R3 K3 [""]
       16 GETIMPORT                        R4 K6 [string.find]
       18 MOVE                             R5 R2
       19 LOADK                            R6 K7 ["<compacted_history>"]
       20 LOADN                            R7 1
       21 LOADB                            R8 1
       22 CALL                             R4 4 1
       23 JUMPIFNOTEQKNIL                  R4 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 RETURN                           R3 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["role"]
        2 JUMPIFNOTEQKS                    R1 K1 ["user"] ; [+32]
        4 GETTABLEKS                       R1 R0 K2 ["content"]
        6 JUMPIFNOT                        R1 ; [+28]
        7 GETTABLEKS                       R2 R0 K2 ["content"]
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETTABLEKS                       R3 R0 K2 ["content"]
       12 GETTABLEN                        R2 R3 1
       13 JUMPIFNOT                        R2 ; [+4]
       14 GETTABLEKS                       R3 R2 K3 ["type"]
       16 JUMPIFEQKS                       R3 K4 ["text"] ; [+3]
       18 LOADB                            R1 0
       19 JUMP                             ; [+14]
       20 GETTABLEKS                       R4 R2 K4 ["text"]
       22 ORK                              R3 R4 K5 [""]
       23 GETIMPORT                        R4 K8 [string.find]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K9 ["<compacted_history>"]
       27 LOADN                            R7 1
       28 LOADB                            R8 1
       29 CALL                             R4 4 1
       30 JUMPIFNOTEQKNIL                  R4 ; [+2]
       32 LOADB                            R1 0 +1
       33 LOADB                            R1 1
       34 JUMPIFNOT                        R1 ; [+2]
       35 LOADB                            R1 0
       36 RETURN                           R1 1
       37 GETTABLEKS                       R1 R0 K2 ["content"]
       39 LOADNIL                          R2
       40 LOADNIL                          R3
       41 FORGPREP                         R1
       42 GETTABLEKS                       R6 R5 K3 ["type"]
       44 JUMPIFNOTEQKS                    R6 K10 ["tool_result"] ; [+3]
       46 LOADB                            R6 0
       47 RETURN                           R6 1
       48 FORGLOOP                         R1 2 ; [-7]
       50 LOADB                            R1 1
       51 RETURN                           R1 1

PROTO_13:
        0 LOADN                            R2 1
        1 LOADN                            R3 0
        2 LENGTH                           R6 R0
        3 LOADN                            R4 1
        4 LOADN                            R5 -1
        5 FORNPREP                         R4
        6 GETTABLE                         R7 R0 R6
        7 GETTABLEKS                       R9 R7 K0 ["content"]
        9 JUMPIFNOT                        R9 ; [+3]
       10 GETTABLEKS                       R10 R7 K0 ["content"]
       12 GETTABLEN                        R9 R10 1
       13 JUMPIFNOT                        R9 ; [+4]
       14 GETTABLEKS                       R10 R9 K1 ["type"]
       16 JUMPIFEQKS                       R10 K2 ["text"] ; [+3]
       18 LOADB                            R8 0
       19 JUMP                             ; [+14]
       20 GETTABLEKS                       R11 R9 K2 ["text"]
       22 ORK                              R10 R11 K3 [""]
       23 GETIMPORT                        R11 K6 [string.find]
       25 MOVE                             R12 R10
       26 LOADK                            R13 K7 ["<compacted_history>"]
       27 LOADN                            R14 1
       28 LOADB                            R15 1
       29 CALL                             R11 4 1
       30 JUMPIFNOTEQKNIL                  R11 ; [+2]
       32 LOADB                            R8 0 +1
       33 LOADB                            R8 1
       34 JUMPIFNOT                        R8 ; [+2]
       35 ADDK                             R2 R6 K8 [1]
       36 JUMP                             ; [+57]
       37 GETTABLEKS                       R9 R7 K9 ["role"]
       39 JUMPIFNOTEQKS                    R9 K10 ["user"] ; [+32]
       41 GETTABLEKS                       R9 R7 K0 ["content"]
       43 JUMPIFNOT                        R9 ; [+28]
       44 GETTABLEKS                       R10 R7 K0 ["content"]
       46 JUMPIFNOT                        R10 ; [+3]
       47 GETTABLEKS                       R11 R7 K0 ["content"]
       49 GETTABLEN                        R10 R11 1
       50 JUMPIFNOT                        R10 ; [+4]
       51 GETTABLEKS                       R11 R10 K1 ["type"]
       53 JUMPIFEQKS                       R11 K2 ["text"] ; [+3]
       55 LOADB                            R9 0
       56 JUMP                             ; [+14]
       57 GETTABLEKS                       R12 R10 K2 ["text"]
       59 ORK                              R11 R12 K3 [""]
       60 GETIMPORT                        R12 K6 [string.find]
       62 MOVE                             R13 R11
       63 LOADK                            R14 K7 ["<compacted_history>"]
       64 LOADN                            R15 1
       65 LOADB                            R16 1
       66 CALL                             R12 4 1
       67 JUMPIFNOTEQKNIL                  R12 ; [+2]
       69 LOADB                            R9 0 +1
       70 LOADB                            R9 1
       71 JUMPIFNOT                        R9 ; [+2]
       72 LOADB                            R8 0
       73 JUMP                             ; [+14]
       74 GETTABLEKS                       R9 R7 K0 ["content"]
       76 LOADNIL                          R10
       77 LOADNIL                          R11
       78 FORGPREP                         R9
       79 GETTABLEKS                       R14 R13 K1 ["type"]
       81 JUMPIFNOTEQKS                    R14 K11 ["tool_result"] ; [+3]
       83 LOADB                            R8 0
       84 JUMP                             ; [+3]
       85 FORGLOOP                         R9 2 ; [-7]
       87 LOADB                            R8 1
       88 JUMPIFNOT                        R8 ; [+4]
       89 MOVE                             R2 R6
       90 ADDK                             R3 R3 K8 [1]
       91 JUMPIFLE                         R1 R3 ; [+2]
       93 FORNLOOP                         R4
       94 LENGTH                           R6 R0
       95 SUB                              R5 R6 R2
       96 ADDK                             R4 R5 K8 [1]
       97 RETURN                           R4 1

PROTO_14:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTLE                      R1 R2 ; [+16]
        3 FASTCALL2                        STRING_BYTE R0 R1 ; [+5]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 GETIMPORT                        R2 K2 [string.byte]
        9 CALL                             R2 2 1
       10 LOADN                            R3 128
       11 JUMPIFLT                         R2 R3 ; [+6]
       13 LOADN                            R3 192
       14 JUMPIFLE                         R3 R2 ; [+3]
       16 ADDK                             R1 R1 K3 [1]
       17 JUMPBACK                         ; [-18]
       18 FASTCALL2                        STRING_SUB R0 R1 ; [+5]
       20 MOVE                             R3 R0
       21 MOVE                             R4 R1
       22 GETIMPORT                        R2 K5 [string.sub]
       24 CALL                             R2 2 1
       25 RETURN                           R2 1

PROTO_15:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTLE                      R2 R1 ; [+2]
        3 RETURN                           R0 1
        4 LENGTH                           R5 R0
        5 SUB                              R4 R5 R1
        6 ADDK                             R3 R4 K1 [27]
        7 ADDK                             R2 R3 K0 [1]
        8 GETIMPORT                        R3 K4 [string.find]
       10 MOVE                             R4 R0
       11 LOADK                            R5 K5 ["\n"]
       12 MOVE                             R6 R2
       13 LOADB                            R7 1
       14 CALL                             R3 4 1
       15 JUMPIFNOT                        R3 ; [+10]
       16 LOADK                            R5 K6 ["[earlier messages omitted]\n"]
       17 ADDK                             R8 R3 K0 [1]
       18 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       20 MOVE                             R7 R0
       21 GETIMPORT                        R6 K8 [string.sub]
       23 CALL                             R6 2 1
       24 CONCAT                           R4 R5 R6
       25 RETURN                           R4 1
       26 LOADK                            R5 K6 ["[earlier messages omitted]\n"]
       27 GETUPVAL                         R6 0
       28 MOVE                             R7 R0
       29 MOVE                             R8 R2
       30 CALL                             R6 2 1
       31 CONCAT                           R4 R5 R6
       32 RETURN                           R4 1

PROTO_16:
        0 MOVE                             R4 R1
        1 LENGTH                           R2 R0
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 GETTABLE                         R6 R0 R4
        5 GETTABLEKS                       R7 R6 K0 ["role"]
        7 JUMPIFNOTEQKS                    R7 K1 ["user"] ; [+32]
        9 GETTABLEKS                       R7 R6 K2 ["content"]
       11 JUMPIFNOT                        R7 ; [+28]
       12 GETTABLEKS                       R8 R6 K2 ["content"]
       14 JUMPIFNOT                        R8 ; [+3]
       15 GETTABLEKS                       R9 R6 K2 ["content"]
       17 GETTABLEN                        R8 R9 1
       18 JUMPIFNOT                        R8 ; [+4]
       19 GETTABLEKS                       R9 R8 K3 ["type"]
       21 JUMPIFEQKS                       R9 K4 ["text"] ; [+3]
       23 LOADB                            R7 0
       24 JUMP                             ; [+14]
       25 GETTABLEKS                       R10 R8 K4 ["text"]
       27 ORK                              R9 R10 K5 [""]
       28 GETIMPORT                        R10 K8 [string.find]
       30 MOVE                             R11 R9
       31 LOADK                            R12 K9 ["<compacted_history>"]
       32 LOADN                            R13 1
       33 LOADB                            R14 1
       34 CALL                             R10 4 1
       35 JUMPIFNOTEQKNIL                  R10 ; [+2]
       37 LOADB                            R7 0 +1
       38 LOADB                            R7 1
       39 JUMPIFNOT                        R7 ; [+2]
       40 LOADB                            R5 0
       41 JUMP                             ; [+14]
       42 GETTABLEKS                       R7 R6 K2 ["content"]
       44 LOADNIL                          R8
       45 LOADNIL                          R9
       46 FORGPREP                         R7
       47 GETTABLEKS                       R12 R11 K3 ["type"]
       49 JUMPIFNOTEQKS                    R12 K10 ["tool_result"] ; [+3]
       51 LOADB                            R5 0
       52 JUMP                             ; [+3]
       53 FORGLOOP                         R7 2 ; [-7]
       55 LOADB                            R5 1
       56 JUMPIFNOT                        R5 ; [+2]
       57 LOADB                            R5 1
       58 RETURN                           R5 1
       59 FORNLOOP                         R2
       60 LOADB                            R2 0
       61 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFallbackMessageCount"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["FIntContextCompactionFallbackPromptCount"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["serializeForSummary"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R2
       13 CALL                             R3 2 1
       14 ORK                              R4 R1 K3 ["The conversation history was compacted but the summarizer failed to generate a detailed summary. Use the Available Historical Data below to retrieve previously examined content via from_history."]
       15 GETIMPORT                        R5 K6 [string.find]
       17 MOVE                             R6 R4
       18 LOADK                            R7 K7 ["\n\n### Most recent conversation (summarizer unavailable)\n"]
       19 LOADN                            R8 1
       20 LOADB                            R9 1
       21 CALL                             R5 4 1
       22 JUMPIFNOT                        R5 ; [+89]
       23 LENGTH                           R9 R0
       24 SUB                              R8 R9 R2
       25 ADDK                             R7 R8 K8 [1]
       26 MOVE                             R10 R7
       27 LENGTH                           R8 R0
       28 LOADN                            R9 1
       29 FORNPREP                         R8
       30 GETTABLE                         R12 R0 R10
       31 GETTABLEKS                       R13 R12 K9 ["role"]
       33 JUMPIFNOTEQKS                    R13 K10 ["user"] ; [+32]
       35 GETTABLEKS                       R13 R12 K11 ["content"]
       37 JUMPIFNOT                        R13 ; [+28]
       38 GETTABLEKS                       R14 R12 K11 ["content"]
       40 JUMPIFNOT                        R14 ; [+3]
       41 GETTABLEKS                       R15 R12 K11 ["content"]
       43 GETTABLEN                        R14 R15 1
       44 JUMPIFNOT                        R14 ; [+4]
       45 GETTABLEKS                       R15 R14 K12 ["type"]
       47 JUMPIFEQKS                       R15 K13 ["text"] ; [+3]
       49 LOADB                            R13 0
       50 JUMP                             ; [+14]
       51 GETTABLEKS                       R16 R14 K13 ["text"]
       53 ORK                              R15 R16 K14 [""]
       54 GETIMPORT                        R16 K6 [string.find]
       56 MOVE                             R17 R15
       57 LOADK                            R18 K15 ["<compacted_history>"]
       58 LOADN                            R19 1
       59 LOADB                            R20 1
       60 CALL                             R16 4 1
       61 JUMPIFNOTEQKNIL                  R16 ; [+2]
       63 LOADB                            R13 0 +1
       64 LOADB                            R13 1
       65 JUMPIFNOT                        R13 ; [+2]
       66 LOADB                            R11 0
       67 JUMP                             ; [+14]
       68 GETTABLEKS                       R13 R12 K11 ["content"]
       70 LOADNIL                          R14
       71 LOADNIL                          R15
       72 FORGPREP                         R13
       73 GETTABLEKS                       R18 R17 K12 ["type"]
       75 JUMPIFNOTEQKS                    R18 K16 ["tool_result"] ; [+3]
       77 LOADB                            R11 0
       78 JUMP                             ; [+3]
       79 FORGLOOP                         R13 2 ; [-7]
       81 LOADB                            R11 1
       82 JUMPIFNOT                        R11 ; [+2]
       83 LOADB                            R6 1
       84 JUMP                             ; [+2]
       85 FORNLOOP                         R8
       86 LOADB                            R6 0
       87 JUMPIF                           R6 ; [+15]
       88 ADDK                             R8 R5 K17 [56]
       89 FASTCALL2                        STRING_SUB R4 R8 ; [+4]
       91 MOVE                             R7 R4
       92 GETIMPORT                        R6 K19 [string.sub]
       94 CALL                             R6 2 1
       95 JUMPIFNOTEQKS                    R3 K14 [""] ; [+3]
       97 MOVE                             R3 R6
       98 JUMP                             ; [+4]
       99 MOVE                             R7 R6
      100 LOADK                            R8 K20 ["\n"]
      101 MOVE                             R9 R3
      102 CONCAT                           R3 R7 R9
      103 LOADN                            R8 1
      104 SUBK                             R9 R5 K8 [1]
      105 FASTCALL3                        STRING_SUB R4 R8 R9
      107 MOVE                             R7 R4
      108 GETIMPORT                        R6 K19 [string.sub]
      110 CALL                             R6 3 1
      111 MOVE                             R4 R6
      112 GETUPVAL                         R6 0
      113 GETTABLEKS                       R6 R6 K21 ["capFallbackTranscript"]
      115 MOVE                             R7 R3
      116 GETUPVAL                         R8 1
      117 GETTABLEKS                       R8 R8 K22 ["FIntContextCompactionFallbackMaxTranscriptChars"]
      119 CALL                             R6 2 1
      120 MOVE                             R3 R6
      121 JUMPIFNOTEQKS                    R3 K14 [""] ; [+2]
      123 RETURN                           R4 1
      124 MOVE                             R7 R4
      125 LOADK                            R8 K7 ["\n\n### Most recent conversation (summarizer unavailable)\n"]
      126 MOVE                             R9 R3
      127 CONCAT                           R6 R7 R9
      128 RETURN                           R6 1

PROTO_18:
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
       41 GETTABLEKS                       R8 R8 K8 ["eventLogger"]
       43 JUMPIFNOTEQKS                    R6 K9 [""] ; [+83]
       45 GETUPVAL                         R9 4
       46 GETTABLEKS                       R9 R9 K10 ["FFlagAddCompactionFallbackMessages"]
       48 JUMPIFNOT                        R9 ; [+59]
       49 GETIMPORT                        R9 K12 [warn]
       51 LOADK                            R10 K13 ["[ContextCompaction] Summarizer failed, using previous summary and a transcript of the most recent turns"]
       52 CALL                             R9 1 0
       53 GETUPVAL                         R9 5
       54 MOVE                             R10 R0
       55 GETTABLEKS                       R11 R2 K14 ["summary"]
       57 CALL                             R9 2 1
       58 MOVE                             R6 R9
       59 GETTABLEKS                       R9 R8 K15 ["logCompactionFallback"]
       61 DUPTABLE                         R10 K27 [{"threadId", "errorMessage", "messageCount", "messageGuid", "model", "originalMessageCount", "originalContextTokens", "originalTranscriptSize", "originalTranscript", "fallbackMessageSize", "fallbackMessage"}]
       62 GETTABLEKS                       R11 R1 K16 ["threadId"]
       64 SETTABLEKS                       R11 R10 K16 ["threadId"]
       66 ORK                              R11 R7 K28 ["empty_response"]
       67 SETTABLEKS                       R11 R10 K17 ["errorMessage"]
       69 SETTABLEKS                       R3 R10 K18 ["messageCount"]
       71 GETTABLEKS                       R11 R1 K19 ["messageGuid"]
       73 SETTABLEKS                       R11 R10 K19 ["messageGuid"]
       75 GETTABLEKS                       R11 R1 K29 ["selectedModel"]
       77 SETTABLEKS                       R11 R10 K20 ["model"]
       79 SETTABLEKS                       R3 R10 K21 ["originalMessageCount"]
       81 GETUPVAL                         R11 6
       82 GETTABLEKS                       R11 R11 K30 ["estimateTokens"]
       84 MOVE                             R12 R0
       85 CALL                             R11 1 1
       86 SETTABLEKS                       R11 R10 K22 ["originalContextTokens"]
       88 LENGTH                           R11 R5
       89 SETTABLEKS                       R11 R10 K23 ["originalTranscriptSize"]
       91 GETUPVAL                         R11 1
       92 GETTABLEKS                       R11 R11 K31 ["capFallbackTranscript"]
       94 MOVE                             R12 R5
       95 GETUPVAL                         R13 4
       96 GETTABLEKS                       R13 R13 K32 ["FIntContextCompactionFallbackMaxTranscriptChars"]
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K24 ["originalTranscript"]
      101 LENGTH                           R11 R6
      102 SETTABLEKS                       R11 R10 K25 ["fallbackMessageSize"]
      104 SETTABLEKS                       R6 R10 K26 ["fallbackMessage"]
      106 CALL                             R9 1 0
      107 JUMP                             ; [+29]
      108 GETTABLEKS                       R9 R8 K15 ["logCompactionFallback"]
      110 DUPTABLE                         R10 K33 [{"threadId", "errorMessage", "messageCount"}]
      111 GETTABLEKS                       R11 R1 K16 ["threadId"]
      113 SETTABLEKS                       R11 R10 K16 ["threadId"]
      115 ORK                              R11 R7 K28 ["empty_response"]
      116 SETTABLEKS                       R11 R10 K17 ["errorMessage"]
      118 SETTABLEKS                       R3 R10 K18 ["messageCount"]
      120 CALL                             R9 1 0
      121 GETIMPORT                        R9 K12 [warn]
      123 LOADK                            R10 K34 ["[ContextCompaction] Summarizer failed, using fallback summary"]
      124 CALL                             R9 1 0
      125 LOADK                            R6 K35 ["The conversation history was compacted but the summarizer failed to generate a detailed summary. Use the Available Historical Data below to retrieve previously examined content via from_history."]
      126 JUMP                             ; [+10]
      127 GETTABLEKS                       R9 R8 K36 ["logCompactionSuccess"]
      129 DUPTABLE                         R10 K37 [{"threadId", "messageCount"}]
      130 GETTABLEKS                       R11 R1 K16 ["threadId"]
      132 SETTABLEKS                       R11 R10 K16 ["threadId"]
      134 SETTABLEKS                       R3 R10 K18 ["messageCount"]
      136 CALL                             R9 1 0
      137 SETTABLEKS                       R6 R2 K14 ["summary"]
      139 GETTABLEKS                       R10 R1 K39 ["uiMessageCount"]
      141 ORK                              R9 R10 K38 [0]
      142 SETTABLEKS                       R9 R2 K40 ["compactedUIMessageCount"]
      144 GETUPVAL                         R9 0
      145 GETTABLEKS                       R9 R9 K41 ["set"]
      147 GETTABLEKS                       R10 R1 K16 ["threadId"]
      149 MOVE                             R11 R2
      150 CALL                             R9 2 0
      151 GETUPVAL                         R9 1
      152 GETTABLEKS                       R9 R9 K42 ["assembleCompactedMessages"]
      154 MOVE                             R10 R6
      155 MOVE                             R11 R2
      156 CALL                             R9 2 1
      157 DUPTABLE                         R10 K3 [{"messages", "compactedStore"}]
      158 SETTABLEKS                       R9 R10 K2 ["messages"]
      160 SETTABLEKS                       R2 R10 K0 ["compactedStore"]
      162 RETURN                           R10 1

PROTO_19:
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
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Engine"]
       17 GETTABLEKS                       R3 R3 K11 ["Compaction"]
       19 GETTABLEKS                       R3 R3 K12 ["CompactedStore"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Engine"]
       26 GETTABLEKS                       R4 R4 K11 ["Compaction"]
       28 GETTABLEKS                       R4 R4 K13 ["CompactionSubagent"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K10 ["Engine"]
       35 GETTABLEKS                       R5 R5 K14 ["EngineEnv"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Engine"]
       42 GETTABLEKS                       R6 R6 K15 ["EngineFlags"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K10 ["Engine"]
       49 GETTABLEKS                       R7 R7 K16 ["LLMRequest"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R0 K17 ["Parent"]
       56 GETTABLEKS                       R8 R8 K18 ["Signal"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K10 ["Engine"]
       63 GETTABLEKS                       R9 R9 K19 ["StreamTypes"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K10 ["Engine"]
       70 GETTABLEKS                       R10 R10 K20 ["Util"]
       72 GETTABLEKS                       R10 R10 K21 ["Timer"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R0 K10 ["Engine"]
       79 GETTABLEKS                       R11 R11 K22 ["Providers"]
       81 GETTABLEKS                       R11 R11 K23 ["ToolNames"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R0 K24 ["Tools"]
       88 GETTABLEKS                       R12 R12 K25 ["ToolNaming"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K9 [require]
       93 GETTABLEKS                       R13 R0 K10 ["Engine"]
       95 GETTABLEKS                       R13 R13 K11 ["Compaction"]
       97 GETTABLEKS                       R13 R13 K26 ["estimateTokens"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K9 [require]
      102 GETTABLEKS                       R14 R0 K10 ["Engine"]
      104 GETTABLEKS                       R14 R14 K20 ["Util"]
      106 GETTABLEKS                       R14 R14 K27 ["truncateUtf8Safe"]
      108 CALL                             R13 1 1
      109 NEWTABLE                         R14 4 0
      111 GETTABLEKS                       R15 R10 K28 ["ReadFile"]
      113 LOADB                            R16 1
      114 SETTABLE                         R16 R14 R15
      115 GETTABLEKS                       R15 R10 K29 ["GameTree"]
      117 LOADB                            R16 1
      118 SETTABLE                         R16 R14 R15
      119 GETTABLEKS                       R15 R10 K30 ["GrepSearch"]
      121 LOADB                            R16 1
      122 SETTABLE                         R16 R14 R15
      123 GETTABLEKS                       R15 R10 K31 ["InspectInstance"]
      125 LOADB                            R16 1
      126 SETTABLE                         R16 R14 R15
      127 NEWTABLE                         R15 8 0
      129 DUPCLOSURE                       R16 K32 [PROTO_0]
      130 CAPTURE                          VAL R12
      131 SETTABLEKS                       R16 R15 K33 ["shouldCompact"]
      133 DUPCLOSURE                       R16 K34 [PROTO_1]
      134 CAPTURE                          VAL R12
      135 SETTABLEKS                       R16 R15 K35 ["estimateMessages"]
      137 DUPCLOSURE                       R16 K36 [PROTO_3]
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R14
      143 SETTABLEKS                       R16 R15 K37 ["serializeForSummary"]
      145 DUPCLOSURE                       R16 K38 [PROTO_4]
      146 CAPTURE                          VAL R3
      147 DUPCLOSURE                       R17 K39 [PROTO_8]
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R5
      153 DUPCLOSURE                       R18 K40 [PROTO_9]
      154 DUPCLOSURE                       R19 K41 [PROTO_10]
      155 CAPTURE                          VAL R2
      156 SETTABLEKS                       R19 R15 K42 ["assembleCompactedMessages"]
      158 DUPCLOSURE                       R19 K43 [PROTO_11]
      159 DUPCLOSURE                       R20 K44 [PROTO_12]
      160 DUPCLOSURE                       R21 K45 [PROTO_13]
      161 SETTABLEKS                       R21 R15 K46 ["getFallbackMessageCount"]
      163 DUPCLOSURE                       R21 K47 [PROTO_14]
      164 DUPCLOSURE                       R22 K48 [PROTO_15]
      165 CAPTURE                          VAL R21
      166 SETTABLEKS                       R22 R15 K49 ["capFallbackTranscript"]
      168 DUPCLOSURE                       R22 K50 [PROTO_16]
      169 DUPCLOSURE                       R23 K51 [PROTO_17]
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R5
      172 DUPCLOSURE                       R24 K52 [PROTO_18]
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R12
      180 SETTABLEKS                       R24 R15 K53 ["compact"]
      182 DUPCLOSURE                       R24 K54 [PROTO_19]
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R12
      186 SETTABLEKS                       R24 R15 K55 ["reconstructFromStore"]
      188 RETURN                           R15 1
