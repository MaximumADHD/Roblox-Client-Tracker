PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["role"]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["ROLE"]
        6 GETTABLEKS                       R4 R5 K2 ["User"]
        8 JUMPIFNOTEQ                      R3 R4 ; [+10]
       10 GETTABLEKS                       R3 R1 K3 ["type"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["Type"]
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{"messageId", "contentId", "transformFn"}]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["messageId"]
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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R0 K2 ["role"]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R6 R7 K3 ["ROLE"]
       14 GETTABLEKS                       R5 R6 K4 ["User"]
       16 JUMPIFEQ                         R4 R5 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 NEWTABLE                         R4 0 0
       22 NEWTABLE                         R5 0 0
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R6 R7 K5 ["useCallback"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R8 0 2
       32 MOVE                             R9 R1
       33 GETTABLEKS                       R10 R0 K6 ["messageId"]
       35 SETLIST                          R8 R9 2 [1]
       37 CALL                             R6 2 1
       38 LOADN                            R7 0
       39 GETTABLEKS                       R8 R0 K7 ["contents"]
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 FORGPREP                         R8
       44 GETUPVAL                         R14 4
       45 GETTABLEKS                       R13 R14 K8 ["get"]
       47 GETTABLEKS                       R14 R12 K9 ["type"]
       49 CALL                             R13 1 1
       50 JUMPIFNOT                        R13 ; [+137]
       51 GETUPVAL                         R14 5
       52 CALL                             R14 0 1
       53 JUMPIFNOT                        R14 ; [+69]
       54 GETUPVAL                         R15 6
       55 GETTABLEKS                       R14 R15 K10 ["assign"]
       57 DUPTABLE                         R15 K13 [{"messageId", "role", "editThisContent", "sendMessage"}]
       58 GETTABLEKS                       R16 R0 K6 ["messageId"]
       60 SETTABLEKS                       R16 R15 K6 ["messageId"]
       62 GETTABLEKS                       R16 R0 K2 ["role"]
       64 SETTABLEKS                       R16 R15 K2 ["role"]
       66 SETTABLEKS                       R6 R15 K11 ["editThisContent"]
       68 GETTABLEKS                       R16 R0 K12 ["sendMessage"]
       70 SETTABLEKS                       R16 R15 K12 ["sendMessage"]
       72 MOVE                             R16 R12
       73 CALL                             R14 2 1
       74 GETIMPORT                        R15 K16 [string.format]
       76 LOADK                            R16 K17 ["Content-%04i-%s"]
       77 GETTABLEKS                       R18 R14 K19 ["LayoutOrder"]
       79 ORK                              R17 R18 K18 [0]
       80 MOVE                             R18 R11
       81 CALL                             R15 3 1
       82 GETUPVAL                         R16 7
       83 CALL                             R16 0 1
       84 JUMPIFNOT                        R16 ; [+32]
       85 LOADB                            R16 0
       86 GETTABLEKS                       R17 R0 K2 ["role"]
       88 GETUPVAL                         R20 3
       89 GETTABLEKS                       R19 R20 K3 ["ROLE"]
       91 GETTABLEKS                       R18 R19 K4 ["User"]
       93 JUMPIFNOTEQ                      R17 R18 ; [+10]
       95 GETTABLEKS                       R17 R12 K9 ["type"]
       97 GETUPVAL                         R19 8
       98 GETTABLEKS                       R18 R19 K20 ["Type"]
      100 JUMPIFEQ                         R17 R18 ; [+2]
      102 LOADB                            R16 0 +1
      103 LOADB                            R16 1
      104 JUMPIFNOT                        R16 ; [+6]
      105 GETUPVAL                         R16 9
      106 MOVE                             R17 R13
      107 MOVE                             R18 R14
      108 CALL                             R16 2 1
      109 SETTABLE                         R16 R5 R15
      110 JUMP                             ; [+67]
      111 GETUPVAL                         R16 9
      112 MOVE                             R17 R13
      113 MOVE                             R18 R14
      114 CALL                             R16 2 1
      115 SETTABLE                         R16 R4 R15
      116 JUMP                             ; [+61]
      117 GETUPVAL                         R16 9
      118 MOVE                             R17 R13
      119 MOVE                             R18 R14
      120 CALL                             R16 2 1
      121 SETTABLE                         R16 R4 R15
      122 JUMP                             ; [+55]
      123 GETUPVAL                         R14 9
      124 MOVE                             R15 R13
      125 GETUPVAL                         R18 10
      126 GETTABLEKS                       R17 R18 K21 ["Dictionary"]
      128 GETTABLEKS                       R16 R17 K22 ["join"]
      130 MOVE                             R17 R12
      131 DUPTABLE                         R18 K24 [{"messageId", "contentId", "role", "editThisContent", "sendMessage"}]
      132 GETTABLEKS                       R19 R0 K6 ["messageId"]
      134 SETTABLEKS                       R19 R18 K6 ["messageId"]
      136 SETTABLEKS                       R11 R18 K23 ["contentId"]
      138 GETTABLEKS                       R19 R0 K2 ["role"]
      140 SETTABLEKS                       R19 R18 K2 ["role"]
      142 SETTABLEKS                       R6 R18 K11 ["editThisContent"]
      144 GETTABLEKS                       R19 R0 K12 ["sendMessage"]
      146 SETTABLEKS                       R19 R18 K12 ["sendMessage"]
      148 CALL                             R16 2 -1
      149 CALL                             R14 -1 1
      150 GETUPVAL                         R15 7
      151 CALL                             R15 0 1
      152 JUMPIFNOT                        R15 ; [+24]
      153 LOADB                            R15 0
      154 GETTABLEKS                       R16 R0 K2 ["role"]
      156 GETUPVAL                         R19 3
      157 GETTABLEKS                       R18 R19 K3 ["ROLE"]
      159 GETTABLEKS                       R17 R18 K4 ["User"]
      161 JUMPIFNOTEQ                      R16 R17 ; [+10]
      163 GETTABLEKS                       R16 R12 K9 ["type"]
      165 GETUPVAL                         R18 8
      166 GETTABLEKS                       R17 R18 K20 ["Type"]
      168 JUMPIFEQ                         R16 R17 ; [+2]
      170 LOADB                            R15 0 +1
      171 LOADB                            R15 1
      172 JUMPIFNOT                        R15 ; [+2]
      173 SETTABLE                         R14 R5 R11
      174 JUMP                             ; [+3]
      175 SETTABLE                         R14 R4 R11
      176 JUMP                             ; [+1]
      177 SETTABLE                         R14 R4 R11
      178 GETTABLEKS                       R14 R12 K19 ["LayoutOrder"]
      180 JUMPIFNOT                        R14 ; [+13]
      181 GETTABLEKS                       R14 R12 K19 ["LayoutOrder"]
      183 JUMPIFNOTLT                      R7 R14 ; [+10]
      185 GETTABLEKS                       R7 R12 K19 ["LayoutOrder"]
      187 JUMP                             ; [+6]
      188 GETIMPORT                        R14 K26 [warn]
      190 LOADK                            R15 K27 ["No builder for content type:"]
      191 GETTABLEKS                       R16 R12 K9 ["type"]
      193 CALL                             R14 2 0
      194 FORGLOOP                         R8 2 ; [-151]
      196 LOADB                            R8 0
      197 GETTABLEKS                       R9 R0 K7 ["contents"]
      199 LOADNIL                          R10
      200 LOADNIL                          R11
      201 FORGPREP                         R9
      202 GETTABLEKS                       R14 R13 K28 ["generating"]
      204 JUMPIFNOT                        R14 ; [+2]
      205 LOADB                            R8 1
      206 JUMP                             ; [+2]
      207 FORGLOOP                         R9 2 ; [-6]
      209 GETTABLEKS                       R9 R2 K29 ["reasonDisabled"]
      211 JUMPIFNOT                        R9 ; [+4]
      212 GETTABLEKS                       R10 R2 K29 ["reasonDisabled"]
      214 GETTABLEKS                       R9 R10 K29 ["reasonDisabled"]
      216 GETTABLEKS                       R10 R0 K30 ["isLatestAssistantAndMostRecent"]
      218 JUMPIFNOT                        R10 ; [+14]
      219 GETUPVAL                         R11 11
      220 GETTABLEKS                       R10 R11 K31 ["Generation"]
      222 JUMPIFNOTEQ                      R9 R10 ; [+10]
      224 GETUPVAL                         R10 9
      225 GETUPVAL                         R11 12
      226 DUPTABLE                         R12 K32 [{"LayoutOrder"}]
      227 ADDK                             R13 R7 K33 [1]
      228 SETTABLEKS                       R13 R12 K19 ["LayoutOrder"]
      230 CALL                             R10 2 1
      231 SETTABLEKS                       R10 R4 K34 ["GenerationIndicator"]
      233 LOADNIL                          R10
      234 GETUPVAL                         R11 5
      235 CALL                             R11 0 1
      236 JUMPIFNOT                        R11 ; [+70]
      237 GETUPVAL                         R12 1
      238 GETTABLEKS                       R11 R12 K35 ["useState"]
      240 LOADB                            R12 0
      241 CALL                             R11 1 2
      242 GETTABLEKS                       R14 R0 K2 ["role"]
      244 GETUPVAL                         R17 3
      245 GETTABLEKS                       R16 R17 K3 ["ROLE"]
      247 GETTABLEKS                       R15 R16 K36 ["Assistant"]
      249 JUMPIFEQ                         R14 R15 ; [+2]
      251 LOADB                            R13 0 +1
      252 LOADB                            R13 1
      253 GETTABLEKS                       R15 R0 K30 ["isLatestAssistantAndMostRecent"]
      255 JUMPIF                           R15 ; [+2]
      256 MOVE                             R14 R11
      257 JUMPIFNOT                        R14 ; [+6]
      258 GETTABLEKS                       R14 R2 K37 ["inputEnabled"]
      260 JUMPIFNOT                        R14 ; [+3]
      261 NOT                              R14 R8
      262 JUMPIFNOT                        R14 ; [+1]
      263 MOVE                             R14 R13
      264 JUMPIF                           R13 ; [+9]
      265 GETTABLEKS                       R15 R0 K2 ["role"]
      267 GETUPVAL                         R18 3
      268 GETTABLEKS                       R17 R18 K3 ["ROLE"]
      270 GETTABLEKS                       R16 R17 K38 ["System"]
      272 JUMPIFNOTEQ                      R15 R16 ; [+24]
      274 GETUPVAL                         R15 9
      275 GETUPVAL                         R16 13
      276 DUPTABLE                         R17 K42 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      277 ADDK                             R18 R7 K43 [2]
      278 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      280 GETTABLEKS                       R18 R0 K39 ["retryMessage"]
      282 SETTABLEKS                       R18 R17 K39 ["retryMessage"]
      284 GETTABLEKS                       R18 R0 K6 ["messageId"]
      286 SETTABLEKS                       R18 R17 K6 ["messageId"]
      288 GETTABLEKS                       R18 R0 K40 ["thumbsState"]
      290 SETTABLEKS                       R18 R17 K40 ["thumbsState"]
      292 SETTABLEKS                       R14 R17 K41 ["shouldShowActions"]
      294 CALL                             R15 2 1
      295 SETTABLEKS                       R15 R4 K44 ["MessageActions"]
      297 GETUPVAL                         R16 1
      298 GETTABLEKS                       R15 R16 K5 ["useCallback"]
      300 NEWCLOSURE                       R16 P1
      301 CAPTURE                          VAL R12
      302 NEWTABLE                         R17 0 0
      304 CALL                             R15 2 1
      305 MOVE                             R10 R15
      306 JUMP                             ; [+31]
      307 GETTABLEKS                       R11 R0 K30 ["isLatestAssistantAndMostRecent"]
      309 JUMPIFNOT                        R11 ; [+4]
      310 GETTABLEKS                       R11 R2 K37 ["inputEnabled"]
      312 JUMPIFNOT                        R11 ; [+1]
      313 NOT                              R11 R8
      314 JUMPIFNOT                        R11 ; [+23]
      315 GETUPVAL                         R12 9
      316 GETUPVAL                         R13 13
      317 DUPTABLE                         R14 K42 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      318 ADDK                             R15 R7 K43 [2]
      319 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      321 GETTABLEKS                       R15 R0 K39 ["retryMessage"]
      323 SETTABLEKS                       R15 R14 K39 ["retryMessage"]
      325 GETTABLEKS                       R15 R0 K6 ["messageId"]
      327 SETTABLEKS                       R15 R14 K6 ["messageId"]
      329 LOADNIL                          R15
      330 SETTABLEKS                       R15 R14 K40 ["thumbsState"]
      332 LOADB                            R15 1
      333 SETTABLEKS                       R15 R14 K41 ["shouldShowActions"]
      335 CALL                             R12 2 1
      336 SETTABLEKS                       R12 R4 K44 ["MessageActions"]
      338 LOADNIL                          R11
      339 GETUPVAL                         R12 5
      340 CALL                             R12 0 1
      341 JUMPIFNOT                        R12 ; [+9]
      342 GETUPVAL                         R13 1
      343 GETTABLEKS                       R12 R13 K45 ["useMemo"]
      345 DUPCLOSURE                       R13 K46 [PROTO_3]
      346 NEWTABLE                         R14 0 0
      348 CALL                             R12 2 1
      349 MOVE                             R11 R12
      350 JUMP                             ; [+12]
      351 GETUPVAL                         R13 1
      352 GETTABLEKS                       R12 R13 K45 ["useMemo"]
      354 NEWCLOSURE                       R13 P3
      355 CAPTURE                          VAL R3
      356 NEWTABLE                         R14 0 1
      358 MOVE                             R15 R3
      359 SETLIST                          R14 R15 1 [1]
      361 CALL                             R12 2 1
      362 MOVE                             R11 R12
      363 GETIMPORT                        R12 K48 [next]
      365 GETTABLEKS                       R13 R0 K7 ["contents"]
      367 CALL                             R12 1 1
      368 JUMPIFNOTEQKNIL                  R12 ; [+5]
      370 GETUPVAL                         R13 1
      371 GETTABLEKS                       R12 R13 K49 ["None"]
      373 RETURN                           R12 1
      374 GETUPVAL                         R12 5
      375 CALL                             R12 0 1
      376 JUMPIFNOT                        R12 ; [+114]
      377 JUMPIFNOT                        R3 ; [+67]
      378 NEWTABLE                         R12 0 0
      380 GETUPVAL                         R13 7
      381 CALL                             R13 0 1
      382 JUMPIFNOT                        R13 ; [+19]
      383 GETIMPORT                        R13 K48 [next]
      385 MOVE                             R14 R5
      386 CALL                             R13 1 1
      387 JUMPIFEQKNIL                     R13 ; [+14]
      389 GETUPVAL                         R13 9
      390 GETUPVAL                         R14 14
      391 DUPTABLE                         R15 K51 [{"tag", "LayoutOrder"}]
      392 LOADK                            R16 K52 ["col size-0-0 auto-xy gap-small"]
      393 SETTABLEKS                       R16 R15 K50 ["tag"]
      395 LOADN                            R16 0
      396 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      398 MOVE                             R16 R5
      399 CALL                             R13 3 1
      400 SETTABLEKS                       R13 R12 K53 ["TransparentContents"]
      402 GETIMPORT                        R13 K48 [next]
      404 MOVE                             R14 R4
      405 CALL                             R13 1 1
      406 JUMPIFEQKNIL                     R13 ; [+14]
      408 GETUPVAL                         R13 9
      409 GETUPVAL                         R14 14
      410 DUPTABLE                         R15 K51 [{"tag", "LayoutOrder"}]
      411 LOADK                            R16 K54 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      412 SETTABLEKS                       R16 R15 K50 ["tag"]
      414 LOADN                            R16 1
      415 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      417 MOVE                             R16 R4
      418 CALL                             R13 3 1
      419 SETTABLEKS                       R13 R12 K55 ["MessageBubble"]
      421 GETUPVAL                         R13 9
      422 GETUPVAL                         R14 14
      423 DUPTABLE                         R15 K51 [{"tag", "LayoutOrder"}]
      424 GETTABLEKS                       R16 R11 K4 ["User"]
      426 SETTABLEKS                       R16 R15 K50 ["tag"]
      428 GETTABLEKS                       R16 R0 K19 ["LayoutOrder"]
      430 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      432 DUPTABLE                         R16 K57 [{"ContentStack"}]
      433 GETUPVAL                         R17 9
      434 GETUPVAL                         R18 14
      435 DUPTABLE                         R19 K58 [{"tag"}]
      436 LOADK                            R20 K59 ["col size-0-0 auto-xy gap-small align-x-right"]
      437 SETTABLEKS                       R20 R19 K50 ["tag"]
      439 MOVE                             R20 R12
      440 CALL                             R17 3 1
      441 SETTABLEKS                       R17 R16 K56 ["ContentStack"]
      443 CALL                             R13 3 -1
      444 RETURN                           R13 -1
      445 GETUPVAL                         R12 9
      446 LOADK                            R13 K60 ["ImageButton"]
      447 NEWTABLE                         R14 8 0
      449 GETIMPORT                        R15 K63 [UDim2.fromScale]
      451 LOADN                            R16 1
      452 LOADN                            R17 0
      453 CALL                             R15 2 1
      454 SETTABLEKS                       R15 R14 K64 ["Size"]
      456 GETIMPORT                        R15 K68 [Enum.AutomaticSize.Y]
      458 SETTABLEKS                       R15 R14 K66 ["AutomaticSize"]
      460 LOADN                            R15 1
      461 SETTABLEKS                       R15 R14 K69 ["BackgroundTransparency"]
      463 GETUPVAL                         R17 1
      464 GETTABLEKS                       R16 R17 K70 ["Change"]
      466 GETTABLEKS                       R15 R16 K71 ["GuiState"]
      468 SETTABLE                         R10 R14 R15
      469 GETTABLEKS                       R15 R0 K19 ["LayoutOrder"]
      471 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      473 DUPTABLE                         R15 K73 [{"Container"}]
      474 GETUPVAL                         R16 9
      475 GETUPVAL                         R17 14
      476 DUPTABLE                         R18 K51 [{"tag", "LayoutOrder"}]
      477 GETTABLEKS                       R19 R11 K36 ["Assistant"]
      479 SETTABLEKS                       R19 R18 K50 ["tag"]
      481 GETTABLEKS                       R19 R0 K19 ["LayoutOrder"]
      483 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      485 MOVE                             R19 R4
      486 CALL                             R16 3 1
      487 SETTABLEKS                       R16 R15 K72 ["Container"]
      489 CALL                             R12 3 -1
      490 RETURN                           R12 -1
      491 NEWTABLE                         R12 0 0
      493 GETUPVAL                         R13 7
      494 CALL                             R13 0 1
      495 JUMPIFNOT                        R13 ; [+19]
      496 GETIMPORT                        R13 K48 [next]
      498 MOVE                             R14 R5
      499 CALL                             R13 1 1
      500 JUMPIFEQKNIL                     R13 ; [+14]
      502 GETUPVAL                         R13 9
      503 GETUPVAL                         R14 14
      504 DUPTABLE                         R15 K51 [{"tag", "LayoutOrder"}]
      505 LOADK                            R16 K52 ["col size-0-0 auto-xy gap-small"]
      506 SETTABLEKS                       R16 R15 K50 ["tag"]
      508 LOADN                            R16 0
      509 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      511 MOVE                             R16 R5
      512 CALL                             R13 3 1
      513 SETTABLEKS                       R13 R12 K53 ["TransparentContents"]
      515 GETIMPORT                        R13 K48 [next]
      517 MOVE                             R14 R4
      518 CALL                             R13 1 1
      519 JUMPIFEQKNIL                     R13 ; [+14]
      521 GETUPVAL                         R13 9
      522 GETUPVAL                         R14 14
      523 DUPTABLE                         R15 K51 [{"tag", "LayoutOrder"}]
      524 LOADK                            R16 K54 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      525 SETTABLEKS                       R16 R15 K50 ["tag"]
      527 LOADN                            R16 1
      528 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      530 MOVE                             R16 R4
      531 CALL                             R13 3 1
      532 SETTABLEKS                       R13 R12 K55 ["MessageBubble"]
      534 GETUPVAL                         R13 9
      535 GETUPVAL                         R14 14
      536 DUPTABLE                         R15 K51 [{"tag", "LayoutOrder"}]
      537 SETTABLEKS                       R11 R15 K50 ["tag"]
      539 GETTABLEKS                       R16 R0 K19 ["LayoutOrder"]
      541 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      543 JUMPIFNOT                        R3 ; [+12]
      544 DUPTABLE                         R16 K57 [{"ContentStack"}]
      545 GETUPVAL                         R17 9
      546 GETUPVAL                         R18 14
      547 DUPTABLE                         R19 K58 [{"tag"}]
      548 LOADK                            R20 K59 ["col size-0-0 auto-xy gap-small align-x-right"]
      549 SETTABLEKS                       R20 R19 K50 ["tag"]
      551 MOVE                             R20 R12
      552 CALL                             R17 3 1
      553 SETTABLEKS                       R17 R16 K56 ["ContentStack"]
      555 JUMP                             ; [+1]
      556 MOVE                             R16 R4
      557 CALL                             R13 3 -1
      558 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentWidgetRegistry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["GenerationIndicator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Components"]
       46 GETTABLEKS                       R8 R9 K14 ["ContentWidgets"]
       48 GETTABLEKS                       R7 R8 K15 ["ImageContentWidget"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K12 ["Components"]
       55 GETTABLEKS                       R9 R10 K16 ["Contexts"]
       57 GETTABLEKS                       R8 R9 K17 ["InputStateContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K12 ["Components"]
       64 GETTABLEKS                       R9 R10 K18 ["MessageActions"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K8 ["Parent"]
       71 GETTABLEKS                       R10 R11 K19 ["React"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K20 ["Types"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K21 ["Hooks"]
       83 GETTABLEKS                       R12 R13 K22 ["useEditContent"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K23 ["Flags"]
       90 GETTABLEKS                       R13 R14 K24 ["FFlagAssistantMultipleChatPersistence"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K23 ["Flags"]
       97 GETTABLEKS                       R14 R15 K25 ["FFlagEnableAssistantInputImageAttachment"]
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
      125 RETURN                           R18 1
