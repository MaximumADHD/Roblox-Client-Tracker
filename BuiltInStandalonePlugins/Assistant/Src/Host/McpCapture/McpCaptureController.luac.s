PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R2 K3 ["[McpCaptureController] %*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETIMPORT                        R7 K1 [pcall]
        6 NEWCLOSURE                       R8 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R6
        9 CALL                             R7 1 2
       10 JUMPIF                           R7 ; [+22]
       11 LOADK                            R9 K2 ["Failed to %*: %*"]
       12 MOVE                             R11 R0
       13 FASTCALL1                        TOSTRING R8 ; [+3]
       14 MOVE                             R13 R8
       15 GETIMPORT                        R12 K4 [tostring]
       17 CALL                             R12 1 1
       18 NAMECALL                         R9 R9 K5 ["format"]
       20 CALL                             R9 3 1
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R10 R10 K6 ["FFlagDebugAssistantMcpCaptureLogging"]
       24 JUMPIFNOT                        R10 ; [+8]
       25 GETIMPORT                        R10 K8 [warn]
       27 LOADK                            R11 K9 ["[McpCaptureController] %*"]
       28 MOVE                             R13 R9
       29 NAMECALL                         R11 R11 K5 ["format"]
       31 CALL                             R11 2 1
       32 CALL                             R10 1 0
       33 FORGLOOP                         R2 2 ; [-30]
       35 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R3 K1 [pcall]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CALL                             R3 1 2
       10 JUMPIF                           R3 ; [+22]
       11 LOADK                            R5 K2 ["Failed to send %*: %*"]
       12 MOVE                             R7 R0
       13 FASTCALL1                        TOSTRING R4 ; [+3]
       14 MOVE                             R9 R4
       15 GETIMPORT                        R8 K4 [tostring]
       17 CALL                             R8 1 1
       18 NAMECALL                         R5 R5 K5 ["format"]
       20 CALL                             R5 3 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K6 ["FFlagDebugAssistantMcpCaptureLogging"]
       24 JUMPIFNOT                        R6 ; [+8]
       25 GETIMPORT                        R6 K8 [warn]
       27 LOADK                            R7 K9 ["[McpCaptureController] %*"]
       28 MOVE                             R9 R5
       29 NAMECALL                         R7 R7 K5 ["format"]
       31 CALL                             R7 2 1
       32 CALL                             R6 1 0
       33 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["onNotifierChanged"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_6:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["update the capture state"]
        3 DUPCLOSURE                       R3 K1 [PROTO_5]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+7]
        3 LOADNIL                          R1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K0 ["update the capture state"]
        7 DUPCLOSURE                       R3 K1 [PROTO_5]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["onExecution"]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [table.remove]
        2 GETUPVAL                         R1 0
        3 LOADN                            R2 1
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R1 1
        7 LOADK                            R2 K3 ["record a Studio tool call"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 2 0
       11 JUMPBACK                         ; [-12]
       12 LOADB                            R0 0
       13 SETUPVAL                         R0 2
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 JUMPIF                           R1 ; [+6]
        9 LOADB                            R1 1
       10 SETUPVAL                         R1 1
       11 GETIMPORT                        R1 K5 [task.defer]
       13 GETUPVAL                         R2 2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["onRecord"]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["read a prompt record"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["onRemoteExecution"]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["read a Studio tool call"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["onSharingChanged"]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["apply a sharing change"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["JSONEncode"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R1 3 2
        8 JUMPIFNOT                        R1 ; [+2]
        9 MOVE                             R3 R2
       10 RETURN                           R3 1
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K4 [tostring]
       15 CALL                             R3 1 1
       16 RETURN                           R3 1

PROTO_18:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTLE                      R2 R1 ; [+4]
        3 MOVE                             R2 R0
        4 LOADB                            R3 0
        5 RETURN                           R2 2
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 1
       10 LOADB                            R3 1
       11 RETURN                           R2 2

PROTO_19:
        0 MOVE                             R3 R1
        1 MOVE                             R4 R2
        2 LOADB                            R5 0
        3 LOADB                            R6 0
        4 LOADN                            R9 1
        5 LOADN                            R7 3
        6 LOADN                            R8 1
        7 FORNPREP                         R7
        8 LOADNIL                          R10
        9 GETUPVAL                         R11 0
       10 GETTABLEKS                       R11 R11 K0 ["redactValue"]
       12 MOVE                             R12 R0
       13 MOVE                             R13 R3
       14 CALL                             R11 2 3
       15 MOVE                             R10 R11
       16 MOVE                             R5 R12
       17 MOVE                             R6 R13
       18 JUMPIFNOTEQKNIL                  R10 ; [+3]
       20 MOVE                             R4 R2
       21 JUMP                             ; [+18]
       22 MOVE                             R11 R10
       23 GETIMPORT                        R12 K2 [pcall]
       25 GETUPVAL                         R13 1
       26 GETTABLEKS                       R13 R13 K3 ["JSONEncode"]
       28 GETUPVAL                         R14 1
       29 MOVE                             R15 R11
       30 CALL                             R12 3 2
       31 JUMPIFNOT                        R12 ; [+2]
       32 MOVE                             R4 R13
       33 JUMP                             ; [+6]
       34 FASTCALL1                        TOSTRING R11 ; [+3]
       35 MOVE                             R15 R11
       36 GETIMPORT                        R14 K5 [tostring]
       38 CALL                             R14 1 1
       39 MOVE                             R4 R14
       40 LENGTH                           R11 R4
       41 JUMPIFLE                         R11 R1 ; [+11]
       43 MUL                              R14 R3 R1
       44 LENGTH                           R15 R4
       45 DIV                              R13 R14 R15
       46 MULK                             R12 R13 K6 [0.9]
       47 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       48 GETIMPORT                        R11 K9 [math.floor]
       50 CALL                             R11 1 1
       51 MOVE                             R3 R11
       52 FORNLOOP                         R7
       53 RETURN                           R4 3

PROTO_20:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["content"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 FASTCALL1                        TYPEOF R6 ; [+3]
        8 MOVE                             R8 R6
        9 GETIMPORT                        R7 K2 [typeof]
       11 CALL                             R7 1 1
       12 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+16]
       14 GETTABLEKS                       R7 R6 K4 ["type"]
       16 JUMPIFEQKS                       R7 K5 ["image"] ; [+5]
       18 GETTABLEKS                       R7 R6 K4 ["type"]
       20 JUMPIFNOTEQKS                    R7 K6 ["audio"] ; [+8]
       22 DUPTABLE                         R7 K9 [{["type"], ["omitted"] = True}]
       23 GETTABLEKS                       R8 R6 K4 ["type"]
       25 SETTABLEKS                       R8 R7 K4 ["type"]
       27 SETTABLE                         R7 R1 R5
       28 JUMP                             ; [+1]
       29 SETTABLE                         R6 R1 R5
       30 FORGLOOP                         R2 2 ; [-24]
       32 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceId"]
        2 NAMECALL                         R0 R0 K1 ["GetItem"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 LOADK                            R3 K2 ["GameId"]
        7 NAMECALL                         R1 R1 K1 ["GetItem"]
        9 CALL                             R1 2 -1
       10 RETURN                           R0 -1

PROTO_22:
        0 JUMPIF                           R0 ; [+3]
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 RETURN                           R1 2
        4 GETIMPORT                        R1 K1 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 3
        9 JUMPIF                           R1 ; [+3]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 RETURN                           R4 2
       13 FASTCALL1                        TYPEOF R2 ; [+3]
       14 MOVE                             R6 R2
       15 GETIMPORT                        R5 K3 [typeof]
       17 CALL                             R5 1 1
       18 JUMPIFNOTEQKS                    R5 K4 ["number"] ; [+5]
       20 JUMPIFEQKN                       R2 K5 [0] ; [+3]
       22 MOVE                             R4 R2
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 FASTCALL1                        TYPEOF R3 ; [+3]
       26 MOVE                             R7 R3
       27 GETIMPORT                        R6 K3 [typeof]
       29 CALL                             R6 1 1
       30 JUMPIFNOTEQKS                    R6 K4 ["number"] ; [+5]
       32 JUMPIFEQKN                       R3 K5 [0] ; [+3]
       34 MOVE                             R5 R3
       35 RETURN                           R4 2
       36 LOADNIL                          R5
       37 RETURN                           R4 2

PROTO_23:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantMcpCaptureAllToolCalls"]
        3 JUMPIF                           R4 ; [+46]
        4 GETTABLEKS                       R4 R0 K1 ["toolName"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["ExecuteLuau"]
        9 JUMPIFEQ                         R4 R5 ; [+40]
       11 GETTABLEKS                       R4 R0 K3 ["result"]
       13 DUPTABLE                         R5 K15 [{["callId"], ["toolId"], ["toolName"], ["arguments"] = "{}", ["result"] = , ["truncated"] = False, ["redacted"] = False, ["isError"], ["placeId"], ["universeId"]}]
       14 SETTABLEKS                       R1 R5 K4 ["callId"]
       16 GETTABLEKS                       R6 R0 K5 ["toolId"]
       18 SETTABLEKS                       R6 R5 K5 ["toolId"]
       20 GETTABLEKS                       R6 R0 K1 ["toolName"]
       22 SETTABLEKS                       R6 R5 K1 ["toolName"]
       24 LOADB                            R6 1
       25 GETTABLEKS                       R7 R0 K16 ["errorMessage"]
       27 JUMPIFNOTEQKNIL                  R7 ; [+15]
       29 LOADB                            R6 0
       30 FASTCALL1                        TYPEOF R4 ; [+3]
       31 MOVE                             R8 R4
       32 GETIMPORT                        R7 K18 [typeof]
       34 CALL                             R7 1 1
       35 JUMPIFNOTEQKS                    R7 K19 ["table"] ; [+7]
       37 GETTABLEKS                       R7 R4 K12 ["isError"]
       39 JUMPIFEQKB                       R7 TRUE ; [+2]
       41 LOADB                            R6 0 +1
       42 LOADB                            R6 1
       43 SETTABLEKS                       R6 R5 K12 ["isError"]
       45 SETTABLEKS                       R2 R5 K13 ["placeId"]
       47 SETTABLEKS                       R3 R5 K14 ["universeId"]
       49 RETURN                           R5 1
       50 GETTABLEKS                       R4 R0 K20 ["args"]
       52 FASTCALL1                        TYPEOF R4 ; [+3]
       53 MOVE                             R6 R4
       54 GETIMPORT                        R5 K18 [typeof]
       56 CALL                             R5 1 1
       57 JUMPIFNOTEQKS                    R5 K19 ["table"] ; [+9]
       59 GETIMPORT                        R5 K22 [table.clone]
       61 MOVE                             R6 R4
       62 CALL                             R5 1 1
       63 MOVE                             R4 R5
       64 LOADNIL                          R5
       65 SETTABLEKS                       R5 R4 K23 ["studio_id"]
       67 GETUPVAL                         R5 2
       68 MOVE                             R6 R4
       69 LOADN                            R7 20000
       70 LOADK                            R8 K7 ["{}"]
       71 CALL                             R5 3 3
       72 LENGTH                           R10 R5
       73 LOADN                            R11 20000
       74 JUMPIFNOTLE                      R10 R11 ; [+4]
       76 MOVE                             R8 R5
       77 LOADB                            R9 0
       78 JUMP                             ; [+6]
       79 GETUPVAL                         R10 3
       80 MOVE                             R11 R5
       81 LOADN                            R12 20000
       82 CALL                             R10 2 1
       83 MOVE                             R8 R10
       84 LOADB                            R9 1
       85 LOADNIL                          R10
       86 LOADNIL                          R11
       87 LOADNIL                          R12
       88 LOADNIL                          R13
       89 GETTABLEKS                       R14 R0 K16 ["errorMessage"]
       91 JUMPIFNOT                        R14 ; [+12]
       92 GETUPVAL                         R14 4
       93 GETTABLEKS                       R14 R14 K24 ["redactPrefix"]
       95 GETTABLEKS                       R15 R0 K16 ["errorMessage"]
       97 LOADK                            R16 K25 [50000]
       98 CALL                             R14 2 3
       99 MOVE                             R10 R14
      100 MOVE                             R11 R15
      101 MOVE                             R12 R16
      102 LOADB                            R13 1
      103 JUMP                             ; [+55]
      104 GETTABLEKS                       R14 R0 K3 ["result"]
      106 MOVE                             R15 R14
      107 FASTCALL1                        TYPEOF R14 ; [+3]
      108 MOVE                             R17 R14
      109 GETIMPORT                        R16 K18 [typeof]
      111 CALL                             R16 1 1
      112 JUMPIFNOTEQKS                    R16 K19 ["table"] ; [+23]
      114 GETTABLEKS                       R17 R14 K26 ["content"]
      116 FASTCALL1                        TYPEOF R17 ; [+2]
      117 GETIMPORT                        R16 K18 [typeof]
      119 CALL                             R16 1 1
      120 JUMPIFNOTEQKS                    R16 K19 ["table"] ; [+6]
      122 GETUPVAL                         R16 5
      123 MOVE                             R17 R14
      124 CALL                             R16 1 1
      125 MOVE                             R15 R16
      126 JUMP                             ; [+9]
      127 GETTABLEKS                       R16 R14 K26 ["content"]
      129 JUMPIFEQKNIL                     R16 ; [+4]
      131 GETTABLEKS                       R15 R14 K26 ["content"]
      133 JUMP                             ; [+2]
      134 GETTABLEKS                       R15 R14 K27 ["structuredContent"]
      136 GETUPVAL                         R16 2
      137 MOVE                             R17 R15
      138 LOADK                            R18 K25 [50000]
      139 LOADK                            R19 K28 ["null"]
      140 CALL                             R16 3 3
      141 MOVE                             R10 R16
      142 MOVE                             R11 R17
      143 MOVE                             R12 R18
      144 LOADB                            R16 0
      145 FASTCALL1                        TYPEOF R14 ; [+3]
      146 MOVE                             R18 R14
      147 GETIMPORT                        R17 K18 [typeof]
      149 CALL                             R17 1 1
      150 JUMPIFNOTEQKS                    R17 K19 ["table"] ; [+7]
      152 GETTABLEKS                       R17 R14 K12 ["isError"]
      154 JUMPIFEQKB                       R17 TRUE ; [+2]
      156 LOADB                            R16 0 +1
      157 LOADB                            R16 1
      158 MOVE                             R13 R16
      159 MOVE                             R16 R10
      160 LENGTH                           R17 R16
      161 LOADK                            R18 K25 [50000]
      162 JUMPIFNOTLE                      R17 R18 ; [+4]
      164 MOVE                             R14 R16
      165 LOADB                            R15 0
      166 JUMP                             ; [+6]
      167 GETUPVAL                         R17 3
      168 MOVE                             R18 R16
      169 LOADK                            R19 K25 [50000]
      170 CALL                             R17 2 1
      171 MOVE                             R14 R17
      172 LOADB                            R15 1
      173 DUPTABLE                         R16 K29 [{"callId", "toolId", "toolName", "arguments", "result", "truncated", "redacted", "isError", "placeId", "universeId"}]
      174 SETTABLEKS                       R1 R16 K4 ["callId"]
      176 GETTABLEKS                       R17 R0 K5 ["toolId"]
      178 SETTABLEKS                       R17 R16 K5 ["toolId"]
      180 GETTABLEKS                       R17 R0 K1 ["toolName"]
      182 SETTABLEKS                       R17 R16 K1 ["toolName"]
      184 SETTABLEKS                       R8 R16 K6 ["arguments"]
      186 SETTABLEKS                       R14 R16 K3 ["result"]
      188 MOVE                             R17 R7
      189 JUMPIF                           R17 ; [+5]
      190 MOVE                             R17 R9
      191 JUMPIF                           R17 ; [+3]
      192 MOVE                             R17 R12
      193 JUMPIF                           R17 ; [+1]
      194 MOVE                             R17 R15
      195 SETTABLEKS                       R17 R16 K9 ["truncated"]
      197 OR                               R17 R6 R11
      198 SETTABLEKS                       R17 R16 K11 ["redacted"]
      200 SETTABLEKS                       R13 R16 K12 ["isError"]
      202 SETTABLEKS                       R2 R16 K13 ["placeId"]
      204 SETTABLEKS                       R3 R16 K14 ["universeId"]
      206 RETURN                           R16 1

PROTO_24:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K3 ["callId"]
       11 GETTABLEKS                       R2 R0 K4 ["toolId"]
       13 GETTABLEKS                       R3 R0 K5 ["toolName"]
       15 GETTABLEKS                       R4 R0 K6 ["arguments"]
       17 FASTCALL1                        TYPEOF R1 ; [+3]
       18 MOVE                             R6 R1
       19 GETIMPORT                        R5 K1 [typeof]
       21 CALL                             R5 1 1
       22 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+22]
       24 FASTCALL1                        TYPEOF R2 ; [+3]
       25 MOVE                             R6 R2
       26 GETIMPORT                        R5 K1 [typeof]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+15]
       31 FASTCALL1                        TYPEOF R3 ; [+3]
       32 MOVE                             R6 R3
       33 GETIMPORT                        R5 K1 [typeof]
       35 CALL                             R5 1 1
       36 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+8]
       38 FASTCALL1                        TYPEOF R4 ; [+3]
       39 MOVE                             R6 R4
       40 GETIMPORT                        R5 K1 [typeof]
       42 CALL                             R5 1 1
       43 JUMPIFEQKS                       R5 K7 ["string"] ; [+3]
       45 LOADNIL                          R5
       46 RETURN                           R5 1
       47 GETTABLEKS                       R5 R0 K8 ["result"]
       49 GETTABLEKS                       R6 R0 K9 ["placeId"]
       51 GETTABLEKS                       R7 R0 K10 ["universeId"]
       53 DUPTABLE                         R8 K14 [{"callId", "toolId", "toolName", "arguments", "result", "truncated", "redacted", "isError", "placeId", "universeId"}]
       54 SETTABLEKS                       R1 R8 K3 ["callId"]
       56 SETTABLEKS                       R2 R8 K4 ["toolId"]
       58 SETTABLEKS                       R3 R8 K5 ["toolName"]
       60 SETTABLEKS                       R4 R8 K6 ["arguments"]
       62 FASTCALL1                        TYPEOF R5 ; [+3]
       63 MOVE                             R11 R5
       64 GETIMPORT                        R10 K1 [typeof]
       66 CALL                             R10 1 1
       67 JUMPIFNOTEQKS                    R10 K7 ["string"] ; [+3]
       69 MOVE                             R9 R5
       70 JUMP                             ; [+1]
       71 LOADNIL                          R9
       72 SETTABLEKS                       R9 R8 K8 ["result"]
       74 GETTABLEKS                       R10 R0 K11 ["truncated"]
       76 JUMPIFEQKB                       R10 TRUE ; [+2]
       78 LOADB                            R9 0 +1
       79 LOADB                            R9 1
       80 SETTABLEKS                       R9 R8 K11 ["truncated"]
       82 GETTABLEKS                       R10 R0 K12 ["redacted"]
       84 JUMPIFEQKB                       R10 TRUE ; [+2]
       86 LOADB                            R9 0 +1
       87 LOADB                            R9 1
       88 SETTABLEKS                       R9 R8 K12 ["redacted"]
       90 GETTABLEKS                       R10 R0 K13 ["isError"]
       92 JUMPIFEQKB                       R10 TRUE ; [+2]
       94 LOADB                            R9 0 +1
       95 LOADB                            R9 1
       96 SETTABLEKS                       R9 R8 K13 ["isError"]
       98 FASTCALL1                        TYPEOF R6 ; [+3]
       99 MOVE                             R11 R6
      100 GETIMPORT                        R10 K1 [typeof]
      102 CALL                             R10 1 1
      103 JUMPIFNOTEQKS                    R10 K15 ["number"] ; [+3]
      105 MOVE                             R9 R6
      106 JUMP                             ; [+1]
      107 LOADNIL                          R9
      108 SETTABLEKS                       R9 R8 K9 ["placeId"]
      110 FASTCALL1                        TYPEOF R7 ; [+3]
      111 MOVE                             R11 R7
      112 GETIMPORT                        R10 K1 [typeof]
      114 CALL                             R10 1 1
      115 JUMPIFNOTEQKS                    R10 K15 ["number"] ; [+3]
      117 MOVE                             R9 R7
      118 JUMP                             ; [+1]
      119 LOADNIL                          R9
      120 SETTABLEKS                       R9 R8 K10 ["universeId"]
      122 RETURN                           R8 1

PROTO_25:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+6]
        4 JUMPIFEQ                         R0 R1 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 LENGTH                           R2 R0
       10 LENGTH                           R3 R1
       11 JUMPIFEQ                         R2 R3 ; [+3]
       13 LOADB                            R2 0
       14 RETURN                           R2 1
       15 MOVE                             R2 R0
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETIMPORT                        R7 K2 [table.find]
       21 MOVE                             R8 R1
       22 MOVE                             R9 R6
       23 CALL                             R7 2 1
       24 JUMPIF                           R7 ; [+2]
       25 LOADB                            R7 0
       26 RETURN                           R7 1
       27 FORGLOOP                         R2 2 ; [-9]
       29 LOADB                            R2 1
       30 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["plugin"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setupInstructionsObservable"]
        3 NAMECALL                         R0 R0 K1 ["get"]
        5 CALL                             R0 1 1
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 GETTABLEKS                       R1 R0 K2 ["error"]
       10 JUMPIFEQKNIL                     R1 ; [+3]
       12 LOADNIL                          R1
       13 RETURN                           R1 1
       14 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["serverStateObservable"]
        3 NAMECALL                         R1 R1 K1 ["get"]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K2 ["connected"] ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_29:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["getStatusAsync"]
        5 GETUPVAL                         R2 1
        6 CALL                             R0 2 2
        7 JUMPIF                           R0 ; [+2]
        8 LOADB                            R2 0
        9 RETURN                           R2 1
       10 MOVE                             R2 R1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 JUMPIFNOTEQKS                    R6 K3 ["notInstalled"] ; [+3]
       16 LOADB                            R7 1
       17 RETURN                           R7 1
       18 FORGLOOP                         R2 2 ; [-5]
       20 LOADB                            R2 0
       21 RETURN                           R2 1

PROTO_30:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["findStudioServerNamesAsync"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R1 3 2
        8 MOVE                             R3 R1
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R2
       12 GETUPVAL                         R6 3
       13 CALL                             R4 2 1
       14 NOT                              R3 R4
       15 RETURN                           R3 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["installAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["findStudioServerNamesAsync"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 CALL                             R1 2 1
       12 SETUPVAL                         R1 3
       13 LOADB                            R1 0
       14 MOVE                             R2 R0
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 MOVE                             R7 R1
       19 JUMPIF                           R7 ; [+4]
       20 JUMPIFEQKS                       R6 K2 ["failed"] ; [+2]
       22 LOADB                            R7 0 +1
       23 LOADB                            R7 1
       24 MOVE                             R1 R7
       25 FORGLOOP                         R2 2 ; [-8]
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R2 R2 K3 ["FFlagDebugAssistantMcpCaptureLogging"]
       30 JUMPIFNOT                        R2 ; [+34]
       31 NEWTABLE                         R2 0 0
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K4 ["HARNESS_IDS"]
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 FORGPREP                         R3
       39 LOADK                            R10 K5 ["%*=%*"]
       40 MOVE                             R12 R7
       41 GETTABLE                         R13 R0 R7
       42 NAMECALL                         R10 R10 K6 ["format"]
       44 CALL                             R10 3 1
       45 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       47 MOVE                             R9 R2
       48 GETIMPORT                        R8 K9 [table.insert]
       50 CALL                             R8 2 0
       51 FORGLOOP                         R3 2 ; [-13]
       53 GETIMPORT                        R3 K11 [print]
       55 LOADK                            R4 K12 ["[McpCaptureController] installed hooks: %*"]
       56 GETIMPORT                        R6 K14 [table.concat]
       58 MOVE                             R7 R2
       59 LOADK                            R8 K15 [", "]
       60 CALL                             R6 2 1
       61 NAMECALL                         R4 R4 K6 ["format"]
       63 CALL                             R4 2 1
       64 CALL                             R3 1 0
       65 JUMPIFNOT                        R1 ; [+2]
       66 LOADNIL                          R2
       67 JUMP                             ; [+1]
       68 GETUPVAL                         R2 6
       69 SETUPVAL                         R2 5
       70 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["isEnabled"]
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+11]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K1 ["serverStateObservable"]
       13 NAMECALL                         R2 R2 K2 ["get"]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K3 ["connected"] ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 JUMPIF                           R1 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K4 ["setupInstructionsObservable"]
       25 NAMECALL                         R2 R2 K2 ["get"]
       27 CALL                             R2 1 1
       28 JUMPIFEQKNIL                     R2 ; [+5]
       30 GETTABLEKS                       R3 R2 K5 ["error"]
       32 JUMPIFEQKNIL                     R3 ; [+3]
       34 LOADNIL                          R1
       35 JUMP                             ; [+1]
       36 MOVE                             R1 R2
       37 JUMPIF                           R1 ; [+1]
       38 RETURN                           R0 0
       39 GETUPVAL                         R2 4
       40 GETTABLEKS                       R2 R2 K6 ["getServerEntry"]
       42 MOVE                             R3 R1
       43 CALL                             R2 1 1
       44 GETUPVAL                         R3 5
       45 JUMPIFNOTEQ                      R3 R2 ; [+41]
       47 JUMPIFNOT                        R0 ; [+38]
       48 GETIMPORT                        R4 K8 [pcall]
       50 GETUPVAL                         R5 4
       51 GETTABLEKS                       R5 R5 K9 ["getStatusAsync"]
       53 GETUPVAL                         R6 6
       54 CALL                             R4 2 2
       55 JUMPIF                           R4 ; [+2]
       56 LOADB                            R3 0
       57 JUMP                             ; [+11]
       58 MOVE                             R6 R5
       59 LOADNIL                          R7
       60 LOADNIL                          R8
       61 FORGPREP                         R6
       62 JUMPIFNOTEQKS                    R10 K10 ["notInstalled"] ; [+3]
       64 LOADB                            R3 1
       65 JUMP                             ; [+3]
       66 FORGLOOP                         R6 2 ; [-5]
       68 LOADB                            R3 0
       69 JUMPIF                           R3 ; [+17]
       70 GETIMPORT                        R4 K8 [pcall]
       72 GETUPVAL                         R5 4
       73 GETTABLEKS                       R5 R5 K11 ["findStudioServerNamesAsync"]
       75 GETUPVAL                         R6 6
       76 MOVE                             R7 R1
       77 CALL                             R4 3 2
       78 MOVE                             R3 R4
       79 JUMPIFNOT                        R3 ; [+5]
       80 GETUPVAL                         R6 7
       81 MOVE                             R7 R5
       82 GETUPVAL                         R8 8
       83 CALL                             R6 2 1
       84 NOT                              R3 R6
       85 JUMPIF                           R3 ; [+1]
       86 RETURN                           R0 0
       87 LOADB                            R3 1
       88 SETUPVAL                         R3 1
       89 JUMPIFNOT                        R0 ; [+13]
       90 GETUPVAL                         R3 2
       91 GETTABLEKS                       R3 R3 K12 ["loadAsync"]
       93 GETUPVAL                         R4 6
       94 CALL                             R3 1 0
       95 GETUPVAL                         R3 2
       96 GETTABLEKS                       R3 R3 K0 ["isEnabled"]
       98 CALL                             R3 0 1
       99 JUMPIF                           R3 ; [+3]
      100 LOADB                            R3 0
      101 SETUPVAL                         R3 1
      102 RETURN                           R0 0
      103 GETIMPORT                        R3 K8 [pcall]
      105 NEWCLOSURE                       R4 P0
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          VAL R1
      109 CAPTURE                          UPVAL U8
      110 CAPTURE                          UPVAL U9
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          VAL R2
      113 CALL                             R3 1 2
      114 LOADB                            R5 0
      115 SETUPVAL                         R5 1
      116 JUMPIF                           R3 ; [+21]
      117 LOADK                            R5 K13 ["Failed to install MCP capture hooks: %*"]
      118 FASTCALL1                        TOSTRING R4 ; [+3]
      119 MOVE                             R8 R4
      120 GETIMPORT                        R7 K15 [tostring]
      122 CALL                             R7 1 1
      123 NAMECALL                         R5 R5 K16 ["format"]
      125 CALL                             R5 2 1
      126 GETUPVAL                         R6 9
      127 GETTABLEKS                       R6 R6 K17 ["FFlagDebugAssistantMcpCaptureLogging"]
      129 JUMPIFNOT                        R6 ; [+8]
      130 GETIMPORT                        R6 K19 [warn]
      132 LOADK                            R7 K20 ["[McpCaptureController] %*"]
      133 MOVE                             R9 R5
      134 NAMECALL                         R7 R7 K16 ["format"]
      136 CALL                             R7 2 1
      137 CALL                             R6 1 0
      138 RETURN                           R0 0

PROTO_33:
        0 DUPTABLE                         R1 K2 [{"enabled", "changed"}]
        1 GETUPVAL                         R3 0
        2 NOT                              R2 R3
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K3 ["isEnabled"]
        7 CALL                             R2 0 1
        8 SETTABLEKS                       R2 R1 K0 ["enabled"]
       10 JUMPIFNOT                        R0 ; [+2]
       11 LOADB                            R2 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K1 ["changed"]
       16 GETUPVAL                         R2 2
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 0
       19 GETIMPORT                        R3 K5 [pcall]
       21 LOADK                            R5 K6 ["notifications/roblox/captureState"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R1
       26 CALL                             R3 1 2
       27 JUMPIF                           R3 ; [+21]
       28 LOADK                            R5 K7 ["Failed to send notifications/roblox/captureState: %*"]
       29 FASTCALL1                        TOSTRING R4 ; [+3]
       30 MOVE                             R8 R4
       31 GETIMPORT                        R7 K9 [tostring]
       33 CALL                             R7 1 1
       34 NAMECALL                         R5 R5 K10 ["format"]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K11 ["FFlagDebugAssistantMcpCaptureLogging"]
       40 JUMPIFNOT                        R6 ; [+8]
       41 GETIMPORT                        R6 K13 [warn]
       43 LOADK                            R7 K14 ["[McpCaptureController] %*"]
       44 MOVE                             R9 R5
       45 NAMECALL                         R7 R7 K10 ["format"]
       47 CALL                             R7 2 1
       48 CALL                             R6 1 0
       49 RETURN                           R0 0

PROTO_34:
        0 DUPTABLE                         R0 K3 [{[1], ["changed"] = }]
        1 GETUPVAL                         R2 0
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K4 ["isEnabled"]
        7 CALL                             R1 0 1
        8 SETTABLEKS                       R1 R0 K0 ["enabled"]
       10 GETUPVAL                         R1 2
       11 JUMPIF                           R1 ; [+1]
       12 JUMP                             ; [+30]
       13 GETIMPORT                        R2 K6 [pcall]
       15 LOADK                            R4 K7 ["notifications/roblox/captureState"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R0
       20 CALL                             R2 1 2
       21 JUMPIF                           R2 ; [+21]
       22 LOADK                            R4 K8 ["Failed to send notifications/roblox/captureState: %*"]
       23 FASTCALL1                        TOSTRING R3 ; [+3]
       24 MOVE                             R7 R3
       25 GETIMPORT                        R6 K10 [tostring]
       27 CALL                             R6 1 1
       28 NAMECALL                         R4 R4 K11 ["format"]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K12 ["FFlagDebugAssistantMcpCaptureLogging"]
       34 JUMPIFNOT                        R5 ; [+8]
       35 GETIMPORT                        R5 K14 [warn]
       37 LOADK                            R6 K15 ["[McpCaptureController] %*"]
       38 MOVE                             R8 R4
       39 NAMECALL                         R6 R6 K11 ["format"]
       41 CALL                             R6 2 1
       42 CALL                             R5 1 0
       43 GETUPVAL                         R0 2
       44 JUMPIFNOT                        R0 ; [+9]
       45 GETUPVAL                         R0 0
       46 JUMPIF                           R0 ; [+7]
       47 GETIMPORT                        R0 K18 [task.spawn]
       49 GETUPVAL                         R1 1
       50 GETTABLEKS                       R1 R1 K19 ["loadAsync"]
       52 GETUPVAL                         R2 4
       53 CALL                             R0 2 0
       54 RETURN                           R0 0

PROTO_35:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R2 R0 K3 ["enabled"]
        9 FASTCALL1                        TYPEOF R2 ; [+2]
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFEQKS                       R1 K4 ["boolean"] ; [+2]
       15 RETURN                           R0 0
       16 GETIMPORT                        R1 K7 [task.spawn]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K8 ["applyRemoteChangeAsync"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R4 R0 K3 ["enabled"]
       24 CALL                             R1 3 0
       25 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["callId"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["isEnabled"]
        6 CALL                             R2 0 1
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 1
       10 CALL                             R2 0 2
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 MOVE                             R8 R3
       16 CALL                             R4 4 1
       17 GETUPVAL                         R5 3
       18 JUMPIF                           R5 ; [+1]
       19 RETURN                           R0 0
       20 GETIMPORT                        R6 K3 [pcall]
       22 LOADK                            R8 K4 ["notifications/roblox/captureExecution"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R8
       26 CAPTURE                          VAL R4
       27 CALL                             R6 1 2
       28 JUMPIF                           R6 ; [+21]
       29 LOADK                            R8 K5 ["Failed to send notifications/roblox/captureExecution: %*"]
       30 FASTCALL1                        TOSTRING R7 ; [+3]
       31 MOVE                             R11 R7
       32 GETIMPORT                        R10 K7 [tostring]
       34 CALL                             R10 1 1
       35 NAMECALL                         R8 R8 K8 ["format"]
       37 CALL                             R8 2 1
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R9 R9 K9 ["FFlagDebugAssistantMcpCaptureLogging"]
       41 JUMPIFNOT                        R9 ; [+8]
       42 GETIMPORT                        R9 K11 [warn]
       44 LOADK                            R10 K12 ["[McpCaptureController] %*"]
       45 MOVE                             R12 R8
       46 NAMECALL                         R10 R10 K8 ["format"]
       48 CALL                             R10 2 1
       49 CALL                             R9 1 0
       50 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isEnabled"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["recordStudioToolExecution"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isEnabled"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["clear"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K3 [typeof]
       14 CALL                             R1 1 1
       15 JUMPIFEQKS                       R1 K4 ["table"] ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R1 R0 K5 ["payload"]
       20 GETTABLEKS                       R2 R0 K6 ["harness"]
       22 JUMPIFNOTEQKS                    R2 K7 ["claude_code"] ; [+13]
       24 FASTCALL1                        TYPEOF R1 ; [+3]
       25 MOVE                             R3 R1
       26 GETIMPORT                        R2 K3 [typeof]
       28 CALL                             R2 1 1
       29 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+6]
       31 GETTABLEKS                       R2 R1 K8 ["cursor_version"]
       33 JUMPIFEQKNIL                     R2 ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R2 R2 K9 ["FFlagDebugAssistantMcpCaptureLogging"]
       39 JUMPIFNOT                        R2 ; [+19]
       40 GETIMPORT                        R2 K11 [print]
       42 LOADK                            R3 K12 ["[McpCaptureController] received %*:%*"]
       43 GETTABLEKS                       R6 R0 K6 ["harness"]
       45 FASTCALL1                        TOSTRING R6 ; [+2]
       46 GETIMPORT                        R5 K14 [tostring]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R7 R0 K15 ["kind"]
       51 FASTCALL1                        TOSTRING R7 ; [+2]
       52 GETIMPORT                        R6 K14 [tostring]
       54 CALL                             R6 1 1
       55 NAMECALL                         R3 R3 K16 ["format"]
       57 CALL                             R3 3 1
       58 CALL                             R2 1 0
       59 GETUPVAL                         R2 1
       60 GETTABLEKS                       R2 R2 K17 ["ingestRecord"]
       62 MOVE                             R3 R0
       63 GETUPVAL                         R4 3
       64 CALL                             R2 2 0
       65 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 SUB                              R0 R1 R2
        4 LOADN                            R1 600
        5 JUMPIFNOTLE                      R1 R0 ; [+7]
        7 GETUPVAL                         R0 0
        8 CALL                             R0 0 1
        9 SETUPVAL                         R0 1
       10 GETUPVAL                         R0 2
       11 LOADB                            R1 1
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K0 ["isEnabled"]
       16 CALL                             R0 0 1
       17 JUMPIFNOT                        R0 ; [+5]
       18 GETUPVAL                         R0 4
       19 GETTABLEKS                       R0 R0 K1 ["flushExpired"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R0 4
       24 GETTABLEKS                       R0 R0 K2 ["clear"]
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_40:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETIMPORT                        R1 K2 [task.spawn]
        3 GETUPVAL                         R2 0
        4 CALL                             R1 1 0
        5 JUMP                             ; [+8]
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 1
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 2
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K3 ["clear"]
       13 CALL                             R1 0 0
       14 DUPTABLE                         R1 K7 [{["enabled"], ["changed"] = }]
       15 GETUPVAL                         R3 4
       16 NOT                              R2 R3
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R2 5
       19 GETTABLEKS                       R2 R2 K8 ["isEnabled"]
       21 CALL                             R2 0 1
       22 SETTABLEKS                       R2 R1 K4 ["enabled"]
       24 GETUPVAL                         R2 6
       25 JUMPIF                           R2 ; [+1]
       26 RETURN                           R0 0
       27 GETIMPORT                        R3 K10 [pcall]
       29 LOADK                            R5 K11 ["notifications/roblox/captureState"]
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R1
       34 CALL                             R3 1 2
       35 JUMPIF                           R3 ; [+21]
       36 LOADK                            R5 K12 ["Failed to send notifications/roblox/captureState: %*"]
       37 FASTCALL1                        TOSTRING R4 ; [+3]
       38 MOVE                             R8 R4
       39 GETIMPORT                        R7 K14 [tostring]
       41 CALL                             R7 1 1
       42 NAMECALL                         R5 R5 K15 ["format"]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 7
       46 GETTABLEKS                       R6 R6 K16 ["FFlagDebugAssistantMcpCaptureLogging"]
       48 JUMPIFNOT                        R6 ; [+8]
       49 GETIMPORT                        R6 K18 [warn]
       51 LOADK                            R7 K19 ["[McpCaptureController] %*"]
       52 MOVE                             R9 R5
       53 NAMECALL                         R7 R7 K15 ["format"]
       55 CALL                             R7 2 1
       56 CALL                             R6 1 0
       57 RETURN                           R0 0

PROTO_41:
        0 DUPTABLE                         R0 K3 [{[1], ["changed"] = True}]
        1 GETUPVAL                         R2 0
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K4 ["isEnabled"]
        7 CALL                             R1 0 1
        8 SETTABLEKS                       R1 R0 K0 ["enabled"]
       10 GETUPVAL                         R1 2
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R2 K6 [pcall]
       15 LOADK                            R4 K7 ["notifications/roblox/captureState"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R0
       20 CALL                             R2 1 2
       21 JUMPIF                           R2 ; [+21]
       22 LOADK                            R4 K8 ["Failed to send notifications/roblox/captureState: %*"]
       23 FASTCALL1                        TOSTRING R3 ; [+3]
       24 MOVE                             R7 R3
       25 GETIMPORT                        R6 K10 [tostring]
       27 CALL                             R6 1 1
       28 NAMECALL                         R4 R4 K11 ["format"]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K12 ["FFlagDebugAssistantMcpCaptureLogging"]
       34 JUMPIFNOT                        R5 ; [+8]
       35 GETIMPORT                        R5 K14 [warn]
       37 LOADK                            R6 K15 ["[McpCaptureController] %*"]
       38 MOVE                             R8 R4
       39 NAMECALL                         R6 R6 K11 ["format"]
       41 CALL                             R6 2 1
       42 CALL                             R5 1 0
       43 RETURN                           R0 0

PROTO_42:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["serverStateObservable"]
        3 NAMECALL                         R1 R1 K1 ["get"]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K2 ["connected"] ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETIMPORT                        R0 K5 [task.spawn]
       13 GETUPVAL                         R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["readSavedAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R1 ; [+17]
        6 JUMPIFNOTEQKNIL                  R0 ; [+16]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["isServerEnabledAsync"]
       11 JUMPIFNOT                        R2 ; [+11]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["isServerEnabledAsync"]
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+6]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K2 ["saveDefaultAsync"]
       20 GETUPVAL                         R3 1
       21 LOADB                            R4 0
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 3
       24 JUMPIFNOT                        R2 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K3 ["loadAsync"]
       29 GETUPVAL                         R3 1
       30 CALL                             R2 1 2
       31 JUMPIFNOT                        R3 ; [+6]
       32 JUMPIF                           R2 ; [+5]
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K4 ["cleanUpIfInstalledAsync"]
       36 GETUPVAL                         R5 1
       37 CALL                             R4 1 0
       38 DUPTABLE                         R4 K8 [{["enabled"], ["changed"] = }]
       39 GETUPVAL                         R6 3
       40 NOT                              R5 R6
       41 JUMPIFNOT                        R5 ; [+4]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K9 ["isEnabled"]
       45 CALL                             R5 0 1
       46 SETTABLEKS                       R5 R4 K5 ["enabled"]
       48 GETUPVAL                         R5 5
       49 JUMPIF                           R5 ; [+1]
       50 JUMP                             ; [+30]
       51 GETIMPORT                        R6 K11 [pcall]
       53 LOADK                            R8 K12 ["notifications/roblox/captureState"]
       54 NEWCLOSURE                       R7 P0
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R4
       58 CALL                             R6 1 2
       59 JUMPIF                           R6 ; [+21]
       60 LOADK                            R8 K13 ["Failed to send notifications/roblox/captureState: %*"]
       61 FASTCALL1                        TOSTRING R7 ; [+3]
       62 MOVE                             R11 R7
       63 GETIMPORT                        R10 K15 [tostring]
       65 CALL                             R10 1 1
       66 NAMECALL                         R8 R8 K16 ["format"]
       68 CALL                             R8 2 1
       69 GETUPVAL                         R9 6
       70 GETTABLEKS                       R9 R9 K17 ["FFlagDebugAssistantMcpCaptureLogging"]
       72 JUMPIFNOT                        R9 ; [+8]
       73 GETIMPORT                        R9 K19 [warn]
       75 LOADK                            R10 K20 ["[McpCaptureController] %*"]
       76 MOVE                             R12 R8
       77 NAMECALL                         R10 R10 K16 ["format"]
       79 CALL                             R10 2 1
       80 CALL                             R9 1 0
       81 GETUPVAL                         R5 7
       82 GETUPVAL                         R6 0
       83 GETTABLEKS                       R6 R6 K21 ["enabledObservable"]
       85 NEWCLOSURE                       R8 P1
       86 CAPTURE                          UPVAL U8
       87 CAPTURE                          UPVAL U9
       88 CAPTURE                          UPVAL U10
       89 CAPTURE                          UPVAL U11
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          UPVAL U0
       92 CAPTURE                          UPVAL U5
       93 CAPTURE                          UPVAL U6
       94 NAMECALL                         R6 R6 K22 ["connect"]
       96 CALL                             R6 2 -1
       97 FASTCALL                         TABLE_INSERT ; [+2]
       98 GETIMPORT                        R4 K25 [table.insert]
      100 CALL                             R4 -1 0
      101 GETUPVAL                         R5 7
      102 GETUPVAL                         R6 0
      103 GETTABLEKS                       R6 R6 K26 ["changedHere"]
      105 NEWCLOSURE                       R8 P2
      106 CAPTURE                          UPVAL U3
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          UPVAL U6
      110 NAMECALL                         R6 R6 K27 ["Connect"]
      112 CALL                             R6 2 -1
      113 FASTCALL                         TABLE_INSERT ; [+2]
      114 GETIMPORT                        R4 K25 [table.insert]
      116 CALL                             R4 -1 0
      117 GETUPVAL                         R5 7
      118 GETUPVAL                         R6 2
      119 GETTABLEKS                       R6 R6 K28 ["setupInstructionsObservable"]
      121 NEWCLOSURE                       R8 P3
      122 CAPTURE                          UPVAL U8
      123 LOADB                            R9 1
      124 NAMECALL                         R6 R6 K22 ["connect"]
      126 CALL                             R6 3 -1
      127 FASTCALL                         TABLE_INSERT ; [+2]
      128 GETIMPORT                        R4 K25 [table.insert]
      130 CALL                             R4 -1 0
      131 GETUPVAL                         R5 7
      132 GETUPVAL                         R6 2
      133 GETTABLEKS                       R6 R6 K29 ["serverStateObservable"]
      135 NEWCLOSURE                       R8 P4
      136 CAPTURE                          UPVAL U2
      137 CAPTURE                          UPVAL U8
      138 NAMECALL                         R6 R6 K22 ["connect"]
      140 CALL                             R6 2 -1
      141 FASTCALL                         TABLE_INSERT ; [+2]
      142 GETIMPORT                        R4 K25 [table.insert]
      144 CALL                             R4 -1 0
      145 GETUPVAL                         R4 3
      146 JUMPIF                           R4 ; [+34]
      147 GETIMPORT                        R4 K32 [task.wait]
      149 GETUPVAL                         R5 12
      150 CALL                             R4 1 0
      151 GETUPVAL                         R4 3
      152 JUMPIF                           R4 ; [+27]
      153 GETUPVAL                         R5 13
      154 CALL                             R5 0 1
      155 GETUPVAL                         R6 14
      156 SUB                              R4 R5 R6
      157 LOADN                            R5 600
      158 JUMPIFNOTLE                      R5 R4 ; [+7]
      160 GETUPVAL                         R4 13
      161 CALL                             R4 0 1
      162 SETUPVAL                         R4 14
      163 GETUPVAL                         R4 8
      164 LOADB                            R5 1
      165 CALL                             R4 1 0
      166 GETUPVAL                         R4 0
      167 GETTABLEKS                       R4 R4 K9 ["isEnabled"]
      169 CALL                             R4 0 1
      170 JUMPIFNOT                        R4 ; [+5]
      171 GETUPVAL                         R4 11
      172 GETTABLEKS                       R4 R4 K33 ["flushExpired"]
      174 CALL                             R4 0 0
      175 JUMP                             ; [+4]
      176 GETUPVAL                         R4 11
      177 GETTABLEKS                       R4 R4 K34 ["clear"]
      179 CALL                             R4 0 0
      180 JUMPBACK                         ; [-36]
      181 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 3
        7 DUPTABLE                         R2 K5 [{"onExecution", "onRecord", "onRemoteExecution", "onSharingChanged", "onNotifierChanged"}]
        8 GETUPVAL                         R3 4
        9 SETTABLEKS                       R3 R2 K0 ["onExecution"]
       11 GETUPVAL                         R3 5
       12 SETTABLEKS                       R3 R2 K1 ["onRecord"]
       14 GETUPVAL                         R3 6
       15 SETTABLEKS                       R3 R2 K2 ["onRemoteExecution"]
       17 GETUPVAL                         R3 7
       18 SETTABLEKS                       R3 R2 K3 ["onSharingChanged"]
       20 GETUPVAL                         R3 8
       21 SETTABLEKS                       R3 R2 K4 ["onNotifierChanged"]
       23 SETTABLE                         R2 R0 R1
       24 GETIMPORT                        R0 K8 [task.spawn]
       26 NEWCLOSURE                       R1 P0
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U10
       29 CAPTURE                          UPVAL U11
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U12
       32 CAPTURE                          UPVAL U13
       33 CAPTURE                          UPVAL U14
       34 CAPTURE                          UPVAL U15
       35 CAPTURE                          UPVAL U16
       36 CAPTURE                          UPVAL U17
       37 CAPTURE                          UPVAL U18
       38 CAPTURE                          UPVAL U19
       39 CAPTURE                          UPVAL U20
       40 CAPTURE                          UPVAL U21
       41 CAPTURE                          UPVAL U22
       42 CALL                             R0 1 1
       43 SETUPVAL                         R0 0
       44 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+45]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 DUPTABLE                         R0 K3 [{[1], ["changed"] = }]
        5 GETUPVAL                         R2 0
        6 NOT                              R1 R2
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K4 ["isEnabled"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K0 ["enabled"]
       14 GETUPVAL                         R1 2
       15 JUMPIF                           R1 ; [+1]
       16 JUMP                             ; [+30]
       17 GETIMPORT                        R2 K6 [pcall]
       19 LOADK                            R4 K7 ["notifications/roblox/captureState"]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R0
       24 CALL                             R2 1 2
       25 JUMPIF                           R2 ; [+21]
       26 LOADK                            R4 K8 ["Failed to send notifications/roblox/captureState: %*"]
       27 FASTCALL1                        TOSTRING R3 ; [+3]
       28 MOVE                             R7 R3
       29 GETIMPORT                        R6 K10 [tostring]
       31 CALL                             R6 1 1
       32 NAMECALL                         R4 R4 K11 ["format"]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K12 ["FFlagDebugAssistantMcpCaptureLogging"]
       38 JUMPIFNOT                        R5 ; [+8]
       39 GETIMPORT                        R5 K14 [warn]
       41 LOADK                            R6 K15 ["[McpCaptureController] %*"]
       42 MOVE                             R8 R4
       43 NAMECALL                         R6 R6 K11 ["format"]
       45 CALL                             R6 2 1
       46 CALL                             R5 1 0
       47 GETUPVAL                         R0 4
       48 GETUPVAL                         R1 5
       49 LOADNIL                          R2
       50 SETTABLE                         R2 R0 R1
       51 GETUPVAL                         R0 6
       52 LOADNIL                          R1
       53 LOADNIL                          R2
       54 FORGPREP                         R0
       55 NAMECALL                         R5 R4 K16 ["Disconnect"]
       57 CALL                             R5 1 0
       58 FORGLOOP                         R0 2 ; [-4]
       60 GETIMPORT                        R0 K19 [table.clear]
       62 GETUPVAL                         R1 6
       63 CALL                             R0 1 0
       64 GETUPVAL                         R0 7
       65 JUMPIFNOT                        R0 ; [+12]
       66 GETIMPORT                        R0 K22 [coroutine.running]
       68 CALL                             R0 0 1
       69 GETUPVAL                         R1 7
       70 JUMPIFEQ                         R0 R1 ; [+7]
       72 GETIMPORT                        R0 K6 [pcall]
       74 GETIMPORT                        R1 K25 [task.cancel]
       76 GETUPVAL                         R2 7
       77 CALL                             R0 2 0
       78 LOADNIL                          R0
       79 SETUPVAL                         R0 7
       80 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 JUMPIF                           R1 ; [+4]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETTABLEKS                       R2 R0 K2 ["store"]
        9 JUMPIF                           R2 ; [+4]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["getDefault"]
       13 CALL                             R2 0 1
       14 GETTABLEKS                       R3 R0 K4 ["intervalSeconds"]
       16 JUMPIF                           R3 ; [+3]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K5 ["FIntAssistantMcpCaptureIntervalSeconds"]
       20 GETTABLEKS                       R4 R0 K6 ["now"]
       22 JUMPIF                           R4 ; [+2]
       23 GETIMPORT                        R4 K9 [os.clock]
       25 GETTABLEKS                       R5 R0 K10 ["getPlace"]
       27 JUMPIF                           R5 ; [+3]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 MOVE                             R6 R4
       32 CALL                             R6 0 1
       33 NEWTABLE                         R7 0 0
       35 LOADNIL                          R8
       36 LOADB                            R9 0
       37 LOADB                            R10 0
       38 LOADNIL                          R11
       39 LOADNIL                          R12
       40 NEWTABLE                         R13 0 0
       42 NEWCLOSURE                       R14 P1
       43 CAPTURE                          VAL R0
       44 NEWCLOSURE                       R15 P2
       45 CAPTURE                          VAL R0
       46 NEWCLOSURE                       R16 P3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R1
       49 NEWCLOSURE                       R17 P4
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          REF R12
       54 NEWCLOSURE                       R18 P5
       55 CAPTURE                          REF R9
       56 CAPTURE                          REF R10
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          REF R11
       61 CAPTURE                          VAL R1
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          REF R12
       64 CAPTURE                          UPVAL U2
       65 NEWCLOSURE                       R19 P6
       66 CAPTURE                          REF R9
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          UPVAL U2
       70 NEWCLOSURE                       R20 P7
       71 CAPTURE                          REF R9
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          UPVAL U7
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          VAL R1
       76 NEWCLOSURE                       R21 P8
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          VAL R1
       79 NEWCLOSURE                       R22 P9
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          VAL R5
       82 CAPTURE                          UPVAL U8
       83 CAPTURE                          UPVAL U7
       84 CAPTURE                          UPVAL U2
       85 NEWCLOSURE                       R23 P10
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          UPVAL U9
       88 CAPTURE                          VAL R2
       89 NEWCLOSURE                       R24 P11
       90 CAPTURE                          UPVAL U6
       91 CAPTURE                          VAL R2
       92 CAPTURE                          UPVAL U2
       93 CAPTURE                          REF R12
       94 NEWCLOSURE                       R25 P12
       95 CAPTURE                          VAL R4
       96 CAPTURE                          REF R6
       97 CAPTURE                          VAL R18
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          VAL R2
      100 NEWCLOSURE                       R26 P13
      101 CAPTURE                          REF R8
      102 CAPTURE                          REF R9
      103 CAPTURE                          UPVAL U10
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R22
      106 CAPTURE                          VAL R24
      107 CAPTURE                          VAL R23
      108 CAPTURE                          VAL R21
      109 CAPTURE                          VAL R20
      110 CAPTURE                          UPVAL U6
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U4
      114 CAPTURE                          UPVAL U7
      115 CAPTURE                          UPVAL U2
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R18
      118 CAPTURE                          REF R11
      119 CAPTURE                          REF R12
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R4
      123 CAPTURE                          REF R6
      124 NEWCLOSURE                       R27 P14
      125 CAPTURE                          REF R9
      126 CAPTURE                          UPVAL U6
      127 CAPTURE                          UPVAL U7
      128 CAPTURE                          UPVAL U2
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R7
      132 CAPTURE                          REF R8
      133 DUPTABLE                         R28 K19 [{"init", "destroy", "pollAsync", "recordStudioToolExecutionAsync", "receiveRecord", "receiveExecution", "receiveSharingChange", "sendState"}]
      134 SETTABLEKS                       R26 R28 K11 ["init"]
      136 SETTABLEKS                       R27 R28 K12 ["destroy"]
      138 SETTABLEKS                       R25 R28 K13 ["pollAsync"]
      140 SETTABLEKS                       R22 R28 K14 ["recordStudioToolExecutionAsync"]
      142 SETTABLEKS                       R24 R28 K15 ["receiveRecord"]
      144 SETTABLEKS                       R23 R28 K16 ["receiveExecution"]
      146 SETTABLEKS                       R21 R28 K17 ["receiveSharingChange"]
      148 SETTABLEKS                       R19 R28 K18 ["sendState"]
      150 CLOSEUPVALS                      R6
      151 RETURN                           R28 1

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
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["ModelContextProtocol"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Signal"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Flags"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K16 ["Parent"]
       47 GETTABLEKS                       R7 R7 K17 ["McpCaptureRedactor"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETIMPORT                        R8 K1 [script]
       54 GETTABLEKS                       R8 R8 K16 ["Parent"]
       56 GETTABLEKS                       R8 R8 K18 ["McpCaptureStore"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R2 K19 ["Guest"]
       61 GETTABLEKS                       R8 R8 K20 ["Environment"]
       63 GETTABLEKS                       R9 R2 K21 ["IntegrationManagement"]
       65 GETTABLEKS                       R9 R9 K22 ["McpCaptureConsent"]
       67 GETTABLEKS                       R10 R2 K21 ["IntegrationManagement"]
       69 GETTABLEKS                       R10 R10 K23 ["McpCaptureHooks"]
       71 GETTABLEKS                       R11 R2 K24 ["Tools"]
       73 GETTABLEKS                       R11 R11 K25 ["ToolTypes"]
       75 GETTABLEKS                       R11 R11 K26 ["ToolNames"]
       77 GETTABLEKS                       R12 R2 K27 ["Utils"]
       79 GETTABLEKS                       R12 R12 K28 ["truncateUtf8Safe"]
       81 NEWTABLE                         R13 0 0
       83 LOADNIL                          R14
       84 NEWTABLE                         R15 0 0
       86 LOADB                            R16 0
       87 DUPCLOSURE                       R17 K29 [PROTO_0]
       88 CAPTURE                          VAL R5
       89 DUPCLOSURE                       R18 K30 [PROTO_2]
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R5
       92 NEWCLOSURE                       R19 P2
       93 CAPTURE                          REF R14
       94 CAPTURE                          VAL R5
       95 NEWCLOSURE                       R20 P3
       96 CAPTURE                          REF R14
       97 CAPTURE                          VAL R18
       98 NEWCLOSURE                       R21 P4
       99 CAPTURE                          REF R14
      100 CAPTURE                          VAL R18
      101 NEWCLOSURE                       R22 P5
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R18
      104 CAPTURE                          REF R16
      105 NEWCLOSURE                       R23 P6
      106 CAPTURE                          VAL R15
      107 CAPTURE                          REF R16
      108 CAPTURE                          VAL R22
      109 DUPCLOSURE                       R24 K31 [PROTO_12]
      110 CAPTURE                          VAL R18
      111 DUPCLOSURE                       R25 K32 [PROTO_14]
      112 CAPTURE                          VAL R18
      113 DUPCLOSURE                       R26 K33 [PROTO_16]
      114 CAPTURE                          VAL R18
      115 DUPCLOSURE                       R27 K34 [PROTO_17]
      116 CAPTURE                          VAL R1
      117 DUPCLOSURE                       R28 K35 [PROTO_18]
      118 CAPTURE                          VAL R12
      119 DUPCLOSURE                       R29 K36 [PROTO_19]
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R1
      122 DUPCLOSURE                       R30 K37 [PROTO_20]
      123 DUPCLOSURE                       R31 K38 [PROTO_22]
      124 DUPCLOSURE                       R32 K39 [PROTO_23]
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R29
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R30
      131 DUPCLOSURE                       R33 K40 [PROTO_24]
      132 DUPCLOSURE                       R34 K41 [PROTO_25]
      133 NEWCLOSURE                       R35 P18
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R31
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R34
      140 CAPTURE                          VAL R9
      141 CAPTURE                          REF R14
      142 CAPTURE                          VAL R32
      143 CAPTURE                          VAL R33
      144 CAPTURE                          VAL R13
      145 DUPTABLE                         R36 K58 [{["new"], ["buildExecution"], ["setNotifier"], ["clearNotifier"], ["recordStudioToolExecution"], ["receiveRecord"], ["receiveExecution"], ["receiveSharingChange"], ["CAPTURE_RECORD_METHOD"] = "notifications/roblox/captureRecord", ["CAPTURE_EXECUTION_METHOD"] = "notifications/roblox/captureExecution", ["CAPTURE_STATE_METHOD"] = "notifications/roblox/captureState", ["CAPTURE_SHARING_METHOD"] = "notifications/roblox/captureSharingChanged"}]
      146 SETTABLEKS                       R35 R36 K42 ["new"]
      148 SETTABLEKS                       R32 R36 K43 ["buildExecution"]
      150 SETTABLEKS                       R20 R36 K44 ["setNotifier"]
      152 SETTABLEKS                       R21 R36 K45 ["clearNotifier"]
      154 SETTABLEKS                       R23 R36 K46 ["recordStudioToolExecution"]
      156 SETTABLEKS                       R24 R36 K47 ["receiveRecord"]
      158 SETTABLEKS                       R25 R36 K48 ["receiveExecution"]
      160 SETTABLEKS                       R26 R36 K49 ["receiveSharingChange"]
      162 CLOSEUPVALS                      R14
      163 RETURN                           R36 1
