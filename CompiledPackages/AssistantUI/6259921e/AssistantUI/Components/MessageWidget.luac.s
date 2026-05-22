PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["role"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["ROLE"]
        6 GETTABLEKS                       R4 R4 K2 ["User"]
        8 JUMPIFNOTEQ                      R3 R4 ; [+10]
       10 GETTABLEKS                       R3 R1 K3 ["type"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["Type"]
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{"messageId", "contentId", "transformFn"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["messageId"]
        5 SETTABLEKS                       R4 R3 K0 ["messageId"]
        7 SETTABLEKS                       R0 R3 K1 ["contentId"]
        9 SETTABLEKS                       R1 R3 K2 ["transformFn"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["GuiState"]
        3 GETIMPORT                        R3 K3 [Enum.GuiState.Hover]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["GuiState"]
        9 GETIMPORT                        R3 K5 [Enum.GuiState.Press]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 GETUPVAL                         R2 0
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"User", "Assistant"}]
        1 NEWTABLE                         R1 2 0
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K3 ["size-full-0 auto-y Assistant-MessageWidget"]
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K4 ["padding-left-large padding-bottom-large align-x-right Assistant-UserMessage"]
        9 SETTABLEKS                       R1 R0 K0 ["User"]
       11 NEWTABLE                         R1 2 0
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R1 K3 ["size-full-0 auto-y Assistant-MessageWidget"]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K5 ["col gap-small Assistant-AssistantMessage"]
       19 SETTABLEKS                       R1 R0 K1 ["Assistant"]
       21 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 8 0
        2 LOADB                            R1 1
        3 SETTABLEKS                       R1 R0 K0 ["size-full-0 auto-y"]
        5 GETUPVAL                         R1 0
        6 SETTABLEKS                       R1 R0 K1 ["padding-left-large"]
        8 GETUPVAL                         R1 0
        9 SETTABLEKS                       R1 R0 K2 ["align-x-right"]
       11 GETUPVAL                         R2 0
       12 NOT                              R1 R2
       13 SETTABLEKS                       R1 R0 K3 ["col gap-small"]
       15 LOADB                            R1 1
       16 SETTABLEKS                       R1 R0 K4 ["Assistant-MessageWidget"]
       18 GETUPVAL                         R1 0
       19 SETTABLEKS                       R1 R0 K5 ["Assistant-UserMessage"]
       21 GETUPVAL                         R2 0
       22 NOT                              R1 R2
       23 SETTABLEKS                       R1 R0 K6 ["Assistant-AssistantMessage"]
       25 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["Context"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R5 R0 K2 ["role"]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K3 ["ROLE"]
       14 GETTABLEKS                       R6 R6 K4 ["User"]
       16 JUMPIFEQ                         R5 R6 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 0
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R9 0 2
       32 MOVE                             R10 R2
       33 GETTABLEKS                       R11 R0 K6 ["messageId"]
       35 SETLIST                          R9 R10 2 [1]
       37 CALL                             R7 2 1
       38 LOADN                            R8 0
       39 GETTABLEKS                       R9 R0 K7 ["contents"]
       41 LOADNIL                          R10
       42 LOADNIL                          R11
       43 FORGPREP                         R9
       44 GETUPVAL                         R14 4
       45 GETTABLEKS                       R14 R14 K8 ["get"]
       47 GETTABLEKS                       R15 R13 K9 ["type"]
       49 CALL                             R14 1 1
       50 JUMPIFNOT                        R14 ; [+137]
       51 GETUPVAL                         R15 5
       52 CALL                             R15 0 1
       53 JUMPIFNOT                        R15 ; [+69]
       54 GETUPVAL                         R15 6
       55 GETTABLEKS                       R15 R15 K10 ["assign"]
       57 DUPTABLE                         R16 K13 [{"messageId", "role", "editThisContent", "sendMessage"}]
       58 GETTABLEKS                       R17 R0 K6 ["messageId"]
       60 SETTABLEKS                       R17 R16 K6 ["messageId"]
       62 GETTABLEKS                       R17 R0 K2 ["role"]
       64 SETTABLEKS                       R17 R16 K2 ["role"]
       66 SETTABLEKS                       R7 R16 K11 ["editThisContent"]
       68 GETTABLEKS                       R17 R0 K12 ["sendMessage"]
       70 SETTABLEKS                       R17 R16 K12 ["sendMessage"]
       72 MOVE                             R17 R13
       73 CALL                             R15 2 1
       74 GETIMPORT                        R16 K16 [string.format]
       76 LOADK                            R17 K17 ["Content-%04i-%s"]
       77 GETTABLEKS                       R19 R15 K19 ["LayoutOrder"]
       79 ORK                              R18 R19 K18 [0]
       80 MOVE                             R19 R12
       81 CALL                             R16 3 1
       82 GETUPVAL                         R17 7
       83 CALL                             R17 0 1
       84 JUMPIFNOT                        R17 ; [+32]
       85 LOADB                            R17 0
       86 GETTABLEKS                       R18 R0 K2 ["role"]
       88 GETUPVAL                         R19 3
       89 GETTABLEKS                       R19 R19 K3 ["ROLE"]
       91 GETTABLEKS                       R19 R19 K4 ["User"]
       93 JUMPIFNOTEQ                      R18 R19 ; [+10]
       95 GETTABLEKS                       R18 R13 K9 ["type"]
       97 GETUPVAL                         R19 8
       98 GETTABLEKS                       R19 R19 K20 ["Type"]
      100 JUMPIFEQ                         R18 R19 ; [+2]
      102 LOADB                            R17 0 +1
      103 LOADB                            R17 1
      104 JUMPIFNOT                        R17 ; [+6]
      105 GETUPVAL                         R17 9
      106 MOVE                             R18 R14
      107 MOVE                             R19 R15
      108 CALL                             R17 2 1
      109 SETTABLE                         R17 R6 R16
      110 JUMP                             ; [+67]
      111 GETUPVAL                         R17 9
      112 MOVE                             R18 R14
      113 MOVE                             R19 R15
      114 CALL                             R17 2 1
      115 SETTABLE                         R17 R5 R16
      116 JUMP                             ; [+61]
      117 GETUPVAL                         R17 9
      118 MOVE                             R18 R14
      119 MOVE                             R19 R15
      120 CALL                             R17 2 1
      121 SETTABLE                         R17 R5 R16
      122 JUMP                             ; [+55]
      123 GETUPVAL                         R15 9
      124 MOVE                             R16 R14
      125 GETUPVAL                         R17 10
      126 GETTABLEKS                       R17 R17 K21 ["Dictionary"]
      128 GETTABLEKS                       R17 R17 K22 ["join"]
      130 MOVE                             R18 R13
      131 DUPTABLE                         R19 K24 [{"messageId", "contentId", "role", "editThisContent", "sendMessage"}]
      132 GETTABLEKS                       R20 R0 K6 ["messageId"]
      134 SETTABLEKS                       R20 R19 K6 ["messageId"]
      136 SETTABLEKS                       R12 R19 K23 ["contentId"]
      138 GETTABLEKS                       R20 R0 K2 ["role"]
      140 SETTABLEKS                       R20 R19 K2 ["role"]
      142 SETTABLEKS                       R7 R19 K11 ["editThisContent"]
      144 GETTABLEKS                       R20 R0 K12 ["sendMessage"]
      146 SETTABLEKS                       R20 R19 K12 ["sendMessage"]
      148 CALL                             R17 2 -1
      149 CALL                             R15 -1 1
      150 GETUPVAL                         R16 7
      151 CALL                             R16 0 1
      152 JUMPIFNOT                        R16 ; [+24]
      153 LOADB                            R16 0
      154 GETTABLEKS                       R17 R0 K2 ["role"]
      156 GETUPVAL                         R18 3
      157 GETTABLEKS                       R18 R18 K3 ["ROLE"]
      159 GETTABLEKS                       R18 R18 K4 ["User"]
      161 JUMPIFNOTEQ                      R17 R18 ; [+10]
      163 GETTABLEKS                       R17 R13 K9 ["type"]
      165 GETUPVAL                         R18 8
      166 GETTABLEKS                       R18 R18 K20 ["Type"]
      168 JUMPIFEQ                         R17 R18 ; [+2]
      170 LOADB                            R16 0 +1
      171 LOADB                            R16 1
      172 JUMPIFNOT                        R16 ; [+2]
      173 SETTABLE                         R15 R6 R12
      174 JUMP                             ; [+3]
      175 SETTABLE                         R15 R5 R12
      176 JUMP                             ; [+1]
      177 SETTABLE                         R15 R5 R12
      178 GETTABLEKS                       R15 R13 K19 ["LayoutOrder"]
      180 JUMPIFNOT                        R15 ; [+13]
      181 GETTABLEKS                       R15 R13 K19 ["LayoutOrder"]
      183 JUMPIFNOTLT                      R8 R15 ; [+10]
      185 GETTABLEKS                       R8 R13 K19 ["LayoutOrder"]
      187 JUMP                             ; [+6]
      188 GETIMPORT                        R15 K26 [warn]
      190 LOADK                            R16 K27 ["No builder for content type:"]
      191 GETTABLEKS                       R17 R13 K9 ["type"]
      193 CALL                             R15 2 0
      194 FORGLOOP                         R9 2 ; [-151]
      196 LOADB                            R9 0
      197 GETTABLEKS                       R10 R0 K7 ["contents"]
      199 LOADNIL                          R11
      200 LOADNIL                          R12
      201 FORGPREP                         R10
      202 GETTABLEKS                       R15 R14 K28 ["generating"]
      204 JUMPIFNOT                        R15 ; [+2]
      205 LOADB                            R9 1
      206 JUMP                             ; [+2]
      207 FORGLOOP                         R10 2 ; [-6]
      209 GETTABLEKS                       R10 R3 K29 ["reasonDisabled"]
      211 JUMPIFNOT                        R10 ; [+4]
      212 GETTABLEKS                       R10 R3 K29 ["reasonDisabled"]
      214 GETTABLEKS                       R10 R10 K29 ["reasonDisabled"]
      216 GETTABLEKS                       R11 R0 K30 ["isLatestAssistantAndMostRecent"]
      218 JUMPIFNOT                        R11 ; [+14]
      219 GETUPVAL                         R11 11
      220 GETTABLEKS                       R11 R11 K31 ["Generation"]
      222 JUMPIFNOTEQ                      R10 R11 ; [+10]
      224 GETUPVAL                         R11 9
      225 GETUPVAL                         R12 12
      226 DUPTABLE                         R13 K32 [{"LayoutOrder"}]
      227 ADDK                             R14 R8 K33 [1]
      228 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      230 CALL                             R11 2 1
      231 SETTABLEKS                       R11 R5 K34 ["GenerationIndicator"]
      233 LOADNIL                          R11
      234 GETUPVAL                         R12 5
      235 CALL                             R12 0 1
      236 JUMPIFNOT                        R12 ; [+70]
      237 GETUPVAL                         R12 1
      238 GETTABLEKS                       R12 R12 K35 ["useState"]
      240 LOADB                            R13 0
      241 CALL                             R12 1 2
      242 GETTABLEKS                       R15 R0 K2 ["role"]
      244 GETUPVAL                         R16 3
      245 GETTABLEKS                       R16 R16 K3 ["ROLE"]
      247 GETTABLEKS                       R16 R16 K36 ["Assistant"]
      249 JUMPIFEQ                         R15 R16 ; [+2]
      251 LOADB                            R14 0 +1
      252 LOADB                            R14 1
      253 GETTABLEKS                       R16 R0 K30 ["isLatestAssistantAndMostRecent"]
      255 JUMPIF                           R16 ; [+2]
      256 MOVE                             R15 R12
      257 JUMPIFNOT                        R15 ; [+6]
      258 GETTABLEKS                       R15 R3 K37 ["inputEnabled"]
      260 JUMPIFNOT                        R15 ; [+3]
      261 NOT                              R15 R9
      262 JUMPIFNOT                        R15 ; [+1]
      263 MOVE                             R15 R14
      264 JUMPIF                           R14 ; [+9]
      265 GETTABLEKS                       R16 R0 K2 ["role"]
      267 GETUPVAL                         R17 3
      268 GETTABLEKS                       R17 R17 K3 ["ROLE"]
      270 GETTABLEKS                       R17 R17 K38 ["System"]
      272 JUMPIFNOTEQ                      R16 R17 ; [+24]
      274 GETUPVAL                         R16 9
      275 GETUPVAL                         R17 13
      276 DUPTABLE                         R18 K42 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      277 ADDK                             R19 R8 K43 [2]
      278 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      280 GETTABLEKS                       R19 R0 K39 ["retryMessage"]
      282 SETTABLEKS                       R19 R18 K39 ["retryMessage"]
      284 GETTABLEKS                       R19 R0 K6 ["messageId"]
      286 SETTABLEKS                       R19 R18 K6 ["messageId"]
      288 GETTABLEKS                       R19 R0 K40 ["thumbsState"]
      290 SETTABLEKS                       R19 R18 K40 ["thumbsState"]
      292 SETTABLEKS                       R15 R18 K41 ["shouldShowActions"]
      294 CALL                             R16 2 1
      295 SETTABLEKS                       R16 R5 K44 ["MessageActions"]
      297 GETUPVAL                         R16 1
      298 GETTABLEKS                       R16 R16 K5 ["useCallback"]
      300 NEWCLOSURE                       R17 P1
      301 CAPTURE                          VAL R13
      302 NEWTABLE                         R18 0 0
      304 CALL                             R16 2 1
      305 MOVE                             R11 R16
      306 JUMP                             ; [+31]
      307 GETTABLEKS                       R12 R0 K30 ["isLatestAssistantAndMostRecent"]
      309 JUMPIFNOT                        R12 ; [+4]
      310 GETTABLEKS                       R12 R3 K37 ["inputEnabled"]
      312 JUMPIFNOT                        R12 ; [+1]
      313 NOT                              R12 R9
      314 JUMPIFNOT                        R12 ; [+23]
      315 GETUPVAL                         R13 9
      316 GETUPVAL                         R14 13
      317 DUPTABLE                         R15 K42 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      318 ADDK                             R16 R8 K43 [2]
      319 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      321 GETTABLEKS                       R16 R0 K39 ["retryMessage"]
      323 SETTABLEKS                       R16 R15 K39 ["retryMessage"]
      325 GETTABLEKS                       R16 R0 K6 ["messageId"]
      327 SETTABLEKS                       R16 R15 K6 ["messageId"]
      329 LOADNIL                          R16
      330 SETTABLEKS                       R16 R15 K40 ["thumbsState"]
      332 LOADB                            R16 1
      333 SETTABLEKS                       R16 R15 K41 ["shouldShowActions"]
      335 CALL                             R13 2 1
      336 SETTABLEKS                       R13 R5 K44 ["MessageActions"]
      338 LOADNIL                          R12
      339 GETUPVAL                         R13 5
      340 CALL                             R13 0 1
      341 JUMPIFNOT                        R13 ; [+9]
      342 GETUPVAL                         R13 1
      343 GETTABLEKS                       R13 R13 K45 ["useMemo"]
      345 DUPCLOSURE                       R14 K46 [PROTO_3]
      346 NEWTABLE                         R15 0 0
      348 CALL                             R13 2 1
      349 MOVE                             R12 R13
      350 JUMP                             ; [+12]
      351 GETUPVAL                         R13 1
      352 GETTABLEKS                       R13 R13 K45 ["useMemo"]
      354 NEWCLOSURE                       R14 P3
      355 CAPTURE                          VAL R4
      356 NEWTABLE                         R15 0 1
      358 MOVE                             R16 R4
      359 SETLIST                          R15 R16 1 [1]
      361 CALL                             R13 2 1
      362 MOVE                             R12 R13
      363 GETIMPORT                        R13 K48 [next]
      365 GETTABLEKS                       R14 R0 K7 ["contents"]
      367 CALL                             R13 1 1
      368 JUMPIFNOTEQKNIL                  R13 ; [+5]
      370 GETUPVAL                         R13 1
      371 GETTABLEKS                       R13 R13 K49 ["None"]
      373 RETURN                           R13 1
      374 GETUPVAL                         R13 5
      375 CALL                             R13 0 1
      376 JUMPIFNOT                        R13 ; [+118]
      377 JUMPIFNOT                        R4 ; [+69]
      378 NEWTABLE                         R13 0 0
      380 GETUPVAL                         R14 7
      381 CALL                             R14 0 1
      382 JUMPIFNOT                        R14 ; [+19]
      383 GETIMPORT                        R14 K48 [next]
      385 MOVE                             R15 R6
      386 CALL                             R14 1 1
      387 JUMPIFEQKNIL                     R14 ; [+14]
      389 GETUPVAL                         R14 9
      390 GETUPVAL                         R15 14
      391 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      392 LOADK                            R17 K52 ["col size-0-0 auto-xy gap-small"]
      393 SETTABLEKS                       R17 R16 K50 ["tag"]
      395 LOADN                            R17 0
      396 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      398 MOVE                             R17 R6
      399 CALL                             R14 3 1
      400 SETTABLEKS                       R14 R13 K53 ["TransparentContents"]
      402 GETIMPORT                        R14 K48 [next]
      404 MOVE                             R15 R5
      405 CALL                             R14 1 1
      406 JUMPIFEQKNIL                     R14 ; [+14]
      408 GETUPVAL                         R14 9
      409 GETUPVAL                         R15 14
      410 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      411 LOADK                            R17 K54 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      412 SETTABLEKS                       R17 R16 K50 ["tag"]
      414 LOADN                            R17 1
      415 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      417 MOVE                             R17 R5
      418 CALL                             R14 3 1
      419 SETTABLEKS                       R14 R13 K55 ["MessageBubble"]
      421 GETUPVAL                         R14 9
      422 GETUPVAL                         R15 14
      423 DUPTABLE                         R16 K57 [{"tag", "LayoutOrder", "ref"}]
      424 GETTABLEKS                       R17 R12 K4 ["User"]
      426 SETTABLEKS                       R17 R16 K50 ["tag"]
      428 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      430 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      432 SETTABLEKS                       R1 R16 K56 ["ref"]
      434 DUPTABLE                         R17 K59 [{"ContentStack"}]
      435 GETUPVAL                         R18 9
      436 GETUPVAL                         R19 14
      437 DUPTABLE                         R20 K60 [{"tag"}]
      438 LOADK                            R21 K61 ["col size-0-0 auto-xy gap-small align-x-right"]
      439 SETTABLEKS                       R21 R20 K50 ["tag"]
      441 MOVE                             R21 R13
      442 CALL                             R18 3 1
      443 SETTABLEKS                       R18 R17 K58 ["ContentStack"]
      445 CALL                             R14 3 -1
      446 RETURN                           R14 -1
      447 GETUPVAL                         R13 9
      448 LOADK                            R14 K62 ["ImageButton"]
      449 NEWTABLE                         R15 8 0
      451 GETIMPORT                        R16 K65 [UDim2.fromScale]
      453 LOADN                            R17 1
      454 LOADN                            R18 0
      455 CALL                             R16 2 1
      456 SETTABLEKS                       R16 R15 K66 ["Size"]
      458 GETIMPORT                        R16 K70 [Enum.AutomaticSize.Y]
      460 SETTABLEKS                       R16 R15 K68 ["AutomaticSize"]
      462 LOADN                            R16 1
      463 SETTABLEKS                       R16 R15 K71 ["BackgroundTransparency"]
      465 GETUPVAL                         R16 1
      466 GETTABLEKS                       R16 R16 K72 ["Change"]
      468 GETTABLEKS                       R16 R16 K73 ["GuiState"]
      470 SETTABLE                         R11 R15 R16
      471 GETTABLEKS                       R16 R0 K19 ["LayoutOrder"]
      473 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      475 SETTABLEKS                       R1 R15 K56 ["ref"]
      477 DUPTABLE                         R16 K75 [{"Container"}]
      478 GETUPVAL                         R17 9
      479 GETUPVAL                         R18 14
      480 DUPTABLE                         R19 K51 [{"tag", "LayoutOrder"}]
      481 GETTABLEKS                       R20 R12 K36 ["Assistant"]
      483 SETTABLEKS                       R20 R19 K50 ["tag"]
      485 GETTABLEKS                       R20 R0 K19 ["LayoutOrder"]
      487 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      489 MOVE                             R20 R5
      490 CALL                             R17 3 1
      491 SETTABLEKS                       R17 R16 K74 ["Container"]
      493 CALL                             R13 3 -1
      494 RETURN                           R13 -1
      495 NEWTABLE                         R13 0 0
      497 GETUPVAL                         R14 7
      498 CALL                             R14 0 1
      499 JUMPIFNOT                        R14 ; [+19]
      500 GETIMPORT                        R14 K48 [next]
      502 MOVE                             R15 R6
      503 CALL                             R14 1 1
      504 JUMPIFEQKNIL                     R14 ; [+14]
      506 GETUPVAL                         R14 9
      507 GETUPVAL                         R15 14
      508 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      509 LOADK                            R17 K52 ["col size-0-0 auto-xy gap-small"]
      510 SETTABLEKS                       R17 R16 K50 ["tag"]
      512 LOADN                            R17 0
      513 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      515 MOVE                             R17 R6
      516 CALL                             R14 3 1
      517 SETTABLEKS                       R14 R13 K53 ["TransparentContents"]
      519 GETIMPORT                        R14 K48 [next]
      521 MOVE                             R15 R5
      522 CALL                             R14 1 1
      523 JUMPIFEQKNIL                     R14 ; [+14]
      525 GETUPVAL                         R14 9
      526 GETUPVAL                         R15 14
      527 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      528 LOADK                            R17 K54 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      529 SETTABLEKS                       R17 R16 K50 ["tag"]
      531 LOADN                            R17 1
      532 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      534 MOVE                             R17 R5
      535 CALL                             R14 3 1
      536 SETTABLEKS                       R14 R13 K55 ["MessageBubble"]
      538 GETUPVAL                         R14 9
      539 GETUPVAL                         R15 14
      540 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      541 SETTABLEKS                       R12 R16 K50 ["tag"]
      543 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      545 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      547 JUMPIFNOT                        R4 ; [+12]
      548 DUPTABLE                         R17 K59 [{"ContentStack"}]
      549 GETUPVAL                         R18 9
      550 GETUPVAL                         R19 14
      551 DUPTABLE                         R20 K60 [{"tag"}]
      552 LOADK                            R21 K61 ["col size-0-0 auto-xy gap-small align-x-right"]
      553 SETTABLEKS                       R21 R20 K50 ["tag"]
      555 MOVE                             R21 R13
      556 CALL                             R18 3 1
      557 SETTABLEKS                       R18 R17 K58 ["ContentStack"]
      559 JUMP                             ; [+1]
      560 MOVE                             R17 R5
      561 CALL                             R14 3 -1
      562 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgetRegistry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["GenerationIndicator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["ContentWidgets"]
       48 GETTABLEKS                       R7 R7 K15 ["ImageContentWidget"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K12 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K17 ["InputStateContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K12 ["Components"]
       64 GETTABLEKS                       R9 R9 K18 ["MessageActions"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K8 ["Parent"]
       71 GETTABLEKS                       R10 R10 K19 ["React"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K20 ["Types"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K21 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K22 ["useEditContent"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K23 ["Flags"]
       90 GETTABLEKS                       R13 R13 K24 ["FFlagAssistantMultipleChatPersistence"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K23 ["Flags"]
       97 GETTABLEKS                       R14 R14 K25 ["FFlagEnableAssistantInputImageAttachment"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R4 K26 ["View"]
      102 GETTABLEKS                       R15 R9 K27 ["createElement"]
      104 GETTABLEKS                       R16 R7 K28 ["InputDisabledReasons"]
      106 DUPCLOSURE                       R17 K29 [PROTO_0]
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R6
      109 DUPCLOSURE                       R18 K30 [PROTO_5]
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R14
      125 GETTABLEKS                       R19 R9 K31 ["forwardRef"]
      127 MOVE                             R20 R18
      128 CALL                             R19 1 -1
      129 RETURN                           R19 -1
