PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["hideSearchOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["requestSearch"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R4 K4 ["X"]
        7 GETTABLEKS                       R5 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R5 K5 ["Y"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["setAssetTypeFilter"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 CALL                             R5 0 1
       16 GETTABLEKS                       R7 R5 K2 ["SearchOptions"]
       18 GETTABLEKS                       R6 R7 K3 ["AssetType"]
       20 GETTABLEKS                       R9 R5 K2 ["SearchOptions"]
       22 GETTABLEKS                       R8 R9 K4 ["ScopeInfo"]
       24 GETTABLEKS                       R7 R8 K5 ["Type"]
       26 GETUPVAL                         R10 5
       27 GETTABLEKS                       R9 R10 K6 ["ScopeType"]
       29 GETTABLEKS                       R8 R9 K7 ["Universe"]
       31 JUMPIFEQ                         R7 R8 ; [+21]
       33 GETUPVAL                         R10 5
       34 GETTABLEKS                       R9 R10 K3 ["AssetType"]
       36 GETTABLEKS                       R8 R9 K8 ["Place"]
       38 JUMPIFNOTEQ                      R6 R8 ; [+14]
       40 GETUPVAL                         R12 5
       41 GETTABLEKS                       R11 R12 K3 ["AssetType"]
       43 GETTABLEKS                       R10 R11 K9 ["Model"]
       45 NAMECALL                         R8 R3 K10 ["setAssetTypeFilter"]
       47 CALL                             R8 2 0
       48 GETUPVAL                         R9 5
       49 GETTABLEKS                       R8 R9 K3 ["AssetType"]
       51 GETTABLEKS                       R6 R8 K9 ["Model"]
       53 NEWTABLE                         R8 0 0
       55 GETUPVAL                         R10 5
       56 GETTABLEKS                       R9 R10 K11 ["asSortedList"]
       58 GETUPVAL                         R12 5
       59 GETTABLEKS                       R10 R12 K3 ["AssetType"]
       61 CALL                             R9 1 3
       62 FORGPREP                         R9
       63 DUPTABLE                         R16 K16 [{"Key", "Text", "Tooltip", "Disabled"}]
       64 SETTABLEKS                       R13 R16 K12 ["Key"]
       66 LOADK                            R19 K3 ["AssetType"]
       67 MOVE                             R20 R13
       68 NAMECALL                         R17 R2 K17 ["getText"]
       70 CALL                             R17 3 1
       71 SETTABLEKS                       R17 R16 K13 ["Text"]
       73 GETUPVAL                         R20 5
       74 GETTABLEKS                       R19 R20 K3 ["AssetType"]
       76 GETTABLEKS                       R18 R19 K8 ["Place"]
       78 JUMPIFNOTEQ                      R13 R18 ; [+11]
       80 GETTABLEKS                       R18 R4 K18 ["Id"]
       82 JUMPIFNOTEQKN                    R18 K19 [0] ; [+7]
       84 LOADK                            R19 K14 ["Tooltip"]
       85 LOADK                            R20 K20 ["NoPlacesExperienceNotPublished"]
       86 NAMECALL                         R17 R2 K17 ["getText"]
       88 CALL                             R17 3 1
       89 JUMP                             ; [+26]
       90 GETUPVAL                         R20 5
       91 GETTABLEKS                       R19 R20 K3 ["AssetType"]
       93 GETTABLEKS                       R18 R19 K8 ["Place"]
       95 JUMPIFNOTEQ                      R13 R18 ; [+19]
       97 GETUPVAL                         R20 5
       98 GETTABLEKS                       R19 R20 K6 ["ScopeType"]
      100 GETTABLEKS                       R18 R19 K7 ["Universe"]
      102 JUMPIFEQ                         R7 R18 ; [+12]
      104 LOADK                            R19 K14 ["Tooltip"]
      105 LOADK                            R20 K21 ["NoPlacesWrongScope"]
      106 DUPTABLE                         R21 K23 [{"experienceName"}]
      107 GETTABLEKS                       R22 R4 K24 ["Name"]
      109 SETTABLEKS                       R22 R21 K22 ["experienceName"]
      111 NAMECALL                         R17 R2 K17 ["getText"]
      113 CALL                             R17 4 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R17
      116 SETTABLEKS                       R17 R16 K14 ["Tooltip"]
      118 LOADB                            R17 0
      119 GETUPVAL                         R20 5
      120 GETTABLEKS                       R19 R20 K3 ["AssetType"]
      122 GETTABLEKS                       R18 R19 K8 ["Place"]
      124 JUMPIFNOTEQ                      R13 R18 ; [+15]
      126 LOADB                            R17 1
      127 GETUPVAL                         R20 5
      128 GETTABLEKS                       R19 R20 K6 ["ScopeType"]
      130 GETTABLEKS                       R18 R19 K7 ["Universe"]
      132 JUMPIFNOTEQ                      R7 R18 ; [+7]
      134 GETTABLEKS                       R18 R4 K18 ["Id"]
      136 JUMPIFEQKN                       R18 K19 [0] ; [+2]
      138 LOADB                            R17 0 +1
      139 LOADB                            R17 1
      140 SETTABLEKS                       R17 R16 K15 ["Disabled"]
      142 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      144 MOVE                             R15 R8
      145 GETIMPORT                        R14 K27 [table.insert]
      147 CALL                             R14 2 0
      148 FORGLOOP                         R9 2 ; [-86]
      150 GETUPVAL                         R10 6
      151 GETTABLEKS                       R9 R10 K28 ["useState"]
      153 GETIMPORT                        R10 K30 [UDim2.new]
      155 LOADN                            R11 0
      156 LOADN                            R12 0
      157 LOADN                            R13 0
      158 LOADN                            R14 0
      159 CALL                             R10 4 -1
      160 CALL                             R9 -1 2
      161 NEWTABLE                         R11 0 2
      163 DUPTABLE                         R12 K32 [{"Text", "OnClick"}]
      164 LOADK                            R15 K2 ["SearchOptions"]
      165 LOADK                            R16 K33 ["Cancel"]
      166 NAMECALL                         R13 R2 K17 ["getText"]
      168 CALL                             R13 3 1
      169 SETTABLEKS                       R13 R12 K13 ["Text"]
      171 NEWCLOSURE                       R13 P0
      172 CAPTURE                          VAL R3
      173 SETTABLEKS                       R13 R12 K31 ["OnClick"]
      175 DUPTABLE                         R13 K35 [{"Text", "Tags", "OnClick"}]
      176 LOADK                            R16 K2 ["SearchOptions"]
      177 LOADK                            R17 K36 ["Search"]
      178 NAMECALL                         R14 R2 K17 ["getText"]
      180 CALL                             R14 3 1
      181 SETTABLEKS                       R14 R13 K13 ["Text"]
      183 LOADK                            R14 K37 ["PrimaryBrand"]
      184 SETTABLEKS                       R14 R13 K34 ["Tags"]
      186 NEWCLOSURE                       R14 P1
      187 CAPTURE                          VAL R3
      188 SETTABLEKS                       R14 R13 K31 ["OnClick"]
      190 SETLIST                          R11 R12 2 [1]
      192 GETUPVAL                         R13 6
      193 GETTABLEKS                       R12 R13 K38 ["createElement"]
      195 GETUPVAL                         R13 7
      196 NEWTABLE                         R14 2 0
      198 GETTABLEKS                       R15 R0 K39 ["LayoutOrder"]
      200 SETTABLEKS                       R15 R14 K39 ["LayoutOrder"]
      202 GETUPVAL                         R16 6
      203 GETTABLEKS                       R15 R16 K40 ["Tag"]
      205 LOADK                            R16 K41 ["SearchOptions Explorer X-Column"]
      206 SETTABLE                         R16 R14 R15
      207 DUPTABLE                         R15 K44 [{"Contents", "Toolbar"}]
      208 GETUPVAL                         R17 6
      209 GETTABLEKS                       R16 R17 K38 ["createElement"]
      211 GETUPVAL                         R17 7
      212 NEWTABLE                         R18 2 0
      214 NAMECALL                         R19 R1 K45 ["getNextOrder"]
      216 CALL                             R19 1 1
      217 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      219 GETUPVAL                         R20 6
      220 GETTABLEKS                       R19 R20 K40 ["Tag"]
      222 LOADK                            R20 K46 ["X-Top X-Column fill"]
      223 SETTABLE                         R20 R18 R19
      224 DUPTABLE                         R19 K52 [{"SourceHeader", "ScopeSelector", "Separator", "AssetTypeHeader", "AssetTypes"}]
      225 GETUPVAL                         R21 6
      226 GETTABLEKS                       R20 R21 K38 ["createElement"]
      228 GETUPVAL                         R21 8
      229 NEWTABLE                         R22 4 0
      231 NAMECALL                         R23 R1 K45 ["getNextOrder"]
      233 CALL                             R23 1 1
      234 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      236 LOADK                            R25 K2 ["SearchOptions"]
      237 LOADK                            R26 K53 ["Inventory"]
      238 NAMECALL                         R23 R2 K17 ["getText"]
      240 CALL                             R23 3 1
      241 SETTABLEKS                       R23 R22 K13 ["Text"]
      243 GETUPVAL                         R24 6
      244 GETTABLEKS                       R23 R24 K40 ["Tag"]
      246 LOADK                            R24 K54 ["X-FitY Left Bold X-Pad"]
      247 SETTABLE                         R24 R22 R23
      248 CALL                             R20 2 1
      249 SETTABLEKS                       R20 R19 K47 ["SourceHeader"]
      251 GETUPVAL                         R21 6
      252 GETTABLEKS                       R20 R21 K38 ["createElement"]
      254 GETUPVAL                         R21 7
      255 NEWTABLE                         R22 2 0
      257 NAMECALL                         R23 R1 K45 ["getNextOrder"]
      259 CALL                             R23 1 1
      260 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      262 GETUPVAL                         R24 6
      263 GETTABLEKS                       R23 R24 K40 ["Tag"]
      265 LOADK                            R24 K55 ["ScopeSelector FitYPlusDragX"]
      266 SETTABLE                         R24 R22 R23
      267 DUPTABLE                         R23 K56 [{"Contents"}]
      268 GETUPVAL                         R25 6
      269 GETTABLEKS                       R24 R25 K38 ["createElement"]
      271 GETUPVAL                         R25 9
      272 DUPTABLE                         R26 K57 [{"LayoutOrder"}]
      273 NAMECALL                         R27 R1 K45 ["getNextOrder"]
      275 CALL                             R27 1 1
      276 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      278 CALL                             R24 2 1
      279 SETTABLEKS                       R24 R23 K42 ["Contents"]
      281 CALL                             R20 3 1
      282 SETTABLEKS                       R20 R19 K48 ["ScopeSelector"]
      284 GETUPVAL                         R21 6
      285 GETTABLEKS                       R20 R21 K38 ["createElement"]
      287 GETUPVAL                         R21 10
      288 DUPTABLE                         R22 K57 [{"LayoutOrder"}]
      289 NAMECALL                         R23 R1 K45 ["getNextOrder"]
      291 CALL                             R23 1 1
      292 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      294 CALL                             R20 2 1
      295 SETTABLEKS                       R20 R19 K49 ["Separator"]
      297 GETUPVAL                         R21 6
      298 GETTABLEKS                       R20 R21 K38 ["createElement"]
      300 GETUPVAL                         R21 8
      301 NEWTABLE                         R22 4 0
      303 NAMECALL                         R23 R1 K45 ["getNextOrder"]
      305 CALL                             R23 1 1
      306 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      308 LOADK                            R25 K58 ["AssetProperty"]
      309 LOADK                            R26 K3 ["AssetType"]
      310 NAMECALL                         R23 R2 K17 ["getText"]
      312 CALL                             R23 3 1
      313 SETTABLEKS                       R23 R22 K13 ["Text"]
      315 GETUPVAL                         R24 6
      316 GETTABLEKS                       R23 R24 K40 ["Tag"]
      318 LOADK                            R24 K54 ["X-FitY Left Bold X-Pad"]
      319 SETTABLE                         R24 R22 R23
      320 CALL                             R20 2 1
      321 SETTABLEKS                       R20 R19 K50 ["AssetTypeHeader"]
      323 GETUPVAL                         R21 6
      324 GETTABLEKS                       R20 R21 K38 ["createElement"]
      326 GETUPVAL                         R21 7
      327 NEWTABLE                         R22 2 0
      329 NAMECALL                         R23 R1 K45 ["getNextOrder"]
      331 CALL                             R23 1 1
      332 SETTABLEKS                       R23 R22 K39 ["LayoutOrder"]
      334 GETUPVAL                         R24 6
      335 GETTABLEKS                       R23 R24 K40 ["Tag"]
      337 LOADK                            R24 K59 ["X-ColumnM X-Center am-padding-left-medium fill"]
      338 SETTABLE                         R24 R22 R23
      339 DUPTABLE                         R23 K61 [{"RadioButtonListContainer"}]
      340 GETUPVAL                         R25 6
      341 GETTABLEKS                       R24 R25 K38 ["createElement"]
      343 GETUPVAL                         R25 11
      344 NEWTABLE                         R26 4 0
      346 NAMECALL                         R27 R1 K45 ["getNextOrder"]
      348 CALL                             R27 1 1
      349 SETTABLEKS                       R27 R26 K39 ["LayoutOrder"]
      351 SETTABLEKS                       R9 R26 K62 ["CanvasSize"]
      353 GETUPVAL                         R28 6
      354 GETTABLEKS                       R27 R28 K40 ["Tag"]
      356 LOADK                            R28 K63 ["am-padding-bottom-small fill"]
      357 SETTABLE                         R28 R26 R27
      358 NEWTABLE                         R27 0 1
      360 GETUPVAL                         R29 6
      361 GETTABLEKS                       R28 R29 K38 ["createElement"]
      363 GETUPVAL                         R29 7
      364 NEWTABLE                         R30 2 0
      366 GETUPVAL                         R33 6
      367 GETTABLEKS                       R32 R33 K64 ["Change"]
      369 GETTABLEKS                       R31 R32 K65 ["AbsoluteSize"]
      371 NEWCLOSURE                       R32 P2
      372 CAPTURE                          VAL R10
      373 SETTABLE                         R32 R30 R31
      374 GETUPVAL                         R32 6
      375 GETTABLEKS                       R31 R32 K40 ["Tag"]
      377 LOADK                            R32 K66 ["X-Fit"]
      378 SETTABLE                         R32 R30 R31
      379 DUPTABLE                         R31 K68 [{"RadioButtonList"}]
      380 GETUPVAL                         R33 6
      381 GETTABLEKS                       R32 R33 K38 ["createElement"]
      383 GETUPVAL                         R33 12
      384 DUPTABLE                         R34 K73 [{"LayoutOrder", "Buttons", "CurrentSelectedKey", "OnClick", "FillDirection", "TextXAlignment"}]
      385 NAMECALL                         R35 R1 K45 ["getNextOrder"]
      387 CALL                             R35 1 1
      388 SETTABLEKS                       R35 R34 K39 ["LayoutOrder"]
      390 SETTABLEKS                       R8 R34 K69 ["Buttons"]
      392 SETTABLEKS                       R6 R34 K70 ["CurrentSelectedKey"]
      394 NEWCLOSURE                       R35 P3
      395 CAPTURE                          VAL R3
      396 SETTABLEKS                       R35 R34 K31 ["OnClick"]
      398 GETIMPORT                        R35 K76 [Enum.FillDirection.Vertical]
      400 SETTABLEKS                       R35 R34 K71 ["FillDirection"]
      402 GETIMPORT                        R35 K78 [Enum.TextXAlignment.Left]
      404 SETTABLEKS                       R35 R34 K72 ["TextXAlignment"]
      406 CALL                             R32 2 1
      407 SETTABLEKS                       R32 R31 K67 ["RadioButtonList"]
      409 CALL                             R28 3 -1
      410 SETLIST                          R27 R28 -1 [1]
      412 CALL                             R24 3 1
      413 SETTABLEKS                       R24 R23 K60 ["RadioButtonListContainer"]
      415 CALL                             R20 3 1
      416 SETTABLEKS                       R20 R19 K51 ["AssetTypes"]
      418 CALL                             R16 3 1
      419 SETTABLEKS                       R16 R15 K42 ["Contents"]
      421 GETUPVAL                         R17 6
      422 GETTABLEKS                       R16 R17 K38 ["createElement"]
      424 GETUPVAL                         R17 13
      425 DUPTABLE                         R18 K79 [{"LayoutOrder", "Buttons"}]
      426 NAMECALL                         R19 R1 K45 ["getNextOrder"]
      428 CALL                             R19 1 1
      429 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      431 SETTABLEKS                       R11 R18 K69 ["Buttons"]
      433 CALL                             R16 2 1
      434 SETTABLEKS                       R16 R15 K43 ["Toolbar"]
      436 CALL                             R12 3 -1
      437 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Pane"]
       29 GETTABLEKS                       R7 R5 K13 ["ScrollingFrame"]
       31 GETTABLEKS                       R8 R5 K14 ["RadioButtonList"]
       33 GETTABLEKS                       R9 R5 K15 ["Separator"]
       35 GETTABLEKS                       R10 R5 K16 ["TextLabel"]
       37 GETIMPORT                        R11 K5 [require]
       39 GETTABLEKS                       R15 R0 K17 ["Src"]
       41 GETTABLEKS                       R14 R15 K18 ["Components"]
       43 GETTABLEKS                       R13 R14 K19 ["Shared"]
       45 GETTABLEKS                       R12 R13 K20 ["Toolbar"]
       47 CALL                             R11 1 1
       48 GETIMPORT                        R12 K5 [require]
       50 GETIMPORT                        R14 K1 [script]
       52 GETTABLEKS                       R13 R14 K21 ["ScopeSelector"]
       54 CALL                             R12 1 1
       55 GETIMPORT                        R13 K5 [require]
       57 GETTABLEKS                       R16 R0 K17 ["Src"]
       59 GETTABLEKS                       R15 R16 K22 ["Controllers"]
       61 GETTABLEKS                       R14 R15 K23 ["SearchController"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETTABLEKS                       R17 R0 K17 ["Src"]
       68 GETTABLEKS                       R16 R17 K24 ["Hooks"]
       70 GETTABLEKS                       R15 R16 K25 ["useGameInfo"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K5 [require]
       75 GETTABLEKS                       R18 R0 K17 ["Src"]
       77 GETTABLEKS                       R17 R18 K24 ["Hooks"]
       79 GETTABLEKS                       R16 R17 K26 ["useSearchInfo"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R18 R0 K17 ["Src"]
       86 GETTABLEKS                       R17 R18 K27 ["Types"]
       88 CALL                             R16 1 1
       89 GETTABLEKS                       R18 R2 K28 ["Util"]
       91 GETTABLEKS                       R17 R18 K29 ["LayoutOrderIterator"]
       93 DUPCLOSURE                       R18 K30 [PROTO_4]
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R11
      108 RETURN                           R18 1
