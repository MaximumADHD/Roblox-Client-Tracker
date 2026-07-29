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
       45 GETTABLEKS                       R15 R15 K8 ["FFlagAssistantSplitToolsAndWidgets"]
       47 JUMPIFNOT                        R15 ; [+7]
       48 GETUPVAL                         R14 5
       49 GETTABLEKS                       R14 R14 K9 ["get"]
       51 GETTABLEKS                       R15 R13 K10 ["type"]
       53 CALL                             R14 1 1
       54 JUMP                             ; [+6]
       55 GETUPVAL                         R14 6
       56 GETTABLEKS                       R14 R14 K9 ["get"]
       58 GETTABLEKS                       R15 R13 K10 ["type"]
       60 CALL                             R14 1 1
       61 JUMPIFNOT                        R14 ; [+69]
       62 GETUPVAL                         R15 7
       63 GETTABLEKS                       R15 R15 K11 ["assign"]
       65 DUPTABLE                         R16 K14 [{"messageId", "role", "editThisContent", "sendMessage"}]
       66 GETTABLEKS                       R17 R0 K6 ["messageId"]
       68 SETTABLEKS                       R17 R16 K6 ["messageId"]
       70 GETTABLEKS                       R17 R0 K2 ["role"]
       72 SETTABLEKS                       R17 R16 K2 ["role"]
       74 SETTABLEKS                       R7 R16 K12 ["editThisContent"]
       76 GETTABLEKS                       R17 R0 K13 ["sendMessage"]
       78 SETTABLEKS                       R17 R16 K13 ["sendMessage"]
       80 MOVE                             R17 R13
       81 CALL                             R15 2 1
       82 GETIMPORT                        R16 K17 [string.format]
       84 LOADK                            R17 K18 ["Content-%04i-%s"]
       85 GETTABLEKS                       R19 R15 K20 ["LayoutOrder"]
       87 ORK                              R18 R19 K19 [0]
       88 MOVE                             R19 R12
       89 CALL                             R16 3 1
       90 LOADB                            R17 0
       91 GETTABLEKS                       R18 R0 K2 ["role"]
       93 GETUPVAL                         R19 3
       94 GETTABLEKS                       R19 R19 K3 ["ROLE"]
       96 GETTABLEKS                       R19 R19 K4 ["User"]
       98 JUMPIFNOTEQ                      R18 R19 ; [+10]
      100 GETTABLEKS                       R18 R13 K10 ["type"]
      102 GETUPVAL                         R19 8
      103 GETTABLEKS                       R19 R19 K21 ["Type"]
      105 JUMPIFEQ                         R18 R19 ; [+2]
      107 LOADB                            R17 0 +1
      108 LOADB                            R17 1
      109 JUMPIFNOT                        R17 ; [+6]
      110 GETUPVAL                         R17 9
      111 MOVE                             R18 R14
      112 MOVE                             R19 R15
      113 CALL                             R17 2 1
      114 SETTABLE                         R17 R6 R16
      115 JUMP                             ; [+5]
      116 GETUPVAL                         R17 9
      117 MOVE                             R18 R14
      118 MOVE                             R19 R15
      119 CALL                             R17 2 1
      120 SETTABLE                         R17 R5 R16
      121 GETTABLEKS                       R17 R13 K20 ["LayoutOrder"]
      123 JUMPIFNOT                        R17 ; [+13]
      124 GETTABLEKS                       R17 R13 K20 ["LayoutOrder"]
      126 JUMPIFNOTLT                      R8 R17 ; [+10]
      128 GETTABLEKS                       R8 R13 K20 ["LayoutOrder"]
      130 JUMP                             ; [+6]
      131 GETIMPORT                        R15 K23 [warn]
      133 LOADK                            R16 K24 ["No builder for content type:"]
      134 GETTABLEKS                       R17 R13 K10 ["type"]
      136 CALL                             R15 2 0
      137 FORGLOOP                         R9 2 ; [-94]
      139 LOADB                            R9 0
      140 GETTABLEKS                       R10 R0 K7 ["contents"]
      142 LOADNIL                          R11
      143 LOADNIL                          R12
      144 FORGPREP                         R10
      145 GETUPVAL                         R15 10
      146 MOVE                             R16 R14
      147 CALL                             R15 1 1
      148 JUMPIFNOT                        R15 ; [+2]
      149 LOADB                            R9 1
      150 JUMP                             ; [+2]
      151 FORGLOOP                         R10 2 ; [-7]
      153 GETTABLEKS                       R10 R3 K25 ["reasonDisabled"]
      155 JUMPIFNOT                        R10 ; [+4]
      156 GETTABLEKS                       R10 R3 K25 ["reasonDisabled"]
      158 GETTABLEKS                       R10 R10 K25 ["reasonDisabled"]
      160 GETTABLEKS                       R11 R0 K26 ["isLatestAssistantAndMostRecent"]
      162 JUMPIFNOT                        R11 ; [+14]
      163 GETUPVAL                         R11 11
      164 GETTABLEKS                       R11 R11 K27 ["Generation"]
      166 JUMPIFNOTEQ                      R10 R11 ; [+10]
      168 GETUPVAL                         R11 9
      169 GETUPVAL                         R12 12
      170 DUPTABLE                         R13 K28 [{"LayoutOrder"}]
      171 ADDK                             R14 R8 K29 [1]
      172 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
      174 CALL                             R11 2 1
      175 SETTABLEKS                       R11 R5 K30 ["GenerationIndicator"]
      177 GETUPVAL                         R11 1
      178 GETTABLEKS                       R11 R11 K31 ["useState"]
      180 LOADB                            R12 0
      181 CALL                             R11 1 2
      182 GETTABLEKS                       R14 R0 K2 ["role"]
      184 GETUPVAL                         R15 3
      185 GETTABLEKS                       R15 R15 K3 ["ROLE"]
      187 GETTABLEKS                       R15 R15 K32 ["Assistant"]
      189 JUMPIFEQ                         R14 R15 ; [+2]
      191 LOADB                            R13 0 +1
      192 LOADB                            R13 1
      193 GETTABLEKS                       R15 R0 K26 ["isLatestAssistantAndMostRecent"]
      195 JUMPIF                           R15 ; [+2]
      196 MOVE                             R14 R11
      197 JUMPIFNOT                        R14 ; [+6]
      198 GETTABLEKS                       R14 R3 K33 ["inputEnabled"]
      200 JUMPIFNOT                        R14 ; [+3]
      201 NOT                              R14 R9
      202 JUMPIFNOT                        R14 ; [+1]
      203 MOVE                             R14 R13
      204 JUMPIF                           R13 ; [+9]
      205 GETTABLEKS                       R15 R0 K2 ["role"]
      207 GETUPVAL                         R16 3
      208 GETTABLEKS                       R16 R16 K3 ["ROLE"]
      210 GETTABLEKS                       R16 R16 K34 ["System"]
      212 JUMPIFNOTEQ                      R15 R16 ; [+24]
      214 GETUPVAL                         R15 9
      215 GETUPVAL                         R16 13
      216 DUPTABLE                         R17 K38 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      217 ADDK                             R18 R8 K39 [2]
      218 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      220 GETTABLEKS                       R18 R0 K35 ["retryMessage"]
      222 SETTABLEKS                       R18 R17 K35 ["retryMessage"]
      224 GETTABLEKS                       R18 R0 K6 ["messageId"]
      226 SETTABLEKS                       R18 R17 K6 ["messageId"]
      228 GETTABLEKS                       R18 R0 K36 ["thumbsState"]
      230 SETTABLEKS                       R18 R17 K36 ["thumbsState"]
      232 SETTABLEKS                       R14 R17 K37 ["shouldShowActions"]
      234 CALL                             R15 2 1
      235 SETTABLEKS                       R15 R5 K40 ["MessageActions"]
      237 GETUPVAL                         R15 1
      238 GETTABLEKS                       R15 R15 K5 ["useCallback"]
      240 NEWCLOSURE                       R16 P1
      241 CAPTURE                          VAL R12
      242 NEWTABLE                         R17 0 0
      244 CALL                             R15 2 1
      245 GETUPVAL                         R16 1
      246 GETTABLEKS                       R16 R16 K41 ["useMemo"]
      248 DUPCLOSURE                       R17 K42 [PROTO_3]
      249 NEWTABLE                         R18 0 0
      251 CALL                             R16 2 1
      252 GETIMPORT                        R17 K44 [next]
      254 GETTABLEKS                       R18 R0 K7 ["contents"]
      256 CALL                             R17 1 1
      257 JUMPIFNOTEQKNIL                  R17 ; [+5]
      259 GETUPVAL                         R17 1
      260 GETTABLEKS                       R17 R17 K45 ["None"]
      262 RETURN                           R17 1
      263 JUMPIFNOT                        R4 ; [+51]
      264 NEWTABLE                         R17 0 0
      266 GETIMPORT                        R18 K44 [next]
      268 MOVE                             R19 R6
      269 CALL                             R18 1 1
      270 JUMPIFEQKNIL                     R18 ; [+8]
      272 GETUPVAL                         R18 9
      273 GETUPVAL                         R19 14
      274 DUPTABLE                         R20 K48 [{["tag"] = "col gap-small size-0-0 auto-xy", ["LayoutOrder"] = 0}]
      275 MOVE                             R21 R6
      276 CALL                             R18 3 1
      277 SETTABLEKS                       R18 R17 K49 ["TransparentContents"]
      279 GETIMPORT                        R18 K44 [next]
      281 MOVE                             R19 R5
      282 CALL                             R18 1 1
      283 JUMPIFEQKNIL                     R18 ; [+8]
      285 GETUPVAL                         R18 9
      286 GETUPVAL                         R19 14
      287 DUPTABLE                         R20 K51 [{["tag"] = "col auto-xy padding-medium radius-large bg-shift-300", ["LayoutOrder"] = 1}]
      288 MOVE                             R21 R5
      289 CALL                             R18 3 1
      290 SETTABLEKS                       R18 R17 K52 ["MessageBubble"]
      292 GETUPVAL                         R18 9
      293 GETUPVAL                         R19 14
      294 DUPTABLE                         R20 K54 [{"tag", "LayoutOrder", "ref"}]
      295 GETTABLEKS                       R21 R16 K4 ["User"]
      297 SETTABLEKS                       R21 R20 K46 ["tag"]
      299 GETTABLEKS                       R21 R0 K20 ["LayoutOrder"]
      301 SETTABLEKS                       R21 R20 K20 ["LayoutOrder"]
      303 SETTABLEKS                       R1 R20 K53 ["ref"]
      305 DUPTABLE                         R21 K56 [{"ContentStack"}]
      306 GETUPVAL                         R22 9
      307 GETUPVAL                         R23 14
      308 DUPTABLE                         R24 K58 [{["tag"] = "col align-x-right gap-small size-0-0 auto-xy"}]
      309 MOVE                             R25 R17
      310 CALL                             R22 3 1
      311 SETTABLEKS                       R22 R21 K55 ["ContentStack"]
      313 CALL                             R18 3 -1
      314 RETURN                           R18 -1
      315 GETUPVAL                         R17 9
      316 LOADK                            R18 K59 ["ImageButton"]
      317 NEWTABLE                         R19 8 0
      319 GETIMPORT                        R20 K62 [UDim2.fromScale]
      321 LOADN                            R21 1
      322 LOADN                            R22 0
      323 CALL                             R20 2 1
      324 SETTABLEKS                       R20 R19 K63 ["Size"]
      326 GETIMPORT                        R20 K67 [Enum.AutomaticSize.Y]
      328 SETTABLEKS                       R20 R19 K65 ["AutomaticSize"]
      330 LOADN                            R20 1
      331 SETTABLEKS                       R20 R19 K68 ["BackgroundTransparency"]
      333 GETUPVAL                         R20 1
      334 GETTABLEKS                       R20 R20 K69 ["Change"]
      336 GETTABLEKS                       R20 R20 K70 ["GuiState"]
      338 SETTABLE                         R15 R19 R20
      339 GETTABLEKS                       R20 R0 K20 ["LayoutOrder"]
      341 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      343 SETTABLEKS                       R1 R19 K53 ["ref"]
      345 DUPTABLE                         R20 K72 [{"Container"}]
      346 GETUPVAL                         R21 9
      347 GETUPVAL                         R22 14
      348 DUPTABLE                         R23 K73 [{"tag", "LayoutOrder"}]
      349 GETTABLEKS                       R24 R16 K32 ["Assistant"]
      351 SETTABLEKS                       R24 R23 K46 ["tag"]
      353 GETTABLEKS                       R24 R0 K20 ["LayoutOrder"]
      355 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      357 MOVE                             R24 R5
      358 CALL                             R21 3 1
      359 SETTABLEKS                       R21 R20 K71 ["Container"]
      361 CALL                             R17 3 -1
      362 RETURN                           R17 -1

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
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["DEPRECATED_ContentWidgetRegistry"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Dash"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Components"]
       46 GETTABLEKS                       R7 R7 K15 ["GenerationIndicator"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Components"]
       53 GETTABLEKS                       R8 R8 K7 ["ContentWidgets"]
       55 GETTABLEKS                       R8 R8 K16 ["ImageContentWidget"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K14 ["Components"]
       62 GETTABLEKS                       R9 R9 K17 ["Contexts"]
       64 GETTABLEKS                       R9 R9 K18 ["InputStateContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K14 ["Components"]
       71 GETTABLEKS                       R10 R10 K19 ["MessageActions"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K10 ["Parent"]
       78 GETTABLEKS                       R11 R11 K20 ["React"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K21 ["Types"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K6 ["Util"]
       90 GETTABLEKS                       R13 R13 K22 ["isContentStreaming"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K23 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K24 ["useEditContent"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R5 K25 ["View"]
      102 GETTABLEKS                       R15 R10 K26 ["createElement"]
      104 GETTABLEKS                       R16 R8 K27 ["InputDisabledReasons"]
      106 DUPCLOSURE                       R17 K28 [PROTO_0]
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R7
      109 DUPCLOSURE                       R18 K29 [PROTO_4]
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R14
      125 GETTABLEKS                       R19 R10 K30 ["forwardRef"]
      127 MOVE                             R20 R18
      128 CALL                             R19 1 -1
      129 RETURN                           R19 -1
