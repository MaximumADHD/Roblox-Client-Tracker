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
      112 JUMPIFNOTEQKS                    R8 K31 ["review"] ; [+36]
      114 GETUPVAL                         R8 6
      115 GETUPVAL                         R9 11
      116 DUPTABLE                         R10 K36 [{"answeredQuestions", "onSubmit", "onEdit", "onDismiss", "isSubmitting", "LayoutOrder"}]
      117 GETTABLEKS                       R11 R2 K37 ["answerState"]
      119 GETTABLEKS                       R11 R11 K25 ["answeredQuestions"]
      121 SETTABLEKS                       R11 R10 K25 ["answeredQuestions"]
      123 GETTABLEKS                       R11 R2 K37 ["answerState"]
      125 GETTABLEKS                       R11 R11 K32 ["onSubmit"]
      127 SETTABLEKS                       R11 R10 K32 ["onSubmit"]
      129 GETTABLEKS                       R11 R2 K37 ["answerState"]
      131 GETTABLEKS                       R11 R11 K38 ["onExitReview"]
      133 SETTABLEKS                       R11 R10 K33 ["onEdit"]
      135 GETTABLEKS                       R11 R0 K34 ["onDismiss"]
      137 SETTABLEKS                       R11 R10 K34 ["onDismiss"]
      139 GETTABLEKS                       R11 R0 K35 ["isSubmitting"]
      141 SETTABLEKS                       R11 R10 K35 ["isSubmitting"]
      143 GETTABLEKS                       R11 R0 K12 ["LayoutOrder"]
      145 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
      147 CALL                             R8 2 -1
      148 RETURN                           R8 -1
      149 GETTABLEKS                       R8 R2 K39 ["currentQuestion"]
      151 JUMPIF                           R8 ; [+2]
      152 LOADNIL                          R9
      153 RETURN                           R9 1
      154 NEWTABLE                         R9 0 0
      156 GETTABLEKS                       R10 R2 K40 ["optionCount"]
      158 GETTABLEKS                       R11 R2 K41 ["currentSelection"]
      160 GETTABLEKS                       R12 R2 K42 ["currentCustomText"]
      162 GETTABLEKS                       R13 R2 K43 ["hasAnyAnswer"]
      164 GETTABLEKS                       R14 R8 K44 ["options"]
      166 JUMPIFNOT                        R14 ; [+44]
      167 GETTABLEKS                       R14 R8 K44 ["options"]
      169 LOADNIL                          R15
      170 LOADNIL                          R16
      171 FORGPREP                         R14
      172 LOADK                            R19 K45 ["Option_%*"]
      173 MOVE                             R21 R17
      174 NAMECALL                         R19 R19 K46 ["format"]
      176 CALL                             R19 2 1
      177 GETUPVAL                         R20 6
      178 GETUPVAL                         R21 12
      179 DUPTABLE                         R22 K52 [{"index", "optionText", "clarificationText", "isSelected", "hasAnyAnswer", "onSelect", "LayoutOrder"}]
      180 SETTABLEKS                       R17 R22 K47 ["index"]
      182 GETTABLEKS                       R23 R18 K48 ["optionText"]
      184 SETTABLEKS                       R23 R22 K48 ["optionText"]
      186 GETTABLEKS                       R23 R18 K49 ["clarificationText"]
      188 SETTABLEKS                       R23 R22 K49 ["clarificationText"]
      190 JUMPIFEQ                         R11 R17 ; [+2]
      192 LOADB                            R23 0 +1
      193 LOADB                            R23 1
      194 SETTABLEKS                       R23 R22 K50 ["isSelected"]
      196 SETTABLEKS                       R13 R22 K43 ["hasAnyAnswer"]
      198 NEWCLOSURE                       R23 P1
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R17
      201 SETTABLEKS                       R23 R22 K51 ["onSelect"]
      203 MOVE                             R23 R7
      204 CALL                             R23 0 1
      205 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      207 CALL                             R20 2 1
      208 SETTABLE                         R20 R9 R19
      209 FORGLOOP                         R14 2 ; [-38]
      211 GETUPVAL                         R14 6
      212 GETUPVAL                         R15 13
      213 DUPTABLE                         R16 K60 [{"index", "customText", "hasOptionSelected", "onTextChanged", "onFocused", "onReturnPressed", "onSkip", "onDismiss", "textBoxRef", "LayoutOrder"}]
      214 LOADN                            R18 0
      215 JUMPIFNOTLT                      R18 R10 ; [+3]
      217 ADDK                             R17 R10 K61 [1]
      218 JUMP                             ; [+1]
      219 LOADNIL                          R17
      220 SETTABLEKS                       R17 R16 K47 ["index"]
      222 ORK                              R17 R12 K62 [""]
      223 SETTABLEKS                       R17 R16 K53 ["customText"]
      225 JUMPIFNOTEQKNIL                  R11 ; [+2]
      227 LOADB                            R17 0 +1
      228 LOADB                            R17 1
      229 SETTABLEKS                       R17 R16 K54 ["hasOptionSelected"]
      231 NEWCLOSURE                       R17 P2
      232 CAPTURE                          VAL R2
      233 SETTABLEKS                       R17 R16 K55 ["onTextChanged"]
      235 GETTABLEKS                       R17 R2 K63 ["onCustomAnswerFocused"]
      237 SETTABLEKS                       R17 R16 K56 ["onFocused"]
      239 GETTABLEKS                       R17 R2 K64 ["onTryContinueOrSubmit"]
      241 SETTABLEKS                       R17 R16 K57 ["onReturnPressed"]
      243 GETTABLEKS                       R17 R2 K65 ["paginationState"]
      245 GETTABLEKS                       R17 R17 K66 ["onNext"]
      247 SETTABLEKS                       R17 R16 K58 ["onSkip"]
      249 GETTABLEKS                       R17 R0 K34 ["onDismiss"]
      251 SETTABLEKS                       R17 R16 K34 ["onDismiss"]
      253 GETTABLEKS                       R17 R2 K67 ["customAnswerRef"]
      255 SETTABLEKS                       R17 R16 K59 ["textBoxRef"]
      257 MOVE                             R17 R7
      258 CALL                             R17 0 1
      259 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      261 CALL                             R14 2 1
      262 SETTABLEKS                       R14 R9 K68 ["CustomAnswer"]
      264 GETUPVAL                         R14 6
      265 LOADK                            R15 K69 ["CanvasGroup"]
      266 DUPTABLE                         R16 K77 [{["BackgroundTransparency"] = 1, ["GroupTransparency"] = 0, ["Size"], ["AutomaticSize"], ["LayoutOrder"], ["ClipsDescendants"] = True}]
      267 GETIMPORT                        R17 K80 [UDim2.fromScale]
      269 LOADN                            R18 1
      270 LOADN                            R19 0
      271 CALL                             R17 2 1
      272 SETTABLEKS                       R17 R16 K73 ["Size"]
      274 GETIMPORT                        R17 K83 [Enum.AutomaticSize.Y]
      276 SETTABLEKS                       R17 R16 K74 ["AutomaticSize"]
      278 GETTABLEKS                       R17 R0 K12 ["LayoutOrder"]
      280 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      282 DUPTABLE                         R17 K87 [{"Corner", "Stroke", "Container"}]
      283 GETUPVAL                         R18 6
      284 LOADK                            R19 K88 ["UICorner"]
      285 DUPTABLE                         R20 K90 [{"CornerRadius"}]
      286 GETUPVAL                         R21 14
      287 SETTABLEKS                       R21 R20 K89 ["CornerRadius"]
      289 CALL                             R18 2 1
      290 SETTABLEKS                       R18 R17 K84 ["Corner"]
      292 GETUPVAL                         R18 6
      293 LOADK                            R19 K91 ["UIStroke"]
      294 DUPTABLE                         R20 K95 [{"Color", "Transparency", "Thickness"}]
      295 GETTABLEKS                       R21 R1 K92 ["Color"]
      297 GETTABLEKS                       R21 R21 K85 ["Stroke"]
      299 GETTABLEKS                       R21 R21 K96 ["Default"]
      301 GETTABLEKS                       R21 R21 K97 ["Color3"]
      303 SETTABLEKS                       R21 R20 K92 ["Color"]
      305 GETTABLEKS                       R21 R1 K92 ["Color"]
      307 GETTABLEKS                       R21 R21 K85 ["Stroke"]
      309 GETTABLEKS                       R21 R21 K96 ["Default"]
      311 GETTABLEKS                       R21 R21 K93 ["Transparency"]
      313 SETTABLEKS                       R21 R20 K93 ["Transparency"]
      315 GETTABLEKS                       R21 R1 K85 ["Stroke"]
      317 GETTABLEKS                       R21 R21 K98 ["Standard"]
      319 SETTABLEKS                       R21 R20 K94 ["Thickness"]
      321 CALL                             R18 2 1
      322 SETTABLEKS                       R18 R17 K85 ["Stroke"]
      324 GETUPVAL                         R18 6
      325 GETUPVAL                         R19 7
      326 DUPTABLE                         R20 K100 [{["tag"] = "col gap-none size-full-0 auto-y radius-large"}]
      327 DUPTABLE                         R21 K104 [{"Header", "HeaderDivider", "Options"}]
      328 GETUPVAL                         R22 6
      329 GETUPVAL                         R23 15
      330 DUPTABLE                         R24 K106 [{"questionText", "totalQuestions", "paginationState", "onDismiss", "LayoutOrder"}]
      331 GETTABLEKS                       R25 R8 K107 ["question"]
      333 SETTABLEKS                       R25 R24 K105 ["questionText"]
      335 SETTABLEKS                       R5 R24 K4 ["totalQuestions"]
      337 GETTABLEKS                       R25 R2 K65 ["paginationState"]
      339 SETTABLEKS                       R25 R24 K65 ["paginationState"]
      341 GETTABLEKS                       R25 R0 K34 ["onDismiss"]
      343 SETTABLEKS                       R25 R24 K34 ["onDismiss"]
      345 MOVE                             R25 R7
      346 CALL                             R25 0 1
      347 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      349 CALL                             R22 2 1
      350 SETTABLEKS                       R22 R21 K101 ["Header"]
      352 GETUPVAL                         R22 6
      353 GETUPVAL                         R23 16
      354 DUPTABLE                         R24 K108 [{"LayoutOrder"}]
      355 MOVE                             R25 R7
      356 CALL                             R25 0 1
      357 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      359 CALL                             R22 2 1
      360 SETTABLEKS                       R22 R21 K102 ["HeaderDivider"]
      362 GETUPVAL                         R22 6
      363 GETUPVAL                         R23 7
      364 DUPTABLE                         R24 K110 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-x-small padding-y-medium", ["LayoutOrder"]}]
      365 MOVE                             R25 R7
      366 CALL                             R25 0 1
      367 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      369 MOVE                             R25 R9
      370 CALL                             R22 3 1
      371 SETTABLEKS                       R22 R21 K103 ["Options"]
      373 CALL                             R18 3 1
      374 SETTABLEKS                       R18 R17 K86 ["Container"]
      376 CALL                             R14 3 -1
      377 RETURN                           R14 -1

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
