PROTO_0:
        0 DUPTABLE                         R0 K1 [{"PreparingQuestions"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["QuestionAnswer"]
        3 LOADK                            R4 K3 ["Preparing"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["PreparingQuestions"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["answerState"]
        3 GETTABLEKS                       R0 R0 K1 ["onSelectOption"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["paginationState"]
        8 GETTABLEKS                       R1 R1 K3 ["safeCurrentPage"]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["answerState"]
        3 GETTABLEKS                       R1 R1 K1 ["onCustomTextChanged"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["paginationState"]
        8 GETTABLEKS                       R2 R2 K3 ["safeCurrentPage"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["status"]
       11 JUMPIFEQKS                       R3 K3 ["awaiting_answers"] ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 GETTABLEKS                       R5 R2 K4 ["totalQuestions"]
       17 GETUPVAL                         R6 2
       18 MOVE                             R7 R4
       19 CALL                             R6 1 0
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       23 DUPCLOSURE                       R7 K6 [PROTO_0]
       24 CAPTURE                          UPVAL U4
       25 NEWTABLE                         R8 0 1
       27 GETUPVAL                         R9 4
       28 GETTABLEKS                       R9 R9 K7 ["locale"]
       30 SETLIST                          R8 R9 1 [1]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R7 5
       34 CALL                             R7 0 1
       35 GETTABLEKS                       R8 R2 K8 ["screen"]
       37 JUMPIFNOTEQKS                    R8 K9 ["preparing"] ; [+31]
       39 GETUPVAL                         R8 6
       40 GETUPVAL                         R9 7
       41 DUPTABLE                         R10 K13 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       42 GETTABLEKS                       R11 R0 K12 ["LayoutOrder"]
       44 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       46 DUPTABLE                         R11 K15 [{"Loading"}]
       47 GETUPVAL                         R12 6
       48 GETUPVAL                         R13 8
       49 DUPTABLE                         R14 K18 [{["tag"] = "auto-xy text-label-small content-muted", ["Text"], ["LayoutOrder"]}]
       50 GETTABLEKS                       R15 R6 K19 ["PreparingQuestions"]
       52 SETTABLEKS                       R15 R14 K17 ["Text"]
       54 MOVE                             R15 R7
       55 CALL                             R15 0 1
       56 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
       58 DUPTABLE                         R15 K21 [{"Shimmer"}]
       59 GETUPVAL                         R16 6
       60 GETUPVAL                         R17 9
       61 CALL                             R16 1 1
       62 SETTABLEKS                       R16 R15 K20 ["Shimmer"]
       64 CALL                             R12 3 1
       65 SETTABLEKS                       R12 R11 K14 ["Loading"]
       67 CALL                             R8 3 -1
       68 RETURN                           R8 -1
       69 GETTABLEKS                       R8 R2 K8 ["screen"]
       71 JUMPIFNOTEQKS                    R8 K22 ["completed"] ; [+38]
       73 GETUPVAL                         R8 6
       74 GETUPVAL                         R9 10
       75 DUPTABLE                         R10 K29 [{"isError", "dismissed", "answeredQuestions", "expanded", "contentId", "editThisContent", "LayoutOrder"}]
       76 JUMPIFEQKS                       R3 K30 ["error"] ; [+2]
       78 LOADB                            R11 0 +1
       79 LOADB                            R11 1
       80 SETTABLEKS                       R11 R10 K23 ["isError"]
       82 GETTABLEKS                       R11 R0 K24 ["dismissed"]
       84 SETTABLEKS                       R11 R10 K24 ["dismissed"]
       86 GETTABLEKS                       R11 R0 K25 ["answeredQuestions"]
       88 SETTABLEKS                       R11 R10 K25 ["answeredQuestions"]
       90 GETTABLEKS                       R13 R0 K26 ["expanded"]
       92 NOT                              R12 R13
       93 NOT                              R11 R12
       94 SETTABLEKS                       R11 R10 K26 ["expanded"]
       96 GETTABLEKS                       R11 R0 K27 ["contentId"]
       98 SETTABLEKS                       R11 R10 K27 ["contentId"]
      100 GETTABLEKS                       R11 R0 K28 ["editThisContent"]
      102 SETTABLEKS                       R11 R10 K28 ["editThisContent"]
      104 GETTABLEKS                       R11 R0 K12 ["LayoutOrder"]
      106 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
      108 CALL                             R8 2 -1
      109 RETURN                           R8 -1
      110 GETTABLEKS                       R8 R2 K8 ["screen"]
      112 JUMPIFNOTEQKS                    R8 K31 ["review"] ; [+32]
      114 GETUPVAL                         R8 6
      115 GETUPVAL                         R9 11
      116 DUPTABLE                         R10 K35 [{"answeredQuestions", "onSubmit", "onEdit", "onDismiss", "LayoutOrder"}]
      117 GETTABLEKS                       R11 R2 K36 ["answerState"]
      119 GETTABLEKS                       R11 R11 K25 ["answeredQuestions"]
      121 SETTABLEKS                       R11 R10 K25 ["answeredQuestions"]
      123 GETTABLEKS                       R11 R2 K36 ["answerState"]
      125 GETTABLEKS                       R11 R11 K32 ["onSubmit"]
      127 SETTABLEKS                       R11 R10 K32 ["onSubmit"]
      129 GETTABLEKS                       R11 R2 K36 ["answerState"]
      131 GETTABLEKS                       R11 R11 K37 ["onExitReview"]
      133 SETTABLEKS                       R11 R10 K33 ["onEdit"]
      135 GETTABLEKS                       R11 R0 K34 ["onDismiss"]
      137 SETTABLEKS                       R11 R10 K34 ["onDismiss"]
      139 GETTABLEKS                       R11 R0 K12 ["LayoutOrder"]
      141 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
      143 CALL                             R8 2 -1
      144 RETURN                           R8 -1
      145 GETTABLEKS                       R8 R2 K38 ["currentQuestion"]
      147 JUMPIF                           R8 ; [+2]
      148 LOADNIL                          R9
      149 RETURN                           R9 1
      150 NEWTABLE                         R9 0 0
      152 GETTABLEKS                       R10 R2 K39 ["optionCount"]
      154 GETTABLEKS                       R11 R2 K40 ["currentSelection"]
      156 GETTABLEKS                       R12 R2 K41 ["currentCustomText"]
      158 GETTABLEKS                       R13 R2 K42 ["hasAnyAnswer"]
      160 GETTABLEKS                       R14 R8 K43 ["options"]
      162 JUMPIFNOT                        R14 ; [+45]
      163 GETTABLEKS                       R14 R8 K43 ["options"]
      165 LOADNIL                          R15
      166 LOADNIL                          R16
      167 FORGPREP                         R14
      168 LOADK                            R20 K44 ["Option_%*"]
      169 MOVE                             R22 R17
      170 NAMECALL                         R20 R20 K45 ["format"]
      172 CALL                             R20 2 1
      173 MOVE                             R19 R20
      174 GETUPVAL                         R20 6
      175 GETUPVAL                         R21 12
      176 DUPTABLE                         R22 K51 [{"index", "optionText", "clarificationText", "isSelected", "hasAnyAnswer", "onSelect", "LayoutOrder"}]
      177 SETTABLEKS                       R17 R22 K46 ["index"]
      179 GETTABLEKS                       R23 R18 K47 ["optionText"]
      181 SETTABLEKS                       R23 R22 K47 ["optionText"]
      183 GETTABLEKS                       R23 R18 K48 ["clarificationText"]
      185 SETTABLEKS                       R23 R22 K48 ["clarificationText"]
      187 JUMPIFEQ                         R11 R17 ; [+2]
      189 LOADB                            R23 0 +1
      190 LOADB                            R23 1
      191 SETTABLEKS                       R23 R22 K49 ["isSelected"]
      193 SETTABLEKS                       R13 R22 K42 ["hasAnyAnswer"]
      195 NEWCLOSURE                       R23 P1
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R17
      198 SETTABLEKS                       R23 R22 K50 ["onSelect"]
      200 MOVE                             R23 R7
      201 CALL                             R23 0 1
      202 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      204 CALL                             R20 2 1
      205 SETTABLE                         R20 R9 R19
      206 FORGLOOP                         R14 2 ; [-39]
      208 GETUPVAL                         R14 6
      209 GETUPVAL                         R15 13
      210 DUPTABLE                         R16 K59 [{"index", "customText", "hasOptionSelected", "onTextChanged", "onFocused", "onReturnPressed", "onSkip", "onDismiss", "textBoxRef", "LayoutOrder"}]
      211 LOADN                            R18 0
      212 JUMPIFNOTLT                      R18 R10 ; [+3]
      214 ADDK                             R17 R10 K60 [1]
      215 JUMP                             ; [+1]
      216 LOADNIL                          R17
      217 SETTABLEKS                       R17 R16 K46 ["index"]
      219 ORK                              R17 R12 K61 [""]
      220 SETTABLEKS                       R17 R16 K52 ["customText"]
      222 JUMPIFNOTEQKNIL                  R11 ; [+2]
      224 LOADB                            R17 0 +1
      225 LOADB                            R17 1
      226 SETTABLEKS                       R17 R16 K53 ["hasOptionSelected"]
      228 NEWCLOSURE                       R17 P2
      229 CAPTURE                          VAL R2
      230 SETTABLEKS                       R17 R16 K54 ["onTextChanged"]
      232 GETTABLEKS                       R17 R2 K62 ["onCustomAnswerFocused"]
      234 SETTABLEKS                       R17 R16 K55 ["onFocused"]
      236 GETTABLEKS                       R17 R2 K63 ["onTryContinueOrSubmit"]
      238 SETTABLEKS                       R17 R16 K56 ["onReturnPressed"]
      240 GETTABLEKS                       R17 R2 K64 ["paginationState"]
      242 GETTABLEKS                       R17 R17 K65 ["onNext"]
      244 SETTABLEKS                       R17 R16 K57 ["onSkip"]
      246 GETTABLEKS                       R17 R0 K34 ["onDismiss"]
      248 SETTABLEKS                       R17 R16 K34 ["onDismiss"]
      250 GETTABLEKS                       R17 R2 K66 ["customAnswerRef"]
      252 SETTABLEKS                       R17 R16 K58 ["textBoxRef"]
      254 MOVE                             R17 R7
      255 CALL                             R17 0 1
      256 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      258 CALL                             R14 2 1
      259 SETTABLEKS                       R14 R9 K67 ["CustomAnswer"]
      261 GETUPVAL                         R14 6
      262 LOADK                            R15 K68 ["CanvasGroup"]
      263 DUPTABLE                         R16 K76 [{["BackgroundTransparency"] = 1, ["GroupTransparency"] = 0, ["Size"], ["AutomaticSize"], ["LayoutOrder"], ["ClipsDescendants"] = True}]
      264 GETIMPORT                        R17 K79 [UDim2.fromScale]
      266 LOADN                            R18 1
      267 LOADN                            R19 0
      268 CALL                             R17 2 1
      269 SETTABLEKS                       R17 R16 K72 ["Size"]
      271 GETIMPORT                        R17 K82 [Enum.AutomaticSize.Y]
      273 SETTABLEKS                       R17 R16 K73 ["AutomaticSize"]
      275 GETTABLEKS                       R17 R0 K12 ["LayoutOrder"]
      277 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      279 DUPTABLE                         R17 K86 [{"Corner", "Stroke", "Container"}]
      280 GETUPVAL                         R18 6
      281 LOADK                            R19 K87 ["UICorner"]
      282 DUPTABLE                         R20 K89 [{"CornerRadius"}]
      283 GETUPVAL                         R21 14
      284 SETTABLEKS                       R21 R20 K88 ["CornerRadius"]
      286 CALL                             R18 2 1
      287 SETTABLEKS                       R18 R17 K83 ["Corner"]
      289 GETUPVAL                         R18 6
      290 LOADK                            R19 K90 ["UIStroke"]
      291 DUPTABLE                         R20 K94 [{"Color", "Transparency", "Thickness"}]
      292 GETTABLEKS                       R21 R1 K91 ["Color"]
      294 GETTABLEKS                       R21 R21 K84 ["Stroke"]
      296 GETTABLEKS                       R21 R21 K95 ["Default"]
      298 GETTABLEKS                       R21 R21 K96 ["Color3"]
      300 SETTABLEKS                       R21 R20 K91 ["Color"]
      302 GETTABLEKS                       R21 R1 K91 ["Color"]
      304 GETTABLEKS                       R21 R21 K84 ["Stroke"]
      306 GETTABLEKS                       R21 R21 K95 ["Default"]
      308 GETTABLEKS                       R21 R21 K92 ["Transparency"]
      310 SETTABLEKS                       R21 R20 K92 ["Transparency"]
      312 GETTABLEKS                       R21 R1 K84 ["Stroke"]
      314 GETTABLEKS                       R21 R21 K97 ["Standard"]
      316 SETTABLEKS                       R21 R20 K93 ["Thickness"]
      318 CALL                             R18 2 1
      319 SETTABLEKS                       R18 R17 K84 ["Stroke"]
      321 GETUPVAL                         R18 6
      322 GETUPVAL                         R19 7
      323 DUPTABLE                         R20 K99 [{["tag"] = "col gap-none size-full-0 auto-y radius-large"}]
      324 DUPTABLE                         R21 K103 [{"Header", "HeaderDivider", "Options"}]
      325 GETUPVAL                         R22 6
      326 GETUPVAL                         R23 15
      327 DUPTABLE                         R24 K105 [{"questionText", "totalQuestions", "paginationState", "onDismiss", "LayoutOrder"}]
      328 GETTABLEKS                       R25 R8 K106 ["question"]
      330 SETTABLEKS                       R25 R24 K104 ["questionText"]
      332 SETTABLEKS                       R5 R24 K4 ["totalQuestions"]
      334 GETTABLEKS                       R25 R2 K64 ["paginationState"]
      336 SETTABLEKS                       R25 R24 K64 ["paginationState"]
      338 GETTABLEKS                       R25 R0 K34 ["onDismiss"]
      340 SETTABLEKS                       R25 R24 K34 ["onDismiss"]
      342 MOVE                             R25 R7
      343 CALL                             R25 0 1
      344 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      346 CALL                             R22 2 1
      347 SETTABLEKS                       R22 R21 K100 ["Header"]
      349 GETUPVAL                         R22 6
      350 GETUPVAL                         R23 16
      351 DUPTABLE                         R24 K107 [{"LayoutOrder"}]
      352 MOVE                             R25 R7
      353 CALL                             R25 0 1
      354 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      356 CALL                             R22 2 1
      357 SETTABLEKS                       R22 R21 K101 ["HeaderDivider"]
      359 GETUPVAL                         R22 6
      360 GETUPVAL                         R23 7
      361 DUPTABLE                         R24 K109 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-x-small padding-y-medium", ["LayoutOrder"]}]
      362 MOVE                             R25 R7
      363 CALL                             R25 0 1
      364 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      366 MOVE                             R25 R9
      367 CALL                             R22 3 1
      368 SETTABLEKS                       R22 R21 K102 ["Options"]
      370 CALL                             R18 3 1
      371 SETTABLEKS                       R18 R17 K85 ["Container"]
      373 CALL                             R14 3 -1
      374 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["CompletedView"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K6 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["CustomAnswerItem"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K6 ["Parent"]
       31 GETTABLEKS                       R4 R4 K9 ["OptionItem"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K6 ["Parent"]
       40 GETTABLEKS                       R5 R5 K10 ["QuestionAnswerTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R6 K1 [script]
       47 GETTABLEKS                       R6 R6 K6 ["Parent"]
       49 GETTABLEKS                       R6 R6 K11 ["QuestionHeader"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETIMPORT                        R7 K1 [script]
       56 GETTABLEKS                       R7 R7 K6 ["Parent"]
       58 GETTABLEKS                       R7 R7 K12 ["ReviewView"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETIMPORT                        R8 K1 [script]
       65 GETTABLEKS                       R8 R8 K6 ["Parent"]
       67 GETTABLEKS                       R8 R8 K13 ["useQuestionAnswerController"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Parent"]
       74 GETTABLEKS                       R9 R9 K14 ["Foundation"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K15 ["Components"]
       81 GETTABLEKS                       R10 R10 K16 ["Contexts"]
       83 GETTABLEKS                       R10 R10 K17 ["PacketReceivedContext"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K6 ["Parent"]
       90 GETTABLEKS                       R11 R11 K18 ["React"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K6 ["Parent"]
       97 GETTABLEKS                       R12 R12 K19 ["ReactUtils"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K15 ["Components"]
      104 GETTABLEKS                       R13 R13 K20 ["ShimmerGradient"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K21 ["Resources"]
      111 GETTABLEKS                       R14 R14 K22 ["Localization"]
      113 GETTABLEKS                       R14 R14 K23 ["Translator"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K24 ["Types"]
      120 CALL                             R14 1 1
      121 GETTABLEKS                       R15 R8 K25 ["Divider"]
      123 GETTABLEKS                       R16 R8 K26 ["Text"]
      125 GETTABLEKS                       R17 R8 K27 ["View"]
      127 GETTABLEKS                       R18 R11 K28 ["createNextOrder"]
      129 GETTABLEKS                       R19 R10 K29 ["createElement"]
      131 GETIMPORT                        R20 K32 [UDim.new]
      133 LOADN                            R21 0
      134 LOADN                            R22 16
      135 CALL                             R20 2 1
      136 GETTABLEKS                       R21 R9 K33 ["useMarkUserInputRequired"]
      138 DUPCLOSURE                       R22 K34 [PROTO_3]
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R15
      156 GETTABLEKS                       R23 R10 K35 ["memo"]
      158 MOVE                             R24 R22
      159 CALL                             R23 1 -1
      160 RETURN                           R23 -1
