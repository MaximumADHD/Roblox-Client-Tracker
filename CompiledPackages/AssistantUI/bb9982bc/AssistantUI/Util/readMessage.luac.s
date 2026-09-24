PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantCapToolResult"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["FIntAssistantMaxToolResultChars"]
        9 CALL                             R1 2 1
       10 JUMP                             ; [+1]
       11 MOVE                             R1 R0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["FFlagMCPContentNormalization"]
       15 JUMPIFNOT                        R2 ; [+13]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K3 ["join"]
       19 MOVE                             R3 R1
       20 DUPTABLE                         R4 K5 [{"content"}]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R6 R1 K4 ["content"]
       24 CALL                             R5 1 1
       25 SETTABLEKS                       R5 R4 K4 ["content"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1
       29 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K1 ["layoutOrder"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K1 ["layoutOrder"]
        5 ORK                              R3 R4 K0 [0]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 JUMPIFNOT                        R4 ; [+9]
       11 GETTABLEKS                       R6 R0 K2 ["priority"]
       13 GETTABLEKS                       R7 R1 K2 ["priority"]
       15 JUMPIFLT                         R6 R7 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 RETURN                           R5 1
       20 JUMPIFLT                         R2 R3 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["message"]
        3 GETTABLEKS                       R1 R1 K1 ["content"]
        5 LENGTH                           R0 R1
        6 LOADN                            R1 0
        7 JUMPIFNOTLT                      R1 R0 ; [+8]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
       13 GETIMPORT                        R0 K4 [table.insert]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["message"]
        3 GETTABLEKS                       R2 R2 K1 ["role"]
        5 JUMPIFEQ                         R2 R0 ; [+45]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["message"]
       10 GETTABLEKS                       R3 R3 K2 ["content"]
       12 LENGTH                           R2 R3
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R3 R2 ; [+8]
       16 GETUPVAL                         R3 1
       17 GETUPVAL                         R4 0
       18 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       20 GETIMPORT                        R2 K5 [table.insert]
       22 CALL                             R2 2 0
       23 DUPTABLE                         R2 K9 [{"message", "createdAt", "updatedAt", "lastServerStreamId"}]
       24 DUPTABLE                         R3 K10 [{"content", "role"}]
       25 NEWTABLE                         R4 0 1
       27 GETTABLEKS                       R5 R1 K2 ["content"]
       29 SETLIST                          R4 R5 1 [1]
       31 SETTABLEKS                       R4 R3 K2 ["content"]
       33 SETTABLEKS                       R0 R3 K1 ["role"]
       35 SETTABLEKS                       R3 R2 K0 ["message"]
       37 GETTABLEKS                       R3 R1 K6 ["createdAt"]
       39 SETTABLEKS                       R3 R2 K6 ["createdAt"]
       41 GETTABLEKS                       R3 R1 K7 ["updatedAt"]
       43 SETTABLEKS                       R3 R2 K7 ["updatedAt"]
       45 GETTABLEKS                       R3 R1 K8 ["lastServerStreamId"]
       47 SETTABLEKS                       R3 R2 K8 ["lastServerStreamId"]
       49 SETUPVAL                         R2 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K6 ["createdAt"]
       54 JUMPIFNOTEQKN                    R2 K11 [0] ; [+6]
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R3 R1 K6 ["createdAt"]
       59 SETTABLEKS                       R3 R2 K6 ["createdAt"]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R3 R1 K7 ["updatedAt"]
       64 SETTABLEKS                       R3 R2 K7 ["updatedAt"]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R3 R1 K8 ["lastServerStreamId"]
       69 SETTABLEKS                       R3 R2 K8 ["lastServerStreamId"]
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R3 R3 K0 ["message"]
       74 GETTABLEKS                       R3 R3 K2 ["content"]
       76 GETTABLEKS                       R4 R1 K2 ["content"]
       78 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       80 GETIMPORT                        R2 K5 [table.insert]
       82 CALL                             R2 2 0
       83 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETTABLEKS                       R4 R1 K0 ["attachRawImageContent"]
        6 JUMPIFEQKB                       R4 TRUE ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETTABLEKS                       R4 R0 K1 ["contents"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R9 R8 K2 ["type"]
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R10 R10 K3 ["Type"]
       20 JUMPIFNOTEQ                      R9 R10 ; [+36]
       22 GETTABLEKS                       R9 R8 K4 ["text"]
       24 JUMPIFEQKS                       R9 K5 [""] ; [+265]
       26 DUPTABLE                         R10 K6 [{["type"] = "text", ["text"]}]
       27 GETTABLEKS                       R11 R8 K4 ["text"]
       29 SETTABLEKS                       R11 R10 K4 ["text"]
       31 DUPTABLE                         R13 K14 [{["content"], ["layoutOrder"], ["priority"] = 2, ["createdAt"], ["updatedAt"], ["lastServerStreamId"]}]
       32 SETTABLEKS                       R10 R13 K7 ["content"]
       34 GETTABLEKS                       R14 R8 K15 ["LayoutOrder"]
       36 SETTABLEKS                       R14 R13 K8 ["layoutOrder"]
       38 GETTABLEKS                       R14 R8 K11 ["createdAt"]
       40 SETTABLEKS                       R14 R13 K11 ["createdAt"]
       42 GETTABLEKS                       R14 R8 K12 ["updatedAt"]
       44 SETTABLEKS                       R14 R13 K12 ["updatedAt"]
       46 GETTABLEKS                       R14 R8 K13 ["lastServerStreamId"]
       48 SETTABLEKS                       R14 R13 K13 ["lastServerStreamId"]
       50 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       52 MOVE                             R12 R2
       53 GETIMPORT                        R11 K18 [table.insert]
       55 CALL                             R11 2 0
       56 JUMP                             ; [+171]
       57 GETTABLEKS                       R9 R8 K2 ["type"]
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R10 R10 K3 ["Type"]
       62 JUMPIFNOTEQ                      R9 R10 ; [+44]
       64 GETTABLEKS                       R9 R8 K19 ["thinking"]
       66 JUMPIFNOTEQKS                    R9 K5 [""] ; [+5]
       68 GETTABLEKS                       R9 R8 K20 ["signature"]
       70 JUMPIFEQKS                       R9 K5 [""] ; [+219]
       72 DUPTABLE                         R9 K21 [{["type"] = "thinking", ["thinking"], ["signature"]}]
       73 GETTABLEKS                       R10 R8 K19 ["thinking"]
       75 SETTABLEKS                       R10 R9 K19 ["thinking"]
       77 GETTABLEKS                       R10 R8 K20 ["signature"]
       79 SETTABLEKS                       R10 R9 K20 ["signature"]
       81 DUPTABLE                         R12 K14 [{["content"], ["layoutOrder"], ["priority"] = 2, ["createdAt"], ["updatedAt"], ["lastServerStreamId"]}]
       82 SETTABLEKS                       R9 R12 K7 ["content"]
       84 GETTABLEKS                       R13 R8 K15 ["LayoutOrder"]
       86 SETTABLEKS                       R13 R12 K8 ["layoutOrder"]
       88 GETTABLEKS                       R13 R8 K11 ["createdAt"]
       90 SETTABLEKS                       R13 R12 K11 ["createdAt"]
       92 GETTABLEKS                       R13 R8 K12 ["updatedAt"]
       94 SETTABLEKS                       R13 R12 K12 ["updatedAt"]
       96 GETTABLEKS                       R13 R8 K13 ["lastServerStreamId"]
       98 SETTABLEKS                       R13 R12 K13 ["lastServerStreamId"]
      100 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      102 MOVE                             R11 R2
      103 GETIMPORT                        R10 K18 [table.insert]
      105 CALL                             R10 2 0
      106 JUMP                             ; [+121]
      107 GETTABLEKS                       R9 R0 K22 ["role"]
      109 GETUPVAL                         R10 2
      110 GETTABLEKS                       R10 R10 K23 ["ROLE"]
      112 GETTABLEKS                       R10 R10 K24 ["User"]
      114 JUMPIFNOTEQ                      R9 R10 ; [+113]
      116 GETTABLEKS                       R9 R8 K2 ["type"]
      118 GETUPVAL                         R10 3
      119 GETTABLEKS                       R10 R10 K3 ["Type"]
      121 JUMPIFNOTEQ                      R9 R10 ; [+106]
      123 GETTABLEKS                       R9 R8 K25 ["imageContents"]
      125 MOVE                             R10 R9
      126 LOADNIL                          R11
      127 LOADNIL                          R12
      128 FORGPREP                         R10
      129 GETUPVAL                         R15 4
      130 GETTABLEKS                       R15 R15 K26 ["storeImage"]
      132 MOVE                             R16 R14
      133 CALL                             R15 1 1
      134 JUMPIFNOT                        R3 ; [+63]
      135 DUPTABLE                         R18 K28 [{["content"], ["layoutOrder"], ["priority"] = 0, ["createdAt"], ["updatedAt"], ["lastServerStreamId"]}]
      136 DUPTABLE                         R19 K32 [{["type"] = "image", ["data"], ["mimeType"]}]
      137 GETTABLEKS                       R20 R14 K30 ["data"]
      139 SETTABLEKS                       R20 R19 K30 ["data"]
      141 GETTABLEKS                       R20 R14 K31 ["mimeType"]
      143 SETTABLEKS                       R20 R19 K31 ["mimeType"]
      145 SETTABLEKS                       R19 R18 K7 ["content"]
      147 GETTABLEKS                       R19 R8 K15 ["LayoutOrder"]
      149 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      151 GETTABLEKS                       R19 R8 K11 ["createdAt"]
      153 SETTABLEKS                       R19 R18 K11 ["createdAt"]
      155 GETTABLEKS                       R19 R8 K12 ["updatedAt"]
      157 SETTABLEKS                       R19 R18 K12 ["updatedAt"]
      159 GETTABLEKS                       R19 R8 K13 ["lastServerStreamId"]
      161 SETTABLEKS                       R19 R18 K13 ["lastServerStreamId"]
      163 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      165 MOVE                             R17 R2
      166 GETIMPORT                        R16 K18 [table.insert]
      168 CALL                             R16 2 0
      169 DUPTABLE                         R18 K34 [{["content"], ["layoutOrder"], ["priority"] = 1, ["createdAt"], ["updatedAt"], ["lastServerStreamId"]}]
      170 DUPTABLE                         R19 K6 [{["type"] = "text", ["text"]}]
      171 SETTABLEKS                       R15 R19 K4 ["text"]
      173 SETTABLEKS                       R19 R18 K7 ["content"]
      175 GETTABLEKS                       R19 R8 K15 ["LayoutOrder"]
      177 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      179 GETTABLEKS                       R19 R8 K11 ["createdAt"]
      181 SETTABLEKS                       R19 R18 K11 ["createdAt"]
      183 GETTABLEKS                       R19 R8 K12 ["updatedAt"]
      185 SETTABLEKS                       R19 R18 K12 ["updatedAt"]
      187 GETTABLEKS                       R19 R8 K13 ["lastServerStreamId"]
      189 SETTABLEKS                       R19 R18 K13 ["lastServerStreamId"]
      191 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      193 MOVE                             R17 R2
      194 GETIMPORT                        R16 K18 [table.insert]
      196 CALL                             R16 2 0
      197 JUMP                             ; [+28]
      198 DUPTABLE                         R18 K28 [{["content"], ["layoutOrder"], ["priority"] = 0, ["createdAt"], ["updatedAt"], ["lastServerStreamId"]}]
      199 DUPTABLE                         R19 K6 [{["type"] = "text", ["text"]}]
      200 SETTABLEKS                       R15 R19 K4 ["text"]
      202 SETTABLEKS                       R19 R18 K7 ["content"]
      204 GETTABLEKS                       R19 R8 K15 ["LayoutOrder"]
      206 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      208 GETTABLEKS                       R19 R8 K11 ["createdAt"]
      210 SETTABLEKS                       R19 R18 K11 ["createdAt"]
      212 GETTABLEKS                       R19 R8 K12 ["updatedAt"]
      214 SETTABLEKS                       R19 R18 K12 ["updatedAt"]
      216 GETTABLEKS                       R19 R8 K13 ["lastServerStreamId"]
      218 SETTABLEKS                       R19 R18 K13 ["lastServerStreamId"]
      220 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      222 MOVE                             R17 R2
      223 GETIMPORT                        R16 K18 [table.insert]
      225 CALL                             R16 2 0
      226 FORGLOOP                         R10 2 ; [-98]
      228 GETTABLEKS                       R9 R8 K35 ["toolUse"]
      230 JUMPIFNOT                        R9 ; [+27]
      231 DUPTABLE                         R11 K37 [{["content"], ["layoutOrder"], ["priority"] = 3, ["createdAt"], ["updatedAt"], ["lastServerStreamId"]}]
      232 GETTABLEKS                       R12 R8 K35 ["toolUse"]
      234 SETTABLEKS                       R12 R11 K7 ["content"]
      236 GETTABLEKS                       R12 R8 K15 ["LayoutOrder"]
      238 SETTABLEKS                       R12 R11 K8 ["layoutOrder"]
      240 GETTABLEKS                       R12 R8 K11 ["createdAt"]
      242 SETTABLEKS                       R12 R11 K11 ["createdAt"]
      244 GETTABLEKS                       R12 R8 K12 ["updatedAt"]
      246 SETTABLEKS                       R12 R11 K12 ["updatedAt"]
      248 GETTABLEKS                       R12 R8 K13 ["lastServerStreamId"]
      250 SETTABLEKS                       R12 R11 K13 ["lastServerStreamId"]
      252 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      254 MOVE                             R10 R2
      255 GETIMPORT                        R9 K18 [table.insert]
      257 CALL                             R9 2 0
      258 GETTABLEKS                       R9 R8 K38 ["toolResult"]
      260 JUMPIFNOT                        R9 ; [+29]
      261 DUPTABLE                         R11 K40 [{["content"], ["layoutOrder"], ["priority"] = 4, ["createdAt"], ["updatedAt"], ["lastServerStreamId"]}]
      262 GETUPVAL                         R12 5
      263 GETTABLEKS                       R13 R8 K38 ["toolResult"]
      265 CALL                             R12 1 1
      266 SETTABLEKS                       R12 R11 K7 ["content"]
      268 GETTABLEKS                       R12 R8 K15 ["LayoutOrder"]
      270 SETTABLEKS                       R12 R11 K8 ["layoutOrder"]
      272 GETTABLEKS                       R12 R8 K11 ["createdAt"]
      274 SETTABLEKS                       R12 R11 K11 ["createdAt"]
      276 GETTABLEKS                       R12 R8 K12 ["updatedAt"]
      278 SETTABLEKS                       R12 R11 K12 ["updatedAt"]
      280 GETTABLEKS                       R12 R8 K13 ["lastServerStreamId"]
      282 SETTABLEKS                       R12 R11 K13 ["lastServerStreamId"]
      284 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      286 MOVE                             R10 R2
      287 GETIMPORT                        R9 K18 [table.insert]
      289 CALL                             R9 2 0
      290 FORGLOOP                         R4 2 ; [-276]
      292 GETIMPORT                        R4 K42 [table.sort]
      294 MOVE                             R5 R2
      295 GETUPVAL                         R6 6
      296 CALL                             R4 2 0
      297 NEWTABLE                         R4 0 0
      299 DUPTABLE                         R5 K44 [{["message"], ["createdAt"] = 0, ["updatedAt"] = 0, ["lastServerStreamId"] = ""}]
      300 DUPTABLE                         R6 K45 [{"content", "role"}]
      301 NEWTABLE                         R7 0 0
      303 SETTABLEKS                       R7 R6 K7 ["content"]
      305 GETTABLEKS                       R7 R0 K22 ["role"]
      307 SETTABLEKS                       R7 R6 K22 ["role"]
      309 SETTABLEKS                       R6 R5 K43 ["message"]
      311 NEWCLOSURE                       R6 P0
      312 CAPTURE                          REF R5
      313 CAPTURE                          VAL R4
      314 NEWCLOSURE                       R7 P1
      315 CAPTURE                          REF R5
      316 CAPTURE                          VAL R4
      317 MOVE                             R8 R2
      318 LOADNIL                          R9
      319 LOADNIL                          R10
      320 FORGPREP                         R8
      321 GETTABLEKS                       R13 R12 K7 ["content"]
      323 GETTABLEKS                       R14 R13 K2 ["type"]
      325 JUMPIFEQKS                       R14 K4 ["text"] ; [+5]
      327 GETTABLEKS                       R14 R13 K2 ["type"]
      329 JUMPIFNOTEQKS                    R14 K29 ["image"] ; [+7]
      331 MOVE                             R14 R7
      332 GETTABLEKS                       R15 R0 K22 ["role"]
      334 MOVE                             R16 R12
      335 CALL                             R14 2 0
      336 JUMP                             ; [+32]
      337 GETTABLEKS                       R14 R13 K2 ["type"]
      339 JUMPIFEQKS                       R14 K19 ["thinking"] ; [+9]
      341 GETTABLEKS                       R14 R13 K2 ["type"]
      343 JUMPIFEQKS                       R14 K46 ["tool_use"] ; [+5]
      345 GETTABLEKS                       R14 R13 K2 ["type"]
      347 JUMPIFNOTEQKS                    R14 K47 ["input_requested"] ; [+6]
      349 MOVE                             R14 R7
      350 LOADK                            R15 K48 ["assistant"]
      351 MOVE                             R16 R12
      352 CALL                             R14 2 0
      353 JUMP                             ; [+15]
      354 GETTABLEKS                       R14 R13 K2 ["type"]
      356 JUMPIFNOTEQKS                    R14 K49 ["tool_result"] ; [+6]
      358 MOVE                             R14 R7
      359 LOADK                            R15 K50 ["user"]
      360 MOVE                             R16 R12
      361 CALL                             R14 2 0
      362 JUMP                             ; [+6]
      363 GETUPVAL                         R14 2
      364 GETTABLEKS                       R14 R14 K51 ["assertNever"]
      366 GETTABLEKS                       R15 R13 K2 ["type"]
      368 CALL                             R14 1 0
      369 FORGLOOP                         R8 2 ; [-49]
      371 GETTABLEKS                       R9 R5 K43 ["message"]
      373 GETTABLEKS                       R9 R9 K7 ["content"]
      375 LENGTH                           R8 R9
      376 LOADN                            R9 0
      377 JUMPIFNOTLT                      R9 R8 ; [+8]
      379 FASTCALL2                        TABLE_INSERT R4 R5 ; [+5]
      381 MOVE                             R9 R4
      382 MOVE                             R10 R5
      383 GETIMPORT                        R8 K18 [table.insert]
      385 CALL                             R8 2 0
      386 CLOSEUPVALS                      R5
      387 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETTABLEKS                       R11 R8 K0 ["message"]
       12 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       14 MOVE                             R10 R3
       15 GETIMPORT                        R9 K3 [table.insert]
       17 CALL                             R9 2 0
       18 FORGLOOP                         R4 2 ; [-9]
       20 RETURN                           R3 1

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
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["ImageContentStore"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Components"]
       37 GETTABLEKS                       R6 R6 K13 ["ContentWidgets"]
       39 GETTABLEKS                       R6 R6 K14 ["ImageContentWidget"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["McpContentNormalizer"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Components"]
       53 GETTABLEKS                       R8 R8 K13 ["ContentWidgets"]
       55 GETTABLEKS                       R8 R8 K16 ["TextContentWidget"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K12 ["Components"]
       62 GETTABLEKS                       R9 R9 K13 ["ContentWidgets"]
       64 GETTABLEKS                       R9 R9 K17 ["ThinkingContentWidget"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K18 ["Types"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R1 K19 ["Engine"]
       74 GETTABLEKS                       R10 R10 K20 ["capToolResult"]
       76 GETTABLEKS                       R11 R6 K21 ["normalizeContentArray"]
       78 DUPCLOSURE                       R12 K22 [PROTO_0]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R11
       83 DUPCLOSURE                       R13 K23 [PROTO_1]
       84 DUPCLOSURE                       R14 K24 [PROTO_4]
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R13
       92 DUPCLOSURE                       R15 K25 [PROTO_5]
       93 CAPTURE                          VAL R14
       94 DUPTABLE                         R16 K28 [{"readMessage", "readMessageWithTimestamp"}]
       95 SETTABLEKS                       R15 R16 K26 ["readMessage"]
       97 SETTABLEKS                       R14 R16 K27 ["readMessageWithTimestamp"]
       99 RETURN                           R16 1
