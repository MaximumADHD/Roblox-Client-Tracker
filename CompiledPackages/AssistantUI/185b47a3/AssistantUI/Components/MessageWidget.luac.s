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
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantHideSystemReminderContents"]
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["contents"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["contents"]
       12 CALL                             R0 1 1
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{"messageId", "contentId", "transformFn"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["messageId"]
        5 SETTABLEKS                       R4 R3 K0 ["messageId"]
        7 SETTABLEKS                       R0 R3 K1 ["contentId"]
        9 SETTABLEKS                       R1 R3 K2 ["transformFn"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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
       30 CAPTURE                          UPVAL U5
       31 NEWTABLE                         R9 0 1
       33 GETTABLEKS                       R10 R0 K6 ["contents"]
       35 SETLIST                          R9 R10 1 [1]
       37 CALL                             R7 2 1
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       41 NEWCLOSURE                       R9 P1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R10 0 2
       46 MOVE                             R11 R2
       47 GETTABLEKS                       R12 R0 K8 ["messageId"]
       49 SETLIST                          R10 R11 2 [1]
       51 CALL                             R8 2 1
       52 LOADN                            R9 0
       53 MOVE                             R10 R7
       54 LOADNIL                          R11
       55 LOADNIL                          R12
       56 FORGPREP                         R10
       57 GETUPVAL                         R16 4
       58 GETTABLEKS                       R16 R16 K9 ["FFlagAssistantSplitToolsAndWidgets"]
       60 JUMPIFNOT                        R16 ; [+7]
       61 GETUPVAL                         R15 6
       62 GETTABLEKS                       R15 R15 K10 ["get"]
       64 GETTABLEKS                       R16 R14 K11 ["type"]
       66 CALL                             R15 1 1
       67 JUMP                             ; [+6]
       68 GETUPVAL                         R15 7
       69 GETTABLEKS                       R15 R15 K10 ["get"]
       71 GETTABLEKS                       R16 R14 K11 ["type"]
       73 CALL                             R15 1 1
       74 JUMPIFNOT                        R15 ; [+69]
       75 GETUPVAL                         R16 8
       76 GETTABLEKS                       R16 R16 K12 ["assign"]
       78 DUPTABLE                         R17 K15 [{"messageId", "role", "editThisContent", "sendMessage"}]
       79 GETTABLEKS                       R18 R0 K8 ["messageId"]
       81 SETTABLEKS                       R18 R17 K8 ["messageId"]
       83 GETTABLEKS                       R18 R0 K2 ["role"]
       85 SETTABLEKS                       R18 R17 K2 ["role"]
       87 SETTABLEKS                       R8 R17 K13 ["editThisContent"]
       89 GETTABLEKS                       R18 R0 K14 ["sendMessage"]
       91 SETTABLEKS                       R18 R17 K14 ["sendMessage"]
       93 MOVE                             R18 R14
       94 CALL                             R16 2 1
       95 GETIMPORT                        R17 K18 [string.format]
       97 LOADK                            R18 K19 ["Content-%04i-%s"]
       98 GETTABLEKS                       R20 R16 K21 ["LayoutOrder"]
      100 ORK                              R19 R20 K20 [0]
      101 MOVE                             R20 R13
      102 CALL                             R17 3 1
      103 LOADB                            R18 0
      104 GETTABLEKS                       R19 R0 K2 ["role"]
      106 GETUPVAL                         R20 3
      107 GETTABLEKS                       R20 R20 K3 ["ROLE"]
      109 GETTABLEKS                       R20 R20 K4 ["User"]
      111 JUMPIFNOTEQ                      R19 R20 ; [+10]
      113 GETTABLEKS                       R19 R14 K11 ["type"]
      115 GETUPVAL                         R20 9
      116 GETTABLEKS                       R20 R20 K22 ["Type"]
      118 JUMPIFEQ                         R19 R20 ; [+2]
      120 LOADB                            R18 0 +1
      121 LOADB                            R18 1
      122 JUMPIFNOT                        R18 ; [+6]
      123 GETUPVAL                         R18 10
      124 MOVE                             R19 R15
      125 MOVE                             R20 R16
      126 CALL                             R18 2 1
      127 SETTABLE                         R18 R6 R17
      128 JUMP                             ; [+5]
      129 GETUPVAL                         R18 10
      130 MOVE                             R19 R15
      131 MOVE                             R20 R16
      132 CALL                             R18 2 1
      133 SETTABLE                         R18 R5 R17
      134 GETTABLEKS                       R18 R14 K21 ["LayoutOrder"]
      136 JUMPIFNOT                        R18 ; [+13]
      137 GETTABLEKS                       R18 R14 K21 ["LayoutOrder"]
      139 JUMPIFNOTLT                      R9 R18 ; [+10]
      141 GETTABLEKS                       R9 R14 K21 ["LayoutOrder"]
      143 JUMP                             ; [+6]
      144 GETIMPORT                        R16 K24 [warn]
      146 LOADK                            R17 K25 ["No builder for content type:"]
      147 GETTABLEKS                       R18 R14 K11 ["type"]
      149 CALL                             R16 2 0
      150 FORGLOOP                         R10 2 ; [-94]
      152 LOADB                            R10 0
      153 MOVE                             R11 R7
      154 LOADNIL                          R12
      155 LOADNIL                          R13
      156 FORGPREP                         R11
      157 GETUPVAL                         R16 11
      158 MOVE                             R17 R15
      159 CALL                             R16 1 1
      160 JUMPIFNOT                        R16 ; [+2]
      161 LOADB                            R10 1
      162 JUMP                             ; [+2]
      163 FORGLOOP                         R11 2 ; [-7]
      165 GETTABLEKS                       R11 R3 K26 ["reasonDisabled"]
      167 JUMPIFNOT                        R11 ; [+4]
      168 GETTABLEKS                       R11 R3 K26 ["reasonDisabled"]
      170 GETTABLEKS                       R11 R11 K26 ["reasonDisabled"]
      172 GETTABLEKS                       R12 R0 K27 ["isLatestAssistantAndMostRecent"]
      174 JUMPIFNOT                        R12 ; [+7]
      175 GETUPVAL                         R13 12
      176 GETTABLEKS                       R13 R13 K28 ["Generation"]
      178 JUMPIFEQ                         R11 R13 ; [+2]
      180 LOADB                            R12 0 +1
      181 LOADB                            R12 1
      182 JUMPIFNOT                        R12 ; [+9]
      183 GETUPVAL                         R13 10
      184 GETUPVAL                         R14 13
      185 DUPTABLE                         R15 K29 [{"LayoutOrder"}]
      186 ADDK                             R16 R9 K30 [1]
      187 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      189 CALL                             R13 2 1
      190 SETTABLEKS                       R13 R5 K31 ["GenerationIndicator"]
      192 GETUPVAL                         R13 1
      193 GETTABLEKS                       R13 R13 K32 ["useState"]
      195 LOADB                            R14 0
      196 CALL                             R13 1 2
      197 GETTABLEKS                       R16 R0 K2 ["role"]
      199 GETUPVAL                         R17 3
      200 GETTABLEKS                       R17 R17 K3 ["ROLE"]
      202 GETTABLEKS                       R17 R17 K33 ["Assistant"]
      204 JUMPIFEQ                         R16 R17 ; [+2]
      206 LOADB                            R15 0 +1
      207 LOADB                            R15 1
      208 GETTABLEKS                       R17 R0 K27 ["isLatestAssistantAndMostRecent"]
      210 JUMPIF                           R17 ; [+2]
      211 MOVE                             R16 R13
      212 JUMPIFNOT                        R16 ; [+6]
      213 GETTABLEKS                       R16 R3 K34 ["inputEnabled"]
      215 JUMPIFNOT                        R16 ; [+3]
      216 NOT                              R16 R10
      217 JUMPIFNOT                        R16 ; [+1]
      218 MOVE                             R16 R15
      219 JUMPIF                           R15 ; [+9]
      220 GETTABLEKS                       R17 R0 K2 ["role"]
      222 GETUPVAL                         R18 3
      223 GETTABLEKS                       R18 R18 K3 ["ROLE"]
      225 GETTABLEKS                       R18 R18 K35 ["System"]
      227 JUMPIFNOTEQ                      R17 R18 ; [+24]
      229 GETUPVAL                         R17 10
      230 GETUPVAL                         R18 14
      231 DUPTABLE                         R19 K39 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      232 ADDK                             R20 R9 K40 [2]
      233 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      235 GETTABLEKS                       R20 R0 K36 ["retryMessage"]
      237 SETTABLEKS                       R20 R19 K36 ["retryMessage"]
      239 GETTABLEKS                       R20 R0 K8 ["messageId"]
      241 SETTABLEKS                       R20 R19 K8 ["messageId"]
      243 GETTABLEKS                       R20 R0 K37 ["thumbsState"]
      245 SETTABLEKS                       R20 R19 K37 ["thumbsState"]
      247 SETTABLEKS                       R16 R19 K38 ["shouldShowActions"]
      249 CALL                             R17 2 1
      250 SETTABLEKS                       R17 R5 K41 ["MessageActions"]
      252 GETUPVAL                         R17 1
      253 GETTABLEKS                       R17 R17 K7 ["useCallback"]
      255 NEWCLOSURE                       R18 P2
      256 CAPTURE                          VAL R14
      257 NEWTABLE                         R19 0 0
      259 CALL                             R17 2 1
      260 GETUPVAL                         R18 1
      261 GETTABLEKS                       R18 R18 K5 ["useMemo"]
      263 DUPCLOSURE                       R19 K42 [PROTO_5]
      264 NEWTABLE                         R20 0 0
      266 CALL                             R18 2 1
      267 GETIMPORT                        R19 K44 [next]
      269 MOVE                             R20 R7
      270 CALL                             R19 1 1
      271 JUMPIFNOTEQKNIL                  R19 ; [+6]
      273 JUMPIF                           R12 ; [+4]
      274 GETUPVAL                         R19 1
      275 GETTABLEKS                       R19 R19 K45 ["None"]
      277 RETURN                           R19 1
      278 JUMPIFNOT                        R4 ; [+51]
      279 NEWTABLE                         R19 0 0
      281 GETIMPORT                        R20 K44 [next]
      283 MOVE                             R21 R6
      284 CALL                             R20 1 1
      285 JUMPIFEQKNIL                     R20 ; [+8]
      287 GETUPVAL                         R20 10
      288 GETUPVAL                         R21 15
      289 DUPTABLE                         R22 K48 [{["tag"] = "col gap-small size-0-0 auto-xy", ["LayoutOrder"] = 0}]
      290 MOVE                             R23 R6
      291 CALL                             R20 3 1
      292 SETTABLEKS                       R20 R19 K49 ["TransparentContents"]
      294 GETIMPORT                        R20 K44 [next]
      296 MOVE                             R21 R5
      297 CALL                             R20 1 1
      298 JUMPIFEQKNIL                     R20 ; [+8]
      300 GETUPVAL                         R20 10
      301 GETUPVAL                         R21 15
      302 DUPTABLE                         R22 K51 [{["tag"] = "col auto-xy padding-medium radius-large bg-shift-300", ["LayoutOrder"] = 1}]
      303 MOVE                             R23 R5
      304 CALL                             R20 3 1
      305 SETTABLEKS                       R20 R19 K52 ["MessageBubble"]
      307 GETUPVAL                         R20 10
      308 GETUPVAL                         R21 15
      309 DUPTABLE                         R22 K54 [{"tag", "LayoutOrder", "ref"}]
      310 GETTABLEKS                       R23 R18 K4 ["User"]
      312 SETTABLEKS                       R23 R22 K46 ["tag"]
      314 GETTABLEKS                       R23 R0 K21 ["LayoutOrder"]
      316 SETTABLEKS                       R23 R22 K21 ["LayoutOrder"]
      318 SETTABLEKS                       R1 R22 K53 ["ref"]
      320 DUPTABLE                         R23 K56 [{"ContentStack"}]
      321 GETUPVAL                         R24 10
      322 GETUPVAL                         R25 15
      323 DUPTABLE                         R26 K58 [{["tag"] = "col align-x-right gap-small size-0-0 auto-xy"}]
      324 MOVE                             R27 R19
      325 CALL                             R24 3 1
      326 SETTABLEKS                       R24 R23 K55 ["ContentStack"]
      328 CALL                             R20 3 -1
      329 RETURN                           R20 -1
      330 GETUPVAL                         R19 10
      331 LOADK                            R20 K59 ["ImageButton"]
      332 NEWTABLE                         R21 8 0
      334 GETIMPORT                        R22 K62 [UDim2.fromScale]
      336 LOADN                            R23 1
      337 LOADN                            R24 0
      338 CALL                             R22 2 1
      339 SETTABLEKS                       R22 R21 K63 ["Size"]
      341 GETIMPORT                        R22 K67 [Enum.AutomaticSize.Y]
      343 SETTABLEKS                       R22 R21 K65 ["AutomaticSize"]
      345 LOADN                            R22 1
      346 SETTABLEKS                       R22 R21 K68 ["BackgroundTransparency"]
      348 GETUPVAL                         R22 1
      349 GETTABLEKS                       R22 R22 K69 ["Change"]
      351 GETTABLEKS                       R22 R22 K70 ["GuiState"]
      353 SETTABLE                         R17 R21 R22
      354 GETTABLEKS                       R22 R0 K21 ["LayoutOrder"]
      356 SETTABLEKS                       R22 R21 K21 ["LayoutOrder"]
      358 SETTABLEKS                       R1 R21 K53 ["ref"]
      360 DUPTABLE                         R22 K72 [{"Container"}]
      361 GETUPVAL                         R23 10
      362 GETUPVAL                         R24 15
      363 DUPTABLE                         R25 K73 [{"tag", "LayoutOrder"}]
      364 GETTABLEKS                       R26 R18 K33 ["Assistant"]
      366 SETTABLEKS                       R26 R25 K46 ["tag"]
      368 GETTABLEKS                       R26 R0 K21 ["LayoutOrder"]
      370 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      372 MOVE                             R26 R5
      373 CALL                             R23 3 1
      374 SETTABLEKS                       R23 R22 K71 ["Container"]
      376 CALL                             R19 3 -1
      377 RETURN                           R19 -1

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
      109 DUPCLOSURE                       R18 K29 [PROTO_1]
      110 CAPTURE                          VAL R11
      111 DUPCLOSURE                       R19 K30 [PROTO_6]
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R14
      128 GETTABLEKS                       R20 R10 K31 ["forwardRef"]
      130 MOVE                             R21 R19
      131 CALL                             R20 1 -1
      132 RETURN                           R20 -1
