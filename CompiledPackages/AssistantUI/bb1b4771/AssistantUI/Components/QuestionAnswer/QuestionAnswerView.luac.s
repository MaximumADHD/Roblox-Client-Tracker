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
      166 JUMPIFNOT                        R14 ; [+45]
      167 GETTABLEKS                       R14 R8 K44 ["options"]
      169 LOADNIL                          R15
      170 LOADNIL                          R16
      171 FORGPREP                         R14
      172 LOADK                            R20 K45 ["Option_%*"]
      173 MOVE                             R22 R17
      174 NAMECALL                         R20 R20 K46 ["format"]
      176 CALL                             R20 2 1
      177 MOVE                             R19 R20
      178 GETUPVAL                         R20 6
      179 GETUPVAL                         R21 12
      180 DUPTABLE                         R22 K52 [{"index", "optionText", "clarificationText", "isSelected", "hasAnyAnswer", "onSelect", "LayoutOrder"}]
      181 SETTABLEKS                       R17 R22 K47 ["index"]
      183 GETTABLEKS                       R23 R18 K48 ["optionText"]
      185 SETTABLEKS                       R23 R22 K48 ["optionText"]
      187 GETTABLEKS                       R23 R18 K49 ["clarificationText"]
      189 SETTABLEKS                       R23 R22 K49 ["clarificationText"]
      191 JUMPIFEQ                         R11 R17 ; [+2]
      193 LOADB                            R23 0 +1
      194 LOADB                            R23 1
      195 SETTABLEKS                       R23 R22 K50 ["isSelected"]
      197 SETTABLEKS                       R13 R22 K43 ["hasAnyAnswer"]
      199 NEWCLOSURE                       R23 P1
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R17
      202 SETTABLEKS                       R23 R22 K51 ["onSelect"]
      204 MOVE                             R23 R7
      205 CALL                             R23 0 1
      206 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      208 CALL                             R20 2 1
      209 SETTABLE                         R20 R9 R19
      210 FORGLOOP                         R14 2 ; [-39]
      212 GETUPVAL                         R14 6
      213 GETUPVAL                         R15 13
      214 DUPTABLE                         R16 K60 [{"index", "customText", "hasOptionSelected", "onTextChanged", "onFocused", "onReturnPressed", "onSkip", "onDismiss", "textBoxRef", "LayoutOrder"}]
      215 LOADN                            R18 0
      216 JUMPIFNOTLT                      R18 R10 ; [+3]
      218 ADDK                             R17 R10 K61 [1]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R17
      221 SETTABLEKS                       R17 R16 K47 ["index"]
      223 ORK                              R17 R12 K62 [""]
      224 SETTABLEKS                       R17 R16 K53 ["customText"]
      226 JUMPIFNOTEQKNIL                  R11 ; [+2]
      228 LOADB                            R17 0 +1
      229 LOADB                            R17 1
      230 SETTABLEKS                       R17 R16 K54 ["hasOptionSelected"]
      232 NEWCLOSURE                       R17 P2
      233 CAPTURE                          VAL R2
      234 SETTABLEKS                       R17 R16 K55 ["onTextChanged"]
      236 GETTABLEKS                       R17 R2 K63 ["onCustomAnswerFocused"]
      238 SETTABLEKS                       R17 R16 K56 ["onFocused"]
      240 GETTABLEKS                       R17 R2 K64 ["onTryContinueOrSubmit"]
      242 SETTABLEKS                       R17 R16 K57 ["onReturnPressed"]
      244 GETTABLEKS                       R17 R2 K65 ["paginationState"]
      246 GETTABLEKS                       R17 R17 K66 ["onNext"]
      248 SETTABLEKS                       R17 R16 K58 ["onSkip"]
      250 GETTABLEKS                       R17 R0 K34 ["onDismiss"]
      252 SETTABLEKS                       R17 R16 K34 ["onDismiss"]
      254 GETTABLEKS                       R17 R2 K67 ["customAnswerRef"]
      256 SETTABLEKS                       R17 R16 K59 ["textBoxRef"]
      258 MOVE                             R17 R7
      259 CALL                             R17 0 1
      260 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      262 CALL                             R14 2 1
      263 SETTABLEKS                       R14 R9 K68 ["CustomAnswer"]
      265 GETUPVAL                         R14 6
      266 LOADK                            R15 K69 ["CanvasGroup"]
      267 DUPTABLE                         R16 K77 [{["BackgroundTransparency"] = 1, ["GroupTransparency"] = 0, ["Size"], ["AutomaticSize"], ["LayoutOrder"], ["ClipsDescendants"] = True}]
      268 GETIMPORT                        R17 K80 [UDim2.fromScale]
      270 LOADN                            R18 1
      271 LOADN                            R19 0
      272 CALL                             R17 2 1
      273 SETTABLEKS                       R17 R16 K73 ["Size"]
      275 GETIMPORT                        R17 K83 [Enum.AutomaticSize.Y]
      277 SETTABLEKS                       R17 R16 K74 ["AutomaticSize"]
      279 GETTABLEKS                       R17 R0 K12 ["LayoutOrder"]
      281 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      283 DUPTABLE                         R17 K87 [{"Corner", "Stroke", "Container"}]
      284 GETUPVAL                         R18 6
      285 LOADK                            R19 K88 ["UICorner"]
      286 DUPTABLE                         R20 K90 [{"CornerRadius"}]
      287 GETUPVAL                         R21 14
      288 SETTABLEKS                       R21 R20 K89 ["CornerRadius"]
      290 CALL                             R18 2 1
      291 SETTABLEKS                       R18 R17 K84 ["Corner"]
      293 GETUPVAL                         R18 6
      294 LOADK                            R19 K91 ["UIStroke"]
      295 DUPTABLE                         R20 K95 [{"Color", "Transparency", "Thickness"}]
      296 GETTABLEKS                       R21 R1 K92 ["Color"]
      298 GETTABLEKS                       R21 R21 K85 ["Stroke"]
      300 GETTABLEKS                       R21 R21 K96 ["Default"]
      302 GETTABLEKS                       R21 R21 K97 ["Color3"]
      304 SETTABLEKS                       R21 R20 K92 ["Color"]
      306 GETTABLEKS                       R21 R1 K92 ["Color"]
      308 GETTABLEKS                       R21 R21 K85 ["Stroke"]
      310 GETTABLEKS                       R21 R21 K96 ["Default"]
      312 GETTABLEKS                       R21 R21 K93 ["Transparency"]
      314 SETTABLEKS                       R21 R20 K93 ["Transparency"]
      316 GETTABLEKS                       R21 R1 K85 ["Stroke"]
      318 GETTABLEKS                       R21 R21 K98 ["Standard"]
      320 SETTABLEKS                       R21 R20 K94 ["Thickness"]
      322 CALL                             R18 2 1
      323 SETTABLEKS                       R18 R17 K85 ["Stroke"]
      325 GETUPVAL                         R18 6
      326 GETUPVAL                         R19 7
      327 DUPTABLE                         R20 K100 [{["tag"] = "col gap-none size-full-0 auto-y radius-large"}]
      328 DUPTABLE                         R21 K104 [{"Header", "HeaderDivider", "Options"}]
      329 GETUPVAL                         R22 6
      330 GETUPVAL                         R23 15
      331 DUPTABLE                         R24 K106 [{"questionText", "totalQuestions", "paginationState", "onDismiss", "LayoutOrder"}]
      332 GETTABLEKS                       R25 R8 K107 ["question"]
      334 SETTABLEKS                       R25 R24 K105 ["questionText"]
      336 SETTABLEKS                       R5 R24 K4 ["totalQuestions"]
      338 GETTABLEKS                       R25 R2 K65 ["paginationState"]
      340 SETTABLEKS                       R25 R24 K65 ["paginationState"]
      342 GETTABLEKS                       R25 R0 K34 ["onDismiss"]
      344 SETTABLEKS                       R25 R24 K34 ["onDismiss"]
      346 MOVE                             R25 R7
      347 CALL                             R25 0 1
      348 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      350 CALL                             R22 2 1
      351 SETTABLEKS                       R22 R21 K101 ["Header"]
      353 GETUPVAL                         R22 6
      354 GETUPVAL                         R23 16
      355 DUPTABLE                         R24 K108 [{"LayoutOrder"}]
      356 MOVE                             R25 R7
      357 CALL                             R25 0 1
      358 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      360 CALL                             R22 2 1
      361 SETTABLEKS                       R22 R21 K102 ["HeaderDivider"]
      363 GETUPVAL                         R22 6
      364 GETUPVAL                         R23 7
      365 DUPTABLE                         R24 K110 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-x-small padding-y-medium", ["LayoutOrder"]}]
      366 MOVE                             R25 R7
      367 CALL                             R25 0 1
      368 SETTABLEKS                       R25 R24 K12 ["LayoutOrder"]
      370 MOVE                             R25 R9
      371 CALL                             R22 3 1
      372 SETTABLEKS                       R22 R21 K103 ["Options"]
      374 CALL                             R18 3 1
      375 SETTABLEKS                       R18 R17 K86 ["Container"]
      377 CALL                             R14 3 -1
      378 RETURN                           R14 -1

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
