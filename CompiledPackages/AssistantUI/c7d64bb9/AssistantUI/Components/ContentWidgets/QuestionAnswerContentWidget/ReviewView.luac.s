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
       32 LOADK                            R13 K6 ["QA_%*"]
       33 MOVE                             R15 R9
       34 NAMECALL                         R13 R13 K7 ["format"]
       36 CALL                             R13 2 1
       37 MOVE                             R12 R13
       38 GETUPVAL                         R13 4
       39 GETUPVAL                         R14 5
       40 DUPTABLE                         R15 K10 [{"tag", "LayoutOrder"}]
       41 LOADK                            R16 K11 ["col size-full-0 auto-y gap-none padding-right-xsmall"]
       42 SETTABLEKS                       R16 R15 K8 ["tag"]
       44 MOVE                             R16 R5
       45 CALL                             R16 0 1
       46 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
       48 DUPTABLE                         R16 K14 [{"QuestionText", "AnswerText"}]
       49 GETUPVAL                         R17 4
       50 GETUPVAL                         R18 6
       51 DUPTABLE                         R19 K16 [{"tag", "Text", "LayoutOrder"}]
       52 LOADK                            R20 K17 ["auto-xy text-title-small content-emphasis text-wrap text-align-x-left"]
       53 SETTABLEKS                       R20 R19 K8 ["tag"]
       55 GETTABLEKS                       R20 R10 K18 ["question"]
       57 SETTABLEKS                       R20 R19 K15 ["Text"]
       59 MOVE                             R20 R11
       60 CALL                             R20 0 1
       61 SETTABLEKS                       R20 R19 K9 ["LayoutOrder"]
       63 CALL                             R17 2 1
       64 SETTABLEKS                       R17 R16 K12 ["QuestionText"]
       66 GETUPVAL                         R17 4
       67 GETUPVAL                         R18 6
       68 DUPTABLE                         R19 K16 [{"tag", "Text", "LayoutOrder"}]
       69 LOADK                            R20 K19 ["auto-xy text-body-small content-default text-wrap text-align-x-left"]
       70 SETTABLEKS                       R20 R19 K8 ["tag"]
       72 GETTABLEKS                       R20 R10 K20 ["chosenOption"]
       74 GETTABLEKS                       R20 R20 K21 ["optionText"]
       76 SETTABLEKS                       R20 R19 K15 ["Text"]
       78 MOVE                             R20 R11
       79 CALL                             R20 0 1
       80 SETTABLEKS                       R20 R19 K9 ["LayoutOrder"]
       82 CALL                             R17 2 1
       83 SETTABLEKS                       R17 R16 K13 ["AnswerText"]
       85 CALL                             R13 3 1
       86 SETTABLE                         R13 R4 R12
       87 FORGLOOP                         R6 2 ; [-58]
       89 GETUPVAL                         R6 1
       90 CALL                             R6 0 1
       91 GETUPVAL                         R7 1
       92 CALL                             R7 0 1
       93 GETUPVAL                         R8 1
       94 CALL                             R8 0 1
       95 GETUPVAL                         R9 4
       96 LOADK                            R10 K22 ["CanvasGroup"]
       97 DUPTABLE                         R11 K28 [{"BackgroundTransparency", "GroupTransparency", "Size", "AutomaticSize", "LayoutOrder", "ClipsDescendants"}]
       98 LOADN                            R12 1
       99 SETTABLEKS                       R12 R11 K23 ["BackgroundTransparency"]
      101 LOADN                            R12 0
      102 SETTABLEKS                       R12 R11 K24 ["GroupTransparency"]
      104 GETIMPORT                        R12 K31 [UDim2.fromScale]
      106 LOADN                            R13 1
      107 LOADN                            R14 0
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K25 ["Size"]
      111 GETIMPORT                        R12 K34 [Enum.AutomaticSize.Y]
      113 SETTABLEKS                       R12 R11 K26 ["AutomaticSize"]
      115 GETTABLEKS                       R12 R0 K9 ["LayoutOrder"]
      117 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      119 LOADB                            R12 1
      120 SETTABLEKS                       R12 R11 K27 ["ClipsDescendants"]
      122 DUPTABLE                         R12 K38 [{"Corner", "Stroke", "Container"}]
      123 GETUPVAL                         R13 4
      124 LOADK                            R14 K39 ["UICorner"]
      125 DUPTABLE                         R15 K41 [{"CornerRadius"}]
      126 GETUPVAL                         R16 7
      127 SETTABLEKS                       R16 R15 K40 ["CornerRadius"]
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R12 K35 ["Corner"]
      132 GETUPVAL                         R13 4
      133 LOADK                            R14 K42 ["UIStroke"]
      134 DUPTABLE                         R15 K46 [{"Color", "Transparency", "Thickness"}]
      135 GETTABLEKS                       R16 R1 K43 ["Color"]
      137 GETTABLEKS                       R16 R16 K36 ["Stroke"]
      139 GETTABLEKS                       R16 R16 K47 ["Default"]
      141 GETTABLEKS                       R16 R16 K48 ["Color3"]
      143 SETTABLEKS                       R16 R15 K43 ["Color"]
      145 GETTABLEKS                       R16 R1 K43 ["Color"]
      147 GETTABLEKS                       R16 R16 K36 ["Stroke"]
      149 GETTABLEKS                       R16 R16 K47 ["Default"]
      151 GETTABLEKS                       R16 R16 K44 ["Transparency"]
      153 SETTABLEKS                       R16 R15 K44 ["Transparency"]
      155 GETTABLEKS                       R16 R1 K36 ["Stroke"]
      157 GETTABLEKS                       R16 R16 K49 ["Standard"]
      159 SETTABLEKS                       R16 R15 K45 ["Thickness"]
      161 CALL                             R13 2 1
      162 SETTABLEKS                       R13 R12 K36 ["Stroke"]
      164 GETUPVAL                         R13 4
      165 GETUPVAL                         R14 5
      166 DUPTABLE                         R15 K50 [{"tag"}]
      167 LOADK                            R16 K51 ["col size-full-0 auto-y gap-none radius-large"]
      168 SETTABLEKS                       R16 R15 K8 ["tag"]
      170 DUPTABLE                         R16 K55 [{"Header", "HeaderDivider", "Body"}]
      171 GETUPVAL                         R17 4
      172 GETUPVAL                         R18 5
      173 DUPTABLE                         R19 K10 [{"tag", "LayoutOrder"}]
      174 LOADK                            R20 K56 ["row size-full-0 auto-y align-y-center bg-shift-100 padding-left-large padding-right-small padding-y-xsmall"]
      175 SETTABLEKS                       R20 R19 K8 ["tag"]
      177 MOVE                             R20 R2
      178 CALL                             R20 0 1
      179 SETTABLEKS                       R20 R19 K9 ["LayoutOrder"]
      181 DUPTABLE                         R20 K59 [{"ReviewTitle", "DismissButton"}]
      182 GETUPVAL                         R21 4
      183 GETUPVAL                         R22 6
      184 DUPTABLE                         R23 K16 [{"tag", "Text", "LayoutOrder"}]
      185 LOADK                            R24 K60 ["auto-xy fill text-title-small content-emphasis"]
      186 SETTABLEKS                       R24 R23 K8 ["tag"]
      188 GETTABLEKS                       R24 R3 K61 ["Review"]
      190 SETTABLEKS                       R24 R23 K15 ["Text"]
      192 MOVE                             R24 R6
      193 CALL                             R24 0 1
      194 SETTABLEKS                       R24 R23 K9 ["LayoutOrder"]
      196 CALL                             R21 2 1
      197 SETTABLEKS                       R21 R20 K57 ["ReviewTitle"]
      199 GETTABLEKS                       R21 R0 K62 ["onDismiss"]
      201 JUMPIFNOT                        R21 ; [+34]
      202 GETUPVAL                         R21 4
      203 GETUPVAL                         R22 8
      204 DUPTABLE                         R23 K68 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      205 GETUPVAL                         R24 9
      206 GETTABLEKS                       R24 R24 K69 ["X"]
      208 SETTABLEKS                       R24 R23 K63 ["icon"]
      210 GETUPVAL                         R24 10
      211 GETTABLEKS                       R24 R24 K70 ["XSmall"]
      213 SETTABLEKS                       R24 R23 K64 ["size"]
      215 GETUPVAL                         R24 11
      216 GETTABLEKS                       R24 R24 K71 ["Utility"]
      218 SETTABLEKS                       R24 R23 K65 ["variant"]
      220 GETTABLEKS                       R24 R0 K62 ["onDismiss"]
      222 SETTABLEKS                       R24 R23 K66 ["onActivated"]
      224 MOVE                             R24 R6
      225 CALL                             R24 0 1
      226 SETTABLEKS                       R24 R23 K9 ["LayoutOrder"]
      228 GETUPVAL                         R24 12
      229 GETTABLEKS                       R24 R24 K72 ["QuestionAnswer"]
      231 GETTABLEKS                       R24 R24 K73 ["Dismiss"]
      233 SETTABLEKS                       R24 R23 K67 ["testId"]
      235 CALL                             R21 2 1
      236 SETTABLEKS                       R21 R20 K58 ["DismissButton"]
      238 CALL                             R17 3 1
      239 SETTABLEKS                       R17 R16 K52 ["Header"]
      241 GETUPVAL                         R17 4
      242 GETUPVAL                         R18 13
      243 DUPTABLE                         R19 K74 [{"LayoutOrder"}]
      244 MOVE                             R20 R2
      245 CALL                             R20 0 1
      246 SETTABLEKS                       R20 R19 K9 ["LayoutOrder"]
      248 CALL                             R17 2 1
      249 SETTABLEKS                       R17 R16 K53 ["HeaderDivider"]
      251 GETUPVAL                         R17 4
      252 GETUPVAL                         R18 5
      253 DUPTABLE                         R19 K10 [{"tag", "LayoutOrder"}]
      254 LOADK                            R20 K75 ["col size-full-0 auto-y gap-large padding-x-large padding-y-medium"]
      255 SETTABLEKS                       R20 R19 K8 ["tag"]
      257 MOVE                             R20 R2
      258 CALL                             R20 0 1
      259 SETTABLEKS                       R20 R19 K9 ["LayoutOrder"]
      261 DUPTABLE                         R20 K78 [{"QuestionList", "ButtonGroup"}]
      262 GETUPVAL                         R21 4
      263 GETUPVAL                         R22 5
      264 DUPTABLE                         R23 K10 [{"tag", "LayoutOrder"}]
      265 LOADK                            R24 K79 ["col size-full-0 auto-y gap-small"]
      266 SETTABLEKS                       R24 R23 K8 ["tag"]
      268 MOVE                             R24 R7
      269 CALL                             R24 0 1
      270 SETTABLEKS                       R24 R23 K9 ["LayoutOrder"]
      272 MOVE                             R24 R4
      273 CALL                             R21 3 1
      274 SETTABLEKS                       R21 R20 K76 ["QuestionList"]
      276 GETUPVAL                         R21 4
      277 GETUPVAL                         R22 5
      278 DUPTABLE                         R23 K10 [{"tag", "LayoutOrder"}]
      279 LOADK                            R24 K80 ["row size-full-0 auto-y gap-small align-x-right align-y-center"]
      280 SETTABLEKS                       R24 R23 K8 ["tag"]
      282 MOVE                             R24 R7
      283 CALL                             R24 0 1
      284 SETTABLEKS                       R24 R23 K9 ["LayoutOrder"]
      286 DUPTABLE                         R24 K83 [{"EditButton", "ContinueButton"}]
      287 GETUPVAL                         R25 4
      288 GETUPVAL                         R26 14
      289 DUPTABLE                         R27 K85 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      290 GETTABLEKS                       R28 R3 K86 ["Edit"]
      292 SETTABLEKS                       R28 R27 K84 ["text"]
      294 GETUPVAL                         R28 15
      295 GETTABLEKS                       R28 R28 K70 ["XSmall"]
      297 SETTABLEKS                       R28 R27 K64 ["size"]
      299 GETUPVAL                         R28 11
      300 GETTABLEKS                       R28 R28 K49 ["Standard"]
      302 SETTABLEKS                       R28 R27 K65 ["variant"]
      304 GETTABLEKS                       R28 R0 K87 ["onEdit"]
      306 SETTABLEKS                       R28 R27 K66 ["onActivated"]
      308 MOVE                             R28 R8
      309 CALL                             R28 0 1
      310 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      312 CALL                             R25 2 1
      313 SETTABLEKS                       R25 R24 K81 ["EditButton"]
      315 GETUPVAL                         R25 4
      316 GETUPVAL                         R26 14
      317 DUPTABLE                         R27 K85 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      318 GETTABLEKS                       R28 R3 K88 ["Continue"]
      320 SETTABLEKS                       R28 R27 K84 ["text"]
      322 GETUPVAL                         R28 15
      323 GETTABLEKS                       R28 R28 K70 ["XSmall"]
      325 SETTABLEKS                       R28 R27 K64 ["size"]
      327 GETUPVAL                         R28 11
      328 GETTABLEKS                       R28 R28 K89 ["Emphasis"]
      330 SETTABLEKS                       R28 R27 K65 ["variant"]
      332 GETTABLEKS                       R28 R0 K90 ["onSubmit"]
      334 SETTABLEKS                       R28 R27 K66 ["onActivated"]
      336 MOVE                             R28 R8
      337 CALL                             R28 0 1
      338 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      340 CALL                             R25 2 1
      341 SETTABLEKS                       R25 R24 K82 ["ContinueButton"]
      343 CALL                             R21 3 1
      344 SETTABLEKS                       R21 R20 K77 ["ButtonGroup"]
      346 CALL                             R17 3 1
      347 SETTABLEKS                       R17 R16 K54 ["Body"]
      349 CALL                             R13 3 1
      350 SETTABLEKS                       R13 R12 K37 ["Container"]
      352 CALL                             R9 3 -1
      353 RETURN                           R9 -1

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
