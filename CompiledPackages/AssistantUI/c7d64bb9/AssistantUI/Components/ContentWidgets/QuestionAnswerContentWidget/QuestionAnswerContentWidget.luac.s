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
       37 JUMPIFNOTEQKS                    R8 K9 ["preparing"] ; [+37]
       39 GETUPVAL                         R8 6
       40 GETUPVAL                         R9 7
       41 DUPTABLE                         R10 K12 [{"tag", "LayoutOrder"}]
       42 LOADK                            R11 K13 ["col size-full-0 auto-y gap-small"]
       43 SETTABLEKS                       R11 R10 K10 ["tag"]
       45 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
       47 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       49 DUPTABLE                         R11 K15 [{"Loading"}]
       50 GETUPVAL                         R12 6
       51 GETUPVAL                         R13 8
       52 DUPTABLE                         R14 K17 [{"tag", "Text", "LayoutOrder"}]
       53 LOADK                            R15 K18 ["auto-xy text-label-small content-muted"]
       54 SETTABLEKS                       R15 R14 K10 ["tag"]
       56 GETTABLEKS                       R15 R6 K19 ["PreparingQuestions"]
       58 SETTABLEKS                       R15 R14 K16 ["Text"]
       60 MOVE                             R15 R7
       61 CALL                             R15 0 1
       62 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
       64 DUPTABLE                         R15 K21 [{"Shimmer"}]
       65 GETUPVAL                         R16 6
       66 GETUPVAL                         R17 9
       67 CALL                             R16 1 1
       68 SETTABLEKS                       R16 R15 K20 ["Shimmer"]
       70 CALL                             R12 3 1
       71 SETTABLEKS                       R12 R11 K14 ["Loading"]
       73 CALL                             R8 3 -1
       74 RETURN                           R8 -1
       75 GETTABLEKS                       R8 R2 K8 ["screen"]
       77 JUMPIFNOTEQKS                    R8 K22 ["completed"] ; [+38]
       79 GETUPVAL                         R8 6
       80 GETUPVAL                         R9 10
       81 DUPTABLE                         R10 K29 [{"isError", "dismissed", "answeredQuestions", "expanded", "contentId", "editThisContent", "LayoutOrder"}]
       82 JUMPIFEQKS                       R3 K30 ["error"] ; [+2]
       84 LOADB                            R11 0 +1
       85 LOADB                            R11 1
       86 SETTABLEKS                       R11 R10 K23 ["isError"]
       88 GETTABLEKS                       R11 R0 K24 ["dismissed"]
       90 SETTABLEKS                       R11 R10 K24 ["dismissed"]
       92 GETTABLEKS                       R11 R0 K25 ["answeredQuestions"]
       94 SETTABLEKS                       R11 R10 K25 ["answeredQuestions"]
       96 GETTABLEKS                       R13 R0 K26 ["expanded"]
       98 NOT                              R12 R13
       99 NOT                              R11 R12
      100 SETTABLEKS                       R11 R10 K26 ["expanded"]
      102 GETTABLEKS                       R11 R0 K27 ["contentId"]
      104 SETTABLEKS                       R11 R10 K27 ["contentId"]
      106 GETTABLEKS                       R11 R0 K28 ["editThisContent"]
      108 SETTABLEKS                       R11 R10 K28 ["editThisContent"]
      110 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
      112 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      114 CALL                             R8 2 -1
      115 RETURN                           R8 -1
      116 GETTABLEKS                       R8 R2 K8 ["screen"]
      118 JUMPIFNOTEQKS                    R8 K31 ["review"] ; [+32]
      120 GETUPVAL                         R8 6
      121 GETUPVAL                         R9 11
      122 DUPTABLE                         R10 K35 [{"answeredQuestions", "onSubmit", "onEdit", "onDismiss", "LayoutOrder"}]
      123 GETTABLEKS                       R11 R2 K36 ["answerState"]
      125 GETTABLEKS                       R11 R11 K25 ["answeredQuestions"]
      127 SETTABLEKS                       R11 R10 K25 ["answeredQuestions"]
      129 GETTABLEKS                       R11 R2 K36 ["answerState"]
      131 GETTABLEKS                       R11 R11 K32 ["onSubmit"]
      133 SETTABLEKS                       R11 R10 K32 ["onSubmit"]
      135 GETTABLEKS                       R11 R2 K36 ["answerState"]
      137 GETTABLEKS                       R11 R11 K37 ["onExitReview"]
      139 SETTABLEKS                       R11 R10 K33 ["onEdit"]
      141 GETTABLEKS                       R11 R0 K34 ["onDismiss"]
      143 SETTABLEKS                       R11 R10 K34 ["onDismiss"]
      145 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
      147 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      149 CALL                             R8 2 -1
      150 RETURN                           R8 -1
      151 GETTABLEKS                       R8 R2 K38 ["currentQuestion"]
      153 JUMPIF                           R8 ; [+2]
      154 LOADNIL                          R9
      155 RETURN                           R9 1
      156 NEWTABLE                         R9 0 0
      158 GETTABLEKS                       R10 R2 K39 ["optionCount"]
      160 GETTABLEKS                       R11 R2 K40 ["currentSelection"]
      162 GETTABLEKS                       R12 R2 K41 ["currentCustomText"]
      164 GETTABLEKS                       R13 R2 K42 ["hasAnyAnswer"]
      166 GETTABLEKS                       R14 R8 K43 ["options"]
      168 JUMPIFNOT                        R14 ; [+45]
      169 GETTABLEKS                       R14 R8 K43 ["options"]
      171 LOADNIL                          R15
      172 LOADNIL                          R16
      173 FORGPREP                         R14
      174 LOADK                            R20 K44 ["Option_%*"]
      175 MOVE                             R22 R17
      176 NAMECALL                         R20 R20 K45 ["format"]
      178 CALL                             R20 2 1
      179 MOVE                             R19 R20
      180 GETUPVAL                         R20 6
      181 GETUPVAL                         R21 12
      182 DUPTABLE                         R22 K51 [{"index", "optionText", "clarificationText", "isSelected", "hasAnyAnswer", "onSelect", "LayoutOrder"}]
      183 SETTABLEKS                       R17 R22 K46 ["index"]
      185 GETTABLEKS                       R23 R18 K47 ["optionText"]
      187 SETTABLEKS                       R23 R22 K47 ["optionText"]
      189 GETTABLEKS                       R23 R18 K48 ["clarificationText"]
      191 SETTABLEKS                       R23 R22 K48 ["clarificationText"]
      193 JUMPIFEQ                         R11 R17 ; [+2]
      195 LOADB                            R23 0 +1
      196 LOADB                            R23 1
      197 SETTABLEKS                       R23 R22 K49 ["isSelected"]
      199 SETTABLEKS                       R13 R22 K42 ["hasAnyAnswer"]
      201 NEWCLOSURE                       R23 P1
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R17
      204 SETTABLEKS                       R23 R22 K50 ["onSelect"]
      206 MOVE                             R23 R7
      207 CALL                             R23 0 1
      208 SETTABLEKS                       R23 R22 K11 ["LayoutOrder"]
      210 CALL                             R20 2 1
      211 SETTABLE                         R20 R9 R19
      212 FORGLOOP                         R14 2 ; [-39]
      214 GETUPVAL                         R14 6
      215 GETUPVAL                         R15 13
      216 DUPTABLE                         R16 K59 [{"index", "customText", "hasOptionSelected", "onTextChanged", "onFocused", "onReturnPressed", "onSkip", "onDismiss", "textBoxRef", "LayoutOrder"}]
      217 LOADN                            R18 0
      218 JUMPIFNOTLT                      R18 R10 ; [+3]
      220 ADDK                             R17 R10 K60 [1]
      221 JUMP                             ; [+1]
      222 LOADNIL                          R17
      223 SETTABLEKS                       R17 R16 K46 ["index"]
      225 ORK                              R17 R12 K61 [""]
      226 SETTABLEKS                       R17 R16 K52 ["customText"]
      228 JUMPIFNOTEQKNIL                  R11 ; [+2]
      230 LOADB                            R17 0 +1
      231 LOADB                            R17 1
      232 SETTABLEKS                       R17 R16 K53 ["hasOptionSelected"]
      234 NEWCLOSURE                       R17 P2
      235 CAPTURE                          VAL R2
      236 SETTABLEKS                       R17 R16 K54 ["onTextChanged"]
      238 GETTABLEKS                       R17 R2 K62 ["onCustomAnswerFocused"]
      240 SETTABLEKS                       R17 R16 K55 ["onFocused"]
      242 GETTABLEKS                       R17 R2 K63 ["onTryContinueOrSubmit"]
      244 SETTABLEKS                       R17 R16 K56 ["onReturnPressed"]
      246 GETTABLEKS                       R17 R2 K64 ["paginationState"]
      248 GETTABLEKS                       R17 R17 K65 ["onNext"]
      250 SETTABLEKS                       R17 R16 K57 ["onSkip"]
      252 GETTABLEKS                       R17 R0 K34 ["onDismiss"]
      254 SETTABLEKS                       R17 R16 K34 ["onDismiss"]
      256 GETTABLEKS                       R17 R2 K66 ["customAnswerRef"]
      258 SETTABLEKS                       R17 R16 K58 ["textBoxRef"]
      260 MOVE                             R17 R7
      261 CALL                             R17 0 1
      262 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      264 CALL                             R14 2 1
      265 SETTABLEKS                       R14 R9 K67 ["CustomAnswer"]
      267 GETUPVAL                         R14 6
      268 LOADK                            R15 K68 ["CanvasGroup"]
      269 DUPTABLE                         R16 K74 [{"BackgroundTransparency", "GroupTransparency", "Size", "AutomaticSize", "LayoutOrder", "ClipsDescendants"}]
      270 LOADN                            R17 1
      271 SETTABLEKS                       R17 R16 K69 ["BackgroundTransparency"]
      273 LOADN                            R17 0
      274 SETTABLEKS                       R17 R16 K70 ["GroupTransparency"]
      276 GETIMPORT                        R17 K77 [UDim2.fromScale]
      278 LOADN                            R18 1
      279 LOADN                            R19 0
      280 CALL                             R17 2 1
      281 SETTABLEKS                       R17 R16 K71 ["Size"]
      283 GETIMPORT                        R17 K80 [Enum.AutomaticSize.Y]
      285 SETTABLEKS                       R17 R16 K72 ["AutomaticSize"]
      287 GETTABLEKS                       R17 R0 K11 ["LayoutOrder"]
      289 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      291 LOADB                            R17 1
      292 SETTABLEKS                       R17 R16 K73 ["ClipsDescendants"]
      294 DUPTABLE                         R17 K84 [{"Corner", "Stroke", "Container"}]
      295 GETUPVAL                         R18 6
      296 LOADK                            R19 K85 ["UICorner"]
      297 DUPTABLE                         R20 K87 [{"CornerRadius"}]
      298 GETUPVAL                         R21 14
      299 SETTABLEKS                       R21 R20 K86 ["CornerRadius"]
      301 CALL                             R18 2 1
      302 SETTABLEKS                       R18 R17 K81 ["Corner"]
      304 GETUPVAL                         R18 6
      305 LOADK                            R19 K88 ["UIStroke"]
      306 DUPTABLE                         R20 K92 [{"Color", "Transparency", "Thickness"}]
      307 GETTABLEKS                       R21 R1 K89 ["Color"]
      309 GETTABLEKS                       R21 R21 K82 ["Stroke"]
      311 GETTABLEKS                       R21 R21 K93 ["Default"]
      313 GETTABLEKS                       R21 R21 K94 ["Color3"]
      315 SETTABLEKS                       R21 R20 K89 ["Color"]
      317 GETTABLEKS                       R21 R1 K89 ["Color"]
      319 GETTABLEKS                       R21 R21 K82 ["Stroke"]
      321 GETTABLEKS                       R21 R21 K93 ["Default"]
      323 GETTABLEKS                       R21 R21 K90 ["Transparency"]
      325 SETTABLEKS                       R21 R20 K90 ["Transparency"]
      327 GETTABLEKS                       R21 R1 K82 ["Stroke"]
      329 GETTABLEKS                       R21 R21 K95 ["Standard"]
      331 SETTABLEKS                       R21 R20 K91 ["Thickness"]
      333 CALL                             R18 2 1
      334 SETTABLEKS                       R18 R17 K82 ["Stroke"]
      336 GETUPVAL                         R18 6
      337 GETUPVAL                         R19 7
      338 DUPTABLE                         R20 K96 [{"tag"}]
      339 LOADK                            R21 K97 ["col size-full-0 auto-y gap-none radius-large"]
      340 SETTABLEKS                       R21 R20 K10 ["tag"]
      342 DUPTABLE                         R21 K101 [{"Header", "HeaderDivider", "Options"}]
      343 GETUPVAL                         R22 6
      344 GETUPVAL                         R23 15
      345 DUPTABLE                         R24 K103 [{"questionText", "totalQuestions", "paginationState", "onDismiss", "LayoutOrder"}]
      346 GETTABLEKS                       R25 R8 K104 ["question"]
      348 SETTABLEKS                       R25 R24 K102 ["questionText"]
      350 SETTABLEKS                       R5 R24 K4 ["totalQuestions"]
      352 GETTABLEKS                       R25 R2 K64 ["paginationState"]
      354 SETTABLEKS                       R25 R24 K64 ["paginationState"]
      356 GETTABLEKS                       R25 R0 K34 ["onDismiss"]
      358 SETTABLEKS                       R25 R24 K34 ["onDismiss"]
      360 MOVE                             R25 R7
      361 CALL                             R25 0 1
      362 SETTABLEKS                       R25 R24 K11 ["LayoutOrder"]
      364 CALL                             R22 2 1
      365 SETTABLEKS                       R22 R21 K98 ["Header"]
      367 GETUPVAL                         R22 6
      368 GETUPVAL                         R23 16
      369 DUPTABLE                         R24 K105 [{"LayoutOrder"}]
      370 MOVE                             R25 R7
      371 CALL                             R25 0 1
      372 SETTABLEKS                       R25 R24 K11 ["LayoutOrder"]
      374 CALL                             R22 2 1
      375 SETTABLEKS                       R22 R21 K99 ["HeaderDivider"]
      377 GETUPVAL                         R22 6
      378 GETUPVAL                         R23 7
      379 DUPTABLE                         R24 K12 [{"tag", "LayoutOrder"}]
      380 LOADK                            R25 K106 ["col size-full-0 auto-y gap-xsmall padding-x-small padding-y-medium"]
      381 SETTABLEKS                       R25 R24 K10 ["tag"]
      383 MOVE                             R25 R7
      384 CALL                             R25 0 1
      385 SETTABLEKS                       R25 R24 K11 ["LayoutOrder"]
      387 MOVE                             R25 R9
      388 CALL                             R22 3 1
      389 SETTABLEKS                       R22 R21 K100 ["Options"]
      391 CALL                             R18 3 1
      392 SETTABLEKS                       R18 R17 K83 ["Container"]
      394 CALL                             R14 3 -1
      395 RETURN                           R14 -1

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
