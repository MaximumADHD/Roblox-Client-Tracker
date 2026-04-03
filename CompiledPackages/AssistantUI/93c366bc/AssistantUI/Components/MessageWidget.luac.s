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
      236 JUMPIFNOT                        R11 ; [+61]
      237 GETUPVAL                         R12 1
      238 GETTABLEKS                       R11 R12 K35 ["useState"]
      240 LOADB                            R12 0
      241 CALL                             R11 1 2
      242 GETTABLEKS                       R14 R0 K30 ["isLatestAssistantAndMostRecent"]
      244 JUMPIF                           R14 ; [+2]
      245 MOVE                             R13 R11
      246 JUMPIFNOT                        R13 ; [+4]
      247 GETTABLEKS                       R13 R2 K36 ["inputEnabled"]
      249 JUMPIFNOT                        R13 ; [+1]
      250 NOT                              R13 R8
      251 GETTABLEKS                       R14 R0 K2 ["role"]
      253 GETUPVAL                         R17 3
      254 GETTABLEKS                       R16 R17 K3 ["ROLE"]
      256 GETTABLEKS                       R15 R16 K37 ["Assistant"]
      258 JUMPIFNOTEQ                      R14 R15 ; [+29]
      260 GETUPVAL                         R14 9
      261 GETUPVAL                         R15 13
      262 DUPTABLE                         R16 K41 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      263 ADDK                             R17 R7 K42 [2]
      264 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      266 GETTABLEKS                       R17 R0 K38 ["retryMessage"]
      268 SETTABLEKS                       R17 R16 K38 ["retryMessage"]
      270 GETTABLEKS                       R17 R0 K6 ["messageId"]
      272 SETTABLEKS                       R17 R16 K6 ["messageId"]
      274 GETUPVAL                         R18 14
      275 CALL                             R18 0 1
      276 JUMPIFNOT                        R18 ; [+3]
      277 GETTABLEKS                       R17 R0 K39 ["thumbsState"]
      279 JUMP                             ; [+1]
      280 LOADNIL                          R17
      281 SETTABLEKS                       R17 R16 K39 ["thumbsState"]
      283 SETTABLEKS                       R13 R16 K40 ["shouldShowActions"]
      285 CALL                             R14 2 1
      286 SETTABLEKS                       R14 R4 K43 ["MessageActions"]
      288 GETUPVAL                         R15 1
      289 GETTABLEKS                       R14 R15 K5 ["useCallback"]
      291 NEWCLOSURE                       R15 P1
      292 CAPTURE                          VAL R12
      293 NEWTABLE                         R16 0 0
      295 CALL                             R14 2 1
      296 MOVE                             R10 R14
      297 JUMP                             ; [+37]
      298 GETTABLEKS                       R11 R0 K30 ["isLatestAssistantAndMostRecent"]
      300 JUMPIFNOT                        R11 ; [+4]
      301 GETTABLEKS                       R11 R2 K36 ["inputEnabled"]
      303 JUMPIFNOT                        R11 ; [+1]
      304 NOT                              R11 R8
      305 JUMPIFNOT                        R11 ; [+29]
      306 GETUPVAL                         R12 9
      307 GETUPVAL                         R13 13
      308 DUPTABLE                         R14 K41 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      309 ADDK                             R15 R7 K42 [2]
      310 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      312 GETTABLEKS                       R15 R0 K38 ["retryMessage"]
      314 SETTABLEKS                       R15 R14 K38 ["retryMessage"]
      316 GETTABLEKS                       R15 R0 K6 ["messageId"]
      318 SETTABLEKS                       R15 R14 K6 ["messageId"]
      320 GETUPVAL                         R16 14
      321 CALL                             R16 0 1
      322 JUMPIFNOT                        R16 ; [+3]
      323 GETTABLEKS                       R15 R0 K39 ["thumbsState"]
      325 JUMP                             ; [+1]
      326 LOADNIL                          R15
      327 SETTABLEKS                       R15 R14 K39 ["thumbsState"]
      329 LOADB                            R15 1
      330 SETTABLEKS                       R15 R14 K40 ["shouldShowActions"]
      332 CALL                             R12 2 1
      333 SETTABLEKS                       R12 R4 K43 ["MessageActions"]
      335 LOADNIL                          R11
      336 GETUPVAL                         R12 5
      337 CALL                             R12 0 1
      338 JUMPIFNOT                        R12 ; [+9]
      339 GETUPVAL                         R13 1
      340 GETTABLEKS                       R12 R13 K44 ["useMemo"]
      342 DUPCLOSURE                       R13 K45 [PROTO_3]
      343 NEWTABLE                         R14 0 0
      345 CALL                             R12 2 1
      346 MOVE                             R11 R12
      347 JUMP                             ; [+12]
      348 GETUPVAL                         R13 1
      349 GETTABLEKS                       R12 R13 K44 ["useMemo"]
      351 NEWCLOSURE                       R13 P3
      352 CAPTURE                          VAL R3
      353 NEWTABLE                         R14 0 1
      355 MOVE                             R15 R3
      356 SETLIST                          R14 R15 1 [1]
      358 CALL                             R12 2 1
      359 MOVE                             R11 R12
      360 GETIMPORT                        R12 K47 [next]
      362 GETTABLEKS                       R13 R0 K7 ["contents"]
      364 CALL                             R12 1 1
      365 JUMPIFNOTEQKNIL                  R12 ; [+5]
      367 GETUPVAL                         R13 1
      368 GETTABLEKS                       R12 R13 K48 ["None"]
      370 RETURN                           R12 1
      371 GETUPVAL                         R12 5
      372 CALL                             R12 0 1
      373 JUMPIFNOT                        R12 ; [+120]
      374 JUMPIFNOT                        R3 ; [+67]
      375 NEWTABLE                         R12 0 0
      377 GETUPVAL                         R13 7
      378 CALL                             R13 0 1
      379 JUMPIFNOT                        R13 ; [+19]
      380 GETIMPORT                        R13 K47 [next]
      382 MOVE                             R14 R5
      383 CALL                             R13 1 1
      384 JUMPIFEQKNIL                     R13 ; [+14]
      386 GETUPVAL                         R13 9
      387 GETUPVAL                         R14 15
      388 DUPTABLE                         R15 K50 [{"tag", "LayoutOrder"}]
      389 LOADK                            R16 K51 ["col size-0-0 auto-xy gap-small"]
      390 SETTABLEKS                       R16 R15 K49 ["tag"]
      392 LOADN                            R16 0
      393 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      395 MOVE                             R16 R5
      396 CALL                             R13 3 1
      397 SETTABLEKS                       R13 R12 K52 ["TransparentContents"]
      399 GETIMPORT                        R13 K47 [next]
      401 MOVE                             R14 R4
      402 CALL                             R13 1 1
      403 JUMPIFEQKNIL                     R13 ; [+14]
      405 GETUPVAL                         R13 9
      406 GETUPVAL                         R14 15
      407 DUPTABLE                         R15 K50 [{"tag", "LayoutOrder"}]
      408 LOADK                            R16 K53 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      409 SETTABLEKS                       R16 R15 K49 ["tag"]
      411 LOADN                            R16 1
      412 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      414 MOVE                             R16 R4
      415 CALL                             R13 3 1
      416 SETTABLEKS                       R13 R12 K54 ["MessageBubble"]
      418 GETUPVAL                         R13 9
      419 GETUPVAL                         R14 15
      420 DUPTABLE                         R15 K50 [{"tag", "LayoutOrder"}]
      421 GETTABLEKS                       R16 R11 K4 ["User"]
      423 SETTABLEKS                       R16 R15 K49 ["tag"]
      425 GETTABLEKS                       R16 R0 K19 ["LayoutOrder"]
      427 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      429 DUPTABLE                         R16 K56 [{"ContentStack"}]
      430 GETUPVAL                         R17 9
      431 GETUPVAL                         R18 15
      432 DUPTABLE                         R19 K57 [{"tag"}]
      433 LOADK                            R20 K58 ["col size-0-0 auto-xy gap-small align-x-right"]
      434 SETTABLEKS                       R20 R19 K49 ["tag"]
      436 MOVE                             R20 R12
      437 CALL                             R17 3 1
      438 SETTABLEKS                       R17 R16 K55 ["ContentStack"]
      440 CALL                             R13 3 -1
      441 RETURN                           R13 -1
      442 GETUPVAL                         R12 9
      443 LOADK                            R13 K59 ["ImageButton"]
      444 NEWTABLE                         R14 8 0
      446 GETIMPORT                        R15 K62 [UDim2.fromScale]
      448 LOADN                            R16 1
      449 LOADN                            R17 0
      450 CALL                             R15 2 1
      451 SETTABLEKS                       R15 R14 K63 ["Size"]
      453 GETIMPORT                        R15 K67 [Enum.AutomaticSize.Y]
      455 SETTABLEKS                       R15 R14 K65 ["AutomaticSize"]
      457 LOADN                            R15 1
      458 SETTABLEKS                       R15 R14 K68 ["BackgroundTransparency"]
      460 GETUPVAL                         R17 1
      461 GETTABLEKS                       R16 R17 K69 ["Change"]
      463 GETTABLEKS                       R15 R16 K70 ["GuiState"]
      465 GETUPVAL                         R17 5
      466 CALL                             R17 0 1
      467 JUMPIFNOT                        R17 ; [+2]
      468 MOVE                             R16 R10
      469 JUMP                             ; [+1]
      470 LOADNIL                          R16
      471 SETTABLE                         R16 R14 R15
      472 GETTABLEKS                       R15 R0 K19 ["LayoutOrder"]
      474 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      476 DUPTABLE                         R15 K72 [{"Container"}]
      477 GETUPVAL                         R16 9
      478 GETUPVAL                         R17 15
      479 DUPTABLE                         R18 K50 [{"tag", "LayoutOrder"}]
      480 GETTABLEKS                       R19 R11 K37 ["Assistant"]
      482 SETTABLEKS                       R19 R18 K49 ["tag"]
      484 GETTABLEKS                       R19 R0 K19 ["LayoutOrder"]
      486 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      488 MOVE                             R19 R4
      489 CALL                             R16 3 1
      490 SETTABLEKS                       R16 R15 K71 ["Container"]
      492 CALL                             R12 3 -1
      493 RETURN                           R12 -1
      494 NEWTABLE                         R12 0 0
      496 GETUPVAL                         R13 7
      497 CALL                             R13 0 1
      498 JUMPIFNOT                        R13 ; [+19]
      499 GETIMPORT                        R13 K47 [next]
      501 MOVE                             R14 R5
      502 CALL                             R13 1 1
      503 JUMPIFEQKNIL                     R13 ; [+14]
      505 GETUPVAL                         R13 9
      506 GETUPVAL                         R14 15
      507 DUPTABLE                         R15 K50 [{"tag", "LayoutOrder"}]
      508 LOADK                            R16 K51 ["col size-0-0 auto-xy gap-small"]
      509 SETTABLEKS                       R16 R15 K49 ["tag"]
      511 LOADN                            R16 0
      512 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      514 MOVE                             R16 R5
      515 CALL                             R13 3 1
      516 SETTABLEKS                       R13 R12 K52 ["TransparentContents"]
      518 GETIMPORT                        R13 K47 [next]
      520 MOVE                             R14 R4
      521 CALL                             R13 1 1
      522 JUMPIFEQKNIL                     R13 ; [+14]
      524 GETUPVAL                         R13 9
      525 GETUPVAL                         R14 15
      526 DUPTABLE                         R15 K50 [{"tag", "LayoutOrder"}]
      527 LOADK                            R16 K53 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      528 SETTABLEKS                       R16 R15 K49 ["tag"]
      530 LOADN                            R16 1
      531 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      533 MOVE                             R16 R4
      534 CALL                             R13 3 1
      535 SETTABLEKS                       R13 R12 K54 ["MessageBubble"]
      537 GETUPVAL                         R13 9
      538 GETUPVAL                         R14 15
      539 DUPTABLE                         R15 K50 [{"tag", "LayoutOrder"}]
      540 SETTABLEKS                       R11 R15 K49 ["tag"]
      542 GETTABLEKS                       R16 R0 K19 ["LayoutOrder"]
      544 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      546 JUMPIFNOT                        R3 ; [+12]
      547 DUPTABLE                         R16 K56 [{"ContentStack"}]
      548 GETUPVAL                         R17 9
      549 GETUPVAL                         R18 15
      550 DUPTABLE                         R19 K57 [{"tag"}]
      551 LOADK                            R20 K58 ["col size-0-0 auto-xy gap-small align-x-right"]
      552 SETTABLEKS                       R20 R19 K49 ["tag"]
      554 MOVE                             R20 R12
      555 CALL                             R17 3 1
      556 SETTABLEKS                       R17 R16 K55 ["ContentStack"]
      558 JUMP                             ; [+1]
      559 MOVE                             R16 R4
      560 CALL                             R13 3 -1
      561 RETURN                           R13 -1

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
       90 GETTABLEKS                       R13 R14 K24 ["FFlagAssistantMultipleChatSupport"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K23 ["Flags"]
       97 GETTABLEKS                       R14 R15 K25 ["FFlagAssistantPersistConversations"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R16 R0 K23 ["Flags"]
      104 GETTABLEKS                       R15 R16 K26 ["FFlagEnableAssistantInputImageAttachment"]
      106 CALL                             R14 1 1
      107 GETTABLEKS                       R15 R4 K27 ["View"]
      109 GETTABLEKS                       R16 R9 K28 ["createElement"]
      111 GETTABLEKS                       R17 R7 K29 ["InputDisabledReasons"]
      113 DUPCLOSURE                       R18 K30 [PROTO_0]
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R6
      116 DUPCLOSURE                       R19 K31 [PROTO_5]
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R15
      133 RETURN                           R19 1
