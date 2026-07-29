PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reject"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
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

PROTO_2:
        0 DUPTABLE                         R2 K2 [{"sessionUpdate", "content"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K3 ["AgentMessageChunk"]
        4 SETTABLEKS                       R3 R2 K0 ["sessionUpdate"]
        6 DUPTABLE                         R3 K7 [{["type"] = "text", ["text"] = "LocalAssistantService is wired up (foundations). Engine lands in Phase 2."}]
        7 SETTABLEKS                       R3 R2 K1 ["content"]
        9 DUPTABLE                         R5 K10 [{"sessionId", "update"}]
       10 SETTABLEKS                       R1 R5 K8 ["sessionId"]
       12 SETTABLEKS                       R2 R5 K9 ["update"]
       14 NAMECALL                         R3 R0 K11 ["sendSessionUpdate"]
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETIMPORT                        R0 K2 [DateTime.now]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K3 ["UnixTimestampMillis"]
        5 RETURN                           R0 1

PROTO_5:
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
       16 JUMPIF                           R6 ; [+4]
       17 ADDK                             R2 R2 K1 [1]
       18 GETTABLEKS                       R6 R0 K0 ["persistedMessageCreatedAt"]
       20 SETTABLE                         R2 R6 R5
       21 FORNLOOP                         R3
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["saveSessions"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R2 1 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["referenceId"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R2 R1 K1 ["resolve"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+6]
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["Fire"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 RETURN                           R2 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sessions"]
        3 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIF                           R1 ; [+10]
        7 GETIMPORT                        R1 K3 [error]
        9 LOADK                            R3 K4 ["Unknown ACP session %*"]
       10 GETTABLEKS                       R5 R0 K1 ["sessionId"]
       12 NAMECALL                         R3 R3 K5 ["format"]
       14 CALL                             R3 2 1
       15 MOVE                             R2 R3
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 1
       18 JUMPIFNOT                        R1 ; [+10]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K6 ["deleteSession"]
       22 JUMPIFNOT                        R1 ; [+6]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K6 ["deleteSession"]
       26 GETTABLEKS                       R2 R0 K1 ["sessionId"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K0 ["sessions"]
       32 GETTABLEKS                       R2 R0 K1 ["sessionId"]
       34 LOADNIL                          R3
       35 SETTABLE                         R3 R1 R2
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K7 ["sessionMetadata"]
       39 GETTABLEKS                       R2 R0 K1 ["sessionId"]
       41 LOADNIL                          R3
       42 SETTABLE                         R3 R1 R2
       43 NEWTABLE                         R1 0 0
       45 RETURN                           R1 1

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_26:
        0 JUMPIFNOTEQKS                    R0 K0 ["user"] ; [+3]
        2 LOADN                            R1 1
        3 RETURN                           R1 1
        4 JUMPIFEQKS                       R0 K1 ["assistant"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K2 ["model"] ; [+3]
        8 LOADN                            R1 2
        9 RETURN                           R1 1
       10 LOADN                            R1 0
       11 RETURN                           R1 1

PROTO_27:
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

PROTO_28:
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
       35 DUPCLOSURE                       R3 K15 [PROTO_26]
       36 GETIMPORT                        R4 K17 [table.sort]
       38 MOVE                             R5 R2
       39 DUPCLOSURE                       R6 K18 [PROTO_27]
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
      190 CALL                             R9 1 1
      191 GETUPVAL                         R10 8
      192 DUPTABLE                         R11 K43 [{"history", "modes", "nextHistoryPageToken"}]
      193 SETTABLEKS                       R9 R11 K40 ["history"]
      195 GETTABLEKS                       R12 R1 K41 ["modes"]
      197 SETTABLEKS                       R12 R11 K41 ["modes"]
      199 GETTABLEKS                       R12 R1 K42 ["nextHistoryPageToken"]
      201 SETTABLEKS                       R12 R11 K42 ["nextHistoryPageToken"]
      203 CALL                             R10 1 0
      204 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["activeCancels"]
        3 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R2 R1
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_32:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"sessionId", "update"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["sessionId"]
        5 SETTABLEKS                       R4 R3 K0 ["sessionId"]
        7 SETTABLEKS                       R0 R3 K1 ["update"]
        9 NAMECALL                         R1 R1 K3 ["sendSessionUpdate"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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
       37 NEWTABLE                         R2 0 0
       39 NEWTABLE                         R3 0 0
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R4 R4 K7 ["listTools"]
       44 JUMPIFNOT                        R4 ; [+18]
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R4 R4 K7 ["listTools"]
       48 MOVE                             R5 R0
       49 CALL                             R4 1 1
       50 MOVE                             R2 R4
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K8 ["formatTools"]
       54 JUMPIFNOT                        R4 ; [+7]
       55 GETUPVAL                         R4 3
       56 GETTABLEKS                       R4 R4 K8 ["formatTools"]
       58 MOVE                             R5 R2
       59 CALL                             R4 1 1
       60 MOVE                             R3 R4
       61 JUMP                             ; [+1]
       62 MOVE                             R3 R2
       63 GETUPVAL                         R5 3
       64 GETTABLEKS                       R5 R5 K9 ["buildSystemMessage"]
       66 JUMPIFNOT                        R5 ; [+7]
       67 GETUPVAL                         R4 3
       68 GETTABLEKS                       R4 R4 K9 ["buildSystemMessage"]
       70 MOVE                             R5 R0
       71 MOVE                             R6 R2
       72 CALL                             R4 2 1
       73 JUMP                             ; [+1]
       74 LOADK                            R4 K10 [""]
       75 GETIMPORT                        R5 K12 [pcall]
       77 GETUPVAL                         R6 8
       78 GETTABLEKS                       R6 R6 K13 ["run"]
       80 DUPTABLE                         R7 K28 [{"sendUpdate", "requestLLM", "systemMessage", "messages", "tools", "callTool", "sessionId", "messageGuid", "selectedModel", "apiKeys", "assistantMode", "maxToolCalls", "timeoutMs", "isFirstMessage", "registerCancel"}]
       81 NEWCLOSURE                       R8 P0
       82 CAPTURE                          UPVAL U5
       83 CAPTURE                          UPVAL U6
       84 SETTABLEKS                       R8 R7 K14 ["sendUpdate"]
       86 GETUPVAL                         R8 3
       87 GETTABLEKS                       R8 R8 K15 ["requestLLM"]
       89 SETTABLEKS                       R8 R7 K15 ["requestLLM"]
       91 SETTABLEKS                       R4 R7 K16 ["systemMessage"]
       93 GETUPVAL                         R8 9
       94 GETTABLEKS                       R8 R8 K17 ["messages"]
       96 SETTABLEKS                       R8 R7 K17 ["messages"]
       98 SETTABLEKS                       R3 R7 K18 ["tools"]
      100 GETUPVAL                         R9 6
      101 GETTABLEKS                       R9 R9 K2 ["sessionId"]
      103 GETUPVAL                         R10 10
      104 NEWCLOSURE                       R8 P1
      105 CAPTURE                          UPVAL U11
      106 CAPTURE                          UPVAL U12
      107 CAPTURE                          UPVAL U13
      108 CAPTURE                          VAL R10
      109 CAPTURE                          UPVAL U5
      110 CAPTURE                          VAL R9
      111 SETTABLEKS                       R8 R7 K19 ["callTool"]
      113 GETUPVAL                         R8 6
      114 GETTABLEKS                       R8 R8 K2 ["sessionId"]
      116 SETTABLEKS                       R8 R7 K2 ["sessionId"]
      118 GETUPVAL                         R8 11
      119 LOADB                            R10 0
      120 NAMECALL                         R8 R8 K29 ["GenerateGUID"]
      122 CALL                             R8 2 1
      123 SETTABLEKS                       R8 R7 K20 ["messageGuid"]
      125 MOVE                             R8 R1
      126 JUMPIFNOT                        R8 ; [+2]
      127 GETTABLEKS                       R8 R1 K21 ["selectedModel"]
      129 SETTABLEKS                       R8 R7 K21 ["selectedModel"]
      131 MOVE                             R8 R1
      132 JUMPIFNOT                        R8 ; [+2]
      133 GETTABLEKS                       R8 R1 K22 ["apiKeys"]
      135 SETTABLEKS                       R8 R7 K22 ["apiKeys"]
      137 MOVE                             R8 R0
      138 JUMPIFNOT                        R8 ; [+2]
      139 GETTABLEKS                       R8 R0 K23 ["assistantMode"]
      141 SETTABLEKS                       R8 R7 K23 ["assistantMode"]
      143 GETUPVAL                         R8 3
      144 GETTABLEKS                       R8 R8 K24 ["maxToolCalls"]
      146 SETTABLEKS                       R8 R7 K24 ["maxToolCalls"]
      148 GETUPVAL                         R8 3
      149 GETTABLEKS                       R8 R8 K25 ["timeoutMs"]
      151 SETTABLEKS                       R8 R7 K25 ["timeoutMs"]
      153 GETUPVAL                         R8 14
      154 SETTABLEKS                       R8 R7 K26 ["isFirstMessage"]
      156 NEWCLOSURE                       R8 P2
      157 CAPTURE                          UPVAL U15
      158 CAPTURE                          UPVAL U6
      159 CAPTURE                          UPVAL U0
      160 SETTABLEKS                       R8 R7 K27 ["registerCancel"]
      162 CALL                             R5 2 2
      163 GETUPVAL                         R7 9
      164 GETIMPORT                        R8 K32 [DateTime.now]
      166 CALL                             R8 0 1
      167 GETTABLEKS                       R8 R8 K33 ["UnixTimestampMillis"]
      169 SETTABLEKS                       R8 R7 K34 ["updatedAt"]
      171 GETUPVAL                         R7 16
      172 GETUPVAL                         R8 9
      173 GETUPVAL                         R10 17
      174 ADDK                             R9 R10 K35 [1]
      175 CALL                             R7 2 0
      176 JUMPIF                           R5 ; [+21]
      177 GETIMPORT                        R7 K37 [warn]
      179 LOADK                            R9 K38 ["prompt turn failed after acceptance: %*"]
      180 FASTCALL1                        TOSTRING R6 ; [+3]
      181 MOVE                             R12 R6
      182 GETIMPORT                        R11 K40 [tostring]
      184 CALL                             R11 1 1
      185 NAMECALL                         R9 R9 K41 ["format"]
      187 CALL                             R9 2 1
      188 MOVE                             R8 R9
      189 CALL                             R7 1 0
      190 GETUPVAL                         R7 1
      191 GETUPVAL                         R8 2
      192 GETTABLEKS                       R8 R8 K0 ["StopReason"]
      194 GETTABLEKS                       R8 R8 K42 ["Refusal"]
      196 CALL                             R7 1 0
      197 RETURN                           R0 0
      198 GETUPVAL                         R7 1
      199 MOVE                             R8 R6
      200 CALL                             R7 1 0
      201 RETURN                           R0 0

PROTO_37:
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
       71 JUMPIF                           R3 ; [+29]
       72 GETUPVAL                         R3 1
       73 GETTABLEKS                       R3 R3 K17 ["prompt"]
       75 LOADNIL                          R4
       76 LOADNIL                          R5
       77 FORGPREP                         R3
       78 GETTABLEKS                       R8 R7 K21 ["type"]
       80 JUMPIFNOTEQKS                    R8 K22 ["text"] ; [+18]
       82 GETTABLEKS                       R9 R7 K22 ["text"]
       84 LENGTH                           R8 R9
       85 LOADN                            R9 0
       86 JUMPIFNOTLT                      R9 R8 ; [+12]
       88 GETTABLEKS                       R9 R7 K22 ["text"]
       90 LOADN                            R10 1
       91 LOADN                            R11 80
       92 FASTCALL                         STRING_SUB ; [+2]
       93 GETIMPORT                        R8 K25 [string.sub]
       95 CALL                             R8 3 1
       96 SETTABLEKS                       R8 R0 K6 ["title"]
       98 JUMP                             ; [+2]
       99 FORGLOOP                         R3 2 ; [-22]
      101 GETIMPORT                        R3 K4 [DateTime.now]
      103 CALL                             R3 0 1
      104 GETTABLEKS                       R3 R3 K5 ["UnixTimestampMillis"]
      106 SETTABLEKS                       R3 R0 K10 ["updatedAt"]
      108 GETTABLEKS                       R3 R0 K13 ["persistedMessageCreatedAt"]
      110 GETTABLEKS                       R4 R0 K10 ["updatedAt"]
      112 SETTABLE                         R4 R3 R2
      113 GETUPVAL                         R3 0
      114 GETTABLEKS                       R3 R3 K26 ["nextTurnId"]
      116 GETUPVAL                         R4 0
      117 GETTABLEKS                       R5 R4 K26 ["nextTurnId"]
      119 ADDK                             R5 R5 K27 [1]
      120 SETTABLEKS                       R5 R4 K26 ["nextTurnId"]
      122 LOADB                            R4 0
      123 GETUPVAL                         R5 0
      124 GETTABLEKS                       R5 R5 K28 ["activeCancels"]
      126 GETUPVAL                         R6 1
      127 GETTABLEKS                       R6 R6 K1 ["sessionId"]
      129 NEWCLOSURE                       R7 P0
      130 CAPTURE                          REF R4
      131 SETTABLE                         R7 R5 R6
      132 LOADB                            R5 0
      133 NEWCLOSURE                       R6 P1
      134 CAPTURE                          REF R5
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          UPVAL U1
      137 CAPTURE                          UPVAL U0
      138 GETUPVAL                         R7 4
      139 LOADB                            R9 0
      140 NAMECALL                         R7 R7 K29 ["GenerateGUID"]
      142 CALL                             R7 2 1
      143 NEWTABLE                         R8 0 0
      145 GETUPVAL                         R9 1
      146 GETTABLEKS                       R9 R9 K17 ["prompt"]
      148 LOADNIL                          R10
      149 LOADNIL                          R11
      150 FORGPREP                         R9
      151 GETTABLEKS                       R14 R13 K21 ["type"]
      153 JUMPIFNOTEQKS                    R14 K22 ["text"] ; [+13]
      155 DUPTABLE                         R16 K30 [{["type"] = "text", ["text"]}]
      156 GETTABLEKS                       R17 R13 K22 ["text"]
      158 SETTABLEKS                       R17 R16 K22 ["text"]
      160 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      162 MOVE                             R15 R8
      163 GETIMPORT                        R14 K20 [table.insert]
      165 CALL                             R14 2 0
      166 JUMP                             ; [+19]
      167 GETTABLEKS                       R14 R13 K21 ["type"]
      169 JUMPIFNOTEQKS                    R14 K31 ["image"] ; [+16]
      171 DUPTABLE                         R16 K34 [{["type"] = "image", ["data"], ["mimeType"]}]
      172 GETTABLEKS                       R17 R13 K32 ["data"]
      174 SETTABLEKS                       R17 R16 K32 ["data"]
      176 GETTABLEKS                       R17 R13 K33 ["mimeType"]
      178 SETTABLEKS                       R17 R16 K33 ["mimeType"]
      180 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      182 MOVE                             R15 R8
      183 GETIMPORT                        R14 K20 [table.insert]
      185 CALL                             R14 2 0
      186 FORGLOOP                         R9 2 ; [-36]
      188 GETUPVAL                         R9 3
      189 DUPTABLE                         R11 K36 [{"sessionId", "update"}]
      190 GETUPVAL                         R12 1
      191 GETTABLEKS                       R12 R12 K1 ["sessionId"]
      193 SETTABLEKS                       R12 R11 K1 ["sessionId"]
      195 DUPTABLE                         R12 K42 [{["sessionUpdate"] = "user_message", ["messageId"], ["content"], ["_meta"]}]
      196 SETTABLEKS                       R7 R12 K39 ["messageId"]
      198 SETTABLEKS                       R8 R12 K40 ["content"]
      200 DUPTABLE                         R13 K44 [{"_roblox"}]
      201 DUPTABLE                         R14 K47 [{"turnId", "emittedTime"}]
      202 SETTABLEKS                       R3 R14 K45 ["turnId"]
      204 GETIMPORT                        R15 K4 [DateTime.now]
      206 CALL                             R15 0 1
      207 NAMECALL                         R15 R15 K48 ["ToIsoDate"]
      209 CALL                             R15 1 1
      210 SETTABLEKS                       R15 R14 K46 ["emittedTime"]
      212 SETTABLEKS                       R14 R13 K43 ["_roblox"]
      214 SETTABLEKS                       R13 R12 K41 ["_meta"]
      216 SETTABLEKS                       R12 R11 K35 ["update"]
      218 NAMECALL                         R9 R9 K49 ["sendSessionUpdate"]
      220 CALL                             R9 2 0
      221 GETUPVAL                         R9 3
      222 DUPTABLE                         R11 K36 [{"sessionId", "update"}]
      223 GETUPVAL                         R12 1
      224 GETTABLEKS                       R12 R12 K1 ["sessionId"]
      226 SETTABLEKS                       R12 R11 K1 ["sessionId"]
      228 DUPTABLE                         R12 K53 [{["sessionUpdate"] = "state_update", ["state"] = "running"}]
      229 SETTABLEKS                       R12 R11 K35 ["update"]
      231 NAMECALL                         R9 R9 K49 ["sendSessionUpdate"]
      233 CALL                             R9 2 0
      234 NEWCLOSURE                       R9 P2
      235 CAPTURE                          REF R4
      236 CAPTURE                          VAL R6
      237 CAPTURE                          UPVAL U5
      238 CAPTURE                          UPVAL U6
      239 CAPTURE                          UPVAL U7
      240 CAPTURE                          UPVAL U3
      241 CAPTURE                          UPVAL U1
      242 CAPTURE                          UPVAL U8
      243 CAPTURE                          UPVAL U9
      244 CAPTURE                          REF R0
      245 CAPTURE                          VAL R3
      246 CAPTURE                          UPVAL U4
      247 CAPTURE                          UPVAL U10
      248 CAPTURE                          UPVAL U11
      249 CAPTURE                          VAL R1
      250 CAPTURE                          UPVAL U0
      251 CAPTURE                          UPVAL U12
      252 CAPTURE                          VAL R2
      253 GETUPVAL                         R10 13
      254 NEWTABLE                         R11 0 0
      256 CALL                             R10 1 0
      257 GETIMPORT                        R10 K56 [task.defer]
      259 MOVE                             R11 R9
      260 CALL                             R10 1 0
      261 CLOSEUPVALS                      R0
      262 RETURN                           R0 0

PROTO_38:
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
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_39:
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
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_40:
        0 RETURN                           R0 0

PROTO_41:
        0 RETURN                           R0 0

PROTO_42:
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
       15 DUPCLOSURE                       R2 K1 [PROTO_40]
       16 NAMECALL                         R0 R0 K2 ["catch"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 3
       20 NAMECALL                         R0 R0 K0 ["close"]
       22 CALL                             R0 1 1
       23 DUPCLOSURE                       R2 K3 [PROTO_41]
       24 NAMECALL                         R0 R0 K2 ["catch"]
       26 CALL                             R0 2 0
       27 RETURN                           R0 0

PROTO_43:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETTABLEKS                       R1 R0 K0 ["turn"]
        4 MOVE                             R2 R0
        5 JUMPIFNOT                        R2 ; [+2]
        6 GETTABLEKS                       R2 R0 K1 ["persistence"]
        8 DUPTABLE                         R3 K10 [{["clientCapabilities"] = , ["negotiatedProtocolVersion"], ["sessions"], ["sessionMetadata"], ["nextTurnId"] = 1, ["activeCancels"]}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K11 ["LATEST_PROTOCOL_VERSION"]
       12 SETTABLEKS                       R4 R3 K4 ["negotiatedProtocolVersion"]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K5 ["sessions"]
       18 NEWTABLE                         R4 0 0
       20 SETTABLEKS                       R4 R3 K6 ["sessionMetadata"]
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R3 K9 ["activeCancels"]
       26 LOADNIL                          R4
       27 JUMPIFNOT                        R2 ; [+14]
       28 GETTABLEKS                       R5 R2 K12 ["onSaveRequested"]
       30 JUMPIFNOT                        R5 ; [+11]
       31 GETTABLEKS                       R5 R2 K13 ["saveSessions"]
       33 JUMPIFNOT                        R5 ; [+8]
       34 GETTABLEKS                       R5 R2 K12 ["onSaveRequested"]
       36 NEWCLOSURE                       R6 P0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R3
       40 CALL                             R5 1 1
       41 MOVE                             R4 R5
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R5 R5 K14 ["new"]
       45 LOADK                            R6 K15 ["acp-client"]
       46 CALL                             R5 1 1
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R6 R6 K14 ["new"]
       50 LOADK                            R7 K16 ["acp-server"]
       51 CALL                             R6 1 1
       52 MOVE                             R9 R6
       53 NAMECALL                         R7 R5 K17 ["bindPeer"]
       55 CALL                             R7 2 0
       56 GETUPVAL                         R7 3
       57 GETTABLEKS                       R7 R7 K18 ["Server"]
       59 GETTABLEKS                       R7 R7 K14 ["new"]
       61 GETUPVAL                         R8 4
       62 DUPTABLE                         R9 K20 [{"capabilities"}]
       63 GETUPVAL                         R10 5
       64 SETTABLEKS                       R10 R9 K19 ["capabilities"]
       66 CALL                             R7 2 1
       67 NEWTABLE                         R8 0 0
       69 GETUPVAL                         R9 6
       70 GETTABLEKS                       R9 R9 K21 ["setToolResultHandler"]
       72 MOVE                             R10 R7
       73 NEWCLOSURE                       R11 P1
       74 CAPTURE                          VAL R8
       75 CALL                             R9 2 0
       76 NEWCLOSURE                       R9 P2
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R7
       81 NEWCLOSURE                       R12 P3
       82 CAPTURE                          VAL R3
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          UPVAL U4
       86 NAMECALL                         R10 R7 K22 ["setInitializeHandler"]
       88 CALL                             R10 2 0
       89 NEWCLOSURE                       R12 P4
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          VAL R3
       92 NAMECALL                         R10 R7 K23 ["setNewSessionHandler"]
       94 CALL                             R10 2 0
       95 GETUPVAL                         R13 0
       96 GETTABLEKS                       R13 R13 K24 ["Method"]
       98 GETTABLEKS                       R13 R13 K25 ["SessionSetMode"]
      100 DUPTABLE                         R14 K28 [{"code", "message"}]
      101 GETUPVAL                         R15 9
      102 SETTABLEKS                       R15 R14 K26 ["code"]
      104 LOADK                            R16 K29 ["not_implemented: %*"]
      105 MOVE                             R18 R13
      106 NAMECALL                         R16 R16 K30 ["format"]
      108 CALL                             R16 2 1
      109 MOVE                             R15 R16
      110 SETTABLEKS                       R15 R14 K27 ["message"]
      112 NEWCLOSURE                       R12 P5
      113 CAPTURE                          UPVAL U10
      114 CAPTURE                          VAL R14
      115 NAMECALL                         R10 R7 K31 ["setSessionModeHandler"]
      117 CALL                             R10 2 0
      118 GETUPVAL                         R10 6
      119 GETTABLEKS                       R10 R10 K32 ["setUpdateSessionInfoHandler"]
      121 MOVE                             R11 R7
      122 NEWCLOSURE                       R12 P6
      123 CAPTURE                          VAL R3
      124 CALL                             R10 2 0
      125 GETUPVAL                         R10 6
      126 GETTABLEKS                       R10 R10 K33 ["setDeleteSessionHandler"]
      128 MOVE                             R11 R7
      129 NEWCLOSURE                       R12 P7
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R2
      132 CALL                             R10 2 0
      133 NEWCLOSURE                       R12 P8
      134 CAPTURE                          UPVAL U10
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R3
      137 CAPTURE                          UPVAL U11
      138 NAMECALL                         R10 R7 K34 ["setListSessionsHandler"]
      140 CALL                             R10 2 0
      141 NEWCLOSURE                       R12 P9
      142 CAPTURE                          UPVAL U10
      143 CAPTURE                          VAL R2
      144 CAPTURE                          UPVAL U9
      145 CAPTURE                          UPVAL U0
      146 CAPTURE                          UPVAL U11
      147 CAPTURE                          UPVAL U12
      148 CAPTURE                          VAL R3
      149 CAPTURE                          UPVAL U13
      150 CAPTURE                          UPVAL U14
      151 NAMECALL                         R10 R7 K35 ["setLoadSessionHandler"]
      153 CALL                             R10 2 0
      154 NEWCLOSURE                       R12 P10
      155 CAPTURE                          VAL R3
      156 NAMECALL                         R10 R7 K36 ["setCancelHandler"]
      158 CALL                             R10 2 0
      159 NEWCLOSURE                       R12 P11
      160 CAPTURE                          UPVAL U10
      161 CAPTURE                          VAL R3
      162 CAPTURE                          UPVAL U15
      163 CAPTURE                          VAL R7
      164 CAPTURE                          UPVAL U7
      165 CAPTURE                          UPVAL U0
      166 CAPTURE                          VAL R1
      167 CAPTURE                          UPVAL U16
      168 CAPTURE                          UPVAL U17
      169 CAPTURE                          UPVAL U18
      170 CAPTURE                          UPVAL U8
      171 CAPTURE                          VAL R8
      172 CAPTURE                          UPVAL U19
      173 NAMECALL                         R10 R7 K37 ["setPromptHandler"]
      175 CALL                             R10 2 0
      176 GETUPVAL                         R10 3
      177 GETTABLEKS                       R10 R10 K38 ["Client"]
      179 GETTABLEKS                       R10 R10 K14 ["new"]
      181 GETUPVAL                         R11 20
      182 DUPTABLE                         R12 K20 [{"capabilities"}]
      183 NEWTABLE                         R13 0 0
      185 SETTABLEKS                       R13 R12 K19 ["capabilities"]
      187 CALL                             R10 2 1
      188 GETTABLEKS                       R13 R6 K39 ["transport"]
      190 NAMECALL                         R11 R7 K40 ["connect"]
      192 CALL                             R11 2 0
      193 GETTABLEKS                       R13 R5 K39 ["transport"]
      195 NAMECALL                         R11 R10 K40 ["connect"]
      197 CALL                             R11 2 0
      198 LOADB                            R11 0
      199 NEWCLOSURE                       R12 P12
      200 CAPTURE                          REF R11
      201 CAPTURE                          REF R4
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R7
      204 DUPTABLE                         R13 K43 [{"client", "dispose"}]
      205 SETTABLEKS                       R10 R13 K41 ["client"]
      207 SETTABLEKS                       R12 R13 K42 ["dispose"]
      209 CLOSEUPVALS                      R4
      210 RETURN                           R13 1

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
       43 GETTABLEKS                       R6 R6 K11 ["StreamTypes"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Parent"]
       50 GETTABLEKS                       R7 R7 K12 ["Promise"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Parent"]
       57 GETTABLEKS                       R8 R8 K13 ["AgentClientProtocol"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETIMPORT                        R9 K1 [script]
       64 GETTABLEKS                       R9 R9 K14 ["RobloxMeta"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Parent"]
       71 GETTABLEKS                       R10 R10 K15 ["Signal"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETIMPORT                        R11 K1 [script]
       78 GETTABLEKS                       R11 R11 K16 ["capabilities"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETIMPORT                        R12 K1 [script]
       85 GETTABLEKS                       R12 R12 K17 ["llmMessagesToSessionUpdates"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETIMPORT                        R13 K1 [script]
       92 GETTABLEKS                       R13 R13 K18 ["PersistenceBridge"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETIMPORT                        R14 K1 [script]
       99 GETTABLEKS                       R14 R14 K19 ["sanitizeMessages"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K21 [game]
      104 LOADK                            R16 K22 ["HttpService"]
      105 NAMECALL                         R14 R14 K23 ["GetService"]
      107 CALL                             R14 2 1
      108 GETTABLEKS                       R15 R1 K24 ["PeerTransport"]
      110 GETTABLEKS                       R16 R7 K25 ["ErrorCode"]
      112 GETTABLEKS                       R16 R16 K26 ["InternalError"]
      114 GETTABLEKS                       R17 R7 K25 ["ErrorCode"]
      116 GETTABLEKS                       R17 R17 K27 ["MethodNotFound"]
      118 GETTABLEKS                       R18 R7 K28 ["SessionUpdateKind"]
      120 DUPTABLE                         R19 K33 [{["name"] = "roblox-assistant-harness", ["version"] = "0.0.0"}]
      121 DUPTABLE                         R20 K35 [{["name"] = "roblox-assistant-ui", ["version"] = "0.0.0"}]
      122 DUPCLOSURE                       R21 K36 [PROTO_1]
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R6
      125 DUPCLOSURE                       R22 K37 [PROTO_2]
      126 CAPTURE                          VAL R18
      127 DUPCLOSURE                       R23 K38 [PROTO_3]
      128 DUPCLOSURE                       R24 K39 [PROTO_4]
      129 DUPCLOSURE                       R25 K40 [PROTO_5]
      130 DUPCLOSURE                       R26 K41 [PROTO_6]
      131 CAPTURE                          VAL R11
      132 DUPCLOSURE                       R27 K42 [PROTO_7]
      133 DUPCLOSURE                       R28 K43 [PROTO_9]
      134 CAPTURE                          VAL R14
      135 DUPCLOSURE                       R29 K44 [PROTO_10]
      136 CAPTURE                          VAL R25
      137 CAPTURE                          VAL R14
      138 DUPCLOSURE                       R30 K45 [PROTO_11]
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R28
      141 CAPTURE                          VAL R27
      142 DUPCLOSURE                       R31 K46 [PROTO_12]
      143 DUPCLOSURE                       R32 K47 [PROTO_13]
      144 CAPTURE                          VAL R31
      145 DUPCLOSURE                       R33 K48 [PROTO_43]
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R29
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R30
      159 CAPTURE                          VAL R31
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R23
      162 CAPTURE                          VAL R22
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R25
      166 CAPTURE                          VAL R20
      167 DUPTABLE                         R34 K50 [{"new"}]
      168 SETTABLEKS                       R33 R34 K49 ["new"]
      170 RETURN                           R34 1
