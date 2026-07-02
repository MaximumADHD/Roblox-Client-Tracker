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
       60 JUMPIFNOT                        R14 ; [+69]
       61 GETUPVAL                         R15 7
       62 GETTABLEKS                       R15 R15 K10 ["assign"]
       64 DUPTABLE                         R16 K13 [{"messageId", "role", "editThisContent", "sendMessage"}]
       65 GETTABLEKS                       R17 R0 K6 ["messageId"]
       67 SETTABLEKS                       R17 R16 K6 ["messageId"]
       69 GETTABLEKS                       R17 R0 K2 ["role"]
       71 SETTABLEKS                       R17 R16 K2 ["role"]
       73 SETTABLEKS                       R7 R16 K11 ["editThisContent"]
       75 GETTABLEKS                       R17 R0 K12 ["sendMessage"]
       77 SETTABLEKS                       R17 R16 K12 ["sendMessage"]
       79 MOVE                             R17 R13
       80 CALL                             R15 2 1
       81 GETIMPORT                        R16 K16 [string.format]
       83 LOADK                            R17 K17 ["Content-%04i-%s"]
       84 GETTABLEKS                       R19 R15 K19 ["LayoutOrder"]
       86 ORK                              R18 R19 K18 [0]
       87 MOVE                             R19 R12
       88 CALL                             R16 3 1
       89 LOADB                            R17 0
       90 GETTABLEKS                       R18 R0 K2 ["role"]
       92 GETUPVAL                         R19 3
       93 GETTABLEKS                       R19 R19 K3 ["ROLE"]
       95 GETTABLEKS                       R19 R19 K4 ["User"]
       97 JUMPIFNOTEQ                      R18 R19 ; [+10]
       99 GETTABLEKS                       R18 R13 K9 ["type"]
      101 GETUPVAL                         R19 8
      102 GETTABLEKS                       R19 R19 K20 ["Type"]
      104 JUMPIFEQ                         R18 R19 ; [+2]
      106 LOADB                            R17 0 +1
      107 LOADB                            R17 1
      108 JUMPIFNOT                        R17 ; [+6]
      109 GETUPVAL                         R17 9
      110 MOVE                             R18 R14
      111 MOVE                             R19 R15
      112 CALL                             R17 2 1
      113 SETTABLE                         R17 R6 R16
      114 JUMP                             ; [+5]
      115 GETUPVAL                         R17 9
      116 MOVE                             R18 R14
      117 MOVE                             R19 R15
      118 CALL                             R17 2 1
      119 SETTABLE                         R17 R5 R16
      120 GETTABLEKS                       R17 R13 K19 ["LayoutOrder"]
      122 JUMPIFNOT                        R17 ; [+13]
      123 GETTABLEKS                       R17 R13 K19 ["LayoutOrder"]
      125 JUMPIFNOTLT                      R8 R17 ; [+10]
      127 GETTABLEKS                       R8 R13 K19 ["LayoutOrder"]
      129 JUMP                             ; [+6]
      130 GETIMPORT                        R15 K22 [warn]
      132 LOADK                            R16 K23 ["No builder for content type:"]
      133 GETTABLEKS                       R17 R13 K9 ["type"]
      135 CALL                             R15 2 0
      136 FORGLOOP                         R9 2 ; [-93]
      138 LOADB                            R9 0
      139 GETTABLEKS                       R10 R0 K7 ["contents"]
      141 LOADNIL                          R11
      142 LOADNIL                          R12
      143 FORGPREP                         R10
      144 GETTABLEKS                       R15 R14 K24 ["generating"]
      146 JUMPIFNOT                        R15 ; [+2]
      147 LOADB                            R9 1
      148 JUMP                             ; [+2]
      149 FORGLOOP                         R10 2 ; [-6]
      151 GETTABLEKS                       R10 R3 K25 ["reasonDisabled"]
      153 JUMPIFNOT                        R10 ; [+4]
      154 GETTABLEKS                       R10 R3 K25 ["reasonDisabled"]
      156 GETTABLEKS                       R10 R10 K25 ["reasonDisabled"]
      158 GETTABLEKS                       R11 R0 K26 ["isLatestAssistantAndMostRecent"]
      160 JUMPIFNOT                        R11 ; [+14]
      161 GETUPVAL                         R11 10
      162 GETTABLEKS                       R11 R11 K27 ["Generation"]
      164 JUMPIFNOTEQ                      R10 R11 ; [+10]
      166 GETUPVAL                         R11 9
      167 GETUPVAL                         R12 11
      168 DUPTABLE                         R13 K28 [{"LayoutOrder"}]
      169 ADDK                             R14 R8 K29 [1]
      170 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      172 CALL                             R11 2 1
      173 SETTABLEKS                       R11 R5 K30 ["GenerationIndicator"]
      175 GETUPVAL                         R11 1
      176 GETTABLEKS                       R11 R11 K31 ["useState"]
      178 LOADB                            R12 0
      179 CALL                             R11 1 2
      180 GETTABLEKS                       R14 R0 K2 ["role"]
      182 GETUPVAL                         R15 3
      183 GETTABLEKS                       R15 R15 K3 ["ROLE"]
      185 GETTABLEKS                       R15 R15 K32 ["Assistant"]
      187 JUMPIFEQ                         R14 R15 ; [+2]
      189 LOADB                            R13 0 +1
      190 LOADB                            R13 1
      191 GETTABLEKS                       R15 R0 K26 ["isLatestAssistantAndMostRecent"]
      193 JUMPIF                           R15 ; [+2]
      194 MOVE                             R14 R11
      195 JUMPIFNOT                        R14 ; [+6]
      196 GETTABLEKS                       R14 R3 K33 ["inputEnabled"]
      198 JUMPIFNOT                        R14 ; [+3]
      199 NOT                              R14 R9
      200 JUMPIFNOT                        R14 ; [+1]
      201 MOVE                             R14 R13
      202 JUMPIF                           R13 ; [+9]
      203 GETTABLEKS                       R15 R0 K2 ["role"]
      205 GETUPVAL                         R16 3
      206 GETTABLEKS                       R16 R16 K3 ["ROLE"]
      208 GETTABLEKS                       R16 R16 K34 ["System"]
      210 JUMPIFNOTEQ                      R15 R16 ; [+24]
      212 GETUPVAL                         R15 9
      213 GETUPVAL                         R16 12
      214 DUPTABLE                         R17 K38 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      215 ADDK                             R18 R8 K39 [2]
      216 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      218 GETTABLEKS                       R18 R0 K35 ["retryMessage"]
      220 SETTABLEKS                       R18 R17 K35 ["retryMessage"]
      222 GETTABLEKS                       R18 R0 K6 ["messageId"]
      224 SETTABLEKS                       R18 R17 K6 ["messageId"]
      226 GETTABLEKS                       R18 R0 K36 ["thumbsState"]
      228 SETTABLEKS                       R18 R17 K36 ["thumbsState"]
      230 SETTABLEKS                       R14 R17 K37 ["shouldShowActions"]
      232 CALL                             R15 2 1
      233 SETTABLEKS                       R15 R5 K40 ["MessageActions"]
      235 GETUPVAL                         R15 1
      236 GETTABLEKS                       R15 R15 K5 ["useCallback"]
      238 NEWCLOSURE                       R16 P1
      239 CAPTURE                          VAL R12
      240 NEWTABLE                         R17 0 0
      242 CALL                             R15 2 1
      243 GETUPVAL                         R16 1
      244 GETTABLEKS                       R16 R16 K41 ["useMemo"]
      246 DUPCLOSURE                       R17 K42 [PROTO_3]
      247 NEWTABLE                         R18 0 0
      249 CALL                             R16 2 1
      250 GETIMPORT                        R17 K44 [next]
      252 GETTABLEKS                       R18 R0 K7 ["contents"]
      254 CALL                             R17 1 1
      255 JUMPIFNOTEQKNIL                  R17 ; [+5]
      257 GETUPVAL                         R17 1
      258 GETTABLEKS                       R17 R17 K45 ["None"]
      260 RETURN                           R17 1
      261 JUMPIFNOT                        R4 ; [+51]
      262 NEWTABLE                         R17 0 0
      264 GETIMPORT                        R18 K44 [next]
      266 MOVE                             R19 R6
      267 CALL                             R18 1 1
      268 JUMPIFEQKNIL                     R18 ; [+8]
      270 GETUPVAL                         R18 9
      271 GETUPVAL                         R19 13
      272 DUPTABLE                         R20 K48 [{["tag"] = "col gap-small size-0-0 auto-xy", ["LayoutOrder"] = 0}]
      273 MOVE                             R21 R6
      274 CALL                             R18 3 1
      275 SETTABLEKS                       R18 R17 K49 ["TransparentContents"]
      277 GETIMPORT                        R18 K44 [next]
      279 MOVE                             R19 R5
      280 CALL                             R18 1 1
      281 JUMPIFEQKNIL                     R18 ; [+8]
      283 GETUPVAL                         R18 9
      284 GETUPVAL                         R19 13
      285 DUPTABLE                         R20 K51 [{["tag"] = "col auto-xy padding-medium radius-large bg-shift-300", ["LayoutOrder"] = 1}]
      286 MOVE                             R21 R5
      287 CALL                             R18 3 1
      288 SETTABLEKS                       R18 R17 K52 ["MessageBubble"]
      290 GETUPVAL                         R18 9
      291 GETUPVAL                         R19 13
      292 DUPTABLE                         R20 K54 [{"tag", "LayoutOrder", "ref"}]
      293 GETTABLEKS                       R21 R16 K4 ["User"]
      295 SETTABLEKS                       R21 R20 K46 ["tag"]
      297 GETTABLEKS                       R21 R0 K19 ["LayoutOrder"]
      299 SETTABLEKS                       R21 R20 K19 ["LayoutOrder"]
      301 SETTABLEKS                       R1 R20 K53 ["ref"]
      303 DUPTABLE                         R21 K56 [{"ContentStack"}]
      304 GETUPVAL                         R22 9
      305 GETUPVAL                         R23 13
      306 DUPTABLE                         R24 K58 [{["tag"] = "col align-x-right gap-small size-0-0 auto-xy"}]
      307 MOVE                             R25 R17
      308 CALL                             R22 3 1
      309 SETTABLEKS                       R22 R21 K55 ["ContentStack"]
      311 CALL                             R18 3 -1
      312 RETURN                           R18 -1
      313 GETUPVAL                         R17 9
      314 LOADK                            R18 K59 ["ImageButton"]
      315 NEWTABLE                         R19 8 0
      317 GETIMPORT                        R20 K62 [UDim2.fromScale]
      319 LOADN                            R21 1
      320 LOADN                            R22 0
      321 CALL                             R20 2 1
      322 SETTABLEKS                       R20 R19 K63 ["Size"]
      324 GETIMPORT                        R20 K67 [Enum.AutomaticSize.Y]
      326 SETTABLEKS                       R20 R19 K65 ["AutomaticSize"]
      328 LOADN                            R20 1
      329 SETTABLEKS                       R20 R19 K68 ["BackgroundTransparency"]
      331 GETUPVAL                         R20 1
      332 GETTABLEKS                       R20 R20 K69 ["Change"]
      334 GETTABLEKS                       R20 R20 K70 ["GuiState"]
      336 SETTABLE                         R15 R19 R20
      337 GETTABLEKS                       R20 R0 K19 ["LayoutOrder"]
      339 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      341 SETTABLEKS                       R1 R19 K53 ["ref"]
      343 DUPTABLE                         R20 K72 [{"Container"}]
      344 GETUPVAL                         R21 9
      345 GETUPVAL                         R22 13
      346 DUPTABLE                         R23 K73 [{"tag", "LayoutOrder"}]
      347 GETTABLEKS                       R24 R16 K32 ["Assistant"]
      349 SETTABLEKS                       R24 R23 K46 ["tag"]
      351 GETTABLEKS                       R24 R0 K19 ["LayoutOrder"]
      353 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      355 MOVE                             R24 R5
      356 CALL                             R21 3 1
      357 SETTABLEKS                       R21 R20 K71 ["Container"]
      359 CALL                             R17 3 -1
      360 RETURN                           R17 -1

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
       32 GETTABLEKS                       R5 R0 K10 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Components"]
       41 GETTABLEKS                       R6 R6 K14 ["GenerationIndicator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Components"]
       48 GETTABLEKS                       R7 R7 K7 ["ContentWidgets"]
       50 GETTABLEKS                       R7 R7 K15 ["ImageContentWidget"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K13 ["Components"]
       57 GETTABLEKS                       R8 R8 K16 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K17 ["InputStateContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K13 ["Components"]
       66 GETTABLEKS                       R9 R9 K18 ["MessageActions"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K10 ["Parent"]
       73 GETTABLEKS                       R10 R10 K19 ["React"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K20 ["Types"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K21 ["Hooks"]
       85 GETTABLEKS                       R12 R12 K22 ["useEditContent"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K23 ["Flags"]
       92 GETTABLEKS                       R13 R13 K24 ["FFlagAssistantSplitToolsAndWidgets"]
       94 CALL                             R12 1 1
       95 GETTABLEKS                       R13 R4 K25 ["View"]
       97 GETTABLEKS                       R14 R9 K26 ["createElement"]
       99 GETTABLEKS                       R15 R7 K27 ["InputDisabledReasons"]
      101 DUPCLOSURE                       R16 K28 [PROTO_0]
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R6
      104 DUPCLOSURE                       R17 K29 [PROTO_4]
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R13
      119 GETTABLEKS                       R18 R9 K30 ["forwardRef"]
      121 MOVE                             R19 R17
      122 CALL                             R18 1 -1
      123 RETURN                           R18 -1
