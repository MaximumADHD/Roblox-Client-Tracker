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
       40 DUPTABLE                         R15 K11 [{["tag"] = "col gap-none size-full-0 auto-y padding-right-xsmall", ["LayoutOrder"]}]
       41 MOVE                             R16 R5
       42 CALL                             R16 0 1
       43 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       45 DUPTABLE                         R16 K14 [{"QuestionText", "AnswerText"}]
       46 GETUPVAL                         R17 4
       47 GETUPVAL                         R18 6
       48 DUPTABLE                         R19 K17 [{["tag"] = "auto-xy text-title-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
       49 GETTABLEKS                       R20 R10 K18 ["question"]
       51 SETTABLEKS                       R20 R19 K16 ["Text"]
       53 MOVE                             R20 R11
       54 CALL                             R20 0 1
       55 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
       57 CALL                             R17 2 1
       58 SETTABLEKS                       R17 R16 K12 ["QuestionText"]
       60 GETUPVAL                         R17 4
       61 GETUPVAL                         R18 6
       62 DUPTABLE                         R19 K20 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
       63 GETTABLEKS                       R20 R10 K21 ["chosenOption"]
       65 GETTABLEKS                       R20 R20 K22 ["optionText"]
       67 SETTABLEKS                       R20 R19 K16 ["Text"]
       69 MOVE                             R20 R11
       70 CALL                             R20 0 1
       71 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
       73 CALL                             R17 2 1
       74 SETTABLEKS                       R17 R16 K13 ["AnswerText"]
       76 CALL                             R13 3 1
       77 SETTABLE                         R13 R4 R12
       78 FORGLOOP                         R6 2 ; [-49]
       80 GETUPVAL                         R6 1
       81 CALL                             R6 0 1
       82 GETUPVAL                         R7 1
       83 CALL                             R7 0 1
       84 GETUPVAL                         R8 1
       85 CALL                             R8 0 1
       86 GETUPVAL                         R9 4
       87 LOADK                            R10 K23 ["CanvasGroup"]
       88 DUPTABLE                         R11 K32 [{["BackgroundTransparency"] = 1, ["GroupTransparency"] = 0, ["Size"], ["AutomaticSize"], ["LayoutOrder"], ["ClipsDescendants"] = True}]
       89 GETIMPORT                        R12 K35 [UDim2.fromScale]
       91 LOADN                            R13 1
       92 LOADN                            R14 0
       93 CALL                             R12 2 1
       94 SETTABLEKS                       R12 R11 K28 ["Size"]
       96 GETIMPORT                        R12 K38 [Enum.AutomaticSize.Y]
       98 SETTABLEKS                       R12 R11 K29 ["AutomaticSize"]
      100 GETTABLEKS                       R12 R0 K10 ["LayoutOrder"]
      102 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      104 DUPTABLE                         R12 K42 [{"Corner", "Stroke", "Container"}]
      105 GETUPVAL                         R13 4
      106 LOADK                            R14 K43 ["UICorner"]
      107 DUPTABLE                         R15 K45 [{"CornerRadius"}]
      108 GETUPVAL                         R16 7
      109 SETTABLEKS                       R16 R15 K44 ["CornerRadius"]
      111 CALL                             R13 2 1
      112 SETTABLEKS                       R13 R12 K39 ["Corner"]
      114 GETUPVAL                         R13 4
      115 LOADK                            R14 K46 ["UIStroke"]
      116 DUPTABLE                         R15 K50 [{"Color", "Transparency", "Thickness"}]
      117 GETTABLEKS                       R16 R1 K47 ["Color"]
      119 GETTABLEKS                       R16 R16 K40 ["Stroke"]
      121 GETTABLEKS                       R16 R16 K51 ["Default"]
      123 GETTABLEKS                       R16 R16 K52 ["Color3"]
      125 SETTABLEKS                       R16 R15 K47 ["Color"]
      127 GETTABLEKS                       R16 R1 K47 ["Color"]
      129 GETTABLEKS                       R16 R16 K40 ["Stroke"]
      131 GETTABLEKS                       R16 R16 K51 ["Default"]
      133 GETTABLEKS                       R16 R16 K48 ["Transparency"]
      135 SETTABLEKS                       R16 R15 K48 ["Transparency"]
      137 GETTABLEKS                       R16 R1 K40 ["Stroke"]
      139 GETTABLEKS                       R16 R16 K53 ["Standard"]
      141 SETTABLEKS                       R16 R15 K49 ["Thickness"]
      143 CALL                             R13 2 1
      144 SETTABLEKS                       R13 R12 K40 ["Stroke"]
      146 GETUPVAL                         R13 4
      147 GETUPVAL                         R14 5
      148 DUPTABLE                         R15 K55 [{["tag"] = "col gap-none size-full-0 auto-y radius-large"}]
      149 DUPTABLE                         R16 K59 [{"Header", "HeaderDivider", "Body"}]
      150 GETUPVAL                         R17 4
      151 GETUPVAL                         R18 5
      152 DUPTABLE                         R19 K61 [{["tag"] = "row align-y-center size-full-0 auto-y padding-y-xsmall padding-left-large padding-right-small bg-shift-100", ["LayoutOrder"]}]
      153 MOVE                             R20 R2
      154 CALL                             R20 0 1
      155 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      157 DUPTABLE                         R20 K64 [{"ReviewTitle", "DismissButton"}]
      158 GETUPVAL                         R21 4
      159 GETUPVAL                         R22 6
      160 DUPTABLE                         R23 K66 [{["tag"] = "fill auto-xy text-title-small content-emphasis", ["Text"], ["LayoutOrder"]}]
      161 GETTABLEKS                       R24 R3 K67 ["Review"]
      163 SETTABLEKS                       R24 R23 K16 ["Text"]
      165 MOVE                             R24 R6
      166 CALL                             R24 0 1
      167 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      169 CALL                             R21 2 1
      170 SETTABLEKS                       R21 R20 K62 ["ReviewTitle"]
      172 GETTABLEKS                       R21 R0 K68 ["onDismiss"]
      174 JUMPIFNOT                        R21 ; [+34]
      175 GETUPVAL                         R21 4
      176 GETUPVAL                         R22 8
      177 DUPTABLE                         R23 K74 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      178 GETUPVAL                         R24 9
      179 GETTABLEKS                       R24 R24 K75 ["X"]
      181 SETTABLEKS                       R24 R23 K69 ["icon"]
      183 GETUPVAL                         R24 10
      184 GETTABLEKS                       R24 R24 K76 ["XSmall"]
      186 SETTABLEKS                       R24 R23 K70 ["size"]
      188 GETUPVAL                         R24 11
      189 GETTABLEKS                       R24 R24 K77 ["Utility"]
      191 SETTABLEKS                       R24 R23 K71 ["variant"]
      193 GETTABLEKS                       R24 R0 K68 ["onDismiss"]
      195 SETTABLEKS                       R24 R23 K72 ["onActivated"]
      197 MOVE                             R24 R6
      198 CALL                             R24 0 1
      199 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      201 GETUPVAL                         R24 12
      202 GETTABLEKS                       R24 R24 K78 ["QuestionAnswer"]
      204 GETTABLEKS                       R24 R24 K79 ["Dismiss"]
      206 SETTABLEKS                       R24 R23 K73 ["testId"]
      208 CALL                             R21 2 1
      209 SETTABLEKS                       R21 R20 K63 ["DismissButton"]
      211 CALL                             R17 3 1
      212 SETTABLEKS                       R17 R16 K56 ["Header"]
      214 GETUPVAL                         R17 4
      215 GETUPVAL                         R18 13
      216 DUPTABLE                         R19 K80 [{"LayoutOrder"}]
      217 MOVE                             R20 R2
      218 CALL                             R20 0 1
      219 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      221 CALL                             R17 2 1
      222 SETTABLEKS                       R17 R16 K57 ["HeaderDivider"]
      224 GETUPVAL                         R17 4
      225 GETUPVAL                         R18 5
      226 DUPTABLE                         R19 K82 [{["tag"] = "col gap-large size-full-0 auto-y padding-x-large padding-y-medium", ["LayoutOrder"]}]
      227 MOVE                             R20 R2
      228 CALL                             R20 0 1
      229 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      231 DUPTABLE                         R20 K85 [{"QuestionList", "ButtonGroup"}]
      232 GETUPVAL                         R21 4
      233 GETUPVAL                         R22 5
      234 DUPTABLE                         R23 K87 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      235 MOVE                             R24 R7
      236 CALL                             R24 0 1
      237 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      239 MOVE                             R24 R4
      240 CALL                             R21 3 1
      241 SETTABLEKS                       R21 R20 K83 ["QuestionList"]
      243 GETUPVAL                         R21 4
      244 GETUPVAL                         R22 5
      245 DUPTABLE                         R23 K89 [{["tag"] = "row align-x-right align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      246 MOVE                             R24 R7
      247 CALL                             R24 0 1
      248 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      250 DUPTABLE                         R24 K92 [{"EditButton", "ContinueButton"}]
      251 GETUPVAL                         R25 4
      252 GETUPVAL                         R26 14
      253 DUPTABLE                         R27 K94 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      254 GETTABLEKS                       R28 R3 K95 ["Edit"]
      256 SETTABLEKS                       R28 R27 K93 ["text"]
      258 GETUPVAL                         R28 15
      259 GETTABLEKS                       R28 R28 K76 ["XSmall"]
      261 SETTABLEKS                       R28 R27 K70 ["size"]
      263 GETUPVAL                         R28 11
      264 GETTABLEKS                       R28 R28 K53 ["Standard"]
      266 SETTABLEKS                       R28 R27 K71 ["variant"]
      268 GETTABLEKS                       R28 R0 K96 ["onEdit"]
      270 SETTABLEKS                       R28 R27 K72 ["onActivated"]
      272 MOVE                             R28 R8
      273 CALL                             R28 0 1
      274 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      276 CALL                             R25 2 1
      277 SETTABLEKS                       R25 R24 K90 ["EditButton"]
      279 GETUPVAL                         R25 4
      280 GETUPVAL                         R26 14
      281 DUPTABLE                         R27 K94 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      282 GETTABLEKS                       R28 R3 K97 ["Continue"]
      284 SETTABLEKS                       R28 R27 K93 ["text"]
      286 GETUPVAL                         R28 15
      287 GETTABLEKS                       R28 R28 K76 ["XSmall"]
      289 SETTABLEKS                       R28 R27 K70 ["size"]
      291 GETUPVAL                         R28 11
      292 GETTABLEKS                       R28 R28 K98 ["Emphasis"]
      294 SETTABLEKS                       R28 R27 K71 ["variant"]
      296 GETTABLEKS                       R28 R0 K99 ["onSubmit"]
      298 SETTABLEKS                       R28 R27 K72 ["onActivated"]
      300 MOVE                             R28 R8
      301 CALL                             R28 0 1
      302 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      304 CALL                             R25 2 1
      305 SETTABLEKS                       R25 R24 K91 ["ContinueButton"]
      307 CALL                             R21 3 1
      308 SETTABLEKS                       R21 R20 K84 ["ButtonGroup"]
      310 CALL                             R17 3 1
      311 SETTABLEKS                       R17 R16 K58 ["Body"]
      313 CALL                             R13 3 1
      314 SETTABLEKS                       R13 R12 K41 ["Container"]
      316 CALL                             R9 3 -1
      317 RETURN                           R9 -1

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
