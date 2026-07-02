PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["frameRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 GETTABLEKS                       R1 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R1 R1 K3 ["x"]
        9 GETUPVAL                         R2 0
       10 DUPTABLE                         R4 K5 [{"maxChildWidth"}]
       11 SETTABLEKS                       R1 R4 K4 ["maxChildWidth"]
       13 NAMECALL                         R2 R2 K6 ["setState"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["createRef"]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K3 ["frameRef"]
       11 DUPTABLE                         R1 K8 [{["maxChildWidth"] = 0, ["questionnaireButtonClicked"] = False}]
       12 SETTABLEKS                       R1 R0 K9 ["state"]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K10 ["updateSize"]
       18 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["updateSize"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 1
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["GuiService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADK                            R3 K4 ["https://devforum.roblox.com/t/important-updates-unrated-experiences-and-changes-to-experience-pages/3899317"]
        7 NAMECALL                         R1 R0 K5 ["OpenBrowserWindow"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["props"]
        7 GETTABLEKS                       R2 R1 K3 ["Stylizer"]
        9 GETTABLEKS                       R3 R1 K4 ["Localization"]
       11 GETTABLEKS                       R4 R1 K5 ["GameId"]
       13 GETTABLEKS                       R5 R1 K6 ["LayoutOrder"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K7 ["new"]
       18 CALL                             R6 0 1
       19 LOADK                            R9 K8 ["Guidelines"]
       20 LOADK                            R10 K9 ["SectionTitleMaturity"]
       21 NAMECALL                         R7 R3 K10 ["getText"]
       23 CALL                             R7 3 1
       24 LOADNIL                          R8
       25 LOADNIL                          R9
       26 LOADNIL                          R10
       27 GETTABLEKS                       R11 R1 K11 ["GameGuideline"]
       29 JUMPIFNOT                        R11 ; [+7]
       30 LOADK                            R13 K8 ["Guidelines"]
       31 LOADK                            R14 K12 ["UpdateQuestionnaire"]
       32 NAMECALL                         R11 R3 K10 ["getText"]
       34 CALL                             R11 3 1
       35 MOVE                             R9 R11
       36 JUMP                             ; [+6]
       37 LOADK                            R13 K8 ["Guidelines"]
       38 LOADK                            R14 K13 ["SubmitQuestionnaire"]
       39 NAMECALL                         R11 R3 K10 ["getText"]
       41 CALL                             R11 3 1
       42 MOVE                             R9 R11
       43 GETUPVAL                         R11 2
       44 MOVE                             R12 R9
       45 GETTABLEKS                       R13 R2 K14 ["fontStyle"]
       47 GETTABLEKS                       R13 R13 K15 ["Normal"]
       49 GETTABLEKS                       R13 R13 K16 ["TextSize"]
       51 GETTABLEKS                       R14 R2 K14 ["fontStyle"]
       53 GETTABLEKS                       R14 R14 K15 ["Normal"]
       55 GETTABLEKS                       R14 R14 K17 ["Font"]
       57 GETIMPORT                        R15 K19 [Vector2.new]
       59 LOADK                            R16 K20 [∞]
       60 LOADK                            R17 K20 [∞]
       61 CALL                             R15 2 -1
       62 CALL                             R11 -1 1
       63 MOVE                             R10 R11
       64 LOADK                            R13 K8 ["Guidelines"]
       65 LOADK                            R14 K21 ["17PlusWarning"]
       66 NAMECALL                         R11 R3 K10 ["getText"]
       68 CALL                             R11 3 1
       69 MOVE                             R8 R11
       70 GETTABLEKS                       R11 R1 K11 ["GameGuideline"]
       72 JUMPIF                           R11 ; [+8]
       73 MOVE                             R11 R8
       74 LOADK                            R12 K22 [" "]
       75 LOADK                            R15 K8 ["Guidelines"]
       76 LOADK                            R16 K23 ["UnavailableNoticeText"]
       77 NAMECALL                         R13 R3 K10 ["getText"]
       79 CALL                             R13 3 1
       80 CONCAT                           R8 R11 R13
       81 GETUPVAL                         R11 3
       82 GETTABLEKS                       R11 R11 K24 ["createElement"]
       84 LOADK                            R12 K25 ["Frame"]
       85 GETUPVAL                         R13 4
       86 GETTABLEKS                       R13 R13 K26 ["Dictionary"]
       88 GETTABLEKS                       R13 R13 K27 ["join"]
       90 DUPTABLE                         R14 K28 [{"LayoutOrder"}]
       91 SETTABLEKS                       R5 R14 K6 ["LayoutOrder"]
       93 GETTABLEKS                       R15 R2 K29 ["guidelinesFrame"]
       95 CALL                             R13 2 1
       96 DUPTABLE                         R14 K32 [{"Title", "DescriptionFrame"}]
       97 GETUPVAL                         R15 3
       98 GETTABLEKS                       R15 R15 K24 ["createElement"]
      100 GETUPVAL                         R16 5
      101 GETUPVAL                         R17 4
      102 GETTABLEKS                       R17 R17 K26 ["Dictionary"]
      104 GETTABLEKS                       R17 R17 K27 ["join"]
      106 DUPTABLE                         R18 K34 [{"Text"}]
      107 SETTABLEKS                       R7 R18 K33 ["Text"]
      109 GETTABLEKS                       R19 R2 K35 ["guidelinesTitle"]
      111 CALL                             R17 2 -1
      112 CALL                             R15 -1 1
      113 SETTABLEKS                       R15 R14 K30 ["Title"]
      115 GETUPVAL                         R15 3
      116 GETTABLEKS                       R15 R15 K24 ["createElement"]
      118 LOADK                            R16 K25 ["Frame"]
      119 GETUPVAL                         R17 4
      120 GETTABLEKS                       R17 R17 K26 ["Dictionary"]
      122 GETTABLEKS                       R17 R17 K27 ["join"]
      124 NEWTABLE                         R18 2 0
      126 GETUPVAL                         R19 3
      127 GETTABLEKS                       R19 R19 K36 ["Ref"]
      129 GETTABLEKS                       R20 R0 K37 ["frameRef"]
      131 SETTABLE                         R20 R18 R19
      132 GETUPVAL                         R19 3
      133 GETTABLEKS                       R19 R19 K38 ["Change"]
      135 GETTABLEKS                       R19 R19 K39 ["AbsoluteSize"]
      137 GETTABLEKS                       R20 R0 K40 ["updateSize"]
      139 SETTABLE                         R20 R18 R19
      140 GETTABLEKS                       R19 R2 K41 ["guidelinesDescriptionFrame"]
      142 CALL                             R17 2 1
      143 DUPTABLE                         R18 K46 [{"Layout", "ChosenGuideline", "OpenQuestionnaireButton", "GuidelinesQuestionnaireInfo"}]
      144 GETUPVAL                         R19 3
      145 GETTABLEKS                       R19 R19 K24 ["createElement"]
      147 LOADK                            R20 K47 ["UIListLayout"]
      148 GETTABLEKS                       R21 R2 K48 ["guidelinesDescriptionListLayout"]
      150 CALL                             R19 2 1
      151 SETTABLEKS                       R19 R18 K42 ["Layout"]
      153 GETUPVAL                         R19 3
      154 GETTABLEKS                       R19 R19 K24 ["createElement"]
      156 GETUPVAL                         R20 5
      157 GETUPVAL                         R21 4
      158 GETTABLEKS                       R21 R21 K26 ["Dictionary"]
      160 GETTABLEKS                       R21 R21 K27 ["join"]
      162 DUPTABLE                         R22 K50 [{"Text", "LayoutOrder", "TextTransparency"}]
      163 GETTABLEKS                       R23 R1 K11 ["GameGuideline"]
      165 JUMPIF                           R23 ; [+12]
      166 LOADK                            R25 K8 ["Guidelines"]
      167 GETTABLEKS                       R27 R0 K51 ["state"]
      169 GETTABLEKS                       R27 R27 K52 ["questionnaireButtonClicked"]
      171 JUMPIFNOT                        R27 ; [+2]
      172 LOADK                            R26 K53 ["Pending"]
      173 JUMP                             ; [+1]
      174 LOADK                            R26 K54 ["NotSubmitted"]
      175 NAMECALL                         R23 R3 K10 ["getText"]
      177 CALL                             R23 3 1
      178 SETTABLEKS                       R23 R22 K33 ["Text"]
      180 NAMECALL                         R23 R6 K55 ["getNextOrder"]
      182 CALL                             R23 1 1
      183 SETTABLEKS                       R23 R22 K6 ["LayoutOrder"]
      185 GETTABLEKS                       R24 R1 K11 ["GameGuideline"]
      187 JUMPIFNOT                        R24 ; [+2]
      188 LOADN                            R23 0
      189 JUMP                             ; [+1]
      190 LOADK                            R23 K56 [0.5]
      191 SETTABLEKS                       R23 R22 K49 ["TextTransparency"]
      193 GETTABLEKS                       R23 R2 K57 ["chosenGuidelineText"]
      195 CALL                             R21 2 -1
      196 CALL                             R19 -1 1
      197 SETTABLEKS                       R19 R18 K43 ["ChosenGuideline"]
      199 GETUPVAL                         R19 3
      200 GETTABLEKS                       R19 R19 K24 ["createElement"]
      202 GETUPVAL                         R20 6
      203 GETUPVAL                         R21 4
      204 GETTABLEKS                       R21 R21 K26 ["Dictionary"]
      206 GETTABLEKS                       R21 R21 K27 ["join"]
      208 DUPTABLE                         R22 K60 [{"Size", "Text", "OnClick", "LayoutOrder"}]
      209 GETIMPORT                        R23 K62 [UDim2.new]
      211 LOADN                            R24 0
      212 GETTABLEKS                       R26 R10 K63 ["X"]
      214 GETTABLEKS                       R27 R2 K64 ["openQuestionnaireButton"]
      216 GETTABLEKS                       R27 R27 K65 ["PaddingX"]
      218 ADD                              R25 R26 R27
      219 LOADN                            R26 0
      220 GETTABLEKS                       R28 R10 K66 ["Y"]
      222 GETTABLEKS                       R29 R2 K64 ["openQuestionnaireButton"]
      224 GETTABLEKS                       R29 R29 K67 ["PaddingY"]
      226 ADD                              R27 R28 R29
      227 CALL                             R23 4 1
      228 SETTABLEKS                       R23 R22 K58 ["Size"]
      230 SETTABLEKS                       R9 R22 K33 ["Text"]
      232 NEWCLOSURE                       R23 P0
      233 CAPTURE                          VAL R0
      234 CAPTURE                          UPVAL U7
      235 CAPTURE                          VAL R4
      236 SETTABLEKS                       R23 R22 K59 ["OnClick"]
      238 NAMECALL                         R23 R6 K55 ["getNextOrder"]
      240 CALL                             R23 1 1
      241 SETTABLEKS                       R23 R22 K6 ["LayoutOrder"]
      243 GETTABLEKS                       R23 R2 K64 ["openQuestionnaireButton"]
      245 CALL                             R21 2 -1
      246 CALL                             R19 -1 1
      247 SETTABLEKS                       R19 R18 K44 ["OpenQuestionnaireButton"]
      249 GETUPVAL                         R19 3
      250 GETTABLEKS                       R19 R19 K24 ["createElement"]
      252 GETUPVAL                         R20 8
      253 DUPTABLE                         R21 K71 [{["Layout"], ["AutomaticSize"], ["Spacing"] = 6, ["LayoutOrder"]}]
      254 GETIMPORT                        R22 K75 [Enum.FillDirection.Horizontal]
      256 SETTABLEKS                       R22 R21 K42 ["Layout"]
      258 GETIMPORT                        R22 K76 [Enum.AutomaticSize.Y]
      260 SETTABLEKS                       R22 R21 K68 ["AutomaticSize"]
      262 NAMECALL                         R22 R6 K55 ["getNextOrder"]
      264 CALL                             R22 1 1
      265 SETTABLEKS                       R22 R21 K6 ["LayoutOrder"]
      267 DUPTABLE                         R22 K78 [{"Icon", "Text"}]
      268 GETTABLEKS                       R24 R1 K11 ["GameGuideline"]
      270 JUMPIF                           R24 ; [+22]
      271 GETUPVAL                         R23 3
      272 GETTABLEKS                       R23 R23 K24 ["createElement"]
      274 LOADK                            R24 K79 ["ImageLabel"]
      275 DUPTABLE                         R25 K85 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["Size"], ["LayoutOrder"] = 0}]
      276 GETTABLEKS                       R26 R2 K86 ["warningIcon"]
      278 SETTABLEKS                       R26 R25 K82 ["Image"]
      280 GETTABLEKS                       R26 R2 K87 ["warningColor"]
      282 SETTABLEKS                       R26 R25 K83 ["ImageColor3"]
      284 GETIMPORT                        R26 K89 [UDim2.fromOffset]
      286 LOADN                            R27 16
      287 LOADN                            R28 16
      288 CALL                             R26 2 1
      289 SETTABLEKS                       R26 R25 K58 ["Size"]
      291 CALL                             R23 2 1
      292 JUMP                             ; [+1]
      293 LOADNIL                          R23
      294 SETTABLEKS                       R23 R22 K77 ["Icon"]
      296 GETUPVAL                         R23 3
      297 GETTABLEKS                       R23 R23 K24 ["createElement"]
      299 GETUPVAL                         R24 9
      300 GETUPVAL                         R25 4
      301 GETTABLEKS                       R25 R25 K26 ["Dictionary"]
      303 GETTABLEKS                       R25 R25 K27 ["join"]
      305 DUPTABLE                         R26 K100 [{["Text"], ["OnLinkClicked"], ["LinkText"], ["LinkPlaceholder"], ["MaxWidth"], ["TextProps"], ["HorizontalAlignment"], ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 1, ["TextWrapped"] = True}]
      306 GETTABLEKS                       R28 R1 K11 ["GameGuideline"]
      308 JUMPIFNOT                        R28 ; [+6]
      309 LOADK                            R29 K8 ["Guidelines"]
      310 LOADK                            R30 K101 ["RetakeQuestionnaireMaturity"]
      311 NAMECALL                         R27 R3 K10 ["getText"]
      313 CALL                             R27 3 1
      314 JUMP                             ; [+13]
      315 LOADK                            R29 K8 ["Guidelines"]
      316 LOADK                            R30 K102 ["UnratedExpPlayabilityWaring"]
      317 DUPTABLE                         R31 K104 [{"link"}]
      318 LOADK                            R34 K8 ["Guidelines"]
      319 LOADK                            R35 K105 ["UnratedExpPlayabilityWaringLink"]
      320 NAMECALL                         R32 R3 K10 ["getText"]
      322 CALL                             R32 3 1
      323 SETTABLEKS                       R32 R31 K103 ["link"]
      325 NAMECALL                         R27 R3 K10 ["getText"]
      327 CALL                             R27 4 1
      328 SETTABLEKS                       R27 R26 K33 ["Text"]
      330 DUPCLOSURE                       R27 K106 [PROTO_4]
      331 SETTABLEKS                       R27 R26 K90 ["OnLinkClicked"]
      333 LOADK                            R29 K8 ["Guidelines"]
      334 LOADK                            R30 K105 ["UnratedExpPlayabilityWaringLink"]
      335 NAMECALL                         R27 R3 K10 ["getText"]
      337 CALL                             R27 3 1
      338 SETTABLEKS                       R27 R26 K91 ["LinkText"]
      340 LOADK                            R29 K8 ["Guidelines"]
      341 LOADK                            R30 K105 ["UnratedExpPlayabilityWaringLink"]
      342 NAMECALL                         R27 R3 K10 ["getText"]
      344 CALL                             R27 3 1
      345 SETTABLEKS                       R27 R26 K92 ["LinkPlaceholder"]
      347 GETTABLEKS                       R28 R0 K51 ["state"]
      349 GETTABLEKS                       R28 R28 K108 ["maxChildWidth"]
      351 SUBK                             R27 R28 K107 [22]
      352 SETTABLEKS                       R27 R26 K93 ["MaxWidth"]
      354 GETUPVAL                         R27 4
      355 GETTABLEKS                       R27 R27 K26 ["Dictionary"]
      357 GETTABLEKS                       R27 R27 K27 ["join"]
      359 GETTABLEKS                       R28 R2 K14 ["fontStyle"]
      361 GETTABLEKS                       R28 R28 K109 ["Warning"]
      363 DUPTABLE                         R29 K110 [{["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
      364 GETIMPORT                        R30 K112 [Enum.TextXAlignment.Left]
      366 SETTABLEKS                       R30 R29 K96 ["TextXAlignment"]
      368 CALL                             R27 2 1
      369 SETTABLEKS                       R27 R26 K94 ["TextProps"]
      371 GETIMPORT                        R27 K113 [Enum.HorizontalAlignment.Left]
      373 SETTABLEKS                       R27 R26 K95 ["HorizontalAlignment"]
      375 GETIMPORT                        R27 K112 [Enum.TextXAlignment.Left]
      377 SETTABLEKS                       R27 R26 K96 ["TextXAlignment"]
      379 GETIMPORT                        R27 K115 [Enum.TextYAlignment.Top]
      381 SETTABLEKS                       R27 R26 K97 ["TextYAlignment"]
      383 GETTABLEKS                       R27 R2 K116 ["guidelinesDescriptionText"]
      385 CALL                             R25 2 -1
      386 CALL                             R23 -1 1
      387 SETTABLEKS                       R23 R22 K33 ["Text"]
      389 CALL                             R19 3 1
      390 SETTABLEKS                       R19 R18 K45 ["GuidelinesQuestionnaireInfo"]
      392 CALL                             R15 3 1
      393 SETTABLEKS                       R15 R14 K31 ["DescriptionFrame"]
      395 CALL                             R11 3 -1
      396 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["GameSettingsExperienceGuidelines"]
       14 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Roact"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K11 ["PureComponent"]
       26 GETIMPORT                        R5 K1 [script]
       28 GETTABLEKS                       R5 R5 K12 ["Name"]
       30 NAMECALL                         R3 R3 K13 ["extend"]
       32 CALL                             R3 2 1
       33 GETIMPORT                        R4 K8 [require]
       35 GETTABLEKS                       R5 R0 K14 ["Src"]
       37 GETTABLEKS                       R5 R5 K15 ["Util"]
       39 GETTABLEKS                       R5 R5 K16 ["BrowserUtils"]
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R4 R4 K17 ["OpenExperienceQuestionnaire"]
       44 GETIMPORT                        R5 K8 [require]
       46 GETTABLEKS                       R6 R0 K14 ["Src"]
       48 GETTABLEKS                       R6 R6 K15 ["Util"]
       50 GETTABLEKS                       R6 R6 K16 ["BrowserUtils"]
       52 CALL                             R5 1 1
       53 GETTABLEKS                       R5 R5 K18 ["OpenExperienceSettings"]
       55 GETIMPORT                        R6 K8 [require]
       57 GETTABLEKS                       R7 R0 K9 ["Packages"]
       59 GETTABLEKS                       R7 R7 K19 ["Framework"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R6 K20 ["ContextServices"]
       64 GETTABLEKS                       R8 R7 K21 ["withContext"]
       66 GETIMPORT                        R9 K8 [require]
       68 GETTABLEKS                       R10 R0 K9 ["Packages"]
       70 GETTABLEKS                       R10 R10 K22 ["Cryo"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R10 R6 K15 ["Util"]
       75 GETTABLEKS                       R10 R10 K23 ["LayoutOrderIterator"]
       77 GETTABLEKS                       R11 R6 K24 ["UI"]
       79 GETTABLEKS                       R12 R11 K25 ["TextLabel"]
       81 GETTABLEKS                       R13 R11 K26 ["Button"]
       83 GETTABLEKS                       R14 R11 K27 ["TextWithInlineLink"]
       85 GETTABLEKS                       R15 R11 K28 ["Pane"]
       87 GETTABLEKS                       R16 R6 K15 ["Util"]
       89 GETTABLEKS                       R16 R16 K29 ["GetTextSize"]
       91 DUPCLOSURE                       R17 K30 [PROTO_1]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R2
       94 SETTABLEKS                       R17 R3 K31 ["init"]
       96 DUPCLOSURE                       R17 K32 [PROTO_2]
       97 SETTABLEKS                       R17 R3 K33 ["didMount"]
       99 DUPCLOSURE                       R17 K34 [PROTO_5]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R14
      110 SETTABLEKS                       R17 R3 K35 ["render"]
      112 MOVE                             R17 R8
      113 DUPTABLE                         R18 K38 [{"Localization", "Stylizer"}]
      114 GETTABLEKS                       R19 R7 K36 ["Localization"]
      116 SETTABLEKS                       R19 R18 K36 ["Localization"]
      118 GETTABLEKS                       R19 R7 K37 ["Stylizer"]
      120 SETTABLEKS                       R19 R18 K37 ["Stylizer"]
      122 CALL                             R17 1 1
      123 MOVE                             R18 R3
      124 CALL                             R17 1 1
      125 MOVE                             R3 R17
      126 RETURN                           R3 1
