PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+6]
        2 GETIMPORT                        R2 K2 [table.clone]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1
        7 NEWTABLE                         R2 0 0
        9 MOVE                             R3 R1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 LOADB                            R8 1
       14 SETTABLE                         R8 R2 R7
       15 FORGLOOP                         R3 2 ; [-3]
       17 NEWTABLE                         R3 0 0
       19 MOVE                             R4 R0
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETTABLEKS                       R10 R8 K3 ["name"]
       25 FASTCALL1                        TYPEOF R10 ; [+2]
       26 GETIMPORT                        R9 K5 [typeof]
       28 CALL                             R9 1 1
       29 JUMPIFNOTEQKS                    R9 K6 ["string"] ; [+12]
       31 GETTABLEKS                       R10 R8 K3 ["name"]
       33 GETTABLE                         R9 R2 R10
       34 JUMPIFNOT                        R9 ; [+7]
       35 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       37 MOVE                             R10 R3
       38 MOVE                             R11 R8
       39 GETIMPORT                        R9 K8 [table.insert]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R4 2 ; [-20]
       44 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reject"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"code", "message"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["code"]
        4 LOADK                            R3 K3 ["not_implemented: %*"]
        5 MOVE                             R5 R0
        6 NAMECALL                         R3 R3 K4 ["format"]
        8 CALL                             R3 2 1
        9 MOVE                             R2 R3
       10 SETTABLEKS                       R2 R1 K1 ["message"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"sessionUpdate", "content"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K3 ["AgentMessageChunk"]
        4 SETTABLEKS                       R3 R2 K0 ["sessionUpdate"]
        6 DUPTABLE                         R3 K7 [{["type"] = "text", ["text"] = "LocalACPAgentService is wired up (foundations). Engine lands in Phase 2."}]
        7 SETTABLEKS                       R3 R2 K1 ["content"]
        9 DUPTABLE                         R5 K10 [{"sessionId", "update"}]
       10 SETTABLEKS                       R1 R5 K8 ["sessionId"]
       12 SETTABLEKS                       R2 R5 K9 ["update"]
       14 NAMECALL                         R3 R0 K11 ["sendSessionUpdate"]
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["type"]
        8 JUMPIFNOTEQKS                    R7 K1 ["text"] ; [+13]
       10 DUPTABLE                         R9 K2 [{[1] = "text", ["text"]}]
       11 GETTABLEKS                       R10 R6 K1 ["text"]
       13 SETTABLEKS                       R10 R9 K1 ["text"]
       15 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       17 MOVE                             R8 R1
       18 GETIMPORT                        R7 K5 [table.insert]
       20 CALL                             R7 2 0
       21 JUMP                             ; [+19]
       22 GETTABLEKS                       R7 R6 K0 ["type"]
       24 JUMPIFNOTEQKS                    R7 K6 ["image"] ; [+16]
       26 DUPTABLE                         R9 K9 [{[1] = "image", ["data"], ["mimeType"]}]
       27 GETTABLEKS                       R10 R6 K7 ["data"]
       29 SETTABLEKS                       R10 R9 K7 ["data"]
       31 GETTABLEKS                       R10 R6 K8 ["mimeType"]
       33 SETTABLEKS                       R10 R9 K8 ["mimeType"]
       35 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       37 MOVE                             R8 R1
       38 GETIMPORT                        R7 K5 [table.insert]
       40 CALL                             R7 2 0
       41 FORGLOOP                         R2 2 ; [-36]
       43 DUPTABLE                         R2 K13 [{["role"] = "user", ["content"]}]
       44 SETTABLEKS                       R1 R2 K12 ["content"]
       46 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R0 K2 [DateTime.now]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K3 ["UnixTimestampMillis"]
        5 RETURN                           R0 1

PROTO_6:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["_roblox"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 LOADB                            R2 0
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R4 R1
       14 GETIMPORT                        R3 K1 [type]
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
       19 GETTABLEKS                       R3 R1 K4 ["isSlashCommand"]
       21 JUMPIFEQKB                       R3 TRUE ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["persistedMessageCreatedAt"]
        2 SUBK                             R4 R1 K1 [1]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIF                           R2 ; [+2]
        5 GETTABLEKS                       R2 R0 K2 ["updatedAt"]
        7 MOVE                             R5 R1
        8 GETTABLEKS                       R6 R0 K3 ["messages"]
       10 LENGTH                           R3 R6
       11 LOADN                            R4 1
       12 FORNPREP                         R3
       13 GETTABLEKS                       R7 R0 K0 ["persistedMessageCreatedAt"]
       15 GETTABLE                         R6 R7 R5
       16 JUMPIFNOT                        R6 ; [+9]
       17 FASTCALL2                        MATH_MAX R2 R6 ; [+5]
       19 MOVE                             R8 R2
       20 MOVE                             R9 R6
       21 GETIMPORT                        R7 K6 [math.max]
       23 CALL                             R7 2 1
       24 MOVE                             R2 R7
       25 JUMP                             ; [+4]
       26 ADDK                             R2 R2 K1 [1]
       27 GETTABLEKS                       R7 R0 K0 ["persistedMessageCreatedAt"]
       29 SETTABLE                         R2 R7 R5
       30 FORNLOOP                         R3
       31 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantPersistOnlyForDirtySession"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 LOADB                            R2 1
        6 SETTABLEKS                       R2 R0 K1 ["isDirty"]
        8 JUMPIFEQKNIL                     R1 ; [+14]
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+11]
       13 GETTABLEKS                       R3 R0 K2 ["persistedMessageBaseIndex"]
       15 SUBK                             R4 R1 K3 [1]
       16 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       18 GETIMPORT                        R2 K6 [math.min]
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R0 K2 ["persistedMessageBaseIndex"]
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["content"]
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 GETTABLEKS                       R12 R11 K1 ["type"]
       13 JUMPIFNOTEQKS                    R12 K2 ["tool_use"] ; [+24]
       15 GETUPVAL                         R12 0
       16 GETTABLEKS                       R12 R12 K3 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
       18 JUMPIF                           R12 ; [+8]
       19 GETUPVAL                         R12 1
       20 GETTABLEKS                       R12 R12 K4 ["normalizeToolInput"]
       22 GETTABLEKS                       R13 R11 K5 ["input"]
       24 CALL                             R12 1 1
       25 SETTABLEKS                       R12 R11 K5 ["input"]
       27 GETTABLEKS                       R12 R11 K6 ["id"]
       29 JUMPIFNOT                        R12 ; [+8]
       30 GETTABLEKS                       R12 R11 K7 ["name"]
       32 JUMPIFNOT                        R12 ; [+5]
       33 GETTABLEKS                       R12 R11 K6 ["id"]
       35 GETTABLEKS                       R13 R11 K7 ["name"]
       37 SETTABLE                         R13 R1 R12
       38 FORGLOOP                         R7 2 ; [-28]
       40 FORGLOOP                         R2 2 ; [-35]
       42 MOVE                             R2 R0
       43 LOADNIL                          R3
       44 LOADNIL                          R4
       45 FORGPREP                         R2
       46 GETTABLEKS                       R7 R6 K0 ["content"]
       48 LOADNIL                          R8
       49 LOADNIL                          R9
       50 FORGPREP                         R7
       51 GETTABLEKS                       R12 R11 K1 ["type"]
       53 JUMPIFNOTEQKS                    R12 K8 ["tool_result"] ; [+59]
       55 FASTCALL2K                       RAWGET R11 K9 ; [+5]
       57 MOVE                             R13 R11
       58 LOADK                            R14 K9 ["toolUseId"]
       59 GETIMPORT                        R12 K11 [rawget]
       61 CALL                             R12 2 1
       62 GETTABLEKS                       R13 R11 K6 ["id"]
       64 JUMPIF                           R13 ; [+10]
       65 FASTCALL1                        TYPEOF R12 ; [+3]
       66 MOVE                             R15 R12
       67 GETIMPORT                        R14 K13 [typeof]
       69 CALL                             R14 1 1
       70 JUMPIFNOTEQKS                    R14 K14 ["string"] ; [+3]
       72 MOVE                             R13 R12
       73 JUMP                             ; [+1]
       74 LOADNIL                          R13
       75 DUPTABLE                         R14 K19 [{["type"] = "tool_result", ["id"], ["name"], [4], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
       76 ORK                              R15 R13 K20 [""]
       77 SETTABLEKS                       R15 R14 K6 ["id"]
       79 GETTABLEKS                       R15 R11 K7 ["name"]
       81 JUMPIF                           R15 ; [+4]
       82 JUMPIFNOT                        R13 ; [+2]
       83 GETTABLE                         R15 R1 R13
       84 JUMPIF                           R15 ; [+1]
       85 LOADK                            R15 K21 ["unknown_tool"]
       86 SETTABLEKS                       R15 R14 K7 ["name"]
       88 GETTABLEKS                       R15 R11 K0 ["content"]
       90 SETTABLEKS                       R15 R14 K0 ["content"]
       92 GETTABLEKS                       R15 R11 K15 ["isError"]
       94 SETTABLEKS                       R15 R14 K15 ["isError"]
       96 GETTABLEKS                       R15 R11 K16 ["structuredContent"]
       98 SETTABLEKS                       R15 R14 K16 ["structuredContent"]
      100 GETTABLEKS                       R16 R11 K17 ["startTime"]
      102 ORK                              R15 R16 K22 [0]
      103 SETTABLEKS                       R15 R14 K17 ["startTime"]
      105 GETTABLEKS                       R16 R11 K18 ["startTimeAfterConfirmation"]
      107 ORK                              R15 R16 K22 [0]
      108 SETTABLEKS                       R15 R14 K18 ["startTimeAfterConfirmation"]
      110 GETTABLEKS                       R15 R6 K0 ["content"]
      112 SETTABLE                         R14 R15 R10
      113 FORGLOOP                         R7 2 ; [-63]
      115 FORGLOOP                         R2 2 ; [-70]
      117 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 LENGTH                           R0 R1
        4 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 DUPTABLE                         R2 K3 [{"message", "contentIds"}]
        9 DUPTABLE                         R3 K6 [{"role", "content"}]
       10 GETUPVAL                         R4 0
       11 SETTABLEKS                       R4 R3 K4 ["role"]
       13 GETUPVAL                         R4 1
       14 SETTABLEKS                       R4 R3 K5 ["content"]
       16 SETTABLEKS                       R3 R2 K1 ["message"]
       18 GETUPVAL                         R3 3
       19 SETTABLEKS                       R3 R2 K2 ["contentIds"]
       21 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
       23 GETIMPORT                        R0 K9 [table.insert]
       25 CALL                             R0 2 0
       26 LOADNIL                          R0
       27 SETUPVAL                         R0 0
       28 NEWTABLE                         R0 0 0
       30 SETUPVAL                         R0 1
       31 NEWTABLE                         R0 0 0
       33 SETUPVAL                         R0 3
       34 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 NEWTABLE                         R4 0 0
        5 NEWTABLE                         R5 0 0
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          REF R3
        9 CAPTURE                          REF R4
       10 CAPTURE                          VAL R2
       11 CAPTURE                          REF R5
       12 GETTABLEKS                       R7 R0 K0 ["content"]
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 FORGPREP                         R7
       17 GETTABLEKS                       R12 R0 K1 ["role"]
       19 GETTABLEKS                       R13 R11 K2 ["type"]
       21 JUMPIFNOTEQKS                    R13 K3 ["tool_result"] ; [+3]
       23 LOADK                            R12 K4 ["user"]
       24 JUMP                             ; [+9]
       25 GETTABLEKS                       R13 R11 K2 ["type"]
       27 JUMPIFEQKS                       R13 K5 ["tool_use"] ; [+5]
       29 GETTABLEKS                       R13 R11 K2 ["type"]
       31 JUMPIFNOTEQKS                    R13 K6 ["thinking"] ; [+2]
       33 LOADK                            R12 K7 ["assistant"]
       34 JUMPIFEQ                         R3 R12 ; [+4]
       36 MOVE                             R13 R6
       37 CALL                             R13 0 0
       38 MOVE                             R3 R12
       39 FASTCALL2                        TABLE_INSERT R4 R11 ; [+5]
       41 MOVE                             R14 R4
       42 MOVE                             R15 R11
       43 GETIMPORT                        R13 K10 [table.insert]
       45 CALL                             R13 2 0
       46 GETTABLE                         R15 R1 R10
       47 JUMPIF                           R15 ; [+5]
       48 GETUPVAL                         R15 0
       49 LOADB                            R17 0
       50 NAMECALL                         R15 R15 K11 ["GenerateGUID"]
       52 CALL                             R15 2 1
       53 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       55 MOVE                             R14 R5
       56 GETIMPORT                        R13 K10 [table.insert]
       58 CALL                             R13 2 0
       59 FORGLOOP                         R7 2 ; [-43]
       61 MOVE                             R7 R6
       62 CALL                             R7 0 0
       63 CLOSEUPVALS                      R3
       64 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantPersistOnlyForDirtySession"]
        3 NEWTABLE                         R2 0 0
        5 GETTABLEKS                       R3 R0 K1 ["sessions"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R8 R7 K2 ["isDirty"]
       13 JUMPIFNOT                        R8 ; [+128]
       14 GETUPVAL                         R8 1
       15 MOVE                             R9 R7
       16 GETTABLEKS                       R11 R7 K4 ["persistedMessageBaseIndex"]
       18 ADDK                             R10 R11 K3 [1]
       19 CALL                             R8 2 0
       20 GETIMPORT                        R8 K7 [table.create]
       22 GETTABLEKS                       R10 R7 K8 ["messages"]
       24 LENGTH                           R9 R10
       25 CALL                             R8 1 1
       26 GETTABLEKS                       R12 R7 K4 ["persistedMessageBaseIndex"]
       28 ADDK                             R11 R12 K3 [1]
       29 GETTABLEKS                       R12 R7 K8 ["messages"]
       31 LENGTH                           R9 R12
       32 LOADN                            R10 1
       33 FORNPREP                         R9
       34 GETTABLEKS                       R13 R7 K8 ["messages"]
       36 GETTABLE                         R12 R13 R11
       37 GETTABLEKS                       R14 R7 K9 ["persistedMessageIds"]
       39 GETTABLE                         R13 R14 R11
       40 JUMPIF                           R13 ; [+5]
       41 GETUPVAL                         R13 2
       42 LOADB                            R15 0
       43 NAMECALL                         R13 R13 K10 ["GenerateGUID"]
       45 CALL                             R13 2 1
       46 GETTABLEKS                       R14 R7 K9 ["persistedMessageIds"]
       48 SETTABLE                         R13 R14 R11
       49 GETTABLEKS                       R15 R7 K11 ["persistedContentIds"]
       51 GETTABLE                         R14 R15 R11
       52 JUMPIF                           R14 ; [+2]
       53 NEWTABLE                         R14 0 0
       55 GETTABLEKS                       R15 R7 K11 ["persistedContentIds"]
       57 SETTABLE                         R14 R15 R11
       58 LOADN                            R17 1
       59 GETTABLEKS                       R18 R12 K12 ["content"]
       61 LENGTH                           R15 R18
       62 LOADN                            R16 1
       63 FORNPREP                         R15
       64 GETTABLE                         R18 R14 R17
       65 JUMPIF                           R18 ; [+5]
       66 GETUPVAL                         R18 2
       67 LOADB                            R20 0
       68 NAMECALL                         R18 R18 K10 ["GenerateGUID"]
       70 CALL                             R18 2 1
       71 SETTABLE                         R18 R14 R17
       72 FORNLOOP                         R15
       73 GETTABLEKS                       R16 R7 K13 ["persistedMessageCreatedAt"]
       75 GETTABLE                         R15 R16 R11
       76 LOADK                            R19 K14 ["expected persistedMessageCreatedAt[%*] after timestampNewMessages"]
       77 MOVE                             R21 R11
       78 NAMECALL                         R19 R19 K15 ["format"]
       80 CALL                             R19 2 1
       81 MOVE                             R18 R19
       82 FASTCALL2                        ASSERT R15 R18 ; [+4]
       84 MOVE                             R17 R15
       85 GETIMPORT                        R16 K17 [assert]
       87 CALL                             R16 2 0
       88 DUPTABLE                         R18 K23 [{"messageId", "contentIds", "createdAt", "updatedAt", "message"}]
       89 SETTABLEKS                       R13 R18 K18 ["messageId"]
       91 SETTABLEKS                       R14 R18 K19 ["contentIds"]
       93 SETTABLEKS                       R15 R18 K20 ["createdAt"]
       95 GETTABLEKS                       R19 R7 K21 ["updatedAt"]
       97 SETTABLEKS                       R19 R18 K21 ["updatedAt"]
       99 SETTABLEKS                       R12 R18 K22 ["message"]
      101 FASTCALL2                        TABLE_INSERT R8 R18 ; [+4]
      103 MOVE                             R17 R8
      104 GETIMPORT                        R16 K25 [table.insert]
      106 CALL                             R16 2 0
      107 FORNLOOP                         R9
      108 DUPTABLE                         R11 K28 [{"sessionId", "title", "createdAt", "updatedAt", "messages"}]
      109 GETTABLEKS                       R12 R7 K26 ["sessionId"]
      111 SETTABLEKS                       R12 R11 K26 ["sessionId"]
      113 GETTABLEKS                       R12 R7 K27 ["title"]
      115 SETTABLEKS                       R12 R11 K27 ["title"]
      117 GETTABLEKS                       R12 R7 K20 ["createdAt"]
      119 SETTABLEKS                       R12 R11 K20 ["createdAt"]
      121 GETTABLEKS                       R12 R7 K21 ["updatedAt"]
      123 SETTABLEKS                       R12 R11 K21 ["updatedAt"]
      125 SETTABLEKS                       R8 R11 K8 ["messages"]
      127 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      129 MOVE                             R10 R2
      130 GETIMPORT                        R9 K25 [table.insert]
      132 CALL                             R9 2 0
      133 JUMPIFNOT                        R1 ; [+8]
      134 LOADB                            R9 0
      135 SETTABLEKS                       R9 R7 K2 ["isDirty"]
      137 GETTABLEKS                       R10 R7 K8 ["messages"]
      139 LENGTH                           R9 R10
      140 SETTABLEKS                       R9 R7 K4 ["persistedMessageBaseIndex"]
      142 FORGLOOP                         R3 2 ; [-133]
      144 RETURN                           R2 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 NEWTABLE                         R4 0 0
        8 MOVE                             R5 R0
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R10 R10 K0 ["normalize"]
       15 GETTABLEKS                       R11 R9 K1 ["message"]
       17 CALL                             R10 1 1
       18 JUMPIFNOT                        R10 ; [+45]
       19 GETUPVAL                         R11 1
       20 MOVE                             R12 R10
       21 GETTABLEKS                       R13 R9 K2 ["contentIds"]
       23 JUMPIF                           R13 ; [+2]
       24 NEWTABLE                         R13 0 0
       26 CALL                             R11 2 3
       27 FORGPREP                         R11
       28 GETTABLEKS                       R18 R15 K1 ["message"]
       30 FASTCALL2                        TABLE_INSERT R1 R18 ; [+4]
       32 MOVE                             R17 R1
       33 GETIMPORT                        R16 K5 [table.insert]
       35 CALL                             R16 2 0
       36 GETTABLEKS                       R18 R9 K6 ["messageId"]
       38 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
       40 MOVE                             R17 R2
       41 GETIMPORT                        R16 K5 [table.insert]
       43 CALL                             R16 2 0
       44 GETTABLEKS                       R18 R15 K2 ["contentIds"]
       46 FASTCALL2                        TABLE_INSERT R3 R18 ; [+4]
       48 MOVE                             R17 R3
       49 GETIMPORT                        R16 K5 [table.insert]
       51 CALL                             R16 2 0
       52 GETTABLEKS                       R20 R9 K8 ["createdAt"]
       54 ADD                              R19 R20 R14
       55 SUBK                             R18 R19 K7 [1]
       56 FASTCALL2                        TABLE_INSERT R4 R18 ; [+4]
       58 MOVE                             R17 R4
       59 GETIMPORT                        R16 K5 [table.insert]
       61 CALL                             R16 2 0
       62 FORGLOOP                         R11 2 ; [-35]
       64 FORGLOOP                         R5 2 ; [-53]
       66 GETUPVAL                         R5 2
       67 MOVE                             R6 R1
       68 CALL                             R5 1 0
       69 RETURN                           R1 4

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["truncateUtf8Safe"]
        3 MOVE                             R2 R0
        4 LOADN                            R3 47
        5 CALL                             R1 2 2
        6 JUMPIFNOT                        R2 ; [+4]
        7 MOVE                             R4 R1
        8 LOADK                            R5 K1 ["..."]
        9 CONCAT                           R3 R4 R5
       10 RETURN                           R3 1
       11 RETURN                           R1 1

PROTO_16:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["role"]
        6 JUMPIFNOTEQKS                    R6 K1 ["user"] ; [+47]
        8 GETTABLEKS                       R6 R5 K2 ["content"]
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 FORGPREP                         R6
       13 GETTABLEKS                       R11 R10 K3 ["type"]
       15 JUMPIFNOTEQKS                    R11 K4 ["text"] ; [+36]
       17 GETTABLEKS                       R12 R10 K4 ["text"]
       19 FASTCALL1                        TYPEOF R12 ; [+2]
       20 GETIMPORT                        R11 K6 [typeof]
       22 CALL                             R11 1 1
       23 JUMPIFNOTEQKS                    R11 K7 ["string"] ; [+28]
       25 GETIMPORT                        R11 K9 [string.match]
       27 GETTABLEKS                       R12 R10 K4 ["text"]
       29 LOADK                            R13 K10 ["^%s*<system_reminder>"]
       30 CALL                             R11 2 1
       31 JUMPIF                           R11 ; [+20]
       32 GETIMPORT                        R11 K12 [string.gsub]
       34 GETTABLEKS                       R12 R10 K4 ["text"]
       36 LOADK                            R13 K13 ["\n"]
       37 LOADK                            R14 K14 [" "]
       38 CALL                             R11 3 1
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R13 R13 K15 ["truncateUtf8Safe"]
       42 MOVE                             R14 R11
       43 LOADN                            R15 47
       44 CALL                             R13 2 2
       45 JUMPIFNOT                        R14 ; [+4]
       46 MOVE                             R15 R13
       47 LOADK                            R16 K16 ["..."]
       48 CONCAT                           R12 R15 R16
       49 RETURN                           R12 1
       50 MOVE                             R12 R13
       51 RETURN                           R12 1
       52 FORGLOOP                         R6 2 ; [-40]
       54 FORGLOOP                         R1 2 ; [-51]
       56 LOADNIL                          R1
       57 RETURN                           R1 1

PROTO_17:
        0 JUMPIFEQKNIL                     R0 ; [+18]
        2 JUMPIFEQKS                       R0 K0 [""] ; [+16]
        4 JUMPIFEQKS                       R0 K1 ["Assistant conversation"] ; [+14]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["truncateUtf8Safe"]
        9 MOVE                             R4 R0
       10 LOADN                            R5 47
       11 CALL                             R3 2 2
       12 JUMPIFNOT                        R4 ; [+4]
       13 MOVE                             R5 R3
       14 LOADK                            R6 K3 ["..."]
       15 CONCAT                           R2 R5 R6
       16 RETURN                           R2 1
       17 MOVE                             R2 R3
       18 RETURN                           R2 1
       19 GETUPVAL                         R2 1
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K5 [warn]
       24 LOADK                            R5 K6 ["[Assistant][ACP] session/list title is nil or legacy default (%*); generating title from first user message: %*"]
       25 FASTCALL1                        TOSTRING R0 ; [+3]
       26 MOVE                             R8 R0
       27 GETIMPORT                        R7 K8 [tostring]
       29 CALL                             R7 1 1
       30 FASTCALL1                        TOSTRING R2 ; [+3]
       31 MOVE                             R9 R2
       32 GETIMPORT                        R8 K8 [tostring]
       34 CALL                             R8 1 1
       35 NAMECALL                         R5 R5 K9 ["format"]
       37 CALL                             R5 3 1
       38 MOVE                             R4 R5
       39 CALL                             R3 1 0
       40 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantACPServiceClearSessions"]
        3 NOT                              R1 R2
        4 JUMPIF                           R1 ; [+11]
        5 LOADB                            R1 0
        6 GETTABLEKS                       R2 R0 K1 ["placeId"]
        8 JUMPIFEQKN                       R2 K2 [0] ; [+7]
       10 GETTABLEKS                       R2 R0 K3 ["gameId"]
       12 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R1 ; [+4]
       17 GETUPVAL                         R2 1
       18 GETUPVAL                         R3 2
       19 CALL                             R2 1 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R2
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantACPServiceClearSessions"]
       25 JUMPIFNOT                        R3 ; [+31]
       26 GETTABLEKS                       R3 R0 K4 ["isPlaceClosed"]
       28 JUMPIFNOT                        R3 ; [+28]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K5 ["activeCancels"]
       32 LOADNIL                          R4
       33 LOADNIL                          R5
       34 FORGPREP                         R3
       35 MOVE                             R8 R7
       36 CALL                             R8 0 0
       37 FORGLOOP                         R3 2 ; [-3]
       39 GETIMPORT                        R3 K8 [table.clear]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K5 ["activeCancels"]
       44 CALL                             R3 1 0
       45 GETIMPORT                        R3 K8 [table.clear]
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K9 ["sessions"]
       50 CALL                             R3 1 0
       51 GETIMPORT                        R3 K8 [table.clear]
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R4 R4 K10 ["sessionMetadata"]
       56 CALL                             R3 1 0
       57 JUMPIFNOT                        R2 ; [+6]
       58 GETUPVAL                         R3 3
       59 GETTABLEKS                       R3 R3 K11 ["saveSessions"]
       61 MOVE                             R4 R2
       62 MOVE                             R5 R0
       63 CALL                             R3 2 0
       64 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["referenceId"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R2 R1 K1 ["resolve"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+6]
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["Fire"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_21:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+5]
        2 GETUPVAL                         R4 0
        3 LOADB                            R6 0
        4 NAMECALL                         R4 R4 K0 ["GenerateGUID"]
        6 CALL                             R4 2 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["new"]
       10 CALL                             R5 0 1
       11 LOADNIL                          R6
       12 GETUPVAL                         R7 2
       13 DUPTABLE                         R8 K3 [{"resolve"}]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          REF R6
       16 CAPTURE                          VAL R5
       17 SETTABLEKS                       R9 R8 K2 ["resolve"]
       19 SETTABLE                         R8 R7 R4
       20 DUPTABLE                         R7 K12 [{["sessionUpdate"] = "tool_call_update", ["toolCallId"], ["title"], ["status"] = "in_progress", ["rawInput"], ["_meta"]}]
       21 SETTABLEKS                       R4 R7 K6 ["toolCallId"]
       23 SETTABLEKS                       R0 R7 K7 ["title"]
       25 SETTABLEKS                       R1 R7 K10 ["rawInput"]
       27 DUPTABLE                         R8 K14 [{"_roblox"}]
       28 DUPTABLE                         R9 K20 [{["expectsReply"] = True, ["referenceId"], ["turnId"], ["isSlashCommand"]}]
       29 SETTABLEKS                       R4 R9 K17 ["referenceId"]
       31 GETUPVAL                         R10 3
       32 SETTABLEKS                       R10 R9 K18 ["turnId"]
       34 GETUPVAL                         R10 4
       35 SETTABLEKS                       R10 R9 K19 ["isSlashCommand"]
       37 SETTABLEKS                       R9 R8 K13 ["_roblox"]
       39 SETTABLEKS                       R8 R7 K11 ["_meta"]
       41 GETUPVAL                         R8 5
       42 DUPTABLE                         R10 K23 [{"sessionId", "update"}]
       43 GETUPVAL                         R11 6
       44 SETTABLEKS                       R11 R10 K21 ["sessionId"]
       46 SETTABLEKS                       R7 R10 K22 ["update"]
       48 NAMECALL                         R8 R8 K24 ["sendSessionUpdate"]
       50 CALL                             R8 2 0
       51 JUMPIFNOTEQKNIL                  R6 ; [+4]
       53 NAMECALL                         R8 R5 K25 ["Wait"]
       55 CALL                             R8 1 0
       56 GETUPVAL                         R8 2
       57 LOADNIL                          R9
       58 SETTABLE                         R9 R8 R4
       59 MOVE                             R8 R6
       60 JUMPIF                           R8 ; [+9]
       61 GETIMPORT                        R9 K27 [error]
       63 LOADK                            R11 K28 ["client tool reply missing for %*"]
       64 MOVE                             R13 R4
       65 NAMECALL                         R11 R11 K29 ["format"]
       67 CALL                             R11 2 1
       68 MOVE                             R10 R11
       69 CALL                             R9 1 0
       70 GETTABLEKS                       R9 R8 K30 ["content"]
       72 CLOSEUPVALS                      R6
       73 RETURN                           R9 1

PROTO_22:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 RETURN                           R3 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sessions"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 GETIMPORT                        R2 K3 [DateTime.now]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R2 R2 K4 ["UnixTimestampMillis"]
       11 DUPTABLE                         R3 K18 [{["sessionId"], ["title"] = , ["messages"], ["createdAt"], ["updatedAt"], ["persistedMessageIds"], ["persistedContentIds"], ["persistedMessageCreatedAt"], ["persistedMessageBaseIndex"] = 0, ["isDirty"] = False}]
       12 SETTABLEKS                       R0 R3 K5 ["sessionId"]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K8 ["messages"]
       18 SETTABLEKS                       R2 R3 K9 ["createdAt"]
       20 SETTABLEKS                       R2 R3 K10 ["updatedAt"]
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R3 K11 ["persistedMessageIds"]
       26 NEWTABLE                         R4 0 0
       28 SETTABLEKS                       R4 R3 K12 ["persistedContentIds"]
       30 NEWTABLE                         R4 0 0
       32 SETTABLEKS                       R4 R3 K13 ["persistedMessageCreatedAt"]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K0 ["sessions"]
       37 SETTABLE                         R3 R4 R0
       38 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 LOADB                            R5 0
        2 NAMECALL                         R3 R3 K0 ["GenerateGUID"]
        4 CALL                             R3 2 1
        5 NEWTABLE                         R4 0 0
        7 MOVE                             R5 R1
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 GETTABLEKS                       R10 R9 K1 ["type"]
       13 JUMPIFNOTEQKS                    R10 K2 ["text"] ; [+13]
       15 DUPTABLE                         R12 K3 [{["type"] = "text", ["text"]}]
       16 GETTABLEKS                       R13 R9 K2 ["text"]
       18 SETTABLEKS                       R13 R12 K2 ["text"]
       20 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       22 MOVE                             R11 R4
       23 GETIMPORT                        R10 K6 [table.insert]
       25 CALL                             R10 2 0
       26 JUMP                             ; [+23]
       27 GETTABLEKS                       R10 R9 K1 ["type"]
       29 JUMPIFNOTEQKS                    R10 K7 ["image"] ; [+20]
       31 DUPTABLE                         R12 K11 [{["type"] = "image", ["data"], ["mimeType"], ["uri"]}]
       32 GETTABLEKS                       R13 R9 K8 ["data"]
       34 SETTABLEKS                       R13 R12 K8 ["data"]
       36 GETTABLEKS                       R13 R9 K9 ["mimeType"]
       38 SETTABLEKS                       R13 R12 K9 ["mimeType"]
       40 GETTABLEKS                       R13 R9 K10 ["uri"]
       42 SETTABLEKS                       R13 R12 K10 ["uri"]
       44 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       46 MOVE                             R11 R4
       47 GETIMPORT                        R10 K6 [table.insert]
       49 CALL                             R10 2 0
       50 FORGLOOP                         R5 2 ; [-40]
       52 GETUPVAL                         R5 1
       53 DUPTABLE                         R7 K14 [{"sessionId", "update"}]
       54 SETTABLEKS                       R0 R7 K12 ["sessionId"]
       56 DUPTABLE                         R8 K20 [{["sessionUpdate"] = "user_message", ["messageId"], ["content"], ["_meta"]}]
       57 SETTABLEKS                       R3 R8 K17 ["messageId"]
       59 SETTABLEKS                       R4 R8 K18 ["content"]
       61 DUPTABLE                         R9 K22 [{"_roblox"}]
       62 DUPTABLE                         R10 K25 [{"turnId", "emittedTime"}]
       63 SETTABLEKS                       R2 R10 K23 ["turnId"]
       65 GETIMPORT                        R11 K28 [DateTime.now]
       67 CALL                             R11 0 1
       68 NAMECALL                         R11 R11 K29 ["ToIsoDate"]
       70 CALL                             R11 1 1
       71 SETTABLEKS                       R11 R10 K24 ["emittedTime"]
       73 SETTABLEKS                       R10 R9 K21 ["_roblox"]
       75 SETTABLEKS                       R9 R8 K19 ["_meta"]
       77 SETTABLEKS                       R8 R7 K13 ["update"]
       79 NAMECALL                         R5 R5 K30 ["sendSessionUpdate"]
       81 CALL                             R5 2 0
       82 RETURN                           R3 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["clientCapabilities"]
        3 SETTABLEKS                       R2 R1 K0 ["clientCapabilities"]
        5 GETTABLEKS                       R1 R0 K1 ["protocolVersion"]
        7 JUMPIF                           R1 ; [+3]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["LATEST_PROTOCOL_VERSION"]
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K2 ["LATEST_PROTOCOL_VERSION"]
       15 FASTCALL2                        MATH_MIN R1 R5 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R3 K5 [math.min]
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K6 ["negotiatedProtocolVersion"]
       23 DUPTABLE                         R2 K9 [{"protocolVersion", "agentCapabilities", "agentInfo"}]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K6 ["negotiatedProtocolVersion"]
       27 SETTABLEKS                       R3 R2 K1 ["protocolVersion"]
       29 GETUPVAL                         R3 2
       30 SETTABLEKS                       R3 R2 K7 ["agentCapabilities"]
       32 GETUPVAL                         R3 3
       33 SETTABLEKS                       R3 R2 K8 ["agentInfo"]
       35 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        4 CALL                             R1 2 1
        5 GETIMPORT                        R2 K3 [DateTime.now]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R2 R2 K4 ["UnixTimestampMillis"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K5 ["sessions"]
       13 DUPTABLE                         R4 K19 [{["sessionId"], ["title"] = , ["messages"], ["createdAt"], ["updatedAt"], ["persistedMessageIds"], ["persistedContentIds"], ["persistedMessageCreatedAt"], ["persistedMessageBaseIndex"] = 0, ["isDirty"] = False}]
       14 SETTABLEKS                       R1 R4 K6 ["sessionId"]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K9 ["messages"]
       20 SETTABLEKS                       R2 R4 K10 ["createdAt"]
       22 SETTABLEKS                       R2 R4 K11 ["updatedAt"]
       24 NEWTABLE                         R5 0 0
       26 SETTABLEKS                       R5 R4 K12 ["persistedMessageIds"]
       28 NEWTABLE                         R5 0 0
       30 SETTABLEKS                       R5 R4 K13 ["persistedContentIds"]
       32 NEWTABLE                         R5 0 0
       34 SETTABLEKS                       R5 R4 K14 ["persistedMessageCreatedAt"]
       36 SETTABLE                         R4 R3 R1
       37 DUPTABLE                         R3 K20 [{"sessionId"}]
       38 SETTABLEKS                       R1 R3 K6 ["sessionId"]
       40 RETURN                           R3 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sessions"]
        3 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIF                           R1 ; [+10]
        7 GETIMPORT                        R2 K3 [error]
        9 LOADK                            R4 K4 ["Unknown ACP session %*"]
       10 GETTABLEKS                       R6 R0 K1 ["sessionId"]
       12 NAMECALL                         R4 R4 K5 ["format"]
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 CALL                             R2 1 0
       17 GETTABLEKS                       R2 R0 K6 ["title"]
       19 JUMPIFEQKNIL                     R2 ; [+41]
       21 GETTABLEKS                       R3 R0 K6 ["title"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K7 ["truncateUtf8Safe"]
       26 MOVE                             R5 R3
       27 LOADN                            R6 47
       28 CALL                             R4 2 2
       29 JUMPIFNOT                        R5 ; [+4]
       30 MOVE                             R6 R4
       31 LOADK                            R7 K8 ["..."]
       32 CONCAT                           R2 R6 R7
       33 JUMP                             ; [+1]
       34 MOVE                             R2 R4
       35 SETTABLEKS                       R2 R1 K6 ["title"]
       37 GETIMPORT                        R3 K11 [DateTime.now]
       39 CALL                             R3 0 1
       40 GETTABLEKS                       R3 R3 K12 ["UnixTimestampMillis"]
       42 SETTABLEKS                       R3 R1 K13 ["updatedAt"]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R3 R3 K14 ["FFlagAssistantPersistOnlyForDirtySession"]
       47 JUMPIF                           R3 ; [+1]
       48 JUMP                             ; [+3]
       49 LOADB                            R3 1
       50 SETTABLEKS                       R3 R1 K15 ["isDirty"]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K16 ["sessionMetadata"]
       55 GETTABLEKS                       R5 R0 K1 ["sessionId"]
       57 GETTABLE                         R3 R4 R5
       58 JUMPIFNOT                        R3 ; [+2]
       59 SETTABLEKS                       R2 R3 K6 ["title"]
       61 NEWTABLE                         R2 0 0
       63 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sessions"]
        3 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIF                           R1 ; [+17]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["sessionMetadata"]
       10 GETTABLEKS                       R3 R0 K1 ["sessionId"]
       12 GETTABLE                         R1 R2 R3
       13 JUMPIF                           R1 ; [+10]
       14 GETIMPORT                        R1 K4 [error]
       16 LOADK                            R3 K5 ["Unknown ACP session %*"]
       17 GETTABLEKS                       R5 R0 K1 ["sessionId"]
       19 NAMECALL                         R3 R3 K6 ["format"]
       21 CALL                             R3 2 1
       22 MOVE                             R2 R3
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 1
       25 JUMPIFNOT                        R1 ; [+10]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K7 ["deleteSession"]
       29 JUMPIFNOT                        R1 ; [+6]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K7 ["deleteSession"]
       33 GETTABLEKS                       R2 R0 K1 ["sessionId"]
       35 CALL                             R1 1 0
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K0 ["sessions"]
       39 GETTABLEKS                       R2 R0 K1 ["sessionId"]
       41 LOADNIL                          R3
       42 SETTABLE                         R3 R1 R2
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K2 ["sessionMetadata"]
       46 GETTABLEKS                       R2 R0 K1 ["sessionId"]
       48 LOADNIL                          R3
       49 SETTABLE                         R3 R1 R2
       50 NEWTABLE                         R1 0 0
       52 RETURN                           R1 1

PROTO_29:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K2 ["pageToken"]
        6 CALL                             R0 2 2
        7 JUMPIF                           R0 ; [+17]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K5 [{"code", "message"}]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K3 ["code"]
       13 LOADK                            R5 K6 ["list sessions failed: %*"]
       14 GETUPVAL                         R7 4
       15 MOVE                             R8 R1
       16 CALL                             R7 1 1
       17 NAMECALL                         R5 R5 K7 ["format"]
       19 CALL                             R5 2 1
       20 MOVE                             R4 R5
       21 SETTABLEKS                       R4 R3 K4 ["message"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K10 [table.create]
       27 GETTABLEKS                       R4 R1 K11 ["sessions"]
       29 LENGTH                           R3 R4
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R3 R1 K11 ["sessions"]
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 GETUPVAL                         R8 5
       37 GETTABLEKS                       R8 R8 K12 ["sessionMetadata"]
       39 GETTABLEKS                       R9 R7 K13 ["sessionId"]
       41 SETTABLE                         R7 R8 R9
       42 GETUPVAL                         R9 5
       43 GETTABLEKS                       R9 R9 K11 ["sessions"]
       45 GETTABLEKS                       R10 R7 K13 ["sessionId"]
       47 GETTABLE                         R8 R9 R10
       48 DUPTABLE                         R11 K16 [{"sessionId", "title", "updatedAt"}]
       49 GETTABLEKS                       R12 R7 K13 ["sessionId"]
       51 SETTABLEKS                       R12 R11 K13 ["sessionId"]
       53 JUMPIFNOT                        R8 ; [+6]
       54 GETTABLEKS                       R13 R8 K14 ["title"]
       56 JUMPIFNOT                        R13 ; [+3]
       57 GETTABLEKS                       R12 R8 K14 ["title"]
       59 JUMP                             ; [+2]
       60 GETTABLEKS                       R12 R7 K14 ["title"]
       62 SETTABLEKS                       R12 R11 K14 ["title"]
       64 GETTABLEKS                       R13 R7 K15 ["updatedAt"]
       66 ORK                              R12 R13 K17 [""]
       67 SETTABLEKS                       R12 R11 K15 ["updatedAt"]
       69 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       71 MOVE                             R10 R2
       72 GETIMPORT                        R9 K19 [table.insert]
       74 CALL                             R9 2 0
       75 FORGLOOP                         R3 2 ; [-40]
       77 GETUPVAL                         R3 6
       78 DUPTABLE                         R4 K21 [{"sessions", "nextPageToken"}]
       79 SETTABLEKS                       R2 R4 K11 ["sessions"]
       81 GETTABLEKS                       R5 R1 K20 ["nextPageToken"]
       83 SETTABLEKS                       R5 R4 K20 ["nextPageToken"]
       85 CALL                             R3 1 0
       86 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["listSessions"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R2
        7 JUMPIF                           R2 ; [+44]
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K1 ["sessions"]
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 DUPTABLE                         R11 K5 [{"sessionId", "title", "updatedAt"}]
       17 GETTABLEKS                       R12 R8 K2 ["sessionId"]
       19 SETTABLEKS                       R12 R11 K2 ["sessionId"]
       21 GETTABLEKS                       R12 R8 K3 ["title"]
       23 SETTABLEKS                       R12 R11 K3 ["title"]
       25 GETIMPORT                        R12 K8 [os.date]
       27 LOADK                            R13 K9 ["!%Y-%m-%dT%H:%M:%SZ"]
       28 GETTABLEKS                       R16 R8 K4 ["updatedAt"]
       30 DIVK                             R15 R16 K10 [1000]
       31 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       32 GETIMPORT                        R14 K13 [math.floor]
       34 CALL                             R14 1 1
       35 CALL                             R12 2 1
       36 SETTABLEKS                       R12 R11 K4 ["updatedAt"]
       38 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       40 MOVE                             R10 R3
       41 GETIMPORT                        R9 K16 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-29]
       46 MOVE                             R4 R0
       47 DUPTABLE                         R5 K17 [{"sessions"}]
       48 SETTABLEKS                       R3 R5 K1 ["sessions"]
       50 CALL                             R4 1 0
       51 RETURN                           R0 0
       52 GETIMPORT                        R3 K20 [task.spawn]
       54 NEWCLOSURE                       R4 P0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          VAL R0
       62 CALL                             R3 1 0
       63 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_32:
        0 JUMPIFNOTEQKS                    R0 K0 ["user"] ; [+3]
        2 LOADN                            R1 1
        3 RETURN                           R1 1
        4 JUMPIFEQKS                       R0 K1 ["assistant"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K2 ["model"] ; [+3]
        8 LOADN                            R1 2
        9 RETURN                           R1 1
       10 LOADN                            R1 0
       11 RETURN                           R1 1

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["createdAt"]
        2 GETTABLEKS                       R3 R1 K0 ["createdAt"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["createdAt"]
        8 GETTABLEKS                       R4 R1 K0 ["createdAt"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETIMPORT                        R2 K2 [warn]
       17 LOADK                            R4 K3 ["[Assistant][LocalACP] Equal createdAt=%* for messages %* (%*) and %* (%*); ordering by role"]
       18 GETTABLEKS                       R6 R0 K0 ["createdAt"]
       20 GETTABLEKS                       R7 R0 K4 ["messageId"]
       22 GETTABLEKS                       R8 R0 K5 ["message"]
       24 GETTABLEKS                       R8 R8 K6 ["role"]
       26 GETTABLEKS                       R9 R1 K4 ["messageId"]
       28 GETTABLEKS                       R10 R1 K5 ["message"]
       30 GETTABLEKS                       R10 R10 K6 ["role"]
       32 NAMECALL                         R4 R4 K7 ["format"]
       34 CALL                             R4 6 1
       35 MOVE                             R3 R4
       36 CALL                             R2 1 0
       37 GETTABLEKS                       R4 R0 K5 ["message"]
       39 GETTABLEKS                       R4 R4 K6 ["role"]
       41 JUMPIFNOTEQKS                    R4 K8 ["user"] ; [+3]
       43 LOADN                            R3 1
       44 JUMP                             ; [+7]
       45 JUMPIFEQKS                       R4 K9 ["assistant"] ; [+3]
       47 JUMPIFNOTEQKS                    R4 K10 ["model"] ; [+3]
       49 LOADN                            R3 2
       50 JUMP                             ; [+1]
       51 LOADN                            R3 0
       52 GETTABLEKS                       R5 R1 K5 ["message"]
       54 GETTABLEKS                       R5 R5 K6 ["role"]
       56 JUMPIFNOTEQKS                    R5 K8 ["user"] ; [+3]
       58 LOADN                            R4 1
       59 JUMP                             ; [+7]
       60 JUMPIFEQKS                       R5 K9 ["assistant"] ; [+3]
       62 JUMPIFNOTEQKS                    R5 K10 ["model"] ; [+3]
       64 LOADN                            R4 2
       65 JUMP                             ; [+1]
       66 LOADN                            R4 0
       67 JUMPIFLT                         R3 R4 ; [+2]
       69 LOADB                            R2 0 +1
       70 LOADB                            R2 1
       71 RETURN                           R2 1

PROTO_34:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K2 ["sessionId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K3 ["historyPageToken"]
        9 CALL                             R0 3 2
       10 JUMPIF                           R0 ; [+17]
       11 GETUPVAL                         R2 2
       12 DUPTABLE                         R3 K6 [{"code", "message"}]
       13 GETUPVAL                         R4 3
       14 SETTABLEKS                       R4 R3 K4 ["code"]
       16 LOADK                            R5 K7 ["load session failed: %*"]
       17 GETUPVAL                         R7 4
       18 MOVE                             R8 R1
       19 CALL                             R7 1 1
       20 NAMECALL                         R5 R5 K8 ["format"]
       22 CALL                             R5 2 1
       23 MOVE                             R4 R5
       24 SETTABLEKS                       R4 R3 K5 ["message"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0
       28 GETIMPORT                        R2 K11 [table.clone]
       30 GETTABLEKS                       R3 R1 K12 ["messages"]
       32 CALL                             R2 1 1
       33 DUPCLOSURE                       R3 K13 [PROTO_32]
       34 GETIMPORT                        R4 K15 [table.sort]
       36 MOVE                             R5 R2
       37 DUPCLOSURE                       R6 K16 [PROTO_33]
       38 CALL                             R4 2 0
       39 GETUPVAL                         R4 5
       40 MOVE                             R5 R2
       41 CALL                             R4 1 4
       42 GETUPVAL                         R9 6
       43 GETTABLEKS                       R9 R9 K17 ["sessions"]
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K2 ["sessionId"]
       48 GETTABLE                         R8 R9 R10
       49 JUMPIFNOT                        R8 ; [+49]
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R9 R9 K3 ["historyPageToken"]
       53 JUMPIFEQKNIL                     R9 ; [+45]
       55 LENGTH                           R11 R4
       56 LOADN                            R9 1
       57 LOADN                            R10 -1
       58 FORNPREP                         R9
       59 GETTABLEKS                       R13 R8 K12 ["messages"]
       61 LOADN                            R14 1
       62 GETTABLE                         R15 R4 R11
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R12 K19 [table.insert]
       66 CALL                             R12 3 0
       67 GETTABLEKS                       R13 R8 K20 ["persistedMessageIds"]
       69 LOADN                            R14 1
       70 GETTABLE                         R15 R5 R11
       71 FASTCALL                         TABLE_INSERT ; [+2]
       72 GETIMPORT                        R12 K19 [table.insert]
       74 CALL                             R12 3 0
       75 GETTABLEKS                       R13 R8 K21 ["persistedContentIds"]
       77 LOADN                            R14 1
       78 GETTABLE                         R15 R6 R11
       79 FASTCALL                         TABLE_INSERT ; [+2]
       80 GETIMPORT                        R12 K19 [table.insert]
       82 CALL                             R12 3 0
       83 GETTABLEKS                       R13 R8 K22 ["persistedMessageCreatedAt"]
       85 LOADN                            R14 1
       86 GETTABLE                         R15 R7 R11
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R12 K19 [table.insert]
       90 CALL                             R12 3 0
       91 FORNLOOP                         R9
       92 GETTABLEKS                       R9 R8 K23 ["persistedMessageBaseIndex"]
       94 LENGTH                           R10 R4
       95 ADD                              R9 R9 R10
       96 SETTABLEKS                       R9 R8 K23 ["persistedMessageBaseIndex"]
       98 JUMP                             ; [+93]
       99 GETIMPORT                        R9 K26 [DateTime.now]
      101 CALL                             R9 0 1
      102 GETTABLEKS                       R9 R9 K27 ["UnixTimestampMillis"]
      104 GETUPVAL                         R11 6
      105 GETTABLEKS                       R11 R11 K28 ["sessionMetadata"]
      107 GETUPVAL                         R12 1
      108 GETTABLEKS                       R12 R12 K2 ["sessionId"]
      110 GETTABLE                         R10 R11 R12
      111 GETUPVAL                         R11 6
      112 GETTABLEKS                       R11 R11 K17 ["sessions"]
      114 GETUPVAL                         R12 1
      115 GETTABLEKS                       R12 R12 K2 ["sessionId"]
      117 DUPTABLE                         R13 K34 [{["sessionId"], ["title"], ["messages"], ["createdAt"], ["updatedAt"], ["persistedMessageIds"], ["persistedContentIds"], ["persistedMessageCreatedAt"], ["persistedMessageBaseIndex"], ["isDirty"] = False}]
      118 GETUPVAL                         R14 1
      119 GETTABLEKS                       R14 R14 K2 ["sessionId"]
      121 SETTABLEKS                       R14 R13 K2 ["sessionId"]
      123 JUMPIFNOT                        R10 ; [+3]
      124 GETTABLEKS                       R15 R10 K29 ["title"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R15
      128 JUMPIFEQKNIL                     R15 ; [+18]
      130 JUMPIFEQKS                       R15 K35 [""] ; [+16]
      132 JUMPIFEQKS                       R15 K36 ["Assistant conversation"] ; [+14]
      134 GETUPVAL                         R16 7
      135 GETTABLEKS                       R16 R16 K37 ["truncateUtf8Safe"]
      137 MOVE                             R17 R15
      138 LOADN                            R18 47
      139 CALL                             R16 2 2
      140 JUMPIFNOT                        R17 ; [+4]
      141 MOVE                             R18 R16
      142 LOADK                            R19 K38 ["..."]
      143 CONCAT                           R14 R18 R19
      144 JUMP                             ; [+24]
      145 MOVE                             R14 R16
      146 JUMP                             ; [+22]
      147 GETUPVAL                         R16 8
      148 MOVE                             R17 R4
      149 CALL                             R16 1 1
      150 GETIMPORT                        R17 K40 [warn]
      152 LOADK                            R19 K41 ["[Assistant][ACP] session/list title is nil or legacy default (%*); generating title from first user message: %*"]
      153 FASTCALL1                        TOSTRING R15 ; [+3]
      154 MOVE                             R22 R15
      155 GETIMPORT                        R21 K43 [tostring]
      157 CALL                             R21 1 1
      158 FASTCALL1                        TOSTRING R16 ; [+3]
      159 MOVE                             R23 R16
      160 GETIMPORT                        R22 K43 [tostring]
      162 CALL                             R22 1 1
      163 NAMECALL                         R19 R19 K8 ["format"]
      165 CALL                             R19 3 1
      166 MOVE                             R18 R19
      167 CALL                             R17 1 0
      168 MOVE                             R14 R16
      169 SETTABLEKS                       R14 R13 K29 ["title"]
      171 SETTABLEKS                       R4 R13 K12 ["messages"]
      173 GETTABLEN                        R15 R7 1
      174 OR                               R14 R15 R9
      175 SETTABLEKS                       R14 R13 K30 ["createdAt"]
      177 LENGTH                           R16 R7
      178 GETTABLE                         R15 R7 R16
      179 OR                               R14 R15 R9
      180 SETTABLEKS                       R14 R13 K31 ["updatedAt"]
      182 SETTABLEKS                       R5 R13 K20 ["persistedMessageIds"]
      184 SETTABLEKS                       R6 R13 K21 ["persistedContentIds"]
      186 SETTABLEKS                       R7 R13 K22 ["persistedMessageCreatedAt"]
      188 LENGTH                           R14 R4
      189 SETTABLEKS                       R14 R13 K23 ["persistedMessageBaseIndex"]
      191 SETTABLE                         R13 R11 R12
      192 GETUPVAL                         R9 9
      193 MOVE                             R10 R4
      194 MOVE                             R11 R5
      195 CALL                             R9 2 1
      196 GETUPVAL                         R10 10
      197 DUPTABLE                         R11 K47 [{"history", "modes", "nextHistoryPageToken"}]
      198 SETTABLEKS                       R9 R11 K44 ["history"]
      200 GETTABLEKS                       R12 R1 K45 ["modes"]
      202 SETTABLEKS                       R12 R11 K45 ["modes"]
      204 GETTABLEKS                       R12 R1 K46 ["nextHistoryPageToken"]
      206 SETTABLEKS                       R12 R11 K46 ["nextHistoryPageToken"]
      208 CALL                             R10 1 0
      209 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["loadSession"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R2
        7 JUMPIF                           R2 ; [+19]
        8 MOVE                             R3 R1
        9 DUPTABLE                         R4 K3 [{"code", "message"}]
       10 GETUPVAL                         R5 1
       11 SETTABLEKS                       R5 R4 K1 ["code"]
       13 LOADK                            R6 K4 ["not_implemented: %*"]
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R8 R8 K5 ["Method"]
       17 GETTABLEKS                       R8 R8 K6 ["SessionLoad"]
       19 NAMECALL                         R6 R6 K7 ["format"]
       21 CALL                             R6 2 1
       22 MOVE                             R5 R6
       23 SETTABLEKS                       R5 R4 K2 ["message"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETIMPORT                        R3 K10 [task.spawn]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U9
       39 CAPTURE                          UPVAL U10
       40 CAPTURE                          VAL R0
       41 CALL                             R3 1 0
       42 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["activeCancels"]
        3 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R2 R1
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_38:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R3 K2 [{"sessionId", "update"}]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K0 ["sessionId"]
       10 SETTABLEKS                       R4 R3 K0 ["sessionId"]
       12 DUPTABLE                         R4 K8 [{["sessionUpdate"] = "state_update", ["state"] = "idle", ["stopReason"]}]
       13 SETTABLEKS                       R0 R4 K7 ["stopReason"]
       15 SETTABLEKS                       R4 R3 K1 ["update"]
       17 NAMECALL                         R1 R1 K9 ["sendSessionUpdate"]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K10 ["activeCancels"]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K0 ["sessionId"]
       26 LOADNIL                          R3
       27 SETTABLE                         R3 R1 R2
       28 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"sessionId", "update"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["sessionId"]
        5 SETTABLEKS                       R4 R3 K0 ["sessionId"]
        7 SETTABLEKS                       R0 R3 K1 ["update"]
        9 NAMECALL                         R1 R1 K3 ["sendSessionUpdate"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activeCancels"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["sessionId"]
        6 SETTABLE                         R0 R1 R2
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+2]
        9 MOVE                             R1 R0
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["StopReason"]
        6 GETTABLEKS                       R1 R1 K1 ["Cancelled"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 3
       11 JUMPIF                           R0 ; [+14]
       12 GETUPVAL                         R0 4
       13 GETUPVAL                         R1 5
       14 GETUPVAL                         R2 6
       15 GETTABLEKS                       R2 R2 K2 ["sessionId"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 1
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K0 ["StopReason"]
       22 GETTABLEKS                       R1 R1 K3 ["EndTurn"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 7
       27 GETTABLEKS                       R0 R0 K4 ["get"]
       29 GETUPVAL                         R1 6
       30 GETTABLEKS                       R1 R1 K5 ["_meta"]
       32 CALL                             R0 1 1
       33 MOVE                             R1 R0
       34 JUMPIFNOT                        R1 ; [+2]
       35 GETTABLEKS                       R1 R0 K6 ["providerConfig"]
       37 GETUPVAL                         R2 8
       38 GETUPVAL                         R3 9
       39 GETTABLEKS                       R3 R3 K7 ["toolCatalog"]
       41 MOVE                             R4 R0
       42 JUMPIFNOT                        R4 ; [+2]
       43 GETTABLEKS                       R4 R0 K8 ["allowedTools"]
       45 CALL                             R2 2 1
       46 JUMPIFNOT                        R1 ; [+3]
       47 GETTABLEKS                       R3 R1 K9 ["selectedProvider"]
       49 JUMPIF                           R3 ; [+1]
       50 LOADK                            R3 K10 ["Studio"]
       51 GETUPVAL                         R4 10
       52 GETTABLEKS                       R4 R4 K4 ["get"]
       54 MOVE                             R5 R3
       55 CALL                             R4 1 1
       56 GETTABLEKS                       R5 R4 K11 ["formatTools"]
       58 MOVE                             R6 R2
       59 CALL                             R5 1 1
       60 GETTABLEKS                       R6 R4 K12 ["getSystemMessage"]
       62 CALL                             R6 0 1
       63 GETIMPORT                        R7 K14 [pcall]
       65 GETUPVAL                         R8 11
       66 GETTABLEKS                       R8 R8 K15 ["run"]
       68 DUPTABLE                         R9 K29 [{"sendUpdate", "requestLLM", "systemMessage", "messages", "tools", "callTool", "sessionId", "messageGuid", "selectedModel", "selectedProvider", "apiKeys", "maxToolCalls", "timeoutMs", "isFirstMessage", "registerCancel"}]
       69 NEWCLOSURE                       R10 P0
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          UPVAL U6
       72 SETTABLEKS                       R10 R9 K16 ["sendUpdate"]
       74 GETUPVAL                         R10 3
       75 GETTABLEKS                       R10 R10 K17 ["requestLLM"]
       77 SETTABLEKS                       R10 R9 K17 ["requestLLM"]
       79 SETTABLEKS                       R6 R9 K18 ["systemMessage"]
       81 GETUPVAL                         R10 12
       82 GETTABLEKS                       R10 R10 K19 ["messages"]
       84 SETTABLEKS                       R10 R9 K19 ["messages"]
       86 SETTABLEKS                       R5 R9 K20 ["tools"]
       88 GETUPVAL                         R11 6
       89 GETTABLEKS                       R11 R11 K2 ["sessionId"]
       91 GETUPVAL                         R12 13
       92 LOADNIL                          R13
       93 NEWCLOSURE                       R10 P1
       94 CAPTURE                          UPVAL U14
       95 CAPTURE                          UPVAL U15
       96 CAPTURE                          UPVAL U16
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R13
       99 CAPTURE                          UPVAL U5
      100 CAPTURE                          VAL R11
      101 SETTABLEKS                       R10 R9 K21 ["callTool"]
      103 GETUPVAL                         R10 6
      104 GETTABLEKS                       R10 R10 K2 ["sessionId"]
      106 SETTABLEKS                       R10 R9 K2 ["sessionId"]
      108 GETUPVAL                         R10 14
      109 LOADB                            R12 0
      110 NAMECALL                         R10 R10 K30 ["GenerateGUID"]
      112 CALL                             R10 2 1
      113 SETTABLEKS                       R10 R9 K22 ["messageGuid"]
      115 MOVE                             R10 R1
      116 JUMPIFNOT                        R10 ; [+2]
      117 GETTABLEKS                       R10 R1 K23 ["selectedModel"]
      119 SETTABLEKS                       R10 R9 K23 ["selectedModel"]
      121 SETTABLEKS                       R3 R9 K9 ["selectedProvider"]
      123 MOVE                             R10 R1
      124 JUMPIFNOT                        R10 ; [+2]
      125 GETTABLEKS                       R10 R1 K24 ["apiKeys"]
      127 SETTABLEKS                       R10 R9 K24 ["apiKeys"]
      129 GETUPVAL                         R10 3
      130 GETTABLEKS                       R10 R10 K25 ["maxToolCalls"]
      132 SETTABLEKS                       R10 R9 K25 ["maxToolCalls"]
      134 GETUPVAL                         R10 3
      135 GETTABLEKS                       R10 R10 K26 ["timeoutMs"]
      137 SETTABLEKS                       R10 R9 K26 ["timeoutMs"]
      139 GETUPVAL                         R10 17
      140 SETTABLEKS                       R10 R9 K27 ["isFirstMessage"]
      142 NEWCLOSURE                       R10 P2
      143 CAPTURE                          UPVAL U9
      144 CAPTURE                          UPVAL U6
      145 CAPTURE                          UPVAL U0
      146 SETTABLEKS                       R10 R9 K28 ["registerCancel"]
      148 CALL                             R7 2 2
      149 GETUPVAL                         R9 12
      150 GETIMPORT                        R10 K33 [DateTime.now]
      152 CALL                             R10 0 1
      153 GETTABLEKS                       R10 R10 K34 ["UnixTimestampMillis"]
      155 SETTABLEKS                       R10 R9 K35 ["updatedAt"]
      157 GETUPVAL                         R9 18
      158 GETUPVAL                         R10 12
      159 GETUPVAL                         R12 19
      160 ADDK                             R11 R12 K36 [1]
      161 CALL                             R9 2 0
      162 GETUPVAL                         R10 12
      163 GETTABLEKS                       R10 R10 K19 ["messages"]
      165 LENGTH                           R9 R10
      166 GETUPVAL                         R10 12
      167 GETTABLEKS                       R10 R10 K37 ["persistedMessageBaseIndex"]
      169 JUMPIFNOTLT                      R10 R9 ; [+29]
      171 GETUPVAL                         R9 12
      172 GETUPVAL                         R11 12
      173 GETTABLEKS                       R11 R11 K37 ["persistedMessageBaseIndex"]
      175 ADDK                             R10 R11 K36 [1]
      176 GETUPVAL                         R11 20
      177 GETTABLEKS                       R11 R11 K38 ["FFlagAssistantPersistOnlyForDirtySession"]
      179 JUMPIF                           R11 ; [+1]
      180 JUMP                             ; [+18]
      181 LOADB                            R11 1
      182 SETTABLEKS                       R11 R9 K39 ["isDirty"]
      184 JUMPIFEQKNIL                     R10 ; [+14]
      186 LOADN                            R11 0
      187 JUMPIFNOTLT                      R11 R10 ; [+11]
      189 GETTABLEKS                       R12 R9 K37 ["persistedMessageBaseIndex"]
      191 SUBK                             R13 R10 K36 [1]
      192 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
      194 GETIMPORT                        R11 K42 [math.min]
      196 CALL                             R11 2 1
      197 SETTABLEKS                       R11 R9 K37 ["persistedMessageBaseIndex"]
      199 JUMPIF                           R7 ; [+21]
      200 GETIMPORT                        R9 K44 [warn]
      202 LOADK                            R11 K45 ["prompt turn failed after acceptance: %*"]
      203 FASTCALL1                        TOSTRING R8 ; [+3]
      204 MOVE                             R14 R8
      205 GETIMPORT                        R13 K47 [tostring]
      207 CALL                             R13 1 1
      208 NAMECALL                         R11 R11 K48 ["format"]
      210 CALL                             R11 2 1
      211 MOVE                             R10 R11
      212 CALL                             R9 1 0
      213 GETUPVAL                         R9 1
      214 GETUPVAL                         R10 2
      215 GETTABLEKS                       R10 R10 K0 ["StopReason"]
      217 GETTABLEKS                       R10 R10 K49 ["Refusal"]
      219 CALL                             R9 1 0
      220 RETURN                           R0 0
      221 GETUPVAL                         R9 1
      222 MOVE                             R10 R8
      223 CALL                             R9 1 0
      224 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["sessionId"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R3 R0 K1 ["messages"]
        7 LENGTH                           R2 R3
        8 JUMPIFEQKN                       R2 K2 [0] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 GETTABLEKS                       R3 R0 K1 ["messages"]
       14 GETUPVAL                         R4 2
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K3 ["prompt"]
       18 CALL                             R4 1 1
       19 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       21 GETIMPORT                        R2 K6 [table.insert]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R3 R0 K1 ["messages"]
       26 LENGTH                           R2 R3
       27 GETTABLEKS                       R3 R0 K7 ["title"]
       29 JUMPIF                           R3 ; [+11]
       30 GETUPVAL                         R3 3
       31 NEWTABLE                         R4 0 1
       33 GETTABLEKS                       R6 R0 K1 ["messages"]
       35 GETTABLE                         R5 R6 R2
       36 SETLIST                          R4 R5 1 [1]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R0 K7 ["title"]
       41 GETIMPORT                        R3 K10 [DateTime.now]
       43 CALL                             R3 0 1
       44 GETTABLEKS                       R3 R3 K11 ["UnixTimestampMillis"]
       46 SETTABLEKS                       R3 R0 K12 ["updatedAt"]
       48 GETTABLEKS                       R3 R0 K13 ["persistedMessageCreatedAt"]
       50 GETTABLEKS                       R4 R0 K12 ["updatedAt"]
       52 SETTABLE                         R4 R3 R2
       53 GETUPVAL                         R3 4
       54 GETTABLEKS                       R3 R3 K14 ["FFlagAssistantPersistOnlyForDirtySession"]
       56 JUMPIF                           R3 ; [+1]
       57 JUMP                             ; [+18]
       58 LOADB                            R3 1
       59 SETTABLEKS                       R3 R0 K15 ["isDirty"]
       61 JUMPIFEQKNIL                     R2 ; [+14]
       63 LOADN                            R3 0
       64 JUMPIFNOTLT                      R3 R2 ; [+11]
       66 GETTABLEKS                       R4 R0 K16 ["persistedMessageBaseIndex"]
       68 SUBK                             R5 R2 K17 [1]
       69 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       71 GETIMPORT                        R3 K20 [math.min]
       73 CALL                             R3 2 1
       74 SETTABLEKS                       R3 R0 K16 ["persistedMessageBaseIndex"]
       76 GETUPVAL                         R3 5
       77 GETTABLEKS                       R3 R3 K21 ["nextTurnId"]
       79 GETUPVAL                         R4 5
       80 GETTABLEKS                       R5 R4 K21 ["nextTurnId"]
       82 ADDK                             R5 R5 K17 [1]
       83 SETTABLEKS                       R5 R4 K21 ["nextTurnId"]
       85 LOADB                            R4 0
       86 GETUPVAL                         R5 5
       87 GETTABLEKS                       R5 R5 K22 ["activeCancels"]
       89 GETUPVAL                         R6 1
       90 GETTABLEKS                       R6 R6 K0 ["sessionId"]
       92 NEWCLOSURE                       R7 P0
       93 CAPTURE                          REF R4
       94 SETTABLE                         R7 R5 R6
       95 LOADB                            R5 0
       96 NEWCLOSURE                       R6 P1
       97 CAPTURE                          REF R5
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          UPVAL U1
      100 CAPTURE                          UPVAL U5
      101 GETUPVAL                         R7 7
      102 GETUPVAL                         R8 1
      103 GETTABLEKS                       R8 R8 K0 ["sessionId"]
      105 GETUPVAL                         R9 1
      106 GETTABLEKS                       R9 R9 K3 ["prompt"]
      108 MOVE                             R10 R3
      109 CALL                             R7 3 0
      110 GETUPVAL                         R7 6
      111 DUPTABLE                         R9 K24 [{"sessionId", "update"}]
      112 GETUPVAL                         R10 1
      113 GETTABLEKS                       R10 R10 K0 ["sessionId"]
      115 SETTABLEKS                       R10 R9 K0 ["sessionId"]
      117 DUPTABLE                         R10 K29 [{["sessionUpdate"] = "state_update", ["state"] = "running"}]
      118 SETTABLEKS                       R10 R9 K23 ["update"]
      120 NAMECALL                         R7 R7 K30 ["sendSessionUpdate"]
      122 CALL                             R7 2 0
      123 NEWCLOSURE                       R7 P2
      124 CAPTURE                          REF R4
      125 CAPTURE                          VAL R6
      126 CAPTURE                          UPVAL U8
      127 CAPTURE                          UPVAL U9
      128 CAPTURE                          UPVAL U10
      129 CAPTURE                          UPVAL U6
      130 CAPTURE                          UPVAL U1
      131 CAPTURE                          UPVAL U11
      132 CAPTURE                          UPVAL U12
      133 CAPTURE                          UPVAL U5
      134 CAPTURE                          UPVAL U13
      135 CAPTURE                          UPVAL U14
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R3
      138 CAPTURE                          UPVAL U15
      139 CAPTURE                          UPVAL U16
      140 CAPTURE                          UPVAL U17
      141 CAPTURE                          VAL R1
      142 CAPTURE                          UPVAL U18
      143 CAPTURE                          VAL R2
      144 CAPTURE                          UPVAL U4
      145 GETUPVAL                         R8 19
      146 NEWTABLE                         R9 0 0
      148 CALL                             R8 1 0
      149 GETIMPORT                        R8 K33 [task.defer]
      151 MOVE                             R9 R7
      152 CALL                             R8 1 0
      153 CLOSEUPVALS                      R4
      154 RETURN                           R0 0

PROTO_44:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CAPTURE                          UPVAL U17
       21 CAPTURE                          UPVAL U18
       22 CAPTURE                          VAL R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 CAPTURE                          UPVAL U14
       19 CAPTURE                          UPVAL U15
       20 CAPTURE                          UPVAL U16
       21 CAPTURE                          UPVAL U17
       22 CAPTURE                          UPVAL U18
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R3 K2 [{"sessionId", "update"}]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K0 ["sessionId"]
       10 SETTABLEKS                       R4 R3 K0 ["sessionId"]
       12 DUPTABLE                         R4 K8 [{["sessionUpdate"] = "state_update", ["state"] = "idle", ["stopReason"]}]
       13 SETTABLEKS                       R0 R4 K7 ["stopReason"]
       15 SETTABLEKS                       R4 R3 K1 ["update"]
       17 NAMECALL                         R1 R1 K9 ["sendSessionUpdate"]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K10 ["activeCancels"]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K0 ["sessionId"]
       26 LOADNIL                          R3
       27 SETTABLE                         R3 R1 R2
       28 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 LOADB                            R0 1
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 GETTABLE                         R0 R1 R2
       10 JUMPIFNOT                        R0 ; [+25]
       11 GETTABLEKS                       R1 R0 K0 ["resolve"]
       13 DUPTABLE                         R2 K5 [{"sessionId", "referenceId", "turnId", "content"}]
       14 GETUPVAL                         R3 4
       15 GETTABLEKS                       R3 R3 K1 ["sessionId"]
       17 SETTABLEKS                       R3 R2 K1 ["sessionId"]
       19 GETUPVAL                         R3 3
       20 SETTABLEKS                       R3 R2 K2 ["referenceId"]
       22 GETUPVAL                         R3 5
       23 SETTABLEKS                       R3 R2 K3 ["turnId"]
       25 DUPTABLE                         R3 K8 [{["isError"] = True, ["content"]}]
       26 NEWTABLE                         R4 0 1
       28 DUPTABLE                         R5 K12 [{["type"] = "text", ["text"] = "The tool call was cancelled by the user."}]
       29 SETLIST                          R4 R5 1 [1]
       31 SETTABLEKS                       R4 R3 K4 ["content"]
       33 SETTABLEKS                       R3 R2 K4 ["content"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+8]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["sessionId"]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 3
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 4
       13 DUPTABLE                         R2 K2 [{"sessionId", "update"}]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K0 ["sessionId"]
       17 SETTABLEKS                       R3 R2 K0 ["sessionId"]
       19 DUPTABLE                         R3 K7 [{["sessionUpdate"] = "state_update", ["state"] = "running"}]
       20 SETTABLEKS                       R3 R2 K1 ["update"]
       22 NAMECALL                         R0 R0 K8 ["sendSessionUpdate"]
       24 CALL                             R0 2 0
       25 GETUPVAL                         R0 4
       26 DUPTABLE                         R2 K2 [{"sessionId", "update"}]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K0 ["sessionId"]
       30 SETTABLEKS                       R3 R2 K0 ["sessionId"]
       32 DUPTABLE                         R3 K14 [{["sessionUpdate"], ["toolCallId"], ["title"], ["status"] = "pending", ["rawInput"]}]
       33 GETUPVAL                         R4 5
       34 GETTABLEKS                       R4 R4 K15 ["ToolCall"]
       36 SETTABLEKS                       R4 R3 K3 ["sessionUpdate"]
       38 GETUPVAL                         R4 6
       39 SETTABLEKS                       R4 R3 K9 ["toolCallId"]
       41 GETUPVAL                         R4 7
       42 SETTABLEKS                       R4 R3 K10 ["title"]
       44 GETUPVAL                         R4 8
       45 SETTABLEKS                       R4 R3 K13 ["rawInput"]
       47 SETTABLEKS                       R3 R2 K1 ["update"]
       49 NAMECALL                         R0 R0 K8 ["sendSessionUpdate"]
       51 CALL                             R0 2 0
       52 GETUPVAL                         R0 9
       53 JUMPIFNOT                        R0 ; [+8]
       54 GETUPVAL                         R0 10
       55 GETUPVAL                         R1 11
       56 GETTABLEKS                       R1 R1 K16 ["StopReason"]
       58 GETTABLEKS                       R1 R1 K17 ["Cancelled"]
       60 CALL                             R0 1 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R1 2
       63 GETTABLEKS                       R1 R1 K0 ["sessionId"]
       65 GETUPVAL                         R2 3
       66 GETUPVAL                         R4 2
       67 GETTABLEKS                       R4 R4 K18 ["_meta"]
       69 FASTCALL1                        TYPE R4 ; [+3]
       70 MOVE                             R7 R4
       71 GETIMPORT                        R6 K20 [type]
       73 CALL                             R6 1 1
       74 JUMPIFNOTEQKS                    R6 K21 ["table"] ; [+4]
       76 GETTABLEKS                       R5 R4 K22 ["_roblox"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R5
       80 LOADB                            R3 0
       81 FASTCALL1                        TYPE R5 ; [+3]
       82 MOVE                             R7 R5
       83 GETIMPORT                        R6 K20 [type]
       85 CALL                             R6 1 1
       86 JUMPIFNOTEQKS                    R6 K21 ["table"] ; [+7]
       88 GETTABLEKS                       R6 R5 K23 ["isSlashCommand"]
       90 JUMPIFEQKB                       R6 TRUE ; [+2]
       92 LOADB                            R3 0 +1
       93 LOADB                            R3 1
       94 NEWCLOSURE                       R0 P0
       95 CAPTURE                          UPVAL U12
       96 CAPTURE                          UPVAL U13
       97 CAPTURE                          UPVAL U14
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R3
      100 CAPTURE                          UPVAL U4
      101 CAPTURE                          VAL R1
      102 GETIMPORT                        R1 K25 [pcall]
      104 MOVE                             R2 R0
      105 GETUPVAL                         R3 7
      106 GETUPVAL                         R4 8
      107 LOADNIL                          R5
      108 GETUPVAL                         R6 6
      109 CALL                             R1 5 2
      110 NOT                              R3 R1
      111 JUMPIF                           R3 ; [+14]
      112 LOADB                            R3 0
      113 FASTCALL1                        TYPEOF R2 ; [+3]
      114 MOVE                             R5 R2
      115 GETIMPORT                        R4 K27 [typeof]
      117 CALL                             R4 1 1
      118 JUMPIFNOTEQKS                    R4 K21 ["table"] ; [+7]
      120 GETTABLEKS                       R4 R2 K28 ["isError"]
      122 JUMPIFEQKB                       R4 TRUE ; [+2]
      124 LOADB                            R3 0 +1
      125 LOADB                            R3 1
      126 JUMPIFNOT                        R1 ; [+10]
      127 FASTCALL1                        TYPEOF R2 ; [+3]
      128 MOVE                             R6 R2
      129 GETIMPORT                        R5 K27 [typeof]
      131 CALL                             R5 1 1
      132 JUMPIFNOTEQKS                    R5 K21 ["table"] ; [+4]
      134 GETTABLEKS                       R4 R2 K29 ["content"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R4
      138 JUMPIF                           R4 ; [+16]
      139 NEWTABLE                         R5 0 1
      141 DUPTABLE                         R6 K31 [{["type"] = "text", ["text"]}]
      142 JUMPIFNOT                        R1 ; [+2]
      143 LOADK                            R7 K32 [""]
      144 JUMP                             ; [+5]
      145 FASTCALL1                        TOSTRING R2 ; [+3]
      146 MOVE                             R8 R2
      147 GETIMPORT                        R7 K34 [tostring]
      149 CALL                             R7 1 1
      150 SETTABLEKS                       R7 R6 K30 ["text"]
      152 SETLIST                          R5 R6 1 [1]
      154 MOVE                             R4 R5
      155 GETUPVAL                         R5 15
      156 SETTABLEKS                       R4 R5 K29 ["content"]
      158 GETUPVAL                         R5 15
      159 SETTABLEKS                       R3 R5 K28 ["isError"]
      161 GETUPVAL                         R5 15
      162 JUMPIFNOT                        R1 ; [+10]
      163 FASTCALL1                        TYPEOF R2 ; [+3]
      164 MOVE                             R8 R2
      165 GETIMPORT                        R7 K27 [typeof]
      167 CALL                             R7 1 1
      168 JUMPIFNOTEQKS                    R7 K21 ["table"] ; [+4]
      170 GETTABLEKS                       R6 R2 K35 ["structuredContent"]
      172 JUMP                             ; [+1]
      173 LOADNIL                          R6
      174 SETTABLEKS                       R6 R5 K35 ["structuredContent"]
      176 GETUPVAL                         R5 16
      177 GETIMPORT                        R6 K38 [DateTime.now]
      179 CALL                             R6 0 1
      180 GETTABLEKS                       R6 R6 K39 ["UnixTimestampMillis"]
      182 SETTABLEKS                       R6 R5 K40 ["updatedAt"]
      184 GETUPVAL                         R5 16
      185 GETUPVAL                         R6 17
      186 GETUPVAL                         R7 18
      187 GETTABLEKS                       R7 R7 K41 ["FFlagAssistantPersistOnlyForDirtySession"]
      189 JUMPIF                           R7 ; [+1]
      190 JUMP                             ; [+18]
      191 LOADB                            R7 1
      192 SETTABLEKS                       R7 R5 K42 ["isDirty"]
      194 JUMPIFEQKNIL                     R6 ; [+14]
      196 LOADN                            R7 0
      197 JUMPIFNOTLT                      R7 R6 ; [+11]
      199 GETTABLEKS                       R8 R5 K43 ["persistedMessageBaseIndex"]
      201 SUBK                             R9 R6 K44 [1]
      202 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
      204 GETIMPORT                        R7 K47 [math.min]
      206 CALL                             R7 2 1
      207 SETTABLEKS                       R7 R5 K43 ["persistedMessageBaseIndex"]
      209 GETUPVAL                         R5 4
      210 DUPTABLE                         R7 K2 [{"sessionId", "update"}]
      211 GETUPVAL                         R8 2
      212 GETTABLEKS                       R8 R8 K0 ["sessionId"]
      214 SETTABLEKS                       R8 R7 K0 ["sessionId"]
      216 DUPTABLE                         R8 K49 [{"sessionUpdate", "toolCallId", "title", "status", "content", "rawOutput"}]
      217 GETUPVAL                         R9 5
      218 GETTABLEKS                       R9 R9 K50 ["ToolCallUpdate"]
      220 SETTABLEKS                       R9 R8 K3 ["sessionUpdate"]
      222 GETUPVAL                         R9 6
      223 SETTABLEKS                       R9 R8 K9 ["toolCallId"]
      225 GETUPVAL                         R9 7
      226 SETTABLEKS                       R9 R8 K10 ["title"]
      228 JUMPIFNOT                        R3 ; [+2]
      229 LOADK                            R9 K51 ["failed"]
      230 JUMP                             ; [+1]
      231 LOADK                            R9 K52 ["completed"]
      232 SETTABLEKS                       R9 R8 K11 ["status"]
      234 GETUPVAL                         R9 19
      235 GETTABLEKS                       R9 R9 K53 ["toToolCallContent"]
      237 MOVE                             R10 R4
      238 CALL                             R9 1 1
      239 SETTABLEKS                       R9 R8 K29 ["content"]
      241 GETUPVAL                         R9 15
      242 GETTABLEKS                       R9 R9 K35 ["structuredContent"]
      244 SETTABLEKS                       R9 R8 K48 ["rawOutput"]
      246 SETTABLEKS                       R8 R7 K1 ["update"]
      248 NAMECALL                         R5 R5 K8 ["sendSessionUpdate"]
      250 CALL                             R5 2 0
      251 GETUPVAL                         R5 10
      252 GETUPVAL                         R7 9
      253 JUMPIFNOT                        R7 ; [+6]
      254 GETUPVAL                         R6 11
      255 GETTABLEKS                       R6 R6 K16 ["StopReason"]
      257 GETTABLEKS                       R6 R6 K17 ["Cancelled"]
      259 JUMP                             ; [+5]
      260 GETUPVAL                         R6 11
      261 GETTABLEKS                       R6 R6 K16 ["StopReason"]
      263 GETTABLEKS                       R6 R6 K54 ["EndTurn"]
      265 CALL                             R5 1 0
      266 RETURN                           R0 0

PROTO_49:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["[Assistant][LocalACP] _roblox/session/tool_call failed: %*"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R6 R0
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R3 K5 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K6 ["StopReason"]
       17 GETTABLEKS                       R2 R2 K7 ["Refusal"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_50:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 GETUPVAL                         R1 0
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["sessionId"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["nextTurnId"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R3 K1 ["nextTurnId"]
       11 ADDK                             R4 R4 K2 [1]
       12 SETTABLEKS                       R4 R3 K1 ["nextTurnId"]
       14 NEWTABLE                         R3 0 0
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K3 ["userPromptText"]
       19 JUMPIFNOT                        R4 ; [+17]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K3 ["userPromptText"]
       23 JUMPIFEQKS                       R4 K4 [""] ; [+13]
       25 DUPTABLE                         R6 K7 [{["type"] = "text", ["text"]}]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K3 ["userPromptText"]
       29 SETTABLEKS                       R7 R6 K6 ["text"]
       31 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       33 MOVE                             R5 R3
       34 GETIMPORT                        R4 K10 [table.insert]
       36 CALL                             R4 2 0
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K11 ["images"]
       40 JUMPIF                           R4 ; [+2]
       41 NEWTABLE                         R4 0 0
       43 MOVE                             R5 R4
       44 LOADNIL                          R6
       45 LOADNIL                          R7
       46 FORGPREP                         R5
       47 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       49 MOVE                             R11 R3
       50 MOVE                             R12 R9
       51 GETIMPORT                        R10 K10 [table.insert]
       53 CALL                             R10 2 0
       54 FORGLOOP                         R5 2 ; [-8]
       56 LENGTH                           R5 R3
       57 LOADN                            R6 0
       58 JUMPIFNOTLT                      R6 R5 ; [+63]
       60 GETTABLEKS                       R6 R1 K12 ["messages"]
       62 GETUPVAL                         R7 3
       63 MOVE                             R8 R3
       64 CALL                             R7 1 1
       65 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       67 GETIMPORT                        R5 K10 [table.insert]
       69 CALL                             R5 2 0
       70 GETTABLEKS                       R6 R1 K12 ["messages"]
       72 LENGTH                           R5 R6
       73 GETTABLEKS                       R6 R1 K13 ["title"]
       75 JUMPIF                           R6 ; [+11]
       76 GETUPVAL                         R6 4
       77 NEWTABLE                         R7 0 1
       79 GETTABLEKS                       R9 R1 K12 ["messages"]
       81 GETTABLE                         R8 R9 R5
       82 SETLIST                          R7 R8 1 [1]
       84 CALL                             R6 1 1
       85 SETTABLEKS                       R6 R1 K13 ["title"]
       87 GETIMPORT                        R6 K16 [DateTime.now]
       89 CALL                             R6 0 1
       90 GETTABLEKS                       R6 R6 K17 ["UnixTimestampMillis"]
       92 SETTABLEKS                       R6 R1 K18 ["updatedAt"]
       94 GETTABLEKS                       R6 R1 K19 ["persistedMessageCreatedAt"]
       96 GETTABLEKS                       R7 R1 K18 ["updatedAt"]
       98 SETTABLE                         R7 R6 R5
       99 GETUPVAL                         R6 5
      100 GETTABLEKS                       R6 R6 K20 ["FFlagAssistantPersistOnlyForDirtySession"]
      102 JUMPIF                           R6 ; [+1]
      103 JUMP                             ; [+18]
      104 LOADB                            R6 1
      105 SETTABLEKS                       R6 R1 K21 ["isDirty"]
      107 JUMPIFEQKNIL                     R5 ; [+14]
      109 LOADN                            R6 0
      110 JUMPIFNOTLT                      R6 R5 ; [+11]
      112 GETTABLEKS                       R7 R1 K22 ["persistedMessageBaseIndex"]
      114 SUBK                             R8 R5 K2 [1]
      115 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
      117 GETIMPORT                        R6 K25 [math.min]
      119 CALL                             R6 2 1
      120 SETTABLEKS                       R6 R1 K22 ["persistedMessageBaseIndex"]
      122 GETUPVAL                         R5 6
      123 LOADB                            R7 0
      124 NAMECALL                         R5 R5 K26 ["GenerateGUID"]
      126 CALL                             R5 2 1
      127 GETUPVAL                         R6 1
      128 GETTABLEKS                       R6 R6 K27 ["name"]
      130 GETUPVAL                         R7 1
      131 GETTABLEKS                       R7 R7 K28 ["arguments"]
      133 JUMPIF                           R7 ; [+2]
      134 NEWTABLE                         R7 0 0
      136 GETIMPORT                        R8 K16 [DateTime.now]
      138 CALL                             R8 0 1
      139 GETTABLEKS                       R8 R8 K17 ["UnixTimestampMillis"]
      141 DUPTABLE                         R9 K32 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
      142 SETTABLEKS                       R5 R9 K30 ["id"]
      144 SETTABLEKS                       R6 R9 K27 ["name"]
      146 SETTABLEKS                       R7 R9 K31 ["input"]
      148 DUPTABLE                         R10 K41 [{["type"] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = False, ["structuredContent"] = , ["startTime"], ["startTimeAfterConfirmation"]}]
      149 SETTABLEKS                       R5 R10 K30 ["id"]
      151 SETTABLEKS                       R6 R10 K27 ["name"]
      153 NEWTABLE                         R11 0 1
      155 DUPTABLE                         R12 K43 [{["type"] = "text", ["text"] = "Tool call is still running."}]
      156 SETLIST                          R11 R12 1 [1]
      158 SETTABLEKS                       R11 R10 K34 ["content"]
      160 SETTABLEKS                       R8 R10 K39 ["startTime"]
      162 SETTABLEKS                       R8 R10 K40 ["startTimeAfterConfirmation"]
      164 GETTABLEKS                       R12 R1 K12 ["messages"]
      166 DUPTABLE                         R13 K46 [{["role"] = "assistant", ["content"]}]
      167 NEWTABLE                         R14 0 1
      169 MOVE                             R15 R9
      170 SETLIST                          R14 R15 1 [1]
      172 SETTABLEKS                       R14 R13 K34 ["content"]
      174 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      176 GETIMPORT                        R11 K10 [table.insert]
      178 CALL                             R11 2 0
      179 GETTABLEKS                       R12 R1 K12 ["messages"]
      181 DUPTABLE                         R13 K48 [{["role"] = "user", ["content"]}]
      182 NEWTABLE                         R14 0 1
      184 MOVE                             R15 R10
      185 SETLIST                          R14 R15 1 [1]
      187 SETTABLEKS                       R14 R13 K34 ["content"]
      189 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      191 GETIMPORT                        R11 K10 [table.insert]
      193 CALL                             R11 2 0
      194 GETTABLEKS                       R13 R1 K12 ["messages"]
      196 LENGTH                           R12 R13
      197 SUBK                             R11 R12 K2 [1]
      198 GETIMPORT                        R12 K16 [DateTime.now]
      200 CALL                             R12 0 1
      201 GETTABLEKS                       R12 R12 K17 ["UnixTimestampMillis"]
      203 SETTABLEKS                       R12 R1 K18 ["updatedAt"]
      205 GETUPVAL                         R12 7
      206 MOVE                             R13 R1
      207 MOVE                             R14 R11
      208 CALL                             R12 2 0
      209 GETUPVAL                         R12 5
      210 GETTABLEKS                       R12 R12 K20 ["FFlagAssistantPersistOnlyForDirtySession"]
      212 JUMPIF                           R12 ; [+1]
      213 JUMP                             ; [+18]
      214 LOADB                            R12 1
      215 SETTABLEKS                       R12 R1 K21 ["isDirty"]
      217 JUMPIFEQKNIL                     R11 ; [+14]
      219 LOADN                            R12 0
      220 JUMPIFNOTLT                      R12 R11 ; [+11]
      222 GETTABLEKS                       R13 R1 K22 ["persistedMessageBaseIndex"]
      224 SUBK                             R14 R11 K2 [1]
      225 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
      227 GETIMPORT                        R12 K25 [math.min]
      229 CALL                             R12 2 1
      230 SETTABLEKS                       R12 R1 K22 ["persistedMessageBaseIndex"]
      232 LOADB                            R12 0
      233 NEWCLOSURE                       R13 P0
      234 CAPTURE                          REF R12
      235 CAPTURE                          UPVAL U8
      236 CAPTURE                          UPVAL U1
      237 CAPTURE                          UPVAL U2
      238 LOADB                            R14 0
      239 GETUPVAL                         R15 2
      240 GETTABLEKS                       R15 R15 K49 ["activeCancels"]
      242 GETUPVAL                         R16 1
      243 GETTABLEKS                       R16 R16 K0 ["sessionId"]
      245 NEWCLOSURE                       R17 P1
      246 CAPTURE                          REF R14
      247 CAPTURE                          REF R12
      248 CAPTURE                          UPVAL U9
      249 CAPTURE                          VAL R5
      250 CAPTURE                          UPVAL U1
      251 CAPTURE                          VAL R2
      252 SETTABLE                         R17 R15 R16
      253 NEWCLOSURE                       R15 P2
      254 CAPTURE                          VAL R3
      255 CAPTURE                          UPVAL U10
      256 CAPTURE                          UPVAL U1
      257 CAPTURE                          VAL R2
      258 CAPTURE                          UPVAL U8
      259 CAPTURE                          UPVAL U11
      260 CAPTURE                          VAL R5
      261 CAPTURE                          VAL R6
      262 CAPTURE                          VAL R7
      263 CAPTURE                          REF R14
      264 CAPTURE                          VAL R13
      265 CAPTURE                          UPVAL U12
      266 CAPTURE                          UPVAL U6
      267 CAPTURE                          UPVAL U13
      268 CAPTURE                          UPVAL U9
      269 CAPTURE                          VAL R10
      270 CAPTURE                          VAL R1
      271 CAPTURE                          VAL R11
      272 CAPTURE                          UPVAL U5
      273 CAPTURE                          UPVAL U14
      274 MOVE                             R16 R0
      275 DUPTABLE                         R17 K52 [{"toolCallId", "turnId"}]
      276 SETTABLEKS                       R5 R17 K50 ["toolCallId"]
      278 SETTABLEKS                       R2 R17 K51 ["turnId"]
      280 CALL                             R16 1 0
      281 GETIMPORT                        R16 K55 [task.defer]
      283 NEWCLOSURE                       R17 P3
      284 CAPTURE                          VAL R15
      285 CAPTURE                          VAL R13
      286 CAPTURE                          UPVAL U12
      287 CALL                             R16 1 0
      288 CLOSEUPVALS                      R12
      289 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 CAPTURE                          UPVAL U14
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

PROTO_53:
        0 RETURN                           R0 0

PROTO_54:
        0 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R0 2
       12 NAMECALL                         R0 R0 K0 ["close"]
       14 CALL                             R0 1 1
       15 DUPCLOSURE                       R2 K1 [PROTO_53]
       16 NAMECALL                         R0 R0 K2 ["catch"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 3
       20 NAMECALL                         R0 R0 K0 ["close"]
       22 CALL                             R0 1 1
       23 DUPCLOSURE                       R2 K3 [PROTO_54]
       24 NAMECALL                         R0 R0 K2 ["catch"]
       26 CALL                             R0 2 0
       27 RETURN                           R0 0

PROTO_56:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETTABLEKS                       R1 R0 K0 ["turn"]
        4 MOVE                             R2 R0
        5 JUMPIFNOT                        R2 ; [+2]
        6 GETTABLEKS                       R2 R0 K1 ["persistence"]
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETTABLEKS                       R3 R0 K2 ["toolCatalog"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 DUPTABLE                         R4 K11 [{["clientCapabilities"] = , ["negotiatedProtocolVersion"], ["sessions"], ["sessionMetadata"], ["nextTurnId"] = 1, ["activeCancels"], ["toolCatalog"]}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K12 ["LATEST_PROTOCOL_VERSION"]
       18 SETTABLEKS                       R5 R4 K5 ["negotiatedProtocolVersion"]
       20 NEWTABLE                         R5 0 0
       22 SETTABLEKS                       R5 R4 K6 ["sessions"]
       24 NEWTABLE                         R5 0 0
       26 SETTABLEKS                       R5 R4 K7 ["sessionMetadata"]
       28 NEWTABLE                         R5 0 0
       30 SETTABLEKS                       R5 R4 K10 ["activeCancels"]
       32 GETIMPORT                        R5 K15 [table.clone]
       34 MOVE                             R6 R3
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R5 R4 K2 ["toolCatalog"]
       38 LOADNIL                          R5
       39 JUMPIFNOT                        R2 ; [+15]
       40 GETTABLEKS                       R6 R2 K16 ["onSaveRequested"]
       42 JUMPIFNOT                        R6 ; [+12]
       43 GETTABLEKS                       R6 R2 K17 ["saveSessions"]
       45 JUMPIFNOT                        R6 ; [+9]
       46 GETTABLEKS                       R6 R2 K16 ["onSaveRequested"]
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CALL                             R6 1 1
       54 MOVE                             R5 R6
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K18 ["new"]
       58 LOADK                            R7 K19 ["acp-client"]
       59 CALL                             R6 1 1
       60 GETUPVAL                         R7 3
       61 GETTABLEKS                       R7 R7 K18 ["new"]
       63 LOADK                            R8 K20 ["acp-server"]
       64 CALL                             R7 1 1
       65 MOVE                             R10 R7
       66 NAMECALL                         R8 R6 K21 ["bindPeer"]
       68 CALL                             R8 2 0
       69 GETUPVAL                         R8 4
       70 GETTABLEKS                       R8 R8 K22 ["Server"]
       72 GETTABLEKS                       R8 R8 K18 ["new"]
       74 GETUPVAL                         R9 5
       75 DUPTABLE                         R10 K24 [{"capabilities"}]
       76 GETUPVAL                         R11 6
       77 SETTABLEKS                       R11 R10 K23 ["capabilities"]
       79 CALL                             R8 2 1
       80 NEWTABLE                         R9 0 0
       82 GETUPVAL                         R10 7
       83 GETTABLEKS                       R10 R10 K25 ["setToolResultHandler"]
       85 MOVE                             R11 R8
       86 NEWCLOSURE                       R12 P1
       87 CAPTURE                          VAL R9
       88 CALL                             R10 2 0
       89 NEWCLOSURE                       R10 P2
       90 CAPTURE                          UPVAL U8
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R8
       94 NEWCLOSURE                       R11 P3
       95 CAPTURE                          VAL R4
       96 NEWCLOSURE                       R12 P4
       97 CAPTURE                          UPVAL U8
       98 CAPTURE                          VAL R8
       99 NEWCLOSURE                       R15 P5
      100 CAPTURE                          VAL R4
      101 CAPTURE                          UPVAL U0
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          UPVAL U5
      104 NAMECALL                         R13 R8 K26 ["setInitializeHandler"]
      106 CALL                             R13 2 0
      107 NEWCLOSURE                       R15 P6
      108 CAPTURE                          UPVAL U8
      109 CAPTURE                          VAL R4
      110 NAMECALL                         R13 R8 K27 ["setNewSessionHandler"]
      112 CALL                             R13 2 0
      113 GETUPVAL                         R16 0
      114 GETTABLEKS                       R16 R16 K28 ["Method"]
      116 GETTABLEKS                       R16 R16 K29 ["SessionSetMode"]
      118 DUPTABLE                         R17 K32 [{"code", "message"}]
      119 GETUPVAL                         R18 10
      120 SETTABLEKS                       R18 R17 K30 ["code"]
      122 LOADK                            R19 K33 ["not_implemented: %*"]
      123 MOVE                             R21 R16
      124 NAMECALL                         R19 R19 K34 ["format"]
      126 CALL                             R19 2 1
      127 MOVE                             R18 R19
      128 SETTABLEKS                       R18 R17 K31 ["message"]
      130 NEWCLOSURE                       R15 P7
      131 CAPTURE                          UPVAL U11
      132 CAPTURE                          VAL R17
      133 NAMECALL                         R13 R8 K35 ["setSessionModeHandler"]
      135 CALL                             R13 2 0
      136 GETUPVAL                         R13 7
      137 GETTABLEKS                       R13 R13 K36 ["setUpdateSessionInfoHandler"]
      139 MOVE                             R14 R8
      140 NEWCLOSURE                       R15 P8
      141 CAPTURE                          VAL R4
      142 CAPTURE                          UPVAL U12
      143 CAPTURE                          UPVAL U1
      144 CALL                             R13 2 0
      145 GETUPVAL                         R13 7
      146 GETTABLEKS                       R13 R13 K37 ["setDeleteSessionHandler"]
      148 MOVE                             R14 R8
      149 NEWCLOSURE                       R15 P9
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R2
      152 CALL                             R13 2 0
      153 NEWCLOSURE                       R15 P10
      154 CAPTURE                          UPVAL U11
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R4
      157 CAPTURE                          UPVAL U13
      158 CAPTURE                          UPVAL U14
      159 NAMECALL                         R13 R8 K38 ["setListSessionsHandler"]
      161 CALL                             R13 2 0
      162 NEWCLOSURE                       R15 P11
      163 CAPTURE                          UPVAL U11
      164 CAPTURE                          VAL R2
      165 CAPTURE                          UPVAL U10
      166 CAPTURE                          UPVAL U0
      167 CAPTURE                          UPVAL U13
      168 CAPTURE                          UPVAL U14
      169 CAPTURE                          UPVAL U15
      170 CAPTURE                          VAL R4
      171 CAPTURE                          UPVAL U12
      172 CAPTURE                          UPVAL U16
      173 CAPTURE                          UPVAL U17
      174 NAMECALL                         R13 R8 K39 ["setLoadSessionHandler"]
      176 CALL                             R13 2 0
      177 NEWCLOSURE                       R15 P12
      178 CAPTURE                          VAL R4
      179 NAMECALL                         R13 R8 K40 ["setCancelHandler"]
      181 CALL                             R13 2 0
      182 NEWCLOSURE                       R15 P13
      183 CAPTURE                          UPVAL U11
      184 CAPTURE                          VAL R11
      185 CAPTURE                          UPVAL U18
      186 CAPTURE                          UPVAL U16
      187 CAPTURE                          UPVAL U1
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R12
      191 CAPTURE                          UPVAL U0
      192 CAPTURE                          VAL R1
      193 CAPTURE                          UPVAL U19
      194 CAPTURE                          UPVAL U20
      195 CAPTURE                          UPVAL U21
      196 CAPTURE                          UPVAL U22
      197 CAPTURE                          UPVAL U23
      198 CAPTURE                          UPVAL U8
      199 CAPTURE                          UPVAL U9
      200 CAPTURE                          VAL R9
      201 CAPTURE                          UPVAL U24
      202 NAMECALL                         R13 R8 K41 ["setPromptHandler"]
      204 CALL                             R13 2 0
      205 GETUPVAL                         R13 7
      206 GETTABLEKS                       R13 R13 K42 ["setToolCallRequestHandler"]
      208 MOVE                             R14 R8
      209 NEWCLOSURE                       R15 P14
      210 CAPTURE                          UPVAL U11
      211 CAPTURE                          VAL R11
      212 CAPTURE                          VAL R4
      213 CAPTURE                          UPVAL U18
      214 CAPTURE                          UPVAL U16
      215 CAPTURE                          UPVAL U1
      216 CAPTURE                          UPVAL U8
      217 CAPTURE                          UPVAL U24
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R9
      220 CAPTURE                          VAL R12
      221 CAPTURE                          UPVAL U25
      222 CAPTURE                          UPVAL U0
      223 CAPTURE                          UPVAL U9
      224 CAPTURE                          UPVAL U26
      225 CALL                             R13 2 0
      226 GETUPVAL                         R13 4
      227 GETTABLEKS                       R13 R13 K43 ["Client"]
      229 GETTABLEKS                       R13 R13 K18 ["new"]
      231 GETUPVAL                         R14 27
      232 DUPTABLE                         R15 K24 [{"capabilities"}]
      233 NEWTABLE                         R16 0 0
      235 SETTABLEKS                       R16 R15 K23 ["capabilities"]
      237 CALL                             R13 2 1
      238 GETTABLEKS                       R16 R7 K44 ["transport"]
      240 NAMECALL                         R14 R8 K45 ["connect"]
      242 CALL                             R14 2 0
      243 GETTABLEKS                       R16 R6 K44 ["transport"]
      245 NAMECALL                         R14 R13 K45 ["connect"]
      247 CALL                             R14 2 0
      248 LOADB                            R14 0
      249 NEWCLOSURE                       R15 P15
      250 CAPTURE                          REF R14
      251 CAPTURE                          REF R5
      252 CAPTURE                          VAL R13
      253 CAPTURE                          VAL R8
      254 DUPTABLE                         R16 K48 [{"client", "dispose"}]
      255 SETTABLEKS                       R13 R16 K46 ["client"]
      257 SETTABLEKS                       R15 R16 K47 ["dispose"]
      259 CLOSEUPVALS                      R5
      260 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Acp"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K6 ["Parent"]
       22 GETTABLEKS                       R3 R3 K7 ["Acp"]
       24 GETTABLEKS                       R3 R3 K8 ["RobloxExtensions"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETIMPORT                        R4 K1 [script]
       31 GETTABLEKS                       R4 R4 K9 ["AgentTurn"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K10 ["Engine"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Engine"]
       43 GETTABLEKS                       R6 R6 K11 ["EngineFlags"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K12 ["HarnessObserver"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Parent"]
       57 GETTABLEKS                       R8 R8 K13 ["ModelContextProtocol"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETIMPORT                        R9 K1 [script]
       64 GETTABLEKS                       R9 R9 K14 ["PersistenceBridge"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Parent"]
       71 GETTABLEKS                       R10 R10 K15 ["Promise"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K10 ["Engine"]
       78 GETTABLEKS                       R11 R11 K16 ["Providers"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETIMPORT                        R12 K1 [script]
       85 GETTABLEKS                       R12 R12 K17 ["RobloxMeta"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Parent"]
       92 GETTABLEKS                       R13 R13 K18 ["Signal"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K10 ["Engine"]
       99 GETTABLEKS                       R14 R14 K19 ["StreamTypes"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K6 ["Parent"]
      106 GETTABLEKS                       R15 R15 K20 ["AgentClientProtocol"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETIMPORT                        R16 K1 [script]
      113 GETTABLEKS                       R16 R16 K21 ["capabilities"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K22 ["Util"]
      120 GETTABLEKS                       R17 R17 K23 ["describeError"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETIMPORT                        R18 K1 [script]
      127 GETTABLEKS                       R18 R18 K24 ["llmMessagesToSessionUpdates"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETIMPORT                        R19 K1 [script]
      134 GETTABLEKS                       R19 R19 K25 ["sanitizeMessages"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K27 [game]
      139 LOADK                            R21 K28 ["HttpService"]
      140 NAMECALL                         R19 R19 K29 ["GetService"]
      142 CALL                             R19 2 1
      143 GETTABLEKS                       R20 R1 K30 ["PeerTransport"]
      145 GETTABLEKS                       R21 R14 K31 ["ErrorCode"]
      147 GETTABLEKS                       R21 R21 K32 ["InternalError"]
      149 GETTABLEKS                       R22 R14 K31 ["ErrorCode"]
      151 GETTABLEKS                       R22 R22 K33 ["MethodNotFound"]
      153 GETTABLEKS                       R23 R14 K34 ["SessionUpdateKind"]
      155 DUPTABLE                         R24 K39 [{["name"] = "roblox-assistant-harness", ["version"] = "0.0.0"}]
      156 DUPTABLE                         R25 K41 [{["name"] = "roblox-assistant-ui", ["version"] = "0.0.0"}]
      157 DUPCLOSURE                       R26 K42 [PROTO_0]
      158 DUPCLOSURE                       R27 K43 [PROTO_2]
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R9
      161 DUPCLOSURE                       R28 K44 [PROTO_3]
      162 CAPTURE                          VAL R23
      163 DUPCLOSURE                       R29 K45 [PROTO_4]
      164 DUPCLOSURE                       R30 K46 [PROTO_5]
      165 DUPCLOSURE                       R31 K47 [PROTO_6]
      166 DUPCLOSURE                       R32 K48 [PROTO_7]
      167 DUPCLOSURE                       R33 K49 [PROTO_8]
      168 CAPTURE                          VAL R5
      169 DUPCLOSURE                       R34 K50 [PROTO_9]
      170 CAPTURE                          VAL R17
      171 DUPCLOSURE                       R35 K51 [PROTO_10]
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R4
      174 DUPCLOSURE                       R36 K52 [PROTO_12]
      175 CAPTURE                          VAL R19
      176 DUPCLOSURE                       R37 K53 [PROTO_13]
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R32
      179 CAPTURE                          VAL R19
      180 DUPCLOSURE                       R38 K54 [PROTO_14]
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R36
      183 CAPTURE                          VAL R35
      184 DUPCLOSURE                       R39 K55 [PROTO_15]
      185 CAPTURE                          VAL R4
      186 DUPCLOSURE                       R40 K56 [PROTO_16]
      187 CAPTURE                          VAL R4
      188 DUPCLOSURE                       R41 K57 [PROTO_17]
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R40
      191 DUPCLOSURE                       R42 K58 [PROTO_56]
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R37
      195 CAPTURE                          VAL R20
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R24
      198 CAPTURE                          VAL R15
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R12
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R38
      208 CAPTURE                          VAL R40
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R29
      211 CAPTURE                          VAL R28
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R26
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R32
      217 CAPTURE                          VAL R23
      218 CAPTURE                          VAL R6
      219 CAPTURE                          VAL R25
      220 DUPTABLE                         R43 K60 [{"new"}]
      221 SETTABLEKS                       R42 R43 K59 ["new"]
      223 RETURN                           R43 1
