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
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_9:
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
       13 JUMPIFNOTEQKS                    R12 K2 ["tool_use"] ; [+12]
       15 GETTABLEKS                       R12 R11 K3 ["id"]
       17 JUMPIFNOT                        R12 ; [+8]
       18 GETTABLEKS                       R12 R11 K4 ["name"]
       20 JUMPIFNOT                        R12 ; [+5]
       21 GETTABLEKS                       R12 R11 K3 ["id"]
       23 GETTABLEKS                       R13 R11 K4 ["name"]
       25 SETTABLE                         R13 R1 R12
       26 FORGLOOP                         R7 2 ; [-16]
       28 FORGLOOP                         R2 2 ; [-23]
       30 MOVE                             R2 R0
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 FORGPREP                         R2
       34 GETTABLEKS                       R7 R6 K0 ["content"]
       36 LOADNIL                          R8
       37 LOADNIL                          R9
       38 FORGPREP                         R7
       39 GETTABLEKS                       R12 R11 K1 ["type"]
       41 JUMPIFNOTEQKS                    R12 K5 ["tool_result"] ; [+59]
       43 FASTCALL2K                       RAWGET R11 K6 ; [+5]
       45 MOVE                             R13 R11
       46 LOADK                            R14 K6 ["toolUseId"]
       47 GETIMPORT                        R12 K8 [rawget]
       49 CALL                             R12 2 1
       50 GETTABLEKS                       R13 R11 K3 ["id"]
       52 JUMPIF                           R13 ; [+10]
       53 FASTCALL1                        TYPEOF R12 ; [+3]
       54 MOVE                             R15 R12
       55 GETIMPORT                        R14 K10 [typeof]
       57 CALL                             R14 1 1
       58 JUMPIFNOTEQKS                    R14 K11 ["string"] ; [+3]
       60 MOVE                             R13 R12
       61 JUMP                             ; [+1]
       62 LOADNIL                          R13
       63 DUPTABLE                         R14 K16 [{["type"] = "tool_result", ["id"], ["name"], [4], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
       64 ORK                              R15 R13 K17 [""]
       65 SETTABLEKS                       R15 R14 K3 ["id"]
       67 GETTABLEKS                       R15 R11 K4 ["name"]
       69 JUMPIF                           R15 ; [+4]
       70 JUMPIFNOT                        R13 ; [+2]
       71 GETTABLE                         R15 R1 R13
       72 JUMPIF                           R15 ; [+1]
       73 LOADK                            R15 K18 ["unknown_tool"]
       74 SETTABLEKS                       R15 R14 K4 ["name"]
       76 GETTABLEKS                       R15 R11 K0 ["content"]
       78 SETTABLEKS                       R15 R14 K0 ["content"]
       80 GETTABLEKS                       R15 R11 K12 ["isError"]
       82 SETTABLEKS                       R15 R14 K12 ["isError"]
       84 GETTABLEKS                       R15 R11 K13 ["structuredContent"]
       86 SETTABLEKS                       R15 R14 K13 ["structuredContent"]
       88 GETTABLEKS                       R16 R11 K14 ["startTime"]
       90 ORK                              R15 R16 K19 [0]
       91 SETTABLEKS                       R15 R14 K14 ["startTime"]
       93 GETTABLEKS                       R16 R11 K15 ["startTimeAfterConfirmation"]
       95 ORK                              R15 R16 K19 [0]
       96 SETTABLEKS                       R15 R14 K15 ["startTimeAfterConfirmation"]
       98 GETTABLEKS                       R15 R6 K0 ["content"]
      100 SETTABLE                         R14 R15 R10
      101 FORGLOOP                         R7 2 ; [-63]
      103 FORGLOOP                         R2 2 ; [-70]
      105 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["sessions"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 0
        8 MOVE                             R8 R6
        9 GETTABLEKS                       R10 R6 K2 ["persistedMessageBaseIndex"]
       11 ADDK                             R9 R10 K1 [1]
       12 CALL                             R7 2 0
       13 GETIMPORT                        R7 K5 [table.create]
       15 GETTABLEKS                       R9 R6 K6 ["messages"]
       17 LENGTH                           R8 R9
       18 CALL                             R7 1 1
       19 GETTABLEKS                       R11 R6 K2 ["persistedMessageBaseIndex"]
       21 ADDK                             R10 R11 K1 [1]
       22 GETTABLEKS                       R11 R6 K6 ["messages"]
       24 LENGTH                           R8 R11
       25 LOADN                            R9 1
       26 FORNPREP                         R8
       27 GETTABLEKS                       R12 R6 K6 ["messages"]
       29 GETTABLE                         R11 R12 R10
       30 GETTABLEKS                       R13 R6 K7 ["persistedMessageIds"]
       32 GETTABLE                         R12 R13 R10
       33 JUMPIF                           R12 ; [+5]
       34 GETUPVAL                         R12 1
       35 LOADB                            R14 0
       36 NAMECALL                         R12 R12 K8 ["GenerateGUID"]
       38 CALL                             R12 2 1
       39 GETTABLEKS                       R13 R6 K7 ["persistedMessageIds"]
       41 SETTABLE                         R12 R13 R10
       42 GETTABLEKS                       R14 R6 K9 ["persistedContentIds"]
       44 GETTABLE                         R13 R14 R10
       45 JUMPIF                           R13 ; [+2]
       46 NEWTABLE                         R13 0 0
       48 GETTABLEKS                       R14 R6 K9 ["persistedContentIds"]
       50 SETTABLE                         R13 R14 R10
       51 LOADN                            R16 1
       52 GETTABLEKS                       R17 R11 K10 ["content"]
       54 LENGTH                           R14 R17
       55 LOADN                            R15 1
       56 FORNPREP                         R14
       57 GETTABLE                         R17 R13 R16
       58 JUMPIF                           R17 ; [+5]
       59 GETUPVAL                         R17 1
       60 LOADB                            R19 0
       61 NAMECALL                         R17 R17 K8 ["GenerateGUID"]
       63 CALL                             R17 2 1
       64 SETTABLE                         R17 R13 R16
       65 FORNLOOP                         R14
       66 GETTABLEKS                       R15 R6 K11 ["persistedMessageCreatedAt"]
       68 GETTABLE                         R14 R15 R10
       69 LOADK                            R18 K12 ["expected persistedMessageCreatedAt[%*] after timestampNewMessages"]
       70 MOVE                             R20 R10
       71 NAMECALL                         R18 R18 K13 ["format"]
       73 CALL                             R18 2 1
       74 MOVE                             R17 R18
       75 FASTCALL2                        ASSERT R14 R17 ; [+4]
       77 MOVE                             R16 R14
       78 GETIMPORT                        R15 K15 [assert]
       80 CALL                             R15 2 0
       81 DUPTABLE                         R17 K21 [{"messageId", "contentIds", "createdAt", "updatedAt", "message"}]
       82 SETTABLEKS                       R12 R17 K16 ["messageId"]
       84 SETTABLEKS                       R13 R17 K17 ["contentIds"]
       86 SETTABLEKS                       R14 R17 K18 ["createdAt"]
       88 GETTABLEKS                       R18 R6 K19 ["updatedAt"]
       90 SETTABLEKS                       R18 R17 K19 ["updatedAt"]
       92 SETTABLEKS                       R11 R17 K20 ["message"]
       94 FASTCALL2                        TABLE_INSERT R7 R17 ; [+4]
       96 MOVE                             R16 R7
       97 GETIMPORT                        R15 K23 [table.insert]
       99 CALL                             R15 2 0
      100 FORNLOOP                         R8
      101 DUPTABLE                         R10 K26 [{"sessionId", "title", "createdAt", "updatedAt", "messages"}]
      102 GETTABLEKS                       R11 R6 K24 ["sessionId"]
      104 SETTABLEKS                       R11 R10 K24 ["sessionId"]
      106 GETTABLEKS                       R11 R6 K25 ["title"]
      108 SETTABLEKS                       R11 R10 K25 ["title"]
      110 GETTABLEKS                       R11 R6 K18 ["createdAt"]
      112 SETTABLEKS                       R11 R10 K18 ["createdAt"]
      114 GETTABLEKS                       R11 R6 K19 ["updatedAt"]
      116 SETTABLEKS                       R11 R10 K19 ["updatedAt"]
      118 SETTABLEKS                       R7 R10 K6 ["messages"]
      120 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      122 MOVE                             R9 R1
      123 GETIMPORT                        R8 K23 [table.insert]
      125 CALL                             R8 2 0
      126 FORGLOOP                         R2 2 ; [-120]
      128 RETURN                           R1 1

PROTO_13:
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

PROTO_14:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["role"]
        6 JUMPIFNOTEQKS                    R6 K1 ["user"] ; [+52]
        8 GETTABLEKS                       R6 R5 K2 ["content"]
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 FORGPREP                         R6
       13 GETTABLEKS                       R11 R10 K3 ["type"]
       15 JUMPIFNOTEQKS                    R11 K4 ["text"] ; [+41]
       17 GETTABLEKS                       R12 R10 K4 ["text"]
       19 FASTCALL1                        TYPEOF R12 ; [+2]
       20 GETIMPORT                        R11 K6 [typeof]
       22 CALL                             R11 1 1
       23 JUMPIFNOTEQKS                    R11 K7 ["string"] ; [+33]
       25 GETIMPORT                        R11 K9 [string.match]
       27 GETTABLEKS                       R12 R10 K4 ["text"]
       29 LOADK                            R13 K10 ["^%s*<system_reminder>"]
       30 CALL                             R11 2 1
       31 JUMPIF                           R11 ; [+25]
       32 GETIMPORT                        R11 K12 [string.gsub]
       34 GETTABLEKS                       R12 R10 K4 ["text"]
       36 LOADK                            R13 K13 ["\n"]
       37 LOADK                            R14 K14 [" "]
       38 CALL                             R11 3 1
       39 LENGTH                           R13 R11
       40 LOADN                            R14 80
       41 JUMPIFNOTLT                      R14 R13 ; [+13]
       43 LOADN                            R17 1
       44 LOADN                            R18 77
       45 FASTCALL3                        STRING_SUB R11 R17 R18
       47 MOVE                             R16 R11
       48 GETIMPORT                        R15 K16 [string.sub]
       50 CALL                             R15 3 1
       51 MOVE                             R13 R15
       52 LOADK                            R14 K17 ["..."]
       53 CONCAT                           R12 R13 R14
       54 RETURN                           R12 1
       55 MOVE                             R12 R11
       56 RETURN                           R12 1
       57 FORGLOOP                         R6 2 ; [-45]
       59 FORGLOOP                         R1 2 ; [-56]
       61 LOADNIL                          R1
       62 RETURN                           R1 1

PROTO_15:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R0 ; [+8]
        3 LOADB                            R2 0
        4 JUMPIFEQKS                       R0 K0 [""] ; [+5]
        6 JUMPIFNOTEQKS                    R0 K1 ["Assistant conversation"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 JUMPIFNOT                        R2 ; [+1]
       11 RETURN                           R0 1
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R1
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K3 [warn]
       17 LOADK                            R6 K4 ["[Assistant][ACP] session/list title is nil or legacy default (%*); generating title from first user message: %*"]
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R9 R0
       20 GETIMPORT                        R8 K6 [tostring]
       22 CALL                             R8 1 1
       23 FASTCALL1                        TOSTRING R3 ; [+3]
       24 MOVE                             R10 R3
       25 GETIMPORT                        R9 K6 [tostring]
       27 CALL                             R9 1 1
       28 NAMECALL                         R6 R6 K7 ["format"]
       30 CALL                             R6 3 1
       31 MOVE                             R5 R6
       32 CALL                             R4 1 0
       33 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["saveSessions"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R2 1 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["referenceId"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R2 R1 K1 ["resolve"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+6]
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["Fire"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sessions"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 GETIMPORT                        R2 K3 [DateTime.now]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R2 R2 K4 ["UnixTimestampMillis"]
       11 DUPTABLE                         R3 K16 [{["sessionId"], ["title"] = , ["messages"], ["createdAt"], ["updatedAt"], ["persistedMessageIds"], ["persistedContentIds"], ["persistedMessageCreatedAt"], ["persistedMessageBaseIndex"] = 0}]
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        4 CALL                             R1 2 1
        5 GETIMPORT                        R2 K3 [DateTime.now]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R2 R2 K4 ["UnixTimestampMillis"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K5 ["sessions"]
       13 DUPTABLE                         R4 K17 [{["sessionId"], ["title"] = , ["messages"], ["createdAt"], ["updatedAt"], ["persistedMessageIds"], ["persistedContentIds"], ["persistedMessageCreatedAt"], ["persistedMessageBaseIndex"] = 0}]
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
       37 DUPTABLE                         R3 K18 [{"sessionId"}]
       38 SETTABLEKS                       R1 R3 K6 ["sessionId"]
       40 RETURN                           R3 1

PROTO_25:
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
       19 JUMPIFEQKNIL                     R2 ; [+23]
       21 GETTABLEKS                       R2 R0 K6 ["title"]
       23 SETTABLEKS                       R2 R1 K6 ["title"]
       25 GETIMPORT                        R2 K9 [DateTime.now]
       27 CALL                             R2 0 1
       28 GETTABLEKS                       R2 R2 K10 ["UnixTimestampMillis"]
       30 SETTABLEKS                       R2 R1 K11 ["updatedAt"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K12 ["sessionMetadata"]
       35 GETTABLEKS                       R4 R0 K1 ["sessionId"]
       37 GETTABLE                         R2 R3 R4
       38 JUMPIFNOT                        R2 ; [+4]
       39 GETTABLEKS                       R3 R0 K6 ["title"]
       41 SETTABLEKS                       R3 R2 K6 ["title"]
       43 NEWTABLE                         R2 0 0
       45 RETURN                           R2 1

PROTO_26:
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

PROTO_27:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K2 ["pageToken"]
        6 CALL                             R0 2 2
        7 JUMPIF                           R0 ; [+19]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K5 [{"code", "message"}]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K3 ["code"]
       13 LOADK                            R5 K6 ["list sessions failed: %*"]
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R8 R1
       16 GETIMPORT                        R7 K8 [tostring]
       18 CALL                             R7 1 1
       19 NAMECALL                         R5 R5 K9 ["format"]
       21 CALL                             R5 2 1
       22 MOVE                             R4 R5
       23 SETTABLEKS                       R4 R3 K4 ["message"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0
       27 GETIMPORT                        R2 K12 [table.create]
       29 GETTABLEKS                       R4 R1 K13 ["sessions"]
       31 LENGTH                           R3 R4
       32 CALL                             R2 1 1
       33 GETTABLEKS                       R3 R1 K13 ["sessions"]
       35 LOADNIL                          R4
       36 LOADNIL                          R5
       37 FORGPREP                         R3
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K14 ["sessionMetadata"]
       41 GETTABLEKS                       R9 R7 K15 ["sessionId"]
       43 SETTABLE                         R7 R8 R9
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R9 R9 K13 ["sessions"]
       47 GETTABLEKS                       R10 R7 K15 ["sessionId"]
       49 GETTABLE                         R8 R9 R10
       50 DUPTABLE                         R11 K18 [{"sessionId", "title", "updatedAt"}]
       51 GETTABLEKS                       R12 R7 K15 ["sessionId"]
       53 SETTABLEKS                       R12 R11 K15 ["sessionId"]
       55 JUMPIFNOT                        R8 ; [+6]
       56 GETTABLEKS                       R13 R8 K16 ["title"]
       58 JUMPIFNOT                        R13 ; [+3]
       59 GETTABLEKS                       R12 R8 K16 ["title"]
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R12 R7 K16 ["title"]
       64 SETTABLEKS                       R12 R11 K16 ["title"]
       66 GETTABLEKS                       R13 R7 K17 ["updatedAt"]
       68 ORK                              R12 R13 K19 [""]
       69 SETTABLEKS                       R12 R11 K17 ["updatedAt"]
       71 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       73 MOVE                             R10 R2
       74 GETIMPORT                        R9 K21 [table.insert]
       76 CALL                             R9 2 0
       77 FORGLOOP                         R3 2 ; [-40]
       79 GETUPVAL                         R3 5
       80 DUPTABLE                         R4 K23 [{"sessions", "nextPageToken"}]
       81 SETTABLEKS                       R2 R4 K13 ["sessions"]
       83 GETTABLEKS                       R5 R1 K22 ["nextPageToken"]
       85 SETTABLEKS                       R5 R4 K22 ["nextPageToken"]
       87 CALL                             R3 1 0
       88 RETURN                           R0 0

PROTO_28:
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
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          VAL R0
       61 CALL                             R3 1 0
       62 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_30:
        0 JUMPIFNOTEQKS                    R0 K0 ["user"] ; [+3]
        2 LOADN                            R1 1
        3 RETURN                           R1 1
        4 JUMPIFEQKS                       R0 K1 ["assistant"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K2 ["model"] ; [+3]
        8 LOADN                            R1 2
        9 RETURN                           R1 1
       10 LOADN                            R1 0
       11 RETURN                           R1 1

PROTO_31:
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

PROTO_32:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K2 ["sessionId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K3 ["historyPageToken"]
        9 CALL                             R0 3 2
       10 JUMPIF                           R0 ; [+19]
       11 GETUPVAL                         R2 2
       12 DUPTABLE                         R3 K6 [{"code", "message"}]
       13 GETUPVAL                         R4 3
       14 SETTABLEKS                       R4 R3 K4 ["code"]
       16 LOADK                            R5 K7 ["load session failed: %*"]
       17 FASTCALL1                        TOSTRING R1 ; [+3]
       18 MOVE                             R8 R1
       19 GETIMPORT                        R7 K9 [tostring]
       21 CALL                             R7 1 1
       22 NAMECALL                         R5 R5 K10 ["format"]
       24 CALL                             R5 2 1
       25 MOVE                             R4 R5
       26 SETTABLEKS                       R4 R3 K5 ["message"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0
       30 GETIMPORT                        R2 K13 [table.clone]
       32 GETTABLEKS                       R3 R1 K14 ["messages"]
       34 CALL                             R2 1 1
       35 DUPCLOSURE                       R3 K15 [PROTO_30]
       36 GETIMPORT                        R4 K17 [table.sort]
       38 MOVE                             R5 R2
       39 DUPCLOSURE                       R6 K18 [PROTO_31]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R4 4
       42 MOVE                             R5 R2
       43 CALL                             R4 1 4
       44 GETUPVAL                         R9 5
       45 GETTABLEKS                       R9 R9 K19 ["sessions"]
       47 GETUPVAL                         R10 1
       48 GETTABLEKS                       R10 R10 K2 ["sessionId"]
       50 GETTABLE                         R8 R9 R10
       51 JUMPIFNOT                        R8 ; [+49]
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R9 R9 K3 ["historyPageToken"]
       55 JUMPIFEQKNIL                     R9 ; [+45]
       57 LENGTH                           R11 R4
       58 LOADN                            R9 1
       59 LOADN                            R10 -1
       60 FORNPREP                         R9
       61 GETTABLEKS                       R13 R8 K14 ["messages"]
       63 LOADN                            R14 1
       64 GETTABLE                         R15 R4 R11
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R12 K21 [table.insert]
       68 CALL                             R12 3 0
       69 GETTABLEKS                       R13 R8 K22 ["persistedMessageIds"]
       71 LOADN                            R14 1
       72 GETTABLE                         R15 R5 R11
       73 FASTCALL                         TABLE_INSERT ; [+2]
       74 GETIMPORT                        R12 K21 [table.insert]
       76 CALL                             R12 3 0
       77 GETTABLEKS                       R13 R8 K23 ["persistedContentIds"]
       79 LOADN                            R14 1
       80 GETTABLE                         R15 R6 R11
       81 FASTCALL                         TABLE_INSERT ; [+2]
       82 GETIMPORT                        R12 K21 [table.insert]
       84 CALL                             R12 3 0
       85 GETTABLEKS                       R13 R8 K24 ["persistedMessageCreatedAt"]
       87 LOADN                            R14 1
       88 GETTABLE                         R15 R7 R11
       89 FASTCALL                         TABLE_INSERT ; [+2]
       90 GETIMPORT                        R12 K21 [table.insert]
       92 CALL                             R12 3 0
       93 FORNLOOP                         R9
       94 GETTABLEKS                       R9 R8 K25 ["persistedMessageBaseIndex"]
       96 LENGTH                           R10 R4
       97 ADD                              R9 R9 R10
       98 SETTABLEKS                       R9 R8 K25 ["persistedMessageBaseIndex"]
      100 JUMP                             ; [+87]
      101 GETIMPORT                        R9 K28 [DateTime.now]
      103 CALL                             R9 0 1
      104 GETTABLEKS                       R9 R9 K29 ["UnixTimestampMillis"]
      106 GETUPVAL                         R11 5
      107 GETTABLEKS                       R11 R11 K30 ["sessionMetadata"]
      109 GETUPVAL                         R12 1
      110 GETTABLEKS                       R12 R12 K2 ["sessionId"]
      112 GETTABLE                         R10 R11 R12
      113 GETUPVAL                         R11 5
      114 GETTABLEKS                       R11 R11 K19 ["sessions"]
      116 GETUPVAL                         R12 1
      117 GETTABLEKS                       R12 R12 K2 ["sessionId"]
      119 DUPTABLE                         R13 K34 [{"sessionId", "title", "messages", "createdAt", "updatedAt", "persistedMessageIds", "persistedContentIds", "persistedMessageCreatedAt", "persistedMessageBaseIndex"}]
      120 GETUPVAL                         R14 1
      121 GETTABLEKS                       R14 R14 K2 ["sessionId"]
      123 SETTABLEKS                       R14 R13 K2 ["sessionId"]
      125 JUMPIFNOT                        R10 ; [+3]
      126 GETTABLEKS                       R15 R10 K31 ["title"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R15
      130 LOADB                            R16 0
      131 JUMPIFEQKNIL                     R15 ; [+8]
      133 LOADB                            R16 0
      134 JUMPIFEQKS                       R15 K35 [""] ; [+5]
      136 JUMPIFNOTEQKS                    R15 K36 ["Assistant conversation"] ; [+2]
      138 LOADB                            R16 0 +1
      139 LOADB                            R16 1
      140 JUMPIFNOT                        R16 ; [+2]
      141 MOVE                             R14 R15
      142 JUMP                             ; [+22]
      143 GETUPVAL                         R17 6
      144 MOVE                             R18 R4
      145 CALL                             R17 1 1
      146 GETIMPORT                        R18 K38 [warn]
      148 LOADK                            R20 K39 ["[Assistant][ACP] session/list title is nil or legacy default (%*); generating title from first user message: %*"]
      149 FASTCALL1                        TOSTRING R15 ; [+3]
      150 MOVE                             R23 R15
      151 GETIMPORT                        R22 K9 [tostring]
      153 CALL                             R22 1 1
      154 FASTCALL1                        TOSTRING R17 ; [+3]
      155 MOVE                             R24 R17
      156 GETIMPORT                        R23 K9 [tostring]
      158 CALL                             R23 1 1
      159 NAMECALL                         R20 R20 K10 ["format"]
      161 CALL                             R20 3 1
      162 MOVE                             R19 R20
      163 CALL                             R18 1 0
      164 MOVE                             R14 R17
      165 SETTABLEKS                       R14 R13 K31 ["title"]
      167 SETTABLEKS                       R4 R13 K14 ["messages"]
      169 GETTABLEN                        R15 R7 1
      170 OR                               R14 R15 R9
      171 SETTABLEKS                       R14 R13 K32 ["createdAt"]
      173 LENGTH                           R16 R7
      174 GETTABLE                         R15 R7 R16
      175 OR                               R14 R15 R9
      176 SETTABLEKS                       R14 R13 K33 ["updatedAt"]
      178 SETTABLEKS                       R5 R13 K22 ["persistedMessageIds"]
      180 SETTABLEKS                       R6 R13 K23 ["persistedContentIds"]
      182 SETTABLEKS                       R7 R13 K24 ["persistedMessageCreatedAt"]
      184 LENGTH                           R14 R4
      185 SETTABLEKS                       R14 R13 K25 ["persistedMessageBaseIndex"]
      187 SETTABLE                         R13 R11 R12
      188 GETUPVAL                         R9 7
      189 MOVE                             R10 R4
      190 MOVE                             R11 R5
      191 CALL                             R9 2 1
      192 GETUPVAL                         R10 8
      193 DUPTABLE                         R11 K43 [{"history", "modes", "nextHistoryPageToken"}]
      194 SETTABLEKS                       R9 R11 K40 ["history"]
      196 GETTABLEKS                       R12 R1 K41 ["modes"]
      198 SETTABLEKS                       R12 R11 K41 ["modes"]
      200 GETTABLEKS                       R12 R1 K42 ["nextHistoryPageToken"]
      202 SETTABLEKS                       R12 R11 K42 ["nextHistoryPageToken"]
      204 CALL                             R10 1 0
      205 RETURN                           R0 0

PROTO_33:
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
       38 CAPTURE                          VAL R0
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_34:
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
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["activeCancels"]
        3 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R2 R1
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_36:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"sessionId", "update"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["sessionId"]
        5 SETTABLEKS                       R4 R3 K0 ["sessionId"]
        7 SETTABLEKS                       R0 R3 K1 ["update"]
        9 NAMECALL                         R1 R1 K3 ["sendSessionUpdate"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
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
      162 JUMPIF                           R7 ; [+21]
      163 GETIMPORT                        R9 K38 [warn]
      165 LOADK                            R11 K39 ["prompt turn failed after acceptance: %*"]
      166 FASTCALL1                        TOSTRING R8 ; [+3]
      167 MOVE                             R14 R8
      168 GETIMPORT                        R13 K41 [tostring]
      170 CALL                             R13 1 1
      171 NAMECALL                         R11 R11 K42 ["format"]
      173 CALL                             R11 2 1
      174 MOVE                             R10 R11
      175 CALL                             R9 1 0
      176 GETUPVAL                         R9 1
      177 GETUPVAL                         R10 2
      178 GETTABLEKS                       R10 R10 K0 ["StopReason"]
      180 GETTABLEKS                       R10 R10 K43 ["Refusal"]
      182 CALL                             R9 1 0
      183 RETURN                           R0 0
      184 GETUPVAL                         R9 1
      185 MOVE                             R10 R8
      186 CALL                             R9 1 0
      187 RETURN                           R0 0

PROTO_41:
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
       54 GETTABLEKS                       R3 R3 K14 ["nextTurnId"]
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R5 R4 K14 ["nextTurnId"]
       59 ADDK                             R5 R5 K15 [1]
       60 SETTABLEKS                       R5 R4 K14 ["nextTurnId"]
       62 LOADB                            R4 0
       63 GETUPVAL                         R5 4
       64 GETTABLEKS                       R5 R5 K16 ["activeCancels"]
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R6 R6 K0 ["sessionId"]
       69 NEWCLOSURE                       R7 P0
       70 CAPTURE                          REF R4
       71 SETTABLE                         R7 R5 R6
       72 LOADB                            R5 0
       73 NEWCLOSURE                       R6 P1
       74 CAPTURE                          REF R5
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          UPVAL U4
       78 GETUPVAL                         R7 6
       79 GETUPVAL                         R8 1
       80 GETTABLEKS                       R8 R8 K0 ["sessionId"]
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R9 R9 K3 ["prompt"]
       85 MOVE                             R10 R3
       86 CALL                             R7 3 0
       87 GETUPVAL                         R7 5
       88 DUPTABLE                         R9 K18 [{"sessionId", "update"}]
       89 GETUPVAL                         R10 1
       90 GETTABLEKS                       R10 R10 K0 ["sessionId"]
       92 SETTABLEKS                       R10 R9 K0 ["sessionId"]
       94 DUPTABLE                         R10 K23 [{["sessionUpdate"] = "state_update", ["state"] = "running"}]
       95 SETTABLEKS                       R10 R9 K17 ["update"]
       97 NAMECALL                         R7 R7 K24 ["sendSessionUpdate"]
       99 CALL                             R7 2 0
      100 NEWCLOSURE                       R7 P2
      101 CAPTURE                          REF R4
      102 CAPTURE                          VAL R6
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          UPVAL U8
      105 CAPTURE                          UPVAL U9
      106 CAPTURE                          UPVAL U5
      107 CAPTURE                          UPVAL U1
      108 CAPTURE                          UPVAL U10
      109 CAPTURE                          UPVAL U11
      110 CAPTURE                          UPVAL U4
      111 CAPTURE                          UPVAL U12
      112 CAPTURE                          UPVAL U13
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R3
      115 CAPTURE                          UPVAL U14
      116 CAPTURE                          UPVAL U15
      117 CAPTURE                          UPVAL U16
      118 CAPTURE                          VAL R1
      119 CAPTURE                          UPVAL U17
      120 CAPTURE                          VAL R2
      121 GETUPVAL                         R8 18
      122 NEWTABLE                         R9 0 0
      124 CALL                             R8 1 0
      125 GETIMPORT                        R8 K27 [task.defer]
      127 MOVE                             R9 R7
      128 CALL                             R8 1 0
      129 CLOSEUPVALS                      R4
      130 RETURN                           R0 0

PROTO_42:
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
       21 CAPTURE                          VAL R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_43:
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
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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
      184 GETUPVAL                         R5 4
      185 DUPTABLE                         R7 K2 [{"sessionId", "update"}]
      186 GETUPVAL                         R8 2
      187 GETTABLEKS                       R8 R8 K0 ["sessionId"]
      189 SETTABLEKS                       R8 R7 K0 ["sessionId"]
      191 DUPTABLE                         R8 K42 [{"sessionUpdate", "toolCallId", "title", "status", "content", "rawOutput"}]
      192 GETUPVAL                         R9 5
      193 GETTABLEKS                       R9 R9 K43 ["ToolCallUpdate"]
      195 SETTABLEKS                       R9 R8 K3 ["sessionUpdate"]
      197 GETUPVAL                         R9 6
      198 SETTABLEKS                       R9 R8 K9 ["toolCallId"]
      200 GETUPVAL                         R9 7
      201 SETTABLEKS                       R9 R8 K10 ["title"]
      203 JUMPIFNOT                        R3 ; [+2]
      204 LOADK                            R9 K44 ["failed"]
      205 JUMP                             ; [+1]
      206 LOADK                            R9 K45 ["completed"]
      207 SETTABLEKS                       R9 R8 K11 ["status"]
      209 GETUPVAL                         R9 17
      210 GETTABLEKS                       R9 R9 K46 ["toToolCallContent"]
      212 MOVE                             R10 R4
      213 CALL                             R9 1 1
      214 SETTABLEKS                       R9 R8 K29 ["content"]
      216 GETUPVAL                         R9 15
      217 GETTABLEKS                       R9 R9 K35 ["structuredContent"]
      219 SETTABLEKS                       R9 R8 K41 ["rawOutput"]
      221 SETTABLEKS                       R8 R7 K1 ["update"]
      223 NAMECALL                         R5 R5 K8 ["sendSessionUpdate"]
      225 CALL                             R5 2 0
      226 GETUPVAL                         R5 10
      227 GETUPVAL                         R7 9
      228 JUMPIFNOT                        R7 ; [+6]
      229 GETUPVAL                         R6 11
      230 GETTABLEKS                       R6 R6 K16 ["StopReason"]
      232 GETTABLEKS                       R6 R6 K17 ["Cancelled"]
      234 JUMP                             ; [+5]
      235 GETUPVAL                         R6 11
      236 GETTABLEKS                       R6 R6 K16 ["StopReason"]
      238 GETTABLEKS                       R6 R6 K47 ["EndTurn"]
      240 CALL                             R5 1 0
      241 RETURN                           R0 0

PROTO_47:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["[Assistant][LocalACP] session/tool_call failed: %*"]
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

PROTO_48:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 GETUPVAL                         R1 0
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_49:
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
       58 JUMPIFNOTLT                      R6 R5 ; [+40]
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
       99 GETUPVAL                         R5 5
      100 LOADB                            R7 0
      101 NAMECALL                         R5 R5 K20 ["GenerateGUID"]
      103 CALL                             R5 2 1
      104 GETUPVAL                         R6 1
      105 GETTABLEKS                       R6 R6 K21 ["name"]
      107 GETUPVAL                         R7 1
      108 GETTABLEKS                       R7 R7 K22 ["arguments"]
      110 JUMPIF                           R7 ; [+2]
      111 NEWTABLE                         R7 0 0
      113 GETIMPORT                        R8 K16 [DateTime.now]
      115 CALL                             R8 0 1
      116 GETTABLEKS                       R8 R8 K17 ["UnixTimestampMillis"]
      118 DUPTABLE                         R9 K26 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
      119 SETTABLEKS                       R5 R9 K24 ["id"]
      121 SETTABLEKS                       R6 R9 K21 ["name"]
      123 SETTABLEKS                       R7 R9 K25 ["input"]
      125 DUPTABLE                         R10 K35 [{["type"] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = False, ["structuredContent"] = , ["startTime"], ["startTimeAfterConfirmation"]}]
      126 SETTABLEKS                       R5 R10 K24 ["id"]
      128 SETTABLEKS                       R6 R10 K21 ["name"]
      130 NEWTABLE                         R11 0 1
      132 DUPTABLE                         R12 K37 [{["type"] = "text", ["text"] = "Tool call is still running."}]
      133 SETLIST                          R11 R12 1 [1]
      135 SETTABLEKS                       R11 R10 K28 ["content"]
      137 SETTABLEKS                       R8 R10 K33 ["startTime"]
      139 SETTABLEKS                       R8 R10 K34 ["startTimeAfterConfirmation"]
      141 GETTABLEKS                       R12 R1 K12 ["messages"]
      143 DUPTABLE                         R13 K40 [{["role"] = "assistant", ["content"]}]
      144 NEWTABLE                         R14 0 1
      146 MOVE                             R15 R9
      147 SETLIST                          R14 R15 1 [1]
      149 SETTABLEKS                       R14 R13 K28 ["content"]
      151 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      153 GETIMPORT                        R11 K10 [table.insert]
      155 CALL                             R11 2 0
      156 GETTABLEKS                       R12 R1 K12 ["messages"]
      158 DUPTABLE                         R13 K42 [{["role"] = "user", ["content"]}]
      159 NEWTABLE                         R14 0 1
      161 MOVE                             R15 R10
      162 SETLIST                          R14 R15 1 [1]
      164 SETTABLEKS                       R14 R13 K28 ["content"]
      166 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      168 GETIMPORT                        R11 K10 [table.insert]
      170 CALL                             R11 2 0
      171 GETTABLEKS                       R13 R1 K12 ["messages"]
      173 LENGTH                           R12 R13
      174 SUBK                             R11 R12 K2 [1]
      175 GETIMPORT                        R12 K16 [DateTime.now]
      177 CALL                             R12 0 1
      178 GETTABLEKS                       R12 R12 K17 ["UnixTimestampMillis"]
      180 SETTABLEKS                       R12 R1 K18 ["updatedAt"]
      182 GETUPVAL                         R12 6
      183 MOVE                             R13 R1
      184 MOVE                             R14 R11
      185 CALL                             R12 2 0
      186 LOADB                            R12 0
      187 NEWCLOSURE                       R13 P0
      188 CAPTURE                          REF R12
      189 CAPTURE                          UPVAL U7
      190 CAPTURE                          UPVAL U1
      191 CAPTURE                          UPVAL U2
      192 LOADB                            R14 0
      193 GETUPVAL                         R15 2
      194 GETTABLEKS                       R15 R15 K43 ["activeCancels"]
      196 GETUPVAL                         R16 1
      197 GETTABLEKS                       R16 R16 K0 ["sessionId"]
      199 NEWCLOSURE                       R17 P1
      200 CAPTURE                          REF R14
      201 CAPTURE                          REF R12
      202 CAPTURE                          UPVAL U8
      203 CAPTURE                          VAL R5
      204 CAPTURE                          UPVAL U1
      205 CAPTURE                          VAL R2
      206 SETTABLE                         R17 R15 R16
      207 NEWCLOSURE                       R15 P2
      208 CAPTURE                          VAL R3
      209 CAPTURE                          UPVAL U9
      210 CAPTURE                          UPVAL U1
      211 CAPTURE                          VAL R2
      212 CAPTURE                          UPVAL U7
      213 CAPTURE                          UPVAL U10
      214 CAPTURE                          VAL R5
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R7
      217 CAPTURE                          REF R14
      218 CAPTURE                          VAL R13
      219 CAPTURE                          UPVAL U11
      220 CAPTURE                          UPVAL U5
      221 CAPTURE                          UPVAL U12
      222 CAPTURE                          UPVAL U8
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R1
      225 CAPTURE                          UPVAL U13
      226 MOVE                             R16 R0
      227 DUPTABLE                         R17 K46 [{"toolCallId", "turnId"}]
      228 SETTABLEKS                       R5 R17 K44 ["toolCallId"]
      230 SETTABLEKS                       R2 R17 K45 ["turnId"]
      232 CALL                             R16 1 0
      233 GETIMPORT                        R16 K49 [task.defer]
      235 NEWCLOSURE                       R17 P3
      236 CAPTURE                          VAL R15
      237 CAPTURE                          VAL R13
      238 CAPTURE                          UPVAL U11
      239 CALL                             R16 1 0
      240 CLOSEUPVALS                      R12
      241 RETURN                           R0 0

PROTO_50:
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
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1

PROTO_51:
        0 RETURN                           R0 0

PROTO_52:
        0 RETURN                           R0 0

PROTO_53:
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
       15 DUPCLOSURE                       R2 K1 [PROTO_51]
       16 NAMECALL                         R0 R0 K2 ["catch"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 3
       20 NAMECALL                         R0 R0 K0 ["close"]
       22 CALL                             R0 1 1
       23 DUPCLOSURE                       R2 K3 [PROTO_52]
       24 NAMECALL                         R0 R0 K2 ["catch"]
       26 CALL                             R0 2 0
       27 RETURN                           R0 0

PROTO_54:
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
       39 JUMPIFNOT                        R2 ; [+14]
       40 GETTABLEKS                       R6 R2 K16 ["onSaveRequested"]
       42 JUMPIFNOT                        R6 ; [+11]
       43 GETTABLEKS                       R6 R2 K17 ["saveSessions"]
       45 JUMPIFNOT                        R6 ; [+8]
       46 GETTABLEKS                       R6 R2 K16 ["onSaveRequested"]
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R4
       52 CALL                             R6 1 1
       53 MOVE                             R5 R6
       54 GETUPVAL                         R6 2
       55 GETTABLEKS                       R6 R6 K18 ["new"]
       57 LOADK                            R7 K19 ["acp-client"]
       58 CALL                             R6 1 1
       59 GETUPVAL                         R7 2
       60 GETTABLEKS                       R7 R7 K18 ["new"]
       62 LOADK                            R8 K20 ["acp-server"]
       63 CALL                             R7 1 1
       64 MOVE                             R10 R7
       65 NAMECALL                         R8 R6 K21 ["bindPeer"]
       67 CALL                             R8 2 0
       68 GETUPVAL                         R8 3
       69 GETTABLEKS                       R8 R8 K22 ["Server"]
       71 GETTABLEKS                       R8 R8 K18 ["new"]
       73 GETUPVAL                         R9 4
       74 DUPTABLE                         R10 K24 [{"capabilities"}]
       75 GETUPVAL                         R11 5
       76 SETTABLEKS                       R11 R10 K23 ["capabilities"]
       78 CALL                             R8 2 1
       79 NEWTABLE                         R9 0 0
       81 GETUPVAL                         R10 6
       82 GETTABLEKS                       R10 R10 K25 ["setToolResultHandler"]
       84 MOVE                             R11 R8
       85 NEWCLOSURE                       R12 P1
       86 CAPTURE                          VAL R9
       87 CALL                             R10 2 0
       88 NEWCLOSURE                       R10 P2
       89 CAPTURE                          UPVAL U7
       90 CAPTURE                          UPVAL U8
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R8
       93 NEWCLOSURE                       R11 P3
       94 CAPTURE                          VAL R4
       95 NEWCLOSURE                       R12 P4
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          VAL R8
       98 NEWCLOSURE                       R15 P5
       99 CAPTURE                          VAL R4
      100 CAPTURE                          UPVAL U0
      101 CAPTURE                          UPVAL U5
      102 CAPTURE                          UPVAL U4
      103 NAMECALL                         R13 R8 K26 ["setInitializeHandler"]
      105 CALL                             R13 2 0
      106 NEWCLOSURE                       R15 P6
      107 CAPTURE                          UPVAL U7
      108 CAPTURE                          VAL R4
      109 NAMECALL                         R13 R8 K27 ["setNewSessionHandler"]
      111 CALL                             R13 2 0
      112 GETUPVAL                         R16 0
      113 GETTABLEKS                       R16 R16 K28 ["Method"]
      115 GETTABLEKS                       R16 R16 K29 ["SessionSetMode"]
      117 DUPTABLE                         R17 K32 [{"code", "message"}]
      118 GETUPVAL                         R18 9
      119 SETTABLEKS                       R18 R17 K30 ["code"]
      121 LOADK                            R19 K33 ["not_implemented: %*"]
      122 MOVE                             R21 R16
      123 NAMECALL                         R19 R19 K34 ["format"]
      125 CALL                             R19 2 1
      126 MOVE                             R18 R19
      127 SETTABLEKS                       R18 R17 K31 ["message"]
      129 NEWCLOSURE                       R15 P7
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          VAL R17
      132 NAMECALL                         R13 R8 K35 ["setSessionModeHandler"]
      134 CALL                             R13 2 0
      135 GETUPVAL                         R13 6
      136 GETTABLEKS                       R13 R13 K36 ["setUpdateSessionInfoHandler"]
      138 MOVE                             R14 R8
      139 NEWCLOSURE                       R15 P8
      140 CAPTURE                          VAL R4
      141 CALL                             R13 2 0
      142 GETUPVAL                         R13 6
      143 GETTABLEKS                       R13 R13 K37 ["setDeleteSessionHandler"]
      145 MOVE                             R14 R8
      146 NEWCLOSURE                       R15 P9
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R2
      149 CALL                             R13 2 0
      150 NEWCLOSURE                       R15 P10
      151 CAPTURE                          UPVAL U10
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R4
      154 CAPTURE                          UPVAL U11
      155 NAMECALL                         R13 R8 K38 ["setListSessionsHandler"]
      157 CALL                             R13 2 0
      158 NEWCLOSURE                       R15 P11
      159 CAPTURE                          UPVAL U10
      160 CAPTURE                          VAL R2
      161 CAPTURE                          UPVAL U9
      162 CAPTURE                          UPVAL U0
      163 CAPTURE                          UPVAL U11
      164 CAPTURE                          UPVAL U12
      165 CAPTURE                          VAL R4
      166 CAPTURE                          UPVAL U13
      167 CAPTURE                          UPVAL U14
      168 NAMECALL                         R13 R8 K39 ["setLoadSessionHandler"]
      170 CALL                             R13 2 0
      171 NEWCLOSURE                       R15 P12
      172 CAPTURE                          VAL R4
      173 NAMECALL                         R13 R8 K40 ["setCancelHandler"]
      175 CALL                             R13 2 0
      176 NEWCLOSURE                       R15 P13
      177 CAPTURE                          UPVAL U10
      178 CAPTURE                          VAL R11
      179 CAPTURE                          UPVAL U15
      180 CAPTURE                          UPVAL U13
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R12
      184 CAPTURE                          UPVAL U0
      185 CAPTURE                          VAL R1
      186 CAPTURE                          UPVAL U16
      187 CAPTURE                          UPVAL U17
      188 CAPTURE                          UPVAL U18
      189 CAPTURE                          UPVAL U19
      190 CAPTURE                          UPVAL U20
      191 CAPTURE                          UPVAL U7
      192 CAPTURE                          UPVAL U8
      193 CAPTURE                          VAL R9
      194 CAPTURE                          UPVAL U21
      195 NAMECALL                         R13 R8 K41 ["setPromptHandler"]
      197 CALL                             R13 2 0
      198 GETUPVAL                         R13 6
      199 GETTABLEKS                       R13 R13 K42 ["setToolCallRequestHandler"]
      201 MOVE                             R14 R8
      202 NEWCLOSURE                       R15 P14
      203 CAPTURE                          UPVAL U10
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R4
      206 CAPTURE                          UPVAL U15
      207 CAPTURE                          UPVAL U13
      208 CAPTURE                          UPVAL U7
      209 CAPTURE                          UPVAL U21
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R12
      213 CAPTURE                          UPVAL U22
      214 CAPTURE                          UPVAL U0
      215 CAPTURE                          UPVAL U8
      216 CAPTURE                          UPVAL U23
      217 CALL                             R13 2 0
      218 GETUPVAL                         R13 3
      219 GETTABLEKS                       R13 R13 K43 ["Client"]
      221 GETTABLEKS                       R13 R13 K18 ["new"]
      223 GETUPVAL                         R14 24
      224 DUPTABLE                         R15 K24 [{"capabilities"}]
      225 NEWTABLE                         R16 0 0
      227 SETTABLEKS                       R16 R15 K23 ["capabilities"]
      229 CALL                             R13 2 1
      230 GETTABLEKS                       R16 R7 K44 ["transport"]
      232 NAMECALL                         R14 R8 K45 ["connect"]
      234 CALL                             R14 2 0
      235 GETTABLEKS                       R16 R6 K44 ["transport"]
      237 NAMECALL                         R14 R13 K45 ["connect"]
      239 CALL                             R14 2 0
      240 LOADB                            R14 0
      241 NEWCLOSURE                       R15 P15
      242 CAPTURE                          REF R14
      243 CAPTURE                          REF R5
      244 CAPTURE                          VAL R13
      245 CAPTURE                          VAL R8
      246 DUPTABLE                         R16 K48 [{"client", "dispose"}]
      247 SETTABLEKS                       R13 R16 K46 ["client"]
      249 SETTABLEKS                       R15 R16 K47 ["dispose"]
      251 CLOSEUPVALS                      R5
      252 RETURN                           R16 1

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
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K11 ["HarnessObserver"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Parent"]
       50 GETTABLEKS                       R7 R7 K12 ["ModelContextProtocol"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETIMPORT                        R8 K1 [script]
       57 GETTABLEKS                       R8 R8 K13 ["PersistenceBridge"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Parent"]
       64 GETTABLEKS                       R9 R9 K14 ["Promise"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K10 ["Engine"]
       71 GETTABLEKS                       R10 R10 K15 ["Providers"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETIMPORT                        R11 K1 [script]
       78 GETTABLEKS                       R11 R11 K16 ["RobloxMeta"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K6 ["Parent"]
       85 GETTABLEKS                       R12 R12 K17 ["Signal"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K10 ["Engine"]
       92 GETTABLEKS                       R13 R13 K18 ["StreamTypes"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K6 ["Parent"]
       99 GETTABLEKS                       R14 R14 K19 ["AgentClientProtocol"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETIMPORT                        R15 K1 [script]
      106 GETTABLEKS                       R15 R15 K20 ["capabilities"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETIMPORT                        R16 K1 [script]
      113 GETTABLEKS                       R16 R16 K21 ["llmMessagesToSessionUpdates"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETIMPORT                        R17 K1 [script]
      120 GETTABLEKS                       R17 R17 K22 ["sanitizeMessages"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K24 [game]
      125 LOADK                            R19 K25 ["HttpService"]
      126 NAMECALL                         R17 R17 K26 ["GetService"]
      128 CALL                             R17 2 1
      129 GETTABLEKS                       R18 R1 K27 ["PeerTransport"]
      131 GETTABLEKS                       R19 R13 K28 ["ErrorCode"]
      133 GETTABLEKS                       R19 R19 K29 ["InternalError"]
      135 GETTABLEKS                       R20 R13 K28 ["ErrorCode"]
      137 GETTABLEKS                       R20 R20 K30 ["MethodNotFound"]
      139 GETTABLEKS                       R21 R13 K31 ["SessionUpdateKind"]
      141 DUPTABLE                         R22 K36 [{["name"] = "roblox-assistant-harness", ["version"] = "0.0.0"}]
      142 DUPTABLE                         R23 K38 [{["name"] = "roblox-assistant-ui", ["version"] = "0.0.0"}]
      143 DUPCLOSURE                       R24 K39 [PROTO_0]
      144 DUPCLOSURE                       R25 K40 [PROTO_2]
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R8
      147 DUPCLOSURE                       R26 K41 [PROTO_3]
      148 CAPTURE                          VAL R21
      149 DUPCLOSURE                       R27 K42 [PROTO_4]
      150 DUPCLOSURE                       R28 K43 [PROTO_5]
      151 DUPCLOSURE                       R29 K44 [PROTO_6]
      152 DUPCLOSURE                       R30 K45 [PROTO_7]
      153 DUPCLOSURE                       R31 K46 [PROTO_8]
      154 CAPTURE                          VAL R15
      155 DUPCLOSURE                       R32 K47 [PROTO_9]
      156 DUPCLOSURE                       R33 K48 [PROTO_11]
      157 CAPTURE                          VAL R17
      158 DUPCLOSURE                       R34 K49 [PROTO_12]
      159 CAPTURE                          VAL R30
      160 CAPTURE                          VAL R17
      161 DUPCLOSURE                       R35 K50 [PROTO_13]
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R33
      164 CAPTURE                          VAL R32
      165 DUPCLOSURE                       R36 K51 [PROTO_14]
      166 DUPCLOSURE                       R37 K52 [PROTO_15]
      167 CAPTURE                          VAL R36
      168 DUPCLOSURE                       R38 K53 [PROTO_54]
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R34
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R35
      182 CAPTURE                          VAL R36
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R27
      185 CAPTURE                          VAL R26
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R24
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R30
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R23
      194 DUPTABLE                         R39 K55 [{"new"}]
      195 SETTABLEKS                       R38 R39 K54 ["new"]
      197 RETURN                           R39 1
