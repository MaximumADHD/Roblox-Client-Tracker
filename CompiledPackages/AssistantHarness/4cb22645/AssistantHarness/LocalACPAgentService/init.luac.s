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

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["saveSessions"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R2 1 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["referenceId"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R2 R1 K1 ["resolve"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+6]
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["Fire"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_18:
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
       28 DUPTABLE                         R9 K19 [{["expectsReply"] = True, ["referenceId"], ["turnId"]}]
       29 SETTABLEKS                       R4 R9 K17 ["referenceId"]
       31 GETUPVAL                         R10 3
       32 SETTABLEKS                       R10 R9 K18 ["turnId"]
       34 SETTABLEKS                       R9 R8 K13 ["_roblox"]
       36 SETTABLEKS                       R8 R7 K11 ["_meta"]
       38 GETUPVAL                         R8 4
       39 DUPTABLE                         R10 K22 [{"sessionId", "update"}]
       40 GETUPVAL                         R11 5
       41 SETTABLEKS                       R11 R10 K20 ["sessionId"]
       43 SETTABLEKS                       R7 R10 K21 ["update"]
       45 NAMECALL                         R8 R8 K23 ["sendSessionUpdate"]
       47 CALL                             R8 2 0
       48 JUMPIFNOTEQKNIL                  R6 ; [+4]
       50 NAMECALL                         R8 R5 K24 ["Wait"]
       52 CALL                             R8 1 0
       53 GETUPVAL                         R8 2
       54 LOADNIL                          R9
       55 SETTABLE                         R9 R8 R4
       56 MOVE                             R8 R6
       57 JUMPIF                           R8 ; [+9]
       58 GETIMPORT                        R9 K26 [error]
       60 LOADK                            R11 K27 ["client tool reply missing for %*"]
       61 MOVE                             R13 R4
       62 NAMECALL                         R11 R11 K28 ["format"]
       64 CALL                             R11 2 1
       65 MOVE                             R10 R11
       66 CALL                             R9 1 0
       67 GETTABLEKS                       R9 R8 K29 ["content"]
       69 CLOSEUPVALS                      R6
       70 RETURN                           R9 1

PROTO_19:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 RETURN                           R2 1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_27:
        0 JUMPIFNOTEQKS                    R0 K0 ["user"] ; [+3]
        2 LOADN                            R1 1
        3 RETURN                           R1 1
        4 JUMPIFEQKS                       R0 K1 ["assistant"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K2 ["model"] ; [+3]
        8 LOADN                            R1 2
        9 RETURN                           R1 1
       10 LOADN                            R1 0
       11 RETURN                           R1 1

PROTO_28:
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

PROTO_29:
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
       35 DUPCLOSURE                       R3 K15 [PROTO_27]
       36 GETIMPORT                        R4 K17 [table.sort]
       38 MOVE                             R5 R2
       39 DUPCLOSURE                       R6 K18 [PROTO_28]
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["activeCancels"]
        3 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R2 R1
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_33:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"sessionId", "update"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["sessionId"]
        5 SETTABLEKS                       R4 R3 K0 ["sessionId"]
        7 SETTABLEKS                       R0 R3 K1 ["update"]
        9 NAMECALL                         R1 R1 K3 ["sendSessionUpdate"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
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
       92 NEWCLOSURE                       R10 P1
       93 CAPTURE                          UPVAL U14
       94 CAPTURE                          UPVAL U15
       95 CAPTURE                          UPVAL U16
       96 CAPTURE                          VAL R12
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          VAL R11
       99 SETTABLEKS                       R10 R9 K21 ["callTool"]
      101 GETUPVAL                         R10 6
      102 GETTABLEKS                       R10 R10 K2 ["sessionId"]
      104 SETTABLEKS                       R10 R9 K2 ["sessionId"]
      106 GETUPVAL                         R10 14
      107 LOADB                            R12 0
      108 NAMECALL                         R10 R10 K30 ["GenerateGUID"]
      110 CALL                             R10 2 1
      111 SETTABLEKS                       R10 R9 K22 ["messageGuid"]
      113 MOVE                             R10 R1
      114 JUMPIFNOT                        R10 ; [+2]
      115 GETTABLEKS                       R10 R1 K23 ["selectedModel"]
      117 SETTABLEKS                       R10 R9 K23 ["selectedModel"]
      119 SETTABLEKS                       R3 R9 K9 ["selectedProvider"]
      121 MOVE                             R10 R1
      122 JUMPIFNOT                        R10 ; [+2]
      123 GETTABLEKS                       R10 R1 K24 ["apiKeys"]
      125 SETTABLEKS                       R10 R9 K24 ["apiKeys"]
      127 GETUPVAL                         R10 3
      128 GETTABLEKS                       R10 R10 K25 ["maxToolCalls"]
      130 SETTABLEKS                       R10 R9 K25 ["maxToolCalls"]
      132 GETUPVAL                         R10 3
      133 GETTABLEKS                       R10 R10 K26 ["timeoutMs"]
      135 SETTABLEKS                       R10 R9 K26 ["timeoutMs"]
      137 GETUPVAL                         R10 17
      138 SETTABLEKS                       R10 R9 K27 ["isFirstMessage"]
      140 NEWCLOSURE                       R10 P2
      141 CAPTURE                          UPVAL U9
      142 CAPTURE                          UPVAL U6
      143 CAPTURE                          UPVAL U0
      144 SETTABLEKS                       R10 R9 K28 ["registerCancel"]
      146 CALL                             R7 2 2
      147 GETUPVAL                         R9 12
      148 GETIMPORT                        R10 K33 [DateTime.now]
      150 CALL                             R10 0 1
      151 GETTABLEKS                       R10 R10 K34 ["UnixTimestampMillis"]
      153 SETTABLEKS                       R10 R9 K35 ["updatedAt"]
      155 GETUPVAL                         R9 18
      156 GETUPVAL                         R10 12
      157 GETUPVAL                         R12 19
      158 ADDK                             R11 R12 K36 [1]
      159 CALL                             R9 2 0
      160 JUMPIF                           R7 ; [+21]
      161 GETIMPORT                        R9 K38 [warn]
      163 LOADK                            R11 K39 ["prompt turn failed after acceptance: %*"]
      164 FASTCALL1                        TOSTRING R8 ; [+3]
      165 MOVE                             R14 R8
      166 GETIMPORT                        R13 K41 [tostring]
      168 CALL                             R13 1 1
      169 NAMECALL                         R11 R11 K42 ["format"]
      171 CALL                             R11 2 1
      172 MOVE                             R10 R11
      173 CALL                             R9 1 0
      174 GETUPVAL                         R9 1
      175 GETUPVAL                         R10 2
      176 GETTABLEKS                       R10 R10 K0 ["StopReason"]
      178 GETTABLEKS                       R10 R10 K43 ["Refusal"]
      180 CALL                             R9 1 0
      181 RETURN                           R0 0
      182 GETUPVAL                         R9 1
      183 MOVE                             R10 R8
      184 CALL                             R9 1 0
      185 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sessions"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["sessionId"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIF                           R0 ; [+39]
        8 GETIMPORT                        R1 K4 [DateTime.now]
       10 CALL                             R1 0 1
       11 GETTABLEKS                       R1 R1 K5 ["UnixTimestampMillis"]
       13 DUPTABLE                         R2 K16 [{["sessionId"], ["title"] = , ["messages"], ["createdAt"], ["updatedAt"], ["persistedMessageIds"], ["persistedContentIds"], ["persistedMessageCreatedAt"], ["persistedMessageBaseIndex"] = 0}]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K1 ["sessionId"]
       17 SETTABLEKS                       R3 R2 K1 ["sessionId"]
       19 NEWTABLE                         R3 0 0
       21 SETTABLEKS                       R3 R2 K8 ["messages"]
       23 SETTABLEKS                       R1 R2 K9 ["createdAt"]
       25 SETTABLEKS                       R1 R2 K10 ["updatedAt"]
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K11 ["persistedMessageIds"]
       31 NEWTABLE                         R3 0 0
       33 SETTABLEKS                       R3 R2 K12 ["persistedContentIds"]
       35 NEWTABLE                         R3 0 0
       37 SETTABLEKS                       R3 R2 K13 ["persistedMessageCreatedAt"]
       39 MOVE                             R0 R2
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K0 ["sessions"]
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K1 ["sessionId"]
       46 SETTABLE                         R0 R2 R3
       47 GETTABLEKS                       R3 R0 K8 ["messages"]
       49 LENGTH                           R2 R3
       50 JUMPIFEQKN                       R2 K15 [0] ; [+2]
       52 LOADB                            R1 0 +1
       53 LOADB                            R1 1
       54 GETTABLEKS                       R3 R0 K8 ["messages"]
       56 GETUPVAL                         R4 2
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R5 R5 K17 ["prompt"]
       60 CALL                             R4 1 1
       61 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       63 GETIMPORT                        R2 K20 [table.insert]
       65 CALL                             R2 2 0
       66 GETTABLEKS                       R3 R0 K8 ["messages"]
       68 LENGTH                           R2 R3
       69 GETTABLEKS                       R3 R0 K6 ["title"]
       71 JUMPIF                           R3 ; [+11]
       72 GETUPVAL                         R3 3
       73 NEWTABLE                         R4 0 1
       75 GETTABLEKS                       R6 R0 K8 ["messages"]
       77 GETTABLE                         R5 R6 R2
       78 SETLIST                          R4 R5 1 [1]
       80 CALL                             R3 1 1
       81 SETTABLEKS                       R3 R0 K6 ["title"]
       83 GETIMPORT                        R3 K4 [DateTime.now]
       85 CALL                             R3 0 1
       86 GETTABLEKS                       R3 R3 K5 ["UnixTimestampMillis"]
       88 SETTABLEKS                       R3 R0 K10 ["updatedAt"]
       90 GETTABLEKS                       R3 R0 K13 ["persistedMessageCreatedAt"]
       92 GETTABLEKS                       R4 R0 K10 ["updatedAt"]
       94 SETTABLE                         R4 R3 R2
       95 GETUPVAL                         R3 0
       96 GETTABLEKS                       R3 R3 K21 ["nextTurnId"]
       98 GETUPVAL                         R4 0
       99 GETTABLEKS                       R5 R4 K21 ["nextTurnId"]
      101 ADDK                             R5 R5 K22 [1]
      102 SETTABLEKS                       R5 R4 K21 ["nextTurnId"]
      104 LOADB                            R4 0
      105 GETUPVAL                         R5 0
      106 GETTABLEKS                       R5 R5 K23 ["activeCancels"]
      108 GETUPVAL                         R6 1
      109 GETTABLEKS                       R6 R6 K1 ["sessionId"]
      111 NEWCLOSURE                       R7 P0
      112 CAPTURE                          REF R4
      113 SETTABLE                         R7 R5 R6
      114 LOADB                            R5 0
      115 NEWCLOSURE                       R6 P1
      116 CAPTURE                          REF R5
      117 CAPTURE                          UPVAL U4
      118 CAPTURE                          UPVAL U1
      119 CAPTURE                          UPVAL U0
      120 GETUPVAL                         R7 5
      121 LOADB                            R9 0
      122 NAMECALL                         R7 R7 K24 ["GenerateGUID"]
      124 CALL                             R7 2 1
      125 NEWTABLE                         R8 0 0
      127 GETUPVAL                         R9 1
      128 GETTABLEKS                       R9 R9 K17 ["prompt"]
      130 LOADNIL                          R10
      131 LOADNIL                          R11
      132 FORGPREP                         R9
      133 GETTABLEKS                       R14 R13 K25 ["type"]
      135 JUMPIFNOTEQKS                    R14 K26 ["text"] ; [+13]
      137 DUPTABLE                         R16 K27 [{["type"] = "text", ["text"]}]
      138 GETTABLEKS                       R17 R13 K26 ["text"]
      140 SETTABLEKS                       R17 R16 K26 ["text"]
      142 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      144 MOVE                             R15 R8
      145 GETIMPORT                        R14 K20 [table.insert]
      147 CALL                             R14 2 0
      148 JUMP                             ; [+23]
      149 GETTABLEKS                       R14 R13 K25 ["type"]
      151 JUMPIFNOTEQKS                    R14 K28 ["image"] ; [+20]
      153 DUPTABLE                         R16 K32 [{["type"] = "image", ["data"], ["mimeType"], ["uri"]}]
      154 GETTABLEKS                       R17 R13 K29 ["data"]
      156 SETTABLEKS                       R17 R16 K29 ["data"]
      158 GETTABLEKS                       R17 R13 K30 ["mimeType"]
      160 SETTABLEKS                       R17 R16 K30 ["mimeType"]
      162 GETTABLEKS                       R17 R13 K31 ["uri"]
      164 SETTABLEKS                       R17 R16 K31 ["uri"]
      166 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      168 MOVE                             R15 R8
      169 GETIMPORT                        R14 K20 [table.insert]
      171 CALL                             R14 2 0
      172 FORGLOOP                         R9 2 ; [-40]
      174 GETUPVAL                         R9 4
      175 DUPTABLE                         R11 K34 [{"sessionId", "update"}]
      176 GETUPVAL                         R12 1
      177 GETTABLEKS                       R12 R12 K1 ["sessionId"]
      179 SETTABLEKS                       R12 R11 K1 ["sessionId"]
      181 DUPTABLE                         R12 K40 [{["sessionUpdate"] = "user_message", ["messageId"], ["content"], ["_meta"]}]
      182 SETTABLEKS                       R7 R12 K37 ["messageId"]
      184 SETTABLEKS                       R8 R12 K38 ["content"]
      186 DUPTABLE                         R13 K42 [{"_roblox"}]
      187 DUPTABLE                         R14 K45 [{"turnId", "emittedTime"}]
      188 SETTABLEKS                       R3 R14 K43 ["turnId"]
      190 GETIMPORT                        R15 K4 [DateTime.now]
      192 CALL                             R15 0 1
      193 NAMECALL                         R15 R15 K46 ["ToIsoDate"]
      195 CALL                             R15 1 1
      196 SETTABLEKS                       R15 R14 K44 ["emittedTime"]
      198 SETTABLEKS                       R14 R13 K41 ["_roblox"]
      200 SETTABLEKS                       R13 R12 K39 ["_meta"]
      202 SETTABLEKS                       R12 R11 K33 ["update"]
      204 NAMECALL                         R9 R9 K47 ["sendSessionUpdate"]
      206 CALL                             R9 2 0
      207 GETUPVAL                         R9 4
      208 DUPTABLE                         R11 K34 [{"sessionId", "update"}]
      209 GETUPVAL                         R12 1
      210 GETTABLEKS                       R12 R12 K1 ["sessionId"]
      212 SETTABLEKS                       R12 R11 K1 ["sessionId"]
      214 DUPTABLE                         R12 K51 [{["sessionUpdate"] = "state_update", ["state"] = "running"}]
      215 SETTABLEKS                       R12 R11 K33 ["update"]
      217 NAMECALL                         R9 R9 K47 ["sendSessionUpdate"]
      219 CALL                             R9 2 0
      220 NEWCLOSURE                       R9 P2
      221 CAPTURE                          REF R4
      222 CAPTURE                          VAL R6
      223 CAPTURE                          UPVAL U6
      224 CAPTURE                          UPVAL U7
      225 CAPTURE                          UPVAL U8
      226 CAPTURE                          UPVAL U4
      227 CAPTURE                          UPVAL U1
      228 CAPTURE                          UPVAL U9
      229 CAPTURE                          UPVAL U10
      230 CAPTURE                          UPVAL U0
      231 CAPTURE                          UPVAL U11
      232 CAPTURE                          UPVAL U12
      233 CAPTURE                          REF R0
      234 CAPTURE                          VAL R3
      235 CAPTURE                          UPVAL U5
      236 CAPTURE                          UPVAL U13
      237 CAPTURE                          UPVAL U14
      238 CAPTURE                          VAL R1
      239 CAPTURE                          UPVAL U15
      240 CAPTURE                          VAL R2
      241 GETUPVAL                         R10 16
      242 NEWTABLE                         R11 0 0
      244 CALL                             R10 1 0
      245 GETIMPORT                        R10 K54 [task.defer]
      247 MOVE                             R11 R9
      248 CALL                             R10 1 0
      249 CLOSEUPVALS                      R0
      250 RETURN                           R0 0

PROTO_39:
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
       19 CAPTURE                          VAL R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_40:
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
       20 CALL                             R1 1 -1
       21 RETURN                           R1 -1

PROTO_41:
        0 RETURN                           R0 0

PROTO_42:
        0 RETURN                           R0 0

PROTO_43:
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
       15 DUPCLOSURE                       R2 K1 [PROTO_41]
       16 NAMECALL                         R0 R0 K2 ["catch"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 3
       20 NAMECALL                         R0 R0 K0 ["close"]
       22 CALL                             R0 1 1
       23 DUPCLOSURE                       R2 K3 [PROTO_42]
       24 NAMECALL                         R0 R0 K2 ["catch"]
       26 CALL                             R0 2 0
       27 RETURN                           R0 0

PROTO_44:
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
       93 NEWCLOSURE                       R13 P3
       94 CAPTURE                          VAL R4
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          UPVAL U4
       98 NAMECALL                         R11 R8 K26 ["setInitializeHandler"]
      100 CALL                             R11 2 0
      101 NEWCLOSURE                       R13 P4
      102 CAPTURE                          UPVAL U7
      103 CAPTURE                          VAL R4
      104 NAMECALL                         R11 R8 K27 ["setNewSessionHandler"]
      106 CALL                             R11 2 0
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R14 R14 K28 ["Method"]
      110 GETTABLEKS                       R14 R14 K29 ["SessionSetMode"]
      112 DUPTABLE                         R15 K32 [{"code", "message"}]
      113 GETUPVAL                         R16 9
      114 SETTABLEKS                       R16 R15 K30 ["code"]
      116 LOADK                            R17 K33 ["not_implemented: %*"]
      117 MOVE                             R19 R14
      118 NAMECALL                         R17 R17 K34 ["format"]
      120 CALL                             R17 2 1
      121 MOVE                             R16 R17
      122 SETTABLEKS                       R16 R15 K31 ["message"]
      124 NEWCLOSURE                       R13 P5
      125 CAPTURE                          UPVAL U10
      126 CAPTURE                          VAL R15
      127 NAMECALL                         R11 R8 K35 ["setSessionModeHandler"]
      129 CALL                             R11 2 0
      130 GETUPVAL                         R11 6
      131 GETTABLEKS                       R11 R11 K36 ["setUpdateSessionInfoHandler"]
      133 MOVE                             R12 R8
      134 NEWCLOSURE                       R13 P6
      135 CAPTURE                          VAL R4
      136 CALL                             R11 2 0
      137 GETUPVAL                         R11 6
      138 GETTABLEKS                       R11 R11 K37 ["setDeleteSessionHandler"]
      140 MOVE                             R12 R8
      141 NEWCLOSURE                       R13 P7
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R2
      144 CALL                             R11 2 0
      145 NEWCLOSURE                       R13 P8
      146 CAPTURE                          UPVAL U10
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R4
      149 CAPTURE                          UPVAL U11
      150 NAMECALL                         R11 R8 K38 ["setListSessionsHandler"]
      152 CALL                             R11 2 0
      153 NEWCLOSURE                       R13 P9
      154 CAPTURE                          UPVAL U10
      155 CAPTURE                          VAL R2
      156 CAPTURE                          UPVAL U9
      157 CAPTURE                          UPVAL U0
      158 CAPTURE                          UPVAL U11
      159 CAPTURE                          UPVAL U12
      160 CAPTURE                          VAL R4
      161 CAPTURE                          UPVAL U13
      162 CAPTURE                          UPVAL U14
      163 NAMECALL                         R11 R8 K39 ["setLoadSessionHandler"]
      165 CALL                             R11 2 0
      166 NEWCLOSURE                       R13 P10
      167 CAPTURE                          VAL R4
      168 NAMECALL                         R11 R8 K40 ["setCancelHandler"]
      170 CALL                             R11 2 0
      171 NEWCLOSURE                       R13 P11
      172 CAPTURE                          UPVAL U10
      173 CAPTURE                          VAL R4
      174 CAPTURE                          UPVAL U15
      175 CAPTURE                          UPVAL U13
      176 CAPTURE                          VAL R8
      177 CAPTURE                          UPVAL U7
      178 CAPTURE                          UPVAL U0
      179 CAPTURE                          VAL R1
      180 CAPTURE                          UPVAL U16
      181 CAPTURE                          UPVAL U17
      182 CAPTURE                          UPVAL U18
      183 CAPTURE                          UPVAL U19
      184 CAPTURE                          UPVAL U20
      185 CAPTURE                          UPVAL U8
      186 CAPTURE                          VAL R9
      187 CAPTURE                          UPVAL U21
      188 NAMECALL                         R11 R8 K41 ["setPromptHandler"]
      190 CALL                             R11 2 0
      191 GETUPVAL                         R11 3
      192 GETTABLEKS                       R11 R11 K42 ["Client"]
      194 GETTABLEKS                       R11 R11 K18 ["new"]
      196 GETUPVAL                         R12 22
      197 DUPTABLE                         R13 K24 [{"capabilities"}]
      198 NEWTABLE                         R14 0 0
      200 SETTABLEKS                       R14 R13 K23 ["capabilities"]
      202 CALL                             R11 2 1
      203 GETTABLEKS                       R14 R7 K43 ["transport"]
      205 NAMECALL                         R12 R8 K44 ["connect"]
      207 CALL                             R12 2 0
      208 GETTABLEKS                       R14 R6 K43 ["transport"]
      210 NAMECALL                         R12 R11 K44 ["connect"]
      212 CALL                             R12 2 0
      213 LOADB                            R12 0
      214 NEWCLOSURE                       R13 P12
      215 CAPTURE                          REF R12
      216 CAPTURE                          REF R5
      217 CAPTURE                          VAL R11
      218 CAPTURE                          VAL R8
      219 DUPTABLE                         R14 K47 [{"client", "dispose"}]
      220 SETTABLEKS                       R11 R14 K45 ["client"]
      222 SETTABLEKS                       R13 R14 K46 ["dispose"]
      224 CLOSEUPVALS                      R5
      225 RETURN                           R14 1

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
       43 GETTABLEKS                       R6 R6 K11 ["Providers"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Engine"]
       50 GETTABLEKS                       R7 R7 K12 ["StreamTypes"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Parent"]
       57 GETTABLEKS                       R8 R8 K13 ["ModelContextProtocol"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Parent"]
       64 GETTABLEKS                       R9 R9 K14 ["Promise"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Parent"]
       71 GETTABLEKS                       R10 R10 K15 ["AgentClientProtocol"]
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
       90 GETIMPORT                        R13 K1 [script]
       92 GETTABLEKS                       R13 R13 K18 ["capabilities"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETIMPORT                        R14 K1 [script]
       99 GETTABLEKS                       R14 R14 K19 ["llmMessagesToSessionUpdates"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETIMPORT                        R15 K1 [script]
      106 GETTABLEKS                       R15 R15 K20 ["PersistenceBridge"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETIMPORT                        R16 K1 [script]
      113 GETTABLEKS                       R16 R16 K21 ["sanitizeMessages"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K23 [game]
      118 LOADK                            R18 K24 ["HttpService"]
      119 NAMECALL                         R16 R16 K25 ["GetService"]
      121 CALL                             R16 2 1
      122 GETTABLEKS                       R17 R1 K26 ["PeerTransport"]
      124 GETTABLEKS                       R18 R9 K27 ["ErrorCode"]
      126 GETTABLEKS                       R18 R18 K28 ["InternalError"]
      128 GETTABLEKS                       R19 R9 K27 ["ErrorCode"]
      130 GETTABLEKS                       R19 R19 K29 ["MethodNotFound"]
      132 GETTABLEKS                       R20 R9 K30 ["SessionUpdateKind"]
      134 DUPTABLE                         R21 K35 [{["name"] = "roblox-assistant-harness", ["version"] = "0.0.0"}]
      135 DUPTABLE                         R22 K37 [{["name"] = "roblox-assistant-ui", ["version"] = "0.0.0"}]
      136 DUPCLOSURE                       R23 K38 [PROTO_0]
      137 DUPCLOSURE                       R24 K39 [PROTO_2]
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R8
      140 DUPCLOSURE                       R25 K40 [PROTO_3]
      141 CAPTURE                          VAL R20
      142 DUPCLOSURE                       R26 K41 [PROTO_4]
      143 DUPCLOSURE                       R27 K42 [PROTO_5]
      144 DUPCLOSURE                       R28 K43 [PROTO_6]
      145 DUPCLOSURE                       R29 K44 [PROTO_7]
      146 CAPTURE                          VAL R13
      147 DUPCLOSURE                       R30 K45 [PROTO_8]
      148 DUPCLOSURE                       R31 K46 [PROTO_10]
      149 CAPTURE                          VAL R16
      150 DUPCLOSURE                       R32 K47 [PROTO_11]
      151 CAPTURE                          VAL R28
      152 CAPTURE                          VAL R16
      153 DUPCLOSURE                       R33 K48 [PROTO_12]
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R31
      156 CAPTURE                          VAL R30
      157 DUPCLOSURE                       R34 K49 [PROTO_13]
      158 DUPCLOSURE                       R35 K50 [PROTO_14]
      159 CAPTURE                          VAL R34
      160 DUPCLOSURE                       R36 K51 [PROTO_44]
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R32
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R33
      174 CAPTURE                          VAL R34
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R26
      177 CAPTURE                          VAL R25
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R23
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R28
      183 CAPTURE                          VAL R22
      184 DUPTABLE                         R37 K53 [{"new"}]
      185 SETTABLEKS                       R36 R37 K52 ["new"]
      187 RETURN                           R37 1
