PROTO_0:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_callbacks"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K3 ["_activeAssistantMessageId"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K4 ["_contentIdByToolCallId"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K5 ["_toolNameByToolCallId"]
       21 GETTABLEKS                       R3 R0 K6 ["isHistoryReplay"]
       23 JUMPIFEQKB                       R3 TRUE ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 SETTABLEKS                       R2 R1 K7 ["_isHistoryReplay"]
       29 GETTABLEKS                       R3 R0 K8 ["acceptedUserMessageHidden"]
       31 JUMPIFEQKB                       R3 TRUE ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 SETTABLEKS                       R2 R1 K9 ["_acceptedUserMessageHidden"]
       37 LOADNIL                          R2
       38 SETTABLEKS                       R2 R1 K10 ["_activeStreamKind"]
       40 LOADNIL                          R2
       41 SETTABLEKS                       R2 R1 K11 ["_activeStreamContentId"]
       43 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["get"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["stripPrefix"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 1
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K3 ["Type"]
       18 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 NEWTABLE                         R1 0 0
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 FASTCALL1                        TYPEOF R6 ; [+3]
       16 MOVE                             R8 R6
       17 GETIMPORT                        R7 K1 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+16]
       22 GETTABLEKS                       R7 R6 K3 ["type"]
       24 JUMPIFNOTEQKS                    R7 K4 ["content"] ; [+12]
       26 GETTABLEKS                       R7 R6 K4 ["content"]
       28 JUMPIFNOT                        R7 ; [+8]
       29 GETTABLEKS                       R9 R6 K4 ["content"]
       31 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       33 MOVE                             R8 R1
       34 GETIMPORT                        R7 K6 [table.insert]
       36 CALL                             R7 2 0
       37 FORGLOOP                         R2 2 ; [-23]
       39 RETURN                           R1 1

PROTO_3:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_activeStreamKind"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_activeStreamContentId"]
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["_callbacks"]
        8 GETTABLEKS                       R1 R1 K2 ["addMessage"]
       10 DUPTABLE                         R2 K4 [{"role"}]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["ROLE"]
       14 GETTABLEKS                       R3 R3 K6 ["Assistant"]
       16 SETTABLEKS                       R3 R2 K3 ["role"]
       18 CALL                             R1 1 1
       19 SETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
       21 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["text"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_6:
        0 NAMECALL                         R2 R0 K0 ["getOrCreateAssistantMessage"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["_activeStreamKind"]
        5 JUMPIFNOTEQKS                    R3 K2 ["text"] ; [+21]
        7 GETTABLEKS                       R3 R0 K3 ["_activeStreamContentId"]
        9 JUMPIFNOT                        R3 ; [+17]
       10 GETTABLEKS                       R3 R0 K4 ["_callbacks"]
       12 GETTABLEKS                       R3 R3 K5 ["editContent"]
       14 DUPTABLE                         R4 K9 [{"messageId", "contentId", "transformFn"}]
       15 SETTABLEKS                       R2 R4 K6 ["messageId"]
       17 GETTABLEKS                       R5 R0 K3 ["_activeStreamContentId"]
       19 SETTABLEKS                       R5 R4 K7 ["contentId"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R5 R4 K8 ["transformFn"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R3 R0 K4 ["_callbacks"]
       29 GETTABLEKS                       R3 R3 K10 ["addContent"]
       31 DUPTABLE                         R4 K12 [{"messageId", "content"}]
       32 SETTABLEKS                       R2 R4 K6 ["messageId"]
       34 DUPTABLE                         R5 K14 [{"type", "text"}]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K15 ["Type"]
       38 SETTABLEKS                       R6 R5 K13 ["type"]
       40 SETTABLEKS                       R1 R5 K2 ["text"]
       42 SETTABLEKS                       R5 R4 K11 ["content"]
       44 CALL                             R3 1 1
       45 LOADK                            R4 K2 ["text"]
       46 SETTABLEKS                       R4 R0 K1 ["_activeStreamKind"]
       48 SETTABLEKS                       R3 R0 K3 ["_activeStreamContentId"]
       50 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["_resetActiveStream"]
        2 CALL                             R2 1 0
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R0 K1 ["_activeAssistantMessageId"]
        6 GETTABLEKS                       R2 R0 K2 ["_callbacks"]
        8 GETTABLEKS                       R2 R2 K3 ["addMessage"]
       10 DUPTABLE                         R3 K6 [{"role", "hidden"}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K7 ["ROLE"]
       14 GETTABLEKS                       R4 R4 K8 ["User"]
       16 SETTABLEKS                       R4 R3 K4 ["role"]
       18 GETTABLEKS                       R4 R0 K9 ["_acceptedUserMessageHidden"]
       20 SETTABLEKS                       R4 R3 K5 ["hidden"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K2 ["_callbacks"]
       25 GETTABLEKS                       R3 R3 K10 ["addContent"]
       27 DUPTABLE                         R4 K13 [{"messageId", "content"}]
       28 SETTABLEKS                       R2 R4 K11 ["messageId"]
       30 DUPTABLE                         R5 K16 [{"type", "text"}]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K17 ["Type"]
       34 SETTABLEKS                       R6 R5 K14 ["type"]
       36 SETTABLEKS                       R1 R5 K15 ["text"]
       38 SETTABLEKS                       R5 R4 K12 ["content"]
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R2 R0 K0 ["_resetActiveStream"]
        2 CALL                             R2 1 0
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R0 K1 ["_activeAssistantMessageId"]
        6 GETTABLEKS                       R2 R0 K2 ["_callbacks"]
        8 GETTABLEKS                       R2 R2 K3 ["addMessage"]
       10 DUPTABLE                         R3 K6 [{"role", "hidden"}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K7 ["ROLE"]
       14 GETTABLEKS                       R4 R4 K8 ["User"]
       16 SETTABLEKS                       R4 R3 K4 ["role"]
       18 GETTABLEKS                       R4 R0 K9 ["_acceptedUserMessageHidden"]
       20 SETTABLEKS                       R4 R3 K5 ["hidden"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 0 0
       25 GETTABLEKS                       R4 R1 K10 ["content"]
       27 JUMPIF                           R4 ; [+2]
       28 NEWTABLE                         R4 0 0
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 FASTCALL1                        TYPEOF R8 ; [+3]
       34 MOVE                             R10 R8
       35 GETIMPORT                        R9 K12 [typeof]
       37 CALL                             R9 1 1
       38 JUMPIFNOTEQKS                    R9 K13 ["table"] ; [+38]
       40 GETTABLEKS                       R9 R8 K14 ["type"]
       42 JUMPIFNOTEQKS                    R9 K15 ["text"] ; [+34]
       44 GETTABLEKS                       R10 R8 K15 ["text"]
       46 FASTCALL1                        TYPEOF R10 ; [+2]
       47 GETIMPORT                        R9 K12 [typeof]
       49 CALL                             R9 1 1
       50 JUMPIFNOTEQKS                    R9 K16 ["string"] ; [+26]
       52 GETTABLEKS                       R9 R8 K15 ["text"]
       54 JUMPIFEQKS                       R9 K17 [""] ; [+22]
       56 GETTABLEKS                       R9 R0 K2 ["_callbacks"]
       58 GETTABLEKS                       R9 R9 K18 ["addContent"]
       60 DUPTABLE                         R10 K20 [{"messageId", "content"}]
       61 SETTABLEKS                       R2 R10 K19 ["messageId"]
       63 DUPTABLE                         R11 K21 [{"type", "text"}]
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R12 R12 K22 ["Type"]
       67 SETTABLEKS                       R12 R11 K14 ["type"]
       69 GETTABLEKS                       R12 R8 K15 ["text"]
       71 SETTABLEKS                       R12 R11 K15 ["text"]
       73 SETTABLEKS                       R11 R10 K10 ["content"]
       75 CALL                             R9 1 0
       76 JUMP                             ; [+26]
       77 FASTCALL1                        TYPEOF R8 ; [+3]
       78 MOVE                             R10 R8
       79 GETIMPORT                        R9 K12 [typeof]
       81 CALL                             R9 1 1
       82 JUMPIFNOTEQKS                    R9 K13 ["table"] ; [+20]
       84 GETTABLEKS                       R9 R8 K14 ["type"]
       86 JUMPIFNOTEQKS                    R9 K23 ["image"] ; [+16]
       88 DUPTABLE                         R11 K26 [{["type"] = "image", ["data"], ["mimeType"]}]
       89 GETTABLEKS                       R12 R8 K24 ["data"]
       91 SETTABLEKS                       R12 R11 K24 ["data"]
       93 GETTABLEKS                       R12 R8 K25 ["mimeType"]
       95 SETTABLEKS                       R12 R11 K25 ["mimeType"]
       97 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       99 MOVE                             R10 R3
      100 GETIMPORT                        R9 K28 [table.insert]
      102 CALL                             R9 2 0
      103 FORGLOOP                         R4 2 ; [-71]
      105 LENGTH                           R4 R3
      106 LOADN                            R5 0
      107 JUMPIFNOTLT                      R5 R4 ; [+19]
      109 GETTABLEKS                       R4 R0 K2 ["_callbacks"]
      111 GETTABLEKS                       R4 R4 K18 ["addContent"]
      113 DUPTABLE                         R5 K20 [{"messageId", "content"}]
      114 SETTABLEKS                       R2 R5 K19 ["messageId"]
      116 DUPTABLE                         R6 K32 [{["type"], ["imageContents"], ["expanded"] = False}]
      117 GETUPVAL                         R7 2
      118 GETTABLEKS                       R7 R7 K22 ["Type"]
      120 SETTABLEKS                       R7 R6 K14 ["type"]
      122 SETTABLEKS                       R3 R6 K29 ["imageContents"]
      124 SETTABLEKS                       R6 R5 K10 ["content"]
      126 CALL                             R4 1 0
      127 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["thinking"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_10:
        0 NAMECALL                         R2 R0 K0 ["getOrCreateAssistantMessage"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["_activeStreamKind"]
        5 JUMPIFNOTEQKS                    R3 K2 ["thought"] ; [+21]
        7 GETTABLEKS                       R3 R0 K3 ["_activeStreamContentId"]
        9 JUMPIFNOT                        R3 ; [+17]
       10 GETTABLEKS                       R3 R0 K4 ["_callbacks"]
       12 GETTABLEKS                       R3 R3 K5 ["editContent"]
       14 DUPTABLE                         R4 K9 [{"messageId", "contentId", "transformFn"}]
       15 SETTABLEKS                       R2 R4 K6 ["messageId"]
       17 GETTABLEKS                       R5 R0 K3 ["_activeStreamContentId"]
       19 SETTABLEKS                       R5 R4 K7 ["contentId"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R5 R4 K8 ["transformFn"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R3 R0 K4 ["_callbacks"]
       29 GETTABLEKS                       R3 R3 K10 ["addContent"]
       31 DUPTABLE                         R4 K12 [{"messageId", "content"}]
       32 SETTABLEKS                       R2 R4 K6 ["messageId"]
       34 DUPTABLE                         R5 K19 [{["type"], ["thinking"], ["signature"] = "", ["expanded"] = False}]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K20 ["Type"]
       38 SETTABLEKS                       R6 R5 K13 ["type"]
       40 SETTABLEKS                       R1 R5 K14 ["thinking"]
       42 SETTABLEKS                       R5 R4 K11 ["content"]
       44 CALL                             R3 1 1
       45 LOADK                            R4 K2 ["thought"]
       46 SETTABLEKS                       R4 R0 K1 ["_activeStreamKind"]
       48 SETTABLEKS                       R3 R0 K3 ["_activeStreamContentId"]
       50 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R2 R0 K0 ["_resetActiveStream"]
        2 CALL                             R2 1 0
        3 GETTABLEKS                       R3 R1 K2 ["title"]
        5 ORK                              R2 R3 K1 ["unknown_tool"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantSplitToolsAndWidgets"]
        9 JUMPIFNOT                        R4 ; [+12]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["get"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K5 ["stripPrefix"]
       16 MOVE                             R6 R2
       17 CALL                             R5 1 -1
       18 CALL                             R4 -1 1
       19 JUMPIFNOT                        R4 ; [+2]
       20 MOVE                             R3 R4
       21 JUMP                             ; [+3]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K6 ["Type"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K7 ["None"]
       28 JUMPIFNOTEQ                      R3 R4 ; [+2]
       30 RETURN                           R0 0
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K5 ["stripPrefix"]
       34 MOVE                             R5 R2
       35 CALL                             R4 1 1
       36 DUPTABLE                         R5 K13 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
       37 GETTABLEKS                       R6 R1 K14 ["toolCallId"]
       39 SETTABLEKS                       R6 R5 K10 ["id"]
       41 SETTABLEKS                       R4 R5 K11 ["name"]
       43 GETTABLEKS                       R6 R1 K15 ["rawInput"]
       45 JUMPIF                           R6 ; [+2]
       46 NEWTABLE                         R6 0 0
       48 SETTABLEKS                       R6 R5 K12 ["input"]
       50 LOADNIL                          R6
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R7 R7 K16 ["getStreamTransform"]
       54 MOVE                             R8 R4
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R0 K17 ["_isHistoryReplay"]
       58 JUMPIFNOT                        R8 ; [+7]
       59 GETUPVAL                         R9 5
       60 GETTABLEKS                       R9 R9 K18 ["PrimitiveGen"]
       62 JUMPIFEQ                         R4 R9 ; [+2]
       64 LOADB                            R8 0 +1
       65 LOADB                            R8 1
       66 JUMPIFNOT                        R8 ; [+12]
       67 DUPTABLE                         R9 K25 [{["type"], ["toolIdentifier"], ["expanded"] = False, ["generating"] = True, ["toolUse"]}]
       68 GETUPVAL                         R10 3
       69 GETTABLEKS                       R10 R10 K6 ["Type"]
       71 SETTABLEKS                       R10 R9 K8 ["type"]
       73 SETTABLEKS                       R4 R9 K19 ["toolIdentifier"]
       75 SETTABLEKS                       R5 R9 K24 ["toolUse"]
       77 MOVE                             R6 R9
       78 JUMP                             ; [+54]
       79 GETUPVAL                         R9 4
       80 GETTABLEKS                       R9 R9 K7 ["None"]
       82 JUMPIFNOTEQ                      R7 R9 ; [+2]
       84 RETURN                           R0 0
       85 FASTCALL1                        TYPEOF R7 ; [+3]
       86 MOVE                             R10 R7
       87 GETIMPORT                        R9 K27 [typeof]
       89 CALL                             R9 1 1
       90 JUMPIFNOTEQKS                    R9 K28 ["table"] ; [+19]
       92 GETTABLEKS                       R9 R7 K29 ["transformInitialContent"]
       94 MOVE                             R10 R5
       95 CALL                             R9 1 1
       96 MOVE                             R6 R9
       97 GETTABLEKS                       R9 R7 K30 ["getTransformPreExecuteFn"]
       99 JUMPIFNOT                        R9 ; [+4]
      100 MOVE                             R10 R9
      101 MOVE                             R11 R5
      102 CALL                             R10 1 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R10
      105 JUMPIFNOT                        R10 ; [+27]
      106 MOVE                             R11 R10
      107 MOVE                             R12 R6
      108 CALL                             R11 1 0
      109 JUMP                             ; [+23]
      110 GETUPVAL                         R9 3
      111 GETTABLEKS                       R9 R9 K6 ["Type"]
      113 JUMPIFNOTEQ                      R3 R9 ; [+13]
      115 DUPTABLE                         R9 K25 [{["type"], ["toolIdentifier"], ["expanded"] = False, ["generating"] = True, ["toolUse"]}]
      116 GETUPVAL                         R10 3
      117 GETTABLEKS                       R10 R10 K6 ["Type"]
      119 SETTABLEKS                       R10 R9 K8 ["type"]
      121 SETTABLEKS                       R4 R9 K19 ["toolIdentifier"]
      123 SETTABLEKS                       R5 R9 K24 ["toolUse"]
      125 MOVE                             R6 R9
      126 JUMP                             ; [+6]
      127 DUPTABLE                         R9 K31 [{["type"], ["expanded"] = False, ["generating"] = True, ["toolUse"]}]
      128 SETTABLEKS                       R3 R9 K8 ["type"]
      130 SETTABLEKS                       R5 R9 K24 ["toolUse"]
      132 MOVE                             R6 R9
      133 SETTABLEKS                       R5 R6 K24 ["toolUse"]
      135 LOADB                            R9 1
      136 SETTABLEKS                       R9 R6 K22 ["generating"]
      138 GETTABLEKS                       R9 R6 K20 ["expanded"]
      140 JUMPIFNOTEQKNIL                  R9 ; [+4]
      142 LOADB                            R9 0
      143 SETTABLEKS                       R9 R6 K20 ["expanded"]
      145 NAMECALL                         R9 R0 K32 ["getOrCreateAssistantMessage"]
      147 CALL                             R9 1 1
      148 GETTABLEKS                       R10 R0 K33 ["_callbacks"]
      150 GETTABLEKS                       R10 R10 K34 ["addContent"]
      152 DUPTABLE                         R11 K37 [{"messageId", "content"}]
      153 SETTABLEKS                       R9 R11 K35 ["messageId"]
      155 SETTABLEKS                       R6 R11 K36 ["content"]
      157 CALL                             R10 1 1
      158 GETTABLEKS                       R11 R1 K14 ["toolCallId"]
      160 JUMPIFNOT                        R11 ; [+24]
      161 GETTABLEKS                       R11 R0 K38 ["_contentIdByToolCallId"]
      163 GETTABLEKS                       R12 R1 K14 ["toolCallId"]
      165 SETTABLE                         R10 R11 R12
      166 GETTABLEKS                       R11 R0 K39 ["_toolNameByToolCallId"]
      168 GETTABLEKS                       R12 R1 K14 ["toolCallId"]
      170 SETTABLE                         R4 R11 R12
      171 GETTABLEKS                       R11 R0 K33 ["_callbacks"]
      173 GETTABLEKS                       R11 R11 K40 ["onToolWidgetCreated"]
      175 JUMPIFNOT                        R11 ; [+9]
      176 GETTABLEKS                       R11 R0 K33 ["_callbacks"]
      178 GETTABLEKS                       R11 R11 K40 ["onToolWidgetCreated"]
      180 GETTABLEKS                       R12 R1 K14 ["toolCallId"]
      182 MOVE                             R13 R9
      183 MOVE                             R14 R10
      184 CALL                             R11 3 0
      185 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+59]
        2 DUPTABLE                         R1 K7 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"]}]
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R2 R1 K2 ["id"]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K3 ["name"]
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R3 4
       11 GETTABLEKS                       R3 R3 K4 ["content"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K4 ["content"]
       16 GETUPVAL                         R3 5
       17 JUMPIFEQKS                       R3 K8 ["failed"] ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 SETTABLEKS                       R2 R1 K5 ["isError"]
       23 GETUPVAL                         R2 4
       24 GETTABLEKS                       R2 R2 K9 ["rawOutput"]
       26 SETTABLEKS                       R2 R1 K6 ["structuredContent"]
       28 GETUPVAL                         R2 6
       29 GETTABLEKS                       R2 R2 K10 ["getStreamTransform"]
       31 GETUPVAL                         R3 7
       32 GETTABLEKS                       R3 R3 K11 ["stripPrefix"]
       34 GETUPVAL                         R5 2
       35 ORK                              R4 R5 K12 [""]
       36 CALL                             R3 1 -1
       37 CALL                             R2 -1 1
       38 FASTCALL1                        TYPEOF R2 ; [+3]
       39 MOVE                             R5 R2
       40 GETIMPORT                        R4 K14 [typeof]
       42 CALL                             R4 1 1
       43 JUMPIFNOTEQKS                    R4 K15 ["table"] ; [+4]
       45 GETTABLEKS                       R3 R2 K16 ["getTransformResultFn"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R3
       49 JUMPIFNOT                        R3 ; [+4]
       50 MOVE                             R4 R3
       51 MOVE                             R5 R1
       52 CALL                             R4 1 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R4
       55 JUMPIFNOT                        R4 ; [+3]
       56 MOVE                             R5 R4
       57 MOVE                             R6 R0
       58 CALL                             R5 1 0
       59 SETTABLEKS                       R1 R0 K17 ["toolResult"]
       61 GETUPVAL                         R1 8
       62 JUMPIFNOT                        R1 ; [+6]
       63 LOADB                            R1 0
       64 SETTABLEKS                       R1 R0 K18 ["generating"]
       66 LOADB                            R1 1
       67 SETTABLEKS                       R1 R0 K19 ["expanded"]
       69 LOADNIL                          R1
       70 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["toolCallId"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R4 R0 K1 ["_contentIdByToolCallId"]
        5 GETTABLE                         R3 R4 R2
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 GETTABLEKS                       R4 R0 K2 ["_activeAssistantMessageId"]
       10 JUMPIFNOT                        R2 ; [+10]
       11 JUMPIF                           R3 ; [+9]
       12 MOVE                             R7 R1
       13 NAMECALL                         R5 R0 K3 ["_handleToolCall"]
       15 CALL                             R5 2 0
       16 GETTABLEKS                       R5 R0 K1 ["_contentIdByToolCallId"]
       18 GETTABLE                         R3 R5 R2
       19 GETTABLEKS                       R4 R0 K2 ["_activeAssistantMessageId"]
       21 JUMPIFNOT                        R3 ; [+1]
       22 JUMPIF                           R4 ; [+1]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R5 R1 K4 ["status"]
       26 LOADB                            R6 1
       27 JUMPIFEQKS                       R5 K5 ["completed"] ; [+5]
       29 JUMPIFEQKS                       R5 K6 ["failed"] ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 LOADB                            R7 1
       34 GETTABLEKS                       R8 R1 K7 ["content"]
       36 JUMPIFNOTEQKNIL                  R8 ; [+7]
       38 LOADB                            R7 1
       39 GETTABLEKS                       R8 R1 K8 ["rawOutput"]
       41 JUMPIFNOTEQKNIL                  R8 ; [+2]
       43 MOVE                             R7 R6
       44 JUMPIFNOT                        R2 ; [+4]
       45 GETTABLEKS                       R9 R0 K9 ["_toolNameByToolCallId"]
       47 GETTABLE                         R8 R9 R2
       48 JUMPIF                           R8 ; [+2]
       49 GETTABLEKS                       R8 R1 K10 ["title"]
       51 GETTABLEKS                       R9 R0 K11 ["_callbacks"]
       53 GETTABLEKS                       R9 R9 K12 ["editContent"]
       55 DUPTABLE                         R10 K16 [{"messageId", "contentId", "transformFn"}]
       56 SETTABLEKS                       R4 R10 K13 ["messageId"]
       58 SETTABLEKS                       R3 R10 K14 ["contentId"]
       60 NEWCLOSURE                       R11 P0
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R8
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R6
       70 SETTABLEKS                       R11 R10 K15 ["transformFn"]
       72 CALL                             R9 1 0
       73 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["onPlan"]
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        7 GETTABLEKS                       R2 R2 K1 ["onPlan"]
        9 GETTABLEKS                       R3 R1 K2 ["entries"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["onAvailableCommands"]
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        7 GETTABLEKS                       R2 R2 K1 ["onAvailableCommands"]
        9 GETTABLEKS                       R3 R1 K2 ["availableCommands"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["onSessionInfo"]
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        7 GETTABLEKS                       R2 R2 K1 ["onSessionInfo"]
        9 DUPTABLE                         R3 K3 [{"title"}]
       10 GETTABLEKS                       R4 R1 K2 ["title"]
       12 SETTABLEKS                       R4 R3 K2 ["title"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["AgentMessageChunk"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+14]
        7 GETTABLEKS                       R6 R1 K2 ["content"]
        9 JUMPIFNOT                        R6 ; [+5]
       10 GETTABLEKS                       R5 R1 K2 ["content"]
       12 GETTABLEKS                       R5 R5 K3 ["text"]
       14 JUMPIF                           R5 ; [+1]
       15 LOADK                            R5 K4 [""]
       16 NAMECALL                         R3 R0 K5 ["_handleMessageChunk"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K6 ["UserMessage"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+6]
       25 MOVE                             R5 R1
       26 NAMECALL                         R3 R0 K7 ["_handleUserMessage"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K8 ["UserMessageChunk"]
       33 JUMPIFNOTEQ                      R2 R3 ; [+14]
       35 GETTABLEKS                       R6 R1 K2 ["content"]
       37 JUMPIFNOT                        R6 ; [+5]
       38 GETTABLEKS                       R5 R1 K2 ["content"]
       40 GETTABLEKS                       R5 R5 K3 ["text"]
       42 JUMPIF                           R5 ; [+1]
       43 LOADK                            R5 K4 [""]
       44 NAMECALL                         R3 R0 K9 ["_handleUserMessageChunk"]
       46 CALL                             R3 2 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K10 ["AgentThoughtChunk"]
       51 JUMPIFNOTEQ                      R2 R3 ; [+14]
       53 GETTABLEKS                       R6 R1 K2 ["content"]
       55 JUMPIFNOT                        R6 ; [+5]
       56 GETTABLEKS                       R5 R1 K2 ["content"]
       58 GETTABLEKS                       R5 R5 K3 ["text"]
       60 JUMPIF                           R5 ; [+1]
       61 LOADK                            R5 K4 [""]
       62 NAMECALL                         R3 R0 K11 ["_handleThoughtChunk"]
       64 CALL                             R3 2 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K12 ["ToolCall"]
       69 JUMPIFNOTEQ                      R2 R3 ; [+6]
       71 MOVE                             R5 R1
       72 NAMECALL                         R3 R0 K13 ["_handleToolCall"]
       74 CALL                             R3 2 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R3 R3 K14 ["ToolCallUpdate"]
       79 JUMPIFNOTEQ                      R2 R3 ; [+6]
       81 MOVE                             R5 R1
       82 NAMECALL                         R3 R0 K15 ["_handleToolCallUpdate"]
       84 CALL                             R3 2 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R3 R3 K16 ["Plan"]
       89 JUMPIFNOTEQ                      R2 R3 ; [+6]
       91 MOVE                             R5 R1
       92 NAMECALL                         R3 R0 K17 ["_handlePlan"]
       94 CALL                             R3 2 0
       95 RETURN                           R0 0
       96 GETUPVAL                         R3 0
       97 GETTABLEKS                       R3 R3 K18 ["AvailableCommandsUpdate"]
       99 JUMPIFNOTEQ                      R2 R3 ; [+6]
      101 MOVE                             R5 R1
      102 NAMECALL                         R3 R0 K19 ["_handleAvailableCommands"]
      104 CALL                             R3 2 0
      105 RETURN                           R0 0
      106 GETUPVAL                         R3 0
      107 GETTABLEKS                       R3 R3 K20 ["SessionInfoUpdate"]
      109 JUMPIFNOTEQ                      R2 R3 ; [+5]
      111 MOVE                             R5 R1
      112 NAMECALL                         R3 R0 K21 ["_handleSessionInfo"]
      114 CALL                             R3 2 0
      115 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["ContentWidgets"]
       25 GETTABLEKS                       R4 R4 K11 ["GenericToolContentWidget"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Components"]
       32 GETTABLEKS                       R5 R5 K10 ["ContentWidgets"]
       34 GETTABLEKS                       R5 R5 K12 ["ImageContentWidget"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Components"]
       41 GETTABLEKS                       R6 R6 K10 ["ContentWidgets"]
       43 GETTABLEKS                       R6 R6 K13 ["TextContentWidget"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Components"]
       50 GETTABLEKS                       R7 R7 K10 ["ContentWidgets"]
       52 GETTABLEKS                       R7 R7 K14 ["ThinkingContentWidget"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K15 ["Tools"]
       59 GETTABLEKS                       R8 R8 K16 ["ToolNames"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K17 ["Util"]
       66 GETTABLEKS                       R9 R9 K10 ["ContentWidgets"]
       68 GETTABLEKS                       R9 R9 K18 ["ToolWidgetMappingRegistry"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K19 ["Types"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K9 ["Components"]
       80 GETTABLEKS                       R11 R11 K20 ["UIToolRegistry"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R1 K21 ["Acp"]
       85 GETTABLEKS                       R11 R11 K19 ["Types"]
       87 GETTABLEKS                       R11 R11 K22 ["SessionUpdateKind"]
       89 GETTABLEKS                       R12 R1 K23 ["ToolNaming"]
       91 NEWTABLE                         R13 16 0
       93 SETTABLEKS                       R13 R13 K24 ["__index"]
       95 DUPCLOSURE                       R14 K25 [PROTO_0]
       96 CAPTURE                          VAL R13
       97 SETTABLEKS                       R14 R13 K26 ["new"]
       99 DUPCLOSURE                       R14 K27 [PROTO_1]
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R3
      104 DUPCLOSURE                       R15 K28 [PROTO_2]
      105 DUPCLOSURE                       R16 K29 [PROTO_3]
      106 SETTABLEKS                       R16 R13 K30 ["_resetActiveStream"]
      108 DUPCLOSURE                       R16 K31 [PROTO_4]
      109 CAPTURE                          VAL R9
      110 SETTABLEKS                       R16 R13 K32 ["getOrCreateAssistantMessage"]
      112 DUPCLOSURE                       R16 K33 [PROTO_6]
      113 CAPTURE                          VAL R5
      114 SETTABLEKS                       R16 R13 K34 ["_handleMessageChunk"]
      116 DUPCLOSURE                       R16 K35 [PROTO_7]
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R5
      119 SETTABLEKS                       R16 R13 K36 ["_handleUserMessageChunk"]
      121 DUPCLOSURE                       R16 K37 [PROTO_8]
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R4
      125 SETTABLEKS                       R16 R13 K38 ["_handleUserMessage"]
      127 DUPCLOSURE                       R16 K39 [PROTO_10]
      128 CAPTURE                          VAL R6
      129 SETTABLEKS                       R16 R13 K40 ["_handleThoughtChunk"]
      131 DUPCLOSURE                       R16 K41 [PROTO_11]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R7
      138 SETTABLEKS                       R16 R13 K42 ["_handleToolCall"]
      140 DUPCLOSURE                       R16 K43 [PROTO_13]
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R12
      144 SETTABLEKS                       R16 R13 K44 ["_handleToolCallUpdate"]
      146 DUPCLOSURE                       R16 K45 [PROTO_14]
      147 SETTABLEKS                       R16 R13 K46 ["_handlePlan"]
      149 DUPCLOSURE                       R16 K47 [PROTO_15]
      150 SETTABLEKS                       R16 R13 K48 ["_handleAvailableCommands"]
      152 DUPCLOSURE                       R16 K49 [PROTO_16]
      153 SETTABLEKS                       R16 R13 K50 ["_handleSessionInfo"]
      155 DUPCLOSURE                       R16 K51 [PROTO_17]
      156 CAPTURE                          VAL R11
      157 SETTABLEKS                       R16 R13 K52 ["handleUpdate"]
      159 RETURN                           R13 1
