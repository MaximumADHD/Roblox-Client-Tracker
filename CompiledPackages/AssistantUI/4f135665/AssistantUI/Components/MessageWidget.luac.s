PROTO_0:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{"messageId", "contentId", "transformFn"}]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["messageId"]
        5 SETTABLEKS                       R4 R3 K0 ["messageId"]
        7 SETTABLEKS                       R0 R3 K1 ["contentId"]
        9 SETTABLEKS                       R1 R3 K2 ["transformFn"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R7 0 2
       30 MOVE                             R8 R1
       31 GETTABLEKS                       R9 R0 K6 ["messageId"]
       33 SETLIST                          R7 R8 2 [1]
       35 CALL                             R5 2 1
       36 LOADN                            R6 0
       37 GETTABLEKS                       R7 R0 K7 ["contents"]
       39 LOADNIL                          R8
       40 LOADNIL                          R9
       41 FORGPREP                         R7
       42 GETUPVAL                         R13 4
       43 GETTABLEKS                       R12 R13 K8 ["get"]
       45 GETTABLEKS                       R13 R11 K9 ["type"]
       47 CALL                             R12 1 1
       48 JUMPIFNOT                        R12 ; [+75]
       49 GETUPVAL                         R13 5
       50 CALL                             R13 0 1
       51 JUMPIFNOT                        R13 ; [+34]
       52 GETUPVAL                         R14 6
       53 GETTABLEKS                       R13 R14 K10 ["assign"]
       55 DUPTABLE                         R14 K13 [{"messageId", "role", "editThisContent", "sendMessage"}]
       56 GETTABLEKS                       R15 R0 K6 ["messageId"]
       58 SETTABLEKS                       R15 R14 K6 ["messageId"]
       60 GETTABLEKS                       R15 R0 K2 ["role"]
       62 SETTABLEKS                       R15 R14 K2 ["role"]
       64 SETTABLEKS                       R5 R14 K11 ["editThisContent"]
       66 GETTABLEKS                       R15 R0 K12 ["sendMessage"]
       68 SETTABLEKS                       R15 R14 K12 ["sendMessage"]
       70 MOVE                             R15 R11
       71 CALL                             R13 2 1
       72 GETIMPORT                        R14 K16 [string.format]
       74 LOADK                            R15 K17 ["Content-%04i-%s"]
       75 GETTABLEKS                       R17 R13 K19 ["LayoutOrder"]
       77 ORK                              R16 R17 K18 [0]
       78 MOVE                             R17 R10
       79 CALL                             R14 3 1
       80 GETUPVAL                         R15 7
       81 MOVE                             R16 R12
       82 MOVE                             R17 R13
       83 CALL                             R15 2 1
       84 SETTABLE                         R15 R4 R14
       85 JUMP                             ; [+28]
       86 GETUPVAL                         R13 7
       87 MOVE                             R14 R12
       88 GETUPVAL                         R17 8
       89 GETTABLEKS                       R16 R17 K20 ["Dictionary"]
       91 GETTABLEKS                       R15 R16 K21 ["join"]
       93 MOVE                             R16 R11
       94 DUPTABLE                         R17 K23 [{"messageId", "contentId", "role", "editThisContent", "sendMessage"}]
       95 GETTABLEKS                       R18 R0 K6 ["messageId"]
       97 SETTABLEKS                       R18 R17 K6 ["messageId"]
       99 SETTABLEKS                       R10 R17 K22 ["contentId"]
      101 GETTABLEKS                       R18 R0 K2 ["role"]
      103 SETTABLEKS                       R18 R17 K2 ["role"]
      105 SETTABLEKS                       R5 R17 K11 ["editThisContent"]
      107 GETTABLEKS                       R18 R0 K12 ["sendMessage"]
      109 SETTABLEKS                       R18 R17 K12 ["sendMessage"]
      111 CALL                             R15 2 -1
      112 CALL                             R13 -1 1
      113 SETTABLE                         R13 R4 R10
      114 GETTABLEKS                       R13 R11 K19 ["LayoutOrder"]
      116 JUMPIFNOT                        R13 ; [+13]
      117 GETTABLEKS                       R13 R11 K19 ["LayoutOrder"]
      119 JUMPIFNOTLT                      R6 R13 ; [+10]
      121 GETTABLEKS                       R6 R11 K19 ["LayoutOrder"]
      123 JUMP                             ; [+6]
      124 GETIMPORT                        R13 K25 [warn]
      126 LOADK                            R14 K26 ["No builder for content type:"]
      127 GETTABLEKS                       R15 R11 K9 ["type"]
      129 CALL                             R13 2 0
      130 FORGLOOP                         R7 2 ; [-89]
      132 LOADB                            R7 0
      133 GETTABLEKS                       R8 R0 K7 ["contents"]
      135 LOADNIL                          R9
      136 LOADNIL                          R10
      137 FORGPREP                         R8
      138 GETTABLEKS                       R13 R12 K27 ["generating"]
      140 JUMPIFNOT                        R13 ; [+2]
      141 LOADB                            R7 1
      142 JUMP                             ; [+2]
      143 FORGLOOP                         R8 2 ; [-6]
      145 GETTABLEKS                       R8 R2 K28 ["reasonDisabled"]
      147 JUMPIFNOT                        R8 ; [+4]
      148 GETTABLEKS                       R9 R2 K28 ["reasonDisabled"]
      150 GETTABLEKS                       R8 R9 K28 ["reasonDisabled"]
      152 GETTABLEKS                       R9 R0 K29 ["isLatestAssistantAndMostRecent"]
      154 JUMPIFNOT                        R9 ; [+14]
      155 GETUPVAL                         R10 9
      156 GETTABLEKS                       R9 R10 K30 ["Generation"]
      158 JUMPIFNOTEQ                      R8 R9 ; [+10]
      160 GETUPVAL                         R9 7
      161 GETUPVAL                         R10 10
      162 DUPTABLE                         R11 K31 [{"LayoutOrder"}]
      163 ADDK                             R12 R6 K32 [1]
      164 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
      166 CALL                             R9 2 1
      167 SETTABLEKS                       R9 R4 K33 ["GenerationIndicator"]
      169 LOADNIL                          R9
      170 GETUPVAL                         R10 5
      171 CALL                             R10 0 1
      172 JUMPIFNOT                        R10 ; [+61]
      173 GETUPVAL                         R11 1
      174 GETTABLEKS                       R10 R11 K34 ["useState"]
      176 LOADB                            R11 0
      177 CALL                             R10 1 2
      178 GETTABLEKS                       R13 R0 K29 ["isLatestAssistantAndMostRecent"]
      180 JUMPIF                           R13 ; [+2]
      181 MOVE                             R12 R10
      182 JUMPIFNOT                        R12 ; [+4]
      183 GETTABLEKS                       R12 R2 K35 ["inputEnabled"]
      185 JUMPIFNOT                        R12 ; [+1]
      186 NOT                              R12 R7
      187 GETTABLEKS                       R13 R0 K2 ["role"]
      189 GETUPVAL                         R16 3
      190 GETTABLEKS                       R15 R16 K3 ["ROLE"]
      192 GETTABLEKS                       R14 R15 K36 ["Assistant"]
      194 JUMPIFNOTEQ                      R13 R14 ; [+29]
      196 GETUPVAL                         R13 7
      197 GETUPVAL                         R14 11
      198 DUPTABLE                         R15 K40 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      199 ADDK                             R16 R6 K41 [2]
      200 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      202 GETTABLEKS                       R16 R0 K37 ["retryMessage"]
      204 SETTABLEKS                       R16 R15 K37 ["retryMessage"]
      206 GETTABLEKS                       R16 R0 K6 ["messageId"]
      208 SETTABLEKS                       R16 R15 K6 ["messageId"]
      210 GETUPVAL                         R17 12
      211 CALL                             R17 0 1
      212 JUMPIFNOT                        R17 ; [+3]
      213 GETTABLEKS                       R16 R0 K38 ["thumbsState"]
      215 JUMP                             ; [+1]
      216 LOADNIL                          R16
      217 SETTABLEKS                       R16 R15 K38 ["thumbsState"]
      219 SETTABLEKS                       R12 R15 K39 ["shouldShowActions"]
      221 CALL                             R13 2 1
      222 SETTABLEKS                       R13 R4 K42 ["MessageActions"]
      224 GETUPVAL                         R14 1
      225 GETTABLEKS                       R13 R14 K5 ["useCallback"]
      227 NEWCLOSURE                       R14 P1
      228 CAPTURE                          VAL R11
      229 NEWTABLE                         R15 0 0
      231 CALL                             R13 2 1
      232 MOVE                             R9 R13
      233 JUMP                             ; [+37]
      234 GETTABLEKS                       R10 R0 K29 ["isLatestAssistantAndMostRecent"]
      236 JUMPIFNOT                        R10 ; [+4]
      237 GETTABLEKS                       R10 R2 K35 ["inputEnabled"]
      239 JUMPIFNOT                        R10 ; [+1]
      240 NOT                              R10 R7
      241 JUMPIFNOT                        R10 ; [+29]
      242 GETUPVAL                         R11 7
      243 GETUPVAL                         R12 11
      244 DUPTABLE                         R13 K40 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      245 ADDK                             R14 R6 K41 [2]
      246 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      248 GETTABLEKS                       R14 R0 K37 ["retryMessage"]
      250 SETTABLEKS                       R14 R13 K37 ["retryMessage"]
      252 GETTABLEKS                       R14 R0 K6 ["messageId"]
      254 SETTABLEKS                       R14 R13 K6 ["messageId"]
      256 GETUPVAL                         R15 12
      257 CALL                             R15 0 1
      258 JUMPIFNOT                        R15 ; [+3]
      259 GETTABLEKS                       R14 R0 K38 ["thumbsState"]
      261 JUMP                             ; [+1]
      262 LOADNIL                          R14
      263 SETTABLEKS                       R14 R13 K38 ["thumbsState"]
      265 LOADB                            R14 1
      266 SETTABLEKS                       R14 R13 K39 ["shouldShowActions"]
      268 CALL                             R11 2 1
      269 SETTABLEKS                       R11 R4 K42 ["MessageActions"]
      271 LOADNIL                          R10
      272 GETUPVAL                         R11 5
      273 CALL                             R11 0 1
      274 JUMPIFNOT                        R11 ; [+9]
      275 GETUPVAL                         R12 1
      276 GETTABLEKS                       R11 R12 K43 ["useMemo"]
      278 DUPCLOSURE                       R12 K44 [PROTO_2]
      279 NEWTABLE                         R13 0 0
      281 CALL                             R11 2 1
      282 MOVE                             R10 R11
      283 JUMP                             ; [+12]
      284 GETUPVAL                         R12 1
      285 GETTABLEKS                       R11 R12 K43 ["useMemo"]
      287 NEWCLOSURE                       R12 P3
      288 CAPTURE                          VAL R3
      289 NEWTABLE                         R13 0 1
      291 MOVE                             R14 R3
      292 SETLIST                          R13 R14 1 [1]
      294 CALL                             R11 2 1
      295 MOVE                             R10 R11
      296 GETIMPORT                        R11 K46 [next]
      298 GETTABLEKS                       R12 R0 K7 ["contents"]
      300 CALL                             R11 1 1
      301 JUMPIFNOTEQKNIL                  R11 ; [+5]
      303 GETUPVAL                         R12 1
      304 GETTABLEKS                       R11 R12 K47 ["None"]
      306 RETURN                           R11 1
      307 GETUPVAL                         R11 5
      308 CALL                             R11 0 1
      309 JUMPIFNOT                        R11 ; [+77]
      310 JUMPIFNOT                        R3 ; [+24]
      311 GETUPVAL                         R11 7
      312 GETUPVAL                         R12 13
      313 DUPTABLE                         R13 K49 [{"tag", "LayoutOrder"}]
      314 GETTABLEKS                       R14 R10 K4 ["User"]
      316 SETTABLEKS                       R14 R13 K48 ["tag"]
      318 GETTABLEKS                       R14 R0 K19 ["LayoutOrder"]
      320 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      322 DUPTABLE                         R14 K51 [{"MessageBubble"}]
      323 GETUPVAL                         R15 7
      324 GETUPVAL                         R16 13
      325 DUPTABLE                         R17 K52 [{"tag"}]
      326 LOADK                            R18 K53 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      327 SETTABLEKS                       R18 R17 K48 ["tag"]
      329 MOVE                             R18 R4
      330 CALL                             R15 3 1
      331 SETTABLEKS                       R15 R14 K50 ["MessageBubble"]
      333 CALL                             R11 3 -1
      334 RETURN                           R11 -1
      335 GETUPVAL                         R11 7
      336 LOADK                            R12 K54 ["ImageButton"]
      337 NEWTABLE                         R13 8 0
      339 GETIMPORT                        R14 K57 [UDim2.fromScale]
      341 LOADN                            R15 1
      342 LOADN                            R16 0
      343 CALL                             R14 2 1
      344 SETTABLEKS                       R14 R13 K58 ["Size"]
      346 GETIMPORT                        R14 K62 [Enum.AutomaticSize.Y]
      348 SETTABLEKS                       R14 R13 K60 ["AutomaticSize"]
      350 LOADN                            R14 1
      351 SETTABLEKS                       R14 R13 K63 ["BackgroundTransparency"]
      353 GETUPVAL                         R16 1
      354 GETTABLEKS                       R15 R16 K64 ["Change"]
      356 GETTABLEKS                       R14 R15 K65 ["GuiState"]
      358 GETUPVAL                         R16 5
      359 CALL                             R16 0 1
      360 JUMPIFNOT                        R16 ; [+2]
      361 MOVE                             R15 R9
      362 JUMP                             ; [+1]
      363 LOADNIL                          R15
      364 SETTABLE                         R15 R13 R14
      365 GETTABLEKS                       R14 R0 K19 ["LayoutOrder"]
      367 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      369 DUPTABLE                         R14 K67 [{"Container"}]
      370 GETUPVAL                         R15 7
      371 GETUPVAL                         R16 13
      372 DUPTABLE                         R17 K49 [{"tag", "LayoutOrder"}]
      373 GETTABLEKS                       R18 R10 K36 ["Assistant"]
      375 SETTABLEKS                       R18 R17 K48 ["tag"]
      377 GETTABLEKS                       R18 R0 K19 ["LayoutOrder"]
      379 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      381 MOVE                             R18 R4
      382 CALL                             R15 3 1
      383 SETTABLEKS                       R15 R14 K66 ["Container"]
      385 CALL                             R11 3 -1
      386 RETURN                           R11 -1
      387 GETUPVAL                         R11 7
      388 GETUPVAL                         R12 13
      389 DUPTABLE                         R13 K49 [{"tag", "LayoutOrder"}]
      390 SETTABLEKS                       R10 R13 K48 ["tag"]
      392 GETTABLEKS                       R14 R0 K19 ["LayoutOrder"]
      394 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      396 JUMPIFNOT                        R3 ; [+12]
      397 DUPTABLE                         R14 K51 [{"MessageBubble"}]
      398 GETUPVAL                         R15 7
      399 GETUPVAL                         R16 13
      400 DUPTABLE                         R17 K52 [{"tag"}]
      401 LOADK                            R18 K53 ["auto-xy bg-shift-300 radius-large padding-medium col"]
      402 SETTABLEKS                       R18 R17 K48 ["tag"]
      404 MOVE                             R18 R4
      405 CALL                             R15 3 1
      406 SETTABLEKS                       R15 R14 K50 ["MessageBubble"]
      408 JUMPIF                           R14 ; [+1]
      409 MOVE                             R14 R4
      410 CALL                             R11 3 -1
      411 RETURN                           R11 -1

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
       46 GETTABLEKS                       R8 R9 K14 ["Contexts"]
       48 GETTABLEKS                       R7 R8 K15 ["InputStateContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K12 ["Components"]
       55 GETTABLEKS                       R8 R9 K16 ["MessageActions"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K8 ["Parent"]
       62 GETTABLEKS                       R9 R10 K17 ["React"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K18 ["Types"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       74 GETTABLEKS                       R11 R12 K20 ["useEditContent"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K21 ["Flags"]
       81 GETTABLEKS                       R12 R13 K22 ["FFlagAssistantMultipleChatSupport"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R14 R0 K21 ["Flags"]
       88 GETTABLEKS                       R13 R14 K23 ["FFlagAssistantPersistConversations"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R4 K24 ["View"]
       93 GETTABLEKS                       R14 R8 K25 ["createElement"]
       95 GETTABLEKS                       R15 R6 K26 ["InputDisabledReasons"]
       97 DUPCLOSURE                       R16 K27 [PROTO_4]
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R13
      112 RETURN                           R16 1
