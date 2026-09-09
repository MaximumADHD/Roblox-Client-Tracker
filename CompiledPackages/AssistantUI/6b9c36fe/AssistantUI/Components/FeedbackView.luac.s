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
        2 DUPTABLE                         R1 K3 [{[1] = "code_errors", ["text"]}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K4 ["FeedbackView"]
        5 LOADK                            R5 K5 ["CategoryCodeErrors"]
        6 NAMECALL                         R2 R2 K6 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K2 ["text"]
       11 DUPTABLE                         R2 K8 [{[1] = "incorrect_apis", ["text"]}]
       12 GETUPVAL                         R3 0
       13 LOADK                            R5 K4 ["FeedbackView"]
       14 LOADK                            R6 K9 ["CategoryIncorrectAPIs"]
       15 NAMECALL                         R3 R3 K6 ["getText"]
       17 CALL                             R3 3 1
       18 SETTABLEKS                       R3 R2 K2 ["text"]
       20 DUPTABLE                         R3 K11 [{[1] = "spatial_error", ["text"]}]
       21 GETUPVAL                         R4 0
       22 LOADK                            R6 K4 ["FeedbackView"]
       23 LOADK                            R7 K12 ["CategorySpatialError"]
       24 NAMECALL                         R4 R4 K6 ["getText"]
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K2 ["text"]
       29 DUPTABLE                         R4 K14 [{[1] = "low_quality_3d", ["text"]}]
       30 GETUPVAL                         R5 0
       31 LOADK                            R7 K4 ["FeedbackView"]
       32 LOADK                            R8 K15 ["CategoryLowQuality3D"]
       33 NAMECALL                         R5 R5 K6 ["getText"]
       35 CALL                             R5 3 1
       36 SETTABLEKS                       R5 R4 K2 ["text"]
       38 DUPTABLE                         R5 K17 [{[1] = "bad_planning", ["text"]}]
       39 GETUPVAL                         R6 0
       40 LOADK                            R8 K4 ["FeedbackView"]
       41 LOADK                            R9 K18 ["CategoryBadPlanning"]
       42 NAMECALL                         R6 R6 K6 ["getText"]
       44 CALL                             R6 3 1
       45 SETTABLEKS                       R6 R5 K2 ["text"]
       47 DUPTABLE                         R6 K20 [{[1] = "bad_coding", ["text"]}]
       48 GETUPVAL                         R7 0
       49 LOADK                            R9 K4 ["FeedbackView"]
       50 LOADK                            R10 K21 ["CategoryBadCoding"]
       51 NAMECALL                         R7 R7 K6 ["getText"]
       53 CALL                             R7 3 1
       54 SETTABLEKS                       R7 R6 K2 ["text"]
       56 DUPTABLE                         R7 K23 [{[1] = "ignored_instructions", ["text"]}]
       57 GETUPVAL                         R8 0
       58 LOADK                            R10 K4 ["FeedbackView"]
       59 LOADK                            R11 K24 ["CategoryIgnoredInstructions"]
       60 NAMECALL                         R8 R8 K6 ["getText"]
       62 CALL                             R8 3 1
       63 SETTABLEKS                       R8 R7 K2 ["text"]
       65 DUPTABLE                         R8 K26 [{[1] = "unsafe_content", ["text"]}]
       66 GETUPVAL                         R9 0
       67 LOADK                            R11 K4 ["FeedbackView"]
       68 LOADK                            R12 K27 ["CategoryUnsafeContent"]
       69 NAMECALL                         R9 R9 K6 ["getText"]
       71 CALL                             R9 3 1
       72 SETTABLEKS                       R9 R8 K2 ["text"]
       74 DUPTABLE                         R9 K29 [{[1] = "other", ["text"]}]
       75 GETUPVAL                         R10 0
       76 LOADK                            R12 K4 ["FeedbackView"]
       77 LOADK                            R13 K30 ["CategoryOther"]
       78 NAMECALL                         R10 R10 K6 ["getText"]
       80 CALL                             R10 3 1
       81 SETTABLEKS                       R10 R9 K2 ["text"]
       83 SETLIST                          R0 R1 9 [1]
       85 RETURN                           R0 1

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
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["onSubmit"]
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R1
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       13 DUPCLOSURE                       R6 K4 [PROTO_0]
       14 CAPTURE                          UPVAL U1
       15 NEWTABLE                         R7 0 1
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K5 ["locale"]
       20 SETLIST                          R7 R8 1 [1]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       26 DUPCLOSURE                       R7 K6 [PROTO_1]
       27 CAPTURE                          UPVAL U1
       28 NEWTABLE                         R8 0 1
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K5 ["locale"]
       33 SETLIST                          R8 R9 1 [1]
       35 CALL                             R6 2 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       39 NEWCLOSURE                       R8 P2
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R9 0 0
       43 CALL                             R7 2 1
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K7 ["useCallback"]
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
       75 DUPTABLE                         R14 K17 [{["tag"] = "col gap-small size-full-0 auto-y padding-large", ["testId"], ["LayoutOrder"]}]
       76 GETUPVAL                         R15 5
       77 GETTABLEKS                       R15 R15 K18 ["FeedbackView"]
       79 GETTABLEKS                       R15 R15 K19 ["Container"]
       81 SETTABLEKS                       R15 R14 K15 ["testId"]
       83 GETTABLEKS                       R15 R0 K16 ["LayoutOrder"]
       85 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
       87 DUPTABLE                         R15 K23 [{"Title", "FormContent", "Actions"}]
       88 GETUPVAL                         R16 3
       89 GETUPVAL                         R17 6
       90 DUPTABLE                         R18 K26 [{["tag"] = "auto-xy text-title-small content-emphasis", ["Text"], ["LayoutOrder"]}]
       91 SETTABLEKS                       R10 R18 K25 ["Text"]
       93 MOVE                             R19 R11
       94 CALL                             R19 0 1
       95 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
       97 CALL                             R16 2 1
       98 SETTABLEKS                       R16 R15 K20 ["Title"]
      100 GETUPVAL                         R16 3
      101 GETUPVAL                         R17 4
      102 DUPTABLE                         R18 K28 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      103 MOVE                             R19 R11
      104 CALL                             R19 0 1
      105 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      107 DUPTABLE                         R19 K31 [{"CategoryDropdown", "FeedbackInput"}]
      108 JUMPIFNOT                        R9 ; [+44]
      109 GETUPVAL                         R20 3
      110 GETUPVAL                         R21 7
      111 GETTABLEKS                       R21 R21 K32 ["Root"]
      113 DUPTABLE                         R22 K40 [{"label", "placeholder", "onItemChanged", "size", "width", "items", "testId", "LayoutOrder", "value"}]
      114 GETTABLEKS                       R23 R5 K41 ["categoryLabel"]
      116 SETTABLEKS                       R23 R22 K33 ["label"]
      118 GETTABLEKS                       R23 R5 K42 ["categoryPlaceholder"]
      120 SETTABLEKS                       R23 R22 K34 ["placeholder"]
      122 SETTABLEKS                       R7 R22 K35 ["onItemChanged"]
      124 GETUPVAL                         R23 8
      125 GETTABLEKS                       R23 R23 K43 ["Enums"]
      127 GETTABLEKS                       R23 R23 K44 ["InputSize"]
      129 GETTABLEKS                       R23 R23 K45 ["Small"]
      131 SETTABLEKS                       R23 R22 K36 ["size"]
      133 GETUPVAL                         R23 9
      134 SETTABLEKS                       R23 R22 K37 ["width"]
      136 SETTABLEKS                       R6 R22 K38 ["items"]
      138 GETUPVAL                         R23 5
      139 GETTABLEKS                       R23 R23 K18 ["FeedbackView"]
      141 GETTABLEKS                       R23 R23 K46 ["Dropdown"]
      143 SETTABLEKS                       R23 R22 K15 ["testId"]
      145 MOVE                             R23 R11
      146 CALL                             R23 0 1
      147 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      149 SETTABLEKS                       R3 R22 K39 ["value"]
      151 CALL                             R20 2 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R20
      154 SETTABLEKS                       R20 R19 K29 ["CategoryDropdown"]
      156 GETUPVAL                         R20 3
      157 GETUPVAL                         R21 10
      158 DUPTABLE                         R22 K51 [{["label"], ["placeholder"], ["text"], ["onChanged"], ["numLines"] = 5, ["size"], ["width"], ["testId"], ["LayoutOrder"]}]
      159 GETTABLEKS                       R23 R5 K52 ["textAreaLabel"]
      161 SETTABLEKS                       R23 R22 K33 ["label"]
      163 GETTABLEKS                       R23 R5 K53 ["textAreaPlaceholder"]
      165 SETTABLEKS                       R23 R22 K34 ["placeholder"]
      167 SETTABLEKS                       R1 R22 K47 ["text"]
      169 SETTABLEKS                       R2 R22 K48 ["onChanged"]
      171 GETUPVAL                         R23 8
      172 GETTABLEKS                       R23 R23 K43 ["Enums"]
      174 GETTABLEKS                       R23 R23 K44 ["InputSize"]
      176 GETTABLEKS                       R23 R23 K45 ["Small"]
      178 SETTABLEKS                       R23 R22 K36 ["size"]
      180 GETUPVAL                         R23 9
      181 SETTABLEKS                       R23 R22 K37 ["width"]
      183 GETUPVAL                         R23 5
      184 GETTABLEKS                       R23 R23 K18 ["FeedbackView"]
      186 GETTABLEKS                       R23 R23 K54 ["TextArea"]
      188 SETTABLEKS                       R23 R22 K15 ["testId"]
      190 MOVE                             R23 R11
      191 CALL                             R23 0 1
      192 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      194 CALL                             R20 2 1
      195 SETTABLEKS                       R20 R19 K30 ["FeedbackInput"]
      197 CALL                             R16 3 1
      198 SETTABLEKS                       R16 R15 K21 ["FormContent"]
      200 GETUPVAL                         R16 3
      201 GETUPVAL                         R17 4
      202 DUPTABLE                         R18 K56 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      203 MOVE                             R19 R11
      204 CALL                             R19 0 1
      205 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      207 DUPTABLE                         R19 K60 [{"Close", "Spacer", "Submit"}]
      208 GETUPVAL                         R20 3
      209 GETUPVAL                         R21 11
      210 DUPTABLE                         R22 K63 [{"text", "variant", "size", "onActivated", "testId", "LayoutOrder"}]
      211 GETTABLEKS                       R23 R5 K64 ["close"]
      213 SETTABLEKS                       R23 R22 K47 ["text"]
      215 GETUPVAL                         R23 8
      216 GETTABLEKS                       R23 R23 K43 ["Enums"]
      218 GETTABLEKS                       R23 R23 K65 ["ButtonVariant"]
      220 GETTABLEKS                       R23 R23 K66 ["Link"]
      222 SETTABLEKS                       R23 R22 K61 ["variant"]
      224 GETUPVAL                         R23 8
      225 GETTABLEKS                       R23 R23 K43 ["Enums"]
      227 GETTABLEKS                       R23 R23 K44 ["InputSize"]
      229 GETTABLEKS                       R23 R23 K45 ["Small"]
      231 SETTABLEKS                       R23 R22 K36 ["size"]
      233 GETTABLEKS                       R23 R0 K67 ["onClose"]
      235 SETTABLEKS                       R23 R22 K62 ["onActivated"]
      237 GETUPVAL                         R23 5
      238 GETTABLEKS                       R23 R23 K18 ["FeedbackView"]
      240 GETTABLEKS                       R23 R23 K57 ["Close"]
      242 SETTABLEKS                       R23 R22 K15 ["testId"]
      244 MOVE                             R23 R11
      245 CALL                             R23 0 1
      246 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      248 CALL                             R20 2 1
      249 SETTABLEKS                       R20 R19 K57 ["Close"]
      251 GETUPVAL                         R20 3
      252 GETUPVAL                         R21 4
      253 DUPTABLE                         R22 K69 [{["tag"] = "grow", ["LayoutOrder"]}]
      254 MOVE                             R23 R11
      255 CALL                             R23 0 1
      256 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      258 CALL                             R20 2 1
      259 SETTABLEKS                       R20 R19 K58 ["Spacer"]
      261 GETUPVAL                         R20 3
      262 GETUPVAL                         R21 11
      263 DUPTABLE                         R22 K63 [{"text", "variant", "size", "onActivated", "testId", "LayoutOrder"}]
      264 GETTABLEKS                       R23 R5 K70 ["submit"]
      266 SETTABLEKS                       R23 R22 K47 ["text"]
      268 GETUPVAL                         R23 8
      269 GETTABLEKS                       R23 R23 K43 ["Enums"]
      271 GETTABLEKS                       R23 R23 K65 ["ButtonVariant"]
      273 GETTABLEKS                       R23 R23 K71 ["Emphasis"]
      275 SETTABLEKS                       R23 R22 K61 ["variant"]
      277 GETUPVAL                         R23 8
      278 GETTABLEKS                       R23 R23 K43 ["Enums"]
      280 GETTABLEKS                       R23 R23 K44 ["InputSize"]
      282 GETTABLEKS                       R23 R23 K45 ["Small"]
      284 SETTABLEKS                       R23 R22 K36 ["size"]
      286 SETTABLEKS                       R8 R22 K62 ["onActivated"]
      288 GETUPVAL                         R23 5
      289 GETTABLEKS                       R23 R23 K18 ["FeedbackView"]
      291 GETTABLEKS                       R23 R23 K59 ["Submit"]
      293 SETTABLEKS                       R23 R22 K15 ["testId"]
      295 MOVE                             R23 R11
      296 CALL                             R23 0 1
      297 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      299 CALL                             R20 2 1
      300 SETTABLEKS                       R20 R19 K59 ["Submit"]
      302 CALL                             R16 3 1
      303 SETTABLEKS                       R16 R15 K22 ["Actions"]
      305 CALL                             R12 3 -1
      306 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Resources"]
       39 GETTABLEKS                       R6 R6 K13 ["Localization"]
       41 GETTABLEKS                       R6 R6 K14 ["Translator"]
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
