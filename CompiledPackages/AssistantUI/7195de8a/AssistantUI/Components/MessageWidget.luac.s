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
       57 GETUPVAL                         R15 6
       58 GETTABLEKS                       R15 R15 K9 ["get"]
       60 GETTABLEKS                       R16 R14 K10 ["type"]
       62 CALL                             R15 1 1
       63 JUMPIFNOT                        R15 ; [+69]
       64 GETUPVAL                         R16 7
       65 GETTABLEKS                       R16 R16 K11 ["assign"]
       67 DUPTABLE                         R17 K14 [{"messageId", "role", "editThisContent", "sendMessage"}]
       68 GETTABLEKS                       R18 R0 K8 ["messageId"]
       70 SETTABLEKS                       R18 R17 K8 ["messageId"]
       72 GETTABLEKS                       R18 R0 K2 ["role"]
       74 SETTABLEKS                       R18 R17 K2 ["role"]
       76 SETTABLEKS                       R8 R17 K12 ["editThisContent"]
       78 GETTABLEKS                       R18 R0 K13 ["sendMessage"]
       80 SETTABLEKS                       R18 R17 K13 ["sendMessage"]
       82 MOVE                             R18 R14
       83 CALL                             R16 2 1
       84 GETIMPORT                        R17 K17 [string.format]
       86 LOADK                            R18 K18 ["Content-%04i-%s"]
       87 GETTABLEKS                       R20 R16 K20 ["LayoutOrder"]
       89 ORK                              R19 R20 K19 [0]
       90 MOVE                             R20 R13
       91 CALL                             R17 3 1
       92 LOADB                            R18 0
       93 GETTABLEKS                       R19 R0 K2 ["role"]
       95 GETUPVAL                         R20 3
       96 GETTABLEKS                       R20 R20 K3 ["ROLE"]
       98 GETTABLEKS                       R20 R20 K4 ["User"]
      100 JUMPIFNOTEQ                      R19 R20 ; [+10]
      102 GETTABLEKS                       R19 R14 K10 ["type"]
      104 GETUPVAL                         R20 8
      105 GETTABLEKS                       R20 R20 K21 ["Type"]
      107 JUMPIFEQ                         R19 R20 ; [+2]
      109 LOADB                            R18 0 +1
      110 LOADB                            R18 1
      111 JUMPIFNOT                        R18 ; [+6]
      112 GETUPVAL                         R18 9
      113 MOVE                             R19 R15
      114 MOVE                             R20 R16
      115 CALL                             R18 2 1
      116 SETTABLE                         R18 R6 R17
      117 JUMP                             ; [+5]
      118 GETUPVAL                         R18 9
      119 MOVE                             R19 R15
      120 MOVE                             R20 R16
      121 CALL                             R18 2 1
      122 SETTABLE                         R18 R5 R17
      123 GETTABLEKS                       R18 R14 K20 ["LayoutOrder"]
      125 JUMPIFNOT                        R18 ; [+13]
      126 GETTABLEKS                       R18 R14 K20 ["LayoutOrder"]
      128 JUMPIFNOTLT                      R9 R18 ; [+10]
      130 GETTABLEKS                       R9 R14 K20 ["LayoutOrder"]
      132 JUMP                             ; [+6]
      133 GETIMPORT                        R16 K23 [warn]
      135 LOADK                            R17 K24 ["No builder for content type:"]
      136 GETTABLEKS                       R18 R14 K10 ["type"]
      138 CALL                             R16 2 0
      139 FORGLOOP                         R10 2 ; [-83]
      141 LOADB                            R10 0
      142 MOVE                             R11 R7
      143 LOADNIL                          R12
      144 LOADNIL                          R13
      145 FORGPREP                         R11
      146 GETUPVAL                         R16 10
      147 MOVE                             R17 R15
      148 CALL                             R16 1 1
      149 JUMPIFNOT                        R16 ; [+2]
      150 LOADB                            R10 1
      151 JUMP                             ; [+2]
      152 FORGLOOP                         R11 2 ; [-7]
      154 GETTABLEKS                       R11 R3 K25 ["reasonDisabled"]
      156 JUMPIFNOT                        R11 ; [+4]
      157 GETTABLEKS                       R11 R3 K25 ["reasonDisabled"]
      159 GETTABLEKS                       R11 R11 K25 ["reasonDisabled"]
      161 GETTABLEKS                       R12 R0 K26 ["isLatestAssistantAndMostRecent"]
      163 JUMPIFNOT                        R12 ; [+7]
      164 GETUPVAL                         R13 11
      165 GETTABLEKS                       R13 R13 K27 ["Generation"]
      167 JUMPIFEQ                         R11 R13 ; [+2]
      169 LOADB                            R12 0 +1
      170 LOADB                            R12 1
      171 JUMPIFNOT                        R12 ; [+9]
      172 GETUPVAL                         R13 9
      173 GETUPVAL                         R14 12
      174 DUPTABLE                         R15 K28 [{"LayoutOrder"}]
      175 ADDK                             R16 R9 K29 [1]
      176 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      178 CALL                             R13 2 1
      179 SETTABLEKS                       R13 R5 K30 ["GenerationIndicator"]
      181 GETUPVAL                         R13 1
      182 GETTABLEKS                       R13 R13 K31 ["useState"]
      184 LOADB                            R14 0
      185 CALL                             R13 1 2
      186 GETTABLEKS                       R16 R0 K2 ["role"]
      188 GETUPVAL                         R17 3
      189 GETTABLEKS                       R17 R17 K3 ["ROLE"]
      191 GETTABLEKS                       R17 R17 K32 ["Assistant"]
      193 JUMPIFEQ                         R16 R17 ; [+2]
      195 LOADB                            R15 0 +1
      196 LOADB                            R15 1
      197 GETTABLEKS                       R17 R0 K26 ["isLatestAssistantAndMostRecent"]
      199 JUMPIF                           R17 ; [+2]
      200 MOVE                             R16 R13
      201 JUMPIFNOT                        R16 ; [+6]
      202 GETTABLEKS                       R16 R3 K33 ["inputEnabled"]
      204 JUMPIFNOT                        R16 ; [+3]
      205 NOT                              R16 R10
      206 JUMPIFNOT                        R16 ; [+1]
      207 MOVE                             R16 R15
      208 JUMPIF                           R15 ; [+9]
      209 GETTABLEKS                       R17 R0 K2 ["role"]
      211 GETUPVAL                         R18 3
      212 GETTABLEKS                       R18 R18 K3 ["ROLE"]
      214 GETTABLEKS                       R18 R18 K34 ["System"]
      216 JUMPIFNOTEQ                      R17 R18 ; [+24]
      218 GETUPVAL                         R17 9
      219 GETUPVAL                         R18 13
      220 DUPTABLE                         R19 K38 [{"LayoutOrder", "retryMessage", "messageId", "thumbsState", "shouldShowActions"}]
      221 ADDK                             R20 R9 K39 [2]
      222 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      224 GETTABLEKS                       R20 R0 K35 ["retryMessage"]
      226 SETTABLEKS                       R20 R19 K35 ["retryMessage"]
      228 GETTABLEKS                       R20 R0 K8 ["messageId"]
      230 SETTABLEKS                       R20 R19 K8 ["messageId"]
      232 GETTABLEKS                       R20 R0 K36 ["thumbsState"]
      234 SETTABLEKS                       R20 R19 K36 ["thumbsState"]
      236 SETTABLEKS                       R16 R19 K37 ["shouldShowActions"]
      238 CALL                             R17 2 1
      239 SETTABLEKS                       R17 R5 K40 ["MessageActions"]
      241 GETUPVAL                         R17 1
      242 GETTABLEKS                       R17 R17 K7 ["useCallback"]
      244 NEWCLOSURE                       R18 P2
      245 CAPTURE                          VAL R14
      246 NEWTABLE                         R19 0 0
      248 CALL                             R17 2 1
      249 GETUPVAL                         R18 1
      250 GETTABLEKS                       R18 R18 K5 ["useMemo"]
      252 DUPCLOSURE                       R19 K41 [PROTO_5]
      253 NEWTABLE                         R20 0 0
      255 CALL                             R18 2 1
      256 GETIMPORT                        R19 K43 [next]
      258 MOVE                             R20 R7
      259 CALL                             R19 1 1
      260 JUMPIFNOTEQKNIL                  R19 ; [+6]
      262 JUMPIF                           R12 ; [+4]
      263 GETUPVAL                         R19 1
      264 GETTABLEKS                       R19 R19 K44 ["None"]
      266 RETURN                           R19 1
      267 JUMPIFNOT                        R4 ; [+51]
      268 NEWTABLE                         R19 0 0
      270 GETIMPORT                        R20 K43 [next]
      272 MOVE                             R21 R6
      273 CALL                             R20 1 1
      274 JUMPIFEQKNIL                     R20 ; [+8]
      276 GETUPVAL                         R20 9
      277 GETUPVAL                         R21 14
      278 DUPTABLE                         R22 K47 [{["tag"] = "col gap-small size-0-0 auto-xy", ["LayoutOrder"] = 0}]
      279 MOVE                             R23 R6
      280 CALL                             R20 3 1
      281 SETTABLEKS                       R20 R19 K48 ["TransparentContents"]
      283 GETIMPORT                        R20 K43 [next]
      285 MOVE                             R21 R5
      286 CALL                             R20 1 1
      287 JUMPIFEQKNIL                     R20 ; [+8]
      289 GETUPVAL                         R20 9
      290 GETUPVAL                         R21 14
      291 DUPTABLE                         R22 K50 [{["tag"] = "col auto-xy padding-medium radius-large bg-shift-300", ["LayoutOrder"] = 1}]
      292 MOVE                             R23 R5
      293 CALL                             R20 3 1
      294 SETTABLEKS                       R20 R19 K51 ["MessageBubble"]
      296 GETUPVAL                         R20 9
      297 GETUPVAL                         R21 14
      298 DUPTABLE                         R22 K53 [{"tag", "LayoutOrder", "ref"}]
      299 GETTABLEKS                       R23 R18 K4 ["User"]
      301 SETTABLEKS                       R23 R22 K45 ["tag"]
      303 GETTABLEKS                       R23 R0 K20 ["LayoutOrder"]
      305 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      307 SETTABLEKS                       R1 R22 K52 ["ref"]
      309 DUPTABLE                         R23 K55 [{"ContentStack"}]
      310 GETUPVAL                         R24 9
      311 GETUPVAL                         R25 14
      312 DUPTABLE                         R26 K57 [{["tag"] = "col align-x-right gap-small size-0-0 auto-xy"}]
      313 MOVE                             R27 R19
      314 CALL                             R24 3 1
      315 SETTABLEKS                       R24 R23 K54 ["ContentStack"]
      317 CALL                             R20 3 -1
      318 RETURN                           R20 -1
      319 GETUPVAL                         R19 9
      320 LOADK                            R20 K58 ["ImageButton"]
      321 NEWTABLE                         R21 8 0
      323 GETIMPORT                        R22 K61 [UDim2.fromScale]
      325 LOADN                            R23 1
      326 LOADN                            R24 0
      327 CALL                             R22 2 1
      328 SETTABLEKS                       R22 R21 K62 ["Size"]
      330 GETIMPORT                        R22 K66 [Enum.AutomaticSize.Y]
      332 SETTABLEKS                       R22 R21 K64 ["AutomaticSize"]
      334 LOADN                            R22 1
      335 SETTABLEKS                       R22 R21 K67 ["BackgroundTransparency"]
      337 GETUPVAL                         R22 1
      338 GETTABLEKS                       R22 R22 K68 ["Change"]
      340 GETTABLEKS                       R22 R22 K69 ["GuiState"]
      342 SETTABLE                         R17 R21 R22
      343 GETTABLEKS                       R22 R0 K20 ["LayoutOrder"]
      345 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      347 SETTABLEKS                       R1 R21 K52 ["ref"]
      349 DUPTABLE                         R22 K71 [{"Container"}]
      350 GETUPVAL                         R23 9
      351 GETUPVAL                         R24 14
      352 DUPTABLE                         R25 K72 [{"tag", "LayoutOrder"}]
      353 GETTABLEKS                       R26 R18 K32 ["Assistant"]
      355 SETTABLEKS                       R26 R25 K45 ["tag"]
      357 GETTABLEKS                       R26 R0 K20 ["LayoutOrder"]
      359 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      361 MOVE                             R26 R5
      362 CALL                             R23 3 1
      363 SETTABLEKS                       R23 R22 K70 ["Container"]
      365 CALL                             R19 3 -1
      366 RETURN                           R19 -1

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
       20 GETTABLEKS                       R3 R3 K10 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["GenerationIndicator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Components"]
       46 GETTABLEKS                       R7 R7 K7 ["ContentWidgets"]
       48 GETTABLEKS                       R7 R7 K15 ["ImageContentWidget"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K17 ["InputStateContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K13 ["Components"]
       64 GETTABLEKS                       R9 R9 K18 ["MessageActions"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K9 ["Parent"]
       71 GETTABLEKS                       R10 R10 K19 ["React"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K20 ["Types"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K6 ["Util"]
       83 GETTABLEKS                       R12 R12 K21 ["isContentStreaming"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K23 ["useEditContent"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R4 K24 ["View"]
       95 GETTABLEKS                       R14 R9 K25 ["createElement"]
       97 GETTABLEKS                       R15 R7 K26 ["InputDisabledReasons"]
       99 DUPCLOSURE                       R16 K27 [PROTO_0]
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R6
      102 DUPCLOSURE                       R17 K28 [PROTO_1]
      103 CAPTURE                          VAL R10
      104 DUPCLOSURE                       R18 K29 [PROTO_6]
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R13
      120 GETTABLEKS                       R19 R9 K30 ["forwardRef"]
      122 MOVE                             R20 R18
      123 CALL                             R19 1 -1
      124 RETURN                           R19 -1
