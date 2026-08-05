PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+9]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["Types"]
        5 GETTABLEKS                       R3 R3 K1 ["VALID_ROLES"]
        7 GETTABLE                         R2 R3 R0
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 1
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["serializeAgentContent requires AssistantHarnessSplit"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["type"]
       10 JUMPIFNOTEQKS                    R1 K4 ["text"] ; [+25]
       12 GETTABLEKS                       R1 R0 K5 ["_meta"]
       14 JUMPIFNOTEQKNIL                  R1 ; [+21]
       16 DUPTABLE                         R1 K6 [{["type"] = "text", ["text"], ["_meta"]}]
       17 GETTABLEKS                       R3 R0 K4 ["text"]
       19 ORK                              R2 R3 K7 [""]
       20 SETTABLEKS                       R2 R1 K4 ["text"]
       22 DUPTABLE                         R2 K9 [{"roblox_studio_assistant"}]
       23 DUPTABLE                         R3 K12 [{"base", "widget"}]
       24 DUPTABLE                         R4 K14 [{["type"] = "Text"}]
       25 SETTABLEKS                       R4 R3 K10 ["base"]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K11 ["widget"]
       31 SETTABLEKS                       R3 R2 K8 ["roblox_studio_assistant"]
       33 SETTABLEKS                       R2 R1 K5 ["_meta"]
       35 RETURN                           R1 1
       36 GETTABLEKS                       R1 R0 K3 ["type"]
       38 JUMPIFNOTEQKS                    R1 K15 ["thinking"] ; [+24]
       40 DUPTABLE                         R1 K6 [{["type"] = "text", ["text"], ["_meta"]}]
       41 GETTABLEKS                       R3 R0 K15 ["thinking"]
       43 ORK                              R2 R3 K7 [""]
       44 SETTABLEKS                       R2 R1 K4 ["text"]
       46 DUPTABLE                         R2 K9 [{"roblox_studio_assistant"}]
       47 DUPTABLE                         R3 K12 [{"base", "widget"}]
       48 DUPTABLE                         R4 K17 [{["type"] = "Thinking"}]
       49 SETTABLEKS                       R4 R3 K10 ["base"]
       51 DUPTABLE                         R4 K19 [{"signature"}]
       52 GETTABLEKS                       R5 R0 K18 ["signature"]
       54 SETTABLEKS                       R5 R4 K18 ["signature"]
       56 SETTABLEKS                       R4 R3 K11 ["widget"]
       58 SETTABLEKS                       R3 R2 K8 ["roblox_studio_assistant"]
       60 SETTABLEKS                       R2 R1 K5 ["_meta"]
       62 RETURN                           R1 1
       63 GETTABLEKS                       R1 R0 K3 ["type"]
       65 JUMPIFNOTEQKS                    R1 K20 ["tool_result"] ; [+22]
       67 DUPTABLE                         R1 K25 [{["type"] = "tool_result", ["toolUseId"], ["content"], ["structuredContent"], ["isError"]}]
       68 GETTABLEKS                       R2 R0 K21 ["toolUseId"]
       70 JUMPIF                           R2 ; [+2]
       71 GETTABLEKS                       R2 R0 K26 ["id"]
       73 SETTABLEKS                       R2 R1 K21 ["toolUseId"]
       75 GETTABLEKS                       R2 R0 K22 ["content"]
       77 SETTABLEKS                       R2 R1 K22 ["content"]
       79 GETTABLEKS                       R2 R0 K23 ["structuredContent"]
       81 SETTABLEKS                       R2 R1 K23 ["structuredContent"]
       83 GETTABLEKS                       R2 R0 K24 ["isError"]
       85 SETTABLEKS                       R2 R1 K24 ["isError"]
       87 RETURN                           R1 1
       88 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_meta"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["_meta"]
        5 GETTABLEKS                       R1 R1 K1 ["roblox_studio_assistant"]
        7 JUMPIFNOT                        R1 ; [+27]
        8 GETTABLEKS                       R2 R1 K2 ["base"]
       10 JUMPIFNOT                        R2 ; [+24]
       11 GETTABLEKS                       R2 R1 K2 ["base"]
       13 GETTABLEKS                       R2 R2 K3 ["type"]
       15 JUMPIFNOTEQKS                    R2 K4 ["Thinking"] ; [+19]
       17 DUPTABLE                         R2 K7 [{["type"] = "thinking", ["thinking"], ["signature"]}]
       18 GETTABLEKS                       R4 R0 K9 ["text"]
       20 ORK                              R3 R4 K8 [""]
       21 SETTABLEKS                       R3 R2 K5 ["thinking"]
       23 GETTABLEKS                       R4 R1 K10 ["widget"]
       25 JUMPIFNOT                        R4 ; [+5]
       26 GETTABLEKS                       R3 R1 K10 ["widget"]
       28 GETTABLEKS                       R3 R3 K6 ["signature"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R3
       32 SETTABLEKS                       R3 R2 K6 ["signature"]
       34 RETURN                           R2 1
       35 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["tool_use"] ; [+19]
        4 LOADK                            R2 K2 ["tool_use(id=%*, name=%*)"]
        5 GETTABLEKS                       R5 R0 K3 ["id"]
        7 FASTCALL1                        TOSTRING R5 ; [+2]
        8 GETIMPORT                        R4 K5 [tostring]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R6 R0 K6 ["name"]
       13 FASTCALL1                        TOSTRING R6 ; [+2]
       14 GETIMPORT                        R5 K5 [tostring]
       16 CALL                             R5 1 1
       17 NAMECALL                         R2 R2 K7 ["format"]
       19 CALL                             R2 3 1
       20 MOVE                             R1 R2
       21 RETURN                           R1 1
       22 GETTABLEKS                       R1 R0 K0 ["type"]
       24 JUMPIFNOTEQKS                    R1 K8 ["tool_result"] ; [+16]
       26 LOADK                            R2 K9 ["tool_result(toolUseId=%*)"]
       27 GETTABLEKS                       R5 R0 K10 ["toolUseId"]
       29 JUMPIF                           R5 ; [+2]
       30 GETTABLEKS                       R5 R0 K3 ["id"]
       32 FASTCALL1                        TOSTRING R5 ; [+2]
       33 GETIMPORT                        R4 K5 [tostring]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K7 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K0 ["type"]
       43 JUMPIFNOTEQKS                    R1 K11 ["text"] ; [+27]
       45 GETTABLEKS                       R3 R0 K11 ["text"]
       47 FASTCALL1                        TYPEOF R3 ; [+2]
       48 GETIMPORT                        R2 K13 [typeof]
       50 CALL                             R2 1 1
       51 JUMPIFNOTEQKS                    R2 K14 ["string"] ; [+4]
       53 GETTABLEKS                       R1 R0 K11 ["text"]
       55 JUMP                             ; [+1]
       56 LOADK                            R1 K15 [""]
       57 LOADK                            R3 K16 ["text(%*)"]
       58 LOADN                            R7 1
       59 LOADN                            R8 24
       60 FASTCALL3                        STRING_SUB R1 R7 R8
       62 MOVE                             R6 R1
       63 GETIMPORT                        R5 K18 [string.sub]
       65 CALL                             R5 3 1
       66 NAMECALL                         R3 R3 K7 ["format"]
       68 CALL                             R3 2 1
       69 MOVE                             R2 R3
       70 RETURN                           R2 1
       71 GETTABLEKS                       R1 R0 K0 ["type"]
       73 JUMPIFNOTEQKS                    R1 K19 ["thinking"] ; [+3]
       75 LOADK                            R1 K19 ["thinking"]
       76 RETURN                           R1 1
       77 GETTABLEKS                       R2 R0 K0 ["type"]
       79 FASTCALL1                        TOSTRING R2 ; [+2]
       80 GETIMPORT                        R1 K5 [tostring]
       82 CALL                             R1 1 1
       83 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.create]
        2 LENGTH                           R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K3 ["contents"]
       10 JUMPIF                           R7 ; [+2]
       11 NEWTABLE                         R7 0 0
       13 GETIMPORT                        R8 K2 [table.create]
       15 LENGTH                           R9 R7
       16 CALL                             R8 1 1
       17 MOVE                             R9 R7
       18 LOADNIL                          R10
       19 LOADNIL                          R11
       20 FORGPREP                         R9
       21 LOADNIL                          R14
       22 GETTABLEKS                       R16 R13 K4 ["mcpContent"]
       24 FASTCALL1                        TYPEOF R16 ; [+2]
       25 GETIMPORT                        R15 K6 [typeof]
       27 CALL                             R15 1 1
       28 JUMPIFNOTEQKS                    R15 K7 ["string"] ; [+14]
       30 GETIMPORT                        R15 K9 [pcall]
       32 GETUPVAL                         R16 0
       33 GETTABLEKS                       R16 R16 K10 ["JSONDecode"]
       35 GETUPVAL                         R17 0
       36 GETTABLEKS                       R18 R13 K4 ["mcpContent"]
       38 CALL                             R15 3 2
       39 JUMPIFNOT                        R15 ; [+2]
       40 MOVE                             R14 R16
       41 JUMP                             ; [+1]
       42 LOADNIL                          R14
       43 LOADK                            R18 K11 ["%*:%*"]
       44 MOVE                             R20 R12
       45 JUMPIFNOT                        R14 ; [+4]
       46 GETUPVAL                         R21 1
       47 MOVE                             R22 R14
       48 CALL                             R21 1 1
       49 JUMP                             ; [+6]
       50 GETTABLEKS                       R22 R13 K4 ["mcpContent"]
       52 FASTCALL1                        TOSTRING R22 ; [+2]
       53 GETIMPORT                        R21 K13 [tostring]
       55 CALL                             R21 1 1
       56 NAMECALL                         R18 R18 K14 ["format"]
       58 CALL                             R18 3 1
       59 MOVE                             R17 R18
       60 FASTCALL2                        TABLE_INSERT R8 R17 ; [+4]
       62 MOVE                             R16 R8
       63 GETIMPORT                        R15 K16 [table.insert]
       65 CALL                             R15 2 0
       66 FORGLOOP                         R9 2 ; [-46]
       68 LOADK                            R12 K17 ["%*:%*:%*[%*]"]
       69 MOVE                             R14 R5
       70 GETTABLEKS                       R15 R6 K18 ["role"]
       72 GETTABLEKS                       R16 R6 K19 ["messageId"]
       74 GETIMPORT                        R17 K21 [table.concat]
       76 MOVE                             R18 R8
       77 LOADK                            R19 K22 [", "]
       78 CALL                             R17 2 1
       79 NAMECALL                         R12 R12 K14 ["format"]
       81 CALL                             R12 5 1
       82 MOVE                             R11 R12
       83 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       85 MOVE                             R10 R1
       86 GETIMPORT                        R9 K16 [table.insert]
       88 CALL                             R9 2 0
       89 FORGLOOP                         R2 2 ; [-82]
       91 GETIMPORT                        R2 K21 [table.concat]
       93 MOVE                             R3 R1
       94 LOADK                            R4 K23 [" | "]
       95 CALL                             R2 2 -1
       96 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["getThreadsAsync"]
        5 DUPTABLE                         R1 K5 [{"placeId", "cursor", "limit"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["placeId"]
        9 SETTABLEKS                       R2 R1 K2 ["placeId"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["cursor"]
       14 SETTABLEKS                       R2 R1 K3 ["cursor"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["limit"]
       19 SETTABLEKS                       R2 R1 K4 ["limit"]
       21 CALL                             R0 1 -1
       22 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 DUPTABLE                         R3 K3 [{["retryCount"] = 2}]
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R2 R1 K4 ["success"]
       10 JUMPIF                           R2 ; [+6]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["throwError"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 GETTABLEKS                       R2 R1 K6 ["data"]
       19 GETTABLEKS                       R3 R2 K7 ["threads"]
       21 LOADNIL                          R4
       22 JUMPIFNOT                        R3 ; [+155]
       23 GETIMPORT                        R5 K10 [table.create]
       25 LENGTH                           R6 R3
       26 CALL                             R5 1 1
       27 MOVE                             R4 R5
       28 MOVE                             R5 R3
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 LOADNIL                          R10
       33 GETTABLEKS                       R11 R9 K11 ["metadata"]
       35 JUMPIFNOT                        R11 ; [+38]
       36 FASTCALL1                        TYPEOF R11 ; [+3]
       37 MOVE                             R13 R11
       38 GETIMPORT                        R12 K13 [typeof]
       40 CALL                             R12 1 1
       41 JUMPIFNOTEQKS                    R12 K14 ["string"] ; [+32]
       43 LENGTH                           R12 R11
       44 LOADN                            R13 0
       45 JUMPIFNOTLT                      R13 R12 ; [+28]
       47 GETIMPORT                        R12 K16 [pcall]
       49 NEWCLOSURE                       R13 P1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R11
       52 CALL                             R12 1 2
       53 JUMPIF                           R12 ; [+16]
       54 GETUPVAL                         R14 3
       55 GETTABLEKS                       R14 R14 K17 ["FFlagDebugLogAssistantUI"]
       57 JUMPIFNOT                        R14 ; [+12]
       58 GETIMPORT                        R14 K19 [warn]
       60 LOADK                            R16 K20 ["[CloudIO] Failed to decode metadata for thread with title \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this thread."]
       61 GETTABLEKS                       R18 R9 K21 ["title"]
       63 MOVE                             R19 R11
       64 MOVE                             R20 R13
       65 NAMECALL                         R16 R16 K22 ["format"]
       67 CALL                             R16 4 1
       68 MOVE                             R15 R16
       69 CALL                             R14 1 0
       70 JUMPIFNOT                        R12 ; [+2]
       71 MOVE                             R10 R13
       72 JUMP                             ; [+1]
       73 LOADNIL                          R10
       74 MOVE                             R12 R10
       75 JUMPIF                           R12 ; [+2]
       76 NEWTABLE                         R12 0 0
       78 MOVE                             R10 R12
       79 GETTABLEKS                       R12 R9 K23 ["threadId"]
       81 JUMPIF                           R12 ; [+16]
       82 GETUPVAL                         R13 3
       83 GETTABLEKS                       R13 R13 K17 ["FFlagDebugLogAssistantUI"]
       85 JUMPIFNOT                        R13 ; [+89]
       86 GETIMPORT                        R13 K19 [warn]
       88 LOADK                            R15 K24 ["[CloudIO] threadId missing for thread with title \"%*\" and metadata \"%*\". Skipping this thread."]
       89 GETTABLEKS                       R17 R9 K21 ["title"]
       91 MOVE                             R18 R11
       92 NAMECALL                         R15 R15 K22 ["format"]
       94 CALL                             R15 3 1
       95 MOVE                             R14 R15
       96 CALL                             R13 1 0
       97 JUMP                             ; [+77]
       98 LOADNIL                          R13
       99 GETUPVAL                         R14 3
      100 GETTABLEKS                       R14 R14 K25 ["FFlagAssistantMarkdownPlanMode"]
      102 JUMPIFNOT                        R14 ; [+9]
      103 GETTABLEKS                       R14 R10 K26 ["loadUntilMessageId"]
      105 JUMPIFNOT                        R14 ; [+6]
      106 DUPTABLE                         R14 K27 [{"loadUntilMessageId"}]
      107 GETTABLEKS                       R15 R10 K26 ["loadUntilMessageId"]
      109 SETTABLEKS                       R15 R14 K26 ["loadUntilMessageId"]
      111 MOVE                             R13 R14
      112 DUPTABLE                         R16 K46 [{["threadId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["lastActivityAt"], ["title"], ["isPinned"], ["lastViewedAt"], ["messages"], ["messageLoadState"] = , ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0, ["metadata"]}]
      113 SETTABLEKS                       R12 R16 K23 ["threadId"]
      115 GETTABLEKS                       R17 R10 K28 ["sourceId"]
      117 SETTABLEKS                       R17 R16 K28 ["sourceId"]
      119 GETTABLEKS                       R17 R10 K29 ["rootId"]
      121 SETTABLEKS                       R17 R16 K29 ["rootId"]
      123 GETTABLEKS                       R18 R9 K47 ["createdUtc"]
      125 ORK                              R17 R18 K44 [0]
      126 SETTABLEKS                       R17 R16 K30 ["createdAt"]
      128 GETTABLEKS                       R18 R9 K48 ["updatedUtc"]
      130 ORK                              R17 R18 K44 [0]
      131 SETTABLEKS                       R17 R16 K31 ["updatedAt"]
      133 GETTABLEKS                       R17 R9 K35 ["isDeleted"]
      135 SETTABLEKS                       R17 R16 K35 ["isDeleted"]
      137 GETTABLEKS                       R18 R9 K49 ["lastActivityUtc"]
      139 ORK                              R17 R18 K44 [0]
      140 SETTABLEKS                       R17 R16 K36 ["lastActivityAt"]
      142 GETTABLEKS                       R17 R9 K21 ["title"]
      144 JUMPIF                           R17 ; [+6]
      145 LOADK                            R18 K50 ["IMPORTED_THREAD_%*"]
      146 MOVE                             R20 R12
      147 NAMECALL                         R18 R18 K22 ["format"]
      149 CALL                             R18 2 1
      150 MOVE                             R17 R18
      151 SETTABLEKS                       R17 R16 K21 ["title"]
      153 GETTABLEKS                       R18 R9 K37 ["isPinned"]
      155 ORK                              R17 R18 K33 [False]
      156 SETTABLEKS                       R17 R16 K37 ["isPinned"]
      158 GETTABLEKS                       R18 R10 K38 ["lastViewedAt"]
      160 ORK                              R17 R18 K51 [-1]
      161 SETTABLEKS                       R17 R16 K38 ["lastViewedAt"]
      163 NEWTABLE                         R17 0 0
      165 SETTABLEKS                       R17 R16 K39 ["messages"]
      167 SETTABLEKS                       R13 R16 K11 ["metadata"]
      169 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      171 MOVE                             R15 R4
      172 GETIMPORT                        R14 K53 [table.insert]
      174 CALL                             R14 2 0
      175 FORGLOOP                         R5 2 ; [-144]
      177 JUMP                             ; [+2]
      178 NEWTABLE                         R4 0 0
      180 LOADB                            R5 1
      181 DUPTABLE                         R6 K55 [{"threads", "cursor"}]
      182 SETTABLEKS                       R4 R6 K7 ["threads"]
      184 GETTABLEKS                       R7 R2 K54 ["cursor"]
      186 SETTABLEKS                       R7 R6 K54 ["cursor"]
      188 RETURN                           R5 2

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadThreadsAsync"]
        5 DUPTABLE                         R1 K4 [{"placeId", "body"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["placeId"]
        9 SETTABLEKS                       R2 R1 K2 ["placeId"]
       11 DUPTABLE                         R2 K6 [{"threads"}]
       12 GETUPVAL                         R3 2
       13 SETTABLEKS                       R3 R2 K5 ["threads"]
       15 SETTABLEKS                       R2 R1 K3 ["body"]
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R2 K2 [table.create]
        2 LENGTH                           R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 DUPTABLE                         R8 K7 [{"sourceId", "rootId", "lastViewedAt", "loadUntilMessageId"}]
        9 GETTABLEKS                       R10 R7 K3 ["sourceId"]
       11 ORK                              R9 R10 K8 []
       12 SETTABLEKS                       R9 R8 K3 ["sourceId"]
       14 GETTABLEKS                       R10 R7 K4 ["rootId"]
       16 ORK                              R9 R10 K8 []
       17 SETTABLEKS                       R9 R8 K4 ["rootId"]
       19 GETTABLEKS                       R10 R7 K5 ["lastViewedAt"]
       21 ORK                              R9 R10 K8 []
       22 SETTABLEKS                       R9 R8 K5 ["lastViewedAt"]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K9 ["FFlagAssistantMarkdownPlanMode"]
       27 JUMPIFNOT                        R10 ; [+8]
       28 GETTABLEKS                       R10 R7 K10 ["metadata"]
       30 JUMPIFNOT                        R10 ; [+5]
       31 GETTABLEKS                       R9 R7 K10 ["metadata"]
       33 GETTABLEKS                       R9 R9 K6 ["loadUntilMessageId"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R9
       37 SETTABLEKS                       R9 R8 K6 ["loadUntilMessageId"]
       39 GETIMPORT                        R9 K12 [pcall]
       41 NEWCLOSURE                       R10 P0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R8
       44 CALL                             R9 1 2
       45 JUMPIF                           R9 ; [+17]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R11 R11 K13 ["FFlagDebugLogAssistantUI"]
       49 JUMPIFNOT                        R11 ; [+13]
       50 GETIMPORT                        R11 K15 [warn]
       52 LOADK                            R13 K16 ["[CloudIO] Failed to serialize metadata for thread with threadId \"%*\" and title \"%*\". Error was \"%*\". Skipping this thread."]
       53 GETTABLEKS                       R15 R7 K17 ["threadId"]
       55 GETTABLEKS                       R16 R7 K18 ["title"]
       57 MOVE                             R17 R10
       58 NAMECALL                         R13 R13 K19 ["format"]
       60 CALL                             R13 4 1
       61 MOVE                             R12 R13
       62 CALL                             R11 1 0
       63 DUPTABLE                         R13 K25 [{"threadId", "createdUtc", "updatedUtc", "isDeleted", "lastActivityUtc", "isPinned", "title", "metadata"}]
       64 GETTABLEKS                       R14 R7 K17 ["threadId"]
       66 SETTABLEKS                       R14 R13 K17 ["threadId"]
       68 GETTABLEKS                       R14 R7 K26 ["createdAt"]
       70 SETTABLEKS                       R14 R13 K20 ["createdUtc"]
       72 GETTABLEKS                       R14 R7 K27 ["updatedAt"]
       74 SETTABLEKS                       R14 R13 K21 ["updatedUtc"]
       76 GETTABLEKS                       R14 R7 K22 ["isDeleted"]
       78 SETTABLEKS                       R14 R13 K22 ["isDeleted"]
       80 GETTABLEKS                       R14 R7 K28 ["lastActivityAt"]
       82 SETTABLEKS                       R14 R13 K23 ["lastActivityUtc"]
       84 GETTABLEKS                       R14 R7 K24 ["isPinned"]
       86 SETTABLEKS                       R14 R13 K24 ["isPinned"]
       88 GETTABLEKS                       R14 R7 K18 ["title"]
       90 SETTABLEKS                       R14 R13 K18 ["title"]
       92 JUMPIFNOT                        R9 ; [+2]
       93 MOVE                             R14 R10
       94 JUMP                             ; [+1]
       95 LOADNIL                          R14
       96 SETTABLEKS                       R14 R13 K10 ["metadata"]
       98 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
      100 MOVE                             R12 R2
      101 GETIMPORT                        R11 K30 [table.insert]
      103 CALL                             R11 2 0
      104 FORGLOOP                         R3 2 ; [-97]
      106 GETUPVAL                         R3 2
      107 GETTABLEKS                       R3 R3 K31 ["callWithOptions"]
      109 NEWCLOSURE                       R4 P1
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R2
      113 NEWTABLE                         R5 0 0
      115 CALL                             R3 2 1
      116 GETTABLEKS                       R4 R3 K32 ["success"]
      118 JUMPIF                           R4 ; [+6]
      119 GETUPVAL                         R4 2
      120 GETTABLEKS                       R4 R4 K33 ["throwError"]
      122 MOVE                             R5 R3
      123 CALL                             R4 1 -1
      124 RETURN                           R4 -1
      125 GETTABLEKS                       R4 R3 K32 ["success"]
      127 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["deleteThreadAsync"]
        5 DUPTABLE                         R1 K3 [{"threadId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["threadId"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R2 R1 K1 ["success"]
       11 JUMPIF                           R2 ; [+6]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["throwError"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["getMessagesAsync"]
        5 DUPTABLE                         R1 K5 [{"threadId", "cursor", "limit"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["threadId"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["cursor"]
       12 SETTABLEKS                       R2 R1 K3 ["cursor"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K4 ["limit"]
       17 SETTABLEKS                       R2 R1 K4 ["limit"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K8 [{"threadId", "messageId", "contentId", "createdAt", "updatedAt", "isDeleted", "mcpContent"}]
        7 GETUPVAL                         R4 3
        8 SETTABLEKS                       R4 R3 K1 ["threadId"]
       10 GETUPVAL                         R4 4
       11 SETTABLEKS                       R4 R3 K2 ["messageId"]
       13 GETUPVAL                         R4 5
       14 SETTABLEKS                       R4 R3 K3 ["contentId"]
       16 GETUPVAL                         R5 6
       17 GETTABLEKS                       R5 R5 K10 ["createdUtc"]
       19 ORK                              R4 R5 K9 [0]
       20 SETTABLEKS                       R4 R3 K4 ["createdAt"]
       22 GETUPVAL                         R5 6
       23 GETTABLEKS                       R5 R5 K11 ["updatedUtc"]
       25 ORK                              R4 R5 K9 [0]
       26 SETTABLEKS                       R4 R3 K5 ["updatedAt"]
       28 GETUPVAL                         R4 6
       29 GETTABLEKS                       R4 R4 K6 ["isDeleted"]
       31 SETTABLEKS                       R4 R3 K6 ["isDeleted"]
       33 SETTABLEKS                       R0 R3 K7 ["mcpContent"]
       35 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       37 GETIMPORT                        R1 K14 [table.insert]
       39 CALL                             R1 2 0
       40 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deserialize"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPTABLE                         R4 K3 [{["retryCount"] = 2}]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R2 K4 ["success"]
       11 JUMPIF                           R3 ; [+6]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["throwError"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1
       18 GETTABLEKS                       R3 R2 K6 ["data"]
       20 GETTABLEKS                       R4 R3 K7 ["messages"]
       22 LOADNIL                          R5
       23 JUMPIFNOT                        R4 ; [+272]
       24 GETIMPORT                        R6 K10 [table.create]
       26 LENGTH                           R7 R4
       27 CALL                             R6 1 1
       28 MOVE                             R5 R6
       29 MOVE                             R6 R4
       30 LOADNIL                          R7
       31 LOADNIL                          R8
       32 FORGPREP                         R6
       33 LOADNIL                          R11
       34 GETTABLEKS                       R12 R10 K11 ["metadata"]
       36 JUMPIFNOT                        R12 ; [+40]
       37 FASTCALL1                        TYPEOF R12 ; [+3]
       38 MOVE                             R14 R12
       39 GETIMPORT                        R13 K13 [typeof]
       41 CALL                             R13 1 1
       42 JUMPIFNOTEQKS                    R13 K14 ["string"] ; [+34]
       44 LENGTH                           R13 R12
       45 LOADN                            R14 0
       46 JUMPIFNOTLT                      R14 R13 ; [+30]
       48 GETIMPORT                        R13 K16 [pcall]
       50 NEWCLOSURE                       R14 P1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R12
       53 CALL                             R13 1 2
       54 JUMPIF                           R13 ; [+18]
       55 GETUPVAL                         R15 3
       56 GETTABLEKS                       R15 R15 K17 ["FFlagDebugLogAssistantUI"]
       58 JUMPIFNOT                        R15 ; [+14]
       59 GETIMPORT                        R15 K19 [warn]
       61 LOADK                            R17 K20 ["[CloudIO] Failed to decode metadata for message with messageId \"%*\" and role \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this message."]
       62 GETTABLEKS                       R19 R10 K21 ["messageId"]
       64 GETTABLEKS                       R20 R10 K22 ["role"]
       66 MOVE                             R21 R12
       67 MOVE                             R22 R14
       68 NAMECALL                         R17 R17 K23 ["format"]
       70 CALL                             R17 5 1
       71 MOVE                             R16 R17
       72 CALL                             R15 1 0
       73 JUMPIFNOT                        R13 ; [+2]
       74 MOVE                             R11 R14
       75 JUMP                             ; [+1]
       76 LOADNIL                          R11
       77 MOVE                             R13 R11
       78 JUMPIF                           R13 ; [+2]
       79 NEWTABLE                         R13 0 0
       81 MOVE                             R11 R13
       82 GETTABLEKS                       R13 R10 K21 ["messageId"]
       84 JUMPIF                           R13 ; [+16]
       85 GETUPVAL                         R14 3
       86 GETTABLEKS                       R14 R14 K17 ["FFlagDebugLogAssistantUI"]
       88 JUMPIFNOT                        R14 ; [+204]
       89 GETIMPORT                        R14 K19 [warn]
       91 LOADK                            R16 K24 ["[CloudIO] messageId missing for message with role \"%*\" and metadata \"%*\". Skipping this message."]
       92 GETTABLEKS                       R18 R10 K22 ["role"]
       94 MOVE                             R19 R12
       95 NAMECALL                         R16 R16 K23 ["format"]
       97 CALL                             R16 3 1
       98 MOVE                             R15 R16
       99 CALL                             R14 1 0
      100 JUMP                             ; [+192]
      101 GETTABLEKS                       R14 R10 K25 ["contents"]
      103 NEWTABLE                         R15 0 0
      105 LOADN                            R16 0
      106 JUMPIFNOT                        R14 ; [+104]
      107 GETIMPORT                        R17 K10 [table.create]
      109 LENGTH                           R18 R14
      110 CALL                             R17 1 1
      111 MOVE                             R18 R14
      112 LOADNIL                          R19
      113 LOADNIL                          R20
      114 FORGPREP                         R18
      115 GETTABLEKS                       R23 R22 K26 ["mcpContent"]
      117 JUMPIF                           R23 ; [+12]
      118 GETIMPORT                        R24 K19 [warn]
      120 LOADK                            R26 K27 ["[CloudIO] mcpContent missing for content with contentId \"%*\" in message \"%*\". Skipping this content."]
      121 GETTABLEKS                       R28 R22 K28 ["contentId"]
      123 MOVE                             R29 R13
      124 NAMECALL                         R26 R26 K23 ["format"]
      126 CALL                             R26 3 1
      127 MOVE                             R25 R26
      128 CALL                             R24 1 0
      129 JUMP                             ; [+46]
      130 GETTABLEKS                       R24 R22 K28 ["contentId"]
      132 JUMPIF                           R24 ; [+15]
      133 GETUPVAL                         R25 3
      134 GETTABLEKS                       R25 R25 K17 ["FFlagDebugLogAssistantUI"]
      136 JUMPIFNOT                        R25 ; [+39]
      137 GETIMPORT                        R25 K19 [warn]
      139 LOADK                            R27 K29 ["[CloudIO] contentId missing for content with mcpContent \"%*\" in message \"%*\". Skipping this content."]
      140 MOVE                             R29 R23
      141 MOVE                             R30 R13
      142 NAMECALL                         R27 R27 K23 ["format"]
      144 CALL                             R27 3 1
      145 MOVE                             R26 R27
      146 CALL                             R25 1 0
      147 JUMP                             ; [+28]
      148 GETIMPORT                        R25 K16 [pcall]
      150 NEWCLOSURE                       R26 P2
      151 CAPTURE                          UPVAL U2
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R24
      157 CAPTURE                          VAL R22
      158 CALL                             R25 1 2
      159 JUMPIF                           R25 ; [+16]
      160 GETUPVAL                         R27 3
      161 GETTABLEKS                       R27 R27 K17 ["FFlagDebugLogAssistantUI"]
      163 JUMPIFNOT                        R27 ; [+12]
      164 GETIMPORT                        R27 K19 [warn]
      166 LOADK                            R29 K30 ["[CloudIO] Failed to deserialize content with contentId \"%*\" in message \"%*\". mcpContent was \"%*\". Error was \"%*\". Skipping this content."]
      167 MOVE                             R31 R24
      168 MOVE                             R32 R13
      169 MOVE                             R33 R23
      170 MOVE                             R34 R26
      171 NAMECALL                         R29 R29 K23 ["format"]
      173 CALL                             R29 5 1
      174 MOVE                             R28 R29
      175 CALL                             R27 1 0
      176 FORGLOOP                         R18 2 ; [-62]
      178 GETIMPORT                        R18 K16 [pcall]
      180 NEWCLOSURE                       R19 P3
      181 CAPTURE                          UPVAL U4
      182 CAPTURE                          VAL R17
      183 CALL                             R18 1 2
      184 JUMPIF                           R18 ; [+16]
      185 GETUPVAL                         R20 3
      186 GETTABLEKS                       R20 R20 K17 ["FFlagDebugLogAssistantUI"]
      188 JUMPIFNOT                        R20 ; [+104]
      189 GETIMPORT                        R20 K19 [warn]
      191 LOADK                            R22 K31 ["[CloudIO] Failed to deserialize content in message \"%*\". deserializableContents was \"%*\". Error was \"%*\". Skipping this content."]
      192 MOVE                             R24 R13
      193 MOVE                             R25 R17
      194 MOVE                             R26 R19
      195 NAMECALL                         R22 R22 K23 ["format"]
      197 CALL                             R22 4 1
      198 MOVE                             R21 R22
      199 CALL                             R20 1 0
      200 JUMP                             ; [+92]
      201 MOVE                             R20 R19
      202 LOADNIL                          R21
      203 LOADNIL                          R22
      204 FORGPREP                         R20
      205 GETTABLEKS                       R25 R24 K28 ["contentId"]
      207 SETTABLE                         R24 R15 R25
      208 ADDK                             R16 R16 K32 [1]
      209 FORGLOOP                         R20 2 ; [-5]
      211 GETTABLEKS                       R18 R10 K22 ["role"]
      213 JUMPIFEQKNIL                     R18 ; [+10]
      215 GETUPVAL                         R20 5
      216 GETTABLEKS                       R20 R20 K33 ["Types"]
      218 GETTABLEKS                       R20 R20 K34 ["VALID_ROLES"]
      220 GETTABLE                         R19 R20 R18
      221 JUMPIFNOT                        R19 ; [+2]
      222 MOVE                             R17 R18
      223 JUMP                             ; [+1]
      224 LOADK                            R17 K35 ["system"]
      225 GETTABLEKS                       R18 R10 K22 ["role"]
      227 JUMPIFEQKNIL                     R18 ; [+20]
      229 GETTABLEKS                       R18 R10 K22 ["role"]
      231 JUMPIFEQ                         R18 R17 ; [+16]
      233 GETUPVAL                         R18 3
      234 GETTABLEKS                       R18 R18 K17 ["FFlagDebugLogAssistantUI"]
      236 JUMPIFNOT                        R18 ; [+11]
      237 GETIMPORT                        R18 K19 [warn]
      239 LOADK                            R20 K36 ["[CloudIO] Invalid role \"%*\" for message with messageId \"%*\". Defaulting to \"system\"."]
      240 GETTABLEKS                       R22 R10 K22 ["role"]
      242 MOVE                             R23 R13
      243 NAMECALL                         R20 R20 K23 ["format"]
      245 CALL                             R20 3 1
      246 MOVE                             R19 R20
      247 CALL                             R18 1 0
      248 DUPTABLE                         R20 K51 [{["messageId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["role"], ["thumbsState"], ["contents"], ["contentCountAdded"] = 0, ["contentCountLoaded"], ["LayoutOrder"] = 0, ["hidden"]}]
      249 SETTABLEKS                       R13 R20 K21 ["messageId"]
      251 GETTABLEKS                       R21 R11 K37 ["sourceId"]
      253 SETTABLEKS                       R21 R20 K37 ["sourceId"]
      255 GETTABLEKS                       R21 R11 K38 ["rootId"]
      257 SETTABLEKS                       R21 R20 K38 ["rootId"]
      259 GETTABLEKS                       R22 R10 K52 ["createdUtc"]
      261 ORK                              R21 R22 K47 [0]
      262 SETTABLEKS                       R21 R20 K39 ["createdAt"]
      264 GETTABLEKS                       R22 R10 K53 ["updatedUtc"]
      266 ORK                              R21 R22 K47 [0]
      267 SETTABLEKS                       R21 R20 K40 ["updatedAt"]
      269 GETTABLEKS                       R21 R10 K44 ["isDeleted"]
      271 SETTABLEKS                       R21 R20 K44 ["isDeleted"]
      273 SETTABLEKS                       R17 R20 K22 ["role"]
      275 GETTABLEKS                       R21 R11 K45 ["thumbsState"]
      277 SETTABLEKS                       R21 R20 K45 ["thumbsState"]
      279 SETTABLEKS                       R15 R20 K25 ["contents"]
      281 SETTABLEKS                       R16 R20 K48 ["contentCountLoaded"]
      283 GETTABLEKS                       R21 R11 K50 ["hidden"]
      285 SETTABLEKS                       R21 R20 K50 ["hidden"]
      287 FASTCALL2                        TABLE_INSERT R5 R20 ; [+4]
      289 MOVE                             R19 R5
      290 GETIMPORT                        R18 K55 [table.insert]
      292 CALL                             R18 2 0
      293 FORGLOOP                         R6 2 ; [-261]
      295 JUMP                             ; [+2]
      296 NEWTABLE                         R5 0 0
      298 LOADB                            R6 1
      299 DUPTABLE                         R7 K57 [{"messages", "cursor"}]
      300 SETTABLEKS                       R5 R7 K7 ["messages"]
      302 GETTABLEKS                       R8 R3 K56 ["cursor"]
      304 SETTABLEKS                       R8 R7 K56 ["cursor"]
      306 RETURN                           R6 2

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["serialize"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadMessagesAsync"]
        5 DUPTABLE                         R1 K4 [{"threadId", "body"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["threadId"]
        9 DUPTABLE                         R2 K6 [{"messages"}]
       10 GETUPVAL                         R3 2
       11 SETTABLEKS                       R3 R2 K5 ["messages"]
       13 SETTABLEKS                       R2 R1 K3 ["body"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_22:
        0 GETIMPORT                        R2 K2 [table.create]
        2 LENGTH                           R3 R1
        3 CALL                             R2 1 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 DUPTABLE                         R8 K7 [{"sourceId", "rootId", "thumbsState", "hidden"}]
        9 GETTABLEKS                       R10 R7 K3 ["sourceId"]
       11 ORK                              R9 R10 K8 []
       12 SETTABLEKS                       R9 R8 K3 ["sourceId"]
       14 GETTABLEKS                       R10 R7 K4 ["rootId"]
       16 ORK                              R9 R10 K8 []
       17 SETTABLEKS                       R9 R8 K4 ["rootId"]
       19 GETTABLEKS                       R10 R7 K5 ["thumbsState"]
       21 ORK                              R9 R10 K8 []
       22 SETTABLEKS                       R9 R8 K5 ["thumbsState"]
       24 GETTABLEKS                       R10 R7 K6 ["hidden"]
       26 ORK                              R9 R10 K8 []
       27 SETTABLEKS                       R9 R8 K6 ["hidden"]
       29 GETIMPORT                        R9 K10 [pcall]
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R8
       34 CALL                             R9 1 2
       35 JUMPIF                           R9 ; [+17]
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R11 R11 K11 ["FFlagDebugLogAssistantUI"]
       39 JUMPIFNOT                        R11 ; [+13]
       40 GETIMPORT                        R11 K13 [warn]
       42 LOADK                            R13 K14 ["[CloudIO] Failed to serialize metadata for message with messageId \"%*\" and role \"%*\". Error was \"%*\". Skipping this message."]
       43 GETTABLEKS                       R15 R7 K15 ["messageId"]
       45 GETTABLEKS                       R16 R7 K16 ["role"]
       47 MOVE                             R17 R10
       48 NAMECALL                         R13 R13 K17 ["format"]
       50 CALL                             R13 4 1
       51 MOVE                             R12 R13
       52 CALL                             R11 1 0
       53 GETIMPORT                        R11 K2 [table.create]
       55 GETTABLEKS                       R13 R7 K18 ["contentCountAdded"]
       57 GETTABLEKS                       R14 R7 K19 ["contentCountLoaded"]
       59 ADD                              R12 R13 R14
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R7 K20 ["contents"]
       63 JUMPIFNOT                        R12 ; [+98]
       64 MOVE                             R13 R12
       65 LOADNIL                          R14
       66 LOADNIL                          R15
       67 FORGPREP                         R13
       68 GETTABLEKS                       R18 R17 K21 ["contentId"]
       70 GETIMPORT                        R19 K10 [pcall]
       72 NEWCLOSURE                       R20 P1
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          VAL R17
       75 CALL                             R19 1 2
       76 JUMPIF                           R19 ; [+17]
       77 GETUPVAL                         R21 1
       78 GETTABLEKS                       R21 R21 K11 ["FFlagDebugLogAssistantUI"]
       80 JUMPIFNOT                        R21 ; [+79]
       81 GETIMPORT                        R21 K13 [warn]
       83 LOADK                            R23 K22 ["[CloudIO] Failed to serialize content with contentId \"%*\" in message \"%*\". Error was \"%*\". Skipping this content."]
       84 MOVE                             R25 R18
       85 GETTABLEKS                       R26 R7 K15 ["messageId"]
       87 MOVE                             R27 R20
       88 NAMECALL                         R23 R23 K17 ["format"]
       90 CALL                             R23 4 1
       91 MOVE                             R22 R23
       92 CALL                             R21 1 0
       93 JUMP                             ; [+66]
       94 MOVE                             R21 R20
       95 LOADNIL                          R22
       96 LOADNIL                          R23
       97 FORGPREP                         R21
       98 GETIMPORT                        R26 K10 [pcall]
      100 NEWCLOSURE                       R27 P2
      101 CAPTURE                          UPVAL U0
      102 CAPTURE                          VAL R25
      103 CALL                             R26 1 2
      104 JUMPIF                           R26 ; [+17]
      105 GETUPVAL                         R28 1
      106 GETTABLEKS                       R28 R28 K11 ["FFlagDebugLogAssistantUI"]
      108 JUMPIFNOT                        R28 ; [+49]
      109 GETIMPORT                        R28 K13 [warn]
      111 LOADK                            R30 K23 ["[CloudIO] Failed to encode content with contentId \"%*\" in message \"%*\". Error was \"%*\". Skipping this content."]
      112 MOVE                             R32 R18
      113 GETTABLEKS                       R33 R7 K15 ["messageId"]
      115 MOVE                             R34 R27
      116 NAMECALL                         R30 R30 K17 ["format"]
      118 CALL                             R30 4 1
      119 MOVE                             R29 R30
      120 CALL                             R28 1 0
      121 JUMP                             ; [+36]
      122 DUPTABLE                         R30 K30 [{"contentId", "sequenceNumber", "createdUtc", "updatedUtc", "isDeleted", "mcpVersion", "mcpContent"}]
      123 SETTABLEKS                       R18 R30 K21 ["contentId"]
      125 SETTABLEKS                       R24 R30 K24 ["sequenceNumber"]
      127 GETTABLEKS                       R31 R17 K31 ["createdAt"]
      129 SETTABLEKS                       R31 R30 K25 ["createdUtc"]
      131 GETTABLEKS                       R31 R17 K32 ["updatedAt"]
      133 SETTABLEKS                       R31 R30 K26 ["updatedUtc"]
      135 GETTABLEKS                       R31 R17 K27 ["isDeleted"]
      137 SETTABLEKS                       R31 R30 K27 ["isDeleted"]
      139 GETUPVAL                         R31 3
      140 GETTABLEKS                       R31 R31 K33 ["Types"]
      142 GETTABLEKS                       R31 R31 K34 ["LATEST_PROTOCOL_VERSION"]
      144 SETTABLEKS                       R31 R30 K28 ["mcpVersion"]
      146 JUMPIFNOT                        R26 ; [+2]
      147 MOVE                             R31 R27
      148 JUMP                             ; [+1]
      149 LOADNIL                          R31
      150 SETTABLEKS                       R31 R30 K29 ["mcpContent"]
      152 FASTCALL2                        TABLE_INSERT R11 R30 ; [+4]
      154 MOVE                             R29 R11
      155 GETIMPORT                        R28 K36 [table.insert]
      157 CALL                             R28 2 0
      158 FORGLOOP                         R21 2 ; [-61]
      160 FORGLOOP                         R13 2 ; [-93]
      162 DUPTABLE                         R15 K39 [{"threadId", "messageId", "createdUtc", "updatedUtc", "isDeleted", "role", "metadata", "contents"}]
      163 SETTABLEKS                       R0 R15 K37 ["threadId"]
      165 GETTABLEKS                       R16 R7 K15 ["messageId"]
      167 SETTABLEKS                       R16 R15 K15 ["messageId"]
      169 GETTABLEKS                       R16 R7 K31 ["createdAt"]
      171 SETTABLEKS                       R16 R15 K25 ["createdUtc"]
      173 GETTABLEKS                       R16 R7 K32 ["updatedAt"]
      175 SETTABLEKS                       R16 R15 K26 ["updatedUtc"]
      177 GETTABLEKS                       R16 R7 K27 ["isDeleted"]
      179 SETTABLEKS                       R16 R15 K27 ["isDeleted"]
      181 GETTABLEKS                       R16 R7 K16 ["role"]
      183 SETTABLEKS                       R16 R15 K16 ["role"]
      185 JUMPIFNOT                        R9 ; [+2]
      186 MOVE                             R16 R10
      187 JUMP                             ; [+1]
      188 LOADNIL                          R16
      189 SETTABLEKS                       R16 R15 K38 ["metadata"]
      191 SETTABLEKS                       R11 R15 K20 ["contents"]
      193 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
      195 MOVE                             R14 R2
      196 GETIMPORT                        R13 K36 [table.insert]
      198 CALL                             R13 2 0
      199 FORGLOOP                         R3 2 ; [-192]
      201 GETUPVAL                         R3 4
      202 GETTABLEKS                       R3 R3 K40 ["callWithOptions"]
      204 NEWCLOSURE                       R4 P3
      205 CAPTURE                          UPVAL U5
      206 CAPTURE                          VAL R0
      207 CAPTURE                          VAL R2
      208 NEWTABLE                         R5 0 0
      210 CALL                             R3 2 1
      211 GETTABLEKS                       R4 R3 K41 ["success"]
      213 JUMPIF                           R4 ; [+6]
      214 GETUPVAL                         R4 4
      215 GETTABLEKS                       R4 R4 K42 ["throwError"]
      217 MOVE                             R5 R3
      218 CALL                             R4 1 -1
      219 RETURN                           R4 -1
      220 GETTABLEKS                       R4 R3 K41 ["success"]
      222 RETURN                           R4 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["getMessagesAsync"]
        5 DUPTABLE                         R1 K5 [{"threadId", "cursor", "limit"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["threadId"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["cursor"]
       12 SETTABLEKS                       R2 R1 K3 ["cursor"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K4 ["limit"]
       17 SETTABLEKS                       R2 R1 K4 ["limit"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_24:
        0 GETTABLEKS                       R3 R0 K1 ["createdUtc"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K1 ["createdUtc"]
        5 ORK                              R3 R4 K0 [0]
        6 JUMPIFEQ                         R2 R3 ; [+6]
        8 JUMPIFLT                         R2 R3 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 RETURN                           R4 1
       13 GETTABLEKS                       R5 R0 K2 ["sequenceNumber"]
       15 ORK                              R4 R5 K0 [0]
       16 GETTABLEKS                       R6 R1 K2 ["sequenceNumber"]
       18 ORK                              R5 R6 K0 [0]
       19 JUMPIFEQ                         R4 R5 ; [+6]
       21 JUMPIFLT                         R4 R5 ; [+2]
       23 LOADB                            R6 0 +1
       24 LOADB                            R6 1
       25 RETURN                           R6 1
       26 GETTABLEKS                       R8 R0 K4 ["contentId"]
       28 ORK                              R7 R8 K3 [""]
       29 GETTABLEKS                       R9 R1 K4 ["contentId"]
       31 ORK                              R8 R9 K3 [""]
       32 JUMPIFLT                         R7 R8 ; [+2]
       34 LOADB                            R6 0 +1
       35 LOADB                            R6 1
       36 RETURN                           R6 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPTABLE                         R4 K3 [{["retryCount"] = 2}]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R2 K4 ["success"]
       11 JUMPIF                           R3 ; [+6]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["throwError"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1
       18 NEWTABLE                         R3 0 0
       20 GETTABLEKS                       R4 R2 K6 ["data"]
       22 GETTABLEKS                       R4 R4 K7 ["messages"]
       24 JUMPIF                           R4 ; [+2]
       25 NEWTABLE                         R4 0 0
       27 MOVE                             R5 R4
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 GETTABLEKS                       R10 R9 K8 ["messageId"]
       33 JUMPIFNOT                        R10 ; [+126]
       34 NEWTABLE                         R10 0 0
       36 NEWTABLE                         R11 0 0
       38 GETTABLEKS                       R12 R9 K9 ["contents"]
       40 JUMPIF                           R12 ; [+2]
       41 NEWTABLE                         R12 0 0
       43 GETIMPORT                        R13 K12 [table.sort]
       45 MOVE                             R14 R12
       46 DUPCLOSURE                       R15 K13 [PROTO_24]
       47 CALL                             R13 2 0
       48 MOVE                             R13 R12
       49 LOADNIL                          R14
       50 LOADNIL                          R15
       51 FORGPREP                         R13
       52 GETTABLEKS                       R18 R17 K14 ["mcpContent"]
       54 JUMPIFNOT                        R18 ; [+35]
       55 GETIMPORT                        R18 K16 [pcall]
       57 GETUPVAL                         R19 2
       58 GETTABLEKS                       R19 R19 K17 ["JSONDecode"]
       60 GETUPVAL                         R20 2
       61 GETTABLEKS                       R21 R17 K14 ["mcpContent"]
       63 CALL                             R18 3 2
       64 JUMPIFNOT                        R18 ; [+25]
       65 GETUPVAL                         R20 3
       66 MOVE                             R21 R19
       67 CALL                             R20 1 1
       68 MOVE                             R19 R20
       69 FASTCALL2                        TABLE_INSERT R10 R19 ; [+5]
       71 MOVE                             R21 R10
       72 MOVE                             R22 R19
       73 GETIMPORT                        R20 K19 [table.insert]
       75 CALL                             R20 2 0
       76 GETTABLEKS                       R22 R17 K20 ["contentId"]
       78 JUMPIF                           R22 ; [+5]
       79 GETUPVAL                         R22 2
       80 LOADB                            R24 0
       81 NAMECALL                         R22 R22 K21 ["GenerateGUID"]
       83 CALL                             R22 2 1
       84 FASTCALL2                        TABLE_INSERT R11 R22 ; [+4]
       86 MOVE                             R21 R11
       87 GETIMPORT                        R20 K19 [table.insert]
       89 CALL                             R20 2 0
       90 FORGLOOP                         R13 2 ; [-39]
       92 GETTABLEKS                       R14 R9 K22 ["role"]
       94 JUMPIFEQKNIL                     R14 ; [+10]
       96 GETUPVAL                         R16 4
       97 GETTABLEKS                       R16 R16 K23 ["Types"]
       99 GETTABLEKS                       R16 R16 K24 ["VALID_ROLES"]
      101 GETTABLE                         R15 R16 R14
      102 JUMPIFNOT                        R15 ; [+2]
      103 MOVE                             R13 R14
      104 JUMP                             ; [+1]
      105 LOADK                            R13 K25 ["system"]
      106 GETTABLEKS                       R14 R9 K22 ["role"]
      108 JUMPIFEQKNIL                     R14 ; [+21]
      110 GETTABLEKS                       R14 R9 K22 ["role"]
      112 JUMPIFEQ                         R14 R13 ; [+17]
      114 GETUPVAL                         R14 5
      115 GETTABLEKS                       R14 R14 K26 ["FFlagDebugLogAssistantUI"]
      117 JUMPIFNOT                        R14 ; [+12]
      118 GETIMPORT                        R14 K28 [warn]
      120 LOADK                            R16 K29 ["[CloudIO] Invalid role \"%*\" for message with messageId \"%*\". Defaulting to \"system\"."]
      121 GETTABLEKS                       R18 R9 K22 ["role"]
      123 GETTABLEKS                       R19 R9 K8 ["messageId"]
      125 NAMECALL                         R16 R16 K30 ["format"]
      127 CALL                             R16 3 1
      128 MOVE                             R15 R16
      129 CALL                             R14 1 0
      130 DUPTABLE                         R16 K35 [{"messageId", "contentIds", "createdAt", "updatedAt", "message"}]
      131 GETTABLEKS                       R17 R9 K8 ["messageId"]
      133 SETTABLEKS                       R17 R16 K8 ["messageId"]
      135 SETTABLEKS                       R11 R16 K31 ["contentIds"]
      137 GETTABLEKS                       R18 R9 K37 ["createdUtc"]
      139 ORK                              R17 R18 K36 [0]
      140 SETTABLEKS                       R17 R16 K32 ["createdAt"]
      142 GETTABLEKS                       R18 R9 K38 ["updatedUtc"]
      144 ORK                              R17 R18 K36 [0]
      145 SETTABLEKS                       R17 R16 K33 ["updatedAt"]
      147 DUPTABLE                         R17 K40 [{"role", "content"}]
      148 SETTABLEKS                       R13 R17 K22 ["role"]
      150 SETTABLEKS                       R10 R17 K39 ["content"]
      152 SETTABLEKS                       R17 R16 K34 ["message"]
      154 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
      156 MOVE                             R15 R3
      157 GETIMPORT                        R14 K19 [table.insert]
      159 CALL                             R14 2 0
      160 FORGLOOP                         R5 2 ; [-130]
      162 LOADB                            R5 1
      163 DUPTABLE                         R6 K42 [{"messages", "cursor"}]
      164 SETTABLEKS                       R3 R6 K7 ["messages"]
      166 GETTABLEKS                       R7 R2 K6 ["data"]
      168 GETTABLEKS                       R7 R7 K41 ["cursor"]
      170 SETTABLEKS                       R7 R6 K41 ["cursor"]
      172 RETURN                           R5 2

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadThreadsAsync"]
        5 DUPTABLE                         R1 K4 [{"placeId", "body"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["placeId"]
        9 SETTABLEKS                       R2 R1 K2 ["placeId"]
       11 DUPTABLE                         R2 K6 [{"threads"}]
       12 GETUPVAL                         R3 2
       13 SETTABLEKS                       R3 R2 K5 ["threads"]
       15 SETTABLEKS                       R2 R1 K3 ["body"]
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadMessagesAsync"]
        5 DUPTABLE                         R1 K4 [{"threadId", "body"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K5 ["sessionId"]
        9 SETTABLEKS                       R2 R1 K2 ["threadId"]
       11 DUPTABLE                         R2 K7 [{"messages"}]
       12 GETUPVAL                         R3 2
       13 SETTABLEKS                       R3 R2 K6 ["messages"]
       15 SETTABLEKS                       R2 R1 K3 ["body"]
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_28:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["title"]
        8 JUMPIFEQKNIL                     R8 ; [+5]
       10 GETTABLEKS                       R8 R7 K0 ["title"]
       12 JUMPIFNOTEQKS                    R8 K1 [""] ; [+11]
       14 GETIMPORT                        R8 K3 [warn]
       16 LOADK                            R10 K4 ["[CloudIO] ACP session %* has nil title before save; expected title from first user message or session/list"]
       17 GETTABLEKS                       R12 R7 K5 ["sessionId"]
       19 NAMECALL                         R10 R10 K6 ["format"]
       21 CALL                             R10 2 1
       22 MOVE                             R9 R10
       23 CALL                             R8 1 0
       24 DUPTABLE                         R10 K13 [{["threadId"], ["createdUtc"], ["updatedUtc"], ["lastActivityUtc"], ["isPinned"] = False, [6]}]
       25 GETTABLEKS                       R11 R7 K5 ["sessionId"]
       27 SETTABLEKS                       R11 R10 K7 ["threadId"]
       29 GETTABLEKS                       R11 R7 K14 ["createdAt"]
       31 SETTABLEKS                       R11 R10 K8 ["createdUtc"]
       33 GETTABLEKS                       R11 R7 K15 ["updatedAt"]
       35 SETTABLEKS                       R11 R10 K9 ["updatedUtc"]
       37 GETTABLEKS                       R11 R7 K15 ["updatedAt"]
       39 SETTABLEKS                       R11 R10 K10 ["lastActivityUtc"]
       41 GETTABLEKS                       R12 R7 K0 ["title"]
       43 ORK                              R11 R12 K1 [""]
       44 SETTABLEKS                       R11 R10 K0 ["title"]
       46 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       48 MOVE                             R9 R2
       49 GETIMPORT                        R8 K18 [table.insert]
       51 CALL                             R8 2 0
       52 FORGLOOP                         R3 2 ; [-47]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K19 ["callWithOptions"]
       57 NEWCLOSURE                       R4 P0
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 NEWTABLE                         R5 0 0
       63 CALL                             R3 2 1
       64 GETTABLEKS                       R4 R3 K20 ["success"]
       66 JUMPIF                           R4 ; [+6]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K21 ["throwError"]
       70 MOVE                             R5 R3
       71 CALL                             R4 1 -1
       72 RETURN                           R4 -1
       73 MOVE                             R4 R0
       74 LOADNIL                          R5
       75 LOADNIL                          R6
       76 FORGPREP                         R4
       77 NEWTABLE                         R9 0 0
       79 GETTABLEKS                       R10 R8 K22 ["messages"]
       81 LOADNIL                          R11
       82 LOADNIL                          R12
       83 FORGPREP                         R10
       84 NEWTABLE                         R15 0 0
       86 GETTABLEKS                       R16 R14 K23 ["message"]
       88 GETTABLEKS                       R16 R16 K24 ["content"]
       90 LOADNIL                          R17
       91 LOADNIL                          R18
       92 FORGPREP                         R16
       93 GETIMPORT                        R21 K26 [pcall]
       95 GETUPVAL                         R22 2
       96 GETTABLEKS                       R22 R22 K27 ["JSONEncode"]
       98 GETUPVAL                         R23 2
       99 GETUPVAL                         R24 3
      100 MOVE                             R25 R20
      101 CALL                             R24 1 1
      102 CALL                             R21 3 2
      103 JUMPIF                           R21 ; [+13]
      104 GETIMPORT                        R23 K29 [error]
      106 LOADK                            R25 K30 ["Failed to encode ACP message content: %*"]
      107 FASTCALL1                        TOSTRING R22 ; [+3]
      108 MOVE                             R28 R22
      109 GETIMPORT                        R27 K32 [tostring]
      111 CALL                             R27 1 1
      112 NAMECALL                         R25 R25 K6 ["format"]
      114 CALL                             R25 2 1
      115 MOVE                             R24 R25
      116 CALL                             R23 1 0
      117 GETTABLEKS                       R23 R14 K33 ["contentIds"]
      119 JUMPIFNOT                        R23 ; [+3]
      120 GETTABLEKS                       R24 R14 K33 ["contentIds"]
      122 GETTABLE                         R23 R24 R19
      123 JUMPIF                           R23 ; [+10]
      124 GETIMPORT                        R24 K29 [error]
      126 LOADK                            R26 K34 ["Missing stable ACP content id for message %*"]
      127 GETTABLEKS                       R28 R14 K35 ["messageId"]
      129 NAMECALL                         R26 R26 K6 ["format"]
      131 CALL                             R26 2 1
      132 MOVE                             R25 R26
      133 CALL                             R24 1 0
      134 DUPTABLE                         R26 K40 [{"contentId", "sequenceNumber", "createdUtc", "updatedUtc", "mcpVersion", "mcpContent"}]
      135 SETTABLEKS                       R23 R26 K36 ["contentId"]
      137 SETTABLEKS                       R19 R26 K37 ["sequenceNumber"]
      139 GETTABLEKS                       R27 R14 K14 ["createdAt"]
      141 SETTABLEKS                       R27 R26 K8 ["createdUtc"]
      143 GETTABLEKS                       R27 R14 K15 ["updatedAt"]
      145 SETTABLEKS                       R27 R26 K9 ["updatedUtc"]
      147 GETUPVAL                         R27 4
      148 GETTABLEKS                       R27 R27 K41 ["Types"]
      150 GETTABLEKS                       R27 R27 K42 ["LATEST_PROTOCOL_VERSION"]
      152 SETTABLEKS                       R27 R26 K38 ["mcpVersion"]
      154 SETTABLEKS                       R22 R26 K39 ["mcpContent"]
      156 FASTCALL2                        TABLE_INSERT R15 R26 ; [+4]
      158 MOVE                             R25 R15
      159 GETIMPORT                        R24 K18 [table.insert]
      161 CALL                             R24 2 0
      162 FORGLOOP                         R16 2 ; [-70]
      164 DUPTABLE                         R16 K46 [{"threadId", "messageId", "createdUtc", "updatedUtc", "role", "metadata", "contents"}]
      165 GETTABLEKS                       R17 R8 K5 ["sessionId"]
      167 SETTABLEKS                       R17 R16 K7 ["threadId"]
      169 GETTABLEKS                       R17 R14 K35 ["messageId"]
      171 SETTABLEKS                       R17 R16 K35 ["messageId"]
      173 GETTABLEKS                       R17 R14 K14 ["createdAt"]
      175 SETTABLEKS                       R17 R16 K8 ["createdUtc"]
      177 GETTABLEKS                       R17 R14 K15 ["updatedAt"]
      179 SETTABLEKS                       R17 R16 K9 ["updatedUtc"]
      181 GETTABLEKS                       R17 R14 K23 ["message"]
      183 GETTABLEKS                       R17 R17 K43 ["role"]
      185 SETTABLEKS                       R17 R16 K43 ["role"]
      187 GETUPVAL                         R17 5
      188 SETTABLEKS                       R17 R16 K44 ["metadata"]
      190 SETTABLEKS                       R15 R16 K45 ["contents"]
      192 FASTCALL2                        TABLE_INSERT R9 R16 ; [+5]
      194 MOVE                             R18 R9
      195 MOVE                             R19 R16
      196 GETIMPORT                        R17 K18 [table.insert]
      198 CALL                             R17 2 0
      199 FORGLOOP                         R10 2 ; [-116]
      201 GETUPVAL                         R10 6
      202 GETTABLEKS                       R10 R10 K47 ["FFlagDebugLogAssistantUI"]
      204 JUMPIFNOT                        R10 ; [+14]
      205 GETIMPORT                        R10 K49 [print]
      207 LOADK                            R12 K50 ["[CloudIO] ACP save before projectForLegacyStorage session=%* messages=%*: %*"]
      208 GETTABLEKS                       R14 R8 K5 ["sessionId"]
      210 LENGTH                           R15 R9
      211 GETUPVAL                         R16 7
      212 MOVE                             R17 R9
      213 CALL                             R16 1 1
      214 NAMECALL                         R12 R12 K6 ["format"]
      216 CALL                             R12 4 1
      217 MOVE                             R11 R12
      218 CALL                             R10 1 0
      219 GETUPVAL                         R10 8
      220 GETTABLEKS                       R10 R10 K51 ["projectForLegacyStorage"]
      222 MOVE                             R11 R9
      223 CALL                             R10 1 1
      224 MOVE                             R9 R10
      225 GETUPVAL                         R10 6
      226 GETTABLEKS                       R10 R10 K47 ["FFlagDebugLogAssistantUI"]
      228 JUMPIFNOT                        R10 ; [+14]
      229 GETIMPORT                        R10 K49 [print]
      231 LOADK                            R12 K52 ["[CloudIO] ACP save after projectForLegacyStorage session=%* messages=%*: %*"]
      232 GETTABLEKS                       R14 R8 K5 ["sessionId"]
      234 LENGTH                           R15 R9
      235 GETUPVAL                         R16 7
      236 MOVE                             R17 R9
      237 CALL                             R16 1 1
      238 NAMECALL                         R12 R12 K6 ["format"]
      240 CALL                             R12 4 1
      241 MOVE                             R11 R12
      242 CALL                             R10 1 0
      243 LENGTH                           R10 R9
      244 LOADN                            R11 0
      245 JUMPIFNOTLT                      R11 R10 ; [+20]
      247 GETUPVAL                         R10 0
      248 GETTABLEKS                       R10 R10 K19 ["callWithOptions"]
      250 NEWCLOSURE                       R11 P1
      251 CAPTURE                          UPVAL U1
      252 CAPTURE                          VAL R8
      253 CAPTURE                          REF R9
      254 DUPTABLE                         R12 K55 [{["retryCount"] = 2}]
      255 CALL                             R10 2 1
      256 GETTABLEKS                       R11 R10 K20 ["success"]
      258 JUMPIF                           R11 ; [+7]
      259 GETUPVAL                         R11 0
      260 GETTABLEKS                       R11 R11 K21 ["throwError"]
      262 MOVE                             R12 R10
      263 CALL                             R11 1 -1
      264 CLOSEUPVALS                      R9
      265 RETURN                           R11 -1
      266 CLOSEUPVALS                      R9
      267 FORGLOOP                         R4 2 ; [-191]
      269 LOADB                            R4 1
      270 RETURN                           R4 1

PROTO_29:
        0 DUPTABLE                         R0 K7 [{"getThreadsAsync", "uploadThreadsAsync", "deleteThreadAsync", "getMessagesAsync", "uploadMessagesAsync", "getAgentMessagesAsync", "uploadAgentSessionsAsync"}]
        1 DUPCLOSURE                       R1 K8 [PROTO_7]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 SETTABLEKS                       R1 R0 K0 ["getThreadsAsync"]
        8 DUPCLOSURE                       R1 K9 [PROTO_10]
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R1 R0 K1 ["uploadThreadsAsync"]
       15 DUPCLOSURE                       R1 K10 [PROTO_12]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 SETTABLEKS                       R1 R0 K2 ["deleteThreadAsync"]
       20 DUPCLOSURE                       R1 K11 [PROTO_17]
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 SETTABLEKS                       R1 R0 K3 ["getMessagesAsync"]
       29 DUPCLOSURE                       R1 K12 [PROTO_22]
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U1
       36 SETTABLEKS                       R1 R0 K4 ["uploadMessagesAsync"]
       38 GETUPVAL                         R2 7
       39 CALL                             R2 0 1
       40 JUMPIFNOT                        R2 ; [+8]
       41 DUPCLOSURE                       R1 K13 [PROTO_25]
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U3
       48 JUMP                             ; [+1]
       49 LOADNIL                          R1
       50 SETTABLEKS                       R1 R0 K5 ["getAgentMessagesAsync"]
       52 GETUPVAL                         R2 7
       53 CALL                             R2 0 1
       54 JUMPIFNOT                        R2 ; [+11]
       55 DUPCLOSURE                       R1 K14 [PROTO_28]
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          UPVAL U10
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U11
       64 CAPTURE                          UPVAL U12
       65 JUMP                             ; [+1]
       66 LOADNIL                          R1
       67 SETTABLEKS                       R1 R0 K6 ["uploadAgentSessionsAsync"]
       69 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Flags"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K14 ["ModelContextProtocol"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K15 ["OpenApiMcpAssistantStorageApi"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Src"]
       45 GETTABLEKS                       R7 R7 K16 ["Util"]
       47 GETTABLEKS                       R7 R7 K17 ["StudioEndpointUtil"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R2 K18 ["FlagUtils"]
       52 GETTABLEKS                       R7 R7 K19 ["getIsAssistantHarnessSplit"]
       54 GETIMPORT                        R8 K9 [require]
       56 GETTABLEKS                       R9 R0 K10 ["Packages"]
       58 GETTABLEKS                       R9 R9 K20 ["_Index"]
       60 GETTABLEKS                       R9 R9 K15 ["OpenApiMcpAssistantStorageApi"]
       62 GETTABLEKS                       R9 R9 K15 ["OpenApiMcpAssistantStorageApi"]
       64 GETTABLEKS                       R9 R9 K21 ["Models"]
       66 GETTABLEKS                       R9 R9 K22 ["ContentBody"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K9 [require]
       71 GETTABLEKS                       R10 R0 K10 ["Packages"]
       73 GETTABLEKS                       R10 R10 K20 ["_Index"]
       75 GETTABLEKS                       R10 R10 K15 ["OpenApiMcpAssistantStorageApi"]
       77 GETTABLEKS                       R10 R10 K15 ["OpenApiMcpAssistantStorageApi"]
       79 GETTABLEKS                       R10 R10 K21 ["Models"]
       81 GETTABLEKS                       R10 R10 K23 ["MessageBody"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K9 [require]
       86 GETTABLEKS                       R11 R0 K10 ["Packages"]
       88 GETTABLEKS                       R11 R11 K20 ["_Index"]
       90 GETTABLEKS                       R11 R11 K15 ["OpenApiMcpAssistantStorageApi"]
       92 GETTABLEKS                       R11 R11 K15 ["OpenApiMcpAssistantStorageApi"]
       94 GETTABLEKS                       R11 R11 K21 ["Models"]
       96 GETTABLEKS                       R11 R11 K24 ["ThreadBody"]
       98 CALL                             R10 1 1
       99 GETTABLEKS                       R11 R2 K25 ["Serializer"]
      101 GETTABLEKS                       R12 R2 K26 ["Persistence"]
      103 GETTABLEKS                       R12 R12 K27 ["HistoryNormalizer"]
      105 DUPTABLE                         R15 K29 [{"historyWriter"}]
      106 GETTABLEKS                       R16 R12 K30 ["ACP_HISTORY_WRITER"]
      108 SETTABLEKS                       R16 R15 K28 ["historyWriter"]
      110 NAMECALL                         R13 R1 K31 ["JSONEncode"]
      112 CALL                             R13 2 1
      113 DUPCLOSURE                       R14 K32 [PROTO_0]
      114 CAPTURE                          VAL R2
      115 DUPCLOSURE                       R15 K33 [PROTO_1]
      116 CAPTURE                          VAL R7
      117 DUPCLOSURE                       R16 K34 [PROTO_2]
      118 DUPCLOSURE                       R17 K35 [PROTO_3]
      119 DUPCLOSURE                       R18 K36 [PROTO_4]
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R17
      122 DUPCLOSURE                       R19 K37 [PROTO_29]
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R12
      136 DUPTABLE                         R20 K40 [{"createCloudIO", "deserializeAgentContent"}]
      137 SETTABLEKS                       R19 R20 K38 ["createCloudIO"]
      139 SETTABLEKS                       R16 R20 K39 ["deserializeAgentContent"]
      141 RETURN                           R20 1
