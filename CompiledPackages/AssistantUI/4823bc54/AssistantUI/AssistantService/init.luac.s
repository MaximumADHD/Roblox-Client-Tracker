PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["sessionUpdate"]
        2 JUMPIFEQKS                       R1 K1 ["user_message"] ; [+2]
        4 RETURN                           R0 1
        5 GETTABLEKS                       R1 R0 K2 ["content"]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K4 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFEQKS                       R2 K5 ["table"] ; [+3]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 GETTABLEKS                       R3 R1 K6 ["type"]
       18 JUMPIFNOT                        R3 ; [+6]
       19 NEWTABLE                         R2 0 1
       21 MOVE                             R3 R1
       22 SETLIST                          R2 R3 1 [1]
       24 JUMP                             ; [+1]
       25 MOVE                             R2 R1
       26 NEWTABLE                         R3 0 0
       28 MOVE                             R4 R2
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 FORGPREP                         R4
       32 FASTCALL1                        TYPEOF R8 ; [+3]
       33 MOVE                             R11 R8
       34 GETIMPORT                        R10 K4 [typeof]
       36 CALL                             R10 1 1
       37 JUMPIFNOTEQKS                    R10 K5 ["table"] ; [+8]
       39 GETTABLEKS                       R10 R8 K6 ["type"]
       41 JUMPIFNOTEQKS                    R10 K2 ["content"] ; [+4]
       43 GETTABLEKS                       R9 R8 K2 ["content"]
       45 JUMP                             ; [+1]
       46 MOVE                             R9 R8
       47 FASTCALL1                        TYPEOF R9 ; [+3]
       48 MOVE                             R12 R9
       49 GETIMPORT                        R11 K4 [typeof]
       51 CALL                             R11 1 1
       52 JUMPIFNOTEQKS                    R11 K5 ["table"] ; [+8]
       54 GETTABLEKS                       R11 R9 K6 ["type"]
       56 JUMPIFNOTEQKS                    R11 K7 ["text"] ; [+4]
       58 GETTABLEKS                       R10 R9 K7 ["text"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R10
       62 FASTCALL1                        TYPEOF R10 ; [+3]
       63 MOVE                             R12 R10
       64 GETIMPORT                        R11 K4 [typeof]
       66 CALL                             R11 1 1
       67 JUMPIFNOTEQKS                    R11 K8 ["string"] ; [+20]
       69 GETIMPORT                        R11 K10 [string.find]
       71 MOVE                             R12 R10
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R13 R13 K11 ["SYSTEM_REMINDER_OPEN"]
       75 LOADN                            R14 1
       76 LOADB                            R15 1
       77 CALL                             R11 4 1
       78 JUMPIF                           R11 ; [+9]
       79 JUMPIFEQKS                       R10 K12 [""] ; [+8]
       81 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       83 MOVE                             R12 R3
       84 MOVE                             R13 R10
       85 GETIMPORT                        R11 K14 [table.insert]
       87 CALL                             R11 2 0
       88 FORGLOOP                         R4 2 ; [-57]
       90 LENGTH                           R4 R3
       91 JUMPIFNOTEQKN                    R4 K15 [0] ; [+3]
       93 LOADNIL                          R4
       94 RETURN                           R4 1
       95 DUPTABLE                         R4 K17 [{[1] = "user_message_chunk", ["content"]}]
       96 DUPTABLE                         R5 K18 [{["type"] = "text", ["text"]}]
       97 GETIMPORT                        R6 K20 [table.concat]
       99 MOVE                             R7 R3
      100 LOADK                            R8 K21 ["\n"]
      101 CALL                             R6 2 1
      102 SETTABLEKS                       R6 R5 K7 ["text"]
      104 SETTABLEKS                       R5 R4 K2 ["content"]
      106 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sessionUpdateSignal"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["_maybeExecuteClientTool"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_client"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["new"]
       13 CALL                             R2 0 1
       14 SETTABLEKS                       R2 R1 K4 ["_sessionUpdateSignal"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K5 ["_sessionIdByThreadId"]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K6 ["_toolUiContextByToolCallId"]
       24 NEWTABLE                         R2 0 0
       26 SETTABLEKS                       R2 R1 K7 ["_toolConfirmationHandlers"]
       28 NEWTABLE                         R2 0 0
       30 SETTABLEKS                       R2 R1 K8 ["_activeClientToolPromises"]
       32 LOADNIL                          R2
       33 SETTABLEKS                       R2 R1 K9 ["_clientToolHandler"]
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R1 K10 ["_initializePromise"]
       38 NEWCLOSURE                       R4 P0
       39 CAPTURE                          VAL R1
       40 NAMECALL                         R2 R0 K11 ["setSessionUpdateHandler"]
       42 CALL                             R2 2 0
       43 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["submitToolResult"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["_client"]
        6 DUPTABLE                         R3 K6 [{"sessionId", "referenceId", "turnId", "content"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K2 ["sessionId"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K3 ["referenceId"]
       13 SETTABLEKS                       R4 R3 K3 ["referenceId"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K4 ["turnId"]
       18 SETTABLEKS                       R4 R3 K4 ["turnId"]
       20 SETTABLEKS                       R0 R3 K5 ["content"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K3 [{[1] = True, ["content"]}]
        1 NEWTABLE                         R2 0 1
        3 DUPTABLE                         R3 K6 [{["type"] = "text", ["text"]}]
        4 SETTABLEKS                       R0 R3 K5 ["text"]
        6 SETLIST                          R2 R3 1 [1]
        8 SETTABLEKS                       R2 R1 K2 ["content"]
       10 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["interrupt"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K1 ["cancel"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["result"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["submitToolResult"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["_client"]
       11 DUPTABLE                         R4 K7 [{"sessionId", "referenceId", "turnId", "content"}]
       12 GETUPVAL                         R5 2
       13 SETTABLEKS                       R5 R4 K3 ["sessionId"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K4 ["referenceId"]
       18 SETTABLEKS                       R5 R4 K4 ["referenceId"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K5 ["turnId"]
       23 SETTABLEKS                       R5 R4 K5 ["turnId"]
       25 SETTABLEKS                       R1 R4 K6 ["content"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["submitToolResult"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["_client"]
       13 DUPTABLE                         R4 K8 [{"sessionId", "referenceId", "turnId", "content"}]
       14 GETUPVAL                         R5 3
       15 SETTABLEKS                       R5 R4 K4 ["sessionId"]
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K5 ["referenceId"]
       20 SETTABLEKS                       R5 R4 K5 ["referenceId"]
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R5 R5 K6 ["turnId"]
       25 SETTABLEKS                       R5 R4 K6 ["turnId"]
       27 SETTABLEKS                       R1 R4 K7 ["content"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKS                    R0 K0 ["interrupted"] ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K1 ["deny"] ; [+29]
        6 GETUPVAL                         R1 0
        7 LOADK                            R2 K2 ["The tool call was cancelled by the user."]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["submitToolResult"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["_client"]
       15 DUPTABLE                         R4 K9 [{"sessionId", "referenceId", "turnId", "content"}]
       16 GETUPVAL                         R5 3
       17 SETTABLEKS                       R5 R4 K5 ["sessionId"]
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R5 R5 K6 ["referenceId"]
       22 SETTABLEKS                       R5 R4 K6 ["referenceId"]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K7 ["turnId"]
       27 SETTABLEKS                       R5 R4 K7 ["turnId"]
       29 SETTABLEKS                       R1 R4 K8 ["content"]
       31 CALL                             R2 2 0
       32 LOADNIL                          R1
       33 RETURN                           R1 1
       34 GETUPVAL                         R1 6
       35 GETUPVAL                         R2 7
       36 CALL                             R1 1 1
       37 SETUPVAL                         R1 5
       38 GETUPVAL                         R1 8
       39 GETTABLEKS                       R1 R1 K10 ["resolve"]
       41 GETUPVAL                         R2 5
       42 CALL                             R1 1 1
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 NAMECALL                         R1 R1 K11 ["andThen"]
       50 CALL                             R1 2 1
       51 NEWCLOSURE                       R3 P1
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          UPVAL U4
       57 NAMECALL                         R1 R1 K12 ["catch"]
       59 CALL                             R1 2 -1
       60 RETURN                           R1 -1

PROTO_9:
        0 MOVE                             R3 R2
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R3 1 0
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K0 ["resolve"]
        9 GETUPVAL                         R4 4
       10 CALL                             R3 1 1
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U3
       21 NAMECALL                         R3 R3 K1 ["andThen"]
       23 CALL                             R3 2 1
       24 MOVE                             R5 R0
       25 MOVE                             R6 R1
       26 NAMECALL                         R3 R3 K1 ["andThen"]
       28 CALL                             R3 3 0
       29 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_activeClientToolPromises"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETUPVAL                         R2 2
        7 GETTABLE                         R1 R0 R2
        8 GETUPVAL                         R2 3
        9 JUMPIFNOTEQ                      R1 R2 ; [+16]
       11 GETUPVAL                         R1 2
       12 LOADNIL                          R2
       13 SETTABLE                         R2 R0 R1
       14 GETIMPORT                        R1 K2 [next]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKNIL                  R1 ; [+7]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["_activeClientToolPromises"]
       23 GETUPVAL                         R2 1
       24 LOADNIL                          R3
       25 SETTABLE                         R3 R1 R2
       26 RETURN                           R0 0

PROTO_11:
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R1 K0 ["update"]
        4 MOVE                             R3 R1
        5 JUMPIFNOT                        R3 ; [+2]
        6 GETTABLEKS                       R3 R1 K1 ["sessionId"]
        8 MOVE                             R4 R2
        9 JUMPIFNOT                        R4 ; [+2]
       10 GETTABLEKS                       R4 R2 K2 ["toolCallId"]
       12 MOVE                             R5 R3
       13 JUMPIFNOT                        R5 ; [+3]
       14 GETTABLEKS                       R6 R0 K3 ["_toolConfirmationHandlers"]
       16 GETTABLE                         R5 R6 R3
       17 JUMPIFNOT                        R4 ; [+22]
       18 GETTABLEKS                       R6 R2 K4 ["status"]
       20 JUMPIFNOTEQKS                    R6 K5 ["failed"] ; [+19]
       22 JUMPIFNOT                        R5 ; [+4]
       23 GETTABLEKS                       R6 R5 K6 ["interrupt"]
       25 MOVE                             R7 R4
       26 CALL                             R6 1 0
       27 MOVE                             R6 R3
       28 JUMPIFNOT                        R6 ; [+3]
       29 GETTABLEKS                       R7 R0 K7 ["_activeClientToolPromises"]
       31 GETTABLE                         R6 R7 R3
       32 MOVE                             R7 R6
       33 JUMPIFNOT                        R7 ; [+1]
       34 GETTABLE                         R7 R6 R4
       35 JUMPIFNOT                        R7 ; [+3]
       36 NAMECALL                         R8 R7 K8 ["cancel"]
       38 CALL                             R8 1 0
       39 RETURN                           R0 0
       40 MOVE                             R6 R2
       41 JUMPIFNOT                        R6 ; [+7]
       42 GETTABLEKS                       R6 R2 K9 ["_meta"]
       44 JUMPIFNOT                        R6 ; [+4]
       45 GETTABLEKS                       R6 R2 K9 ["_meta"]
       47 GETTABLEKS                       R6 R6 K10 ["_roblox"]
       49 JUMPIFNOT                        R6 ; [+6]
       50 GETTABLEKS                       R7 R6 K11 ["expectsReply"]
       52 JUMPIFNOT                        R7 ; [+3]
       53 GETTABLEKS                       R7 R6 K12 ["referenceId"]
       55 JUMPIF                           R7 ; [+1]
       56 RETURN                           R0 0
       57 FASTCALL1                        TYPE R4 ; [+3]
       58 MOVE                             R10 R4
       59 GETIMPORT                        R9 K14 [type]
       61 CALL                             R9 1 1
       62 JUMPIFEQKS                       R9 K15 ["string"] ; [+2]
       64 LOADB                            R8 0 +1
       65 LOADB                            R8 1
       66 FASTCALL2K                       ASSERT R8 K16 ; [+4]
       68 LOADK                            R9 K16 ["expectsReply tool update requires toolCallId"]
       69 GETIMPORT                        R7 K18 [assert]
       71 CALL                             R7 2 0
       72 GETTABLEKS                       R8 R0 K19 ["_toolUiContextByToolCallId"]
       74 GETTABLE                         R7 R8 R4
       75 NEWCLOSURE                       R8 P0
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R6
       80 DUPCLOSURE                       R9 K20 [PROTO_4]
       81 GETTABLEKS                       R10 R0 K21 ["_clientToolHandler"]
       83 JUMPIF                           R10 ; [+23]
       84 MOVE                             R11 R9
       85 LOADK                            R12 K22 ["No client tool handler registered"]
       86 CALL                             R11 1 1
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R12 R12 K23 ["submitToolResult"]
       90 GETTABLEKS                       R13 R0 K24 ["_client"]
       92 DUPTABLE                         R14 K27 [{"sessionId", "referenceId", "turnId", "content"}]
       93 SETTABLEKS                       R3 R14 K1 ["sessionId"]
       95 GETTABLEKS                       R15 R6 K12 ["referenceId"]
       97 SETTABLEKS                       R15 R14 K12 ["referenceId"]
       99 GETTABLEKS                       R15 R6 K25 ["turnId"]
      101 SETTABLEKS                       R15 R14 K25 ["turnId"]
      103 SETTABLEKS                       R11 R14 K26 ["content"]
      105 CALL                             R12 2 0
      106 RETURN                           R0 0
      107 DUPTABLE                         R11 K32 [{"sessionId", "name", "arguments", "referenceId", "toolCallId", "messageId", "contentId"}]
      108 SETTABLEKS                       R3 R11 K1 ["sessionId"]
      110 GETTABLEKS                       R12 R2 K33 ["title"]
      112 SETTABLEKS                       R12 R11 K28 ["name"]
      114 GETTABLEKS                       R12 R2 K34 ["rawInput"]
      116 JUMPIF                           R12 ; [+2]
      117 NEWTABLE                         R12 0 0
      119 SETTABLEKS                       R12 R11 K29 ["arguments"]
      121 GETTABLEKS                       R12 R6 K12 ["referenceId"]
      123 SETTABLEKS                       R12 R11 K12 ["referenceId"]
      125 SETTABLEKS                       R4 R11 K2 ["toolCallId"]
      127 MOVE                             R12 R7
      128 JUMPIFNOT                        R12 ; [+2]
      129 GETTABLEKS                       R12 R7 K30 ["messageId"]
      131 SETTABLEKS                       R12 R11 K30 ["messageId"]
      133 MOVE                             R12 R7
      134 JUMPIFNOT                        R12 ; [+2]
      135 GETTABLEKS                       R12 R7 K31 ["contentId"]
      137 SETTABLEKS                       R12 R11 K31 ["contentId"]
      139 JUMPIFNOT                        R5 ; [+25]
      140 GETTABLEKS                       R12 R5 K35 ["request"]
      142 DUPTABLE                         R13 K38 [{"toolCallId", "toolName", "toolInput", "messageId"}]
      143 SETTABLEKS                       R4 R13 K2 ["toolCallId"]
      145 GETUPVAL                         R14 1
      146 GETTABLEKS                       R14 R14 K39 ["ToolNaming"]
      148 GETTABLEKS                       R14 R14 K40 ["stripPrefix"]
      150 GETTABLEKS                       R15 R11 K28 ["name"]
      152 CALL                             R14 1 1
      153 SETTABLEKS                       R14 R13 K36 ["toolName"]
      155 GETTABLEKS                       R14 R11 K29 ["arguments"]
      157 SETTABLEKS                       R14 R13 K37 ["toolInput"]
      159 GETTABLEKS                       R14 R11 K30 ["messageId"]
      161 SETTABLEKS                       R14 R13 K30 ["messageId"]
      163 CALL                             R12 1 1
      164 JUMP                             ; [+5]
      165 GETUPVAL                         R12 2
      166 GETTABLEKS                       R12 R12 K41 ["resolve"]
      168 LOADK                            R13 K42 ["execute"]
      169 CALL                             R12 1 1
      170 LOADNIL                          R13
      171 GETUPVAL                         R14 2
      172 GETTABLEKS                       R14 R14 K43 ["new"]
      174 NEWCLOSURE                       R15 P2
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R4
      177 CAPTURE                          REF R13
      178 CAPTURE                          UPVAL U2
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R9
      181 CAPTURE                          UPVAL U0
      182 CAPTURE                          VAL R0
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R11
      187 CALL                             R14 1 1
      188 GETTABLEKS                       R16 R0 K7 ["_activeClientToolPromises"]
      190 GETTABLE                         R15 R16 R3
      191 JUMPIF                           R15 ; [+5]
      192 NEWTABLE                         R15 0 0
      194 GETTABLEKS                       R16 R0 K7 ["_activeClientToolPromises"]
      196 SETTABLE                         R15 R16 R3
      197 SETTABLE                         R14 R15 R4
      198 NEWCLOSURE                       R18 P3
      199 CAPTURE                          VAL R0
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R14
      203 NAMECALL                         R16 R14 K44 ["finally"]
      205 CALL                             R16 2 0
      206 CLOSEUPVALS                      R13
      207 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_initializePromise"]
        2 JUMPIF                           R1 ; [+16]
        3 GETTABLEKS                       R1 R0 K1 ["_client"]
        5 DUPTABLE                         R3 K4 [{"protocolVersion", "clientCapabilities"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K5 ["LATEST_PROTOCOL_VERSION"]
        9 SETTABLEKS                       R4 R3 K2 ["protocolVersion"]
       11 GETUPVAL                         R4 1
       12 SETTABLEKS                       R4 R3 K3 ["clientCapabilities"]
       14 NAMECALL                         R1 R1 K6 ["initialize"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K0 ["_initializePromise"]
       19 GETTABLEKS                       R1 R0 K0 ["_initializePromise"]
       21 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["newSession"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_14:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["listSessions"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_16:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["history"]
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R7 0
       11 MOVE                             R8 R6
       12 CALL                             R7 1 1
       13 JUMPIFNOT                        R7 ; [+7]
       14 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       16 MOVE                             R9 R1
       17 MOVE                             R10 R7
       18 GETIMPORT                        R8 K3 [table.insert]
       20 CALL                             R8 2 0
       21 FORGLOOP                         R2 2 ; [-12]
       23 GETUPVAL                         R2 1
       24 JUMPIFNOT                        R2 ; [+9]
       25 MOVE                             R2 R1
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 FORGPREP                         R2
       29 GETUPVAL                         R7 1
       30 MOVE                             R8 R6
       31 CALL                             R7 1 0
       32 FORGLOOP                         R2 2 ; [-4]
       34 GETIMPORT                        R2 K5 [table.clone]
       36 MOVE                             R3 R0
       37 CALL                             R2 1 1
       38 SETTABLEKS                       R1 R2 K0 ["history"]
       40 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["loadSession"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R0 R0 K2 ["andThen"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_19:
        0 NAMECALL                         R3 R0 K0 ["ensureInitialized"]
        2 CALL                             R3 1 1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 NAMECALL                         R3 R3 K1 ["andThen"]
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["setSessionMode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_21:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateSessionInfo"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["_client"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_23:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NAMECALL                         R2 R2 K1 ["andThen"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteSession"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["_client"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_25:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NAMECALL                         R2 R2 K1 ["andThen"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["cancel"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_27:
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R1 K0 ["sessionId"]
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R4 R2
        6 GETIMPORT                        R3 K2 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K3 ["string"] ; [+15]
       11 GETTABLEKS                       R4 R0 K4 ["_activeClientToolPromises"]
       13 GETTABLE                         R3 R4 R2
       14 JUMPIFNOT                        R3 ; [+10]
       15 GETIMPORT                        R4 K7 [table.clone]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 3
       19 FORGPREP                         R4
       20 NAMECALL                         R9 R8 K8 ["cancel"]
       22 CALL                             R9 1 0
       23 FORGLOOP                         R4 2 ; [-4]
       25 NAMECALL                         R3 R0 K9 ["ensureInitialized"]
       27 CALL                             R3 1 1
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 NAMECALL                         R3 R3 K10 ["andThen"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["prompt"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_29:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["sessionId"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["update"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R3 R0 K0 ["_sessionUpdateSignal"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 NAMECALL                         R3 R3 K1 ["Connect"]
        7 CALL                             R3 2 1
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R3
       10 RETURN                           R4 1

PROTO_33:
        0 GETTABLEKS                       R4 R0 K0 ["_toolConfirmationHandlers"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+5]
        4 JUMPIFEQ                         R3 R2 ; [+4]
        6 GETTABLEKS                       R4 R3 K1 ["dispose"]
        8 CALL                             R4 0 0
        9 GETTABLEKS                       R4 R0 K0 ["_toolConfirmationHandlers"]
       11 SETTABLE                         R2 R4 R1
       12 RETURN                           R0 0

PROTO_34:
        0 SETTABLEKS                       R1 R0 K0 ["_clientToolHandler"]
        2 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R4 R0 K0 ["_toolUiContextByToolCallId"]
        2 DUPTABLE                         R5 K3 [{"messageId", "contentId"}]
        3 SETTABLEKS                       R2 R5 K1 ["messageId"]
        5 SETTABLEKS                       R3 R5 K2 ["contentId"]
        7 SETTABLE                         R5 R4 R1
        8 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sessionIdByThreadId"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        6 SETTABLE                         R3 R1 R2
        7 GETTABLEKS                       R1 R0 K1 ["sessionId"]
        9 RETURN                           R1 1

PROTO_37:
        0 JUMPIFNOT                        R2 ; [+6]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["resolve"]
        4 MOVE                             R4 R2
        5 CALL                             R3 1 -1
        6 RETURN                           R3 -1
        7 GETTABLEKS                       R4 R0 K1 ["_sessionIdByThreadId"]
        9 GETTABLE                         R3 R4 R1
       10 JUMPIFNOT                        R3 ; [+6]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["resolve"]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 -1
       16 RETURN                           R4 -1
       17 DUPTABLE                         R6 K5 [{["cwd"] = "/", ["mcpServers"]}]
       18 NEWTABLE                         R7 0 0
       20 SETTABLEKS                       R7 R6 K4 ["mcpServers"]
       22 NAMECALL                         R4 R0 K6 ["newSession"]
       24 CALL                             R4 2 1
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 NAMECALL                         R4 R4 K7 ["andThen"]
       30 CALL                             R4 2 -1
       31 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Types"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R1 K11 ["Acp"]
       35 GETTABLEKS                       R5 R5 K10 ["Types"]
       37 GETTABLEKS                       R6 R1 K11 ["Acp"]
       39 GETTABLEKS                       R6 R6 K12 ["RobloxExtensions"]
       41 DUPTABLE                         R7 K16 [{["fs"], ["terminal"] = False}]
       42 DUPTABLE                         R8 K19 [{["readTextFile"] = False, ["writeTextFile"] = False}]
       43 SETTABLEKS                       R8 R7 K13 ["fs"]
       45 DUPCLOSURE                       R8 K20 [PROTO_0]
       46 CAPTURE                          VAL R4
       47 NEWTABLE                         R9 32 0
       49 SETTABLEKS                       R9 R9 K21 ["__index"]
       51 DUPCLOSURE                       R10 K22 [PROTO_2]
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R10 R9 K23 ["new"]
       56 DUPCLOSURE                       R10 K24 [PROTO_11]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R10 R9 K25 ["_maybeExecuteClientTool"]
       62 DUPCLOSURE                       R10 K26 [PROTO_12]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R7
       65 SETTABLEKS                       R10 R9 K27 ["ensureInitialized"]
       67 DUPCLOSURE                       R10 K28 [PROTO_14]
       68 SETTABLEKS                       R10 R9 K29 ["newSession"]
       70 DUPCLOSURE                       R10 K30 [PROTO_16]
       71 SETTABLEKS                       R10 R9 K31 ["listSessionsPage"]
       73 DUPCLOSURE                       R10 K32 [PROTO_19]
       74 CAPTURE                          VAL R8
       75 SETTABLEKS                       R10 R9 K33 ["loadSessionPage"]
       77 DUPCLOSURE                       R10 K34 [PROTO_21]
       78 SETTABLEKS                       R10 R9 K35 ["setSessionMode"]
       80 DUPCLOSURE                       R10 K36 [PROTO_23]
       81 CAPTURE                          VAL R6
       82 SETTABLEKS                       R10 R9 K37 ["updateSessionInfo"]
       84 DUPCLOSURE                       R10 K38 [PROTO_25]
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R10 R9 K39 ["deleteSession"]
       88 DUPCLOSURE                       R10 K40 [PROTO_27]
       89 SETTABLEKS                       R10 R9 K41 ["cancel"]
       91 DUPCLOSURE                       R10 K42 [PROTO_29]
       92 SETTABLEKS                       R10 R9 K43 ["prompt"]
       94 DUPCLOSURE                       R10 K44 [PROTO_32]
       95 SETTABLEKS                       R10 R9 K45 ["subscribeToSessionUpdates"]
       97 DUPCLOSURE                       R10 K46 [PROTO_33]
       98 SETTABLEKS                       R10 R9 K47 ["setClientToolConfirmationHandler"]
      100 DUPCLOSURE                       R10 K48 [PROTO_34]
      101 SETTABLEKS                       R10 R9 K49 ["setClientToolHandler"]
      103 DUPCLOSURE                       R10 K50 [PROTO_35]
      104 SETTABLEKS                       R10 R9 K51 ["setClientToolUiContext"]
      106 DUPCLOSURE                       R10 K52 [PROTO_37]
      107 CAPTURE                          VAL R2
      108 SETTABLEKS                       R10 R9 K53 ["getOrCreateSessionForThread"]
      110 RETURN                           R9 1
