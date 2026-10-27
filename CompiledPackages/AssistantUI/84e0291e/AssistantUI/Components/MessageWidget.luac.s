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
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["text"]
        8 FASTCALL1                        TYPEOF R7 ; [+3]
        9 MOVE                             R9 R7
       10 GETIMPORT                        R8 K2 [typeof]
       12 CALL                             R8 1 1
       13 JUMPIFNOTEQKS                    R8 K3 ["string"] ; [+11]
       15 GETIMPORT                        R8 K5 [string.find]
       17 MOVE                             R9 R7
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K6 ["SYSTEM_REMINDER_OPEN"]
       21 LOADN                            R11 1
       22 LOADB                            R12 1
       23 CALL                             R8 4 1
       24 JUMPIF                           R8 ; [+1]
       25 SETTABLE                         R6 R1 R5
       26 FORGLOOP                         R2 2 ; [-21]
       28 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["contents"]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K1 ["LayoutOrder"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K1 ["LayoutOrder"]
        5 ORK                              R3 R4 K0 [0]
        6 JUMPIFEQ                         R2 R3 ; [+6]
        8 JUMPIFLT                         R2 R3 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 RETURN                           R4 1
       13 GETTABLEKS                       R5 R0 K2 ["contentId"]
       15 GETTABLEKS                       R6 R1 K2 ["contentId"]
       17 JUMPIFLT                         R5 R6 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantPromptHistoryFromConversation"]
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["contents"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1
       14 NEWTABLE                         R0 0 0
       16 GETUPVAL                         R1 4
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 GETTABLEKS                       R6 R5 K2 ["type"]
       22 GETUPVAL                         R7 5
       23 GETTABLEKS                       R7 R7 K3 ["Type"]
       25 JUMPIFNOTEQ                      R6 R7 ; [+20]
       27 GETTABLEKS                       R7 R5 K4 ["text"]
       29 FASTCALL1                        TYPEOF R7 ; [+2]
       30 GETIMPORT                        R6 K6 [typeof]
       32 CALL                             R6 1 1
       33 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+12]
       35 GETTABLEKS                       R6 R5 K4 ["text"]
       37 JUMPIFEQKS                       R6 K8 [""] ; [+8]
       39 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       41 MOVE                             R7 R0
       42 MOVE                             R8 R5
       43 GETIMPORT                        R6 K11 [table.insert]
       45 CALL                             R6 2 0
       46 FORGLOOP                         R1 2 ; [-27]
       48 LENGTH                           R1 R0
       49 JUMPIFNOTEQKN                    R1 K12 [0] ; [+3]
       51 LOADNIL                          R1
       52 RETURN                           R1 1
       53 GETIMPORT                        R1 K14 [table.sort]
       55 MOVE                             R2 R0
       56 DUPCLOSURE                       R3 K15 [PROTO_3]
       57 CALL                             R1 2 0
       58 GETIMPORT                        R1 K17 [table.create]
       60 LENGTH                           R2 R0
       61 CALL                             R1 1 1
       62 MOVE                             R2 R0
       63 LOADNIL                          R3
       64 LOADNIL                          R4
       65 FORGPREP                         R2
       66 GETTABLEKS                       R9 R6 K4 ["text"]
       68 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       70 MOVE                             R8 R1
       71 GETIMPORT                        R7 K11 [table.insert]
       73 CALL                             R7 2 0
       74 FORGLOOP                         R2 2 ; [-9]
       76 GETIMPORT                        R2 K19 [table.concat]
       78 MOVE                             R3 R1
       79 LOADK                            R4 K20 ["\n\n"]
       80 CALL                             R2 2 -1
       81 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{"messageId", "contentId", "transformFn"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["messageId"]
        5 SETTABLEKS                       R4 R3 K0 ["messageId"]
        7 SETTABLEKS                       R0 R3 K1 ["contentId"]
        9 SETTABLEKS                       R1 R3 K2 ["transformFn"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       25 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R9 0 1
       32 GETTABLEKS                       R10 R0 K6 ["contents"]
       34 SETLIST                          R9 R10 1 [1]
       36 CALL                             R7 2 1
       37 LOADB                            R8 0
       38 MOVE                             R9 R7
       39 LOADNIL                          R10
       40 LOADNIL                          R11
       41 FORGPREP                         R9
       42 GETUPVAL                         R14 5
       43 MOVE                             R15 R13
       44 CALL                             R14 1 1
       45 JUMPIFNOT                        R14 ; [+2]
       46 LOADB                            R8 1
       47 JUMP                             ; [+2]
       48 FORGLOOP                         R9 2 ; [-7]
       50 LOADB                            R9 0
       51 GETUPVAL                         R10 6
       52 GETTABLEKS                       R10 R10 K7 ["FFlagAssistantHideContent"]
       54 JUMPIFNOT                        R10 ; [+11]
       55 MOVE                             R10 R7
       56 LOADNIL                          R11
       57 LOADNIL                          R12
       58 FORGPREP                         R10
       59 GETTABLEKS                       R15 R14 K8 ["isContentHidden"]
       61 JUMPIFNOT                        R15 ; [+2]
       62 LOADB                            R9 1
       63 JUMP                             ; [+2]
       64 FORGLOOP                         R10 2 ; [-6]
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K5 ["useMemo"]
       69 NEWCLOSURE                       R11 P1
       70 CAPTURE                          REF R8
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R7
       75 CAPTURE                          UPVAL U8
       76 NEWTABLE                         R12 0 3
       78 MOVE                             R13 R8
       79 MOVE                             R14 R7
       80 GETTABLEKS                       R15 R0 K6 ["contents"]
       82 SETLIST                          R12 R13 3 [1]
       84 CALL                             R10 2 1
       85 GETUPVAL                         R11 1
       86 GETTABLEKS                       R11 R11 K9 ["useCallback"]
       88 NEWCLOSURE                       R12 P2
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R0
       91 NEWTABLE                         R13 0 2
       93 MOVE                             R14 R2
       94 GETTABLEKS                       R15 R0 K10 ["messageId"]
       96 SETLIST                          R13 R14 2 [1]
       98 CALL                             R11 2 1
       99 LOADN                            R12 0
      100 MOVE                             R13 R7
      101 LOADNIL                          R14
      102 LOADNIL                          R15
      103 FORGPREP                         R13
      104 GETUPVAL                         R18 9
      105 MOVE                             R19 R17
      106 CALL                             R18 1 1
      107 JUMPIFNOT                        R18 ; [+69]
      108 GETUPVAL                         R19 10
      109 GETTABLEKS                       R19 R19 K11 ["assign"]
      111 DUPTABLE                         R20 K14 [{"messageId", "role", "editThisContent", "sendMessage"}]
      112 GETTABLEKS                       R21 R0 K10 ["messageId"]
      114 SETTABLEKS                       R21 R20 K10 ["messageId"]
      116 GETTABLEKS                       R21 R0 K2 ["role"]
      118 SETTABLEKS                       R21 R20 K2 ["role"]
      120 SETTABLEKS                       R11 R20 K12 ["editThisContent"]
      122 GETTABLEKS                       R21 R0 K13 ["sendMessage"]
      124 SETTABLEKS                       R21 R20 K13 ["sendMessage"]
      126 MOVE                             R21 R17
      127 CALL                             R19 2 1
      128 GETIMPORT                        R20 K17 [string.format]
      130 LOADK                            R21 K18 ["Content-%04i-%s"]
      131 GETTABLEKS                       R23 R19 K20 ["LayoutOrder"]
      133 ORK                              R22 R23 K19 [0]
      134 MOVE                             R23 R16
      135 CALL                             R20 3 1
      136 LOADB                            R21 0
      137 GETTABLEKS                       R22 R0 K2 ["role"]
      139 GETUPVAL                         R23 3
      140 GETTABLEKS                       R23 R23 K3 ["ROLE"]
      142 GETTABLEKS                       R23 R23 K4 ["User"]
      144 JUMPIFNOTEQ                      R22 R23 ; [+10]
      146 GETTABLEKS                       R22 R17 K21 ["type"]
      148 GETUPVAL                         R23 11
      149 GETTABLEKS                       R23 R23 K22 ["Type"]
      151 JUMPIFEQ                         R22 R23 ; [+2]
      153 LOADB                            R21 0 +1
      154 LOADB                            R21 1
      155 JUMPIFNOT                        R21 ; [+6]
      156 GETUPVAL                         R21 12
      157 MOVE                             R22 R18
      158 MOVE                             R23 R19
      159 CALL                             R21 2 1
      160 SETTABLE                         R21 R6 R20
      161 JUMP                             ; [+5]
      162 GETUPVAL                         R21 12
      163 MOVE                             R22 R18
      164 MOVE                             R23 R19
      165 CALL                             R21 2 1
      166 SETTABLE                         R21 R5 R20
      167 GETTABLEKS                       R21 R17 K20 ["LayoutOrder"]
      169 JUMPIFNOT                        R21 ; [+13]
      170 GETTABLEKS                       R21 R17 K20 ["LayoutOrder"]
      172 JUMPIFNOTLT                      R12 R21 ; [+10]
      174 GETTABLEKS                       R12 R17 K20 ["LayoutOrder"]
      176 JUMP                             ; [+6]
      177 GETIMPORT                        R19 K24 [warn]
      179 LOADK                            R20 K25 ["No builder for content type:"]
      180 GETTABLEKS                       R21 R17 K21 ["type"]
      182 CALL                             R19 2 0
      183 FORGLOOP                         R13 2 ; [-80]
      185 GETTABLEKS                       R13 R3 K26 ["reasonDisabled"]
      187 JUMPIFNOT                        R13 ; [+4]
      188 GETTABLEKS                       R13 R3 K26 ["reasonDisabled"]
      190 GETTABLEKS                       R13 R13 K26 ["reasonDisabled"]
      192 GETTABLEKS                       R14 R0 K27 ["isLatestAssistantAndMostRecent"]
      194 JUMPIFNOT                        R14 ; [+7]
      195 GETUPVAL                         R15 13
      196 GETTABLEKS                       R15 R15 K28 ["Generation"]
      198 JUMPIFEQ                         R13 R15 ; [+2]
      200 LOADB                            R14 0 +1
      201 LOADB                            R14 1
      202 JUMPIFNOT                        R14 ; [+9]
      203 GETUPVAL                         R15 12
      204 GETUPVAL                         R16 14
      205 DUPTABLE                         R17 K29 [{"LayoutOrder"}]
      206 ADDK                             R18 R12 K30 [1]
      207 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      209 CALL                             R15 2 1
      210 SETTABLEKS                       R15 R5 K31 ["GenerationIndicator"]
      212 GETUPVAL                         R15 1
      213 GETTABLEKS                       R15 R15 K32 ["useState"]
      215 LOADB                            R16 0
      216 CALL                             R15 1 2
      217 GETTABLEKS                       R18 R0 K2 ["role"]
      219 GETUPVAL                         R19 3
      220 GETTABLEKS                       R19 R19 K3 ["ROLE"]
      222 GETTABLEKS                       R19 R19 K33 ["Assistant"]
      224 JUMPIFEQ                         R18 R19 ; [+2]
      226 LOADB                            R17 0 +1
      227 LOADB                            R17 1
      228 GETTABLEKS                       R19 R0 K27 ["isLatestAssistantAndMostRecent"]
      230 JUMPIF                           R19 ; [+2]
      231 MOVE                             R18 R15
      232 JUMPIFNOT                        R18 ; [+6]
      233 GETTABLEKS                       R18 R3 K34 ["inputEnabled"]
      235 JUMPIFNOT                        R18 ; [+3]
      236 NOT                              R18 R8
      237 JUMPIFNOT                        R18 ; [+1]
      238 MOVE                             R18 R17
      239 JUMPIF                           R17 ; [+9]
      240 GETTABLEKS                       R19 R0 K2 ["role"]
      242 GETUPVAL                         R20 3
      243 GETTABLEKS                       R20 R20 K3 ["ROLE"]
      245 GETTABLEKS                       R20 R20 K35 ["System"]
      247 JUMPIFNOTEQ                      R19 R20 ; [+27]
      249 JUMPIF                           R9 ; [+25]
      250 GETUPVAL                         R19 12
      251 GETUPVAL                         R20 15
      252 DUPTABLE                         R21 K40 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "messageText", "shouldShowActions"}]
      253 ADDK                             R22 R12 K41 [2]
      254 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      256 GETTABLEKS                       R22 R0 K36 ["retryMessage"]
      258 SETTABLEKS                       R22 R21 K36 ["retryMessage"]
      260 GETTABLEKS                       R22 R0 K10 ["messageId"]
      262 SETTABLEKS                       R22 R21 K10 ["messageId"]
      264 GETTABLEKS                       R22 R0 K37 ["thumbsState"]
      266 SETTABLEKS                       R22 R21 K37 ["thumbsState"]
      268 SETTABLEKS                       R10 R21 K38 ["messageText"]
      270 SETTABLEKS                       R18 R21 K39 ["shouldShowActions"]
      272 CALL                             R19 2 1
      273 SETTABLEKS                       R19 R5 K42 ["MessageActions"]
      275 GETUPVAL                         R19 1
      276 GETTABLEKS                       R19 R19 K9 ["useCallback"]
      278 NEWCLOSURE                       R20 P3
      279 CAPTURE                          VAL R16
      280 NEWTABLE                         R21 0 0
      282 CALL                             R19 2 1
      283 GETUPVAL                         R20 1
      284 GETTABLEKS                       R20 R20 K5 ["useMemo"]
      286 DUPCLOSURE                       R21 K43 [PROTO_7]
      287 NEWTABLE                         R22 0 0
      289 CALL                             R20 2 1
      290 GETIMPORT                        R21 K45 [next]
      292 MOVE                             R22 R7
      293 CALL                             R21 1 1
      294 JUMPIFNOTEQKNIL                  R21 ; [+7]
      296 JUMPIF                           R14 ; [+5]
      297 GETUPVAL                         R21 1
      298 GETTABLEKS                       R21 R21 K46 ["None"]
      300 CLOSEUPVALS                      R8
      301 RETURN                           R21 1
      302 JUMPIFNOT                        R4 ; [+54]
      303 NEWTABLE                         R21 0 0
      305 GETIMPORT                        R22 K45 [next]
      307 MOVE                             R23 R6
      308 CALL                             R22 1 1
      309 JUMPIFEQKNIL                     R22 ; [+8]
      311 GETUPVAL                         R22 12
      312 GETUPVAL                         R23 16
      313 DUPTABLE                         R24 K49 [{["tag"] = "col gap-small size-0-0 auto-xy", ["LayoutOrder"] = 0}]
      314 MOVE                             R25 R6
      315 CALL                             R22 3 1
      316 SETTABLEKS                       R22 R21 K50 ["TransparentContents"]
      318 GETIMPORT                        R22 K45 [next]
      320 MOVE                             R23 R5
      321 CALL                             R22 1 1
      322 JUMPIFEQKNIL                     R22 ; [+10]
      324 GETUPVAL                         R22 12
      325 GETUPVAL                         R23 17
      326 DUPTABLE                         R24 K51 [{["messageText"], ["LayoutOrder"] = 1}]
      327 SETTABLEKS                       R10 R24 K38 ["messageText"]
      329 MOVE                             R25 R5
      330 CALL                             R22 3 1
      331 SETTABLEKS                       R22 R21 K52 ["MessageBubble"]
      333 GETUPVAL                         R22 12
      334 GETUPVAL                         R23 16
      335 DUPTABLE                         R24 K54 [{"tag", "LayoutOrder", "ref"}]
      336 GETTABLEKS                       R25 R20 K4 ["User"]
      338 SETTABLEKS                       R25 R24 K47 ["tag"]
      340 GETTABLEKS                       R25 R0 K20 ["LayoutOrder"]
      342 SETTABLEKS                       R25 R24 K20 ["LayoutOrder"]
      344 SETTABLEKS                       R1 R24 K53 ["ref"]
      346 DUPTABLE                         R25 K56 [{"ContentStack"}]
      347 GETUPVAL                         R26 12
      348 GETUPVAL                         R27 16
      349 DUPTABLE                         R28 K58 [{["tag"] = "col align-x-right gap-small size-0-0 auto-xy"}]
      350 MOVE                             R29 R21
      351 CALL                             R26 3 1
      352 SETTABLEKS                       R26 R25 K55 ["ContentStack"]
      354 CALL                             R22 3 -1
      355 CLOSEUPVALS                      R8
      356 RETURN                           R22 -1
      357 GETUPVAL                         R21 12
      358 LOADK                            R22 K59 ["ImageButton"]
      359 NEWTABLE                         R23 8 0
      361 GETIMPORT                        R24 K62 [UDim2.fromScale]
      363 LOADN                            R25 1
      364 LOADN                            R26 0
      365 CALL                             R24 2 1
      366 SETTABLEKS                       R24 R23 K63 ["Size"]
      368 GETIMPORT                        R24 K67 [Enum.AutomaticSize.Y]
      370 SETTABLEKS                       R24 R23 K65 ["AutomaticSize"]
      372 LOADN                            R24 1
      373 SETTABLEKS                       R24 R23 K68 ["BackgroundTransparency"]
      375 GETUPVAL                         R24 1
      376 GETTABLEKS                       R24 R24 K69 ["Change"]
      378 GETTABLEKS                       R24 R24 K70 ["GuiState"]
      380 SETTABLE                         R19 R23 R24
      381 GETTABLEKS                       R24 R0 K20 ["LayoutOrder"]
      383 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      385 SETTABLEKS                       R1 R23 K53 ["ref"]
      387 DUPTABLE                         R24 K72 [{"Container"}]
      388 GETUPVAL                         R25 12
      389 GETUPVAL                         R26 16
      390 DUPTABLE                         R27 K73 [{"tag", "LayoutOrder"}]
      391 GETTABLEKS                       R28 R20 K33 ["Assistant"]
      393 SETTABLEKS                       R28 R27 K47 ["tag"]
      395 GETTABLEKS                       R28 R0 K20 ["LayoutOrder"]
      397 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      399 MOVE                             R28 R5
      400 CALL                             R25 3 1
      401 SETTABLEKS                       R25 R24 K71 ["Container"]
      403 CALL                             R21 3 -1
      404 CLOSEUPVALS                      R8
      405 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CopyableUserMessageBubble"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["GenerationIndicator"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Components"]
       44 GETTABLEKS                       R7 R7 K13 ["ContentWidgets"]
       46 GETTABLEKS                       R7 R7 K14 ["ImageContentWidget"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K15 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K16 ["InputStateContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Components"]
       62 GETTABLEKS                       R9 R9 K17 ["MessageActions"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K8 ["Parent"]
       69 GETTABLEKS                       R10 R10 K18 ["React"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K6 ["Components"]
       76 GETTABLEKS                       R11 R11 K13 ["ContentWidgets"]
       78 GETTABLEKS                       R11 R11 K19 ["TextContentWidget"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K20 ["Types"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K21 ["Util"]
       90 GETTABLEKS                       R13 R13 K22 ["isContentStreaming"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K21 ["Util"]
       97 GETTABLEKS                       R14 R14 K23 ["readMessageText"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K21 ["Util"]
      104 GETTABLEKS                       R15 R15 K13 ["ContentWidgets"]
      106 GETTABLEKS                       R15 R15 K24 ["resolveContentComponent"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      113 GETTABLEKS                       R16 R16 K26 ["useEditContent"]
      115 CALL                             R15 1 1
      116 GETTABLEKS                       R16 R4 K27 ["View"]
      118 GETTABLEKS                       R17 R9 K28 ["createElement"]
      120 GETTABLEKS                       R18 R7 K29 ["InputDisabledReasons"]
      122 DUPCLOSURE                       R19 K30 [PROTO_0]
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R6
      125 DUPCLOSURE                       R20 K31 [PROTO_1]
      126 CAPTURE                          VAL R11
      127 DUPCLOSURE                       R21 K32 [PROTO_8]
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R1
      146 GETTABLEKS                       R22 R9 K33 ["forwardRef"]
      148 MOVE                             R23 R21
      149 CALL                             R22 1 -1
      150 RETURN                           R22 -1
