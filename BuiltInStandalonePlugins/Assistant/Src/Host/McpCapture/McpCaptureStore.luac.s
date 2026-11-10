PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R1 K2 [print]
        7 LOADK                            R2 K3 ["[McpCaptureStore] %*"]
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 1
       12 GETVARARGS                       R3 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R2 K3 ["[McpCaptureStore] %*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\0"]
        4 LOADK                            R4 K4 [" | "]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R1 K0 ["nil"]
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 LOADN                            R3 2048
        7 CALL                             R1 2 2
        8 JUMPIFNOT                        R2 ; [+9]
        9 LOADK                            R3 K1 ["%*... (%* more bytes)"]
       10 MOVE                             R5 R1
       11 LENGTH                           R7 R0
       12 LENGTH                           R8 R1
       13 SUB                              R6 R7 R8
       14 NAMECALL                         R3 R3 K2 ["format"]
       16 CALL                             R3 3 1
       17 RETURN                           R3 1
       18 MOVE                             R3 R1
       19 RETURN                           R3 1

PROTO_4:
        0 NEWTABLE                         R1 0 9
        2 LOADK                            R2 K0 ["  harness:          %*"]
        3 GETTABLEKS                       R4 R0 K1 ["harness"]
        5 NAMECALL                         R2 R2 K2 ["format"]
        7 CALL                             R2 2 1
        8 LOADK                            R3 K3 ["  harnessSessionId: %*"]
        9 GETTABLEKS                       R5 R0 K4 ["harnessSessionId"]
       11 NAMECALL                         R3 R3 K2 ["format"]
       13 CALL                             R3 2 1
       14 LOADK                            R4 K5 ["  harnessPromptId:  %*"]
       15 GETTABLEKS                       R7 R0 K6 ["harnessPromptId"]
       17 FASTCALL1                        TOSTRING R7 ; [+2]
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R4 R4 K2 ["format"]
       23 CALL                             R4 2 1
       24 LOADK                            R5 K9 ["  placeId:          %*"]
       25 GETTABLEKS                       R8 R0 K10 ["placeId"]
       27 FASTCALL1                        TOSTRING R8 ; [+2]
       28 GETIMPORT                        R7 K8 [tostring]
       30 CALL                             R7 1 1
       31 NAMECALL                         R5 R5 K2 ["format"]
       33 CALL                             R5 2 1
       34 LOADK                            R6 K11 ["  universeId:       %*"]
       35 GETTABLEKS                       R9 R0 K12 ["universeId"]
       37 FASTCALL1                        TOSTRING R9 ; [+2]
       38 GETIMPORT                        R8 K8 [tostring]
       40 CALL                             R8 1 1
       41 NAMECALL                         R6 R6 K2 ["format"]
       43 CALL                             R6 2 1
       44 LOADK                            R7 K13 ["  truncated:        %*"]
       45 GETTABLEKS                       R10 R0 K14 ["truncated"]
       47 FASTCALL1                        TOSTRING R10 ; [+2]
       48 GETIMPORT                        R9 K8 [tostring]
       50 CALL                             R9 1 1
       51 NAMECALL                         R7 R7 K2 ["format"]
       53 CALL                             R7 2 1
       54 LOADK                            R8 K15 ["  redacted:         %*"]
       55 GETTABLEKS                       R11 R0 K16 ["redacted"]
       57 FASTCALL1                        TOSTRING R11 ; [+2]
       58 GETIMPORT                        R10 K8 [tostring]
       60 CALL                             R10 1 1
       61 NAMECALL                         R8 R8 K2 ["format"]
       63 CALL                             R8 2 1
       64 LOADK                            R9 K17 ["  prompt:           %*"]
       65 GETTABLEKS                       R12 R0 K18 ["prompt"]
       67 JUMPIFNOTEQKNIL                  R12 ; [+3]
       69 LOADK                            R11 K19 ["nil"]
       70 JUMP                             ; [+16]
       71 GETUPVAL                         R13 0
       72 MOVE                             R14 R12
       73 LOADN                            R15 2048
       74 CALL                             R13 2 2
       75 JUMPIFNOT                        R14 ; [+10]
       76 LOADK                            R15 K20 ["%*... (%* more bytes)"]
       77 MOVE                             R17 R13
       78 LENGTH                           R19 R12
       79 LENGTH                           R20 R13
       80 SUB                              R18 R19 R20
       81 NAMECALL                         R15 R15 K2 ["format"]
       83 CALL                             R15 3 1
       84 MOVE                             R11 R15
       85 JUMP                             ; [+1]
       86 MOVE                             R11 R13
       87 NAMECALL                         R9 R9 K2 ["format"]
       89 CALL                             R9 2 1
       90 LOADK                            R10 K21 ["  toolCalls (%*):"]
       91 GETTABLEKS                       R13 R0 K22 ["toolCalls"]
       93 LENGTH                           R12 R13
       94 NAMECALL                         R10 R10 K2 ["format"]
       96 CALL                             R10 2 1
       97 SETLIST                          R1 R2 9 [1]
       99 GETTABLEKS                       R2 R0 K22 ["toolCalls"]
      101 LOADNIL                          R3
      102 LOADNIL                          R4
      103 FORGPREP                         R2
      104 LOADK                            R9 K23 ["    [%*] %*"]
      105 MOVE                             R11 R5
      106 GETTABLEKS                       R12 R6 K24 ["toolName"]
      108 NAMECALL                         R9 R9 K2 ["format"]
      110 CALL                             R9 3 1
      111 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      113 MOVE                             R8 R1
      114 GETIMPORT                        R7 K27 [table.insert]
      116 CALL                             R7 2 0
      117 GETTABLEKS                       R7 R6 K28 ["toolId"]
      119 JUMPIFNOTEQKNIL                  R7 ; [+9]
      121 FASTCALL2K                       TABLE_INSERT R1 K29 ; [+5]
      123 MOVE                             R8 R1
      124 LOADK                            R9 K29 ["        (not paired with a Studio execution: name only)"]
      125 GETIMPORT                        R7 K27 [table.insert]
      127 CALL                             R7 2 0
      128 JUMP                             ; [+146]
      129 LOADK                            R9 K30 ["        toolId:     %*"]
      130 GETTABLEKS                       R11 R6 K28 ["toolId"]
      132 NAMECALL                         R9 R9 K2 ["format"]
      134 CALL                             R9 2 1
      135 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      137 MOVE                             R8 R1
      138 GETIMPORT                        R7 K27 [table.insert]
      140 CALL                             R7 2 0
      141 LOADK                            R9 K31 ["        placeId:    %*"]
      142 GETTABLEKS                       R12 R6 K10 ["placeId"]
      144 FASTCALL1                        TOSTRING R12 ; [+2]
      145 GETIMPORT                        R11 K8 [tostring]
      147 CALL                             R11 1 1
      148 NAMECALL                         R9 R9 K2 ["format"]
      150 CALL                             R9 2 1
      151 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      153 MOVE                             R8 R1
      154 GETIMPORT                        R7 K27 [table.insert]
      156 CALL                             R7 2 0
      157 LOADK                            R9 K32 ["        universeId: %*"]
      158 GETTABLEKS                       R12 R6 K12 ["universeId"]
      160 FASTCALL1                        TOSTRING R12 ; [+2]
      161 GETIMPORT                        R11 K8 [tostring]
      163 CALL                             R11 1 1
      164 NAMECALL                         R9 R9 K2 ["format"]
      166 CALL                             R9 2 1
      167 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      169 MOVE                             R8 R1
      170 GETIMPORT                        R7 K27 [table.insert]
      172 CALL                             R7 2 0
      173 LOADK                            R9 K33 ["        isError:    %*   truncated: %*"]
      174 GETTABLEKS                       R12 R6 K34 ["isError"]
      176 FASTCALL1                        TOSTRING R12 ; [+2]
      177 GETIMPORT                        R11 K8 [tostring]
      179 CALL                             R11 1 1
      180 GETTABLEKS                       R13 R6 K14 ["truncated"]
      182 FASTCALL1                        TOSTRING R13 ; [+2]
      183 GETIMPORT                        R12 K8 [tostring]
      185 CALL                             R12 1 1
      186 NAMECALL                         R9 R9 K2 ["format"]
      188 CALL                             R9 3 1
      189 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      191 MOVE                             R8 R1
      192 GETIMPORT                        R7 K27 [table.insert]
      194 CALL                             R7 2 0
      195 LOADK                            R9 K35 ["        redacted:   %*"]
      196 GETTABLEKS                       R12 R6 K16 ["redacted"]
      198 FASTCALL1                        TOSTRING R12 ; [+2]
      199 GETIMPORT                        R11 K8 [tostring]
      201 CALL                             R11 1 1
      202 NAMECALL                         R9 R9 K2 ["format"]
      204 CALL                             R9 2 1
      205 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      207 MOVE                             R8 R1
      208 GETIMPORT                        R7 K27 [table.insert]
      210 CALL                             R7 2 0
      211 LOADK                            R9 K36 ["        arguments:  %*"]
      212 GETTABLEKS                       R12 R6 K37 ["arguments"]
      214 JUMPIFNOTEQKNIL                  R12 ; [+3]
      216 LOADK                            R11 K19 ["nil"]
      217 JUMP                             ; [+16]
      218 GETUPVAL                         R13 0
      219 MOVE                             R14 R12
      220 LOADN                            R15 2048
      221 CALL                             R13 2 2
      222 JUMPIFNOT                        R14 ; [+10]
      223 LOADK                            R15 K20 ["%*... (%* more bytes)"]
      224 MOVE                             R17 R13
      225 LENGTH                           R19 R12
      226 LENGTH                           R20 R13
      227 SUB                              R18 R19 R20
      228 NAMECALL                         R15 R15 K2 ["format"]
      230 CALL                             R15 3 1
      231 MOVE                             R11 R15
      232 JUMP                             ; [+1]
      233 MOVE                             R11 R13
      234 NAMECALL                         R9 R9 K2 ["format"]
      236 CALL                             R9 2 1
      237 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      239 MOVE                             R8 R1
      240 GETIMPORT                        R7 K27 [table.insert]
      242 CALL                             R7 2 0
      243 LOADK                            R9 K38 ["        result:     %*"]
      244 GETTABLEKS                       R12 R6 K39 ["result"]
      246 JUMPIFNOTEQKNIL                  R12 ; [+3]
      248 LOADK                            R11 K19 ["nil"]
      249 JUMP                             ; [+16]
      250 GETUPVAL                         R13 0
      251 MOVE                             R14 R12
      252 LOADN                            R15 2048
      253 CALL                             R13 2 2
      254 JUMPIFNOT                        R14 ; [+10]
      255 LOADK                            R15 K20 ["%*... (%* more bytes)"]
      256 MOVE                             R17 R13
      257 LENGTH                           R19 R12
      258 LENGTH                           R20 R13
      259 SUB                              R18 R19 R20
      260 NAMECALL                         R15 R15 K2 ["format"]
      262 CALL                             R15 3 1
      263 MOVE                             R11 R15
      264 JUMP                             ; [+1]
      265 MOVE                             R11 R13
      266 NAMECALL                         R9 R9 K2 ["format"]
      268 CALL                             R9 2 1
      269 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      271 MOVE                             R8 R1
      272 GETIMPORT                        R7 K27 [table.insert]
      274 CALL                             R7 2 0
      275 FORGLOOP                         R2 2 ; [-172]
      277 GETIMPORT                        R2 K41 [table.concat]
      279 MOVE                             R3 R1
      280 LOADK                            R4 K42 ["\n"]
      281 CALL                             R2 2 -1
      282 RETURN                           R2 -1

PROTO_5:
        0 GETTABLE                         R2 R0 R1
        1 FASTCALL1                        TYPEOF R2 ; [+3]
        2 MOVE                             R4 R2
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+3]
        8 JUMPIFNOTEQKS                    R2 K3 [""] ; [+3]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 RETURN                           R2 1

PROTO_6:
        0 JUMPIF                           R0 ; [+2]
        1 LOADK                            R1 K0 ["unknown"]
        2 RETURN                           R1 1
        3 GETIMPORT                        R2 K3 [string.match]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K4 ["^mcp__.-__(.+)$"]
        7 CALL                             R2 2 1
        8 OR                               R1 R2 R0
        9 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETIMPORT                        R2 K4 [string.lower]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 LOADK                            R3 K5 ["[^%w]"]
        7 LOADK                            R4 K6 [""]
        8 CALL                             R1 3 1
        9 RETURN                           R1 1

PROTO_8:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 0
        2 RETURN                           R2 1
        3 GETIMPORT                        R2 K2 [string.gsub]
        5 GETIMPORT                        R3 K4 [string.lower]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 LOADK                            R4 K5 ["[^%w]"]
       10 LOADK                            R5 K6 [""]
       11 CALL                             R2 3 1
       12 JUMPIFNOT                        R1 ; [+27]
       13 MOVE                             R3 R1
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETIMPORT                        R8 K2 [string.gsub]
       19 GETIMPORT                        R9 K4 [string.lower]
       21 MOVE                             R10 R7
       22 CALL                             R9 1 1
       23 LOADK                            R10 K5 ["[^%w]"]
       24 LOADK                            R11 K6 [""]
       25 CALL                             R8 3 1
       26 JUMPIFEQKS                       R8 K6 [""] ; [+11]
       28 GETIMPORT                        R9 K8 [string.find]
       30 MOVE                             R10 R2
       31 MOVE                             R11 R8
       32 LOADN                            R12 1
       33 LOADB                            R13 1
       34 CALL                             R9 4 1
       35 JUMPIFNOT                        R9 ; [+2]
       36 LOADB                            R9 1
       37 RETURN                           R9 1
       38 FORGLOOP                         R3 2 ; [-22]
       40 GETIMPORT                        R4 K8 [string.find]
       42 MOVE                             R5 R2
       43 LOADK                            R6 K9 ["robloxstudio"]
       44 LOADN                            R7 1
       45 LOADB                            R8 1
       46 CALL                             R4 4 1
       47 JUMPIFNOTEQKNIL                  R4 ; [+2]
       49 LOADB                            R3 0 +1
       50 LOADB                            R3 1
       51 RETURN                           R3 1

PROTO_9:
        0 JUMPIFNOTEQKS                    R0 K0 ["claude_code"] ; [+3]
        2 LOADK                            R1 K0 ["claude_code"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K1 ["cursor"] ; [+3]
        6 LOADK                            R1 K1 ["cursor"]
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKS                    R0 K2 ["codex"] ; [+3]
       10 LOADK                            R1 K2 ["codex"]
       11 RETURN                           R1 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_10:
        0 JUMPIFNOTEQKS                    R0 K0 ["cursor"] ; [+30]
        2 GETTABLEKS                       R3 R1 K1 ["conversation_id"]
        4 FASTCALL1                        TYPEOF R3 ; [+3]
        5 MOVE                             R5 R3
        6 GETIMPORT                        R4 K3 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+3]
       11 JUMPIFNOTEQKS                    R3 K5 [""] ; [+3]
       13 LOADNIL                          R2
       14 JUMP                             ; [+1]
       15 MOVE                             R2 R3
       16 GETTABLEKS                       R4 R1 K6 ["generation_id"]
       18 FASTCALL1                        TYPEOF R4 ; [+3]
       19 MOVE                             R6 R4
       20 GETIMPORT                        R5 K3 [typeof]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+3]
       25 JUMPIFNOTEQKS                    R4 K5 [""] ; [+3]
       27 LOADNIL                          R3
       28 RETURN                           R2 2
       29 MOVE                             R3 R4
       30 RETURN                           R2 2
       31 JUMPIFNOTEQKS                    R0 K7 ["codex"] ; [+30]
       33 GETTABLEKS                       R3 R1 K8 ["session_id"]
       35 FASTCALL1                        TYPEOF R3 ; [+3]
       36 MOVE                             R5 R3
       37 GETIMPORT                        R4 K3 [typeof]
       39 CALL                             R4 1 1
       40 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+3]
       42 JUMPIFNOTEQKS                    R3 K5 [""] ; [+3]
       44 LOADNIL                          R2
       45 JUMP                             ; [+1]
       46 MOVE                             R2 R3
       47 GETTABLEKS                       R4 R1 K9 ["turn_id"]
       49 FASTCALL1                        TYPEOF R4 ; [+3]
       50 MOVE                             R6 R4
       51 GETIMPORT                        R5 K3 [typeof]
       53 CALL                             R5 1 1
       54 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+3]
       56 JUMPIFNOTEQKS                    R4 K5 [""] ; [+3]
       58 LOADNIL                          R3
       59 RETURN                           R2 2
       60 MOVE                             R3 R4
       61 RETURN                           R2 2
       62 GETTABLEKS                       R3 R1 K8 ["session_id"]
       64 FASTCALL1                        TYPEOF R3 ; [+3]
       65 MOVE                             R5 R3
       66 GETIMPORT                        R4 K3 [typeof]
       68 CALL                             R4 1 1
       69 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+3]
       71 JUMPIFNOTEQKS                    R3 K5 [""] ; [+3]
       73 LOADNIL                          R2
       74 JUMP                             ; [+1]
       75 MOVE                             R2 R3
       76 GETTABLEKS                       R4 R1 K10 ["prompt_id"]
       78 FASTCALL1                        TYPEOF R4 ; [+3]
       79 MOVE                             R6 R4
       80 GETIMPORT                        R5 K3 [typeof]
       82 CALL                             R5 1 1
       83 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+3]
       85 JUMPIFNOTEQKS                    R4 K5 [""] ; [+3]
       87 LOADNIL                          R3
       88 RETURN                           R2 2
       89 MOVE                             R3 R4
       90 RETURN                           R2 2

PROTO_11:
        0 LOADK                            R3 K0 ["%*\0%*\0%*"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 4 1
        7 RETURN                           R3 1

PROTO_12:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 GETIMPORT                        R0 K2 [table.clear]
       14 GETUPVAL                         R1 3
       15 CALL                             R0 1 0
       16 GETIMPORT                        R0 K2 [table.clear]
       18 GETUPVAL                         R1 4
       19 CALL                             R0 1 0
       20 GETIMPORT                        R0 K2 [table.clear]
       22 GETUPVAL                         R1 5
       23 CALL                             R0 1 0
       24 GETIMPORT                        R0 K2 [table.clear]
       26 GETUPVAL                         R1 6
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["toolCalls"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["callId"]
        7 JUMPIFNOT                        R6 ; [+5]
        8 GETTABLEKS                       R6 R5 K2 ["execution"]
       10 JUMPIF                           R6 ; [+2]
       11 LOADB                            R6 1
       12 RETURN                           R6 1
       13 FORGLOOP                         R1 2 ; [-9]
       15 LOADB                            R1 0
       16 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["toolCalls"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["callId"]
        7 JUMPIFNOT                        R6 ; [+8]
        8 GETTABLEKS                       R6 R5 K2 ["execution"]
       10 JUMPIF                           R6 ; [+5]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R7 R5 K1 ["callId"]
       14 LOADNIL                          R8
       15 SETTABLE                         R8 R6 R7
       16 FORGLOOP                         R1 2 ; [-12]
       18 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R1 1
        4 GETTABLEKS                       R2 R0 K0 ["toolCalls"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 LOADN                            R7 50
       10 JUMPIFLT                         R7 R5 ; [+83]
       12 GETTABLEKS                       R7 R6 K1 ["execution"]
       14 JUMPIFNOT                        R7 ; [+3]
       15 GETTABLEKS                       R8 R7 K2 ["toolName"]
       17 JUMP                             ; [+11]
       18 GETTABLEKS                       R9 R6 K3 ["hookToolName"]
       20 JUMPIF                           R9 ; [+2]
       21 LOADK                            R8 K4 ["unknown"]
       22 JUMP                             ; [+6]
       23 GETIMPORT                        R10 K7 [string.match]
       25 MOVE                             R11 R9
       26 LOADK                            R12 K8 ["^mcp__.-__(.+)$"]
       27 CALL                             R10 2 1
       28 OR                               R8 R10 R9
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K9 ["FFlagAssistantMcpCaptureAllToolCalls"]
       32 JUMPIF                           R9 ; [+5]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K10 ["ExecuteLuau"]
       36 JUMPIFNOTEQ                      R8 R9 ; [+55]
       38 JUMPIFNOT                        R7 ; [+44]
       39 DUPTABLE                         R11 K19 [{"toolId", "toolName", "arguments", "result", "truncated", "redacted", "isError", "placeId", "universeId"}]
       40 GETTABLEKS                       R12 R7 K11 ["toolId"]
       42 SETTABLEKS                       R12 R11 K11 ["toolId"]
       44 GETTABLEKS                       R12 R7 K2 ["toolName"]
       46 SETTABLEKS                       R12 R11 K2 ["toolName"]
       48 GETTABLEKS                       R12 R7 K12 ["arguments"]
       50 SETTABLEKS                       R12 R11 K12 ["arguments"]
       52 GETTABLEKS                       R12 R7 K13 ["result"]
       54 SETTABLEKS                       R12 R11 K13 ["result"]
       56 GETTABLEKS                       R12 R7 K14 ["truncated"]
       58 SETTABLEKS                       R12 R11 K14 ["truncated"]
       60 GETTABLEKS                       R12 R7 K15 ["redacted"]
       62 SETTABLEKS                       R12 R11 K15 ["redacted"]
       64 GETTABLEKS                       R12 R7 K16 ["isError"]
       66 SETTABLEKS                       R12 R11 K16 ["isError"]
       68 GETTABLEKS                       R12 R7 K17 ["placeId"]
       70 SETTABLEKS                       R12 R11 K17 ["placeId"]
       72 GETTABLEKS                       R12 R7 K18 ["universeId"]
       74 SETTABLEKS                       R12 R11 K18 ["universeId"]
       76 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       78 MOVE                             R10 R1
       79 GETIMPORT                        R9 K22 [table.insert]
       81 CALL                             R9 2 0
       82 JUMP                             ; [+9]
       83 DUPTABLE                         R11 K24 [{["toolName"], ["truncated"] = False, ["redacted"] = False, ["isError"] = False}]
       84 SETTABLEKS                       R8 R11 K2 ["toolName"]
       86 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       88 MOVE                             R10 R1
       89 GETIMPORT                        R9 K22 [table.insert]
       91 CALL                             R9 2 0
       92 FORGLOOP                         R2 2 ; [-84]
       94 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_17:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K2 [table.remove]
        4 GETUPVAL                         R1 1
        5 LOADN                            R2 1
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+28]
        8 GETIMPORT                        R1 K4 [pcall]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 2
       13 JUMPIF                           R1 ; [+21]
       14 LOADK                            R3 K5 ["Failed to redact prompt: %*"]
       15 FASTCALL1                        TOSTRING R2 ; [+3]
       16 MOVE                             R6 R2
       17 GETIMPORT                        R5 K7 [tostring]
       19 CALL                             R5 1 1
       20 NAMECALL                         R3 R3 K8 ["format"]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K9 ["FFlagDebugAssistantMcpCaptureLogging"]
       26 JUMPIFNOT                        R4 ; [+8]
       27 GETIMPORT                        R4 K11 [warn]
       29 LOADK                            R5 K12 ["[McpCaptureStore] %*"]
       30 MOVE                             R7 R3
       31 NAMECALL                         R5 R5 K8 ["format"]
       33 CALL                             R5 2 1
       34 CALL                             R4 1 0
       35 JUMPBACK                         ; [-34]
       36 LOADB                            R0 0
       37 SETUPVAL                         R0 0
       38 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 JUMPIF                           R1 ; [+4]
        9 GETIMPORT                        R1 K5 [task.spawn]
       11 GETUPVAL                         R2 2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["uploadPrompt"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["redactPrefix"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["prompt"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["maxPromptLength"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["newTimeSlicer"]
       12 GETUPVAL                         R4 3
       13 CALL                             R3 1 -1
       14 CALL                             R0 -1 3
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K4 ["isConsentEnabled"]
       18 CALL                             R3 0 1
       19 JUMPIF                           R3 ; [+4]
       20 GETUPVAL                         R3 4
       21 LOADK                            R4 K5 ["dropped prompt (sharing turned off while redacting)"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 DUPTABLE                         R3 K14 [{"harness", "harnessSessionId", "harnessPromptId", "prompt", "truncated", "redacted", "placeId", "universeId", "toolCalls"}]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K6 ["harness"]
       28 SETTABLEKS                       R4 R3 K6 ["harness"]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K15 ["sessionId"]
       33 SETTABLEKS                       R4 R3 K7 ["harnessSessionId"]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K16 ["promptId"]
       38 SETTABLEKS                       R4 R3 K8 ["harnessPromptId"]
       40 SETTABLEKS                       R0 R3 K1 ["prompt"]
       42 SETTABLEKS                       R2 R3 K9 ["truncated"]
       44 SETTABLEKS                       R1 R3 K10 ["redacted"]
       46 GETUPVAL                         R4 5
       47 SETTABLEKS                       R4 R3 K11 ["placeId"]
       49 GETUPVAL                         R4 6
       50 SETTABLEKS                       R4 R3 K12 ["universeId"]
       52 GETUPVAL                         R4 7
       53 SETTABLEKS                       R4 R3 K13 ["toolCalls"]
       55 GETUPVAL                         R4 8
       56 GETTABLEKS                       R4 R4 K17 ["FFlagDebugAssistantMcpCaptureLogging"]
       58 JUMPIFNOT                        R4 ; [+9]
       59 GETUPVAL                         R4 4
       60 LOADK                            R5 K18 ["upload\n%*"]
       61 GETUPVAL                         R7 9
       62 MOVE                             R8 R3
       63 CALL                             R7 1 1
       64 NAMECALL                         R5 R5 K19 ["format"]
       66 CALL                             R5 2 1
       67 CALL                             R4 1 0
       68 GETIMPORT                        R4 K21 [pcall]
       70 NEWCLOSURE                       R5 P0
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          VAL R3
       73 CALL                             R4 1 2
       74 JUMPIF                           R4 ; [+21]
       75 LOADK                            R6 K22 ["Failed to upload prompt: %*"]
       76 FASTCALL1                        TOSTRING R5 ; [+3]
       77 MOVE                             R9 R5
       78 GETIMPORT                        R8 K24 [tostring]
       80 CALL                             R8 1 1
       81 NAMECALL                         R6 R6 K19 ["format"]
       83 CALL                             R6 2 1
       84 GETUPVAL                         R7 8
       85 GETTABLEKS                       R7 R7 K17 ["FFlagDebugAssistantMcpCaptureLogging"]
       87 JUMPIFNOT                        R7 ; [+8]
       88 GETIMPORT                        R7 K26 [warn]
       90 LOADK                            R8 K27 ["[McpCaptureStore] %*"]
       91 MOVE                             R10 R6
       92 NAMECALL                         R8 R8 K19 ["format"]
       94 CALL                             R8 2 1
       95 CALL                             R7 1 0
       96 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETTABLEKS                       R5 R1 K0 ["toolCalls"]
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 GETTABLEKS                       R10 R9 K1 ["execution"]
       13 JUMPIFNOT                        R10 ; [+8]
       14 GETTABLEKS                       R11 R10 K2 ["placeId"]
       16 JUMPIFNOT                        R11 ; [+5]
       17 GETTABLEKS                       R3 R10 K2 ["placeId"]
       19 GETTABLEKS                       R4 R10 K3 ["universeId"]
       21 JUMP                             ; [+2]
       22 FORGLOOP                         R5 2 ; [-12]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          REF R3
       31 CAPTURE                          REF R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 GETUPVAL                         R7 7
       36 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       38 MOVE                             R8 R5
       39 GETIMPORT                        R6 K6 [table.insert]
       41 CALL                             R6 2 0
       42 GETUPVAL                         R6 8
       43 JUMPIF                           R6 ; [+4]
       44 GETIMPORT                        R6 K9 [task.spawn]
       46 GETUPVAL                         R7 9
       47 CALL                             R6 1 0
       48 CLOSEUPVALS                      R3
       49 RETURN                           R0 0

PROTO_22:
        0 LOADNIL                          R2
        1 LOADK                            R3 K0 [-Infinity]
        2 GETUPVAL                         R4 0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R8 K1 ["prompt"]
        8 GETTABLEKS                       R10 R9 K2 ["harness"]
       10 JUMPIFNOTEQ                      R10 R0 ; [+12]
       12 GETTABLEKS                       R10 R9 K3 ["sessionId"]
       14 JUMPIFNOTEQ                      R10 R1 ; [+8]
       16 GETTABLEKS                       R10 R8 K4 ["receivedAt"]
       18 JUMPIFNOTLT                      R3 R10 ; [+4]
       20 MOVE                             R2 R7
       21 GETTABLEKS                       R3 R8 K4 ["receivedAt"]
       23 FORGLOOP                         R4 2 ; [-18]
       25 RETURN                           R2 1

PROTO_23:
        0 JUMPIFNOT                        R2 ; [+8]
        1 LOADK                            R3 K0 ["%*\0%*\0%*"]
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 NAMECALL                         R3 R3 K1 ["format"]
        7 CALL                             R3 4 1
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 CALL                             R3 2 1
       13 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R3 R4 R0
        6 JUMPIFNOT                        R3 ; [+41]
        7 JUMPIF                           R1 ; [+40]
        8 GETTABLEKS                       R5 R3 K0 ["toolCalls"]
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLEKS                       R10 R9 K1 ["callId"]
       15 JUMPIFNOT                        R10 ; [+5]
       16 GETTABLEKS                       R10 R9 K2 ["execution"]
       18 JUMPIF                           R10 ; [+2]
       19 LOADB                            R4 1
       20 JUMP                             ; [+3]
       21 FORGLOOP                         R5 2 ; [-9]
       23 LOADB                            R4 0
       24 JUMPIFNOT                        R4 ; [+23]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K3 ["now"]
       28 CALL                             R4 0 1
       29 GETUPVAL                         R6 3
       30 GETTABLE                         R5 R6 R0
       31 JUMPIF                           R5 ; [+13]
       32 GETUPVAL                         R6 3
       33 ADDK                             R7 R4 K4 [2000]
       34 SETTABLE                         R7 R6 R0
       35 GETUPVAL                         R6 4
       36 LOADK                            R7 K5 ["waiting for Studio executions"]
       37 GETIMPORT                        R8 K8 [string.gsub]
       39 MOVE                             R9 R0
       40 LOADK                            R10 K9 ["\0"]
       41 LOADK                            R11 K10 [" | "]
       42 CALL                             R8 3 1
       43 CALL                             R6 2 0
       44 RETURN                           R0 0
       45 JUMPIFNOTLT                      R4 R5 ; [+2]
       47 RETURN                           R0 0
       48 GETUPVAL                         R4 3
       49 LOADNIL                          R5
       50 SETTABLE                         R5 R4 R0
       51 GETUPVAL                         R4 0
       52 LOADNIL                          R5
       53 SETTABLE                         R5 R4 R0
       54 JUMPIFNOT                        R3 ; [+27]
       55 GETUPVAL                         R4 1
       56 LOADNIL                          R5
       57 SETTABLE                         R5 R4 R0
       58 GETTABLEKS                       R4 R3 K0 ["toolCalls"]
       60 LOADNIL                          R5
       61 LOADNIL                          R6
       62 FORGPREP                         R4
       63 GETTABLEKS                       R9 R8 K1 ["callId"]
       65 JUMPIFNOT                        R9 ; [+8]
       66 GETTABLEKS                       R9 R8 K2 ["execution"]
       68 JUMPIF                           R9 ; [+5]
       69 GETUPVAL                         R9 5
       70 GETTABLEKS                       R10 R8 K1 ["callId"]
       72 LOADNIL                          R11
       73 SETTABLE                         R11 R9 R10
       74 FORGLOOP                         R4 2 ; [-12]
       76 GETUPVAL                         R4 6
       77 GETTABLEKS                       R5 R2 K11 ["prompt"]
       79 MOVE                             R6 R3
       80 CALL                             R4 2 0
       81 RETURN                           R0 0
       82 GETUPVAL                         R4 4
       83 LOADK                            R5 K12 ["dropped prompt (no Studio tool in turn)"]
       84 GETIMPORT                        R6 K8 [string.gsub]
       86 MOVE                             R7 R0
       87 LOADK                            R8 K9 ["\0"]
       88 LOADK                            R9 K10 [" | "]
       89 CALL                             R6 3 1
       90 CALL                             R4 2 0
       91 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isConsentEnabled"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+6]
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["ignored prompt (sharing is off)"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K2 ["prompt"]
       13 JUMPIFEQKS                       R1 K3 [""] ; [+5]
       15 GETTABLEKS                       R1 R0 K4 ["sessionId"]
       17 JUMPIFNOTEQKS                    R1 K3 [""] ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K5 ["now"]
       23 CALL                             R1 0 1
       24 LOADNIL                          R2
       25 GETTABLEKS                       R3 R0 K6 ["promptId"]
       27 JUMPIFNOT                        R3 ; [+32]
       28 GETTABLEKS                       R3 R0 K7 ["harness"]
       30 GETTABLEKS                       R4 R0 K4 ["sessionId"]
       32 GETTABLEKS                       R5 R0 K6 ["promptId"]
       34 LOADK                            R6 K8 ["%*\0%*\0%*"]
       35 MOVE                             R8 R3
       36 MOVE                             R9 R4
       37 MOVE                             R10 R5
       38 NAMECALL                         R6 R6 K9 ["format"]
       40 CALL                             R6 4 1
       41 MOVE                             R2 R6
       42 GETUPVAL                         R4 3
       43 GETTABLE                         R3 R4 R2
       44 JUMPIFNOT                        R3 ; [+12]
       45 GETUPVAL                         R3 1
       46 LOADK                            R4 K10 ["skipped duplicate prompt"]
       47 MOVE                             R6 R2
       48 GETIMPORT                        R7 K13 [string.gsub]
       50 MOVE                             R8 R6
       51 LOADK                            R9 K14 ["\0"]
       52 LOADK                            R10 K15 [" | "]
       53 CALL                             R7 3 1
       54 MOVE                             R5 R7
       55 CALL                             R3 2 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R3 3
       58 SETTABLE                         R1 R3 R2
       59 JUMP                             ; [+20]
       60 GETUPVAL                         R3 4
       61 ADDK                             R3 R3 K16 [1]
       62 SETUPVAL                         R3 4
       63 GETTABLEKS                       R3 R0 K7 ["harness"]
       65 GETTABLEKS                       R4 R0 K4 ["sessionId"]
       67 LOADK                            R5 K17 ["#anonymous%*"]
       68 GETUPVAL                         R7 4
       69 NAMECALL                         R5 R5 K9 ["format"]
       71 CALL                             R5 2 1
       72 LOADK                            R6 K8 ["%*\0%*\0%*"]
       73 MOVE                             R8 R3
       74 MOVE                             R9 R4
       75 MOVE                             R10 R5
       76 NAMECALL                         R6 R6 K9 ["format"]
       78 CALL                             R6 4 1
       79 MOVE                             R2 R6
       80 GETUPVAL                         R3 5
       81 DUPTABLE                         R4 K19 [{"prompt", "receivedAt"}]
       82 SETTABLEKS                       R0 R4 K2 ["prompt"]
       84 SETTABLEKS                       R1 R4 K18 ["receivedAt"]
       86 SETTABLE                         R4 R3 R2
       87 LOADN                            R3 0
       88 LOADNIL                          R4
       89 LOADK                            R5 K20 [Infinity]
       90 GETUPVAL                         R6 5
       91 LOADNIL                          R7
       92 LOADNIL                          R8
       93 FORGPREP                         R6
       94 ADDK                             R3 R3 K16 [1]
       95 JUMPIFEQ                         R9 R2 ; [+8]
       97 GETTABLEKS                       R11 R10 K18 ["receivedAt"]
       99 JUMPIFNOTLT                      R11 R5 ; [+4]
      101 MOVE                             R4 R9
      102 GETTABLEKS                       R5 R10 K18 ["receivedAt"]
      104 FORGLOOP                         R6 2 ; [-11]
      106 LOADN                            R6 20
      107 JUMPIFNOTLT                      R6 R3 ; [+6]
      109 JUMPIFNOT                        R4 ; [+4]
      110 GETUPVAL                         R6 6
      111 MOVE                             R7 R4
      112 LOADB                            R8 1
      113 CALL                             R6 2 0
      114 GETUPVAL                         R6 7
      115 GETTABLEKS                       R6 R6 K21 ["FFlagDebugAssistantMcpCaptureLogging"]
      117 JUMPIFNOT                        R6 ; [+23]
      118 GETUPVAL                         R6 8
      119 GETTABLEKS                       R6 R6 K22 ["redactPrefix"]
      121 GETTABLEKS                       R7 R0 K2 ["prompt"]
      123 LOADN                            R8 80
      124 CALL                             R6 2 1
      125 GETUPVAL                         R7 1
      126 LOADK                            R8 K23 ["held prompt"]
      127 MOVE                             R10 R2
      128 GETIMPORT                        R11 K13 [string.gsub]
      130 MOVE                             R12 R10
      131 LOADK                            R13 K14 ["\0"]
      132 LOADK                            R14 K15 [" | "]
      133 CALL                             R11 3 1
      134 MOVE                             R9 R11
      135 LOADK                            R10 K24 ["prompt=%*"]
      136 MOVE                             R12 R6
      137 NAMECALL                         R10 R10 K9 ["format"]
      139 CALL                             R10 2 1
      140 CALL                             R7 3 0
      141 GETUPVAL                         R7 9
      142 GETTABLE                         R6 R7 R2
      143 JUMPIFNOT                        R6 ; [+3]
      144 GETUPVAL                         R6 6
      145 MOVE                             R7 R2
      146 CALL                             R6 1 0
      147 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["isConsentEnabled"]
        3 CALL                             R4 0 1
        4 JUMPIF                           R4 ; [+3]
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 0
        7 RETURN                           R0 0
        8 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
       10 RETURN                           R0 0
       11 JUMPIFNOT                        R2 ; [+8]
       12 LOADK                            R4 K2 ["%*\0%*\0%*"]
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 NAMECALL                         R4 R4 K3 ["format"]
       18 CALL                             R4 4 1
       19 JUMP                             ; [+4]
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R0
       22 MOVE                             R6 R1
       23 CALL                             R4 2 1
       24 JUMPIF                           R4 ; [+11]
       25 GETUPVAL                         R5 3
       26 LOADK                            R6 K4 ["tool record has no matching turn"]
       27 MOVE                             R7 R0
       28 MOVE                             R8 R1
       29 FASTCALL1                        TOSTRING R2 ; [+3]
       30 MOVE                             R10 R2
       31 GETIMPORT                        R9 K6 [tostring]
       33 CALL                             R9 1 1
       34 CALL                             R5 4 0
       35 RETURN                           R0 0
       36 JUMPIFNOT                        R3 ; [+3]
       37 GETTABLEKS                       R5 R3 K7 ["hookToolName"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 JUMPIFNOT                        R3 ; [+3]
       42 GETTABLEKS                       R6 R3 K8 ["callId"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R6
       46 GETUPVAL                         R7 3
       47 LOADK                            R8 K9 ["marked Studio turn"]
       48 GETIMPORT                        R9 K12 [string.gsub]
       50 MOVE                             R10 R4
       51 LOADK                            R11 K13 ["\0"]
       52 LOADK                            R12 K14 [" | "]
       53 CALL                             R9 3 1
       54 LOADK                            R10 K15 ["tool=%*"]
       55 FASTCALL1                        TOSTRING R5 ; [+3]
       56 MOVE                             R13 R5
       57 GETIMPORT                        R12 K6 [tostring]
       59 CALL                             R12 1 1
       60 NAMECALL                         R10 R10 K3 ["format"]
       62 CALL                             R10 2 1
       63 LOADK                            R11 K16 ["callId=%*"]
       64 FASTCALL1                        TOSTRING R6 ; [+3]
       65 MOVE                             R14 R6
       66 GETIMPORT                        R13 K6 [tostring]
       68 CALL                             R13 1 1
       69 NAMECALL                         R11 R11 K3 ["format"]
       71 CALL                             R11 2 1
       72 CALL                             R7 4 0
       73 GETUPVAL                         R8 4
       74 GETTABLE                         R7 R8 R4
       75 JUMPIF                           R7 ; [+11]
       76 DUPTABLE                         R7 K19 [{"markedAt", "toolCalls"}]
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R8 R8 K20 ["now"]
       80 CALL                             R8 0 1
       81 SETTABLEKS                       R8 R7 K17 ["markedAt"]
       83 NEWTABLE                         R8 0 0
       85 SETTABLEKS                       R8 R7 K18 ["toolCalls"]
       87 GETUPVAL                         R8 4
       88 SETTABLE                         R7 R8 R4
       89 JUMPIFNOT                        R3 ; [+38]
       90 GETTABLEKS                       R9 R7 K18 ["toolCalls"]
       92 LENGTH                           R8 R9
       93 LOADN                            R9 50
       94 JUMPIFNOTLT                      R8 R9 ; [+33]
       96 DUPTABLE                         R8 K21 [{"hookToolName", "callId"}]
       97 SETTABLEKS                       R5 R8 K7 ["hookToolName"]
       99 SETTABLEKS                       R6 R8 K8 ["callId"]
      101 GETTABLEKS                       R10 R7 K18 ["toolCalls"]
      103 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      105 MOVE                             R11 R8
      106 GETIMPORT                        R9 K24 [table.insert]
      108 CALL                             R9 2 0
      109 JUMPIFNOT                        R6 ; [+18]
      110 GETUPVAL                         R10 5
      111 GETTABLE                         R9 R10 R6
      112 JUMPIFNOT                        R9 ; [+8]
      113 GETUPVAL                         R10 5
      114 LOADNIL                          R11
      115 SETTABLE                         R11 R10 R6
      116 GETTABLEKS                       R10 R9 K25 ["execution"]
      118 SETTABLEKS                       R10 R8 K25 ["execution"]
      120 JUMP                             ; [+7]
      121 GETUPVAL                         R10 6
      122 DUPTABLE                         R11 K28 [{"key", "toolCall"}]
      123 SETTABLEKS                       R4 R11 K26 ["key"]
      125 SETTABLEKS                       R8 R11 K27 ["toolCall"]
      127 SETTABLE                         R11 R10 R6
      128 GETUPVAL                         R9 7
      129 GETTABLE                         R8 R9 R4
      130 JUMPIFNOT                        R8 ; [+3]
      131 GETUPVAL                         R8 8
      132 MOVE                             R9 R4
      133 CALL                             R8 1 0
      134 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isConsentEnabled"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K1 ["callId"]
       10 JUMPIFNOTEQKS                    R1 K2 [""] ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 2
       14 GETTABLE                         R2 R3 R1
       15 JUMPIFNOT                        R2 ; [+17]
       16 GETUPVAL                         R3 2
       17 LOADNIL                          R4
       18 SETTABLE                         R4 R3 R1
       19 GETTABLEKS                       R3 R2 K3 ["toolCall"]
       21 SETTABLEKS                       R0 R3 K4 ["execution"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R5 R2 K5 ["key"]
       26 GETTABLE                         R3 R4 R5
       27 JUMPIFNOT                        R3 ; [+4]
       28 GETUPVAL                         R3 4
       29 GETTABLEKS                       R4 R2 K5 ["key"]
       31 CALL                             R3 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 5
       34 DUPTABLE                         R4 K7 [{"execution", "receivedAt"}]
       35 SETTABLEKS                       R0 R4 K4 ["execution"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K8 ["now"]
       40 CALL                             R5 0 1
       41 SETTABLEKS                       R5 R4 K6 ["receivedAt"]
       43 SETTABLE                         R4 R3 R1
       44 LOADN                            R3 0
       45 LOADNIL                          R4
       46 LOADK                            R5 K9 [Infinity]
       47 GETUPVAL                         R6 5
       48 LOADNIL                          R7
       49 LOADNIL                          R8
       50 FORGPREP                         R6
       51 ADDK                             R3 R3 K10 [1]
       52 GETTABLEKS                       R11 R10 K6 ["receivedAt"]
       54 JUMPIFNOTLT                      R11 R5 ; [+4]
       56 MOVE                             R4 R9
       57 GETTABLEKS                       R5 R10 K6 ["receivedAt"]
       59 FORGLOOP                         R6 2 ; [-9]
       61 LOADN                            R6 100
       62 JUMPIFNOTLT                      R6 R3 ; [+5]
       64 JUMPIFNOT                        R4 ; [+3]
       65 GETUPVAL                         R6 5
       66 LOADNIL                          R7
       67 SETTABLE                         R7 R6 R4
       68 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isConsentEnabled"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+3]
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 0
        7 RETURN                           R0 0
        8 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
       10 RETURN                           R0 0
       11 JUMPIFNOT                        R2 ; [+8]
       12 LOADK                            R3 K2 ["%*\0%*\0%*"]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 MOVE                             R7 R2
       16 NAMECALL                         R3 R3 K3 ["format"]
       18 CALL                             R3 4 1
       19 JUMP                             ; [+4]
       20 GETUPVAL                         R3 2
       21 MOVE                             R4 R0
       22 MOVE                             R5 R1
       23 CALL                             R3 2 1
       24 JUMPIF                           R3 ; [+11]
       25 GETUPVAL                         R4 3
       26 LOADK                            R5 K4 ["stop record has no matching turn"]
       27 MOVE                             R6 R0
       28 MOVE                             R7 R1
       29 FASTCALL1                        TOSTRING R2 ; [+3]
       30 MOVE                             R9 R2
       31 GETIMPORT                        R8 K6 [tostring]
       33 CALL                             R8 1 1
       34 CALL                             R4 4 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R4 3
       37 LOADK                            R5 K7 ["ended turn"]
       38 GETIMPORT                        R6 K10 [string.gsub]
       40 MOVE                             R7 R3
       41 LOADK                            R8 K11 ["\0"]
       42 LOADK                            R9 K12 [" | "]
       43 CALL                             R6 3 1
       44 CALL                             R4 2 0
       45 GETUPVAL                         R4 4
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K13 ["now"]
       49 CALL                             R5 0 1
       50 SETTABLE                         R5 R4 R3
       51 GETUPVAL                         R4 5
       52 MOVE                             R5 R3
       53 CALL                             R4 1 0
       54 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R3 R0 K0 ["harness"]
        2 JUMPIFNOTEQKS                    R3 K1 ["claude_code"] ; [+3]
        4 LOADK                            R2 K1 ["claude_code"]
        5 JUMP                             ; [+9]
        6 JUMPIFNOTEQKS                    R3 K2 ["cursor"] ; [+3]
        8 LOADK                            R2 K2 ["cursor"]
        9 JUMP                             ; [+5]
       10 JUMPIFNOTEQKS                    R3 K3 ["codex"] ; [+3]
       12 LOADK                            R2 K3 ["codex"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 JUMPIFNOT                        R2 ; [+8]
       16 GETTABLEKS                       R4 R0 K4 ["payload"]
       18 FASTCALL1                        TYPEOF R4 ; [+2]
       19 GETIMPORT                        R3 K6 [typeof]
       21 CALL                             R3 1 1
       22 JUMPIFEQKS                       R3 K7 ["table"] ; [+2]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R3 R0 K4 ["payload"]
       27 GETUPVAL                         R4 0
       28 MOVE                             R5 R2
       29 MOVE                             R6 R3
       30 CALL                             R4 2 2
       31 JUMPIF                           R4 ; [+1]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R6 R0 K8 ["kind"]
       35 JUMPIFNOTEQKS                    R6 K9 ["tool"] ; [+61]
       37 JUMPIFNOTEQKS                    R2 K2 ["cursor"] ; [+20]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R9 R3 K10 ["mcp_server_name"]
       42 FASTCALL1                        TYPEOF R9 ; [+3]
       43 MOVE                             R11 R9
       44 GETIMPORT                        R10 K6 [typeof]
       46 CALL                             R10 1 1
       47 JUMPIFNOTEQKS                    R10 K11 ["string"] ; [+3]
       49 JUMPIFNOTEQKS                    R9 K12 [""] ; [+3]
       51 LOADNIL                          R8
       52 JUMP                             ; [+1]
       53 MOVE                             R8 R9
       54 MOVE                             R9 R1
       55 CALL                             R7 2 1
       56 JUMPIF                           R7 ; [+1]
       57 RETURN                           R0 0
       58 GETTABLEKS                       R7 R0 K13 ["callId"]
       60 GETUPVAL                         R8 2
       61 MOVE                             R9 R2
       62 MOVE                             R10 R4
       63 MOVE                             R11 R5
       64 DUPTABLE                         R12 K15 [{"hookToolName", "callId"}]
       65 GETTABLEKS                       R14 R3 K16 ["tool_name"]
       67 FASTCALL1                        TYPEOF R14 ; [+3]
       68 MOVE                             R16 R14
       69 GETIMPORT                        R15 K6 [typeof]
       71 CALL                             R15 1 1
       72 JUMPIFNOTEQKS                    R15 K11 ["string"] ; [+3]
       74 JUMPIFNOTEQKS                    R14 K12 [""] ; [+3]
       76 LOADNIL                          R13
       77 JUMP                             ; [+1]
       78 MOVE                             R13 R14
       79 SETTABLEKS                       R13 R12 K14 ["hookToolName"]
       81 FASTCALL1                        TYPEOF R7 ; [+3]
       82 MOVE                             R15 R7
       83 GETIMPORT                        R14 K6 [typeof]
       85 CALL                             R14 1 1
       86 JUMPIFNOTEQKS                    R14 K11 ["string"] ; [+5]
       88 JUMPIFEQKS                       R7 K12 [""] ; [+3]
       90 MOVE                             R13 R7
       91 JUMP                             ; [+1]
       92 LOADNIL                          R13
       93 SETTABLEKS                       R13 R12 K13 ["callId"]
       95 CALL                             R8 4 0
       96 RETURN                           R0 0
       97 JUMPIFNOTEQKS                    R6 K17 ["stop"] ; [+7]
       99 GETUPVAL                         R7 3
      100 MOVE                             R8 R2
      101 MOVE                             R9 R4
      102 MOVE                             R10 R5
      103 CALL                             R7 3 0
      104 RETURN                           R0 0
      105 JUMPIFNOTEQKS                    R6 K18 ["prompt"] ; [+39]
      107 GETTABLEKS                       R7 R3 K18 ["prompt"]
      109 FASTCALL1                        TYPEOF R7 ; [+3]
      110 MOVE                             R9 R7
      111 GETIMPORT                        R8 K6 [typeof]
      113 CALL                             R8 1 1
      114 JUMPIFEQKS                       R8 K11 ["string"] ; [+2]
      116 RETURN                           R0 0
      117 GETTABLEKS                       R8 R0 K19 ["at"]
      119 GETUPVAL                         R9 4
      120 DUPTABLE                         R10 K23 [{"harness", "sessionId", "promptId", "prompt", "capturedAt"}]
      121 SETTABLEKS                       R2 R10 K0 ["harness"]
      123 SETTABLEKS                       R4 R10 K20 ["sessionId"]
      125 SETTABLEKS                       R5 R10 K21 ["promptId"]
      127 SETTABLEKS                       R7 R10 K18 ["prompt"]
      129 FASTCALL1                        TYPEOF R8 ; [+3]
      130 MOVE                             R13 R8
      131 GETIMPORT                        R12 K6 [typeof]
      133 CALL                             R12 1 1
      134 JUMPIFNOTEQKS                    R12 K24 ["number"] ; [+3]
      136 MOVE                             R11 R8
      137 JUMP                             ; [+4]
      138 GETUPVAL                         R11 5
      139 GETTABLEKS                       R11 R11 K25 ["now"]
      141 CALL                             R11 0 1
      142 SETTABLEKS                       R11 R10 K22 ["capturedAt"]
      144 CALL                             R9 1 0
      145 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isConsentEnabled"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+3]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["now"]
       11 CALL                             R0 0 1
       12 GETUPVAL                         R1 2
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETTABLEKS                       R7 R5 K2 ["receivedAt"]
       18 SUB                              R6 R0 R7
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K3 ["bufferMs"]
       22 JUMPIFNOTLE                      R7 R6 ; [+14]
       24 GETUPVAL                         R6 3
       25 LOADK                            R7 K4 ["buffer expired, deciding turn without a stop record"]
       26 GETIMPORT                        R8 K7 [string.gsub]
       28 MOVE                             R9 R4
       29 LOADK                            R10 K8 ["\0"]
       30 LOADK                            R11 K9 [" | "]
       31 CALL                             R8 3 1
       32 CALL                             R6 2 0
       33 GETUPVAL                         R6 4
       34 MOVE                             R7 R4
       35 LOADB                            R8 1
       36 CALL                             R6 2 0
       37 FORGLOOP                         R1 2 ; [-22]
       39 GETUPVAL                         R1 5
       40 LOADNIL                          R2
       41 LOADNIL                          R3
       42 FORGPREP                         R1
       43 JUMPIFNOTLE                      R5 R0 ; [+5]
       45 GETUPVAL                         R6 4
       46 MOVE                             R7 R4
       47 LOADB                            R8 1
       48 CALL                             R6 2 0
       49 FORGLOOP                         R1 2 ; [-7]
       51 GETUPVAL                         R1 6
       52 LOADNIL                          R2
       53 LOADNIL                          R3
       54 FORGPREP                         R1
       55 GETUPVAL                         R7 2
       56 GETTABLE                         R6 R7 R4
       57 JUMPIF                           R6 ; [+29]
       58 GETTABLEKS                       R7 R5 K10 ["markedAt"]
       60 SUB                              R6 R0 R7
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K3 ["bufferMs"]
       64 JUMPIFNOTLE                      R7 R6 ; [+22]
       66 GETUPVAL                         R6 6
       67 LOADNIL                          R7
       68 SETTABLE                         R7 R6 R4
       69 GETTABLEKS                       R6 R5 K11 ["toolCalls"]
       71 LOADNIL                          R7
       72 LOADNIL                          R8
       73 FORGPREP                         R6
       74 GETTABLEKS                       R11 R10 K12 ["callId"]
       76 JUMPIFNOT                        R11 ; [+8]
       77 GETTABLEKS                       R11 R10 K13 ["execution"]
       79 JUMPIF                           R11 ; [+5]
       80 GETUPVAL                         R11 7
       81 GETTABLEKS                       R12 R10 K12 ["callId"]
       83 LOADNIL                          R13
       84 SETTABLE                         R13 R11 R12
       85 FORGLOOP                         R6 2 ; [-12]
       87 FORGLOOP                         R1 2 ; [-33]
       89 GETUPVAL                         R1 8
       90 LOADNIL                          R2
       91 LOADNIL                          R3
       92 FORGPREP                         R1
       93 SUB                              R6 R0 R5
       94 LOADK                            R7 K14 [86400000]
       95 JUMPIFNOTLE                      R7 R6 ; [+4]
       97 GETUPVAL                         R6 8
       98 LOADNIL                          R7
       99 SETTABLE                         R7 R6 R4
      100 FORGLOOP                         R1 2 ; [-8]
      102 GETUPVAL                         R1 9
      103 LOADNIL                          R2
      104 LOADNIL                          R3
      105 FORGPREP                         R1
      106 SUB                              R6 R0 R5
      107 LOADK                            R7 K14 [86400000]
      108 JUMPIFNOTLE                      R7 R6 ; [+4]
      110 GETUPVAL                         R6 9
      111 LOADNIL                          R7
      112 SETTABLE                         R7 R6 R4
      113 FORGLOOP                         R1 2 ; [-8]
      115 GETUPVAL                         R1 10
      116 LOADNIL                          R2
      117 LOADNIL                          R3
      118 FORGPREP                         R1
      119 GETTABLEKS                       R7 R5 K2 ["receivedAt"]
      121 SUB                              R6 R0 R7
      122 LOADK                            R7 K15 [120000]
      123 JUMPIFNOTLE                      R7 R6 ; [+4]
      125 GETUPVAL                         R6 10
      126 LOADNIL                          R7
      127 SETTABLE                         R7 R6 R4
      128 FORGLOOP                         R1 2 ; [-10]
      130 RETURN                           R0 0

PROTO_31:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 ADDK                             R0 R0 K0 [1]
        6 FORGLOOP                         R1 1 ; [-2]
        8 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLE                         R5 R6 R3
        6 JUMPIFNOT                        R5 ; [+2]
        7 LOADB                            R5 1
        8 RETURN                           R5 1
        9 FORGLOOP                         R0 1 ; [-6]
       11 LOADB                            R0 0
       12 RETURN                           R0 1

PROTO_33:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 LOADN                            R4 0
        7 NEWTABLE                         R5 0 0
        9 NEWTABLE                         R6 0 0
       11 NEWTABLE                         R7 0 0
       13 NEWTABLE                         R8 0 0
       15 GETTABLEKS                       R10 R0 K1 ["redactionSliceSeconds"]
       17 ORK                              R9 R10 K0 [0.005]
       18 DUPCLOSURE                       R10 K2 [PROTO_11]
       19 NEWCLOSURE                       R11 P1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R7
       26 CAPTURE                          VAL R8
       27 DUPCLOSURE                       R12 K3 [PROTO_13]
       28 NEWCLOSURE                       R13 P3
       29 CAPTURE                          VAL R7
       30 DUPCLOSURE                       R14 K4 [PROTO_15]
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U1
       33 NEWTABLE                         R15 0 0
       35 LOADB                            R16 0
       36 NEWCLOSURE                       R17 P5
       37 CAPTURE                          REF R16
       38 CAPTURE                          VAL R15
       39 CAPTURE                          UPVAL U0
       40 NEWCLOSURE                       R18 P6
       41 CAPTURE                          VAL R15
       42 CAPTURE                          REF R16
       43 CAPTURE                          VAL R17
       44 NEWCLOSURE                       R19 P7
       45 CAPTURE                          VAL R14
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R9
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R15
       53 CAPTURE                          REF R16
       54 CAPTURE                          VAL R17
       55 NEWCLOSURE                       R20 P8
       56 CAPTURE                          VAL R1
       57 NEWCLOSURE                       R21 P9
       58 CAPTURE                          VAL R20
       59 NEWCLOSURE                       R22 P10
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R8
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R19
       67 NEWCLOSURE                       R23 P11
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R5
       72 CAPTURE                          REF R4
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R22
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          VAL R3
       78 NEWCLOSURE                       R24 P12
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R20
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R22
       88 NEWCLOSURE                       R25 P13
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R22
       94 CAPTURE                          VAL R6
       95 NEWCLOSURE                       R26 P14
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R20
       99 CAPTURE                          UPVAL U3
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R22
      102 NEWCLOSURE                       R27 P15
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          VAL R24
      106 CAPTURE                          VAL R26
      107 CAPTURE                          VAL R23
      108 CAPTURE                          VAL R0
      109 NEWCLOSURE                       R28 P16
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R1
      113 CAPTURE                          UPVAL U3
      114 CAPTURE                          VAL R22
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R6
      121 NEWCLOSURE                       R29 P17
      122 CAPTURE                          VAL R1
      123 NEWCLOSURE                       R30 P18
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R2
      126 DUPTABLE                         R31 K14 [{"recordPrompt", "markStudioTurn", "recordStudioToolExecution", "endTurn", "ingestRecord", "flushExpired", "clear", "getPendingCount", "hasUndecidedStudioTurn"}]
      127 SETTABLEKS                       R23 R31 K5 ["recordPrompt"]
      129 SETTABLEKS                       R24 R31 K6 ["markStudioTurn"]
      131 SETTABLEKS                       R25 R31 K7 ["recordStudioToolExecution"]
      133 SETTABLEKS                       R26 R31 K8 ["endTurn"]
      135 SETTABLEKS                       R27 R31 K9 ["ingestRecord"]
      137 SETTABLEKS                       R28 R31 K10 ["flushExpired"]
      139 SETTABLEKS                       R11 R31 K11 ["clear"]
      141 SETTABLEKS                       R29 R31 K12 ["getPendingCount"]
      143 SETTABLEKS                       R30 R31 K13 ["hasUndecidedStudioTurn"]
      145 CLOSEUPVALS                      R4
      146 RETURN                           R31 1

PROTO_34:
        0 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["new"]
        7 DUPTABLE                         R1 K2 [{"isConsentEnabled"}]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K3 ["isEnabled"]
       11 SETTABLEKS                       R2 R1 K1 ["isConsentEnabled"]
       13 CALL                             R0 1 1
       14 GETUPVAL                         R1 3
       15 DUPTABLE                         R2 K9 [{["isConsentEnabled"], ["uploadPrompt"], ["now"], ["bufferMs"], ["maxPromptLength"] = 1048576}]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K3 ["isEnabled"]
       19 SETTABLEKS                       R3 R2 K1 ["isConsentEnabled"]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K10 ["FFlagAssistantMcpCaptureUpload"]
       24 JUMPIFNOT                        R4 ; [+3]
       25 GETTABLEKS                       R3 R0 K11 ["upload"]
       27 JUMP                             ; [+1]
       28 DUPCLOSURE                       R3 K12 [PROTO_34]
       29 SETTABLEKS                       R3 R2 K4 ["uploadPrompt"]
       31 GETUPVAL                         R3 5
       32 GETTABLEKS                       R3 R3 K13 ["getTimestampMilliseconds"]
       34 SETTABLEKS                       R3 R2 K5 ["now"]
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K16 ["FIntAssistantMcpCaptureBufferMinutes"]
       39 MULK                             R4 R5 K15 [60]
       40 MULK                             R3 R4 K14 [1000]
       41 SETTABLEKS                       R3 R2 K6 ["bufferMs"]
       43 CALL                             R1 1 1
       44 SETUPVAL                         R1 0
       45 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K10 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["McpCaptureRedactor"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K10 ["Parent"]
       36 GETTABLEKS                       R5 R5 K12 ["McpCaptureTypes"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K10 ["Parent"]
       45 GETTABLEKS                       R6 R6 K13 ["McpCaptureUploader"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R1 K14 ["IntegrationManagement"]
       50 GETTABLEKS                       R6 R6 K15 ["McpCaptureConsent"]
       52 GETTABLEKS                       R7 R1 K16 ["Tools"]
       54 GETTABLEKS                       R7 R7 K17 ["ToolTypes"]
       56 GETTABLEKS                       R7 R7 K18 ["ToolNames"]
       58 GETTABLEKS                       R8 R1 K19 ["Utils"]
       60 GETTABLEKS                       R8 R8 K20 ["Time"]
       62 GETTABLEKS                       R9 R1 K19 ["Utils"]
       64 GETTABLEKS                       R9 R9 K21 ["truncateUtf8Safe"]
       66 DUPCLOSURE                       R10 K22 [PROTO_0]
       67 CAPTURE                          VAL R2
       68 DUPCLOSURE                       R11 K23 [PROTO_1]
       69 CAPTURE                          VAL R2
       70 DUPCLOSURE                       R12 K24 [PROTO_2]
       71 DUPCLOSURE                       R13 K25 [PROTO_3]
       72 CAPTURE                          VAL R9
       73 DUPCLOSURE                       R14 K26 [PROTO_4]
       74 CAPTURE                          VAL R9
       75 DUPCLOSURE                       R15 K27 [PROTO_5]
       76 DUPCLOSURE                       R16 K28 [PROTO_6]
       77 DUPCLOSURE                       R17 K29 [PROTO_7]
       78 DUPCLOSURE                       R18 K30 [PROTO_8]
       79 DUPCLOSURE                       R19 K31 [PROTO_9]
       80 DUPCLOSURE                       R20 K32 [PROTO_10]
       81 DUPCLOSURE                       R21 K33 [PROTO_33]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R20
       88 CAPTURE                          VAL R18
       89 LOADNIL                          R22
       90 NEWCLOSURE                       R23 P12
       91 CAPTURE                          REF R22
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R21
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R8
       97 DUPTABLE                         R24 K37 [{"new", "getDefault", "isStudioServerName"}]
       98 SETTABLEKS                       R21 R24 K34 ["new"]
      100 SETTABLEKS                       R23 R24 K35 ["getDefault"]
      102 SETTABLEKS                       R18 R24 K36 ["isStudioServerName"]
      104 CLOSEUPVALS                      R22
      105 RETURN                           R24 1
