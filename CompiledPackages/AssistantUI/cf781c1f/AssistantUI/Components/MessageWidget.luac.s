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
       50 JUMPIFNOT                        R14 ; [+123]
       51 GETUPVAL                         R15 5
       52 CALL                             R15 0 1
       53 JUMPIFNOT                        R15 ; [+60]
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
       82 LOADB                            R17 0
       83 GETTABLEKS                       R18 R0 K2 ["role"]
       85 GETUPVAL                         R19 3
       86 GETTABLEKS                       R19 R19 K3 ["ROLE"]
       88 GETTABLEKS                       R19 R19 K4 ["User"]
       90 JUMPIFNOTEQ                      R18 R19 ; [+10]
       92 GETTABLEKS                       R18 R13 K9 ["type"]
       94 GETUPVAL                         R19 7
       95 GETTABLEKS                       R19 R19 K20 ["Type"]
       97 JUMPIFEQ                         R18 R19 ; [+2]
       99 LOADB                            R17 0 +1
      100 LOADB                            R17 1
      101 JUMPIFNOT                        R17 ; [+6]
      102 GETUPVAL                         R17 8
      103 MOVE                             R18 R14
      104 MOVE                             R19 R15
      105 CALL                             R17 2 1
      106 SETTABLE                         R17 R6 R16
      107 JUMP                             ; [+56]
      108 GETUPVAL                         R17 8
      109 MOVE                             R18 R14
      110 MOVE                             R19 R15
      111 CALL                             R17 2 1
      112 SETTABLE                         R17 R5 R16
      113 JUMP                             ; [+50]
      114 GETUPVAL                         R15 8
      115 MOVE                             R16 R14
      116 GETUPVAL                         R17 9
      117 GETTABLEKS                       R17 R17 K21 ["Dictionary"]
      119 GETTABLEKS                       R17 R17 K22 ["join"]
      121 MOVE                             R18 R13
      122 DUPTABLE                         R19 K24 [{"messageId", "contentId", "role", "editThisContent", "sendMessage"}]
      123 GETTABLEKS                       R20 R0 K6 ["messageId"]
      125 SETTABLEKS                       R20 R19 K6 ["messageId"]
      127 SETTABLEKS                       R12 R19 K23 ["contentId"]
      129 GETTABLEKS                       R20 R0 K2 ["role"]
      131 SETTABLEKS                       R20 R19 K2 ["role"]
      133 SETTABLEKS                       R7 R19 K11 ["editThisContent"]
      135 GETTABLEKS                       R20 R0 K12 ["sendMessage"]
      137 SETTABLEKS                       R20 R19 K12 ["sendMessage"]
      139 CALL                             R17 2 -1
      140 CALL                             R15 -1 1
      141 LOADB                            R16 0
      142 GETTABLEKS                       R17 R0 K2 ["role"]
      144 GETUPVAL                         R18 3
      145 GETTABLEKS                       R18 R18 K3 ["ROLE"]
      147 GETTABLEKS                       R18 R18 K4 ["User"]
      149 JUMPIFNOTEQ                      R17 R18 ; [+10]
      151 GETTABLEKS                       R17 R13 K9 ["type"]
      153 GETUPVAL                         R18 7
      154 GETTABLEKS                       R18 R18 K20 ["Type"]
      156 JUMPIFEQ                         R17 R18 ; [+2]
      158 LOADB                            R16 0 +1
      159 LOADB                            R16 1
      160 JUMPIFNOT                        R16 ; [+2]
      161 SETTABLE                         R15 R6 R12
      162 JUMP                             ; [+1]
      163 SETTABLE                         R15 R5 R12
      164 GETTABLEKS                       R15 R13 K19 ["LayoutOrder"]
      166 JUMPIFNOT                        R15 ; [+13]
      167 GETTABLEKS                       R15 R13 K19 ["LayoutOrder"]
      169 JUMPIFNOTLT                      R8 R15 ; [+10]
      171 GETTABLEKS                       R8 R13 K19 ["LayoutOrder"]
      173 JUMP                             ; [+6]
      174 GETIMPORT                        R15 K26 [warn]
      176 LOADK                            R16 K27 ["No builder for content type:"]
      177 GETTABLEKS                       R17 R13 K9 ["type"]
      179 CALL                             R15 2 0
      180 FORGLOOP                         R9 2 ; [-137]
      182 LOADB                            R9 0
      183 GETTABLEKS                       R10 R0 K7 ["contents"]
      185 LOADNIL                          R11
      186 LOADNIL                          R12
      187 FORGPREP                         R10
      188 GETTABLEKS                       R15 R14 K28 ["generating"]
      190 JUMPIFNOT                        R15 ; [+2]
      191 LOADB                            R9 1
      192 JUMP                             ; [+2]
      193 FORGLOOP                         R10 2 ; [-6]
      195 GETTABLEKS                       R10 R3 K29 ["reasonDisabled"]
      197 JUMPIFNOT                        R10 ; [+4]
      198 GETTABLEKS                       R10 R3 K29 ["reasonDisabled"]
      200 GETTABLEKS                       R10 R10 K29 ["reasonDisabled"]
      202 GETTABLEKS                       R11 R0 K30 ["isLatestAssistantAndMostRecent"]
      204 JUMPIFNOT                        R11 ; [+14]
      205 GETUPVAL                         R11 10
      206 GETTABLEKS                       R11 R11 K31 ["Generation"]
      208 JUMPIFNOTEQ                      R10 R11 ; [+10]
      210 GETUPVAL                         R11 8
      211 GETUPVAL                         R12 11
      212 DUPTABLE                         R13 K32 [{"LayoutOrder"}]
      213 ADDK                             R14 R8 K33 [1]
      214 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      216 CALL                             R11 2 1
      217 SETTABLEKS                       R11 R5 K34 ["GenerationIndicator"]
      219 LOADNIL                          R11
      220 GETUPVAL                         R12 5
      221 CALL                             R12 0 1
      222 JUMPIFNOT                        R12 ; [+70]
      223 GETUPVAL                         R12 1
      224 GETTABLEKS                       R12 R12 K35 ["useState"]
      226 LOADB                            R13 0
      227 CALL                             R12 1 2
      228 GETTABLEKS                       R15 R0 K2 ["role"]
      230 GETUPVAL                         R16 3
      231 GETTABLEKS                       R16 R16 K3 ["ROLE"]
      233 GETTABLEKS                       R16 R16 K36 ["Assistant"]
      235 JUMPIFEQ                         R15 R16 ; [+2]
      237 LOADB                            R14 0 +1
      238 LOADB                            R14 1
      239 GETTABLEKS                       R16 R0 K30 ["isLatestAssistantAndMostRecent"]
      241 JUMPIF                           R16 ; [+2]
      242 MOVE                             R15 R12
      243 JUMPIFNOT                        R15 ; [+6]
      244 GETTABLEKS                       R15 R3 K37 ["inputEnabled"]
      246 JUMPIFNOT                        R15 ; [+3]
      247 NOT                              R15 R9
      248 JUMPIFNOT                        R15 ; [+1]
      249 MOVE                             R15 R14
      250 JUMPIF                           R14 ; [+9]
      251 GETTABLEKS                       R16 R0 K2 ["role"]
      253 GETUPVAL                         R17 3
      254 GETTABLEKS                       R17 R17 K3 ["ROLE"]
      256 GETTABLEKS                       R17 R17 K38 ["System"]
      258 JUMPIFNOTEQ                      R16 R17 ; [+24]
      260 GETUPVAL                         R16 8
      261 GETUPVAL                         R17 12
      262 DUPTABLE                         R18 K42 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      263 ADDK                             R19 R8 K43 [2]
      264 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      266 GETTABLEKS                       R19 R0 K39 ["retryMessage"]
      268 SETTABLEKS                       R19 R18 K39 ["retryMessage"]
      270 GETTABLEKS                       R19 R0 K6 ["messageId"]
      272 SETTABLEKS                       R19 R18 K6 ["messageId"]
      274 GETTABLEKS                       R19 R0 K40 ["thumbsState"]
      276 SETTABLEKS                       R19 R18 K40 ["thumbsState"]
      278 SETTABLEKS                       R15 R18 K41 ["shouldShowActions"]
      280 CALL                             R16 2 1
      281 SETTABLEKS                       R16 R5 K44 ["MessageActions"]
      283 GETUPVAL                         R16 1
      284 GETTABLEKS                       R16 R16 K5 ["useCallback"]
      286 NEWCLOSURE                       R17 P1
      287 CAPTURE                          VAL R13
      288 NEWTABLE                         R18 0 0
      290 CALL                             R16 2 1
      291 MOVE                             R11 R16
      292 JUMP                             ; [+31]
      293 GETTABLEKS                       R12 R0 K30 ["isLatestAssistantAndMostRecent"]
      295 JUMPIFNOT                        R12 ; [+4]
      296 GETTABLEKS                       R12 R3 K37 ["inputEnabled"]
      298 JUMPIFNOT                        R12 ; [+1]
      299 NOT                              R12 R9
      300 JUMPIFNOT                        R12 ; [+23]
      301 GETUPVAL                         R13 8
      302 GETUPVAL                         R14 12
      303 DUPTABLE                         R15 K42 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      304 ADDK                             R16 R8 K43 [2]
      305 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      307 GETTABLEKS                       R16 R0 K39 ["retryMessage"]
      309 SETTABLEKS                       R16 R15 K39 ["retryMessage"]
      311 GETTABLEKS                       R16 R0 K6 ["messageId"]
      313 SETTABLEKS                       R16 R15 K6 ["messageId"]
      315 LOADNIL                          R16
      316 SETTABLEKS                       R16 R15 K40 ["thumbsState"]
      318 LOADB                            R16 1
      319 SETTABLEKS                       R16 R15 K41 ["shouldShowActions"]
      321 CALL                             R13 2 1
      322 SETTABLEKS                       R13 R5 K44 ["MessageActions"]
      324 LOADNIL                          R12
      325 GETUPVAL                         R13 5
      326 CALL                             R13 0 1
      327 JUMPIFNOT                        R13 ; [+9]
      328 GETUPVAL                         R13 1
      329 GETTABLEKS                       R13 R13 K45 ["useMemo"]
      331 DUPCLOSURE                       R14 K46 [PROTO_3]
      332 NEWTABLE                         R15 0 0
      334 CALL                             R13 2 1
      335 MOVE                             R12 R13
      336 JUMP                             ; [+12]
      337 GETUPVAL                         R13 1
      338 GETTABLEKS                       R13 R13 K45 ["useMemo"]
      340 NEWCLOSURE                       R14 P3
      341 CAPTURE                          VAL R4
      342 NEWTABLE                         R15 0 1
      344 MOVE                             R16 R4
      345 SETLIST                          R15 R16 1 [1]
      347 CALL                             R13 2 1
      348 MOVE                             R12 R13
      349 GETIMPORT                        R13 K48 [next]
      351 GETTABLEKS                       R14 R0 K7 ["contents"]
      353 CALL                             R13 1 1
      354 JUMPIFNOTEQKNIL                  R13 ; [+5]
      356 GETUPVAL                         R13 1
      357 GETTABLEKS                       R13 R13 K49 ["None"]
      359 RETURN                           R13 1
      360 GETUPVAL                         R13 5
      361 CALL                             R13 0 1
      362 JUMPIFNOT                        R13 ; [+115]
      363 JUMPIFNOT                        R4 ; [+66]
      364 NEWTABLE                         R13 0 0
      366 GETIMPORT                        R14 K48 [next]
      368 MOVE                             R15 R6
      369 CALL                             R14 1 1
      370 JUMPIFEQKNIL                     R14 ; [+14]
      372 GETUPVAL                         R14 8
      373 GETUPVAL                         R15 13
      374 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      375 LOADK                            R17 K52 ["col size-0-0 auto-xy gap-small"]
      376 SETTABLEKS                       R17 R16 K50 ["tag"]
      378 LOADN                            R17 0
      379 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      381 MOVE                             R17 R6
      382 CALL                             R14 3 1
      383 SETTABLEKS                       R14 R13 K53 ["TransparentContents"]
      385 GETIMPORT                        R14 K48 [next]
      387 MOVE                             R15 R5
      388 CALL                             R14 1 1
      389 JUMPIFEQKNIL                     R14 ; [+14]
      391 GETUPVAL                         R14 8
      392 GETUPVAL                         R15 13
      393 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      394 LOADK                            R17 K54 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      395 SETTABLEKS                       R17 R16 K50 ["tag"]
      397 LOADN                            R17 1
      398 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      400 MOVE                             R17 R5
      401 CALL                             R14 3 1
      402 SETTABLEKS                       R14 R13 K55 ["MessageBubble"]
      404 GETUPVAL                         R14 8
      405 GETUPVAL                         R15 13
      406 DUPTABLE                         R16 K57 [{"tag", "LayoutOrder", "ref"}]
      407 GETTABLEKS                       R17 R12 K4 ["User"]
      409 SETTABLEKS                       R17 R16 K50 ["tag"]
      411 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      413 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      415 SETTABLEKS                       R1 R16 K56 ["ref"]
      417 DUPTABLE                         R17 K59 [{"ContentStack"}]
      418 GETUPVAL                         R18 8
      419 GETUPVAL                         R19 13
      420 DUPTABLE                         R20 K60 [{"tag"}]
      421 LOADK                            R21 K61 ["col size-0-0 auto-xy gap-small align-x-right"]
      422 SETTABLEKS                       R21 R20 K50 ["tag"]
      424 MOVE                             R21 R13
      425 CALL                             R18 3 1
      426 SETTABLEKS                       R18 R17 K58 ["ContentStack"]
      428 CALL                             R14 3 -1
      429 RETURN                           R14 -1
      430 GETUPVAL                         R13 8
      431 LOADK                            R14 K62 ["ImageButton"]
      432 NEWTABLE                         R15 8 0
      434 GETIMPORT                        R16 K65 [UDim2.fromScale]
      436 LOADN                            R17 1
      437 LOADN                            R18 0
      438 CALL                             R16 2 1
      439 SETTABLEKS                       R16 R15 K66 ["Size"]
      441 GETIMPORT                        R16 K70 [Enum.AutomaticSize.Y]
      443 SETTABLEKS                       R16 R15 K68 ["AutomaticSize"]
      445 LOADN                            R16 1
      446 SETTABLEKS                       R16 R15 K71 ["BackgroundTransparency"]
      448 GETUPVAL                         R16 1
      449 GETTABLEKS                       R16 R16 K72 ["Change"]
      451 GETTABLEKS                       R16 R16 K73 ["GuiState"]
      453 SETTABLE                         R11 R15 R16
      454 GETTABLEKS                       R16 R0 K19 ["LayoutOrder"]
      456 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      458 SETTABLEKS                       R1 R15 K56 ["ref"]
      460 DUPTABLE                         R16 K75 [{"Container"}]
      461 GETUPVAL                         R17 8
      462 GETUPVAL                         R18 13
      463 DUPTABLE                         R19 K51 [{"tag", "LayoutOrder"}]
      464 GETTABLEKS                       R20 R12 K36 ["Assistant"]
      466 SETTABLEKS                       R20 R19 K50 ["tag"]
      468 GETTABLEKS                       R20 R0 K19 ["LayoutOrder"]
      470 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      472 MOVE                             R20 R5
      473 CALL                             R17 3 1
      474 SETTABLEKS                       R17 R16 K74 ["Container"]
      476 CALL                             R13 3 -1
      477 RETURN                           R13 -1
      478 NEWTABLE                         R13 0 0
      480 GETIMPORT                        R14 K48 [next]
      482 MOVE                             R15 R6
      483 CALL                             R14 1 1
      484 JUMPIFEQKNIL                     R14 ; [+14]
      486 GETUPVAL                         R14 8
      487 GETUPVAL                         R15 13
      488 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      489 LOADK                            R17 K52 ["col size-0-0 auto-xy gap-small"]
      490 SETTABLEKS                       R17 R16 K50 ["tag"]
      492 LOADN                            R17 0
      493 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      495 MOVE                             R17 R6
      496 CALL                             R14 3 1
      497 SETTABLEKS                       R14 R13 K53 ["TransparentContents"]
      499 GETIMPORT                        R14 K48 [next]
      501 MOVE                             R15 R5
      502 CALL                             R14 1 1
      503 JUMPIFEQKNIL                     R14 ; [+14]
      505 GETUPVAL                         R14 8
      506 GETUPVAL                         R15 13
      507 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      508 LOADK                            R17 K54 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      509 SETTABLEKS                       R17 R16 K50 ["tag"]
      511 LOADN                            R17 1
      512 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      514 MOVE                             R17 R5
      515 CALL                             R14 3 1
      516 SETTABLEKS                       R14 R13 K55 ["MessageBubble"]
      518 GETUPVAL                         R14 8
      519 GETUPVAL                         R15 13
      520 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      521 SETTABLEKS                       R12 R16 K50 ["tag"]
      523 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      525 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      527 JUMPIFNOT                        R4 ; [+12]
      528 DUPTABLE                         R17 K59 [{"ContentStack"}]
      529 GETUPVAL                         R18 8
      530 GETUPVAL                         R19 13
      531 DUPTABLE                         R20 K60 [{"tag"}]
      532 LOADK                            R21 K61 ["col size-0-0 auto-xy gap-small align-x-right"]
      533 SETTABLEKS                       R21 R20 K50 ["tag"]
      535 MOVE                             R21 R13
      536 CALL                             R18 3 1
      537 SETTABLEKS                       R18 R17 K58 ["ContentStack"]
      539 JUMP                             ; [+1]
      540 MOVE                             R17 R5
      541 CALL                             R14 3 -1
      542 RETURN                           R14 -1

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
       93 GETTABLEKS                       R13 R4 K25 ["View"]
       95 GETTABLEKS                       R14 R9 K26 ["createElement"]
       97 GETTABLEKS                       R15 R7 K27 ["InputDisabledReasons"]
       99 DUPCLOSURE                       R16 K28 [PROTO_0]
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R6
      102 DUPCLOSURE                       R17 K29 [PROTO_5]
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R13
      117 GETTABLEKS                       R18 R9 K30 ["forwardRef"]
      119 MOVE                             R19 R17
      120 CALL                             R18 1 -1
      121 RETURN                           R18 -1
