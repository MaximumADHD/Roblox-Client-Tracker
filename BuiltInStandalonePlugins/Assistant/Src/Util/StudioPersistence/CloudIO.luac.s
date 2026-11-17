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
       28 JUMPIFNOTEQKS                    R15 K7 ["string"] ; [+15]
       30 GETUPVAL                         R16 0
       31 GETTABLEKS                       R16 R16 K8 ["JSONDecode"]
       33 GETUPVAL                         R17 0
       34 GETTABLEKS                       R18 R13 K4 ["mcpContent"]
       36 FASTPCALL                        pcall 3 ; [+2]
       37 GETIMPORT                        R15 K10 [pcall]
       39 CALL                             R15 3 2
       40 JUMPIFNOT                        R15 ; [+2]
       41 MOVE                             R14 R16
       42 JUMP                             ; [+1]
       43 LOADNIL                          R14
       44 LOADK                            R17 K11 ["%*:%*"]
       45 MOVE                             R19 R12
       46 JUMPIFNOT                        R14 ; [+4]
       47 GETUPVAL                         R20 1
       48 MOVE                             R21 R14
       49 CALL                             R20 1 1
       50 JUMP                             ; [+6]
       51 GETTABLEKS                       R21 R13 K4 ["mcpContent"]
       53 FASTCALL1                        TOSTRING R21 ; [+2]
       54 GETIMPORT                        R20 K13 [tostring]
       56 CALL                             R20 1 1
       57 NAMECALL                         R17 R17 K14 ["format"]
       59 CALL                             R17 3 1
       60 FASTCALL2                        TABLE_INSERT R8 R17 ; [+4]
       62 MOVE                             R16 R8
       63 GETIMPORT                        R15 K16 [table.insert]
       65 CALL                             R15 2 0
       66 FORGLOOP                         R9 2 ; [-46]
       68 LOADK                            R11 K17 ["%*:%*:%*[%*]"]
       69 MOVE                             R13 R5
       70 GETTABLEKS                       R14 R6 K18 ["role"]
       72 GETTABLEKS                       R15 R6 K19 ["messageId"]
       74 GETIMPORT                        R16 K21 [table.concat]
       76 MOVE                             R17 R8
       77 LOADK                            R18 K22 [", "]
       78 CALL                             R16 2 1
       79 NAMECALL                         R11 R11 K14 ["format"]
       81 CALL                             R11 5 1
       82 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       84 MOVE                             R10 R1
       85 GETIMPORT                        R9 K16 [table.insert]
       87 CALL                             R9 2 0
       88 FORGLOOP                         R2 2 ; [-81]
       90 GETIMPORT                        R2 K21 [table.concat]
       92 MOVE                             R3 R1
       93 LOADK                            R4 K23 [" | "]
       94 CALL                             R2 2 -1
       95 RETURN                           R2 -1

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
       22 JUMPIFNOT                        R3 ; [+149]
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
       47 NEWCLOSURE                       R13 P1
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R11
       50 FASTPCALL                        pcall 1 ; [+2]
       51 GETIMPORT                        R12 K16 [pcall]
       53 CALL                             R12 1 2
       54 JUMPIF                           R12 ; [+15]
       55 GETUPVAL                         R14 3
       56 GETTABLEKS                       R14 R14 K17 ["FFlagDebugLogAssistantUI"]
       58 JUMPIFNOT                        R14 ; [+11]
       59 GETIMPORT                        R14 K19 [warn]
       61 LOADK                            R15 K20 ["[CloudIO] Failed to decode metadata for thread with title \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this thread."]
       62 GETTABLEKS                       R17 R9 K21 ["title"]
       64 MOVE                             R18 R11
       65 MOVE                             R19 R13
       66 NAMECALL                         R15 R15 K22 ["format"]
       68 CALL                             R15 4 1
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
       81 JUMPIF                           R12 ; [+15]
       82 GETUPVAL                         R13 3
       83 GETTABLEKS                       R13 R13 K17 ["FFlagDebugLogAssistantUI"]
       85 JUMPIFNOT                        R13 ; [+83]
       86 GETIMPORT                        R13 K19 [warn]
       88 LOADK                            R14 K24 ["[CloudIO] threadId missing for thread with title \"%*\" and metadata \"%*\". Skipping this thread."]
       89 GETTABLEKS                       R16 R9 K21 ["title"]
       91 MOVE                             R17 R11
       92 NAMECALL                         R14 R14 K22 ["format"]
       94 CALL                             R14 3 1
       95 CALL                             R13 1 0
       96 JUMP                             ; [+72]
       97 LOADNIL                          R13
       98 GETTABLEKS                       R14 R10 K25 ["loadUntilMessageId"]
      100 JUMPIFNOT                        R14 ; [+6]
      101 DUPTABLE                         R14 K26 [{"loadUntilMessageId"}]
      102 GETTABLEKS                       R15 R10 K25 ["loadUntilMessageId"]
      104 SETTABLEKS                       R15 R14 K25 ["loadUntilMessageId"]
      106 MOVE                             R13 R14
      107 DUPTABLE                         R16 K45 [{["threadId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["lastActivityAt"], ["title"], ["isPinned"], ["lastViewedAt"], ["messages"], ["messageLoadState"] = , ["messagePageState"] = , ["messageCountAdded"] = 0, ["messageCountLoaded"] = 0, ["metadata"]}]
      108 SETTABLEKS                       R12 R16 K23 ["threadId"]
      110 GETTABLEKS                       R17 R10 K27 ["sourceId"]
      112 SETTABLEKS                       R17 R16 K27 ["sourceId"]
      114 GETTABLEKS                       R17 R10 K28 ["rootId"]
      116 SETTABLEKS                       R17 R16 K28 ["rootId"]
      118 GETTABLEKS                       R18 R9 K46 ["createdUtc"]
      120 ORK                              R17 R18 K43 [0]
      121 SETTABLEKS                       R17 R16 K29 ["createdAt"]
      123 GETTABLEKS                       R18 R9 K47 ["updatedUtc"]
      125 ORK                              R17 R18 K43 [0]
      126 SETTABLEKS                       R17 R16 K30 ["updatedAt"]
      128 GETTABLEKS                       R17 R9 K34 ["isDeleted"]
      130 SETTABLEKS                       R17 R16 K34 ["isDeleted"]
      132 GETTABLEKS                       R18 R9 K48 ["lastActivityUtc"]
      134 ORK                              R17 R18 K43 [0]
      135 SETTABLEKS                       R17 R16 K35 ["lastActivityAt"]
      137 GETTABLEKS                       R17 R9 K21 ["title"]
      139 JUMPIF                           R17 ; [+5]
      140 LOADK                            R17 K49 ["IMPORTED_THREAD_%*"]
      141 MOVE                             R19 R12
      142 NAMECALL                         R17 R17 K22 ["format"]
      144 CALL                             R17 2 1
      145 SETTABLEKS                       R17 R16 K21 ["title"]
      147 GETTABLEKS                       R18 R9 K36 ["isPinned"]
      149 ORK                              R17 R18 K32 [False]
      150 SETTABLEKS                       R17 R16 K36 ["isPinned"]
      152 GETTABLEKS                       R18 R10 K37 ["lastViewedAt"]
      154 ORK                              R17 R18 K50 [-1]
      155 SETTABLEKS                       R17 R16 K37 ["lastViewedAt"]
      157 NEWTABLE                         R17 0 0
      159 SETTABLEKS                       R17 R16 K38 ["messages"]
      161 SETTABLEKS                       R13 R16 K11 ["metadata"]
      163 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      165 MOVE                             R15 R4
      166 GETIMPORT                        R14 K52 [table.insert]
      168 CALL                             R14 2 0
      169 FORGLOOP                         R5 2 ; [-138]
      171 JUMP                             ; [+2]
      172 NEWTABLE                         R4 0 0
      174 LOADB                            R5 1
      175 DUPTABLE                         R6 K54 [{"threads", "cursor"}]
      176 SETTABLEKS                       R4 R6 K7 ["threads"]
      178 GETTABLEKS                       R7 R2 K53 ["cursor"]
      180 SETTABLEKS                       R7 R6 K53 ["cursor"]
      182 RETURN                           R5 2

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
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R8
       38 FASTPCALL                        pcall 1 ; [+2]
       39 GETIMPORT                        R9 K11 [pcall]
       41 CALL                             R9 1 2
       42 JUMPIF                           R9 ; [+16]
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K12 ["FFlagDebugLogAssistantUI"]
       46 JUMPIFNOT                        R11 ; [+12]
       47 GETIMPORT                        R11 K14 [warn]
       49 LOADK                            R12 K15 ["[CloudIO] Failed to serialize metadata for thread with threadId \"%*\" and title \"%*\". Error was \"%*\". Skipping this thread."]
       50 GETTABLEKS                       R14 R7 K16 ["threadId"]
       52 GETTABLEKS                       R15 R7 K17 ["title"]
       54 MOVE                             R16 R10
       55 NAMECALL                         R12 R12 K18 ["format"]
       57 CALL                             R12 4 1
       58 CALL                             R11 1 0
       59 DUPTABLE                         R13 K24 [{"threadId", "createdUtc", "updatedUtc", "isDeleted", "lastActivityUtc", "isPinned", "title", "metadata"}]
       60 GETTABLEKS                       R14 R7 K16 ["threadId"]
       62 SETTABLEKS                       R14 R13 K16 ["threadId"]
       64 GETTABLEKS                       R14 R7 K25 ["createdAt"]
       66 SETTABLEKS                       R14 R13 K19 ["createdUtc"]
       68 GETTABLEKS                       R14 R7 K26 ["updatedAt"]
       70 SETTABLEKS                       R14 R13 K20 ["updatedUtc"]
       72 GETTABLEKS                       R14 R7 K21 ["isDeleted"]
       74 SETTABLEKS                       R14 R13 K21 ["isDeleted"]
       76 GETTABLEKS                       R14 R7 K27 ["lastActivityAt"]
       78 SETTABLEKS                       R14 R13 K22 ["lastActivityUtc"]
       80 GETTABLEKS                       R14 R7 K23 ["isPinned"]
       82 SETTABLEKS                       R14 R13 K23 ["isPinned"]
       84 GETTABLEKS                       R14 R7 K17 ["title"]
       86 SETTABLEKS                       R14 R13 K17 ["title"]
       88 JUMPIFNOT                        R9 ; [+2]
       89 MOVE                             R14 R10
       90 JUMP                             ; [+1]
       91 LOADNIL                          R14
       92 SETTABLEKS                       R14 R13 K9 ["metadata"]
       94 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       96 MOVE                             R12 R2
       97 GETIMPORT                        R11 K29 [table.insert]
       99 CALL                             R11 2 0
      100 FORGLOOP                         R3 2 ; [-93]
      102 GETUPVAL                         R3 2
      103 GETTABLEKS                       R3 R3 K30 ["callWithOptions"]
      105 NEWCLOSURE                       R4 P1
      106 CAPTURE                          UPVAL U3
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R2
      109 NEWTABLE                         R5 0 0
      111 CALL                             R3 2 1
      112 GETTABLEKS                       R4 R3 K31 ["success"]
      114 JUMPIF                           R4 ; [+6]
      115 GETUPVAL                         R4 2
      116 GETTABLEKS                       R4 R4 K32 ["throwError"]
      118 MOVE                             R5 R3
      119 CALL                             R4 1 -1
      120 RETURN                           R4 -1
      121 GETTABLEKS                       R4 R3 K31 ["success"]
      123 RETURN                           R4 1

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
       23 JUMPIFNOT                        R4 ; [+268]
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
       48 NEWCLOSURE                       R14 P1
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          VAL R12
       51 FASTPCALL                        pcall 1 ; [+2]
       52 GETIMPORT                        R13 K16 [pcall]
       54 CALL                             R13 1 2
       55 JUMPIF                           R13 ; [+17]
       56 GETUPVAL                         R15 3
       57 GETTABLEKS                       R15 R15 K17 ["FFlagDebugLogAssistantUI"]
       59 JUMPIFNOT                        R15 ; [+13]
       60 GETIMPORT                        R15 K19 [warn]
       62 LOADK                            R16 K20 ["[CloudIO] Failed to decode metadata for message with messageId \"%*\" and role \"%*\" and metadata \"%*\". Error was \"%*\". Skipping this message."]
       63 GETTABLEKS                       R18 R10 K21 ["messageId"]
       65 GETTABLEKS                       R19 R10 K22 ["role"]
       67 MOVE                             R20 R12
       68 MOVE                             R21 R14
       69 NAMECALL                         R16 R16 K23 ["format"]
       71 CALL                             R16 5 1
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
       84 JUMPIF                           R13 ; [+15]
       85 GETUPVAL                         R14 3
       86 GETTABLEKS                       R14 R14 K17 ["FFlagDebugLogAssistantUI"]
       88 JUMPIFNOT                        R14 ; [+200]
       89 GETIMPORT                        R14 K19 [warn]
       91 LOADK                            R15 K24 ["[CloudIO] messageId missing for message with role \"%*\" and metadata \"%*\". Skipping this message."]
       92 GETTABLEKS                       R17 R10 K22 ["role"]
       94 MOVE                             R18 R12
       95 NAMECALL                         R15 R15 K23 ["format"]
       97 CALL                             R15 3 1
       98 CALL                             R14 1 0
       99 JUMP                             ; [+189]
      100 GETTABLEKS                       R14 R10 K25 ["contents"]
      102 NEWTABLE                         R15 0 0
      104 LOADN                            R16 0
      105 JUMPIFNOT                        R14 ; [+102]
      106 GETIMPORT                        R17 K10 [table.create]
      108 LENGTH                           R18 R14
      109 CALL                             R17 1 1
      110 MOVE                             R18 R14
      111 LOADNIL                          R19
      112 LOADNIL                          R20
      113 FORGPREP                         R18
      114 GETTABLEKS                       R23 R22 K26 ["mcpContent"]
      116 JUMPIF                           R23 ; [+11]
      117 GETIMPORT                        R24 K19 [warn]
      119 LOADK                            R25 K27 ["[CloudIO] mcpContent missing for content with contentId \"%*\" in message \"%*\". Skipping this content."]
      120 GETTABLEKS                       R27 R22 K28 ["contentId"]
      122 MOVE                             R28 R13
      123 NAMECALL                         R25 R25 K23 ["format"]
      125 CALL                             R25 3 1
      126 CALL                             R24 1 0
      127 JUMP                             ; [+45]
      128 GETTABLEKS                       R24 R22 K28 ["contentId"]
      130 JUMPIF                           R24 ; [+14]
      131 GETUPVAL                         R25 3
      132 GETTABLEKS                       R25 R25 K17 ["FFlagDebugLogAssistantUI"]
      134 JUMPIFNOT                        R25 ; [+38]
      135 GETIMPORT                        R25 K19 [warn]
      137 LOADK                            R26 K29 ["[CloudIO] contentId missing for content with mcpContent \"%*\" in message \"%*\". Skipping this content."]
      138 MOVE                             R28 R23
      139 MOVE                             R29 R13
      140 NAMECALL                         R26 R26 K23 ["format"]
      142 CALL                             R26 3 1
      143 CALL                             R25 1 0
      144 JUMP                             ; [+28]
      145 NEWCLOSURE                       R26 P2
      146 CAPTURE                          UPVAL U2
      147 CAPTURE                          VAL R23
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R0
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R24
      152 CAPTURE                          VAL R22
      153 FASTPCALL                        pcall 1 ; [+2]
      154 GETIMPORT                        R25 K16 [pcall]
      156 CALL                             R25 1 2
      157 JUMPIF                           R25 ; [+15]
      158 GETUPVAL                         R27 3
      159 GETTABLEKS                       R27 R27 K17 ["FFlagDebugLogAssistantUI"]
      161 JUMPIFNOT                        R27 ; [+11]
      162 GETIMPORT                        R27 K19 [warn]
      164 LOADK                            R28 K30 ["[CloudIO] Failed to deserialize content with contentId \"%*\" in message \"%*\". mcpContent was \"%*\". Error was \"%*\". Skipping this content."]
      165 MOVE                             R30 R24
      166 MOVE                             R31 R13
      167 MOVE                             R32 R23
      168 MOVE                             R33 R26
      169 NAMECALL                         R28 R28 K23 ["format"]
      171 CALL                             R28 5 1
      172 CALL                             R27 1 0
      173 FORGLOOP                         R18 2 ; [-60]
      175 NEWCLOSURE                       R19 P3
      176 CAPTURE                          UPVAL U4
      177 CAPTURE                          VAL R17
      178 FASTPCALL                        pcall 1 ; [+2]
      179 GETIMPORT                        R18 K16 [pcall]
      181 CALL                             R18 1 2
      182 JUMPIF                           R18 ; [+15]
      183 GETUPVAL                         R20 3
      184 GETTABLEKS                       R20 R20 K17 ["FFlagDebugLogAssistantUI"]
      186 JUMPIFNOT                        R20 ; [+102]
      187 GETIMPORT                        R20 K19 [warn]
      189 LOADK                            R21 K31 ["[CloudIO] Failed to deserialize content in message \"%*\". deserializableContents was \"%*\". Error was \"%*\". Skipping this content."]
      190 MOVE                             R23 R13
      191 MOVE                             R24 R17
      192 MOVE                             R25 R19
      193 NAMECALL                         R21 R21 K23 ["format"]
      195 CALL                             R21 4 1
      196 CALL                             R20 1 0
      197 JUMP                             ; [+91]
      198 MOVE                             R20 R19
      199 LOADNIL                          R21
      200 LOADNIL                          R22
      201 FORGPREP                         R20
      202 GETTABLEKS                       R25 R24 K28 ["contentId"]
      204 SETTABLE                         R24 R15 R25
      205 ADDK                             R16 R16 K32 [1]
      206 FORGLOOP                         R20 2 ; [-5]
      208 GETTABLEKS                       R18 R10 K22 ["role"]
      210 JUMPIFEQKNIL                     R18 ; [+10]
      212 GETUPVAL                         R20 5
      213 GETTABLEKS                       R20 R20 K33 ["Types"]
      215 GETTABLEKS                       R20 R20 K34 ["VALID_ROLES"]
      217 GETTABLE                         R19 R20 R18
      218 JUMPIFNOT                        R19 ; [+2]
      219 MOVE                             R17 R18
      220 JUMP                             ; [+1]
      221 LOADK                            R17 K35 ["system"]
      222 GETTABLEKS                       R18 R10 K22 ["role"]
      224 JUMPIFEQKNIL                     R18 ; [+19]
      226 GETTABLEKS                       R18 R10 K22 ["role"]
      228 JUMPIFEQ                         R18 R17 ; [+15]
      230 GETUPVAL                         R18 3
      231 GETTABLEKS                       R18 R18 K17 ["FFlagDebugLogAssistantUI"]
      233 JUMPIFNOT                        R18 ; [+10]
      234 GETIMPORT                        R18 K19 [warn]
      236 LOADK                            R19 K36 ["[CloudIO] Invalid role \"%*\" for message with messageId \"%*\". Defaulting to \"system\"."]
      237 GETTABLEKS                       R21 R10 K22 ["role"]
      239 MOVE                             R22 R13
      240 NAMECALL                         R19 R19 K23 ["format"]
      242 CALL                             R19 3 1
      243 CALL                             R18 1 0
      244 DUPTABLE                         R20 K51 [{["messageId"], ["sourceId"], ["rootId"], ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["role"], ["thumbsState"], ["contents"], ["contentCountAdded"] = 0, ["contentCountLoaded"], ["LayoutOrder"] = 0, ["hidden"]}]
      245 SETTABLEKS                       R13 R20 K21 ["messageId"]
      247 GETTABLEKS                       R21 R11 K37 ["sourceId"]
      249 SETTABLEKS                       R21 R20 K37 ["sourceId"]
      251 GETTABLEKS                       R21 R11 K38 ["rootId"]
      253 SETTABLEKS                       R21 R20 K38 ["rootId"]
      255 GETTABLEKS                       R22 R10 K52 ["createdUtc"]
      257 ORK                              R21 R22 K47 [0]
      258 SETTABLEKS                       R21 R20 K39 ["createdAt"]
      260 GETTABLEKS                       R22 R10 K53 ["updatedUtc"]
      262 ORK                              R21 R22 K47 [0]
      263 SETTABLEKS                       R21 R20 K40 ["updatedAt"]
      265 GETTABLEKS                       R21 R10 K44 ["isDeleted"]
      267 SETTABLEKS                       R21 R20 K44 ["isDeleted"]
      269 SETTABLEKS                       R17 R20 K22 ["role"]
      271 GETTABLEKS                       R21 R11 K45 ["thumbsState"]
      273 SETTABLEKS                       R21 R20 K45 ["thumbsState"]
      275 SETTABLEKS                       R15 R20 K25 ["contents"]
      277 SETTABLEKS                       R16 R20 K48 ["contentCountLoaded"]
      279 GETTABLEKS                       R21 R11 K50 ["hidden"]
      281 SETTABLEKS                       R21 R20 K50 ["hidden"]
      283 FASTCALL2                        TABLE_INSERT R5 R20 ; [+4]
      285 MOVE                             R19 R5
      286 GETIMPORT                        R18 K55 [table.insert]
      288 CALL                             R18 2 0
      289 FORGLOOP                         R6 2 ; [-257]
      291 JUMP                             ; [+2]
      292 NEWTABLE                         R5 0 0
      294 LOADB                            R6 1
      295 DUPTABLE                         R7 K57 [{"messages", "cursor"}]
      296 SETTABLEKS                       R5 R7 K7 ["messages"]
      298 GETTABLEKS                       R8 R3 K56 ["cursor"]
      300 SETTABLEKS                       R8 R7 K56 ["cursor"]
      302 RETURN                           R6 2

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
       29 NEWCLOSURE                       R10 P0
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R8
       32 FASTPCALL                        pcall 1 ; [+2]
       33 GETIMPORT                        R9 K10 [pcall]
       35 CALL                             R9 1 2
       36 JUMPIF                           R9 ; [+16]
       37 GETUPVAL                         R11 1
       38 GETTABLEKS                       R11 R11 K11 ["FFlagDebugLogAssistantUI"]
       40 JUMPIFNOT                        R11 ; [+12]
       41 GETIMPORT                        R11 K13 [warn]
       43 LOADK                            R12 K14 ["[CloudIO] Failed to serialize metadata for message with messageId \"%*\" and role \"%*\". Error was \"%*\". Skipping this message."]
       44 GETTABLEKS                       R14 R7 K15 ["messageId"]
       46 GETTABLEKS                       R15 R7 K16 ["role"]
       48 MOVE                             R16 R10
       49 NAMECALL                         R12 R12 K17 ["format"]
       51 CALL                             R12 4 1
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
       70 NEWCLOSURE                       R20 P1
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          VAL R17
       73 FASTPCALL                        pcall 1 ; [+2]
       74 GETIMPORT                        R19 K10 [pcall]
       76 CALL                             R19 1 2
       77 JUMPIF                           R19 ; [+16]
       78 GETUPVAL                         R21 1
       79 GETTABLEKS                       R21 R21 K11 ["FFlagDebugLogAssistantUI"]
       81 JUMPIFNOT                        R21 ; [+78]
       82 GETIMPORT                        R21 K13 [warn]
       84 LOADK                            R22 K22 ["[CloudIO] Failed to serialize content with contentId \"%*\" in message \"%*\". Error was \"%*\". Skipping this content."]
       85 MOVE                             R24 R18
       86 GETTABLEKS                       R25 R7 K15 ["messageId"]
       88 MOVE                             R26 R20
       89 NAMECALL                         R22 R22 K17 ["format"]
       91 CALL                             R22 4 1
       92 CALL                             R21 1 0
       93 JUMP                             ; [+66]
       94 MOVE                             R21 R20
       95 LOADNIL                          R22
       96 LOADNIL                          R23
       97 FORGPREP                         R21
       98 NEWCLOSURE                       R27 P2
       99 CAPTURE                          UPVAL U0
      100 CAPTURE                          VAL R25
      101 FASTPCALL                        pcall 1 ; [+2]
      102 GETIMPORT                        R26 K10 [pcall]
      104 CALL                             R26 1 2
      105 JUMPIF                           R26 ; [+16]
      106 GETUPVAL                         R28 1
      107 GETTABLEKS                       R28 R28 K11 ["FFlagDebugLogAssistantUI"]
      109 JUMPIFNOT                        R28 ; [+48]
      110 GETIMPORT                        R28 K13 [warn]
      112 LOADK                            R29 K23 ["[CloudIO] Failed to encode content with contentId \"%*\" in message \"%*\". Error was \"%*\". Skipping this content."]
      113 MOVE                             R31 R18
      114 GETTABLEKS                       R32 R7 K15 ["messageId"]
      116 MOVE                             R33 R27
      117 NAMECALL                         R29 R29 K17 ["format"]
      119 CALL                             R29 4 1
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
       82 JUMPIFNOT                        R3 ; [+67]
       83 GETTABLEKS                       R3 R1 K11 ["limit"]
       85 JUMPIFEQKNIL                     R3 ; [+64]
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
      107 GETTABLEKS                       R11 R2 K22 ["success"]
      109 NOT                              R9 R11
      110 JUMPIFNOT                        R9 ; [+17]
      111 LOADB                            R9 0
      112 GETTABLEKS                       R12 R2 K23 ["errorDetails"]
      114 FASTCALL1                        TYPEOF R12 ; [+2]
      115 GETIMPORT                        R11 K25 [typeof]
      117 CALL                             R11 1 1
      118 JUMPIFNOTEQKS                    R11 K8 ["table"] ; [+9]
      120 GETTABLEKS                       R11 R2 K23 ["errorDetails"]
      122 GETTABLEKS                       R11 R11 K26 ["kind"]
      124 JUMPIFEQKS                       R11 K27 ["Network"] ; [+2]
      126 LOADB                            R9 0 +1
      127 LOADB                            R9 1
      128 JUMPIFNOT                        R9 ; [+31]
      129 GETUPVAL                         R9 0
      130 GETTABLEKS                       R9 R9 K0 ["FFlagDebugLogAssistantUI"]
      132 JUMPIFNOT                        R9 ; [+14]
      133 LENGTH                           R9 R3
      134 JUMPIFNOTLT                      R7 R9 ; [+12]
      136 GETIMPORT                        R9 K18 [print]
      138 LOADK                            R10 K28 ["[CloudIO] getAgentMessagesAsync network failure threadId=%* limit=%*; retrying with limit=%*"]
      139 MOVE                             R12 R0
      140 MOVE                             R13 R8
      141 ADDK                             R15 R7 K29 [1]
      142 GETTABLE                         R14 R3 R15
      143 NAMECALL                         R10 R10 K7 ["format"]
      145 CALL                             R10 4 1
      146 CALL                             R9 1 0
      147 FORGLOOP                         R4 2 ; [-53]
      149 JUMP                             ; [+10]
      150 GETUPVAL                         R3 3
      151 GETTABLEKS                       R3 R3 K21 ["callWithOptions"]
      153 NEWCLOSURE                       R4 P1
      154 CAPTURE                          UPVAL U4
      155 CAPTURE                          VAL R0
      156 CAPTURE                          VAL R1
      157 DUPTABLE                         R5 K32 [{["retryCount"] = 2}]
      158 CALL                             R3 2 1
      159 MOVE                             R2 R3
      160 GETTABLEKS                       R3 R2 K22 ["success"]
      162 JUMPIF                           R3 ; [+72]
      163 GETUPVAL                         R3 0
      164 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
      166 JUMPIFNOT                        R3 ; [+62]
      167 GETTABLEKS                       R3 R2 K23 ["errorDetails"]
      169 LOADNIL                          R4
      170 LOADNIL                          R5
      171 LOADNIL                          R6
      172 FASTCALL1                        TYPEOF R3 ; [+3]
      173 MOVE                             R8 R3
      174 GETIMPORT                        R7 K25 [typeof]
      176 CALL                             R7 1 1
      177 JUMPIFNOTEQKS                    R7 K8 ["table"] ; [+16]
      179 GETTABLEKS                       R4 R3 K26 ["kind"]
      181 GETTABLEKS                       R7 R3 K26 ["kind"]
      183 JUMPIFNOTEQKS                    R7 K27 ["Network"] ; [+4]
      185 GETTABLEKS                       R5 R3 K33 ["networkError"]
      187 JUMP                             ; [+6]
      188 GETTABLEKS                       R7 R3 K26 ["kind"]
      190 JUMPIFNOTEQKS                    R7 K34 ["HttpStatusCode"] ; [+3]
      192 GETTABLEKS                       R6 R3 K35 ["statusMessage"]
      194 GETIMPORT                        R7 K37 [warn]
      196 LOADK                            R8 K38 ["[CloudIO] getAgentMessagesAsync failed threadId=%* cursor=%* limit=%* kind=%* networkError=%* statusMessage=%*"]
      197 MOVE                             R10 R0
      198 GETTABLEKS                       R12 R1 K1 ["cursor"]
      200 FASTCALL1                        TOSTRING R12 ; [+2]
      201 GETIMPORT                        R11 K5 [tostring]
      203 CALL                             R11 1 1
      204 GETTABLEKS                       R13 R1 K11 ["limit"]
      206 FASTCALL1                        TOSTRING R13 ; [+2]
      207 GETIMPORT                        R12 K5 [tostring]
      209 CALL                             R12 1 1
      210 FASTCALL1                        TOSTRING R4 ; [+3]
      211 MOVE                             R14 R4
      212 GETIMPORT                        R13 K5 [tostring]
      214 CALL                             R13 1 1
      215 FASTCALL1                        TOSTRING R5 ; [+3]
      216 MOVE                             R15 R5
      217 GETIMPORT                        R14 K5 [tostring]
      219 CALL                             R14 1 1
      220 FASTCALL1                        TOSTRING R6 ; [+3]
      221 MOVE                             R16 R6
      222 GETIMPORT                        R15 K5 [tostring]
      224 CALL                             R15 1 1
      225 NAMECALL                         R8 R8 K7 ["format"]
      227 CALL                             R8 7 1
      228 CALL                             R7 1 0
      229 GETUPVAL                         R3 3
      230 GETTABLEKS                       R3 R3 K39 ["throwError"]
      232 MOVE                             R4 R2
      233 CALL                             R3 1 -1
      234 RETURN                           R3 -1
      235 NEWTABLE                         R3 0 0
      237 GETTABLEKS                       R4 R2 K40 ["data"]
      239 GETTABLEKS                       R4 R4 K41 ["messages"]
      241 JUMPIF                           R4 ; [+2]
      242 NEWTABLE                         R4 0 0
      244 MOVE                             R5 R4
      245 LOADNIL                          R6
      246 LOADNIL                          R7
      247 FORGPREP                         R5
      248 GETTABLEKS                       R10 R9 K42 ["messageId"]
      250 JUMPIFNOT                        R10 ; [+123]
      251 NEWTABLE                         R10 0 0
      253 NEWTABLE                         R11 0 0
      255 GETTABLEKS                       R12 R9 K43 ["contents"]
      257 JUMPIF                           R12 ; [+2]
      258 NEWTABLE                         R12 0 0
      260 GETIMPORT                        R13 K45 [table.sort]
      262 MOVE                             R14 R12
      263 DUPCLOSURE                       R15 K46 [PROTO_29]
      264 CALL                             R13 2 0
      265 MOVE                             R13 R12
      266 LOADNIL                          R14
      267 LOADNIL                          R15
      268 FORGPREP                         R13
      269 GETTABLEKS                       R18 R17 K47 ["mcpContent"]
      271 JUMPIFNOT                        R18 ; [+33]
      272 GETUPVAL                         R19 5
      273 GETTABLEKS                       R20 R17 K47 ["mcpContent"]
      275 FASTPCALL                        pcall 2 ; [+2]
      276 GETIMPORT                        R18 K49 [pcall]
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
      305 FORGLOOP                         R13 2 ; [-37]
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
      374 FORGLOOP                         R5 2 ; [-127]
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
       16 GETUPVAL                         R14 0
       17 GETUPVAL                         R15 1
       18 MOVE                             R16 R12
       19 CALL                             R15 1 1
       20 FASTPCALL                        pcall 2 ; [+2]
       21 GETIMPORT                        R13 K4 [pcall]
       23 CALL                             R13 2 2
       24 JUMPIF                           R13 ; [+12]
       25 GETIMPORT                        R15 K6 [error]
       27 LOADK                            R16 K7 ["Failed to encode ACP message content: %*"]
       28 FASTCALL1                        TOSTRING R14 ; [+3]
       29 MOVE                             R19 R14
       30 GETIMPORT                        R18 K9 [tostring]
       32 CALL                             R18 1 1
       33 NAMECALL                         R16 R16 K10 ["format"]
       35 CALL                             R16 2 1
       36 CALL                             R15 1 0
       37 GETTABLEKS                       R15 R6 K11 ["contentIds"]
       39 JUMPIFNOT                        R15 ; [+3]
       40 GETTABLEKS                       R16 R6 K11 ["contentIds"]
       42 GETTABLE                         R15 R16 R11
       43 JUMPIF                           R15 ; [+9]
       44 GETIMPORT                        R16 K6 [error]
       46 LOADK                            R17 K12 ["Missing stable ACP content id for message %*"]
       47 GETTABLEKS                       R19 R6 K13 ["messageId"]
       49 NAMECALL                         R17 R17 K10 ["format"]
       51 CALL                             R17 2 1
       52 CALL                             R16 1 0
       53 DUPTABLE                         R18 K20 [{"contentId", "sequenceNumber", "createdUtc", "updatedUtc", "mcpVersion", "mcpContent"}]
       54 SETTABLEKS                       R15 R18 K14 ["contentId"]
       56 SETTABLEKS                       R11 R18 K15 ["sequenceNumber"]
       58 GETTABLEKS                       R19 R6 K21 ["createdAt"]
       60 SETTABLEKS                       R19 R18 K16 ["createdUtc"]
       62 GETTABLEKS                       R19 R6 K22 ["updatedAt"]
       64 SETTABLEKS                       R19 R18 K17 ["updatedUtc"]
       66 GETUPVAL                         R19 2
       67 GETTABLEKS                       R19 R19 K23 ["Types"]
       69 GETTABLEKS                       R19 R19 K24 ["LATEST_PROTOCOL_VERSION"]
       71 SETTABLEKS                       R19 R18 K18 ["mcpVersion"]
       73 SETTABLEKS                       R14 R18 K19 ["mcpContent"]
       75 FASTCALL2                        TABLE_INSERT R7 R18 ; [+4]
       77 MOVE                             R17 R7
       78 GETIMPORT                        R16 K27 [table.insert]
       80 CALL                             R16 2 0
       81 FORGLOOP                         R8 2 ; [-66]
       83 DUPTABLE                         R8 K32 [{"threadId", "messageId", "createdUtc", "updatedUtc", "role", "metadata", "contents"}]
       84 GETTABLEKS                       R9 R0 K33 ["sessionId"]
       86 SETTABLEKS                       R9 R8 K28 ["threadId"]
       88 GETTABLEKS                       R9 R6 K13 ["messageId"]
       90 SETTABLEKS                       R9 R8 K13 ["messageId"]
       92 GETTABLEKS                       R9 R6 K21 ["createdAt"]
       94 SETTABLEKS                       R9 R8 K16 ["createdUtc"]
       96 GETTABLEKS                       R9 R6 K22 ["updatedAt"]
       98 SETTABLEKS                       R9 R8 K17 ["updatedUtc"]
      100 GETTABLEKS                       R9 R6 K1 ["message"]
      102 GETTABLEKS                       R9 R9 K29 ["role"]
      104 SETTABLEKS                       R9 R8 K29 ["role"]
      106 GETUPVAL                         R9 3
      107 SETTABLEKS                       R9 R8 K30 ["metadata"]
      109 SETTABLEKS                       R7 R8 K31 ["contents"]
      111 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
      113 MOVE                             R10 R1
      114 MOVE                             R11 R8
      115 GETIMPORT                        R9 K27 [table.insert]
      117 CALL                             R9 2 0
      118 FORGLOOP                         R2 2 ; [-112]
      120 GETUPVAL                         R2 4
      121 GETTABLEKS                       R2 R2 K34 ["FFlagDebugLogAssistantUI"]
      123 JUMPIFNOT                        R2 ; [+13]
      124 GETIMPORT                        R2 K36 [print]
      126 LOADK                            R3 K37 ["[CloudIO] ACP save before projectForLegacyStorage session=%* messages=%*: %*"]
      127 GETTABLEKS                       R5 R0 K33 ["sessionId"]
      129 LENGTH                           R6 R1
      130 GETUPVAL                         R7 5
      131 MOVE                             R8 R1
      132 CALL                             R7 1 1
      133 NAMECALL                         R3 R3 K10 ["format"]
      135 CALL                             R3 4 1
      136 CALL                             R2 1 0
      137 GETUPVAL                         R2 6
      138 GETTABLEKS                       R2 R2 K38 ["projectForLegacyStorage"]
      140 MOVE                             R3 R1
      141 CALL                             R2 1 1
      142 MOVE                             R1 R2
      143 GETUPVAL                         R2 4
      144 GETTABLEKS                       R2 R2 K34 ["FFlagDebugLogAssistantUI"]
      146 JUMPIFNOT                        R2 ; [+13]
      147 GETIMPORT                        R2 K36 [print]
      149 LOADK                            R3 K39 ["[CloudIO] ACP save after projectForLegacyStorage session=%* messages=%*: %*"]
      150 GETTABLEKS                       R5 R0 K33 ["sessionId"]
      152 LENGTH                           R6 R1
      153 GETUPVAL                         R7 5
      154 MOVE                             R8 R1
      155 CALL                             R7 1 1
      156 NAMECALL                         R3 R3 K10 ["format"]
      158 CALL                             R3 4 1
      159 CALL                             R2 1 0
      160 LENGTH                           R2 R1
      161 JUMPIFNOTEQKN                    R2 K40 [0] ; [+4]
      163 LOADB                            R2 1
      164 CLOSEUPVALS                      R1
      165 RETURN                           R2 1
      166 GETUPVAL                         R2 7
      167 GETTABLEKS                       R2 R2 K41 ["callWithOptions"]
      169 NEWCLOSURE                       R3 P0
      170 CAPTURE                          UPVAL U8
      171 CAPTURE                          VAL R0
      172 CAPTURE                          REF R1
      173 DUPTABLE                         R4 K44 [{["retryCount"] = 2}]
      174 CALL                             R2 2 1
      175 GETTABLEKS                       R3 R2 K45 ["success"]
      177 JUMPIF                           R3 ; [+7]
      178 GETUPVAL                         R3 7
      179 GETTABLEKS                       R3 R3 K46 ["throwError"]
      181 MOVE                             R4 R2
      182 CALL                             R3 1 -1
      183 CLOSEUPVALS                      R1
      184 RETURN                           R3 -1
      185 LOADB                            R3 1
      186 CLOSEUPVALS                      R1
      187 RETURN                           R3 1

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
