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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSelectOption"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onCustomTextChanged"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onCustomTextFocused"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["status"]
        2 GETTABLEKS                       R2 R0 K1 ["questions"]
        4 JUMPIFEQKS                       R1 K2 ["awaiting_answers"] ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 JUMPIFNOT                        R2 ; [+2]
        9 LENGTH                           R4 R2
       10 JUMP                             ; [+1]
       11 LOADN                            R4 0
       12 GETUPVAL                         R5 0
       13 MOVE                             R6 R3
       14 CALL                             R5 1 0
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K3 ["useMemo"]
       18 DUPCLOSURE                       R6 K4 [PROTO_0]
       19 CAPTURE                          UPVAL U2
       20 NEWTABLE                         R7 0 1
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R8 R9 K5 ["locale"]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 3
       29 MOVE                             R7 R4
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R7 R6 K6 ["safeCurrentPage"]
       33 MOVE                             R8 R2
       34 JUMPIFNOT                        R8 ; [+1]
       35 GETTABLE                         R8 R2 R7
       36 GETUPVAL                         R9 4
       37 DUPTABLE                         R10 K10 [{"questions", "totalQuestions", "paginationState", "onSubmitAnswers"}]
       38 SETTABLEKS                       R2 R10 K1 ["questions"]
       40 SETTABLEKS                       R4 R10 K7 ["totalQuestions"]
       42 SETTABLEKS                       R6 R10 K8 ["paginationState"]
       44 GETTABLEKS                       R11 R0 K9 ["onSubmitAnswers"]
       46 SETTABLEKS                       R11 R10 K9 ["onSubmitAnswers"]
       48 CALL                             R9 1 1
       49 GETUPVAL                         R10 5
       50 DUPTABLE                         R11 K13 [{"status", "currentQuestion", "totalQuestions", "answerState", "paginationState"}]
       51 SETTABLEKS                       R1 R11 K0 ["status"]
       53 SETTABLEKS                       R8 R11 K11 ["currentQuestion"]
       55 SETTABLEKS                       R4 R11 K7 ["totalQuestions"]
       57 SETTABLEKS                       R9 R11 K12 ["answerState"]
       59 SETTABLEKS                       R6 R11 K8 ["paginationState"]
       61 CALL                             R10 1 2
       62 GETUPVAL                         R12 6
       63 CALL                             R12 0 1
       64 JUMPIFNOTEQKS                    R1 K14 ["preparing"] ; [+37]
       66 GETUPVAL                         R13 7
       67 GETUPVAL                         R14 8
       68 DUPTABLE                         R15 K17 [{"tag", "LayoutOrder"}]
       69 LOADK                            R16 K18 ["col size-full-0 auto-y gap-small"]
       70 SETTABLEKS                       R16 R15 K15 ["tag"]
       72 GETTABLEKS                       R16 R0 K16 ["LayoutOrder"]
       74 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
       76 DUPTABLE                         R16 K20 [{"Loading"}]
       77 GETUPVAL                         R17 7
       78 GETUPVAL                         R18 9
       79 DUPTABLE                         R19 K22 [{"tag", "Text", "LayoutOrder"}]
       80 LOADK                            R20 K23 ["auto-xy text-label-small content-muted"]
       81 SETTABLEKS                       R20 R19 K15 ["tag"]
       83 GETTABLEKS                       R20 R5 K24 ["PreparingQuestions"]
       85 SETTABLEKS                       R20 R19 K21 ["Text"]
       87 MOVE                             R20 R12
       88 CALL                             R20 0 1
       89 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
       91 DUPTABLE                         R20 K26 [{"Shimmer"}]
       92 GETUPVAL                         R21 7
       93 GETUPVAL                         R22 10
       94 CALL                             R21 1 1
       95 SETTABLEKS                       R21 R20 K25 ["Shimmer"]
       97 CALL                             R17 3 1
       98 SETTABLEKS                       R17 R16 K19 ["Loading"]
      100 CALL                             R13 3 -1
      101 RETURN                           R13 -1
      102 LOADB                            R13 1
      103 JUMPIFEQKS                       R1 K27 ["completed"] ; [+5]
      105 JUMPIFEQKS                       R1 K28 ["error"] ; [+2]
      107 LOADB                            R13 0 +1
      108 LOADB                            R13 1
      109 JUMPIFNOT                        R13 ; [+23]
      110 GETUPVAL                         R14 7
      111 GETUPVAL                         R15 11
      112 DUPTABLE                         R16 K32 [{"isError", "dismissed", "answeredQuestions", "LayoutOrder"}]
      113 JUMPIFEQKS                       R1 K28 ["error"] ; [+2]
      115 LOADB                            R17 0 +1
      116 LOADB                            R17 1
      117 SETTABLEKS                       R17 R16 K29 ["isError"]
      119 GETTABLEKS                       R17 R0 K30 ["dismissed"]
      121 SETTABLEKS                       R17 R16 K30 ["dismissed"]
      123 GETTABLEKS                       R17 R0 K31 ["answeredQuestions"]
      125 SETTABLEKS                       R17 R16 K31 ["answeredQuestions"]
      127 GETTABLEKS                       R17 R0 K16 ["LayoutOrder"]
      129 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      131 CALL                             R14 2 -1
      132 RETURN                           R14 -1
      133 JUMPIF                           R8 ; [+2]
      134 LOADNIL                          R14
      135 RETURN                           R14 1
      136 NEWTABLE                         R14 0 0
      138 GETTABLEKS                       R16 R8 K33 ["options"]
      140 JUMPIFNOT                        R16 ; [+4]
      141 GETTABLEKS                       R16 R8 K33 ["options"]
      143 LENGTH                           R15 R16
      144 JUMP                             ; [+1]
      145 LOADN                            R15 0
      146 GETTABLEKS                       R16 R8 K33 ["options"]
      148 JUMPIFNOT                        R16 ; [+47]
      149 GETTABLEKS                       R16 R8 K33 ["options"]
      151 LOADNIL                          R17
      152 LOADNIL                          R18
      153 FORGPREP                         R16
      154 LOADK                            R22 K34 ["Option_%*"]
      155 MOVE                             R24 R19
      156 NAMECALL                         R22 R22 K35 ["format"]
      158 CALL                             R22 2 1
      159 MOVE                             R21 R22
      160 GETUPVAL                         R22 7
      161 GETUPVAL                         R23 12
      162 DUPTABLE                         R24 K41 [{"index", "optionText", "clarificationText", "isSelected", "onSelect", "LayoutOrder"}]
      163 SETTABLEKS                       R19 R24 K36 ["index"]
      165 GETTABLEKS                       R25 R20 K37 ["optionText"]
      167 SETTABLEKS                       R25 R24 K37 ["optionText"]
      169 GETTABLEKS                       R25 R20 K38 ["clarificationText"]
      171 SETTABLEKS                       R25 R24 K38 ["clarificationText"]
      173 GETTABLEKS                       R27 R9 K42 ["selections"]
      175 GETTABLE                         R26 R27 R7
      176 JUMPIFEQ                         R26 R19 ; [+2]
      178 LOADB                            R25 0 +1
      179 LOADB                            R25 1
      180 SETTABLEKS                       R25 R24 K39 ["isSelected"]
      182 NEWCLOSURE                       R25 P1
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R19
      186 SETTABLEKS                       R25 R24 K40 ["onSelect"]
      188 MOVE                             R25 R12
      189 CALL                             R25 0 1
      190 SETTABLEKS                       R25 R24 K16 ["LayoutOrder"]
      192 CALL                             R22 2 1
      193 SETTABLE                         R22 R14 R21
      194 FORGLOOP                         R16 2 ; [-41]
      196 GETUPVAL                         R16 7
      197 GETUPVAL                         R17 13
      198 DUPTABLE                         R18 K48 [{"index", "customText", "onTextChanged", "onFocused", "onReturnPressed", "textBoxRef", "LayoutOrder"}]
      199 LOADN                            R20 0
      200 JUMPIFNOTLT                      R20 R15 ; [+3]
      202 ADDK                             R19 R15 K49 [1]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R19
      205 SETTABLEKS                       R19 R18 K36 ["index"]
      207 GETTABLEKS                       R21 R9 K51 ["customTexts"]
      209 GETTABLE                         R20 R21 R7
      210 ORK                              R19 R20 K50 [""]
      211 SETTABLEKS                       R19 R18 K43 ["customText"]
      213 NEWCLOSURE                       R19 P2
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R7
      216 SETTABLEKS                       R19 R18 K44 ["onTextChanged"]
      218 NEWCLOSURE                       R19 P3
      219 CAPTURE                          VAL R9
      220 CAPTURE                          VAL R7
      221 SETTABLEKS                       R19 R18 K45 ["onFocused"]
      223 SETTABLEKS                       R11 R18 K46 ["onReturnPressed"]
      225 SETTABLEKS                       R10 R18 K47 ["textBoxRef"]
      227 MOVE                             R19 R12
      228 CALL                             R19 0 1
      229 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      231 CALL                             R16 2 1
      232 SETTABLEKS                       R16 R14 K52 ["CustomAnswer"]
      234 GETUPVAL                         R16 7
      235 GETUPVAL                         R17 8
      236 DUPTABLE                         R18 K17 [{"tag", "LayoutOrder"}]
      237 LOADK                            R19 K53 ["col size-full-0 auto-y gap-xxsmall bg-shift-100 stroke-standard stroke-default radius-medium padding-small"]
      238 SETTABLEKS                       R19 R18 K15 ["tag"]
      240 GETTABLEKS                       R19 R0 K16 ["LayoutOrder"]
      242 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      244 DUPTABLE                         R19 K57 [{"Header", "Options", "Actions"}]
      245 GETUPVAL                         R20 7
      246 GETUPVAL                         R21 14
      247 DUPTABLE                         R22 K59 [{"questionText", "totalQuestions", "paginationState", "LayoutOrder"}]
      248 GETTABLEKS                       R23 R8 K60 ["question"]
      250 SETTABLEKS                       R23 R22 K58 ["questionText"]
      252 SETTABLEKS                       R4 R22 K7 ["totalQuestions"]
      254 SETTABLEKS                       R6 R22 K8 ["paginationState"]
      256 MOVE                             R23 R12
      257 CALL                             R23 0 1
      258 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      260 CALL                             R20 2 1
      261 SETTABLEKS                       R20 R19 K54 ["Header"]
      263 GETUPVAL                         R20 7
      264 GETUPVAL                         R21 8
      265 DUPTABLE                         R22 K17 [{"tag", "LayoutOrder"}]
      266 LOADK                            R23 K61 ["col size-full-0 auto-y gap-xsmall"]
      267 SETTABLEKS                       R23 R22 K15 ["tag"]
      269 MOVE                             R23 R12
      270 CALL                             R23 0 1
      271 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      273 MOVE                             R23 R14
      274 CALL                             R20 3 1
      275 SETTABLEKS                       R20 R19 K55 ["Options"]
      277 GETUPVAL                         R20 7
      278 GETUPVAL                         R21 15
      279 DUPTABLE                         R22 K63 [{"totalQuestions", "paginationState", "answerState", "onDismiss", "LayoutOrder"}]
      280 SETTABLEKS                       R4 R22 K7 ["totalQuestions"]
      282 SETTABLEKS                       R6 R22 K8 ["paginationState"]
      284 SETTABLEKS                       R9 R22 K12 ["answerState"]
      286 GETTABLEKS                       R23 R0 K62 ["onDismiss"]
      288 SETTABLEKS                       R23 R22 K62 ["onDismiss"]
      290 MOVE                             R23 R12
      291 CALL                             R23 0 1
      292 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      294 CALL                             R20 2 1
      295 SETTABLEKS                       R20 R19 K56 ["Actions"]
      297 CALL                             R16 3 -1
      298 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["ActionBar"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K6 ["Parent"]
       22 GETTABLEKS                       R3 R4 K8 ["CompletedView"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R5 R6 K6 ["Parent"]
       31 GETTABLEKS                       R4 R5 K9 ["CustomAnswerItem"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R6 R7 K6 ["Parent"]
       40 GETTABLEKS                       R5 R6 K10 ["OptionItem"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R8 K1 [script]
       47 GETTABLEKS                       R7 R8 K6 ["Parent"]
       49 GETTABLEKS                       R6 R7 K11 ["QuestionAnswerTypes"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETIMPORT                        R9 K1 [script]
       56 GETTABLEKS                       R8 R9 K6 ["Parent"]
       58 GETTABLEKS                       R7 R8 K12 ["QuestionHeader"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETIMPORT                        R10 K1 [script]
       65 GETTABLEKS                       R9 R10 K6 ["Parent"]
       67 GETTABLEKS                       R8 R9 K13 ["useAnswerState"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R10 R11 K6 ["Parent"]
       76 GETTABLEKS                       R9 R10 K14 ["useQuestionKeyboardInput"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETIMPORT                        R12 K1 [script]
       83 GETTABLEKS                       R11 R12 K6 ["Parent"]
       85 GETTABLEKS                       R10 R11 K15 ["useQuestionPagination"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R12 R0 K6 ["Parent"]
       92 GETTABLEKS                       R11 R12 K16 ["Foundation"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R14 R0 K17 ["Components"]
       99 GETTABLEKS                       R13 R14 K18 ["Contexts"]
      101 GETTABLEKS                       R12 R13 K19 ["PacketReceivedContext"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R14 R0 K6 ["Parent"]
      108 GETTABLEKS                       R13 R14 K20 ["React"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R15 R0 K6 ["Parent"]
      115 GETTABLEKS                       R14 R15 K21 ["ReactUtils"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R16 R0 K17 ["Components"]
      122 GETTABLEKS                       R15 R16 K22 ["ShimmerGradient"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R18 R0 K23 ["Resources"]
      129 GETTABLEKS                       R17 R18 K24 ["Localization"]
      131 GETTABLEKS                       R16 R17 K25 ["Translator"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K26 ["Types"]
      138 CALL                             R16 1 1
      139 GETTABLEKS                       R17 R10 K27 ["Text"]
      141 GETTABLEKS                       R18 R10 K28 ["View"]
      143 GETTABLEKS                       R19 R13 K29 ["createNextOrder"]
      145 GETTABLEKS                       R20 R12 K30 ["createElement"]
      147 GETTABLEKS                       R21 R11 K31 ["useMarkUserInputRequired"]
      149 DUPCLOSURE                       R22 K32 [PROTO_4]
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R1
      166 GETTABLEKS                       R23 R12 K33 ["memo"]
      168 MOVE                             R24 R22
      169 CALL                             R23 1 -1
      170 RETURN                           R23 -1
