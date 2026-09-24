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
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R3 1
        3 FASTCALL1                        MATH_FLOOR R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K2 [math.floor]
        7 CALL                             R4 1 1
        8 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       10 GETIMPORT                        R2 K4 [math.max]
       12 CALL                             R2 2 1
       13 FASTCALL2                        TABLE_INSERT R1 R2 ; [+5]
       15 MOVE                             R4 R1
       16 MOVE                             R5 R2
       17 GETIMPORT                        R3 K7 [table.insert]
       19 CALL                             R3 2 0
       20 JUMPIFEQKN                       R2 K8 [1] ; [+14]
       22 LOADN                            R4 1
       23 DIVK                             R6 R2 K9 [2]
       24 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       25 GETIMPORT                        R5 K2 [math.floor]
       27 CALL                             R5 1 1
       28 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       30 GETIMPORT                        R3 K4 [math.max]
       32 CALL                             R3 2 1
       33 MOVE                             R2 R3
       34 JUMPBACK                         ; [-22]
       35 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["success"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+17]
        4 LOADB                            R1 0
        5 GETTABLEKS                       R3 R0 K1 ["errorDetails"]
        7 FASTCALL1                        TYPEOF R3 ; [+2]
        8 GETIMPORT                        R2 K3 [typeof]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+9]
       13 GETTABLEKS                       R2 R0 K1 ["errorDetails"]
       15 GETTABLEKS                       R2 R2 K5 ["kind"]
       17 JUMPIFEQKS                       R2 K6 ["Network"] ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["text"] ; [+25]
        4 GETTABLEKS                       R1 R0 K2 ["_meta"]
        6 JUMPIFNOTEQKNIL                  R1 ; [+21]
        8 DUPTABLE                         R1 K3 [{[1] = "text", ["text"], ["_meta"]}]
        9 GETTABLEKS                       R3 R0 K1 ["text"]
       11 ORK                              R2 R3 K4 [""]
       12 SETTABLEKS                       R2 R1 K1 ["text"]
       14 DUPTABLE                         R2 K6 [{"roblox_studio_assistant"}]
       15 DUPTABLE                         R3 K9 [{"base", "widget"}]
       16 DUPTABLE                         R4 K11 [{[1] = "Text"}]
       17 SETTABLEKS                       R4 R3 K7 ["base"]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K8 ["widget"]
       23 SETTABLEKS                       R3 R2 K5 ["roblox_studio_assistant"]
       25 SETTABLEKS                       R2 R1 K2 ["_meta"]
       27 RETURN                           R1 1
       28 GETTABLEKS                       R1 R0 K0 ["type"]
       30 JUMPIFNOTEQKS                    R1 K12 ["thinking"] ; [+24]
       32 DUPTABLE                         R1 K3 [{[1] = "text", ["text"], ["_meta"]}]
       33 GETTABLEKS                       R3 R0 K12 ["thinking"]
       35 ORK                              R2 R3 K4 [""]
       36 SETTABLEKS                       R2 R1 K1 ["text"]
       38 DUPTABLE                         R2 K6 [{"roblox_studio_assistant"}]
       39 DUPTABLE                         R3 K9 [{"base", "widget"}]
       40 DUPTABLE                         R4 K14 [{[1] = "Thinking"}]
       41 SETTABLEKS                       R4 R3 K7 ["base"]
       43 DUPTABLE                         R4 K16 [{"signature"}]
       44 GETTABLEKS                       R5 R0 K15 ["signature"]
       46 SETTABLEKS                       R5 R4 K15 ["signature"]
       48 SETTABLEKS                       R4 R3 K8 ["widget"]
       50 SETTABLEKS                       R3 R2 K5 ["roblox_studio_assistant"]
       52 SETTABLEKS                       R2 R1 K2 ["_meta"]
       54 RETURN                           R1 1
       55 GETTABLEKS                       R1 R0 K0 ["type"]
       57 JUMPIFNOTEQKS                    R1 K17 ["tool_result"] ; [+22]
       59 DUPTABLE                         R1 K22 [{[1] = "tool_result", ["toolUseId"], ["content"], ["structuredContent"], ["isError"]}]
       60 GETTABLEKS                       R2 R0 K18 ["toolUseId"]
       62 JUMPIF                           R2 ; [+2]
       63 GETTABLEKS                       R2 R0 K23 ["id"]
       65 SETTABLEKS                       R2 R1 K18 ["toolUseId"]
       67 GETTABLEKS                       R2 R0 K19 ["content"]
       69 SETTABLEKS                       R2 R1 K19 ["content"]
       71 GETTABLEKS                       R2 R0 K20 ["structuredContent"]
       73 SETTABLEKS                       R2 R1 K20 ["structuredContent"]
       75 GETTABLEKS                       R2 R0 K21 ["isError"]
       77 SETTABLEKS                       R2 R1 K21 ["isError"]
       79 RETURN                           R1 1
       80 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K1 ["JSONEncode"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["Json"]
       13 GETTABLEKS                       R1 R1 K3 ["encode"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K1 ["JSONDecode"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["Json"]
       13 GETTABLEKS                       R1 R1 K3 ["decode"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["tool_use"] ; [+18]
        4 LOADK                            R1 K2 ["tool_use(id=%*, name=%*)"]
        5 GETTABLEKS                       R4 R0 K3 ["id"]
        7 FASTCALL1                        TOSTRING R4 ; [+2]
        8 GETIMPORT                        R3 K5 [tostring]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R5 R0 K6 ["name"]
       13 FASTCALL1                        TOSTRING R5 ; [+2]
       14 GETIMPORT                        R4 K5 [tostring]
       16 CALL                             R4 1 1
       17 NAMECALL                         R1 R1 K7 ["format"]
       19 CALL                             R1 3 1
       20 RETURN                           R1 1
       21 GETTABLEKS                       R1 R0 K0 ["type"]
       23 JUMPIFNOTEQKS                    R1 K8 ["tool_result"] ; [+15]
       25 LOADK                            R1 K9 ["tool_result(toolUseId=%*)"]
       26 GETTABLEKS                       R4 R0 K10 ["toolUseId"]
       28 JUMPIF                           R4 ; [+2]
       29 GETTABLEKS                       R4 R0 K3 ["id"]
       31 FASTCALL1                        TOSTRING R4 ; [+2]
       32 GETIMPORT                        R3 K5 [tostring]
       34 CALL                             R3 1 1
       35 NAMECALL                         R1 R1 K7 ["format"]
       37 CALL                             R1 2 1
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K0 ["type"]
       41 JUMPIFNOTEQKS                    R1 K11 ["text"] ; [+26]
       43 GETTABLEKS                       R3 R0 K11 ["text"]
       45 FASTCALL1                        TYPEOF R3 ; [+2]
       46 GETIMPORT                        R2 K13 [typeof]
       48 CALL                             R2 1 1
       49 JUMPIFNOTEQKS                    R2 K14 ["string"] ; [+4]
       51 GETTABLEKS                       R1 R0 K11 ["text"]
       53 JUMP                             ; [+1]
       54 LOADK                            R1 K15 [""]
       55 LOADK                            R2 K16 ["text(%*)"]
       56 LOADN                            R6 1
       57 LOADN                            R7 24
       58 FASTCALL3                        STRING_SUB R1 R6 R7
       60 MOVE                             R5 R1
       61 GETIMPORT                        R4 K18 [string.sub]
       63 CALL                             R4 3 1
       64 NAMECALL                         R2 R2 K7 ["format"]
       66 CALL                             R2 2 1
       67 RETURN                           R2 1
       68 GETTABLEKS                       R1 R0 K0 ["type"]
       70 JUMPIFNOTEQKS                    R1 K19 ["thinking"] ; [+3]
       72 LOADK                            R1 K19 ["thinking"]
       73 RETURN                           R1 1
       74 GETTABLEKS                       R2 R0 K0 ["type"]
       76 FASTCALL1                        TOSTRING R2 ; [+2]
       77 GETIMPORT                        R1 K5 [tostring]
       79 CALL                             R1 1 1
       80 RETURN                           R1 1

PROTO_8:
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
       43 LOADK                            R17 K11 ["%*:%*"]
       44 MOVE                             R19 R12
       45 JUMPIFNOT                        R14 ; [+4]
       46 GETUPVAL                         R20 1
       47 MOVE                             R21 R14
       48 CALL                             R20 1 1
       49 JUMP                             ; [+6]
       50 GETTABLEKS                       R21 R13 K4 ["mcpContent"]
       52 FASTCALL1                        TOSTRING R21 ; [+2]
       53 GETIMPORT                        R20 K13 [tostring]
       55 CALL                             R20 1 1
       56 NAMECALL                         R17 R17 K14 ["format"]
       58 CALL                             R17 3 1
       59 FASTCALL2                        TABLE_INSERT R8 R17 ; [+4]
       61 MOVE                             R16 R8
       62 GETIMPORT                        R15 K16 [table.insert]
       64 CALL                             R15 2 0
       65 FORGLOOP                         R9 2 ; [-45]
       67 LOADK                            R11 K17 ["%*:%*:%*[%*]"]
       68 MOVE                             R13 R5
       69 GETTABLEKS                       R14 R6 K18 ["role"]
       71 GETTABLEKS                       R15 R6 K19 ["messageId"]
       73 GETIMPORT                        R16 K21 [table.concat]
       75 MOVE                             R17 R8
       76 LOADK                            R18 K22 [", "]
       77 CALL                             R16 2 1
       78 NAMECALL                         R11 R11 K14 ["format"]
       80 CALL                             R11 5 1
       81 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       83 MOVE                             R10 R1
       84 GETIMPORT                        R9 K16 [table.insert]
       86 CALL                             R9 2 0
       87 FORGLOOP                         R2 2 ; [-80]
       89 GETIMPORT                        R2 K21 [table.concat]
       91 MOVE                             R3 R1
       92 LOADK                            R4 K23 [" | "]
       93 CALL                             R2 2 -1
       94 RETURN                           R2 -1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_11:
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
       22 JUMPIFNOT                        R3 ; [+148]
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
       35 JUMPIFNOT                        R11 ; [+37]
       36 FASTCALL1                        TYPEOF R11 ; [+3]
       37 MOVE                             R13 R11
       38 GETIMPORT                        R12 K13 [typeof]
       40 CALL                             R12 1 1
       41 JUMPIFNOTEQKS                    R12 K14 ["string"] ; [+31]
       43 LENGTH                           R12 R11
       44 LOADN                            R13 0
       45 JUMPIFNOTLT                      R13 R12 ; [+27]
       47 GETIMPORT                        R12 K16 [pcall]
       49 NEWCLOSURE                       R13 P1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R11
       52 CALL                             R12 1 2
       53 JUMPIF                           R12 ; [+15]
       54 GETUPVAL                         R14 3
       55 GETTABLEKS                       R14 R14 K17 ["FFlagDebugLogAssistantUI"]
       57 JUMPIFNOT                        R14 ; [+11]
       58 GETIMPORT                        R14 K19 [warn]
       60 LOADK                            R15 K20 ["[CloudIO] Failed to decode metadata for thread with title \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this thread."]
       61 GETTABLEKS                       R17 R9 K21 ["title"]
       63 MOVE                             R18 R11
       64 MOVE                             R19 R13
       65 NAMECALL                         R15 R15 K22 ["format"]
       67 CALL                             R15 4 1
       68 CALL                             R14 1 0
       69 JUMPIFNOT                        R12 ; [+2]
       70 MOVE                             R10 R13
       71 JUMP                             ; [+1]
       72 LOADNIL                          R10
       73 MOVE                             R12 R10
       74 JUMPIF                           R12 ; [+2]
       75 NEWTABLE                         R12 0 0
       77 MOVE                             R10 R12
       78 GETTABLEKS                       R12 R9 K23 ["threadId"]
       80 JUMPIF                           R12 ; [+15]
       81 GETUPVAL                         R13 3
       82 GETTABLEKS                       R13 R13 K17 ["FFlagDebugLogAssistantUI"]
       84 JUMPIFNOT                        R13 ; [+83]
       85 GETIMPORT                        R13 K19 [warn]
       87 LOADK                            R14 K24 ["[CloudIO] threadId missing for thread with title \"%*\" and metadata \"%*\". Skipping this thread."]
       88 GETTABLEKS                       R16 R9 K21 ["title"]
       90 MOVE                             R17 R11
       91 NAMECALL                         R14 R14 K22 ["format"]
       93 CALL                             R14 3 1
       94 CALL                             R13 1 0
       95 JUMP                             ; [+72]
       96 LOADNIL                          R13
       97 GETTABLEKS                       R14 R10 K25 ["loadUntilMessageId"]
       99 JUMPIFNOT                        R14 ; [+6]
      100 DUPTABLE                         R14 K26 [{"loadUntilMessageId"}]
      101 GETTABLEKS                       R15 R10 K25 ["loadUntilMessageId"]
      103 SETTABLEKS                       R15 R14 K25 ["loadUntilMessageId"]
      105 MOVE                             R13 R14
      106 DUPTABLE                         R16 K45 [{["threadId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["lastActivityAt"], ["title"], ["isPinned"], ["lastViewedAt"], ["messages"], ["messageLoadState"] = , ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0, ["metadata"]}]
      107 SETTABLEKS                       R12 R16 K23 ["threadId"]
      109 GETTABLEKS                       R17 R10 K27 ["sourceId"]
      111 SETTABLEKS                       R17 R16 K27 ["sourceId"]
      113 GETTABLEKS                       R17 R10 K28 ["rootId"]
      115 SETTABLEKS                       R17 R16 K28 ["rootId"]
      117 GETTABLEKS                       R18 R9 K46 ["createdUtc"]
      119 ORK                              R17 R18 K43 [0]
      120 SETTABLEKS                       R17 R16 K29 ["createdAt"]
      122 GETTABLEKS                       R18 R9 K47 ["updatedUtc"]
      124 ORK                              R17 R18 K43 [0]
      125 SETTABLEKS                       R17 R16 K30 ["updatedAt"]
      127 GETTABLEKS                       R17 R9 K34 ["isDeleted"]
      129 SETTABLEKS                       R17 R16 K34 ["isDeleted"]
      131 GETTABLEKS                       R18 R9 K48 ["lastActivityUtc"]
      133 ORK                              R17 R18 K43 [0]
      134 SETTABLEKS                       R17 R16 K35 ["lastActivityAt"]
      136 GETTABLEKS                       R17 R9 K21 ["title"]
      138 JUMPIF                           R17 ; [+5]
      139 LOADK                            R17 K49 ["IMPORTED_THREAD_%*"]
      140 MOVE                             R19 R12
      141 NAMECALL                         R17 R17 K22 ["format"]
      143 CALL                             R17 2 1
      144 SETTABLEKS                       R17 R16 K21 ["title"]
      146 GETTABLEKS                       R18 R9 K36 ["isPinned"]
      148 ORK                              R17 R18 K32 [False]
      149 SETTABLEKS                       R17 R16 K36 ["isPinned"]
      151 GETTABLEKS                       R18 R10 K37 ["lastViewedAt"]
      153 ORK                              R17 R18 K50 [-1]
      154 SETTABLEKS                       R17 R16 K37 ["lastViewedAt"]
      156 NEWTABLE                         R17 0 0
      158 SETTABLEKS                       R17 R16 K38 ["messages"]
      160 SETTABLEKS                       R13 R16 K11 ["metadata"]
      162 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      164 MOVE                             R15 R4
      165 GETIMPORT                        R14 K52 [table.insert]
      167 CALL                             R14 2 0
      168 FORGLOOP                         R5 2 ; [-137]
      170 JUMP                             ; [+2]
      171 NEWTABLE                         R4 0 0
      173 LOADB                            R5 1
      174 DUPTABLE                         R6 K54 [{"threads", "cursor"}]
      175 SETTABLEKS                       R4 R6 K7 ["threads"]
      177 GETTABLEKS                       R7 R2 K53 ["cursor"]
      179 SETTABLEKS                       R7 R6 K53 ["cursor"]
      181 RETURN                           R5 2

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_13:
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

PROTO_14:
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
       24 GETTABLEKS                       R10 R7 K9 ["metadata"]
       26 JUMPIFNOT                        R10 ; [+5]
       27 GETTABLEKS                       R9 R7 K9 ["metadata"]
       29 GETTABLEKS                       R9 R9 K6 ["loadUntilMessageId"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R9
       33 SETTABLEKS                       R9 R8 K6 ["loadUntilMessageId"]
       35 GETIMPORT                        R9 K11 [pcall]
       37 NEWCLOSURE                       R10 P0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R8
       40 CALL                             R9 1 2
       41 JUMPIF                           R9 ; [+16]
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R11 R11 K12 ["FFlagDebugLogAssistantUI"]
       45 JUMPIFNOT                        R11 ; [+12]
       46 GETIMPORT                        R11 K14 [warn]
       48 LOADK                            R12 K15 ["[CloudIO] Failed to serialize metadata for thread with threadId \"%*\" and title \"%*\". Error was \"%*\". Skipping this thread."]
       49 GETTABLEKS                       R14 R7 K16 ["threadId"]
       51 GETTABLEKS                       R15 R7 K17 ["title"]
       53 MOVE                             R16 R10
       54 NAMECALL                         R12 R12 K18 ["format"]
       56 CALL                             R12 4 1
       57 CALL                             R11 1 0
       58 DUPTABLE                         R13 K24 [{"threadId", "createdUtc", "updatedUtc", "isDeleted", "lastActivityUtc", "isPinned", "title", "metadata"}]
       59 GETTABLEKS                       R14 R7 K16 ["threadId"]
       61 SETTABLEKS                       R14 R13 K16 ["threadId"]
       63 GETTABLEKS                       R14 R7 K25 ["createdAt"]
       65 SETTABLEKS                       R14 R13 K19 ["createdUtc"]
       67 GETTABLEKS                       R14 R7 K26 ["updatedAt"]
       69 SETTABLEKS                       R14 R13 K20 ["updatedUtc"]
       71 GETTABLEKS                       R14 R7 K21 ["isDeleted"]
       73 SETTABLEKS                       R14 R13 K21 ["isDeleted"]
       75 GETTABLEKS                       R14 R7 K27 ["lastActivityAt"]
       77 SETTABLEKS                       R14 R13 K22 ["lastActivityUtc"]
       79 GETTABLEKS                       R14 R7 K23 ["isPinned"]
       81 SETTABLEKS                       R14 R13 K23 ["isPinned"]
       83 GETTABLEKS                       R14 R7 K17 ["title"]
       85 SETTABLEKS                       R14 R13 K17 ["title"]
       87 JUMPIFNOT                        R9 ; [+2]
       88 MOVE                             R14 R10
       89 JUMP                             ; [+1]
       90 LOADNIL                          R14
       91 SETTABLEKS                       R14 R13 K9 ["metadata"]
       93 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       95 MOVE                             R12 R2
       96 GETIMPORT                        R11 K29 [table.insert]
       98 CALL                             R11 2 0
       99 FORGLOOP                         R3 2 ; [-92]
      101 GETUPVAL                         R3 2
      102 GETTABLEKS                       R3 R3 K30 ["callWithOptions"]
      104 NEWCLOSURE                       R4 P1
      105 CAPTURE                          UPVAL U3
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R2
      108 NEWTABLE                         R5 0 0
      110 CALL                             R3 2 1
      111 GETTABLEKS                       R4 R3 K31 ["success"]
      113 JUMPIF                           R4 ; [+6]
      114 GETUPVAL                         R4 2
      115 GETTABLEKS                       R4 R4 K32 ["throwError"]
      117 MOVE                             R5 R3
      118 CALL                             R4 1 -1
      119 RETURN                           R4 -1
      120 GETTABLEKS                       R4 R3 K31 ["success"]
      122 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["deleteThreadAsync"]
        5 DUPTABLE                         R1 K3 [{"threadId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["threadId"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deserialize"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_21:
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
       23 JUMPIFNOT                        R4 ; [+265]
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
       36 JUMPIFNOT                        R12 ; [+39]
       37 FASTCALL1                        TYPEOF R12 ; [+3]
       38 MOVE                             R14 R12
       39 GETIMPORT                        R13 K13 [typeof]
       41 CALL                             R13 1 1
       42 JUMPIFNOTEQKS                    R13 K14 ["string"] ; [+33]
       44 LENGTH                           R13 R12
       45 LOADN                            R14 0
       46 JUMPIFNOTLT                      R14 R13 ; [+29]
       48 GETIMPORT                        R13 K16 [pcall]
       50 NEWCLOSURE                       R14 P1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R12
       53 CALL                             R13 1 2
       54 JUMPIF                           R13 ; [+17]
       55 GETUPVAL                         R15 3
       56 GETTABLEKS                       R15 R15 K17 ["FFlagDebugLogAssistantUI"]
       58 JUMPIFNOT                        R15 ; [+13]
       59 GETIMPORT                        R15 K19 [warn]
       61 LOADK                            R16 K20 ["[CloudIO] Failed to decode metadata for message with messageId \"%*\" and role \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this message."]
       62 GETTABLEKS                       R18 R10 K21 ["messageId"]
       64 GETTABLEKS                       R19 R10 K22 ["role"]
       66 MOVE                             R20 R12
       67 MOVE                             R21 R14
       68 NAMECALL                         R16 R16 K23 ["format"]
       70 CALL                             R16 5 1
       71 CALL                             R15 1 0
       72 JUMPIFNOT                        R13 ; [+2]
       73 MOVE                             R11 R14
       74 JUMP                             ; [+1]
       75 LOADNIL                          R11
       76 MOVE                             R13 R11
       77 JUMPIF                           R13 ; [+2]
       78 NEWTABLE                         R13 0 0
       80 MOVE                             R11 R13
       81 GETTABLEKS                       R13 R10 K21 ["messageId"]
       83 JUMPIF                           R13 ; [+15]
       84 GETUPVAL                         R14 3
       85 GETTABLEKS                       R14 R14 K17 ["FFlagDebugLogAssistantUI"]
       87 JUMPIFNOT                        R14 ; [+198]
       88 GETIMPORT                        R14 K19 [warn]
       90 LOADK                            R15 K24 ["[CloudIO] messageId missing for message with role \"%*\" and metadata \"%*\". Skipping this message."]
       91 GETTABLEKS                       R17 R10 K22 ["role"]
       93 MOVE                             R18 R12
       94 NAMECALL                         R15 R15 K23 ["format"]
       96 CALL                             R15 3 1
       97 CALL                             R14 1 0
       98 JUMP                             ; [+187]
       99 GETTABLEKS                       R14 R10 K25 ["contents"]
      101 NEWTABLE                         R15 0 0
      103 LOADN                            R16 0
      104 JUMPIFNOT                        R14 ; [+100]
      105 GETIMPORT                        R17 K10 [table.create]
      107 LENGTH                           R18 R14
      108 CALL                             R17 1 1
      109 MOVE                             R18 R14
      110 LOADNIL                          R19
      111 LOADNIL                          R20
      112 FORGPREP                         R18
      113 GETTABLEKS                       R23 R22 K26 ["mcpContent"]
      115 JUMPIF                           R23 ; [+11]
      116 GETIMPORT                        R24 K19 [warn]
      118 LOADK                            R25 K27 ["[CloudIO] mcpContent missing for content with contentId \"%*\" in message \"%*\". Skipping this content."]
      119 GETTABLEKS                       R27 R22 K28 ["contentId"]
      121 MOVE                             R28 R13
      122 NAMECALL                         R25 R25 K23 ["format"]
      124 CALL                             R25 3 1
      125 CALL                             R24 1 0
      126 JUMP                             ; [+44]
      127 GETTABLEKS                       R24 R22 K28 ["contentId"]
      129 JUMPIF                           R24 ; [+14]
      130 GETUPVAL                         R25 3
      131 GETTABLEKS                       R25 R25 K17 ["FFlagDebugLogAssistantUI"]
      133 JUMPIFNOT                        R25 ; [+37]
      134 GETIMPORT                        R25 K19 [warn]
      136 LOADK                            R26 K29 ["[CloudIO] contentId missing for content with mcpContent \"%*\" in message \"%*\". Skipping this content."]
      137 MOVE                             R28 R23
      138 MOVE                             R29 R13
      139 NAMECALL                         R26 R26 K23 ["format"]
      141 CALL                             R26 3 1
      142 CALL                             R25 1 0
      143 JUMP                             ; [+27]
      144 GETIMPORT                        R25 K16 [pcall]
      146 NEWCLOSURE                       R26 P2
      147 CAPTURE                          UPVAL U2
      148 CAPTURE                          VAL R23
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R0
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R22
      154 CALL                             R25 1 2
      155 JUMPIF                           R25 ; [+15]
      156 GETUPVAL                         R27 3
      157 GETTABLEKS                       R27 R27 K17 ["FFlagDebugLogAssistantUI"]
      159 JUMPIFNOT                        R27 ; [+11]
      160 GETIMPORT                        R27 K19 [warn]
      162 LOADK                            R28 K30 ["[CloudIO] Failed to deserialize content with contentId \"%*\" in message \"%*\". mcpContent was \"%*\". Error was \"%*\". Skipping this content."]
      163 MOVE                             R30 R24
      164 MOVE                             R31 R13
      165 MOVE                             R32 R23
      166 MOVE                             R33 R26
      167 NAMECALL                         R28 R28 K23 ["format"]
      169 CALL                             R28 5 1
      170 CALL                             R27 1 0
      171 FORGLOOP                         R18 2 ; [-59]
      173 GETIMPORT                        R18 K16 [pcall]
      175 NEWCLOSURE                       R19 P3
      176 CAPTURE                          UPVAL U4
      177 CAPTURE                          VAL R17
      178 CALL                             R18 1 2
      179 JUMPIF                           R18 ; [+15]
      180 GETUPVAL                         R20 3
      181 GETTABLEKS                       R20 R20 K17 ["FFlagDebugLogAssistantUI"]
      183 JUMPIFNOT                        R20 ; [+102]
      184 GETIMPORT                        R20 K19 [warn]
      186 LOADK                            R21 K31 ["[CloudIO] Failed to deserialize content in message \"%*\". deserializableContents was \"%*\". Error was \"%*\". Skipping this content."]
      187 MOVE                             R23 R13
      188 MOVE                             R24 R17
      189 MOVE                             R25 R19
      190 NAMECALL                         R21 R21 K23 ["format"]
      192 CALL                             R21 4 1
      193 CALL                             R20 1 0
      194 JUMP                             ; [+91]
      195 MOVE                             R20 R19
      196 LOADNIL                          R21
      197 LOADNIL                          R22
      198 FORGPREP                         R20
      199 GETTABLEKS                       R25 R24 K28 ["contentId"]
      201 SETTABLE                         R24 R15 R25
      202 ADDK                             R16 R16 K32 [1]
      203 FORGLOOP                         R20 2 ; [-5]
      205 GETTABLEKS                       R18 R10 K22 ["role"]
      207 JUMPIFEQKNIL                     R18 ; [+10]
      209 GETUPVAL                         R20 5
      210 GETTABLEKS                       R20 R20 K33 ["Types"]
      212 GETTABLEKS                       R20 R20 K34 ["VALID_ROLES"]
      214 GETTABLE                         R19 R20 R18
      215 JUMPIFNOT                        R19 ; [+2]
      216 MOVE                             R17 R18
      217 JUMP                             ; [+1]
      218 LOADK                            R17 K35 ["system"]
      219 GETTABLEKS                       R18 R10 K22 ["role"]
      221 JUMPIFEQKNIL                     R18 ; [+19]
      223 GETTABLEKS                       R18 R10 K22 ["role"]
      225 JUMPIFEQ                         R18 R17 ; [+15]
      227 GETUPVAL                         R18 3
      228 GETTABLEKS                       R18 R18 K17 ["FFlagDebugLogAssistantUI"]
      230 JUMPIFNOT                        R18 ; [+10]
      231 GETIMPORT                        R18 K19 [warn]
      233 LOADK                            R19 K36 ["[CloudIO] Invalid role \"%*\" for message with messageId \"%*\". Defaulting to \"system\"."]
      234 GETTABLEKS                       R21 R10 K22 ["role"]
      236 MOVE                             R22 R13
      237 NAMECALL                         R19 R19 K23 ["format"]
      239 CALL                             R19 3 1
      240 CALL                             R18 1 0
      241 DUPTABLE                         R20 K51 [{["messageId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["role"], ["thumbsState"], ["contents"], ["contentCountAdded"] = 0, ["contentCountLoaded"], ["LayoutOrder"] = 0, ["hidden"]}]
      242 SETTABLEKS                       R13 R20 K21 ["messageId"]
      244 GETTABLEKS                       R21 R11 K37 ["sourceId"]
      246 SETTABLEKS                       R21 R20 K37 ["sourceId"]
      248 GETTABLEKS                       R21 R11 K38 ["rootId"]
      250 SETTABLEKS                       R21 R20 K38 ["rootId"]
      252 GETTABLEKS                       R22 R10 K52 ["createdUtc"]
      254 ORK                              R21 R22 K47 [0]
      255 SETTABLEKS                       R21 R20 K39 ["createdAt"]
      257 GETTABLEKS                       R22 R10 K53 ["updatedUtc"]
      259 ORK                              R21 R22 K47 [0]
      260 SETTABLEKS                       R21 R20 K40 ["updatedAt"]
      262 GETTABLEKS                       R21 R10 K44 ["isDeleted"]
      264 SETTABLEKS                       R21 R20 K44 ["isDeleted"]
      266 SETTABLEKS                       R17 R20 K22 ["role"]
      268 GETTABLEKS                       R21 R11 K45 ["thumbsState"]
      270 SETTABLEKS                       R21 R20 K45 ["thumbsState"]
      272 SETTABLEKS                       R15 R20 K25 ["contents"]
      274 SETTABLEKS                       R16 R20 K48 ["contentCountLoaded"]
      276 GETTABLEKS                       R21 R11 K50 ["hidden"]
      278 SETTABLEKS                       R21 R20 K50 ["hidden"]
      280 FASTCALL2                        TABLE_INSERT R5 R20 ; [+4]
      282 MOVE                             R19 R5
      283 GETIMPORT                        R18 K55 [table.insert]
      285 CALL                             R18 2 0
      286 FORGLOOP                         R6 2 ; [-254]
      288 JUMP                             ; [+2]
      289 NEWTABLE                         R5 0 0
      291 LOADB                            R6 1
      292 DUPTABLE                         R7 K57 [{"messages", "cursor"}]
      293 SETTABLEKS                       R5 R7 K7 ["messages"]
      295 GETTABLEKS                       R8 R3 K56 ["cursor"]
      297 SETTABLEKS                       R8 R7 K56 ["cursor"]
      299 RETURN                           R6 2

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["serialize"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_25:
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

PROTO_26:
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
       35 JUMPIF                           R9 ; [+16]
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R11 R11 K11 ["FFlagDebugLogAssistantUI"]
       39 JUMPIFNOT                        R11 ; [+12]
       40 GETIMPORT                        R11 K13 [warn]
       42 LOADK                            R12 K14 ["[CloudIO] Failed to serialize metadata for message with messageId \"%*\" and role \"%*\". Error was \"%*\". Skipping this message."]
       43 GETTABLEKS                       R14 R7 K15 ["messageId"]
       45 GETTABLEKS                       R15 R7 K16 ["role"]
       47 MOVE                             R16 R10
       48 NAMECALL                         R12 R12 K17 ["format"]
       50 CALL                             R12 4 1
       51 CALL                             R11 1 0
       52 GETIMPORT                        R11 K2 [table.create]
       54 GETTABLEKS                       R13 R7 K18 ["contentCountAdded"]
       56 GETTABLEKS                       R14 R7 K19 ["contentCountLoaded"]
       58 ADD                              R12 R13 R14
       59 CALL                             R11 1 1
       60 GETTABLEKS                       R12 R7 K20 ["contents"]
       62 JUMPIFNOT                        R12 ; [+96]
       63 MOVE                             R13 R12
       64 LOADNIL                          R14
       65 LOADNIL                          R15
       66 FORGPREP                         R13
       67 GETTABLEKS                       R18 R17 K21 ["contentId"]
       69 GETIMPORT                        R19 K10 [pcall]
       71 NEWCLOSURE                       R20 P1
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          VAL R17
       74 CALL                             R19 1 2
       75 JUMPIF                           R19 ; [+16]
       76 GETUPVAL                         R21 1
       77 GETTABLEKS                       R21 R21 K11 ["FFlagDebugLogAssistantUI"]
       79 JUMPIFNOT                        R21 ; [+77]
       80 GETIMPORT                        R21 K13 [warn]
       82 LOADK                            R22 K22 ["[CloudIO] Failed to serialize content with contentId \"%*\" in message \"%*\". Error was \"%*\". Skipping this content."]
       83 MOVE                             R24 R18
       84 GETTABLEKS                       R25 R7 K15 ["messageId"]
       86 MOVE                             R26 R20
       87 NAMECALL                         R22 R22 K17 ["format"]
       89 CALL                             R22 4 1
       90 CALL                             R21 1 0
       91 JUMP                             ; [+65]
       92 MOVE                             R21 R20
       93 LOADNIL                          R22
       94 LOADNIL                          R23
       95 FORGPREP                         R21
       96 GETIMPORT                        R26 K10 [pcall]
       98 NEWCLOSURE                       R27 P2
       99 CAPTURE                          UPVAL U0
      100 CAPTURE                          VAL R25
      101 CALL                             R26 1 2
      102 JUMPIF                           R26 ; [+16]
      103 GETUPVAL                         R28 1
      104 GETTABLEKS                       R28 R28 K11 ["FFlagDebugLogAssistantUI"]
      106 JUMPIFNOT                        R28 ; [+48]
      107 GETIMPORT                        R28 K13 [warn]
      109 LOADK                            R29 K23 ["[CloudIO] Failed to encode content with contentId \"%*\" in message \"%*\". Error was \"%*\". Skipping this content."]
      110 MOVE                             R31 R18
      111 GETTABLEKS                       R32 R7 K15 ["messageId"]
      113 MOVE                             R33 R27
      114 NAMECALL                         R29 R29 K17 ["format"]
      116 CALL                             R29 4 1
      117 CALL                             R28 1 0
      118 JUMP                             ; [+36]
      119 DUPTABLE                         R30 K30 [{"contentId", "sequenceNumber", "createdUtc", "updatedUtc", "isDeleted", "mcpVersion", "mcpContent"}]
      120 SETTABLEKS                       R18 R30 K21 ["contentId"]
      122 SETTABLEKS                       R24 R30 K24 ["sequenceNumber"]
      124 GETTABLEKS                       R31 R17 K31 ["createdAt"]
      126 SETTABLEKS                       R31 R30 K25 ["createdUtc"]
      128 GETTABLEKS                       R31 R17 K32 ["updatedAt"]
      130 SETTABLEKS                       R31 R30 K26 ["updatedUtc"]
      132 GETTABLEKS                       R31 R17 K27 ["isDeleted"]
      134 SETTABLEKS                       R31 R30 K27 ["isDeleted"]
      136 GETUPVAL                         R31 3
      137 GETTABLEKS                       R31 R31 K33 ["Types"]
      139 GETTABLEKS                       R31 R31 K34 ["LATEST_PROTOCOL_VERSION"]
      141 SETTABLEKS                       R31 R30 K28 ["mcpVersion"]
      143 JUMPIFNOT                        R26 ; [+2]
      144 MOVE                             R31 R27
      145 JUMP                             ; [+1]
      146 LOADNIL                          R31
      147 SETTABLEKS                       R31 R30 K29 ["mcpContent"]
      149 FASTCALL2                        TABLE_INSERT R11 R30 ; [+4]
      151 MOVE                             R29 R11
      152 GETIMPORT                        R28 K36 [table.insert]
      154 CALL                             R28 2 0
      155 FORGLOOP                         R21 2 ; [-60]
      157 FORGLOOP                         R13 2 ; [-91]
      159 DUPTABLE                         R15 K39 [{"threadId", "messageId", "createdUtc", "updatedUtc", "isDeleted", "role", "metadata", "contents"}]
      160 SETTABLEKS                       R0 R15 K37 ["threadId"]
      162 GETTABLEKS                       R16 R7 K15 ["messageId"]
      164 SETTABLEKS                       R16 R15 K15 ["messageId"]
      166 GETTABLEKS                       R16 R7 K31 ["createdAt"]
      168 SETTABLEKS                       R16 R15 K25 ["createdUtc"]
      170 GETTABLEKS                       R16 R7 K32 ["updatedAt"]
      172 SETTABLEKS                       R16 R15 K26 ["updatedUtc"]
      174 GETTABLEKS                       R16 R7 K27 ["isDeleted"]
      176 SETTABLEKS                       R16 R15 K27 ["isDeleted"]
      178 GETTABLEKS                       R16 R7 K16 ["role"]
      180 SETTABLEKS                       R16 R15 K16 ["role"]
      182 JUMPIFNOT                        R9 ; [+2]
      183 MOVE                             R16 R10
      184 JUMP                             ; [+1]
      185 LOADNIL                          R16
      186 SETTABLEKS                       R16 R15 K38 ["metadata"]
      188 SETTABLEKS                       R11 R15 K20 ["contents"]
      190 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
      192 MOVE                             R14 R2
      193 GETIMPORT                        R13 K36 [table.insert]
      195 CALL                             R13 2 0
      196 FORGLOOP                         R3 2 ; [-189]
      198 GETUPVAL                         R3 4
      199 GETTABLEKS                       R3 R3 K40 ["callWithOptions"]
      201 NEWCLOSURE                       R4 P3
      202 CAPTURE                          UPVAL U5
      203 CAPTURE                          VAL R0
      204 CAPTURE                          VAL R2
      205 NEWTABLE                         R5 0 0
      207 CALL                             R3 2 1
      208 GETTABLEKS                       R4 R3 K41 ["success"]
      210 JUMPIF                           R4 ; [+6]
      211 GETUPVAL                         R4 4
      212 GETTABLEKS                       R4 R4 K42 ["throwError"]
      214 MOVE                             R5 R3
      215 CALL                             R4 1 -1
      216 RETURN                           R4 -1
      217 GETTABLEKS                       R4 R3 K41 ["success"]
      219 RETURN                           R4 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["getMessagesAsync"]
        5 DUPTABLE                         R1 K5 [{"threadId", "cursor", "limit"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["threadId"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["cursor"]
       12 SETTABLEKS                       R2 R1 K3 ["cursor"]
       14 GETUPVAL                         R2 3
       15 SETTABLEKS                       R2 R1 K4 ["limit"]
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R2 ; [+74]
        4 NEWTABLE                         R2 0 0
        6 GETTABLEKS                       R3 R1 K1 ["cursor"]
        8 JUMPIFEQKNIL                     R3 ; [+25]
       10 GETTABLEKS                       R3 R1 K1 ["cursor"]
       12 JUMPIFEQKS                       R3 K2 [""] ; [+21]
       14 LOADK                            R5 K3 ["cursor=%*"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R10 R1 K1 ["cursor"]
       18 FASTCALL1                        TOSTRING R10 ; [+2]
       19 GETIMPORT                        R9 K5 [tostring]
       21 CALL                             R9 1 1
       22 NAMECALL                         R7 R7 K6 ["UrlEncode"]
       24 CALL                             R7 2 1
       25 NAMECALL                         R5 R5 K7 ["format"]
       27 CALL                             R5 2 1
       28 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       30 MOVE                             R4 R2
       31 GETIMPORT                        R3 K10 [table.insert]
       33 CALL                             R3 2 0
       34 GETTABLEKS                       R3 R1 K11 ["limit"]
       36 JUMPIFEQKNIL                     R3 ; [+17]
       38 LOADK                            R5 K12 ["limit=%*"]
       39 GETTABLEKS                       R8 R1 K11 ["limit"]
       41 FASTCALL1                        TOSTRING R8 ; [+2]
       42 GETIMPORT                        R7 K5 [tostring]
       44 CALL                             R7 1 1
       45 NAMECALL                         R5 R5 K7 ["format"]
       47 CALL                             R5 2 1
       48 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       50 MOVE                             R4 R2
       51 GETIMPORT                        R3 K10 [table.insert]
       53 CALL                             R3 2 0
       54 LENGTH                           R4 R2
       55 LOADN                            R5 0
       56 JUMPIFNOTLT                      R5 R4 ; [+11]
       58 LOADK                            R3 K13 ["?%*"]
       59 GETIMPORT                        R5 K15 [table.concat]
       61 MOVE                             R6 R2
       62 LOADK                            R7 K16 ["&"]
       63 CALL                             R5 2 1
       64 NAMECALL                         R3 R3 K7 ["format"]
       66 CALL                             R3 2 1
       67 JUMP                             ; [+1]
       68 LOADK                            R3 K2 [""]
       69 GETIMPORT                        R4 K18 [print]
       71 LOADK                            R5 K19 ["[CloudIO] getAgentMessagesAsync GET /studio-assistant/v1/threads/%*%*"]
       72 MOVE                             R7 R0
       73 MOVE                             R8 R3
       74 NAMECALL                         R5 R5 K7 ["format"]
       76 CALL                             R5 3 1
       77 CALL                             R4 1 0
       78 LOADNIL                          R2
       79 GETUPVAL                         R3 0
       80 GETTABLEKS                       R3 R3 K20 ["FFlagAssistantRetryMessageLoadWithSmallerLimit"]
       82 JUMPIFNOT                        R3 ; [+68]
       83 GETTABLEKS                       R3 R1 K11 ["limit"]
       85 JUMPIFEQKNIL                     R3 ; [+65]
       87 GETUPVAL                         R3 2
       88 GETTABLEKS                       R4 R1 K11 ["limit"]
       90 CALL                             R3 1 1
       91 MOVE                             R4 R3
       92 LOADNIL                          R5
       93 LOADNIL                          R6
       94 FORGPREP                         R4
       95 GETUPVAL                         R9 3
       96 GETTABLEKS                       R9 R9 K21 ["callWithOptions"]
       98 NEWCLOSURE                       R10 P0
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R8
      103 NEWTABLE                         R11 0 0
      105 CALL                             R9 2 1
      106 MOVE                             R2 R9
      107 MOVE                             R10 R2
      108 GETTABLEKS                       R11 R10 K22 ["success"]
      110 NOT                              R9 R11
      111 JUMPIFNOT                        R9 ; [+17]
      112 LOADB                            R9 0
      113 GETTABLEKS                       R12 R10 K23 ["errorDetails"]
      115 FASTCALL1                        TYPEOF R12 ; [+2]
      116 GETIMPORT                        R11 K25 [typeof]
      118 CALL                             R11 1 1
      119 JUMPIFNOTEQKS                    R11 K8 ["table"] ; [+9]
      121 GETTABLEKS                       R11 R10 K23 ["errorDetails"]
      123 GETTABLEKS                       R11 R11 K26 ["kind"]
      125 JUMPIFEQKS                       R11 K27 ["Network"] ; [+2]
      127 LOADB                            R9 0 +1
      128 LOADB                            R9 1
      129 JUMPIFNOT                        R9 ; [+31]
      130 GETUPVAL                         R9 0
      131 GETTABLEKS                       R9 R9 K0 ["FFlagDebugLogAssistantUI"]
      133 JUMPIFNOT                        R9 ; [+14]
      134 LENGTH                           R9 R3
      135 JUMPIFNOTLT                      R7 R9 ; [+12]
      137 GETIMPORT                        R9 K18 [print]
      139 LOADK                            R10 K28 ["[CloudIO] getAgentMessagesAsync network failure threadId=%* limit=%*; retrying with limit=%*"]
      140 MOVE                             R12 R0
      141 MOVE                             R13 R8
      142 ADDK                             R15 R7 K29 [1]
      143 GETTABLE                         R14 R3 R15
      144 NAMECALL                         R10 R10 K7 ["format"]
      146 CALL                             R10 4 1
      147 CALL                             R9 1 0
      148 FORGLOOP                         R4 2 ; [-54]
      150 JUMP                             ; [+10]
      151 GETUPVAL                         R3 3
      152 GETTABLEKS                       R3 R3 K21 ["callWithOptions"]
      154 NEWCLOSURE                       R4 P1
      155 CAPTURE                          UPVAL U4
      156 CAPTURE                          VAL R0
      157 CAPTURE                          VAL R1
      158 DUPTABLE                         R5 K32 [{["retryCount"] = 2}]
      159 CALL                             R3 2 1
      160 MOVE                             R2 R3
      161 GETTABLEKS                       R3 R2 K22 ["success"]
      163 JUMPIF                           R3 ; [+72]
      164 GETUPVAL                         R3 0
      165 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
      167 JUMPIFNOT                        R3 ; [+62]
      168 GETTABLEKS                       R3 R2 K23 ["errorDetails"]
      170 LOADNIL                          R4
      171 LOADNIL                          R5
      172 LOADNIL                          R6
      173 FASTCALL1                        TYPEOF R3 ; [+3]
      174 MOVE                             R8 R3
      175 GETIMPORT                        R7 K25 [typeof]
      177 CALL                             R7 1 1
      178 JUMPIFNOTEQKS                    R7 K8 ["table"] ; [+16]
      180 GETTABLEKS                       R4 R3 K26 ["kind"]
      182 GETTABLEKS                       R7 R3 K26 ["kind"]
      184 JUMPIFNOTEQKS                    R7 K27 ["Network"] ; [+4]
      186 GETTABLEKS                       R5 R3 K33 ["networkError"]
      188 JUMP                             ; [+6]
      189 GETTABLEKS                       R7 R3 K26 ["kind"]
      191 JUMPIFNOTEQKS                    R7 K34 ["HttpStatusCode"] ; [+3]
      193 GETTABLEKS                       R6 R3 K35 ["statusMessage"]
      195 GETIMPORT                        R7 K37 [warn]
      197 LOADK                            R8 K38 ["[CloudIO] getAgentMessagesAsync failed threadId=%* cursor=%* limit=%* kind=%* networkError=%* statusMessage=%*"]
      198 MOVE                             R10 R0
      199 GETTABLEKS                       R12 R1 K1 ["cursor"]
      201 FASTCALL1                        TOSTRING R12 ; [+2]
      202 GETIMPORT                        R11 K5 [tostring]
      204 CALL                             R11 1 1
      205 GETTABLEKS                       R13 R1 K11 ["limit"]
      207 FASTCALL1                        TOSTRING R13 ; [+2]
      208 GETIMPORT                        R12 K5 [tostring]
      210 CALL                             R12 1 1
      211 FASTCALL1                        TOSTRING R4 ; [+3]
      212 MOVE                             R14 R4
      213 GETIMPORT                        R13 K5 [tostring]
      215 CALL                             R13 1 1
      216 FASTCALL1                        TOSTRING R5 ; [+3]
      217 MOVE                             R15 R5
      218 GETIMPORT                        R14 K5 [tostring]
      220 CALL                             R14 1 1
      221 FASTCALL1                        TOSTRING R6 ; [+3]
      222 MOVE                             R16 R6
      223 GETIMPORT                        R15 K5 [tostring]
      225 CALL                             R15 1 1
      226 NAMECALL                         R8 R8 K7 ["format"]
      228 CALL                             R8 7 1
      229 CALL                             R7 1 0
      230 GETUPVAL                         R3 3
      231 GETTABLEKS                       R3 R3 K39 ["throwError"]
      233 MOVE                             R4 R2
      234 CALL                             R3 1 -1
      235 RETURN                           R3 -1
      236 NEWTABLE                         R3 0 0
      238 GETTABLEKS                       R4 R2 K40 ["data"]
      240 GETTABLEKS                       R4 R4 K41 ["messages"]
      242 JUMPIF                           R4 ; [+2]
      243 NEWTABLE                         R4 0 0
      245 MOVE                             R5 R4
      246 LOADNIL                          R6
      247 LOADNIL                          R7
      248 FORGPREP                         R5
      249 GETTABLEKS                       R10 R9 K42 ["messageId"]
      251 JUMPIFNOT                        R10 ; [+122]
      252 NEWTABLE                         R10 0 0
      254 NEWTABLE                         R11 0 0
      256 GETTABLEKS                       R12 R9 K43 ["contents"]
      258 JUMPIF                           R12 ; [+2]
      259 NEWTABLE                         R12 0 0
      261 GETIMPORT                        R13 K45 [table.sort]
      263 MOVE                             R14 R12
      264 DUPCLOSURE                       R15 K46 [PROTO_29]
      265 CALL                             R13 2 0
      266 MOVE                             R13 R12
      267 LOADNIL                          R14
      268 LOADNIL                          R15
      269 FORGPREP                         R13
      270 GETTABLEKS                       R18 R17 K47 ["mcpContent"]
      272 JUMPIFNOT                        R18 ; [+32]
      273 GETIMPORT                        R18 K49 [pcall]
      275 GETUPVAL                         R19 5
      276 GETTABLEKS                       R20 R17 K47 ["mcpContent"]
      278 CALL                             R18 2 2
      279 JUMPIFNOT                        R18 ; [+25]
      280 GETUPVAL                         R20 6
      281 MOVE                             R21 R19
      282 CALL                             R20 1 1
      283 MOVE                             R19 R20
      284 FASTCALL2                        TABLE_INSERT R10 R19 ; [+5]
      286 MOVE                             R21 R10
      287 MOVE                             R22 R19
      288 GETIMPORT                        R20 K10 [table.insert]
      290 CALL                             R20 2 0
      291 GETTABLEKS                       R22 R17 K50 ["contentId"]
      293 JUMPIF                           R22 ; [+5]
      294 GETUPVAL                         R22 1
      295 LOADB                            R24 0
      296 NAMECALL                         R22 R22 K51 ["GenerateGUID"]
      298 CALL                             R22 2 1
      299 FASTCALL2                        TABLE_INSERT R11 R22 ; [+4]
      301 MOVE                             R21 R11
      302 GETIMPORT                        R20 K10 [table.insert]
      304 CALL                             R20 2 0
      305 FORGLOOP                         R13 2 ; [-36]
      307 GETTABLEKS                       R14 R9 K52 ["role"]
      309 JUMPIFEQKNIL                     R14 ; [+10]
      311 GETUPVAL                         R16 7
      312 GETTABLEKS                       R16 R16 K53 ["Types"]
      314 GETTABLEKS                       R16 R16 K54 ["VALID_ROLES"]
      316 GETTABLE                         R15 R16 R14
      317 JUMPIFNOT                        R15 ; [+2]
      318 MOVE                             R13 R14
      319 JUMP                             ; [+1]
      320 LOADK                            R13 K55 ["system"]
      321 GETTABLEKS                       R14 R9 K52 ["role"]
      323 JUMPIFEQKNIL                     R14 ; [+20]
      325 GETTABLEKS                       R14 R9 K52 ["role"]
      327 JUMPIFEQ                         R14 R13 ; [+16]
      329 GETUPVAL                         R14 0
      330 GETTABLEKS                       R14 R14 K0 ["FFlagDebugLogAssistantUI"]
      332 JUMPIFNOT                        R14 ; [+11]
      333 GETIMPORT                        R14 K37 [warn]
      335 LOADK                            R15 K56 ["[CloudIO] Invalid role \"%*\" for message with messageId \"%*\". Defaulting to \"system\"."]
      336 GETTABLEKS                       R17 R9 K52 ["role"]
      338 GETTABLEKS                       R18 R9 K42 ["messageId"]
      340 NAMECALL                         R15 R15 K7 ["format"]
      342 CALL                             R15 3 1
      343 CALL                             R14 1 0
      344 DUPTABLE                         R16 K61 [{"messageId", "contentIds", "createdAt", "updatedAt", "message"}]
      345 GETTABLEKS                       R17 R9 K42 ["messageId"]
      347 SETTABLEKS                       R17 R16 K42 ["messageId"]
      349 SETTABLEKS                       R11 R16 K57 ["contentIds"]
      351 GETTABLEKS                       R18 R9 K63 ["createdUtc"]
      353 ORK                              R17 R18 K62 [0]
      354 SETTABLEKS                       R17 R16 K58 ["createdAt"]
      356 GETTABLEKS                       R18 R9 K64 ["updatedUtc"]
      358 ORK                              R17 R18 K62 [0]
      359 SETTABLEKS                       R17 R16 K59 ["updatedAt"]
      361 DUPTABLE                         R17 K66 [{"role", "content"}]
      362 SETTABLEKS                       R13 R17 K52 ["role"]
      364 SETTABLEKS                       R10 R17 K65 ["content"]
      366 SETTABLEKS                       R17 R16 K60 ["message"]
      368 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
      370 MOVE                             R15 R3
      371 GETIMPORT                        R14 K10 [table.insert]
      373 CALL                             R14 2 0
      374 FORGLOOP                         R5 2 ; [-126]
      376 LOADB                            R5 1
      377 DUPTABLE                         R6 K67 [{"messages", "cursor"}]
      378 SETTABLEKS                       R3 R6 K41 ["messages"]
      380 GETTABLEKS                       R7 R2 K40 ["data"]
      382 GETTABLEKS                       R7 R7 K1 ["cursor"]
      384 SETTABLEKS                       R7 R6 K1 ["cursor"]
      386 RETURN                           R5 2

PROTO_31:
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

PROTO_32:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["title"]
        8 JUMPIFEQKNIL                     R8 ; [+5]
       10 GETTABLEKS                       R8 R7 K0 ["title"]
       12 JUMPIFNOTEQKS                    R8 K1 [""] ; [+10]
       14 GETIMPORT                        R8 K3 [warn]
       16 LOADK                            R9 K4 ["[CloudIO] ACP session %* has nil title before save; expected title from first user message or session/list"]
       17 GETTABLEKS                       R11 R7 K5 ["sessionId"]
       19 NAMECALL                         R9 R9 K6 ["format"]
       21 CALL                             R9 2 1
       22 CALL                             R8 1 0
       23 DUPTABLE                         R10 K13 [{["threadId"], ["createdUtc"], ["updatedUtc"], ["lastActivityUtc"], ["isPinned"] = False, [6]}]
       24 GETTABLEKS                       R11 R7 K5 ["sessionId"]
       26 SETTABLEKS                       R11 R10 K7 ["threadId"]
       28 GETTABLEKS                       R11 R7 K14 ["createdAt"]
       30 SETTABLEKS                       R11 R10 K8 ["createdUtc"]
       32 GETTABLEKS                       R11 R7 K15 ["updatedAt"]
       34 SETTABLEKS                       R11 R10 K9 ["updatedUtc"]
       36 GETTABLEKS                       R11 R7 K15 ["updatedAt"]
       38 SETTABLEKS                       R11 R10 K10 ["lastActivityUtc"]
       40 GETTABLEKS                       R12 R7 K0 ["title"]
       42 ORK                              R11 R12 K1 [""]
       43 SETTABLEKS                       R11 R10 K0 ["title"]
       45 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       47 MOVE                             R9 R2
       48 GETIMPORT                        R8 K18 [table.insert]
       50 CALL                             R8 2 0
       51 FORGLOOP                         R3 2 ; [-46]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K19 ["callWithOptions"]
       56 NEWCLOSURE                       R4 P0
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R2
       60 NEWTABLE                         R5 0 0
       62 CALL                             R3 2 1
       63 GETTABLEKS                       R4 R3 K20 ["success"]
       65 JUMPIF                           R4 ; [+6]
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R4 R4 K21 ["throwError"]
       69 MOVE                             R5 R3
       70 CALL                             R4 1 -1
       71 RETURN                           R4 -1
       72 LOADB                            R4 1
       73 RETURN                           R4 1

PROTO_33:
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

PROTO_34:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["messages"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 NEWTABLE                         R7 0 0
        9 GETTABLEKS                       R8 R6 K1 ["message"]
       11 GETTABLEKS                       R8 R8 K2 ["content"]
       13 LOADNIL                          R9
       14 LOADNIL                          R10
       15 FORGPREP                         R8
       16 GETIMPORT                        R13 K4 [pcall]
       18 GETUPVAL                         R14 0
       19 GETUPVAL                         R15 1
       20 MOVE                             R16 R12
       21 CALL                             R15 1 1
       22 CALL                             R13 2 2
       23 JUMPIF                           R13 ; [+12]
       24 GETIMPORT                        R15 K6 [error]
       26 LOADK                            R16 K7 ["Failed to encode ACP message content: %*"]
       27 FASTCALL1                        TOSTRING R14 ; [+3]
       28 MOVE                             R19 R14
       29 GETIMPORT                        R18 K9 [tostring]
       31 CALL                             R18 1 1
       32 NAMECALL                         R16 R16 K10 ["format"]
       34 CALL                             R16 2 1
       35 CALL                             R15 1 0
       36 GETTABLEKS                       R15 R6 K11 ["contentIds"]
       38 JUMPIFNOT                        R15 ; [+3]
       39 GETTABLEKS                       R16 R6 K11 ["contentIds"]
       41 GETTABLE                         R15 R16 R11
       42 JUMPIF                           R15 ; [+9]
       43 GETIMPORT                        R16 K6 [error]
       45 LOADK                            R17 K12 ["Missing stable ACP content id for message %*"]
       46 GETTABLEKS                       R19 R6 K13 ["messageId"]
       48 NAMECALL                         R17 R17 K10 ["format"]
       50 CALL                             R17 2 1
       51 CALL                             R16 1 0
       52 DUPTABLE                         R18 K20 [{"contentId", "sequenceNumber", "createdUtc", "updatedUtc", "mcpVersion", "mcpContent"}]
       53 SETTABLEKS                       R15 R18 K14 ["contentId"]
       55 SETTABLEKS                       R11 R18 K15 ["sequenceNumber"]
       57 GETTABLEKS                       R19 R6 K21 ["createdAt"]
       59 SETTABLEKS                       R19 R18 K16 ["createdUtc"]
       61 GETTABLEKS                       R19 R6 K22 ["updatedAt"]
       63 SETTABLEKS                       R19 R18 K17 ["updatedUtc"]
       65 GETUPVAL                         R19 2
       66 GETTABLEKS                       R19 R19 K23 ["Types"]
       68 GETTABLEKS                       R19 R19 K24 ["LATEST_PROTOCOL_VERSION"]
       70 SETTABLEKS                       R19 R18 K18 ["mcpVersion"]
       72 SETTABLEKS                       R14 R18 K19 ["mcpContent"]
       74 FASTCALL2                        TABLE_INSERT R7 R18 ; [+4]
       76 MOVE                             R17 R7
       77 GETIMPORT                        R16 K27 [table.insert]
       79 CALL                             R16 2 0
       80 FORGLOOP                         R8 2 ; [-65]
       82 DUPTABLE                         R8 K32 [{"threadId", "messageId", "createdUtc", "updatedUtc", "role", "metadata", "contents"}]
       83 GETTABLEKS                       R9 R0 K33 ["sessionId"]
       85 SETTABLEKS                       R9 R8 K28 ["threadId"]
       87 GETTABLEKS                       R9 R6 K13 ["messageId"]
       89 SETTABLEKS                       R9 R8 K13 ["messageId"]
       91 GETTABLEKS                       R9 R6 K21 ["createdAt"]
       93 SETTABLEKS                       R9 R8 K16 ["createdUtc"]
       95 GETTABLEKS                       R9 R6 K22 ["updatedAt"]
       97 SETTABLEKS                       R9 R8 K17 ["updatedUtc"]
       99 GETTABLEKS                       R9 R6 K1 ["message"]
      101 GETTABLEKS                       R9 R9 K29 ["role"]
      103 SETTABLEKS                       R9 R8 K29 ["role"]
      105 GETUPVAL                         R9 3
      106 SETTABLEKS                       R9 R8 K30 ["metadata"]
      108 SETTABLEKS                       R7 R8 K31 ["contents"]
      110 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
      112 MOVE                             R10 R1
      113 MOVE                             R11 R8
      114 GETIMPORT                        R9 K27 [table.insert]
      116 CALL                             R9 2 0
      117 FORGLOOP                         R2 2 ; [-111]
      119 GETUPVAL                         R2 4
      120 GETTABLEKS                       R2 R2 K34 ["FFlagDebugLogAssistantUI"]
      122 JUMPIFNOT                        R2 ; [+13]
      123 GETIMPORT                        R2 K36 [print]
      125 LOADK                            R3 K37 ["[CloudIO] ACP save before projectForLegacyStorage session=%* messages=%*: %*"]
      126 GETTABLEKS                       R5 R0 K33 ["sessionId"]
      128 LENGTH                           R6 R1
      129 GETUPVAL                         R7 5
      130 MOVE                             R8 R1
      131 CALL                             R7 1 1
      132 NAMECALL                         R3 R3 K10 ["format"]
      134 CALL                             R3 4 1
      135 CALL                             R2 1 0
      136 GETUPVAL                         R2 6
      137 GETTABLEKS                       R2 R2 K38 ["projectForLegacyStorage"]
      139 MOVE                             R3 R1
      140 CALL                             R2 1 1
      141 MOVE                             R1 R2
      142 GETUPVAL                         R2 4
      143 GETTABLEKS                       R2 R2 K34 ["FFlagDebugLogAssistantUI"]
      145 JUMPIFNOT                        R2 ; [+13]
      146 GETIMPORT                        R2 K36 [print]
      148 LOADK                            R3 K39 ["[CloudIO] ACP save after projectForLegacyStorage session=%* messages=%*: %*"]
      149 GETTABLEKS                       R5 R0 K33 ["sessionId"]
      151 LENGTH                           R6 R1
      152 GETUPVAL                         R7 5
      153 MOVE                             R8 R1
      154 CALL                             R7 1 1
      155 NAMECALL                         R3 R3 K10 ["format"]
      157 CALL                             R3 4 1
      158 CALL                             R2 1 0
      159 LENGTH                           R2 R1
      160 JUMPIFNOTEQKN                    R2 K40 [0] ; [+4]
      162 LOADB                            R2 1
      163 CLOSEUPVALS                      R1
      164 RETURN                           R2 1
      165 GETUPVAL                         R2 7
      166 GETTABLEKS                       R2 R2 K41 ["callWithOptions"]
      168 NEWCLOSURE                       R3 P0
      169 CAPTURE                          UPVAL U8
      170 CAPTURE                          VAL R0
      171 CAPTURE                          REF R1
      172 DUPTABLE                         R4 K44 [{["retryCount"] = 2}]
      173 CALL                             R2 2 1
      174 GETTABLEKS                       R3 R2 K45 ["success"]
      176 JUMPIF                           R3 ; [+7]
      177 GETUPVAL                         R3 7
      178 GETTABLEKS                       R3 R3 K46 ["throwError"]
      180 MOVE                             R4 R2
      181 CALL                             R3 1 -1
      182 CLOSEUPVALS                      R1
      183 RETURN                           R3 -1
      184 LOADB                            R3 1
      185 CLOSEUPVALS                      R1
      186 RETURN                           R3 1

PROTO_35:
        0 DUPTABLE                         R0 K8 [{"getThreadsAsync", "uploadThreadsAsync", "deleteThreadAsync", "getMessagesAsync", "uploadMessagesAsync", "getAgentMessagesAsync", "uploadAgentThreadsAsync", "uploadAgentMessagesAsync"}]
        1 DUPCLOSURE                       R1 K9 [PROTO_11]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 SETTABLEKS                       R1 R0 K0 ["getThreadsAsync"]
        8 DUPCLOSURE                       R1 K10 [PROTO_14]
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R1 R0 K1 ["uploadThreadsAsync"]
       15 DUPCLOSURE                       R1 K11 [PROTO_16]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 SETTABLEKS                       R1 R0 K2 ["deleteThreadAsync"]
       20 DUPCLOSURE                       R1 K12 [PROTO_21]
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 SETTABLEKS                       R1 R0 K3 ["getMessagesAsync"]
       29 DUPCLOSURE                       R1 K13 [PROTO_26]
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U1
       36 SETTABLEKS                       R1 R0 K4 ["uploadMessagesAsync"]
       38 DUPCLOSURE                       R1 K14 [PROTO_30]
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U9
       46 CAPTURE                          UPVAL U5
       47 SETTABLEKS                       R1 R0 K5 ["getAgentMessagesAsync"]
       49 DUPCLOSURE                       R1 K15 [PROTO_32]
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U1
       52 SETTABLEKS                       R1 R0 K6 ["uploadAgentThreadsAsync"]
       54 DUPCLOSURE                       R1 K16 [PROTO_34]
       55 CAPTURE                          UPVAL U10
       56 CAPTURE                          UPVAL U11
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U12
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          UPVAL U13
       61 CAPTURE                          UPVAL U14
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U1
       64 SETTABLEKS                       R1 R0 K7 ["uploadAgentMessagesAsync"]
       66 RETURN                           R0 1

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
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Packages"]
       54 GETTABLEKS                       R8 R8 K18 ["_Index"]
       56 GETTABLEKS                       R8 R8 K15 ["OpenApiMcpAssistantStorageApi"]
       58 GETTABLEKS                       R8 R8 K15 ["OpenApiMcpAssistantStorageApi"]
       60 GETTABLEKS                       R8 R8 K19 ["Models"]
       62 GETTABLEKS                       R8 R8 K20 ["ContentBody"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R9 R0 K10 ["Packages"]
       69 GETTABLEKS                       R9 R9 K18 ["_Index"]
       71 GETTABLEKS                       R9 R9 K15 ["OpenApiMcpAssistantStorageApi"]
       73 GETTABLEKS                       R9 R9 K15 ["OpenApiMcpAssistantStorageApi"]
       75 GETTABLEKS                       R9 R9 K19 ["Models"]
       77 GETTABLEKS                       R9 R9 K21 ["MessageBody"]
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K9 [require]
       82 GETTABLEKS                       R10 R0 K10 ["Packages"]
       84 GETTABLEKS                       R10 R10 K18 ["_Index"]
       86 GETTABLEKS                       R10 R10 K15 ["OpenApiMcpAssistantStorageApi"]
       88 GETTABLEKS                       R10 R10 K15 ["OpenApiMcpAssistantStorageApi"]
       90 GETTABLEKS                       R10 R10 K19 ["Models"]
       92 GETTABLEKS                       R10 R10 K22 ["ThreadBody"]
       94 CALL                             R9 1 1
       95 GETTABLEKS                       R10 R2 K23 ["Serializer"]
       97 GETTABLEKS                       R11 R2 K24 ["Persistence"]
       99 GETTABLEKS                       R11 R11 K25 ["HistoryNormalizer"]
      101 DUPTABLE                         R14 K27 [{"historyWriter"}]
      102 GETTABLEKS                       R15 R11 K28 ["ACP_HISTORY_WRITER"]
      104 SETTABLEKS                       R15 R14 K26 ["historyWriter"]
      106 NAMECALL                         R12 R1 K29 ["JSONEncode"]
      108 CALL                             R12 2 1
      109 DUPCLOSURE                       R13 K30 [PROTO_0]
      110 CAPTURE                          VAL R2
      111 DUPCLOSURE                       R14 K31 [PROTO_1]
      112 DUPCLOSURE                       R15 K32 [PROTO_2]
      113 DUPCLOSURE                       R16 K33 [PROTO_3]
      114 DUPCLOSURE                       R17 K34 [PROTO_4]
      115 DUPCLOSURE                       R18 K35 [PROTO_5]
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R4
      119 DUPCLOSURE                       R19 K36 [PROTO_6]
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R4
      123 DUPCLOSURE                       R20 K37 [PROTO_7]
      124 DUPCLOSURE                       R21 K38 [PROTO_8]
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R20
      127 DUPCLOSURE                       R22 K39 [PROTO_35]
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R11
      143 DUPTABLE                         R23 K43 [{"createCloudIO", "deserializeAgentContent", "getMessageLoadLimits"}]
      144 SETTABLEKS                       R22 R23 K40 ["createCloudIO"]
      146 SETTABLEKS                       R17 R23 K41 ["deserializeAgentContent"]
      148 SETTABLEKS                       R14 R23 K42 ["getMessageLoadLimits"]
      150 RETURN                           R23 1
