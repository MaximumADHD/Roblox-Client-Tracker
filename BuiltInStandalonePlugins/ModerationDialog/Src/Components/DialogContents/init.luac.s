PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 NEWTABLE                         R5 8 0
        6 LOADB                            R6 1
        7 SETTABLEKS                       R6 R5 K1 ["TextWrapped"]
        9 GETIMPORT                        R6 K5 [Enum.HorizontalAlignment.Left]
       11 SETTABLEKS                       R6 R5 K3 ["HorizontalAlignment"]
       13 SETTABLEKS                       R1 R5 K6 ["Text"]
       15 GETUPVAL                         R6 2
       16 SETTABLEKS                       R6 R5 K7 ["TextProps"]
       18 SETTABLEKS                       R2 R5 K8 ["LinkMap"]
       20 SETTABLEKS                       R0 R5 K9 ["LayoutOrder"]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K10 ["Tag"]
       25 LOADK                            R7 K11 ["X-FitY"]
       26 SETTABLE                         R7 R5 R6
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R1 R3 K0 ["BaseUrl"]
        3 LOADK                            R2 K1 ["report-appeals?t_source=studio-nap"]
        4 CONCAT                           R0 R1 R2
        5 GETUPVAL                         R1 1
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K2 ["OpenBrowserWindow"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetChecked"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["Checked"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 DUPTABLE                         R3 K3 [{"DialogContainer"}]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K4 ["createElement"]
       12 LOADK                            R5 K5 ["Frame"]
       13 NEWTABLE                         R6 2 0
       15 NAMECALL                         R7 R2 K6 ["getNextOrder"]
       17 CALL                             R7 1 1
       18 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K8 ["Tag"]
       23 LOADK                            R8 K9 ["X-Fill X-Column Component-DialogContents"]
       24 SETTABLE                         R8 R6 R7
       25 DUPTABLE                         R7 K20 [{"Body", "ReviewedNote", "Separator1", "Reason", "Separator2", "Guidelines", "ReactivateDateNote", "AppealPortal", "ToUAgreement", "AgreeCheckBox"}]
       26 NAMECALL                         R9 R2 K6 ["getNextOrder"]
       28 CALL                             R9 1 1
       29 LOADK                            R12 K21 ["WarningHeader"]
       30 LOADK                            R13 K22 ["WarningLink"]
       31 NAMECALL                         R10 R1 K23 ["getText"]
       33 CALL                             R10 3 1
       34 NEWTABLE                         R11 1 0
       36 DUPTABLE                         R12 K26 [{"LinkText", "LinkCallback"}]
       37 LOADK                            R15 K27 ["Links"]
       38 LOADK                            R16 K28 ["ToULink"]
       39 NAMECALL                         R13 R1 K23 ["getText"]
       41 CALL                             R13 3 1
       42 SETTABLEKS                       R13 R12 K24 ["LinkText"]
       44 DUPCLOSURE                       R13 K29 [PROTO_1]
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U4
       47 SETTABLEKS                       R13 R12 K25 ["LinkCallback"]
       49 SETTABLEKS                       R12 R11 K30 ["[link1]"]
       51 GETUPVAL                         R13 2
       52 GETTABLEKS                       R12 R13 K4 ["createElement"]
       54 GETUPVAL                         R13 5
       55 NEWTABLE                         R14 8 0
       57 LOADB                            R15 1
       58 SETTABLEKS                       R15 R14 K31 ["TextWrapped"]
       60 GETIMPORT                        R15 K35 [Enum.HorizontalAlignment.Left]
       62 SETTABLEKS                       R15 R14 K33 ["HorizontalAlignment"]
       64 SETTABLEKS                       R10 R14 K36 ["Text"]
       66 GETUPVAL                         R15 6
       67 SETTABLEKS                       R15 R14 K37 ["TextProps"]
       69 SETTABLEKS                       R11 R14 K38 ["LinkMap"]
       71 SETTABLEKS                       R9 R14 K7 ["LayoutOrder"]
       73 GETUPVAL                         R16 2
       74 GETTABLEKS                       R15 R16 K8 ["Tag"]
       76 LOADK                            R16 K39 ["X-FitY"]
       77 SETTABLE                         R16 R14 R15
       78 CALL                             R12 2 1
       79 MOVE                             R8 R12
       80 SETTABLEKS                       R8 R7 K10 ["Body"]
       82 GETUPVAL                         R9 2
       83 GETTABLEKS                       R8 R9 K4 ["createElement"]
       85 GETUPVAL                         R9 7
       86 DUPTABLE                         R10 K42 [{"ReviewDateTime", "ModeratorNote", "LayoutOrder"}]
       87 GETTABLEKS                       R11 R0 K40 ["ReviewDateTime"]
       89 SETTABLEKS                       R11 R10 K40 ["ReviewDateTime"]
       91 GETTABLEKS                       R11 R0 K41 ["ModeratorNote"]
       93 SETTABLEKS                       R11 R10 K41 ["ModeratorNote"]
       95 NAMECALL                         R11 R2 K6 ["getNextOrder"]
       97 CALL                             R11 1 1
       98 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K11 ["ReviewedNote"]
      103 GETUPVAL                         R9 2
      104 GETTABLEKS                       R8 R9 K4 ["createElement"]
      106 LOADK                            R9 K5 ["Frame"]
      107 NEWTABLE                         R10 2 0
      109 NAMECALL                         R11 R2 K6 ["getNextOrder"]
      111 CALL                             R11 1 1
      112 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
      114 GETUPVAL                         R12 2
      115 GETTABLEKS                       R11 R12 K8 ["Tag"]
      117 LOADK                            R12 K43 ["Separator"]
      118 SETTABLE                         R12 R10 R11
      119 CALL                             R8 2 1
      120 SETTABLEKS                       R8 R7 K12 ["Separator1"]
      122 GETTABLEKS                       R8 R0 K13 ["Reason"]
      124 JUMPIFNOT                        R8 ; [+32]
      125 GETUPVAL                         R9 2
      126 GETTABLEKS                       R8 R9 K4 ["createElement"]
      128 GETUPVAL                         R9 8
      129 DUPTABLE                         R10 K46 [{"Reason", "OffensiveItem", "Url", "LayoutOrder"}]
      130 GETUPVAL                         R11 9
      131 MOVE                             R12 R1
      132 GETTABLEKS                       R14 R0 K13 ["Reason"]
      134 GETTABLEKS                       R13 R14 K47 ["abuseType"]
      136 CALL                             R11 2 1
      137 SETTABLEKS                       R11 R10 K13 ["Reason"]
      139 GETTABLEKS                       R12 R0 K13 ["Reason"]
      141 GETTABLEKS                       R11 R12 K48 ["utteranceText"]
      143 SETTABLEKS                       R11 R10 K44 ["OffensiveItem"]
      145 GETTABLEKS                       R12 R0 K13 ["Reason"]
      147 GETTABLEKS                       R11 R12 K49 ["url"]
      149 SETTABLEKS                       R11 R10 K45 ["Url"]
      151 NAMECALL                         R11 R2 K6 ["getNextOrder"]
      153 CALL                             R11 1 1
      154 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
      156 CALL                             R8 2 1
      157 SETTABLEKS                       R8 R7 K13 ["Reason"]
      159 GETTABLEKS                       R8 R0 K13 ["Reason"]
      161 JUMPIFNOT                        R8 ; [+17]
      162 GETUPVAL                         R9 2
      163 GETTABLEKS                       R8 R9 K4 ["createElement"]
      165 LOADK                            R9 K5 ["Frame"]
      166 NEWTABLE                         R10 2 0
      168 NAMECALL                         R11 R2 K6 ["getNextOrder"]
      170 CALL                             R11 1 1
      171 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
      173 GETUPVAL                         R12 2
      174 GETTABLEKS                       R11 R12 K8 ["Tag"]
      176 LOADK                            R12 K43 ["Separator"]
      177 SETTABLE                         R12 R10 R11
      178 CALL                             R8 2 1
      179 SETTABLEKS                       R8 R7 K14 ["Separator2"]
      181 NAMECALL                         R9 R2 K6 ["getNextOrder"]
      183 CALL                             R9 1 1
      184 LOADK                            R12 K50 ["AccountDisabled"]
      185 LOADK                            R13 K15 ["Guidelines"]
      186 NAMECALL                         R10 R1 K23 ["getText"]
      188 CALL                             R10 3 1
      189 NEWTABLE                         R11 1 0
      191 DUPTABLE                         R12 K26 [{"LinkText", "LinkCallback"}]
      192 LOADK                            R15 K27 ["Links"]
      193 LOADK                            R16 K51 ["GuidelinesLink"]
      194 NAMECALL                         R13 R1 K23 ["getText"]
      196 CALL                             R13 3 1
      197 SETTABLEKS                       R13 R12 K24 ["LinkText"]
      199 DUPCLOSURE                       R13 K52 [PROTO_2]
      200 CAPTURE                          UPVAL U3
      201 CAPTURE                          UPVAL U10
      202 SETTABLEKS                       R13 R12 K25 ["LinkCallback"]
      204 SETTABLEKS                       R12 R11 K30 ["[link1]"]
      206 GETUPVAL                         R13 2
      207 GETTABLEKS                       R12 R13 K4 ["createElement"]
      209 GETUPVAL                         R13 5
      210 NEWTABLE                         R14 8 0
      212 LOADB                            R15 1
      213 SETTABLEKS                       R15 R14 K31 ["TextWrapped"]
      215 GETIMPORT                        R15 K35 [Enum.HorizontalAlignment.Left]
      217 SETTABLEKS                       R15 R14 K33 ["HorizontalAlignment"]
      219 SETTABLEKS                       R10 R14 K36 ["Text"]
      221 GETUPVAL                         R15 6
      222 SETTABLEKS                       R15 R14 K37 ["TextProps"]
      224 SETTABLEKS                       R11 R14 K38 ["LinkMap"]
      226 SETTABLEKS                       R9 R14 K7 ["LayoutOrder"]
      228 GETUPVAL                         R16 2
      229 GETTABLEKS                       R15 R16 K8 ["Tag"]
      231 LOADK                            R16 K39 ["X-FitY"]
      232 SETTABLE                         R16 R14 R15
      233 CALL                             R12 2 1
      234 MOVE                             R8 R12
      235 SETTABLEKS                       R8 R7 K15 ["Guidelines"]
      237 LOADB                            R8 0
      238 GETTABLEKS                       R9 R0 K53 ["Type"]
      240 JUMPIFEQKS                       R9 K54 ["Warn"] ; [+16]
      242 GETUPVAL                         R9 2
      243 GETTABLEKS                       R8 R9 K4 ["createElement"]
      245 GETUPVAL                         R9 11
      246 DUPTABLE                         R10 K56 [{"BannedDateTime", "LayoutOrder"}]
      247 GETTABLEKS                       R11 R0 K55 ["BannedDateTime"]
      249 SETTABLEKS                       R11 R10 K55 ["BannedDateTime"]
      251 NAMECALL                         R11 R2 K6 ["getNextOrder"]
      253 CALL                             R11 1 1
      254 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
      256 CALL                             R8 2 1
      257 SETTABLEKS                       R8 R7 K16 ["ReactivateDateNote"]
      259 NAMECALL                         R9 R2 K6 ["getNextOrder"]
      261 CALL                             R9 1 1
      262 LOADK                            R12 K50 ["AccountDisabled"]
      263 LOADK                            R13 K57 ["Appeal"]
      264 NAMECALL                         R10 R1 K23 ["getText"]
      266 CALL                             R10 3 1
      267 NEWTABLE                         R11 1 0
      269 DUPTABLE                         R12 K26 [{"LinkText", "LinkCallback"}]
      270 LOADK                            R15 K27 ["Links"]
      271 LOADK                            R16 K17 ["AppealPortal"]
      272 NAMECALL                         R13 R1 K23 ["getText"]
      274 CALL                             R13 3 1
      275 SETTABLEKS                       R13 R12 K24 ["LinkText"]
      277 DUPCLOSURE                       R13 K58 [PROTO_3]
      278 CAPTURE                          UPVAL U12
      279 CAPTURE                          UPVAL U3
      280 SETTABLEKS                       R13 R12 K25 ["LinkCallback"]
      282 SETTABLEKS                       R12 R11 K30 ["[link1]"]
      284 GETUPVAL                         R13 2
      285 GETTABLEKS                       R12 R13 K4 ["createElement"]
      287 GETUPVAL                         R13 5
      288 NEWTABLE                         R14 8 0
      290 LOADB                            R15 1
      291 SETTABLEKS                       R15 R14 K31 ["TextWrapped"]
      293 GETIMPORT                        R15 K35 [Enum.HorizontalAlignment.Left]
      295 SETTABLEKS                       R15 R14 K33 ["HorizontalAlignment"]
      297 SETTABLEKS                       R10 R14 K36 ["Text"]
      299 GETUPVAL                         R15 6
      300 SETTABLEKS                       R15 R14 K37 ["TextProps"]
      302 SETTABLEKS                       R11 R14 K38 ["LinkMap"]
      304 SETTABLEKS                       R9 R14 K7 ["LayoutOrder"]
      306 GETUPVAL                         R16 2
      307 GETTABLEKS                       R15 R16 K8 ["Tag"]
      309 LOADK                            R16 K39 ["X-FitY"]
      310 SETTABLE                         R16 R14 R15
      311 CALL                             R12 2 1
      312 MOVE                             R8 R12
      313 SETTABLEKS                       R8 R7 K17 ["AppealPortal"]
      315 LOADB                            R8 0
      316 GETTABLEKS                       R9 R0 K53 ["Type"]
      318 JUMPIFNOTEQKS                    R9 K54 ["Warn"] ; [+55]
      320 NAMECALL                         R9 R2 K6 ["getNextOrder"]
      322 CALL                             R9 1 1
      323 LOADK                            R12 K59 ["Agreement"]
      324 LOADK                            R13 K60 ["TermsOfUse"]
      325 NAMECALL                         R10 R1 K23 ["getText"]
      327 CALL                             R10 3 1
      328 NEWTABLE                         R11 1 0
      330 DUPTABLE                         R12 K26 [{"LinkText", "LinkCallback"}]
      331 LOADK                            R15 K27 ["Links"]
      332 LOADK                            R16 K28 ["ToULink"]
      333 NAMECALL                         R13 R1 K23 ["getText"]
      335 CALL                             R13 3 1
      336 SETTABLEKS                       R13 R12 K24 ["LinkText"]
      338 DUPCLOSURE                       R13 K61 [PROTO_4]
      339 CAPTURE                          UPVAL U3
      340 CAPTURE                          UPVAL U4
      341 SETTABLEKS                       R13 R12 K25 ["LinkCallback"]
      343 SETTABLEKS                       R12 R11 K30 ["[link1]"]
      345 GETUPVAL                         R13 2
      346 GETTABLEKS                       R12 R13 K4 ["createElement"]
      348 GETUPVAL                         R13 5
      349 NEWTABLE                         R14 8 0
      351 LOADB                            R15 1
      352 SETTABLEKS                       R15 R14 K31 ["TextWrapped"]
      354 GETIMPORT                        R15 K35 [Enum.HorizontalAlignment.Left]
      356 SETTABLEKS                       R15 R14 K33 ["HorizontalAlignment"]
      358 SETTABLEKS                       R10 R14 K36 ["Text"]
      360 GETUPVAL                         R15 6
      361 SETTABLEKS                       R15 R14 K37 ["TextProps"]
      363 SETTABLEKS                       R11 R14 K38 ["LinkMap"]
      365 SETTABLEKS                       R9 R14 K7 ["LayoutOrder"]
      367 GETUPVAL                         R16 2
      368 GETTABLEKS                       R15 R16 K8 ["Tag"]
      370 LOADK                            R16 K39 ["X-FitY"]
      371 SETTABLE                         R16 R14 R15
      372 CALL                             R12 2 1
      373 MOVE                             R8 R12
      374 SETTABLEKS                       R8 R7 K18 ["ToUAgreement"]
      376 LOADB                            R8 0
      377 GETTABLEKS                       R9 R0 K53 ["Type"]
      379 JUMPIFNOTEQKS                    R9 K54 ["Warn"] ; [+33]
      381 GETUPVAL                         R9 2
      382 GETTABLEKS                       R8 R9 K4 ["createElement"]
      384 GETUPVAL                         R9 13
      385 NEWTABLE                         R10 8 0
      387 NAMECALL                         R11 R2 K6 ["getNextOrder"]
      389 CALL                             R11 1 1
      390 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
      392 LOADK                            R13 K59 ["Agreement"]
      393 LOADK                            R14 K62 ["IAgree"]
      394 NAMECALL                         R11 R1 K23 ["getText"]
      396 CALL                             R11 3 1
      397 SETTABLEKS                       R11 R10 K36 ["Text"]
      399 GETTABLEKS                       R11 R0 K63 ["Checked"]
      401 SETTABLEKS                       R11 R10 K63 ["Checked"]
      403 NEWCLOSURE                       R11 P4
      404 CAPTURE                          VAL R0
      405 SETTABLEKS                       R11 R10 K64 ["OnChecked"]
      407 GETUPVAL                         R12 2
      408 GETTABLEKS                       R11 R12 K8 ["Tag"]
      410 LOADK                            R12 K39 ["X-FitY"]
      411 SETTABLE                         R12 R10 R11
      412 CALL                             R8 2 1
      413 SETTABLEKS                       R8 R7 K19 ["AgreeCheckBox"]
      415 CALL                             R4 3 1
      416 SETTABLEKS                       R4 R3 K2 ["DialogContainer"]
      418 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R6 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R6 K12 ["TextWithLinks"]
       29 GETTABLEKS                       R7 R2 K13 ["Util"]
       31 GETTABLEKS                       R6 R7 K14 ["LayoutOrderIterator"]
       33 GETTABLEKS                       R8 R0 K15 ["Src"]
       35 GETTABLEKS                       R7 R8 K16 ["Components"]
       37 GETIMPORT                        R8 K5 [require]
       39 GETTABLEKS                       R9 R7 K17 ["Checkbox"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R7 K18 ["Reason"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R7 K19 ["ReviewedNote"]
       51 CALL                             R10 1 1
       52 GETIMPORT                        R11 K5 [require]
       54 GETTABLEKS                       R12 R7 K20 ["ReactivateDateNote"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K5 [require]
       59 GETTABLEKS                       R15 R0 K15 ["Src"]
       61 GETTABLEKS                       R14 R15 K13 ["Util"]
       63 GETTABLEKS                       R13 R14 K21 ["AbuseTypeToString"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K23 [game]
       68 LOADK                            R15 K24 ["BrowserService"]
       69 NAMECALL                         R13 R13 K25 ["GetService"]
       71 CALL                             R13 2 1
       72 GETIMPORT                        R14 K23 [game]
       74 LOADK                            R16 K26 ["ContentProvider"]
       75 NAMECALL                         R14 R14 K25 ["GetService"]
       77 CALL                             R14 2 1
       78 GETIMPORT                        R15 K23 [game]
       80 LOADK                            R17 K27 ["ModerationDialogToULink"]
       81 LOADK                            R18 K28 ["https://en.help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use"]
       82 NAMECALL                         R15 R15 K29 ["DefineFastString"]
       84 CALL                             R15 3 1
       85 GETIMPORT                        R16 K23 [game]
       87 LOADK                            R18 K30 ["ModerationDialogCommunityGuidelinesLink"]
       88 LOADK                            R19 K31 ["https://en.help.roblox.com/hc/en-us/articles/203313410-Roblox-Community-Standards"]
       89 NAMECALL                         R16 R16 K29 ["DefineFastString"]
       91 CALL                             R16 3 1
       92 DUPTABLE                         R17 K35 [{"Font", "TextSize", "TextXAlignment"}]
       93 GETIMPORT                        R18 K38 [Enum.Font.SourceSans]
       95 SETTABLEKS                       R18 R17 K32 ["Font"]
       97 LOADN                            R18 16
       98 SETTABLEKS                       R18 R17 K33 ["TextSize"]
      100 GETIMPORT                        R18 K40 [Enum.TextXAlignment.Left]
      102 SETTABLEKS                       R18 R17 K34 ["TextXAlignment"]
      104 DUPCLOSURE                       R18 K41 [PROTO_0]
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R17
      108 DUPCLOSURE                       R19 K42 [PROTO_6]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R8
      123 RETURN                           R19 1
