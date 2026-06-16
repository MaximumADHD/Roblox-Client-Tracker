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
       44 GETUPVAL                         R15 4
       45 CALL                             R15 0 1
       46 JUMPIFNOT                        R15 ; [+7]
       47 GETUPVAL                         R14 5
       48 GETTABLEKS                       R14 R14 K8 ["get"]
       50 GETTABLEKS                       R15 R13 K9 ["type"]
       52 CALL                             R14 1 1
       53 JUMP                             ; [+6]
       54 GETUPVAL                         R14 6
       55 GETTABLEKS                       R14 R14 K8 ["get"]
       57 GETTABLEKS                       R15 R13 K9 ["type"]
       59 CALL                             R14 1 1
       60 JUMPIFNOT                        R14 ; [+123]
       61 GETUPVAL                         R15 7
       62 CALL                             R15 0 1
       63 JUMPIFNOT                        R15 ; [+60]
       64 GETUPVAL                         R15 8
       65 GETTABLEKS                       R15 R15 K10 ["assign"]
       67 DUPTABLE                         R16 K13 [{"messageId", "role", "editThisContent", "sendMessage"}]
       68 GETTABLEKS                       R17 R0 K6 ["messageId"]
       70 SETTABLEKS                       R17 R16 K6 ["messageId"]
       72 GETTABLEKS                       R17 R0 K2 ["role"]
       74 SETTABLEKS                       R17 R16 K2 ["role"]
       76 SETTABLEKS                       R7 R16 K11 ["editThisContent"]
       78 GETTABLEKS                       R17 R0 K12 ["sendMessage"]
       80 SETTABLEKS                       R17 R16 K12 ["sendMessage"]
       82 MOVE                             R17 R13
       83 CALL                             R15 2 1
       84 GETIMPORT                        R16 K16 [string.format]
       86 LOADK                            R17 K17 ["Content-%04i-%s"]
       87 GETTABLEKS                       R19 R15 K19 ["LayoutOrder"]
       89 ORK                              R18 R19 K18 [0]
       90 MOVE                             R19 R12
       91 CALL                             R16 3 1
       92 LOADB                            R17 0
       93 GETTABLEKS                       R18 R0 K2 ["role"]
       95 GETUPVAL                         R19 3
       96 GETTABLEKS                       R19 R19 K3 ["ROLE"]
       98 GETTABLEKS                       R19 R19 K4 ["User"]
      100 JUMPIFNOTEQ                      R18 R19 ; [+10]
      102 GETTABLEKS                       R18 R13 K9 ["type"]
      104 GETUPVAL                         R19 9
      105 GETTABLEKS                       R19 R19 K20 ["Type"]
      107 JUMPIFEQ                         R18 R19 ; [+2]
      109 LOADB                            R17 0 +1
      110 LOADB                            R17 1
      111 JUMPIFNOT                        R17 ; [+6]
      112 GETUPVAL                         R17 10
      113 MOVE                             R18 R14
      114 MOVE                             R19 R15
      115 CALL                             R17 2 1
      116 SETTABLE                         R17 R6 R16
      117 JUMP                             ; [+56]
      118 GETUPVAL                         R17 10
      119 MOVE                             R18 R14
      120 MOVE                             R19 R15
      121 CALL                             R17 2 1
      122 SETTABLE                         R17 R5 R16
      123 JUMP                             ; [+50]
      124 GETUPVAL                         R15 10
      125 MOVE                             R16 R14
      126 GETUPVAL                         R17 11
      127 GETTABLEKS                       R17 R17 K21 ["Dictionary"]
      129 GETTABLEKS                       R17 R17 K22 ["join"]
      131 MOVE                             R18 R13
      132 DUPTABLE                         R19 K24 [{"messageId", "contentId", "role", "editThisContent", "sendMessage"}]
      133 GETTABLEKS                       R20 R0 K6 ["messageId"]
      135 SETTABLEKS                       R20 R19 K6 ["messageId"]
      137 SETTABLEKS                       R12 R19 K23 ["contentId"]
      139 GETTABLEKS                       R20 R0 K2 ["role"]
      141 SETTABLEKS                       R20 R19 K2 ["role"]
      143 SETTABLEKS                       R7 R19 K11 ["editThisContent"]
      145 GETTABLEKS                       R20 R0 K12 ["sendMessage"]
      147 SETTABLEKS                       R20 R19 K12 ["sendMessage"]
      149 CALL                             R17 2 -1
      150 CALL                             R15 -1 1
      151 LOADB                            R16 0
      152 GETTABLEKS                       R17 R0 K2 ["role"]
      154 GETUPVAL                         R18 3
      155 GETTABLEKS                       R18 R18 K3 ["ROLE"]
      157 GETTABLEKS                       R18 R18 K4 ["User"]
      159 JUMPIFNOTEQ                      R17 R18 ; [+10]
      161 GETTABLEKS                       R17 R13 K9 ["type"]
      163 GETUPVAL                         R18 9
      164 GETTABLEKS                       R18 R18 K20 ["Type"]
      166 JUMPIFEQ                         R17 R18 ; [+2]
      168 LOADB                            R16 0 +1
      169 LOADB                            R16 1
      170 JUMPIFNOT                        R16 ; [+2]
      171 SETTABLE                         R15 R6 R12
      172 JUMP                             ; [+1]
      173 SETTABLE                         R15 R5 R12
      174 GETTABLEKS                       R15 R13 K19 ["LayoutOrder"]
      176 JUMPIFNOT                        R15 ; [+13]
      177 GETTABLEKS                       R15 R13 K19 ["LayoutOrder"]
      179 JUMPIFNOTLT                      R8 R15 ; [+10]
      181 GETTABLEKS                       R8 R13 K19 ["LayoutOrder"]
      183 JUMP                             ; [+6]
      184 GETIMPORT                        R15 K26 [warn]
      186 LOADK                            R16 K27 ["No builder for content type:"]
      187 GETTABLEKS                       R17 R13 K9 ["type"]
      189 CALL                             R15 2 0
      190 FORGLOOP                         R9 2 ; [-147]
      192 LOADB                            R9 0
      193 GETTABLEKS                       R10 R0 K7 ["contents"]
      195 LOADNIL                          R11
      196 LOADNIL                          R12
      197 FORGPREP                         R10
      198 GETTABLEKS                       R15 R14 K28 ["generating"]
      200 JUMPIFNOT                        R15 ; [+2]
      201 LOADB                            R9 1
      202 JUMP                             ; [+2]
      203 FORGLOOP                         R10 2 ; [-6]
      205 GETTABLEKS                       R10 R3 K29 ["reasonDisabled"]
      207 JUMPIFNOT                        R10 ; [+4]
      208 GETTABLEKS                       R10 R3 K29 ["reasonDisabled"]
      210 GETTABLEKS                       R10 R10 K29 ["reasonDisabled"]
      212 GETTABLEKS                       R11 R0 K30 ["isLatestAssistantAndMostRecent"]
      214 JUMPIFNOT                        R11 ; [+14]
      215 GETUPVAL                         R11 12
      216 GETTABLEKS                       R11 R11 K31 ["Generation"]
      218 JUMPIFNOTEQ                      R10 R11 ; [+10]
      220 GETUPVAL                         R11 10
      221 GETUPVAL                         R12 13
      222 DUPTABLE                         R13 K32 [{"LayoutOrder"}]
      223 ADDK                             R14 R8 K33 [1]
      224 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      226 CALL                             R11 2 1
      227 SETTABLEKS                       R11 R5 K34 ["GenerationIndicator"]
      229 LOADNIL                          R11
      230 GETUPVAL                         R12 7
      231 CALL                             R12 0 1
      232 JUMPIFNOT                        R12 ; [+70]
      233 GETUPVAL                         R12 1
      234 GETTABLEKS                       R12 R12 K35 ["useState"]
      236 LOADB                            R13 0
      237 CALL                             R12 1 2
      238 GETTABLEKS                       R15 R0 K2 ["role"]
      240 GETUPVAL                         R16 3
      241 GETTABLEKS                       R16 R16 K3 ["ROLE"]
      243 GETTABLEKS                       R16 R16 K36 ["Assistant"]
      245 JUMPIFEQ                         R15 R16 ; [+2]
      247 LOADB                            R14 0 +1
      248 LOADB                            R14 1
      249 GETTABLEKS                       R16 R0 K30 ["isLatestAssistantAndMostRecent"]
      251 JUMPIF                           R16 ; [+2]
      252 MOVE                             R15 R12
      253 JUMPIFNOT                        R15 ; [+6]
      254 GETTABLEKS                       R15 R3 K37 ["inputEnabled"]
      256 JUMPIFNOT                        R15 ; [+3]
      257 NOT                              R15 R9
      258 JUMPIFNOT                        R15 ; [+1]
      259 MOVE                             R15 R14
      260 JUMPIF                           R14 ; [+9]
      261 GETTABLEKS                       R16 R0 K2 ["role"]
      263 GETUPVAL                         R17 3
      264 GETTABLEKS                       R17 R17 K3 ["ROLE"]
      266 GETTABLEKS                       R17 R17 K38 ["System"]
      268 JUMPIFNOTEQ                      R16 R17 ; [+24]
      270 GETUPVAL                         R16 10
      271 GETUPVAL                         R17 14
      272 DUPTABLE                         R18 K42 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      273 ADDK                             R19 R8 K43 [2]
      274 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      276 GETTABLEKS                       R19 R0 K39 ["retryMessage"]
      278 SETTABLEKS                       R19 R18 K39 ["retryMessage"]
      280 GETTABLEKS                       R19 R0 K6 ["messageId"]
      282 SETTABLEKS                       R19 R18 K6 ["messageId"]
      284 GETTABLEKS                       R19 R0 K40 ["thumbsState"]
      286 SETTABLEKS                       R19 R18 K40 ["thumbsState"]
      288 SETTABLEKS                       R15 R18 K41 ["shouldShowActions"]
      290 CALL                             R16 2 1
      291 SETTABLEKS                       R16 R5 K44 ["MessageActions"]
      293 GETUPVAL                         R16 1
      294 GETTABLEKS                       R16 R16 K5 ["useCallback"]
      296 NEWCLOSURE                       R17 P1
      297 CAPTURE                          VAL R13
      298 NEWTABLE                         R18 0 0
      300 CALL                             R16 2 1
      301 MOVE                             R11 R16
      302 JUMP                             ; [+31]
      303 GETTABLEKS                       R12 R0 K30 ["isLatestAssistantAndMostRecent"]
      305 JUMPIFNOT                        R12 ; [+4]
      306 GETTABLEKS                       R12 R3 K37 ["inputEnabled"]
      308 JUMPIFNOT                        R12 ; [+1]
      309 NOT                              R12 R9
      310 JUMPIFNOT                        R12 ; [+23]
      311 GETUPVAL                         R13 10
      312 GETUPVAL                         R14 14
      313 DUPTABLE                         R15 K42 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      314 ADDK                             R16 R8 K43 [2]
      315 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      317 GETTABLEKS                       R16 R0 K39 ["retryMessage"]
      319 SETTABLEKS                       R16 R15 K39 ["retryMessage"]
      321 GETTABLEKS                       R16 R0 K6 ["messageId"]
      323 SETTABLEKS                       R16 R15 K6 ["messageId"]
      325 LOADNIL                          R16
      326 SETTABLEKS                       R16 R15 K40 ["thumbsState"]
      328 LOADB                            R16 1
      329 SETTABLEKS                       R16 R15 K41 ["shouldShowActions"]
      331 CALL                             R13 2 1
      332 SETTABLEKS                       R13 R5 K44 ["MessageActions"]
      334 LOADNIL                          R12
      335 GETUPVAL                         R13 7
      336 CALL                             R13 0 1
      337 JUMPIFNOT                        R13 ; [+9]
      338 GETUPVAL                         R13 1
      339 GETTABLEKS                       R13 R13 K45 ["useMemo"]
      341 DUPCLOSURE                       R14 K46 [PROTO_3]
      342 NEWTABLE                         R15 0 0
      344 CALL                             R13 2 1
      345 MOVE                             R12 R13
      346 JUMP                             ; [+12]
      347 GETUPVAL                         R13 1
      348 GETTABLEKS                       R13 R13 K45 ["useMemo"]
      350 NEWCLOSURE                       R14 P3
      351 CAPTURE                          VAL R4
      352 NEWTABLE                         R15 0 1
      354 MOVE                             R16 R4
      355 SETLIST                          R15 R16 1 [1]
      357 CALL                             R13 2 1
      358 MOVE                             R12 R13
      359 GETIMPORT                        R13 K48 [next]
      361 GETTABLEKS                       R14 R0 K7 ["contents"]
      363 CALL                             R13 1 1
      364 JUMPIFNOTEQKNIL                  R13 ; [+5]
      366 GETUPVAL                         R13 1
      367 GETTABLEKS                       R13 R13 K49 ["None"]
      369 RETURN                           R13 1
      370 GETUPVAL                         R13 7
      371 CALL                             R13 0 1
      372 JUMPIFNOT                        R13 ; [+115]
      373 JUMPIFNOT                        R4 ; [+66]
      374 NEWTABLE                         R13 0 0
      376 GETIMPORT                        R14 K48 [next]
      378 MOVE                             R15 R6
      379 CALL                             R14 1 1
      380 JUMPIFEQKNIL                     R14 ; [+14]
      382 GETUPVAL                         R14 10
      383 GETUPVAL                         R15 15
      384 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      385 LOADK                            R17 K52 ["col size-0-0 auto-xy gap-small"]
      386 SETTABLEKS                       R17 R16 K50 ["tag"]
      388 LOADN                            R17 0
      389 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      391 MOVE                             R17 R6
      392 CALL                             R14 3 1
      393 SETTABLEKS                       R14 R13 K53 ["TransparentContents"]
      395 GETIMPORT                        R14 K48 [next]
      397 MOVE                             R15 R5
      398 CALL                             R14 1 1
      399 JUMPIFEQKNIL                     R14 ; [+14]
      401 GETUPVAL                         R14 10
      402 GETUPVAL                         R15 15
      403 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      404 LOADK                            R17 K54 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      405 SETTABLEKS                       R17 R16 K50 ["tag"]
      407 LOADN                            R17 1
      408 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      410 MOVE                             R17 R5
      411 CALL                             R14 3 1
      412 SETTABLEKS                       R14 R13 K55 ["MessageBubble"]
      414 GETUPVAL                         R14 10
      415 GETUPVAL                         R15 15
      416 DUPTABLE                         R16 K57 [{"tag", "LayoutOrder", "ref"}]
      417 GETTABLEKS                       R17 R12 K4 ["User"]
      419 SETTABLEKS                       R17 R16 K50 ["tag"]
      421 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      423 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      425 SETTABLEKS                       R1 R16 K56 ["ref"]
      427 DUPTABLE                         R17 K59 [{"ContentStack"}]
      428 GETUPVAL                         R18 10
      429 GETUPVAL                         R19 15
      430 DUPTABLE                         R20 K60 [{"tag"}]
      431 LOADK                            R21 K61 ["col size-0-0 auto-xy gap-small align-x-right"]
      432 SETTABLEKS                       R21 R20 K50 ["tag"]
      434 MOVE                             R21 R13
      435 CALL                             R18 3 1
      436 SETTABLEKS                       R18 R17 K58 ["ContentStack"]
      438 CALL                             R14 3 -1
      439 RETURN                           R14 -1
      440 GETUPVAL                         R13 10
      441 LOADK                            R14 K62 ["ImageButton"]
      442 NEWTABLE                         R15 8 0
      444 GETIMPORT                        R16 K65 [UDim2.fromScale]
      446 LOADN                            R17 1
      447 LOADN                            R18 0
      448 CALL                             R16 2 1
      449 SETTABLEKS                       R16 R15 K66 ["Size"]
      451 GETIMPORT                        R16 K70 [Enum.AutomaticSize.Y]
      453 SETTABLEKS                       R16 R15 K68 ["AutomaticSize"]
      455 LOADN                            R16 1
      456 SETTABLEKS                       R16 R15 K71 ["BackgroundTransparency"]
      458 GETUPVAL                         R16 1
      459 GETTABLEKS                       R16 R16 K72 ["Change"]
      461 GETTABLEKS                       R16 R16 K73 ["GuiState"]
      463 SETTABLE                         R11 R15 R16
      464 GETTABLEKS                       R16 R0 K19 ["LayoutOrder"]
      466 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      468 SETTABLEKS                       R1 R15 K56 ["ref"]
      470 DUPTABLE                         R16 K75 [{"Container"}]
      471 GETUPVAL                         R17 10
      472 GETUPVAL                         R18 15
      473 DUPTABLE                         R19 K51 [{"tag", "LayoutOrder"}]
      474 GETTABLEKS                       R20 R12 K36 ["Assistant"]
      476 SETTABLEKS                       R20 R19 K50 ["tag"]
      478 GETTABLEKS                       R20 R0 K19 ["LayoutOrder"]
      480 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      482 MOVE                             R20 R5
      483 CALL                             R17 3 1
      484 SETTABLEKS                       R17 R16 K74 ["Container"]
      486 CALL                             R13 3 -1
      487 RETURN                           R13 -1
      488 NEWTABLE                         R13 0 0
      490 GETIMPORT                        R14 K48 [next]
      492 MOVE                             R15 R6
      493 CALL                             R14 1 1
      494 JUMPIFEQKNIL                     R14 ; [+14]
      496 GETUPVAL                         R14 10
      497 GETUPVAL                         R15 15
      498 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      499 LOADK                            R17 K52 ["col size-0-0 auto-xy gap-small"]
      500 SETTABLEKS                       R17 R16 K50 ["tag"]
      502 LOADN                            R17 0
      503 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      505 MOVE                             R17 R6
      506 CALL                             R14 3 1
      507 SETTABLEKS                       R14 R13 K53 ["TransparentContents"]
      509 GETIMPORT                        R14 K48 [next]
      511 MOVE                             R15 R5
      512 CALL                             R14 1 1
      513 JUMPIFEQKNIL                     R14 ; [+14]
      515 GETUPVAL                         R14 10
      516 GETUPVAL                         R15 15
      517 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      518 LOADK                            R17 K54 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      519 SETTABLEKS                       R17 R16 K50 ["tag"]
      521 LOADN                            R17 1
      522 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      524 MOVE                             R17 R5
      525 CALL                             R14 3 1
      526 SETTABLEKS                       R14 R13 K55 ["MessageBubble"]
      528 GETUPVAL                         R14 10
      529 GETUPVAL                         R15 15
      530 DUPTABLE                         R16 K51 [{"tag", "LayoutOrder"}]
      531 SETTABLEKS                       R12 R16 K50 ["tag"]
      533 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      535 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      537 JUMPIFNOT                        R4 ; [+12]
      538 DUPTABLE                         R17 K59 [{"ContentStack"}]
      539 GETUPVAL                         R18 10
      540 GETUPVAL                         R19 15
      541 DUPTABLE                         R20 K60 [{"tag"}]
      542 LOADK                            R21 K61 ["col size-0-0 auto-xy gap-small align-x-right"]
      543 SETTABLEKS                       R21 R20 K50 ["tag"]
      545 MOVE                             R21 R13
      546 CALL                             R18 3 1
      547 SETTABLEKS                       R18 R17 K58 ["ContentStack"]
      549 JUMP                             ; [+1]
      550 MOVE                             R17 R5
      551 CALL                             R14 3 -1
      552 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["ContentWidgetRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["DEPRECATED_ContentWidgetRegistry"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["Dash"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Parent"]
       41 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Components"]
       48 GETTABLEKS                       R7 R7 K15 ["GenerationIndicator"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K14 ["Components"]
       55 GETTABLEKS                       R8 R8 K7 ["ContentWidgets"]
       57 GETTABLEKS                       R8 R8 K16 ["ImageContentWidget"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K14 ["Components"]
       64 GETTABLEKS                       R9 R9 K17 ["Contexts"]
       66 GETTABLEKS                       R9 R9 K18 ["InputStateContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K14 ["Components"]
       73 GETTABLEKS                       R10 R10 K19 ["MessageActions"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K9 ["Parent"]
       80 GETTABLEKS                       R11 R11 K20 ["React"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K21 ["Types"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       92 GETTABLEKS                       R13 R13 K23 ["useEditContent"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K24 ["Flags"]
       99 GETTABLEKS                       R14 R14 K25 ["FFlagAssistantMultipleChatPersistence"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K24 ["Flags"]
      106 GETTABLEKS                       R15 R15 K26 ["FFlagAssistantSplitToolsAndWidgets"]
      108 CALL                             R14 1 1
      109 GETTABLEKS                       R15 R5 K27 ["View"]
      111 GETTABLEKS                       R16 R10 K28 ["createElement"]
      113 GETTABLEKS                       R17 R8 K29 ["InputDisabledReasons"]
      115 DUPCLOSURE                       R18 K30 [PROTO_0]
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R7
      118 DUPCLOSURE                       R19 K31 [PROTO_5]
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R15
      135 GETTABLEKS                       R20 R10 K32 ["forwardRef"]
      137 MOVE                             R21 R19
      138 CALL                             R20 1 -1
      139 RETURN                           R20 -1
