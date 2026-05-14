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
        4 DUPTABLE                         R3 K7 [{"Key", "Checked", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
        5 SETTABLEKS                       R0 R3 K1 ["Key"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K8 ["results"]
       10 GETTABLEKS                       R5 R5 K9 ["problems"]
       12 GETTABLE                         R4 R5 R0
       13 SETTABLEKS                       R4 R3 K2 ["Checked"]
       15 GETUPVAL                         R4 3
       16 NAMECALL                         R4 R4 K10 ["getNextOrder"]
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       21 GETUPVAL                         R4 4
       22 SETTABLEKS                       R4 R3 K4 ["OnClick"]
       24 GETUPVAL                         R4 5
       25 LOADK                            R6 K11 ["Survey"]
       26 LOADK                            R8 K12 ["Problem%*"]
       27 MOVE                             R10 R0
       28 NAMECALL                         R8 R8 K13 ["format"]
       30 CALL                             R8 2 1
       31 MOVE                             R7 R8
       32 NAMECALL                         R4 R4 K14 ["getText"]
       34 CALL                             R4 3 1
       35 SETTABLEKS                       R4 R3 K5 ["Text"]
       37 LOADB                            R4 1
       38 SETTABLEKS                       R4 R3 K6 ["TextWrapped"]
       40 CALL                             R1 2 -1
       41 RETURN                           R1 -1

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
       80 DUPTABLE                         R14 K34 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
       81 GETIMPORT                        R15 K36 [Enum.AutomaticSize.XY]
       83 SETTABLEKS                       R15 R14 K6 ["AutomaticSize"]
       85 NAMECALL                         R15 R3 K37 ["getNextOrder"]
       87 CALL                             R15 1 1
       88 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
       90 LOADK                            R15 K38 ["Bold"]
       91 SETTABLEKS                       R15 R14 K32 ["Style"]
       93 LOADK                            R17 K1 ["Survey"]
       94 LOADK                            R18 K19 ["PleaseRateYourExperience"]
       95 NAMECALL                         R15 R1 K39 ["getText"]
       97 CALL                             R15 3 1
       98 SETTABLEKS                       R15 R14 K33 ["Text"]
      100 CALL                             R12 2 1
      101 SETTABLEKS                       R12 R11 K19 ["PleaseRateYourExperience"]
      103 GETUPVAL                         R12 3
      104 GETTABLEKS                       R12 R12 K4 ["createElement"]
      106 GETUPVAL                         R13 8
      107 DUPTABLE                         R14 K43 [{"layoutOrder", "rating", "setRating"}]
      108 NAMECALL                         R15 R3 K37 ["getNextOrder"]
      110 CALL                             R15 1 1
      111 SETTABLEKS                       R15 R14 K40 ["layoutOrder"]
      113 GETTABLEKS                       R15 R0 K44 ["results"]
      115 GETTABLEKS                       R15 R15 K41 ["rating"]
      117 SETTABLEKS                       R15 R14 K41 ["rating"]
      119 SETTABLEKS                       R7 R14 K42 ["setRating"]
      121 CALL                             R12 2 1
      122 SETTABLEKS                       R12 R11 K20 ["Stars"]
      124 GETUPVAL                         R12 3
      125 GETTABLEKS                       R12 R12 K4 ["createElement"]
      127 LOADK                            R13 K45 ["Frame"]
      128 DUPTABLE                         R14 K46 [{"LayoutOrder"}]
      129 NAMECALL                         R15 R3 K37 ["getNextOrder"]
      131 CALL                             R15 1 1
      132 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
      134 CALL                             R12 2 1
      135 SETTABLEKS                       R12 R11 K21 ["Gap"]
      137 GETUPVAL                         R12 3
      138 GETTABLEKS                       R12 R12 K4 ["createElement"]
      140 GETUPVAL                         R13 3
      141 GETTABLEKS                       R13 R13 K47 ["Fragment"]
      143 NEWTABLE                         R14 0 0
      145 DUPTABLE                         R15 K52 [{"IntentForResults", "UseAsNPC", "UseForMarketplace", "Gap1"}]
      146 GETUPVAL                         R16 3
      147 GETTABLEKS                       R16 R16 K4 ["createElement"]
      149 GETUPVAL                         R17 7
      150 DUPTABLE                         R18 K34 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
      151 GETIMPORT                        R19 K36 [Enum.AutomaticSize.XY]
      153 SETTABLEKS                       R19 R18 K6 ["AutomaticSize"]
      155 NAMECALL                         R19 R3 K37 ["getNextOrder"]
      157 CALL                             R19 1 1
      158 SETTABLEKS                       R19 R18 K31 ["LayoutOrder"]
      160 LOADK                            R19 K38 ["Bold"]
      161 SETTABLEKS                       R19 R18 K32 ["Style"]
      163 LOADK                            R21 K1 ["Survey"]
      164 LOADK                            R22 K48 ["IntentForResults"]
      165 NAMECALL                         R19 R1 K39 ["getText"]
      167 CALL                             R19 3 1
      168 SETTABLEKS                       R19 R18 K33 ["Text"]
      170 CALL                             R16 2 1
      171 SETTABLEKS                       R16 R15 K48 ["IntentForResults"]
      173 MOVE                             R16 R5
      174 LOADK                            R17 K49 ["UseAsNPC"]
      175 CALL                             R16 1 1
      176 SETTABLEKS                       R16 R15 K49 ["UseAsNPC"]
      178 MOVE                             R16 R5
      179 LOADK                            R17 K50 ["UseForMarketplace"]
      180 CALL                             R16 1 1
      181 SETTABLEKS                       R16 R15 K50 ["UseForMarketplace"]
      183 GETUPVAL                         R16 3
      184 GETTABLEKS                       R16 R16 K4 ["createElement"]
      186 LOADK                            R17 K45 ["Frame"]
      187 DUPTABLE                         R18 K46 [{"LayoutOrder"}]
      188 NAMECALL                         R19 R3 K37 ["getNextOrder"]
      190 CALL                             R19 1 1
      191 SETTABLEKS                       R19 R18 K31 ["LayoutOrder"]
      193 CALL                             R16 2 1
      194 SETTABLEKS                       R16 R15 K51 ["Gap1"]
      196 CALL                             R12 3 1
      197 SETTABLEKS                       R12 R11 K22 ["UserIntent"]
      199 GETUPVAL                         R12 3
      200 GETTABLEKS                       R12 R12 K4 ["createElement"]
      202 GETUPVAL                         R13 7
      203 DUPTABLE                         R14 K34 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
      204 GETIMPORT                        R15 K36 [Enum.AutomaticSize.XY]
      206 SETTABLEKS                       R15 R14 K6 ["AutomaticSize"]
      208 NAMECALL                         R15 R3 K37 ["getNextOrder"]
      210 CALL                             R15 1 1
      211 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
      213 LOADK                            R15 K38 ["Bold"]
      214 SETTABLEKS                       R15 R14 K32 ["Style"]
      216 LOADK                            R17 K1 ["Survey"]
      217 LOADK                            R18 K23 ["WhatAreasShouldWeImproveOn"]
      218 NAMECALL                         R15 R1 K39 ["getText"]
      220 CALL                             R15 3 1
      221 SETTABLEKS                       R15 R14 K33 ["Text"]
      223 CALL                             R12 2 1
      224 SETTABLEKS                       R12 R11 K23 ["WhatAreasShouldWeImproveOn"]
      226 MOVE                             R12 R5
      227 LOADK                            R13 K24 ["CharacterDoesntBend"]
      228 CALL                             R12 1 1
      229 SETTABLEKS                       R12 R11 K24 ["CharacterDoesntBend"]
      231 MOVE                             R12 R5
      232 LOADK                            R13 K25 ["CharacterWeirdBend"]
      233 CALL                             R12 1 1
      234 SETTABLEKS                       R12 R11 K25 ["CharacterWeirdBend"]
      236 MOVE                             R12 R5
      237 LOADK                            R13 K26 ["BadLayeredClothing"]
      238 CALL                             R12 1 1
      239 SETTABLEKS                       R12 R11 K26 ["BadLayeredClothing"]
      241 GETUPVAL                         R12 3
      242 GETTABLEKS                       R12 R12 K4 ["createElement"]
      244 GETUPVAL                         R13 3
      245 GETTABLEKS                       R13 R13 K47 ["Fragment"]
      247 NEWTABLE                         R14 0 0
      249 DUPTABLE                         R15 K55 [{"HeadLooksBad", "SpecificProblems"}]
      250 MOVE                             R16 R5
      251 LOADK                            R17 K53 ["HeadLooksBad"]
      252 CALL                             R16 1 1
      253 SETTABLEKS                       R16 R15 K53 ["HeadLooksBad"]
      255 GETTABLEKS                       R17 R0 K44 ["results"]
      257 GETTABLEKS                       R17 R17 K56 ["problems"]
      259 GETTABLEKS                       R16 R17 K53 ["HeadLooksBad"]
      261 JUMPIFNOT                        R16 ; [+86]
      262 GETUPVAL                         R16 3
      263 GETTABLEKS                       R16 R16 K4 ["createElement"]
      265 GETUPVAL                         R17 6
      266 DUPTABLE                         R18 K57 [{"AutomaticSize", "LayoutOrder", "Spacing", "Layout", "HorizontalAlignment"}]
      267 GETIMPORT                        R19 K8 [Enum.AutomaticSize.Y]
      269 SETTABLEKS                       R19 R18 K6 ["AutomaticSize"]
      271 NAMECALL                         R19 R3 K37 ["getNextOrder"]
      273 CALL                             R19 1 1
      274 SETTABLEKS                       R19 R18 K31 ["LayoutOrder"]
      276 GETTABLEKS                       R19 R2 K13 ["Spacing"]
      278 SETTABLEKS                       R19 R18 K13 ["Spacing"]
      280 GETIMPORT                        R19 K11 [Enum.FillDirection.Vertical]
      282 SETTABLEKS                       R19 R18 K12 ["Layout"]
      284 GETIMPORT                        R19 K16 [Enum.HorizontalAlignment.Left]
      286 SETTABLEKS                       R19 R18 K14 ["HorizontalAlignment"]
      288 DUPTABLE                         R19 K60 [{"UIPadding", "Specifically", "SpecificProblems"}]
      289 GETUPVAL                         R20 3
      290 GETTABLEKS                       R20 R20 K4 ["createElement"]
      292 LOADK                            R21 K58 ["UIPadding"]
      293 DUPTABLE                         R22 K62 [{"PaddingLeft"}]
      294 GETIMPORT                        R23 K64 [UDim.new]
      296 LOADN                            R24 0
      297 GETTABLEKS                       R25 R2 K65 ["HeadIndent"]
      299 CALL                             R23 2 1
      300 SETTABLEKS                       R23 R22 K61 ["PaddingLeft"]
      302 CALL                             R20 2 1
      303 SETTABLEKS                       R20 R19 K58 ["UIPadding"]
      305 GETUPVAL                         R20 3
      306 GETTABLEKS                       R20 R20 K4 ["createElement"]
      308 GETUPVAL                         R21 7
      309 DUPTABLE                         R22 K66 [{"AutomaticSize", "LayoutOrder", "Text"}]
      310 GETIMPORT                        R23 K36 [Enum.AutomaticSize.XY]
      312 SETTABLEKS                       R23 R22 K6 ["AutomaticSize"]
      314 NAMECALL                         R23 R3 K37 ["getNextOrder"]
      316 CALL                             R23 1 1
      317 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      319 LOADK                            R25 K1 ["Survey"]
      320 LOADK                            R26 K59 ["Specifically"]
      321 NAMECALL                         R23 R1 K39 ["getText"]
      323 CALL                             R23 3 1
      324 SETTABLEKS                       R23 R22 K33 ["Text"]
      326 CALL                             R20 2 1
      327 SETTABLEKS                       R20 R19 K59 ["Specifically"]
      329 GETUPVAL                         R20 3
      330 GETTABLEKS                       R20 R20 K4 ["createElement"]
      332 GETUPVAL                         R21 3
      333 GETTABLEKS                       R21 R21 K47 ["Fragment"]
      335 NEWTABLE                         R22 0 0
      337 GETUPVAL                         R23 9
      338 GETTABLEKS                       R23 R23 K67 ["map"]
      340 GETUPVAL                         R24 4
      341 NEWCLOSURE                       R25 P5
      342 CAPTURE                          VAL R5
      343 CALL                             R23 2 -1
      344 CALL                             R20 -1 1
      345 SETTABLEKS                       R20 R19 K54 ["SpecificProblems"]
      347 CALL                             R16 3 1
      348 SETTABLEKS                       R16 R15 K54 ["SpecificProblems"]
      350 CALL                             R12 3 1
      351 SETTABLEKS                       R12 R11 K27 ["Heads"]
      353 GETUPVAL                         R12 3
      354 GETTABLEKS                       R12 R12 K4 ["createElement"]
      356 LOADK                            R13 K45 ["Frame"]
      357 DUPTABLE                         R14 K46 [{"LayoutOrder"}]
      358 NAMECALL                         R15 R3 K37 ["getNextOrder"]
      360 CALL                             R15 1 1
      361 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
      363 CALL                             R12 2 1
      364 SETTABLEKS                       R12 R11 K28 ["Gap2"]
      366 GETUPVAL                         R12 3
      367 GETTABLEKS                       R12 R12 K4 ["createElement"]
      369 GETUPVAL                         R13 10
      370 DUPTABLE                         R14 K72 [{"MultiLine", "LayoutOrder", "Size", "PlaceholderText", "Text", "OnTextChanged"}]
      371 LOADB                            R15 1
      372 SETTABLEKS                       R15 R14 K68 ["MultiLine"]
      374 NAMECALL                         R15 R3 K37 ["getNextOrder"]
      376 CALL                             R15 1 1
      377 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
      379 GETIMPORT                        R15 K74 [UDim2.new]
      381 LOADN                            R16 1
      382 LOADN                            R17 0
      383 LOADN                            R18 0
      384 GETTABLEKS                       R19 R2 K75 ["MessageHeight"]
      386 CALL                             R15 4 1
      387 SETTABLEKS                       R15 R14 K69 ["Size"]
      389 LOADK                            R17 K1 ["Survey"]
      390 LOADK                            R18 K76 ["MessagePlaceholder"]
      391 NAMECALL                         R15 R1 K39 ["getText"]
      393 CALL                             R15 3 1
      394 SETTABLEKS                       R15 R14 K70 ["PlaceholderText"]
      396 GETTABLEKS                       R15 R0 K44 ["results"]
      398 GETTABLEKS                       R15 R15 K77 ["message"]
      400 SETTABLEKS                       R15 R14 K33 ["Text"]
      402 SETTABLEKS                       R6 R14 K71 ["OnTextChanged"]
      404 CALL                             R12 2 1
      405 SETTABLEKS                       R12 R11 K29 ["Message"]
      407 CALL                             R8 3 -1
      408 RETURN                           R8 -1

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
