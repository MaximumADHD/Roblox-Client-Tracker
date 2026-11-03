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
      104 GETUPVAL                         R18 6
      105 GETTABLEKS                       R18 R18 K11 ["FFlagAssistantToolPermissionQuestion"]
      107 JUMPIFNOT                        R18 ; [+4]
      108 GETTABLEKS                       R18 R17 K12 ["isAwaitingConfirmation"]
      110 JUMPIFEQKB                       R18 TRUE ; [+80]
      112 GETUPVAL                         R18 9
      113 MOVE                             R19 R17
      114 CALL                             R18 1 1
      115 JUMPIFNOT                        R18 ; [+69]
      116 GETUPVAL                         R19 10
      117 GETTABLEKS                       R19 R19 K13 ["assign"]
      119 DUPTABLE                         R20 K16 [{"messageId", "role", "editThisContent", "sendMessage"}]
      120 GETTABLEKS                       R21 R0 K10 ["messageId"]
      122 SETTABLEKS                       R21 R20 K10 ["messageId"]
      124 GETTABLEKS                       R21 R0 K2 ["role"]
      126 SETTABLEKS                       R21 R20 K2 ["role"]
      128 SETTABLEKS                       R11 R20 K14 ["editThisContent"]
      130 GETTABLEKS                       R21 R0 K15 ["sendMessage"]
      132 SETTABLEKS                       R21 R20 K15 ["sendMessage"]
      134 MOVE                             R21 R17
      135 CALL                             R19 2 1
      136 GETIMPORT                        R20 K19 [string.format]
      138 LOADK                            R21 K20 ["Content-%04i-%s"]
      139 GETTABLEKS                       R23 R19 K22 ["LayoutOrder"]
      141 ORK                              R22 R23 K21 [0]
      142 MOVE                             R23 R16
      143 CALL                             R20 3 1
      144 LOADB                            R21 0
      145 GETTABLEKS                       R22 R0 K2 ["role"]
      147 GETUPVAL                         R23 3
      148 GETTABLEKS                       R23 R23 K3 ["ROLE"]
      150 GETTABLEKS                       R23 R23 K4 ["User"]
      152 JUMPIFNOTEQ                      R22 R23 ; [+10]
      154 GETTABLEKS                       R22 R17 K23 ["type"]
      156 GETUPVAL                         R23 11
      157 GETTABLEKS                       R23 R23 K24 ["Type"]
      159 JUMPIFEQ                         R22 R23 ; [+2]
      161 LOADB                            R21 0 +1
      162 LOADB                            R21 1
      163 JUMPIFNOT                        R21 ; [+6]
      164 GETUPVAL                         R21 12
      165 MOVE                             R22 R18
      166 MOVE                             R23 R19
      167 CALL                             R21 2 1
      168 SETTABLE                         R21 R6 R20
      169 JUMP                             ; [+5]
      170 GETUPVAL                         R21 12
      171 MOVE                             R22 R18
      172 MOVE                             R23 R19
      173 CALL                             R21 2 1
      174 SETTABLE                         R21 R5 R20
      175 GETTABLEKS                       R21 R17 K22 ["LayoutOrder"]
      177 JUMPIFNOT                        R21 ; [+13]
      178 GETTABLEKS                       R21 R17 K22 ["LayoutOrder"]
      180 JUMPIFNOTLT                      R12 R21 ; [+10]
      182 GETTABLEKS                       R12 R17 K22 ["LayoutOrder"]
      184 JUMP                             ; [+6]
      185 GETIMPORT                        R19 K26 [warn]
      187 LOADK                            R20 K27 ["No builder for content type:"]
      188 GETTABLEKS                       R21 R17 K23 ["type"]
      190 CALL                             R19 2 0
      191 FORGLOOP                         R13 2 ; [-88]
      193 GETTABLEKS                       R13 R3 K28 ["reasonDisabled"]
      195 JUMPIFNOT                        R13 ; [+4]
      196 GETTABLEKS                       R13 R3 K28 ["reasonDisabled"]
      198 GETTABLEKS                       R13 R13 K28 ["reasonDisabled"]
      200 GETTABLEKS                       R14 R0 K29 ["isLatestAssistantAndMostRecent"]
      202 JUMPIFNOT                        R14 ; [+7]
      203 GETUPVAL                         R15 13
      204 GETTABLEKS                       R15 R15 K30 ["Generation"]
      206 JUMPIFEQ                         R13 R15 ; [+2]
      208 LOADB                            R14 0 +1
      209 LOADB                            R14 1
      210 JUMPIFNOT                        R14 ; [+9]
      211 GETUPVAL                         R15 12
      212 GETUPVAL                         R16 14
      213 DUPTABLE                         R17 K31 [{"LayoutOrder"}]
      214 ADDK                             R18 R12 K32 [1]
      215 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      217 CALL                             R15 2 1
      218 SETTABLEKS                       R15 R5 K33 ["GenerationIndicator"]
      220 GETUPVAL                         R15 1
      221 GETTABLEKS                       R15 R15 K34 ["useState"]
      223 LOADB                            R16 0
      224 CALL                             R15 1 2
      225 GETTABLEKS                       R18 R0 K2 ["role"]
      227 GETUPVAL                         R19 3
      228 GETTABLEKS                       R19 R19 K3 ["ROLE"]
      230 GETTABLEKS                       R19 R19 K35 ["Assistant"]
      232 JUMPIFEQ                         R18 R19 ; [+2]
      234 LOADB                            R17 0 +1
      235 LOADB                            R17 1
      236 GETTABLEKS                       R19 R0 K29 ["isLatestAssistantAndMostRecent"]
      238 JUMPIF                           R19 ; [+2]
      239 MOVE                             R18 R15
      240 JUMPIFNOT                        R18 ; [+6]
      241 GETTABLEKS                       R18 R3 K36 ["inputEnabled"]
      243 JUMPIFNOT                        R18 ; [+3]
      244 NOT                              R18 R8
      245 JUMPIFNOT                        R18 ; [+1]
      246 MOVE                             R18 R17
      247 JUMPIF                           R17 ; [+9]
      248 GETTABLEKS                       R19 R0 K2 ["role"]
      250 GETUPVAL                         R20 3
      251 GETTABLEKS                       R20 R20 K3 ["ROLE"]
      253 GETTABLEKS                       R20 R20 K37 ["System"]
      255 JUMPIFNOTEQ                      R19 R20 ; [+27]
      257 JUMPIF                           R9 ; [+25]
      258 GETUPVAL                         R19 12
      259 GETUPVAL                         R20 15
      260 DUPTABLE                         R21 K42 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "messageText", "shouldShowActions"}]
      261 ADDK                             R22 R12 K43 [2]
      262 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      264 GETTABLEKS                       R22 R0 K38 ["retryMessage"]
      266 SETTABLEKS                       R22 R21 K38 ["retryMessage"]
      268 GETTABLEKS                       R22 R0 K10 ["messageId"]
      270 SETTABLEKS                       R22 R21 K10 ["messageId"]
      272 GETTABLEKS                       R22 R0 K39 ["thumbsState"]
      274 SETTABLEKS                       R22 R21 K39 ["thumbsState"]
      276 SETTABLEKS                       R10 R21 K40 ["messageText"]
      278 SETTABLEKS                       R18 R21 K41 ["shouldShowActions"]
      280 CALL                             R19 2 1
      281 SETTABLEKS                       R19 R5 K44 ["MessageActions"]
      283 GETUPVAL                         R19 1
      284 GETTABLEKS                       R19 R19 K9 ["useCallback"]
      286 NEWCLOSURE                       R20 P3
      287 CAPTURE                          VAL R16
      288 NEWTABLE                         R21 0 0
      290 CALL                             R19 2 1
      291 GETUPVAL                         R20 1
      292 GETTABLEKS                       R20 R20 K5 ["useMemo"]
      294 DUPCLOSURE                       R21 K45 [PROTO_7]
      295 NEWTABLE                         R22 0 0
      297 CALL                             R20 2 1
      298 GETIMPORT                        R21 K47 [next]
      300 MOVE                             R22 R7
      301 CALL                             R21 1 1
      302 JUMPIFNOTEQKNIL                  R21 ; [+7]
      304 JUMPIF                           R14 ; [+5]
      305 GETUPVAL                         R21 1
      306 GETTABLEKS                       R21 R21 K48 ["None"]
      308 CLOSEUPVALS                      R8
      309 RETURN                           R21 1
      310 JUMPIFNOT                        R4 ; [+54]
      311 NEWTABLE                         R21 0 0
      313 GETIMPORT                        R22 K47 [next]
      315 MOVE                             R23 R6
      316 CALL                             R22 1 1
      317 JUMPIFEQKNIL                     R22 ; [+8]
      319 GETUPVAL                         R22 12
      320 GETUPVAL                         R23 16
      321 DUPTABLE                         R24 K51 [{["tag"] = "col gap-small size-0-0 auto-xy", ["LayoutOrder"] = 0}]
      322 MOVE                             R25 R6
      323 CALL                             R22 3 1
      324 SETTABLEKS                       R22 R21 K52 ["TransparentContents"]
      326 GETIMPORT                        R22 K47 [next]
      328 MOVE                             R23 R5
      329 CALL                             R22 1 1
      330 JUMPIFEQKNIL                     R22 ; [+10]
      332 GETUPVAL                         R22 12
      333 GETUPVAL                         R23 17
      334 DUPTABLE                         R24 K53 [{["messageText"], ["LayoutOrder"] = 1}]
      335 SETTABLEKS                       R10 R24 K40 ["messageText"]
      337 MOVE                             R25 R5
      338 CALL                             R22 3 1
      339 SETTABLEKS                       R22 R21 K54 ["MessageBubble"]
      341 GETUPVAL                         R22 12
      342 GETUPVAL                         R23 16
      343 DUPTABLE                         R24 K56 [{"tag", "LayoutOrder", "ref"}]
      344 GETTABLEKS                       R25 R20 K4 ["User"]
      346 SETTABLEKS                       R25 R24 K49 ["tag"]
      348 GETTABLEKS                       R25 R0 K22 ["LayoutOrder"]
      350 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      352 SETTABLEKS                       R1 R24 K55 ["ref"]
      354 DUPTABLE                         R25 K58 [{"ContentStack"}]
      355 GETUPVAL                         R26 12
      356 GETUPVAL                         R27 16
      357 DUPTABLE                         R28 K60 [{["tag"] = "col align-x-right gap-small size-0-0 auto-xy"}]
      358 MOVE                             R29 R21
      359 CALL                             R26 3 1
      360 SETTABLEKS                       R26 R25 K57 ["ContentStack"]
      362 CALL                             R22 3 -1
      363 CLOSEUPVALS                      R8
      364 RETURN                           R22 -1
      365 GETUPVAL                         R21 12
      366 LOADK                            R22 K61 ["ImageButton"]
      367 NEWTABLE                         R23 8 0
      369 GETIMPORT                        R24 K64 [UDim2.fromScale]
      371 LOADN                            R25 1
      372 LOADN                            R26 0
      373 CALL                             R24 2 1
      374 SETTABLEKS                       R24 R23 K65 ["Size"]
      376 GETIMPORT                        R24 K69 [Enum.AutomaticSize.Y]
      378 SETTABLEKS                       R24 R23 K67 ["AutomaticSize"]
      380 LOADN                            R24 1
      381 SETTABLEKS                       R24 R23 K70 ["BackgroundTransparency"]
      383 GETUPVAL                         R24 1
      384 GETTABLEKS                       R24 R24 K71 ["Change"]
      386 GETTABLEKS                       R24 R24 K72 ["GuiState"]
      388 SETTABLE                         R19 R23 R24
      389 GETTABLEKS                       R24 R0 K22 ["LayoutOrder"]
      391 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      393 SETTABLEKS                       R1 R23 K55 ["ref"]
      395 DUPTABLE                         R24 K74 [{"Container"}]
      396 GETUPVAL                         R25 12
      397 GETUPVAL                         R26 16
      398 DUPTABLE                         R27 K75 [{"tag", "LayoutOrder"}]
      399 GETTABLEKS                       R28 R20 K35 ["Assistant"]
      401 SETTABLEKS                       R28 R27 K49 ["tag"]
      403 GETTABLEKS                       R28 R0 K22 ["LayoutOrder"]
      405 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      407 MOVE                             R28 R5
      408 CALL                             R25 3 1
      409 SETTABLEKS                       R25 R24 K73 ["Container"]
      411 CALL                             R21 3 -1
      412 CLOSEUPVALS                      R8
      413 RETURN                           R21 -1

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
