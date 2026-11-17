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
       20 JUMPIFNOTEQKS                    R3 K4 ["HeadLooksBad"] ; [+14]
       22 GETUPVAL                         R3 1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 LOADK                            R8 K5 ["Head%*"]
       27 MOVE                             R10 R7
       28 NAMECALL                         R8 R8 K6 ["format"]
       30 CALL                             R8 2 1
       31 LOADNIL                          R9
       32 SETTABLE                         R9 R2 R8
       33 FORGLOOP                         R3 2 ; [-8]
       35 SETTABLEKS                       R2 R1 K3 ["problems"]
       37 RETURN                           R1 1

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
       26 LOADK                            R7 K13 ["Problem%*"]
       27 MOVE                             R9 R0
       28 NAMECALL                         R7 R7 K14 ["format"]
       30 CALL                             R7 2 1
       31 NAMECALL                         R4 R4 K15 ["getText"]
       33 CALL                             R4 3 1
       34 SETTABLEKS                       R4 R3 K5 ["Text"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

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
        1 LOADK                            R2 K0 ["Head%*"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R2 R2 K1 ["format"]
        5 CALL                             R2 2 1
        6 CALL                             R1 1 1
        7 MOVE                             R2 R0
        8 RETURN                           R1 2

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
       75 DUPTABLE                         R11 K24 [{"PleaseRateYourExperience", "Stars", "Gap", "AutoSetupQuestions", "Message"}]
       76 GETUPVAL                         R12 3
       77 GETTABLEKS                       R12 R12 K4 ["createElement"]
       79 GETUPVAL                         R13 7
       80 DUPTABLE                         R14 K29 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "Bold", ["Text"]}]
       81 GETIMPORT                        R15 K31 [Enum.AutomaticSize.XY]
       83 SETTABLEKS                       R15 R14 K6 ["AutomaticSize"]
       85 NAMECALL                         R15 R3 K32 ["getNextOrder"]
       87 CALL                             R15 1 1
       88 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
       90 GETTABLEKS                       R18 R0 K33 ["survey"]
       92 JUMPIFNOTEQKS                    R18 K34 ["AvatarCreation"] ; [+3]
       94 LOADK                            R17 K35 ["PromptToAvatarSurvey"]
       95 JUMP                             ; [+1]
       96 LOADK                            R17 K1 ["Survey"]
       97 LOADK                            R18 K19 ["PleaseRateYourExperience"]
       98 NAMECALL                         R15 R1 K36 ["getText"]
      100 CALL                             R15 3 1
      101 SETTABLEKS                       R15 R14 K28 ["Text"]
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K19 ["PleaseRateYourExperience"]
      106 GETUPVAL                         R12 3
      107 GETTABLEKS                       R12 R12 K4 ["createElement"]
      109 GETUPVAL                         R13 8
      110 DUPTABLE                         R14 K40 [{"layoutOrder", "rating", "setRating"}]
      111 NAMECALL                         R15 R3 K32 ["getNextOrder"]
      113 CALL                             R15 1 1
      114 SETTABLEKS                       R15 R14 K37 ["layoutOrder"]
      116 GETTABLEKS                       R15 R0 K41 ["results"]
      118 GETTABLEKS                       R15 R15 K38 ["rating"]
      120 SETTABLEKS                       R15 R14 K38 ["rating"]
      122 SETTABLEKS                       R7 R14 K39 ["setRating"]
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K20 ["Stars"]
      127 GETUPVAL                         R12 3
      128 GETTABLEKS                       R12 R12 K4 ["createElement"]
      130 LOADK                            R13 K42 ["Frame"]
      131 DUPTABLE                         R14 K43 [{"LayoutOrder"}]
      132 NAMECALL                         R15 R3 K32 ["getNextOrder"]
      134 CALL                             R15 1 1
      135 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
      137 CALL                             R12 2 1
      138 SETTABLEKS                       R12 R11 K21 ["Gap"]
      140 GETTABLEKS                       R13 R0 K33 ["survey"]
      142 JUMPIFNOTEQKS                    R13 K44 ["AutoSetup"] ; [+235]
      144 GETUPVAL                         R12 3
      145 GETTABLEKS                       R12 R12 K4 ["createElement"]
      147 GETUPVAL                         R13 3
      148 GETTABLEKS                       R13 R13 K45 ["Fragment"]
      150 NEWTABLE                         R14 0 0
      152 DUPTABLE                         R15 K53 [{"UserIntent", "WhatAreasShouldWeImproveOn", "CharacterDoesntBend", "CharacterWeirdBend", "BadLayeredClothing", "Heads", "Gap2"}]
      153 GETUPVAL                         R16 3
      154 GETTABLEKS                       R16 R16 K4 ["createElement"]
      156 GETUPVAL                         R17 3
      157 GETTABLEKS                       R17 R17 K45 ["Fragment"]
      159 NEWTABLE                         R18 0 0
      161 DUPTABLE                         R19 K58 [{"IntentForResults", "UseAsNPC", "UseForMarketplace", "Gap1"}]
      162 GETUPVAL                         R20 3
      163 GETTABLEKS                       R20 R20 K4 ["createElement"]
      165 GETUPVAL                         R21 7
      166 DUPTABLE                         R22 K29 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "Bold", ["Text"]}]
      167 GETIMPORT                        R23 K31 [Enum.AutomaticSize.XY]
      169 SETTABLEKS                       R23 R22 K6 ["AutomaticSize"]
      171 NAMECALL                         R23 R3 K32 ["getNextOrder"]
      173 CALL                             R23 1 1
      174 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      176 LOADK                            R25 K1 ["Survey"]
      177 LOADK                            R26 K54 ["IntentForResults"]
      178 NAMECALL                         R23 R1 K36 ["getText"]
      180 CALL                             R23 3 1
      181 SETTABLEKS                       R23 R22 K28 ["Text"]
      183 CALL                             R20 2 1
      184 SETTABLEKS                       R20 R19 K54 ["IntentForResults"]
      186 MOVE                             R20 R5
      187 LOADK                            R21 K55 ["UseAsNPC"]
      188 CALL                             R20 1 1
      189 SETTABLEKS                       R20 R19 K55 ["UseAsNPC"]
      191 MOVE                             R20 R5
      192 LOADK                            R21 K56 ["UseForMarketplace"]
      193 CALL                             R20 1 1
      194 SETTABLEKS                       R20 R19 K56 ["UseForMarketplace"]
      196 GETUPVAL                         R20 3
      197 GETTABLEKS                       R20 R20 K4 ["createElement"]
      199 LOADK                            R21 K42 ["Frame"]
      200 DUPTABLE                         R22 K43 [{"LayoutOrder"}]
      201 NAMECALL                         R23 R3 K32 ["getNextOrder"]
      203 CALL                             R23 1 1
      204 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      206 CALL                             R20 2 1
      207 SETTABLEKS                       R20 R19 K57 ["Gap1"]
      209 CALL                             R16 3 1
      210 SETTABLEKS                       R16 R15 K46 ["UserIntent"]
      212 GETUPVAL                         R16 3
      213 GETTABLEKS                       R16 R16 K4 ["createElement"]
      215 GETUPVAL                         R17 7
      216 DUPTABLE                         R18 K29 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "Bold", ["Text"]}]
      217 GETIMPORT                        R19 K31 [Enum.AutomaticSize.XY]
      219 SETTABLEKS                       R19 R18 K6 ["AutomaticSize"]
      221 NAMECALL                         R19 R3 K32 ["getNextOrder"]
      223 CALL                             R19 1 1
      224 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      226 LOADK                            R21 K1 ["Survey"]
      227 LOADK                            R22 K47 ["WhatAreasShouldWeImproveOn"]
      228 NAMECALL                         R19 R1 K36 ["getText"]
      230 CALL                             R19 3 1
      231 SETTABLEKS                       R19 R18 K28 ["Text"]
      233 CALL                             R16 2 1
      234 SETTABLEKS                       R16 R15 K47 ["WhatAreasShouldWeImproveOn"]
      236 MOVE                             R16 R5
      237 LOADK                            R17 K48 ["CharacterDoesntBend"]
      238 CALL                             R16 1 1
      239 SETTABLEKS                       R16 R15 K48 ["CharacterDoesntBend"]
      241 MOVE                             R16 R5
      242 LOADK                            R17 K49 ["CharacterWeirdBend"]
      243 CALL                             R16 1 1
      244 SETTABLEKS                       R16 R15 K49 ["CharacterWeirdBend"]
      246 MOVE                             R16 R5
      247 LOADK                            R17 K50 ["BadLayeredClothing"]
      248 CALL                             R16 1 1
      249 SETTABLEKS                       R16 R15 K50 ["BadLayeredClothing"]
      251 GETUPVAL                         R16 3
      252 GETTABLEKS                       R16 R16 K4 ["createElement"]
      254 GETUPVAL                         R17 3
      255 GETTABLEKS                       R17 R17 K45 ["Fragment"]
      257 NEWTABLE                         R18 0 0
      259 DUPTABLE                         R19 K61 [{"HeadLooksBad", "SpecificProblems"}]
      260 MOVE                             R20 R5
      261 LOADK                            R21 K59 ["HeadLooksBad"]
      262 CALL                             R20 1 1
      263 SETTABLEKS                       R20 R19 K59 ["HeadLooksBad"]
      265 GETTABLEKS                       R21 R0 K41 ["results"]
      267 GETTABLEKS                       R21 R21 K62 ["problems"]
      269 GETTABLEKS                       R20 R21 K59 ["HeadLooksBad"]
      271 JUMPIFNOT                        R20 ; [+86]
      272 GETUPVAL                         R20 3
      273 GETTABLEKS                       R20 R20 K4 ["createElement"]
      275 GETUPVAL                         R21 6
      276 DUPTABLE                         R22 K63 [{"AutomaticSize", "LayoutOrder", "Spacing", "Layout", "HorizontalAlignment"}]
      277 GETIMPORT                        R23 K8 [Enum.AutomaticSize.Y]
      279 SETTABLEKS                       R23 R22 K6 ["AutomaticSize"]
      281 NAMECALL                         R23 R3 K32 ["getNextOrder"]
      283 CALL                             R23 1 1
      284 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      286 GETTABLEKS                       R23 R2 K13 ["Spacing"]
      288 SETTABLEKS                       R23 R22 K13 ["Spacing"]
      290 GETIMPORT                        R23 K11 [Enum.FillDirection.Vertical]
      292 SETTABLEKS                       R23 R22 K12 ["Layout"]
      294 GETIMPORT                        R23 K16 [Enum.HorizontalAlignment.Left]
      296 SETTABLEKS                       R23 R22 K14 ["HorizontalAlignment"]
      298 DUPTABLE                         R23 K66 [{"UIPadding", "Specifically", "SpecificProblems"}]
      299 GETUPVAL                         R24 3
      300 GETTABLEKS                       R24 R24 K4 ["createElement"]
      302 LOADK                            R25 K64 ["UIPadding"]
      303 DUPTABLE                         R26 K68 [{"PaddingLeft"}]
      304 GETIMPORT                        R27 K70 [UDim.new]
      306 LOADN                            R28 0
      307 GETTABLEKS                       R29 R2 K71 ["HeadIndent"]
      309 CALL                             R27 2 1
      310 SETTABLEKS                       R27 R26 K67 ["PaddingLeft"]
      312 CALL                             R24 2 1
      313 SETTABLEKS                       R24 R23 K64 ["UIPadding"]
      315 GETUPVAL                         R24 3
      316 GETTABLEKS                       R24 R24 K4 ["createElement"]
      318 GETUPVAL                         R25 7
      319 DUPTABLE                         R26 K72 [{"AutomaticSize", "LayoutOrder", "Text"}]
      320 GETIMPORT                        R27 K31 [Enum.AutomaticSize.XY]
      322 SETTABLEKS                       R27 R26 K6 ["AutomaticSize"]
      324 NAMECALL                         R27 R3 K32 ["getNextOrder"]
      326 CALL                             R27 1 1
      327 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      329 LOADK                            R29 K1 ["Survey"]
      330 LOADK                            R30 K65 ["Specifically"]
      331 NAMECALL                         R27 R1 K36 ["getText"]
      333 CALL                             R27 3 1
      334 SETTABLEKS                       R27 R26 K28 ["Text"]
      336 CALL                             R24 2 1
      337 SETTABLEKS                       R24 R23 K65 ["Specifically"]
      339 GETUPVAL                         R24 3
      340 GETTABLEKS                       R24 R24 K4 ["createElement"]
      342 GETUPVAL                         R25 3
      343 GETTABLEKS                       R25 R25 K45 ["Fragment"]
      345 NEWTABLE                         R26 0 0
      347 GETUPVAL                         R27 9
      348 GETTABLEKS                       R27 R27 K73 ["map"]
      350 GETUPVAL                         R28 4
      351 NEWCLOSURE                       R29 P5
      352 CAPTURE                          VAL R5
      353 CALL                             R27 2 -1
      354 CALL                             R24 -1 1
      355 SETTABLEKS                       R24 R23 K60 ["SpecificProblems"]
      357 CALL                             R20 3 1
      358 SETTABLEKS                       R20 R19 K60 ["SpecificProblems"]
      360 CALL                             R16 3 1
      361 SETTABLEKS                       R16 R15 K51 ["Heads"]
      363 GETUPVAL                         R16 3
      364 GETTABLEKS                       R16 R16 K4 ["createElement"]
      366 LOADK                            R17 K42 ["Frame"]
      367 DUPTABLE                         R18 K43 [{"LayoutOrder"}]
      368 NAMECALL                         R19 R3 K32 ["getNextOrder"]
      370 CALL                             R19 1 1
      371 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      373 CALL                             R16 2 1
      374 SETTABLEKS                       R16 R15 K52 ["Gap2"]
      376 CALL                             R12 3 1
      377 JUMP                             ; [+1]
      378 LOADNIL                          R12
      379 SETTABLEKS                       R12 R11 K22 ["AutoSetupQuestions"]
      381 GETUPVAL                         R12 3
      382 GETTABLEKS                       R12 R12 K4 ["createElement"]
      384 GETUPVAL                         R13 10
      385 DUPTABLE                         R14 K79 [{["MultiLine"] = True, ["LayoutOrder"], ["Size"], ["PlaceholderText"], ["Text"], ["OnTextChanged"]}]
      386 NAMECALL                         R15 R3 K32 ["getNextOrder"]
      388 CALL                             R15 1 1
      389 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
      391 GETIMPORT                        R15 K81 [UDim2.new]
      393 LOADN                            R16 1
      394 LOADN                            R17 0
      395 LOADN                            R18 0
      396 GETTABLEKS                       R19 R2 K82 ["MessageHeight"]
      398 CALL                             R15 4 1
      399 SETTABLEKS                       R15 R14 K76 ["Size"]
      401 LOADK                            R17 K1 ["Survey"]
      402 LOADK                            R18 K83 ["MessagePlaceholder"]
      403 NAMECALL                         R15 R1 K36 ["getText"]
      405 CALL                             R15 3 1
      406 SETTABLEKS                       R15 R14 K77 ["PlaceholderText"]
      408 GETTABLEKS                       R15 R0 K41 ["results"]
      410 GETTABLEKS                       R15 R15 K84 ["message"]
      412 SETTABLEKS                       R15 R14 K28 ["Text"]
      414 SETTABLEKS                       R6 R14 K78 ["OnTextChanged"]
      416 CALL                             R12 2 1
      417 SETTABLEKS                       R12 R11 K23 ["Message"]
      419 CALL                             R8 3 -1
      420 RETURN                           R8 -1

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
