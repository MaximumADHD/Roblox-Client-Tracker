PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Review", "Continue", "Edit"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["QuestionAnswer"]
        3 LOADK                            R4 K0 ["Review"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Review"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["QuestionAnswer"]
       11 LOADK                            R4 K1 ["Continue"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Continue"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["QuestionAnswer"]
       19 LOADK                            R4 K2 ["Edit"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Edit"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       11 DUPCLOSURE                       R4 K3 [PROTO_0]
       12 CAPTURE                          UPVAL U3
       13 NEWTABLE                         R5 0 1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K4 ["locale"]
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 1
       21 NEWTABLE                         R4 0 0
       23 GETUPVAL                         R5 1
       24 CALL                             R5 0 1
       25 GETTABLEKS                       R6 R0 K5 ["answeredQuestions"]
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 FORGPREP                         R6
       30 GETUPVAL                         R11 1
       31 CALL                             R11 0 1
       32 LOADK                            R12 K6 ["QA_%*"]
       33 MOVE                             R14 R9
       34 NAMECALL                         R12 R12 K7 ["format"]
       36 CALL                             R12 2 1
       37 GETUPVAL                         R13 4
       38 GETUPVAL                         R14 5
       39 DUPTABLE                         R15 K11 [{["tag"] = "col gap-none size-full-0 auto-y padding-right-xsmall", ["LayoutOrder"]}]
       40 MOVE                             R16 R5
       41 CALL                             R16 0 1
       42 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       44 DUPTABLE                         R16 K14 [{"QuestionText", "AnswerText"}]
       45 GETUPVAL                         R17 4
       46 GETUPVAL                         R18 6
       47 DUPTABLE                         R19 K17 [{["tag"] = "auto-xy text-title-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
       48 GETTABLEKS                       R20 R10 K18 ["question"]
       50 SETTABLEKS                       R20 R19 K16 ["Text"]
       52 MOVE                             R20 R11
       53 CALL                             R20 0 1
       54 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
       56 CALL                             R17 2 1
       57 SETTABLEKS                       R17 R16 K12 ["QuestionText"]
       59 GETUPVAL                         R17 4
       60 GETUPVAL                         R18 6
       61 DUPTABLE                         R19 K20 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
       62 GETTABLEKS                       R20 R10 K21 ["chosenOption"]
       64 GETTABLEKS                       R20 R20 K22 ["optionText"]
       66 SETTABLEKS                       R20 R19 K16 ["Text"]
       68 MOVE                             R20 R11
       69 CALL                             R20 0 1
       70 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
       72 CALL                             R17 2 1
       73 SETTABLEKS                       R17 R16 K13 ["AnswerText"]
       75 CALL                             R13 3 1
       76 SETTABLE                         R13 R4 R12
       77 FORGLOOP                         R6 2 ; [-48]
       79 GETUPVAL                         R6 1
       80 CALL                             R6 0 1
       81 GETUPVAL                         R7 1
       82 CALL                             R7 0 1
       83 GETUPVAL                         R8 1
       84 CALL                             R8 0 1
       85 GETUPVAL                         R9 4
       86 LOADK                            R10 K23 ["CanvasGroup"]
       87 DUPTABLE                         R11 K32 [{["BackgroundTransparency"] = 1, ["GroupTransparency"] = 0, ["Size"], ["AutomaticSize"], ["LayoutOrder"], ["ClipsDescendants"] = True}]
       88 GETIMPORT                        R12 K35 [UDim2.fromScale]
       90 LOADN                            R13 1
       91 LOADN                            R14 0
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K28 ["Size"]
       95 GETIMPORT                        R12 K38 [Enum.AutomaticSize.Y]
       97 SETTABLEKS                       R12 R11 K29 ["AutomaticSize"]
       99 GETTABLEKS                       R12 R0 K10 ["LayoutOrder"]
      101 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      103 DUPTABLE                         R12 K42 [{"Corner", "Stroke", "Container"}]
      104 GETUPVAL                         R13 4
      105 LOADK                            R14 K43 ["UICorner"]
      106 DUPTABLE                         R15 K45 [{"CornerRadius"}]
      107 GETUPVAL                         R16 7
      108 SETTABLEKS                       R16 R15 K44 ["CornerRadius"]
      110 CALL                             R13 2 1
      111 SETTABLEKS                       R13 R12 K39 ["Corner"]
      113 GETUPVAL                         R13 4
      114 LOADK                            R14 K46 ["UIStroke"]
      115 DUPTABLE                         R15 K50 [{"Color", "Transparency", "Thickness"}]
      116 GETTABLEKS                       R16 R1 K47 ["Color"]
      118 GETTABLEKS                       R16 R16 K40 ["Stroke"]
      120 GETTABLEKS                       R16 R16 K51 ["Default"]
      122 GETTABLEKS                       R16 R16 K52 ["Color3"]
      124 SETTABLEKS                       R16 R15 K47 ["Color"]
      126 GETTABLEKS                       R16 R1 K47 ["Color"]
      128 GETTABLEKS                       R16 R16 K40 ["Stroke"]
      130 GETTABLEKS                       R16 R16 K51 ["Default"]
      132 GETTABLEKS                       R16 R16 K48 ["Transparency"]
      134 SETTABLEKS                       R16 R15 K48 ["Transparency"]
      136 GETTABLEKS                       R16 R1 K40 ["Stroke"]
      138 GETTABLEKS                       R16 R16 K53 ["Standard"]
      140 SETTABLEKS                       R16 R15 K49 ["Thickness"]
      142 CALL                             R13 2 1
      143 SETTABLEKS                       R13 R12 K40 ["Stroke"]
      145 GETUPVAL                         R13 4
      146 GETUPVAL                         R14 5
      147 DUPTABLE                         R15 K55 [{["tag"] = "col gap-none size-full-0 auto-y radius-large"}]
      148 DUPTABLE                         R16 K59 [{"Header", "HeaderDivider", "Body"}]
      149 GETUPVAL                         R17 4
      150 GETUPVAL                         R18 5
      151 DUPTABLE                         R19 K61 [{["tag"] = "row align-y-center size-full-0 auto-y padding-y-xsmall padding-left-large padding-right-small bg-shift-100", ["LayoutOrder"]}]
      152 MOVE                             R20 R2
      153 CALL                             R20 0 1
      154 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      156 DUPTABLE                         R20 K64 [{"ReviewTitle", "DismissButton"}]
      157 GETUPVAL                         R21 4
      158 GETUPVAL                         R22 6
      159 DUPTABLE                         R23 K66 [{["tag"] = "fill auto-xy text-title-small content-emphasis", ["Text"], ["LayoutOrder"]}]
      160 GETTABLEKS                       R24 R3 K67 ["Review"]
      162 SETTABLEKS                       R24 R23 K16 ["Text"]
      164 MOVE                             R24 R6
      165 CALL                             R24 0 1
      166 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      168 CALL                             R21 2 1
      169 SETTABLEKS                       R21 R20 K62 ["ReviewTitle"]
      171 GETTABLEKS                       R21 R0 K68 ["onDismiss"]
      173 JUMPIFNOT                        R21 ; [+38]
      174 GETUPVAL                         R21 4
      175 GETUPVAL                         R22 8
      176 DUPTABLE                         R23 K75 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      177 GETUPVAL                         R24 9
      178 GETTABLEKS                       R24 R24 K76 ["X"]
      180 SETTABLEKS                       R24 R23 K69 ["icon"]
      182 GETUPVAL                         R24 10
      183 GETTABLEKS                       R24 R24 K77 ["XSmall"]
      185 SETTABLEKS                       R24 R23 K70 ["size"]
      187 GETUPVAL                         R24 11
      188 GETTABLEKS                       R24 R24 K78 ["Utility"]
      190 SETTABLEKS                       R24 R23 K71 ["variant"]
      192 GETTABLEKS                       R24 R0 K79 ["isSubmitting"]
      194 SETTABLEKS                       R24 R23 K72 ["isDisabled"]
      196 GETTABLEKS                       R24 R0 K68 ["onDismiss"]
      198 SETTABLEKS                       R24 R23 K73 ["onActivated"]
      200 MOVE                             R24 R6
      201 CALL                             R24 0 1
      202 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      204 GETUPVAL                         R24 12
      205 GETTABLEKS                       R24 R24 K80 ["QuestionAnswer"]
      207 GETTABLEKS                       R24 R24 K81 ["Dismiss"]
      209 SETTABLEKS                       R24 R23 K74 ["testId"]
      211 CALL                             R21 2 1
      212 SETTABLEKS                       R21 R20 K63 ["DismissButton"]
      214 CALL                             R17 3 1
      215 SETTABLEKS                       R17 R16 K56 ["Header"]
      217 GETUPVAL                         R17 4
      218 GETUPVAL                         R18 13
      219 DUPTABLE                         R19 K82 [{"LayoutOrder"}]
      220 MOVE                             R20 R2
      221 CALL                             R20 0 1
      222 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      224 CALL                             R17 2 1
      225 SETTABLEKS                       R17 R16 K57 ["HeaderDivider"]
      227 GETUPVAL                         R17 4
      228 GETUPVAL                         R18 5
      229 DUPTABLE                         R19 K84 [{["tag"] = "col gap-large size-full-0 auto-y padding-x-large padding-y-medium", ["LayoutOrder"]}]
      230 MOVE                             R20 R2
      231 CALL                             R20 0 1
      232 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      234 DUPTABLE                         R20 K87 [{"QuestionList", "ButtonGroup"}]
      235 GETUPVAL                         R21 4
      236 GETUPVAL                         R22 5
      237 DUPTABLE                         R23 K89 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      238 MOVE                             R24 R7
      239 CALL                             R24 0 1
      240 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      242 MOVE                             R24 R4
      243 CALL                             R21 3 1
      244 SETTABLEKS                       R21 R20 K85 ["QuestionList"]
      246 GETUPVAL                         R21 4
      247 GETUPVAL                         R22 5
      248 DUPTABLE                         R23 K91 [{["tag"] = "row align-x-right align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      249 MOVE                             R24 R7
      250 CALL                             R24 0 1
      251 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      253 DUPTABLE                         R24 K94 [{"EditButton", "ContinueButton"}]
      254 GETUPVAL                         R25 4
      255 GETUPVAL                         R26 14
      256 DUPTABLE                         R27 K96 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      257 GETTABLEKS                       R28 R3 K97 ["Edit"]
      259 SETTABLEKS                       R28 R27 K95 ["text"]
      261 GETUPVAL                         R28 15
      262 GETTABLEKS                       R28 R28 K77 ["XSmall"]
      264 SETTABLEKS                       R28 R27 K70 ["size"]
      266 GETUPVAL                         R28 11
      267 GETTABLEKS                       R28 R28 K53 ["Standard"]
      269 SETTABLEKS                       R28 R27 K71 ["variant"]
      271 GETTABLEKS                       R28 R0 K79 ["isSubmitting"]
      273 SETTABLEKS                       R28 R27 K72 ["isDisabled"]
      275 GETTABLEKS                       R28 R0 K98 ["onEdit"]
      277 SETTABLEKS                       R28 R27 K73 ["onActivated"]
      279 MOVE                             R28 R8
      280 CALL                             R28 0 1
      281 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      283 CALL                             R25 2 1
      284 SETTABLEKS                       R25 R24 K92 ["EditButton"]
      286 GETUPVAL                         R25 4
      287 GETUPVAL                         R26 14
      288 DUPTABLE                         R27 K96 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      289 GETTABLEKS                       R28 R3 K99 ["Continue"]
      291 SETTABLEKS                       R28 R27 K95 ["text"]
      293 GETUPVAL                         R28 15
      294 GETTABLEKS                       R28 R28 K77 ["XSmall"]
      296 SETTABLEKS                       R28 R27 K70 ["size"]
      298 GETUPVAL                         R28 11
      299 GETTABLEKS                       R28 R28 K100 ["Emphasis"]
      301 SETTABLEKS                       R28 R27 K71 ["variant"]
      303 GETTABLEKS                       R28 R0 K79 ["isSubmitting"]
      305 SETTABLEKS                       R28 R27 K72 ["isDisabled"]
      307 GETTABLEKS                       R28 R0 K101 ["onSubmit"]
      309 SETTABLEKS                       R28 R27 K73 ["onActivated"]
      311 MOVE                             R28 R8
      312 CALL                             R28 0 1
      313 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      315 CALL                             R25 2 1
      316 SETTABLEKS                       R25 R24 K93 ["ContinueButton"]
      318 CALL                             R21 3 1
      319 SETTABLEKS                       R21 R20 K86 ["ButtonGroup"]
      321 CALL                             R17 3 1
      322 SETTABLEKS                       R17 R16 K58 ["Body"]
      324 CALL                             R13 3 1
      325 SETTABLEKS                       R13 R12 K41 ["Container"]
      327 CALL                             R9 3 -1
      328 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["QuestionAnswerTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Util"]
       41 GETTABLEKS                       R6 R6 K12 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Resources"]
       48 GETTABLEKS                       R7 R7 K14 ["Localization"]
       50 GETTABLEKS                       R7 R7 K15 ["Translator"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K16 ["Button"]
       55 GETTABLEKS                       R8 R2 K17 ["Divider"]
       57 GETTABLEKS                       R9 R2 K18 ["IconButton"]
       59 GETTABLEKS                       R10 R2 K19 ["Text"]
       61 GETTABLEKS                       R11 R2 K20 ["View"]
       63 GETTABLEKS                       R12 R2 K21 ["Enums"]
       65 GETTABLEKS                       R12 R12 K22 ["ButtonSize"]
       67 GETTABLEKS                       R13 R2 K21 ["Enums"]
       69 GETTABLEKS                       R13 R13 K23 ["ButtonVariant"]
       71 GETTABLEKS                       R14 R2 K21 ["Enums"]
       73 GETTABLEKS                       R14 R14 K24 ["IconName"]
       75 GETTABLEKS                       R15 R2 K21 ["Enums"]
       77 GETTABLEKS                       R15 R15 K25 ["InputSize"]
       79 GETTABLEKS                       R16 R4 K26 ["createNextOrder"]
       81 GETTABLEKS                       R17 R3 K27 ["createElement"]
       83 GETIMPORT                        R18 K30 [UDim.new]
       85 LOADN                            R19 0
       86 LOADN                            R20 16
       87 CALL                             R18 2 1
       88 DUPCLOSURE                       R19 K31 [PROTO_1]
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R17
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R18
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R12
      105 RETURN                           R19 1
