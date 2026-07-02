PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R1 K3 ["problems"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLE                         R3 R2 R4
       11 JUMPIFNOT                        R3 ; [+4]
       12 GETUPVAL                         R3 0
       13 LOADNIL                          R4
       14 SETTABLE                         R4 R2 R3
       15 JUMP                             ; [+3]
       16 GETUPVAL                         R3 0
       17 LOADB                            R4 1
       18 SETTABLE                         R4 R2 R3
       19 GETUPVAL                         R3 0
       20 JUMPIFNOTEQKS                    R3 K4 ["HeadLooksBad"] ; [+15]
       22 GETUPVAL                         R3 1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 LOADK                            R9 K5 ["Head%*"]
       27 MOVE                             R11 R7
       28 NAMECALL                         R9 R9 K6 ["format"]
       30 CALL                             R9 2 1
       31 MOVE                             R8 R9
       32 LOADNIL                          R9
       33 SETTABLE                         R9 R2 R8
       34 FORGLOOP                         R3 2 ; [-9]
       36 SETTABLEKS                       R2 R1 K3 ["problems"]
       38 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setResults"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{["Key"], ["Checked"], ["LayoutOrder"], ["OnClick"], ["Text"], ["TextWrapped"] = True}]
        5 SETTABLEKS                       R0 R3 K1 ["Key"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K9 ["results"]
       10 GETTABLEKS                       R5 R5 K10 ["problems"]
       12 GETTABLE                         R4 R5 R0
       13 SETTABLEKS                       R4 R3 K2 ["Checked"]
       15 GETUPVAL                         R4 3
       16 NAMECALL                         R4 R4 K11 ["getNextOrder"]
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       21 GETUPVAL                         R4 4
       22 SETTABLEKS                       R4 R3 K4 ["OnClick"]
       24 GETUPVAL                         R4 5
       25 LOADK                            R6 K12 ["Survey"]
       26 LOADK                            R8 K13 ["Problem%*"]
       27 MOVE                             R10 R0
       28 NAMECALL                         R8 R8 K14 ["format"]
       30 CALL                             R8 2 1
       31 MOVE                             R7 R8
       32 NAMECALL                         R4 R4 K15 ["getText"]
       34 CALL                             R4 3 1
       35 SETTABLEKS                       R4 R3 K5 ["Text"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["message"]
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setResults"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["rating"]
        7 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setResults"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setHeight"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        5 GETTABLEKS                       R2 R2 K2 ["Y"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Head%*"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 CALL                             R1 1 1
        8 MOVE                             R2 R0
        9 RETURN                           R1 2

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["Survey"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["new"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U4
       19 NEWTABLE                         R6 0 0
       21 CALL                             R4 2 1
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R1
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       32 NEWCLOSURE                       R7 P2
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R8 0 0
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       40 NEWCLOSURE                       R8 P3
       41 CAPTURE                          VAL R0
       42 NEWTABLE                         R9 0 0
       44 CALL                             R7 2 1
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R8 R8 K4 ["createElement"]
       48 GETUPVAL                         R9 6
       49 NEWTABLE                         R10 8 0
       51 GETIMPORT                        R11 K8 [Enum.AutomaticSize.Y]
       53 SETTABLEKS                       R11 R10 K6 ["AutomaticSize"]
       55 GETIMPORT                        R11 K11 [Enum.FillDirection.Vertical]
       57 SETTABLEKS                       R11 R10 K12 ["Layout"]
       59 GETTABLEKS                       R11 R2 K13 ["Spacing"]
       61 SETTABLEKS                       R11 R10 K13 ["Spacing"]
       63 GETIMPORT                        R11 K16 [Enum.HorizontalAlignment.Left]
       65 SETTABLEKS                       R11 R10 K14 ["HorizontalAlignment"]
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R11 R11 K17 ["Change"]
       70 GETTABLEKS                       R11 R11 K18 ["AbsoluteSize"]
       72 NEWCLOSURE                       R12 P4
       73 CAPTURE                          VAL R0
       74 SETTABLE                         R12 R10 R11
       75 DUPTABLE                         R11 K30 [{"PleaseRateYourExperience", "Stars", "Gap", "UserIntent", "WhatAreasShouldWeImproveOn", "CharacterDoesntBend", "CharacterWeirdBend", "BadLayeredClothing", "Heads", "Gap2", "Message"}]
       76 GETUPVAL                         R12 3
       77 GETTABLEKS                       R12 R12 K4 ["createElement"]
       79 GETUPVAL                         R13 7
       80 DUPTABLE                         R14 K35 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "Bold", ["Text"]}]
       81 GETIMPORT                        R15 K37 [Enum.AutomaticSize.XY]
       83 SETTABLEKS                       R15 R14 K6 ["AutomaticSize"]
       85 NAMECALL                         R15 R3 K38 ["getNextOrder"]
       87 CALL                             R15 1 1
       88 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
       90 LOADK                            R17 K1 ["Survey"]
       91 LOADK                            R18 K19 ["PleaseRateYourExperience"]
       92 NAMECALL                         R15 R1 K39 ["getText"]
       94 CALL                             R15 3 1
       95 SETTABLEKS                       R15 R14 K34 ["Text"]
       97 CALL                             R12 2 1
       98 SETTABLEKS                       R12 R11 K19 ["PleaseRateYourExperience"]
      100 GETUPVAL                         R12 3
      101 GETTABLEKS                       R12 R12 K4 ["createElement"]
      103 GETUPVAL                         R13 8
      104 DUPTABLE                         R14 K43 [{"layoutOrder", "rating", "setRating"}]
      105 NAMECALL                         R15 R3 K38 ["getNextOrder"]
      107 CALL                             R15 1 1
      108 SETTABLEKS                       R15 R14 K40 ["layoutOrder"]
      110 GETTABLEKS                       R15 R0 K44 ["results"]
      112 GETTABLEKS                       R15 R15 K41 ["rating"]
      114 SETTABLEKS                       R15 R14 K41 ["rating"]
      116 SETTABLEKS                       R7 R14 K42 ["setRating"]
      118 CALL                             R12 2 1
      119 SETTABLEKS                       R12 R11 K20 ["Stars"]
      121 GETUPVAL                         R12 3
      122 GETTABLEKS                       R12 R12 K4 ["createElement"]
      124 LOADK                            R13 K45 ["Frame"]
      125 DUPTABLE                         R14 K46 [{"LayoutOrder"}]
      126 NAMECALL                         R15 R3 K38 ["getNextOrder"]
      128 CALL                             R15 1 1
      129 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K21 ["Gap"]
      134 GETUPVAL                         R12 3
      135 GETTABLEKS                       R12 R12 K4 ["createElement"]
      137 GETUPVAL                         R13 3
      138 GETTABLEKS                       R13 R13 K47 ["Fragment"]
      140 NEWTABLE                         R14 0 0
      142 DUPTABLE                         R15 K52 [{"IntentForResults", "UseAsNPC", "UseForMarketplace", "Gap1"}]
      143 GETUPVAL                         R16 3
      144 GETTABLEKS                       R16 R16 K4 ["createElement"]
      146 GETUPVAL                         R17 7
      147 DUPTABLE                         R18 K35 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "Bold", ["Text"]}]
      148 GETIMPORT                        R19 K37 [Enum.AutomaticSize.XY]
      150 SETTABLEKS                       R19 R18 K6 ["AutomaticSize"]
      152 NAMECALL                         R19 R3 K38 ["getNextOrder"]
      154 CALL                             R19 1 1
      155 SETTABLEKS                       R19 R18 K31 ["LayoutOrder"]
      157 LOADK                            R21 K1 ["Survey"]
      158 LOADK                            R22 K48 ["IntentForResults"]
      159 NAMECALL                         R19 R1 K39 ["getText"]
      161 CALL                             R19 3 1
      162 SETTABLEKS                       R19 R18 K34 ["Text"]
      164 CALL                             R16 2 1
      165 SETTABLEKS                       R16 R15 K48 ["IntentForResults"]
      167 MOVE                             R16 R5
      168 LOADK                            R17 K49 ["UseAsNPC"]
      169 CALL                             R16 1 1
      170 SETTABLEKS                       R16 R15 K49 ["UseAsNPC"]
      172 MOVE                             R16 R5
      173 LOADK                            R17 K50 ["UseForMarketplace"]
      174 CALL                             R16 1 1
      175 SETTABLEKS                       R16 R15 K50 ["UseForMarketplace"]
      177 GETUPVAL                         R16 3
      178 GETTABLEKS                       R16 R16 K4 ["createElement"]
      180 LOADK                            R17 K45 ["Frame"]
      181 DUPTABLE                         R18 K46 [{"LayoutOrder"}]
      182 NAMECALL                         R19 R3 K38 ["getNextOrder"]
      184 CALL                             R19 1 1
      185 SETTABLEKS                       R19 R18 K31 ["LayoutOrder"]
      187 CALL                             R16 2 1
      188 SETTABLEKS                       R16 R15 K51 ["Gap1"]
      190 CALL                             R12 3 1
      191 SETTABLEKS                       R12 R11 K22 ["UserIntent"]
      193 GETUPVAL                         R12 3
      194 GETTABLEKS                       R12 R12 K4 ["createElement"]
      196 GETUPVAL                         R13 7
      197 DUPTABLE                         R14 K35 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "Bold", ["Text"]}]
      198 GETIMPORT                        R15 K37 [Enum.AutomaticSize.XY]
      200 SETTABLEKS                       R15 R14 K6 ["AutomaticSize"]
      202 NAMECALL                         R15 R3 K38 ["getNextOrder"]
      204 CALL                             R15 1 1
      205 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
      207 LOADK                            R17 K1 ["Survey"]
      208 LOADK                            R18 K23 ["WhatAreasShouldWeImproveOn"]
      209 NAMECALL                         R15 R1 K39 ["getText"]
      211 CALL                             R15 3 1
      212 SETTABLEKS                       R15 R14 K34 ["Text"]
      214 CALL                             R12 2 1
      215 SETTABLEKS                       R12 R11 K23 ["WhatAreasShouldWeImproveOn"]
      217 MOVE                             R12 R5
      218 LOADK                            R13 K24 ["CharacterDoesntBend"]
      219 CALL                             R12 1 1
      220 SETTABLEKS                       R12 R11 K24 ["CharacterDoesntBend"]
      222 MOVE                             R12 R5
      223 LOADK                            R13 K25 ["CharacterWeirdBend"]
      224 CALL                             R12 1 1
      225 SETTABLEKS                       R12 R11 K25 ["CharacterWeirdBend"]
      227 MOVE                             R12 R5
      228 LOADK                            R13 K26 ["BadLayeredClothing"]
      229 CALL                             R12 1 1
      230 SETTABLEKS                       R12 R11 K26 ["BadLayeredClothing"]
      232 GETUPVAL                         R12 3
      233 GETTABLEKS                       R12 R12 K4 ["createElement"]
      235 GETUPVAL                         R13 3
      236 GETTABLEKS                       R13 R13 K47 ["Fragment"]
      238 NEWTABLE                         R14 0 0
      240 DUPTABLE                         R15 K55 [{"HeadLooksBad", "SpecificProblems"}]
      241 MOVE                             R16 R5
      242 LOADK                            R17 K53 ["HeadLooksBad"]
      243 CALL                             R16 1 1
      244 SETTABLEKS                       R16 R15 K53 ["HeadLooksBad"]
      246 GETTABLEKS                       R17 R0 K44 ["results"]
      248 GETTABLEKS                       R17 R17 K56 ["problems"]
      250 GETTABLEKS                       R16 R17 K53 ["HeadLooksBad"]
      252 JUMPIFNOT                        R16 ; [+86]
      253 GETUPVAL                         R16 3
      254 GETTABLEKS                       R16 R16 K4 ["createElement"]
      256 GETUPVAL                         R17 6
      257 DUPTABLE                         R18 K57 [{"AutomaticSize", "LayoutOrder", "Spacing", "Layout", "HorizontalAlignment"}]
      258 GETIMPORT                        R19 K8 [Enum.AutomaticSize.Y]
      260 SETTABLEKS                       R19 R18 K6 ["AutomaticSize"]
      262 NAMECALL                         R19 R3 K38 ["getNextOrder"]
      264 CALL                             R19 1 1
      265 SETTABLEKS                       R19 R18 K31 ["LayoutOrder"]
      267 GETTABLEKS                       R19 R2 K13 ["Spacing"]
      269 SETTABLEKS                       R19 R18 K13 ["Spacing"]
      271 GETIMPORT                        R19 K11 [Enum.FillDirection.Vertical]
      273 SETTABLEKS                       R19 R18 K12 ["Layout"]
      275 GETIMPORT                        R19 K16 [Enum.HorizontalAlignment.Left]
      277 SETTABLEKS                       R19 R18 K14 ["HorizontalAlignment"]
      279 DUPTABLE                         R19 K60 [{"UIPadding", "Specifically", "SpecificProblems"}]
      280 GETUPVAL                         R20 3
      281 GETTABLEKS                       R20 R20 K4 ["createElement"]
      283 LOADK                            R21 K58 ["UIPadding"]
      284 DUPTABLE                         R22 K62 [{"PaddingLeft"}]
      285 GETIMPORT                        R23 K64 [UDim.new]
      287 LOADN                            R24 0
      288 GETTABLEKS                       R25 R2 K65 ["HeadIndent"]
      290 CALL                             R23 2 1
      291 SETTABLEKS                       R23 R22 K61 ["PaddingLeft"]
      293 CALL                             R20 2 1
      294 SETTABLEKS                       R20 R19 K58 ["UIPadding"]
      296 GETUPVAL                         R20 3
      297 GETTABLEKS                       R20 R20 K4 ["createElement"]
      299 GETUPVAL                         R21 7
      300 DUPTABLE                         R22 K66 [{"AutomaticSize", "LayoutOrder", "Text"}]
      301 GETIMPORT                        R23 K37 [Enum.AutomaticSize.XY]
      303 SETTABLEKS                       R23 R22 K6 ["AutomaticSize"]
      305 NAMECALL                         R23 R3 K38 ["getNextOrder"]
      307 CALL                             R23 1 1
      308 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      310 LOADK                            R25 K1 ["Survey"]
      311 LOADK                            R26 K59 ["Specifically"]
      312 NAMECALL                         R23 R1 K39 ["getText"]
      314 CALL                             R23 3 1
      315 SETTABLEKS                       R23 R22 K34 ["Text"]
      317 CALL                             R20 2 1
      318 SETTABLEKS                       R20 R19 K59 ["Specifically"]
      320 GETUPVAL                         R20 3
      321 GETTABLEKS                       R20 R20 K4 ["createElement"]
      323 GETUPVAL                         R21 3
      324 GETTABLEKS                       R21 R21 K47 ["Fragment"]
      326 NEWTABLE                         R22 0 0
      328 GETUPVAL                         R23 9
      329 GETTABLEKS                       R23 R23 K67 ["map"]
      331 GETUPVAL                         R24 4
      332 NEWCLOSURE                       R25 P5
      333 CAPTURE                          VAL R5
      334 CALL                             R23 2 -1
      335 CALL                             R20 -1 1
      336 SETTABLEKS                       R20 R19 K54 ["SpecificProblems"]
      338 CALL                             R16 3 1
      339 SETTABLEKS                       R16 R15 K54 ["SpecificProblems"]
      341 CALL                             R12 3 1
      342 SETTABLEKS                       R12 R11 K27 ["Heads"]
      344 GETUPVAL                         R12 3
      345 GETTABLEKS                       R12 R12 K4 ["createElement"]
      347 LOADK                            R13 K45 ["Frame"]
      348 DUPTABLE                         R14 K46 [{"LayoutOrder"}]
      349 NAMECALL                         R15 R3 K38 ["getNextOrder"]
      351 CALL                             R15 1 1
      352 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
      354 CALL                             R12 2 1
      355 SETTABLEKS                       R12 R11 K28 ["Gap2"]
      357 GETUPVAL                         R12 3
      358 GETTABLEKS                       R12 R12 K4 ["createElement"]
      360 GETUPVAL                         R13 10
      361 DUPTABLE                         R14 K73 [{["MultiLine"] = True, ["LayoutOrder"], ["Size"], ["PlaceholderText"], ["Text"], ["OnTextChanged"]}]
      362 NAMECALL                         R15 R3 K38 ["getNextOrder"]
      364 CALL                             R15 1 1
      365 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
      367 GETIMPORT                        R15 K75 [UDim2.new]
      369 LOADN                            R16 1
      370 LOADN                            R17 0
      371 LOADN                            R18 0
      372 GETTABLEKS                       R19 R2 K76 ["MessageHeight"]
      374 CALL                             R15 4 1
      375 SETTABLEKS                       R15 R14 K70 ["Size"]
      377 LOADK                            R17 K1 ["Survey"]
      378 LOADK                            R18 K77 ["MessagePlaceholder"]
      379 NAMECALL                         R15 R1 K39 ["getText"]
      381 CALL                             R15 3 1
      382 SETTABLEKS                       R15 R14 K71 ["PlaceholderText"]
      384 GETTABLEKS                       R15 R0 K44 ["results"]
      386 GETTABLEKS                       R15 R15 K78 ["message"]
      388 SETTABLEKS                       R15 R14 K34 ["Text"]
      390 SETTABLEKS                       R6 R14 K72 ["OnTextChanged"]
      392 CALL                             R12 2 1
      393 SETTABLEKS                       R12 R11 K29 ["Message"]
      395 CALL                             R8 3 -1
      396 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["SurveyDialog"]
       36 GETTABLEKS                       R5 R5 K13 ["Stars"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Types"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Resources"]
       52 GETTABLEKS                       R7 R7 K16 ["Theme"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R2 K17 ["UI"]
       57 GETTABLEKS                       R8 R7 K18 ["Checkbox"]
       59 GETTABLEKS                       R9 R7 K19 ["Pane"]
       61 GETTABLEKS                       R10 R7 K20 ["TextInput"]
       63 GETTABLEKS                       R11 R7 K21 ["TextLabel"]
       65 GETTABLEKS                       R12 R2 K22 ["ContextServices"]
       67 GETTABLEKS                       R12 R12 K23 ["Localization"]
       69 GETTABLEKS                       R13 R2 K22 ["ContextServices"]
       71 GETTABLEKS                       R13 R13 K24 ["Stylizer"]
       73 GETTABLEKS                       R14 R2 K25 ["Util"]
       75 GETTABLEKS                       R14 R14 K26 ["LayoutOrderIterator"]
       77 NEWTABLE                         R15 0 6
       79 LOADK                            R16 K27 ["Teeth"]
       80 LOADK                            R17 K28 ["Mouth"]
       81 LOADK                            R18 K29 ["Eyes"]
       82 LOADK                            R19 K30 ["Eyebrows"]
       83 LOADK                            R20 K31 ["Eyelashes"]
       84 LOADK                            R21 K32 ["Hair"]
       85 SETLIST                          R15 R16 6 [1]
       87 DUPCLOSURE                       R16 K33 [PROTO_9]
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R10
       99 RETURN                           R16 1
