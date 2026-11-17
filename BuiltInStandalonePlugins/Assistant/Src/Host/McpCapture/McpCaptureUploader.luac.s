PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["post"]
        6 CALL                             R0 4 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U4
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          UPVAL U4
       11 NAMECALL                         R0 R0 K1 ["andThen"]
       13 CALL                             R0 3 1
       14 NAMECALL                         R0 R0 K2 ["await"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+19]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Http"]
        5 GETTABLEKS                       R3 R3 K1 ["Networking"]
        7 GETTABLEKS                       R3 R3 K2 ["new"]
        9 DUPTABLE                         R4 K6 [{["isInternal"] = True, ["loggingLevel"]}]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K7 ["FFlagDebugLogAssistantUI"]
       13 JUMPIFNOT                        R6 ; [+2]
       14 LOADN                            R5 4
       15 JUMP                             ; [+1]
       16 LOADN                            R5 0
       17 SETTABLEKS                       R5 R4 K5 ["loggingLevel"]
       19 CALL                             R3 1 1
       20 SETUPVAL                         R3 0
       21 LOADNIL                          R3
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          REF R3
       28 FASTPCALL                        pcall 1 ; [+2]
       29 GETIMPORT                        R4 K9 [pcall]
       31 CALL                             R4 1 0
       32 FASTCALL1                        TYPEOF R3 ; [+3]
       33 MOVE                             R6 R3
       34 GETIMPORT                        R5 K11 [typeof]
       36 CALL                             R5 1 1
       37 JUMPIFNOTEQKS                    R5 K12 ["table"] ; [+3]
       39 MOVE                             R4 R3
       40 JUMP                             ; [+1]
       41 LOADNIL                          R4
       42 CLOSEUPVALS                      R3
       43 RETURN                           R4 1

PROTO_4:
        0 LOADK                            R0 K0 ["%*/mcp-capture-service/v1/captures"]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["get"]
        4 CALL                             R2 0 1
        5 GETTABLEKS                       R2 R2 K2 ["apisUrl"]
        7 LOADK                            R4 K3 ["/+$"]
        8 LOADK                            R5 K4 [""]
        9 NAMECALL                         R2 R2 K5 ["gsub"]
       11 CALL                             R2 3 1
       12 NAMECALL                         R0 R0 K6 ["format"]
       14 CALL                             R0 2 1
       15 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["[McpCaptureUploader] %*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R2 K3 ["[McpCaptureUploader] %*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETTABLEKS                       R2 R0 K0 ["responseCode"]
        3 FASTCALL1                        TONUMBER R2 ; [+2]
        4 GETIMPORT                        R1 K2 [tonumber]
        6 CALL                             R1 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFNOT                        R1 ; [+3]
       10 LOADN                            R2 0
       11 JUMPIFNOTLE                      R1 R2 ; [+3]
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 LOADB                            R2 1
       16 JUMPIFEQKN                       R1 K3 [408] ; [+9]
       18 LOADB                            R2 1
       19 JUMPIFEQKN                       R1 K4 [429] ; [+6]
       21 LOADN                            R3 500
       22 JUMPIFLE                         R3 R1 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LOADN                            R1 0
        2 JUMPIFNOTLE                      R0 R1 ; [+3]
        4 LOADK                            R1 K0 ["noResponse"]
        5 RETURN                           R1 1
        6 JUMPIFNOTEQKN                    R0 K1 [408] ; [+3]
        8 LOADK                            R1 K2 ["timeout"]
        9 RETURN                           R1 1
       10 JUMPIFNOTEQKN                    R0 K3 [429] ; [+3]
       12 LOADK                            R1 K4 ["rateLimited"]
       13 RETURN                           R1 1
       14 LOADN                            R1 500
       15 JUMPIFNOTLE                      R1 R0 ; [+3]
       17 LOADK                            R1 K5 ["serverError"]
       18 RETURN                           R1 1
       19 LOADK                            R1 K6 ["clientError"]
       20 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 GETTABLEKS                       R0 R0 K2 ["logMcpCaptureUpload"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+10]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETIMPORT                        R1 K2 [print]
        9 LOADK                            R2 K3 ["[McpCaptureUploader] Dropped a captured prompt (sharing is off)"]
       10 CALL                             R1 1 0
       11 LOADB                            R1 0
       12 RETURN                           R1 1
       13 GETUPVAL                         R2 2
       14 JUMPIFEQKS                       R2 K4 [""] ; [+3]
       16 GETUPVAL                         R1 2
       17 JUMP                             ; [+19]
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K5 ["url"]
       21 JUMPIF                           R1 ; [+15]
       22 LOADK                            R1 K6 ["%*/mcp-capture-service/v1/captures"]
       23 GETUPVAL                         R3 4
       24 GETTABLEKS                       R3 R3 K7 ["get"]
       26 CALL                             R3 0 1
       27 GETTABLEKS                       R3 R3 K8 ["apisUrl"]
       29 LOADK                            R5 K9 ["/+$"]
       30 LOADK                            R6 K4 [""]
       31 NAMECALL                         R3 R3 K10 ["gsub"]
       33 CALL                             R3 3 1
       34 NAMECALL                         R1 R1 K11 ["format"]
       36 CALL                             R1 2 1
       37 NEWTABLE                         R2 1 0
       39 LOADK                            R3 K12 ["application/json"]
       40 SETTABLEKS                       R3 R2 K13 ["Content-Type"]
       42 GETUPVAL                         R3 2
       43 JUMPIFEQKS                       R3 K4 [""] ; [+19]
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R3 R3 K14 ["getUserId"]
       48 JUMPIF                           R3 ; [+6]
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R3 R3 K7 ["get"]
       52 CALL                             R3 0 1
       53 GETTABLEKS                       R3 R3 K14 ["getUserId"]
       55 MOVE                             R5 R3
       56 CALL                             R5 0 -1
       57 FASTCALL                         TOSTRING ; [+2]
       58 GETIMPORT                        R4 K16 [tostring]
       60 CALL                             R4 -1 1
       61 SETTABLEKS                       R4 R2 K17 ["robloxctx-authenticated-userid"]
       63 NEWCLOSURE                       R4 P0
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R0
       66 FASTPCALL                        pcall 1 ; [+2]
       67 GETIMPORT                        R3 K19 [pcall]
       69 CALL                             R3 1 2
       70 JUMPIF                           R3 ; [+30]
       71 LOADK                            R5 K20 ["Failed to encode a captured prompt: %*"]
       72 FASTCALL1                        TOSTRING R4 ; [+3]
       73 MOVE                             R8 R4
       74 GETIMPORT                        R7 K16 [tostring]
       76 CALL                             R7 1 1
       77 NAMECALL                         R5 R5 K11 ["format"]
       79 CALL                             R5 2 1
       80 GETUPVAL                         R6 1
       81 GETTABLEKS                       R6 R6 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
       83 JUMPIFNOT                        R6 ; [+8]
       84 GETIMPORT                        R6 K22 [warn]
       86 LOADK                            R7 K23 ["[McpCaptureUploader] %*"]
       87 MOVE                             R9 R5
       88 NAMECALL                         R7 R7 K11 ["format"]
       90 CALL                             R7 2 1
       91 CALL                             R6 1 0
       92 GETUPVAL                         R5 6
       93 DUPTABLE                         R6 K29 [{["harness"], ["outcome"] = "failed", ["reason"] = "encodeFailed"}]
       94 GETTABLEKS                       R7 R0 K24 ["harness"]
       96 SETTABLEKS                       R7 R6 K24 ["harness"]
       98 CALL                             R5 1 0
       99 LOADB                            R5 0
      100 RETURN                           R5 1
      101 LOADNIL                          R5
      102 LOADN                            R8 1
      103 GETUPVAL                         R6 7
      104 LOADN                            R7 1
      105 FORNPREP                         R6
      106 GETUPVAL                         R9 8
      107 MOVE                             R10 R1
      108 MOVE                             R11 R4
      109 MOVE                             R12 R2
      110 CALL                             R9 3 1
      111 JUMPIFNOT                        R9 ; [+7]
      112 GETTABLEKS                       R11 R9 K30 ["responseCode"]
      114 FASTCALL1                        TONUMBER R11 ; [+2]
      115 GETIMPORT                        R10 K32 [tonumber]
      117 CALL                             R10 1 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R10
      120 JUMPIFNOT                        R10 ; [+40]
      121 LOADN                            R11 200
      122 JUMPIFNOTLE                      R11 R10 ; [+38]
      124 LOADN                            R11 300
      125 JUMPIFNOTLT                      R10 R11 ; [+35]
      127 LOADK                            R11 K33 ["Uploaded a captured prompt (status %*): %*"]
      128 MOVE                             R13 R10
      129 MOVE                             R15 R9
      130 JUMPIFNOT                        R15 ; [+2]
      131 GETTABLEKS                       R15 R9 K34 ["responseBody"]
      133 FASTCALL1                        TOSTRING R15 ; [+2]
      134 GETIMPORT                        R14 K16 [tostring]
      136 CALL                             R14 1 1
      137 NAMECALL                         R11 R11 K11 ["format"]
      139 CALL                             R11 3 1
      140 GETUPVAL                         R12 1
      141 GETTABLEKS                       R12 R12 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
      143 JUMPIFNOT                        R12 ; [+8]
      144 GETIMPORT                        R12 K2 [print]
      146 LOADK                            R13 K23 ["[McpCaptureUploader] %*"]
      147 MOVE                             R15 R11
      148 NAMECALL                         R13 R13 K11 ["format"]
      150 CALL                             R13 2 1
      151 CALL                             R12 1 0
      152 GETUPVAL                         R11 6
      153 DUPTABLE                         R12 K36 [{["harness"], ["outcome"] = "uploaded"}]
      154 GETTABLEKS                       R13 R0 K24 ["harness"]
      156 SETTABLEKS                       R13 R12 K24 ["harness"]
      158 CALL                             R11 1 0
      159 LOADB                            R11 1
      160 RETURN                           R11 1
      161 MOVE                             R5 R10
      162 GETUPVAL                         R11 7
      163 JUMPIFEQ                         R8 R11 ; [+54]
      165 JUMPIFNOT                        R9 ; [+7]
      166 GETTABLEKS                       R13 R9 K30 ["responseCode"]
      168 FASTCALL1                        TONUMBER R13 ; [+2]
      169 GETIMPORT                        R12 K32 [tonumber]
      171 CALL                             R12 1 1
      172 JUMP                             ; [+1]
      173 LOADNIL                          R12
      174 JUMPIFNOT                        R12 ; [+3]
      175 LOADN                            R13 0
      176 JUMPIFNOTLE                      R12 R13 ; [+3]
      178 LOADB                            R11 1
      179 JUMP                             ; [+11]
      180 LOADB                            R11 1
      181 JUMPIFEQKN                       R12 K37 [408] ; [+9]
      183 LOADB                            R11 1
      184 JUMPIFEQKN                       R12 K38 [429] ; [+6]
      186 LOADN                            R13 500
      187 JUMPIFLE                         R13 R12 ; [+2]
      189 LOADB                            R11 0 +1
      190 LOADB                            R11 1
      191 JUMPIFNOT                        R11 ; [+26]
      192 GETUPVAL                         R11 9
      193 LOADN                            R12 0
      194 JUMPIFNOTLT                      R12 R11 ; [+9]
      196 GETIMPORT                        R11 K41 [task.wait]
      198 GETUPVAL                         R13 9
      199 LOADN                            R15 2
      200 SUBK                             R16 R8 K42 [1]
      201 POW                              R14 R15 R16
      202 MUL                              R12 R13 R14
      203 CALL                             R11 1 0
      204 GETUPVAL                         R11 0
      205 CALL                             R11 0 1
      206 JUMPIF                           R11 ; [+10]
      207 GETUPVAL                         R11 1
      208 GETTABLEKS                       R11 R11 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
      210 JUMPIFNOT                        R11 ; [+4]
      211 GETIMPORT                        R11 K2 [print]
      213 LOADK                            R12 K43 ["[McpCaptureUploader] Dropped a captured prompt (sharing turned off before a retry)"]
      214 CALL                             R11 1 0
      215 LOADB                            R11 0
      216 RETURN                           R11 1
      217 FORNLOOP                         R6
      218 LOADK                            R6 K44 ["Failed to upload a captured prompt (status %*)"]
      219 FASTCALL1                        TOSTRING R5 ; [+3]
      220 MOVE                             R9 R5
      221 GETIMPORT                        R8 K16 [tostring]
      223 CALL                             R8 1 1
      224 NAMECALL                         R6 R6 K11 ["format"]
      226 CALL                             R6 2 1
      227 GETUPVAL                         R7 1
      228 GETTABLEKS                       R7 R7 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
      230 JUMPIFNOT                        R7 ; [+8]
      231 GETIMPORT                        R7 K22 [warn]
      233 LOADK                            R8 K23 ["[McpCaptureUploader] %*"]
      234 MOVE                             R10 R6
      235 NAMECALL                         R8 R8 K11 ["format"]
      237 CALL                             R8 2 1
      238 CALL                             R7 1 0
      239 GETUPVAL                         R6 6
      240 DUPTABLE                         R7 K45 [{["harness"], ["outcome"] = "failed", ["reason"]}]
      241 GETTABLEKS                       R8 R0 K24 ["harness"]
      243 SETTABLEKS                       R8 R7 K24 ["harness"]
      245 JUMPIFNOT                        R5 ; [+3]
      246 LOADN                            R10 0
      247 JUMPIFNOTLE                      R5 R10 ; [+3]
      249 LOADK                            R8 K46 ["noResponse"]
      250 JUMP                             ; [+14]
      251 JUMPIFNOTEQKN                    R5 K37 [408] ; [+3]
      253 LOADK                            R8 K47 ["timeout"]
      254 JUMP                             ; [+10]
      255 JUMPIFNOTEQKN                    R5 K38 [429] ; [+3]
      257 LOADK                            R8 K48 ["rateLimited"]
      258 JUMP                             ; [+6]
      259 LOADN                            R10 500
      260 JUMPIFNOTLE                      R10 R5 ; [+3]
      262 LOADK                            R8 K49 ["serverError"]
      263 JUMP                             ; [+1]
      264 LOADK                            R8 K50 ["clientError"]
      265 SETTABLEKS                       R8 R7 K27 ["reason"]
      267 CALL                             R6 1 0
      268 LOADB                            R6 0
      269 RETURN                           R6 1

PROTO_13:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 LENGTH                           R0 R1
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+68]
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 1
        9 JUMPIF                           R0 ; [+23]
       10 LOADK                            R0 K0 ["Dropped %* waiting captured prompt(s) (sharing is off)"]
       11 GETUPVAL                         R3 1
       12 LENGTH                           R2 R3
       13 NAMECALL                         R0 R0 K1 ["format"]
       15 CALL                             R0 2 1
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K2 ["FFlagDebugAssistantMcpCaptureLogging"]
       19 JUMPIFNOT                        R1 ; [+8]
       20 GETIMPORT                        R1 K4 [print]
       22 LOADK                            R2 K5 ["[McpCaptureUploader] %*"]
       23 MOVE                             R4 R0
       24 NAMECALL                         R2 R2 K1 ["format"]
       26 CALL                             R2 2 1
       27 CALL                             R1 1 0
       28 GETIMPORT                        R0 K8 [table.clear]
       30 GETUPVAL                         R1 1
       31 CALL                             R0 1 0
       32 JUMP                             ; [+41]
       33 GETIMPORT                        R0 K10 [table.remove]
       35 GETUPVAL                         R1 1
       36 LOADN                            R2 1
       37 CALL                             R0 2 1
       38 GETUPVAL                         R2 4
       39 MOVE                             R3 R0
       40 FASTPCALL                        pcall 2 ; [+2]
       41 GETIMPORT                        R1 K12 [pcall]
       43 CALL                             R1 2 2
       44 JUMPIF                           R1 ; [+28]
       45 LOADK                            R3 K13 ["Failed to upload a captured prompt: %*"]
       46 FASTCALL1                        TOSTRING R2 ; [+3]
       47 MOVE                             R6 R2
       48 GETIMPORT                        R5 K15 [tostring]
       50 CALL                             R5 1 1
       51 NAMECALL                         R3 R3 K1 ["format"]
       53 CALL                             R3 2 1
       54 GETUPVAL                         R4 3
       55 GETTABLEKS                       R4 R4 K2 ["FFlagDebugAssistantMcpCaptureLogging"]
       57 JUMPIFNOT                        R4 ; [+8]
       58 GETIMPORT                        R4 K17 [warn]
       60 LOADK                            R5 K5 ["[McpCaptureUploader] %*"]
       61 MOVE                             R7 R3
       62 NAMECALL                         R5 R5 K1 ["format"]
       64 CALL                             R5 2 1
       65 CALL                             R4 1 0
       66 GETUPVAL                         R3 5
       67 DUPTABLE                         R4 K23 [{["harness"], ["outcome"] = "failed", ["reason"] = "error"}]
       68 GETTABLEKS                       R5 R0 K18 ["harness"]
       70 SETTABLEKS                       R5 R4 K18 ["harness"]
       72 CALL                             R3 1 0
       73 JUMPBACK                         ; [-72]
       74 LOADB                            R0 0
       75 SETUPVAL                         R0 0
       76 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 10
        3 JUMPIFNOTLE                      R2 R1 ; [+21]
        5 GETIMPORT                        R1 K2 [table.remove]
        7 GETUPVAL                         R2 0
        8 LOADN                            R3 1
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["FFlagDebugAssistantMcpCaptureLogging"]
       13 JUMPIFNOT                        R2 ; [+4]
       14 GETIMPORT                        R2 K5 [warn]
       16 LOADK                            R3 K6 ["[McpCaptureUploader] Dropped a captured prompt (too many uploads waiting)"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 2
       19 DUPTABLE                         R3 K12 [{["harness"], ["outcome"] = "dropped", ["reason"] = "queueFull"}]
       20 GETTABLEKS                       R4 R1 K7 ["harness"]
       22 SETTABLEKS                       R4 R3 K7 ["harness"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 0
       26 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       28 MOVE                             R3 R0
       29 GETIMPORT                        R1 K14 [table.insert]
       31 CALL                             R1 2 0
       32 GETUPVAL                         R1 3
       33 JUMPIF                           R1 ; [+4]
       34 GETIMPORT                        R1 K17 [task.spawn]
       36 GETUPVAL                         R2 4
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_15:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R2 R1 K0 ["post"]
        6 JUMPIF                           R2 ; [+1]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R4 R1 K2 ["maxAttempts"]
       10 ORK                              R3 R4 K1 [3]
       11 GETTABLEKS                       R5 R1 K4 ["retryDelaySeconds"]
       13 ORK                              R4 R5 K3 [2]
       14 GETTABLEKS                       R5 R1 K5 ["urlOverride"]
       16 JUMPIF                           R5 ; [+3]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K6 ["FStringDebugAssistantMcpCaptureUrlOverride"]
       20 GETTABLEKS                       R6 R1 K7 ["isConsentEnabled"]
       22 JUMPIF                           R6 ; [+3]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K8 ["isEnabled"]
       26 GETTABLEKS                       R7 R1 K9 ["logOutcome"]
       28 JUMPIF                           R7 ; [+1]
       29 GETUPVAL                         R7 3
       30 NEWCLOSURE                       R8 P0
       31 CAPTURE                          VAL R6
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R9 0 0
       43 LOADB                            R10 0
       44 NEWCLOSURE                       R11 P1
       45 CAPTURE                          REF R10
       46 CAPTURE                          VAL R9
       47 CAPTURE                          VAL R6
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R7
       51 NEWCLOSURE                       R12 P2
       52 CAPTURE                          VAL R9
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R7
       55 CAPTURE                          REF R10
       56 CAPTURE                          VAL R11
       57 DUPTABLE                         R13 K12 [{"uploadAsync", "upload"}]
       58 SETTABLEKS                       R8 R13 K10 ["uploadAsync"]
       60 SETTABLEKS                       R12 R13 K11 ["upload"]
       62 CLOSEUPVALS                      R10
       63 RETURN                           R13 1

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
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Flags"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETIMPORT                        R6 K1 [script]
       38 GETTABLEKS                       R6 R6 K15 ["Parent"]
       40 GETTABLEKS                       R6 R6 K16 ["McpCaptureTypes"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R2 K17 ["Guest"]
       45 GETTABLEKS                       R6 R6 K18 ["Environment"]
       47 GETTABLEKS                       R7 R2 K19 ["IntegrationManagement"]
       49 GETTABLEKS                       R7 R7 K20 ["McpCaptureConsent"]
       51 LOADNIL                          R8
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          REF R8
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 DUPCLOSURE                       R10 K21 [PROTO_4]
       57 CAPTURE                          VAL R6
       58 DUPCLOSURE                       R11 K22 [PROTO_5]
       59 CAPTURE                          VAL R4
       60 DUPCLOSURE                       R12 K23 [PROTO_6]
       61 CAPTURE                          VAL R4
       62 DUPCLOSURE                       R13 K24 [PROTO_7]
       63 DUPCLOSURE                       R14 K25 [PROTO_8]
       64 DUPCLOSURE                       R15 K26 [PROTO_10]
       65 CAPTURE                          VAL R6
       66 DUPCLOSURE                       R16 K27 [PROTO_15]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R15
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R1
       73 DUPTABLE                         R17 K31 [{["new"], ["UPLOAD_PATH"] = "/mcp-capture-service/v1/captures"}]
       74 SETTABLEKS                       R16 R17 K28 ["new"]
       76 CLOSEUPVALS                      R8
       77 RETURN                           R17 1
