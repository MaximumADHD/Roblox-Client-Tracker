PROTO_0:
        0 DUPTABLE                         R0 K8 [{"titlePositive", "titleNegative", "categoryLabel", "categoryPlaceholder", "textAreaLabel", "textAreaPlaceholder", "submit", "close"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K9 ["FeedbackView"]
        3 LOADK                            R4 K10 ["TitlePositive"]
        4 NAMECALL                         R1 R1 K11 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["titlePositive"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K9 ["FeedbackView"]
       11 LOADK                            R4 K12 ["TitleNegative"]
       12 NAMECALL                         R1 R1 K11 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["titleNegative"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K9 ["FeedbackView"]
       19 LOADK                            R4 K13 ["CategoryLabel"]
       20 NAMECALL                         R1 R1 K11 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["categoryLabel"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K9 ["FeedbackView"]
       27 LOADK                            R4 K14 ["CategoryPlaceholder"]
       28 NAMECALL                         R1 R1 K11 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["categoryPlaceholder"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K9 ["FeedbackView"]
       35 LOADK                            R4 K15 ["TextAreaLabel"]
       36 NAMECALL                         R1 R1 K11 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["textAreaLabel"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K9 ["FeedbackView"]
       43 LOADK                            R4 K16 ["TextAreaPlaceholder"]
       44 NAMECALL                         R1 R1 K11 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["textAreaPlaceholder"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K9 ["FeedbackView"]
       51 LOADK                            R4 K17 ["Submit"]
       52 NAMECALL                         R1 R1 K11 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["submit"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K9 ["FeedbackView"]
       59 LOADK                            R4 K18 ["Close"]
       60 NAMECALL                         R1 R1 K11 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["close"]
       65 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 9
        2 DUPTABLE                         R1 K2 [{"id", "text"}]
        3 LOADK                            R2 K3 ["code_errors"]
        4 SETTABLEKS                       R2 R1 K0 ["id"]
        6 GETUPVAL                         R2 0
        7 LOADK                            R4 K4 ["FeedbackView"]
        8 LOADK                            R5 K5 ["CategoryCodeErrors"]
        9 NAMECALL                         R2 R2 K6 ["getText"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K1 ["text"]
       14 DUPTABLE                         R2 K2 [{"id", "text"}]
       15 LOADK                            R3 K7 ["incorrect_apis"]
       16 SETTABLEKS                       R3 R2 K0 ["id"]
       18 GETUPVAL                         R3 0
       19 LOADK                            R5 K4 ["FeedbackView"]
       20 LOADK                            R6 K8 ["CategoryIncorrectAPIs"]
       21 NAMECALL                         R3 R3 K6 ["getText"]
       23 CALL                             R3 3 1
       24 SETTABLEKS                       R3 R2 K1 ["text"]
       26 DUPTABLE                         R3 K2 [{"id", "text"}]
       27 LOADK                            R4 K9 ["spatial_error"]
       28 SETTABLEKS                       R4 R3 K0 ["id"]
       30 GETUPVAL                         R4 0
       31 LOADK                            R6 K4 ["FeedbackView"]
       32 LOADK                            R7 K10 ["CategorySpatialError"]
       33 NAMECALL                         R4 R4 K6 ["getText"]
       35 CALL                             R4 3 1
       36 SETTABLEKS                       R4 R3 K1 ["text"]
       38 DUPTABLE                         R4 K2 [{"id", "text"}]
       39 LOADK                            R5 K11 ["low_quality_3d"]
       40 SETTABLEKS                       R5 R4 K0 ["id"]
       42 GETUPVAL                         R5 0
       43 LOADK                            R7 K4 ["FeedbackView"]
       44 LOADK                            R8 K12 ["CategoryLowQuality3D"]
       45 NAMECALL                         R5 R5 K6 ["getText"]
       47 CALL                             R5 3 1
       48 SETTABLEKS                       R5 R4 K1 ["text"]
       50 DUPTABLE                         R5 K2 [{"id", "text"}]
       51 LOADK                            R6 K13 ["bad_planning"]
       52 SETTABLEKS                       R6 R5 K0 ["id"]
       54 GETUPVAL                         R6 0
       55 LOADK                            R8 K4 ["FeedbackView"]
       56 LOADK                            R9 K14 ["CategoryBadPlanning"]
       57 NAMECALL                         R6 R6 K6 ["getText"]
       59 CALL                             R6 3 1
       60 SETTABLEKS                       R6 R5 K1 ["text"]
       62 DUPTABLE                         R6 K2 [{"id", "text"}]
       63 LOADK                            R7 K15 ["bad_coding"]
       64 SETTABLEKS                       R7 R6 K0 ["id"]
       66 GETUPVAL                         R7 0
       67 LOADK                            R9 K4 ["FeedbackView"]
       68 LOADK                            R10 K16 ["CategoryBadCoding"]
       69 NAMECALL                         R7 R7 K6 ["getText"]
       71 CALL                             R7 3 1
       72 SETTABLEKS                       R7 R6 K1 ["text"]
       74 DUPTABLE                         R7 K2 [{"id", "text"}]
       75 LOADK                            R8 K17 ["ignored_instructions"]
       76 SETTABLEKS                       R8 R7 K0 ["id"]
       78 GETUPVAL                         R8 0
       79 LOADK                            R10 K4 ["FeedbackView"]
       80 LOADK                            R11 K18 ["CategoryIgnoredInstructions"]
       81 NAMECALL                         R8 R8 K6 ["getText"]
       83 CALL                             R8 3 1
       84 SETTABLEKS                       R8 R7 K1 ["text"]
       86 DUPTABLE                         R8 K2 [{"id", "text"}]
       87 LOADK                            R9 K19 ["unsafe_content"]
       88 SETTABLEKS                       R9 R8 K0 ["id"]
       90 GETUPVAL                         R9 0
       91 LOADK                            R11 K4 ["FeedbackView"]
       92 LOADK                            R12 K20 ["CategoryUnsafeContent"]
       93 NAMECALL                         R9 R9 K6 ["getText"]
       95 CALL                             R9 3 1
       96 SETTABLEKS                       R9 R8 K1 ["text"]
       98 DUPTABLE                         R9 K2 [{"id", "text"}]
       99 LOADK                            R10 K21 ["other"]
      100 SETTABLEKS                       R10 R9 K0 ["id"]
      102 GETUPVAL                         R10 0
      103 LOADK                            R12 K4 ["FeedbackView"]
      104 LOADK                            R13 K22 ["CategoryOther"]
      105 NAMECALL                         R10 R10 K6 ["getText"]
      107 CALL                             R10 3 1
      108 SETTABLEKS                       R10 R9 K1 ["text"]
      110 SETLIST                          R0 R1 9 [1]
      112 RETURN                           R0 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected id to be a string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 JUMPIFEQKS                       R0 K1 [""] ; [+3]
        6 MOVE                             R1 R0
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K2 ["onSubmit"]
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R1
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K3 ["useMemo"]
       13 DUPCLOSURE                       R6 K4 [PROTO_0]
       14 CAPTURE                          UPVAL U1
       15 NEWTABLE                         R7 0 1
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R8 R9 K5 ["locale"]
       20 SETLIST                          R7 R8 1 [1]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K3 ["useMemo"]
       26 DUPCLOSURE                       R7 K6 [PROTO_1]
       27 CAPTURE                          UPVAL U1
       28 NEWTABLE                         R8 0 1
       30 GETUPVAL                         R10 1
       31 GETTABLEKS                       R9 R10 K5 ["locale"]
       33 SETLIST                          R8 R9 1 [1]
       35 CALL                             R6 2 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K7 ["useCallback"]
       39 NEWCLOSURE                       R8 P2
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R9 0 0
       43 CALL                             R7 2 1
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R8 R9 K7 ["useCallback"]
       47 NEWCLOSURE                       R9 P3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R3
       51 NEWTABLE                         R10 0 2
       53 MOVE                             R11 R3
       54 GETTABLEKS                       R12 R0 K8 ["onSubmit"]
       56 SETLIST                          R10 R11 2 [1]
       58 CALL                             R8 2 1
       59 GETTABLEKS                       R10 R0 K9 ["thumbsDirection"]
       61 JUMPIFEQKS                       R10 K10 ["down"] ; [+2]
       63 LOADB                            R9 0 +1
       64 LOADB                            R9 1
       65 JUMPIFNOT                        R9 ; [+3]
       66 GETTABLEKS                       R10 R5 K11 ["titleNegative"]
       68 JUMP                             ; [+2]
       69 GETTABLEKS                       R10 R5 K12 ["titlePositive"]
       71 GETUPVAL                         R11 2
       72 CALL                             R11 0 1
       73 GETUPVAL                         R12 3
       74 GETUPVAL                         R13 4
       75 DUPTABLE                         R14 K16 [{"tag", "testId", "LayoutOrder"}]
       76 LOADK                            R15 K17 ["col size-full-0 auto-y padding-large gap-small"]
       77 SETTABLEKS                       R15 R14 K13 ["tag"]
       79 GETUPVAL                         R17 5
       80 GETTABLEKS                       R16 R17 K18 ["FeedbackView"]
       82 GETTABLEKS                       R15 R16 K19 ["Container"]
       84 SETTABLEKS                       R15 R14 K14 ["testId"]
       86 GETTABLEKS                       R15 R0 K15 ["LayoutOrder"]
       88 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
       90 DUPTABLE                         R15 K23 [{"Title", "FormContent", "Actions"}]
       91 GETUPVAL                         R16 3
       92 GETUPVAL                         R17 6
       93 DUPTABLE                         R18 K25 [{"tag", "Text", "LayoutOrder"}]
       94 LOADK                            R19 K26 ["auto-xy text-title-small content-emphasis"]
       95 SETTABLEKS                       R19 R18 K13 ["tag"]
       97 SETTABLEKS                       R10 R18 K24 ["Text"]
       99 MOVE                             R19 R11
      100 CALL                             R19 0 1
      101 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      103 CALL                             R16 2 1
      104 SETTABLEKS                       R16 R15 K20 ["Title"]
      106 GETUPVAL                         R16 3
      107 GETUPVAL                         R17 4
      108 DUPTABLE                         R18 K27 [{"tag", "LayoutOrder"}]
      109 LOADK                            R19 K28 ["col size-full-0 auto-y gap-small"]
      110 SETTABLEKS                       R19 R18 K13 ["tag"]
      112 MOVE                             R19 R11
      113 CALL                             R19 0 1
      114 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      116 DUPTABLE                         R19 K31 [{"CategoryDropdown", "FeedbackInput"}]
      117 JUMPIFNOT                        R9 ; [+44]
      118 GETUPVAL                         R20 3
      119 GETUPVAL                         R22 7
      120 GETTABLEKS                       R21 R22 K32 ["Root"]
      122 DUPTABLE                         R22 K40 [{"label", "placeholder", "onItemChanged", "size", "width", "items", "testId", "LayoutOrder", "value"}]
      123 GETTABLEKS                       R23 R5 K41 ["categoryLabel"]
      125 SETTABLEKS                       R23 R22 K33 ["label"]
      127 GETTABLEKS                       R23 R5 K42 ["categoryPlaceholder"]
      129 SETTABLEKS                       R23 R22 K34 ["placeholder"]
      131 SETTABLEKS                       R7 R22 K35 ["onItemChanged"]
      133 GETUPVAL                         R26 8
      134 GETTABLEKS                       R25 R26 K43 ["Enums"]
      136 GETTABLEKS                       R24 R25 K44 ["InputSize"]
      138 GETTABLEKS                       R23 R24 K45 ["Small"]
      140 SETTABLEKS                       R23 R22 K36 ["size"]
      142 GETUPVAL                         R23 9
      143 SETTABLEKS                       R23 R22 K37 ["width"]
      145 SETTABLEKS                       R6 R22 K38 ["items"]
      147 GETUPVAL                         R25 5
      148 GETTABLEKS                       R24 R25 K18 ["FeedbackView"]
      150 GETTABLEKS                       R23 R24 K46 ["Dropdown"]
      152 SETTABLEKS                       R23 R22 K14 ["testId"]
      154 MOVE                             R23 R11
      155 CALL                             R23 0 1
      156 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      158 SETTABLEKS                       R3 R22 K39 ["value"]
      160 CALL                             R20 2 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R20
      163 SETTABLEKS                       R20 R19 K29 ["CategoryDropdown"]
      165 GETUPVAL                         R20 3
      166 GETUPVAL                         R21 10
      167 DUPTABLE                         R22 K50 [{"label", "placeholder", "text", "onChanged", "numLines", "size", "width", "testId", "LayoutOrder"}]
      168 GETTABLEKS                       R23 R5 K51 ["textAreaLabel"]
      170 SETTABLEKS                       R23 R22 K33 ["label"]
      172 GETTABLEKS                       R23 R5 K52 ["textAreaPlaceholder"]
      174 SETTABLEKS                       R23 R22 K34 ["placeholder"]
      176 SETTABLEKS                       R1 R22 K47 ["text"]
      178 SETTABLEKS                       R2 R22 K48 ["onChanged"]
      180 LOADN                            R23 5
      181 SETTABLEKS                       R23 R22 K49 ["numLines"]
      183 GETUPVAL                         R26 8
      184 GETTABLEKS                       R25 R26 K43 ["Enums"]
      186 GETTABLEKS                       R24 R25 K44 ["InputSize"]
      188 GETTABLEKS                       R23 R24 K45 ["Small"]
      190 SETTABLEKS                       R23 R22 K36 ["size"]
      192 GETUPVAL                         R23 9
      193 SETTABLEKS                       R23 R22 K37 ["width"]
      195 GETUPVAL                         R25 5
      196 GETTABLEKS                       R24 R25 K18 ["FeedbackView"]
      198 GETTABLEKS                       R23 R24 K53 ["TextArea"]
      200 SETTABLEKS                       R23 R22 K14 ["testId"]
      202 MOVE                             R23 R11
      203 CALL                             R23 0 1
      204 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      206 CALL                             R20 2 1
      207 SETTABLEKS                       R20 R19 K30 ["FeedbackInput"]
      209 CALL                             R16 3 1
      210 SETTABLEKS                       R16 R15 K21 ["FormContent"]
      212 GETUPVAL                         R16 3
      213 GETUPVAL                         R17 4
      214 DUPTABLE                         R18 K27 [{"tag", "LayoutOrder"}]
      215 LOADK                            R19 K54 ["row size-full-0 auto-y align-y-center gap-small"]
      216 SETTABLEKS                       R19 R18 K13 ["tag"]
      218 MOVE                             R19 R11
      219 CALL                             R19 0 1
      220 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      222 DUPTABLE                         R19 K58 [{"Close", "Spacer", "Submit"}]
      223 GETUPVAL                         R20 3
      224 GETUPVAL                         R21 11
      225 DUPTABLE                         R22 K61 [{"text", "variant", "size", "onActivated", "testId", "LayoutOrder"}]
      226 GETTABLEKS                       R23 R5 K62 ["close"]
      228 SETTABLEKS                       R23 R22 K47 ["text"]
      230 GETUPVAL                         R26 8
      231 GETTABLEKS                       R25 R26 K43 ["Enums"]
      233 GETTABLEKS                       R24 R25 K63 ["ButtonVariant"]
      235 GETTABLEKS                       R23 R24 K64 ["Link"]
      237 SETTABLEKS                       R23 R22 K59 ["variant"]
      239 GETUPVAL                         R26 8
      240 GETTABLEKS                       R25 R26 K43 ["Enums"]
      242 GETTABLEKS                       R24 R25 K44 ["InputSize"]
      244 GETTABLEKS                       R23 R24 K45 ["Small"]
      246 SETTABLEKS                       R23 R22 K36 ["size"]
      248 GETTABLEKS                       R23 R0 K65 ["onClose"]
      250 SETTABLEKS                       R23 R22 K60 ["onActivated"]
      252 GETUPVAL                         R25 5
      253 GETTABLEKS                       R24 R25 K18 ["FeedbackView"]
      255 GETTABLEKS                       R23 R24 K55 ["Close"]
      257 SETTABLEKS                       R23 R22 K14 ["testId"]
      259 MOVE                             R23 R11
      260 CALL                             R23 0 1
      261 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      263 CALL                             R20 2 1
      264 SETTABLEKS                       R20 R19 K55 ["Close"]
      266 GETUPVAL                         R20 3
      267 GETUPVAL                         R21 4
      268 DUPTABLE                         R22 K27 [{"tag", "LayoutOrder"}]
      269 LOADK                            R23 K66 ["grow"]
      270 SETTABLEKS                       R23 R22 K13 ["tag"]
      272 MOVE                             R23 R11
      273 CALL                             R23 0 1
      274 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      276 CALL                             R20 2 1
      277 SETTABLEKS                       R20 R19 K56 ["Spacer"]
      279 GETUPVAL                         R20 3
      280 GETUPVAL                         R21 11
      281 DUPTABLE                         R22 K61 [{"text", "variant", "size", "onActivated", "testId", "LayoutOrder"}]
      282 GETTABLEKS                       R23 R5 K67 ["submit"]
      284 SETTABLEKS                       R23 R22 K47 ["text"]
      286 GETUPVAL                         R26 8
      287 GETTABLEKS                       R25 R26 K43 ["Enums"]
      289 GETTABLEKS                       R24 R25 K63 ["ButtonVariant"]
      291 GETTABLEKS                       R23 R24 K68 ["Emphasis"]
      293 SETTABLEKS                       R23 R22 K59 ["variant"]
      295 GETUPVAL                         R26 8
      296 GETTABLEKS                       R25 R26 K43 ["Enums"]
      298 GETTABLEKS                       R24 R25 K44 ["InputSize"]
      300 GETTABLEKS                       R23 R24 K45 ["Small"]
      302 SETTABLEKS                       R23 R22 K36 ["size"]
      304 SETTABLEKS                       R8 R22 K60 ["onActivated"]
      306 GETUPVAL                         R25 5
      307 GETTABLEKS                       R24 R25 K18 ["FeedbackView"]
      309 GETTABLEKS                       R23 R24 K57 ["Submit"]
      311 SETTABLEKS                       R23 R22 K14 ["testId"]
      313 MOVE                             R23 R11
      314 CALL                             R23 0 1
      315 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      317 CALL                             R20 2 1
      318 SETTABLEKS                       R20 R19 K57 ["Submit"]
      320 CALL                             R16 3 1
      321 SETTABLEKS                       R16 R15 K22 ["Actions"]
      323 CALL                             R12 3 -1
      324 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R6 K11 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Resources"]
       39 GETTABLEKS                       R7 R8 K13 ["Localization"]
       41 GETTABLEKS                       R6 R7 K14 ["Translator"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K15 ["Button"]
       46 GETTABLEKS                       R7 R1 K16 ["Dropdown"]
       48 GETTABLEKS                       R8 R1 K17 ["Text"]
       50 GETTABLEKS                       R9 R1 K18 ["TextArea"]
       52 GETTABLEKS                       R10 R1 K19 ["View"]
       54 GETTABLEKS                       R11 R3 K20 ["createNextOrder"]
       56 GETTABLEKS                       R12 R2 K21 ["createElement"]
       58 GETIMPORT                        R13 K24 [UDim.new]
       60 LOADN                            R14 1
       61 LOADN                            R15 0
       62 CALL                             R13 2 1
       63 DUPCLOSURE                       R14 K25 [PROTO_4]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R6
       76 RETURN                           R14 1
