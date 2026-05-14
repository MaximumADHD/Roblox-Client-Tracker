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
        3 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R3 K4 ["X"]
        7 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R4 K5 ["Y"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 CALL                             R5 0 1
       16 GETTABLEKS                       R6 R5 K2 ["SearchOptions"]
       18 GETTABLEKS                       R6 R6 K3 ["AssetType"]
       20 GETTABLEKS                       R7 R5 K2 ["SearchOptions"]
       22 GETTABLEKS                       R7 R7 K4 ["ScopeInfo"]
       24 GETTABLEKS                       R7 R7 K5 ["Type"]
       26 GETUPVAL                         R8 5
       27 GETTABLEKS                       R8 R8 K6 ["ScopeType"]
       29 GETTABLEKS                       R8 R8 K7 ["Universe"]
       31 JUMPIFEQ                         R7 R8 ; [+21]
       33 GETUPVAL                         R8 5
       34 GETTABLEKS                       R8 R8 K3 ["AssetType"]
       36 GETTABLEKS                       R8 R8 K8 ["Place"]
       38 JUMPIFNOTEQ                      R6 R8 ; [+14]
       40 GETUPVAL                         R10 5
       41 GETTABLEKS                       R10 R10 K3 ["AssetType"]
       43 GETTABLEKS                       R10 R10 K9 ["Model"]
       45 NAMECALL                         R8 R3 K10 ["setAssetTypeFilter"]
       47 CALL                             R8 2 0
       48 GETUPVAL                         R8 5
       49 GETTABLEKS                       R8 R8 K3 ["AssetType"]
       51 GETTABLEKS                       R6 R8 K9 ["Model"]
       53 NEWTABLE                         R8 0 0
       55 GETUPVAL                         R9 5
       56 GETTABLEKS                       R9 R9 K11 ["asSortedList"]
       58 GETUPVAL                         R10 5
       59 GETTABLEKS                       R10 R10 K3 ["AssetType"]
       61 CALL                             R9 1 3
       62 FORGPREP                         R9
       63 GETUPVAL                         R14 6
       64 CALL                             R14 0 1
       65 JUMPIFNOT                        R14 ; [+7]
       66 GETUPVAL                         R14 5
       67 GETTABLEKS                       R14 R14 K3 ["AssetType"]
       69 GETTABLEKS                       R14 R14 K12 ["Folder"]
       71 JUMPIFEQ                         R13 R14 ; [+86]
       73 DUPTABLE                         R16 K17 [{"Key", "Text", "Tooltip", "Disabled"}]
       74 SETTABLEKS                       R13 R16 K13 ["Key"]
       76 LOADK                            R19 K3 ["AssetType"]
       77 MOVE                             R20 R13
       78 NAMECALL                         R17 R2 K18 ["getText"]
       80 CALL                             R17 3 1
       81 SETTABLEKS                       R17 R16 K14 ["Text"]
       83 GETUPVAL                         R18 5
       84 GETTABLEKS                       R18 R18 K3 ["AssetType"]
       86 GETTABLEKS                       R18 R18 K8 ["Place"]
       88 JUMPIFNOTEQ                      R13 R18 ; [+11]
       90 GETTABLEKS                       R18 R4 K19 ["Id"]
       92 JUMPIFNOTEQKN                    R18 K20 [0] ; [+7]
       94 LOADK                            R19 K15 ["Tooltip"]
       95 LOADK                            R20 K21 ["NoPlacesExperienceNotPublished"]
       96 NAMECALL                         R17 R2 K18 ["getText"]
       98 CALL                             R17 3 1
       99 JUMP                             ; [+26]
      100 GETUPVAL                         R18 5
      101 GETTABLEKS                       R18 R18 K3 ["AssetType"]
      103 GETTABLEKS                       R18 R18 K8 ["Place"]
      105 JUMPIFNOTEQ                      R13 R18 ; [+19]
      107 GETUPVAL                         R18 5
      108 GETTABLEKS                       R18 R18 K6 ["ScopeType"]
      110 GETTABLEKS                       R18 R18 K7 ["Universe"]
      112 JUMPIFEQ                         R7 R18 ; [+12]
      114 LOADK                            R19 K15 ["Tooltip"]
      115 LOADK                            R20 K22 ["NoPlacesWrongScope"]
      116 DUPTABLE                         R21 K24 [{"experienceName"}]
      117 GETTABLEKS                       R22 R4 K25 ["Name"]
      119 SETTABLEKS                       R22 R21 K23 ["experienceName"]
      121 NAMECALL                         R17 R2 K18 ["getText"]
      123 CALL                             R17 4 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R17
      126 SETTABLEKS                       R17 R16 K15 ["Tooltip"]
      128 LOADB                            R17 0
      129 GETUPVAL                         R18 5
      130 GETTABLEKS                       R18 R18 K3 ["AssetType"]
      132 GETTABLEKS                       R18 R18 K8 ["Place"]
      134 JUMPIFNOTEQ                      R13 R18 ; [+15]
      136 LOADB                            R17 1
      137 GETUPVAL                         R18 5
      138 GETTABLEKS                       R18 R18 K6 ["ScopeType"]
      140 GETTABLEKS                       R18 R18 K7 ["Universe"]
      142 JUMPIFNOTEQ                      R7 R18 ; [+7]
      144 GETTABLEKS                       R18 R4 K19 ["Id"]
      146 JUMPIFEQKN                       R18 K20 [0] ; [+2]
      148 LOADB                            R17 0 +1
      149 LOADB                            R17 1
      150 SETTABLEKS                       R17 R16 K16 ["Disabled"]
      152 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      154 MOVE                             R15 R8
      155 GETIMPORT                        R14 K28 [table.insert]
      157 CALL                             R14 2 0
      158 FORGLOOP                         R9 2 ; [-96]
      160 GETUPVAL                         R9 7
      161 GETTABLEKS                       R9 R9 K29 ["useState"]
      163 GETIMPORT                        R10 K31 [UDim2.new]
      165 LOADN                            R11 0
      166 LOADN                            R12 0
      167 LOADN                            R13 0
      168 LOADN                            R14 0
      169 CALL                             R10 4 -1
      170 CALL                             R9 -1 2
      171 NEWTABLE                         R11 0 2
      173 DUPTABLE                         R12 K33 [{"Text", "OnClick"}]
      174 LOADK                            R15 K2 ["SearchOptions"]
      175 LOADK                            R16 K34 ["Cancel"]
      176 NAMECALL                         R13 R2 K18 ["getText"]
      178 CALL                             R13 3 1
      179 SETTABLEKS                       R13 R12 K14 ["Text"]
      181 NEWCLOSURE                       R13 P0
      182 CAPTURE                          VAL R3
      183 SETTABLEKS                       R13 R12 K32 ["OnClick"]
      185 DUPTABLE                         R13 K36 [{"Text", "Tags", "OnClick"}]
      186 LOADK                            R16 K2 ["SearchOptions"]
      187 LOADK                            R17 K37 ["Search"]
      188 NAMECALL                         R14 R2 K18 ["getText"]
      190 CALL                             R14 3 1
      191 SETTABLEKS                       R14 R13 K14 ["Text"]
      193 LOADK                            R14 K38 ["PrimaryBrand"]
      194 SETTABLEKS                       R14 R13 K35 ["Tags"]
      196 NEWCLOSURE                       R14 P1
      197 CAPTURE                          VAL R3
      198 SETTABLEKS                       R14 R13 K32 ["OnClick"]
      200 SETLIST                          R11 R12 2 [1]
      202 GETUPVAL                         R12 7
      203 GETTABLEKS                       R12 R12 K39 ["createElement"]
      205 GETUPVAL                         R13 8
      206 NEWTABLE                         R14 2 0
      208 GETTABLEKS                       R15 R0 K40 ["LayoutOrder"]
      210 SETTABLEKS                       R15 R14 K40 ["LayoutOrder"]
      212 GETUPVAL                         R15 7
      213 GETTABLEKS                       R15 R15 K41 ["Tag"]
      215 LOADK                            R16 K42 ["SearchOptions Explorer X-Column"]
      216 SETTABLE                         R16 R14 R15
      217 DUPTABLE                         R15 K45 [{"Contents", "Toolbar"}]
      218 GETUPVAL                         R16 7
      219 GETTABLEKS                       R16 R16 K39 ["createElement"]
      221 GETUPVAL                         R17 8
      222 NEWTABLE                         R18 2 0
      224 NAMECALL                         R19 R1 K46 ["getNextOrder"]
      226 CALL                             R19 1 1
      227 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
      229 GETUPVAL                         R19 7
      230 GETTABLEKS                       R19 R19 K41 ["Tag"]
      232 LOADK                            R20 K47 ["X-Top X-Column fill"]
      233 SETTABLE                         R20 R18 R19
      234 DUPTABLE                         R19 K53 [{"SourceHeader", "ScopeSelector", "Separator", "AssetTypeHeader", "AssetTypes"}]
      235 GETUPVAL                         R20 7
      236 GETTABLEKS                       R20 R20 K39 ["createElement"]
      238 GETUPVAL                         R21 9
      239 NEWTABLE                         R22 4 0
      241 NAMECALL                         R23 R1 K46 ["getNextOrder"]
      243 CALL                             R23 1 1
      244 SETTABLEKS                       R23 R22 K40 ["LayoutOrder"]
      246 LOADK                            R25 K2 ["SearchOptions"]
      247 LOADK                            R26 K54 ["Inventory"]
      248 NAMECALL                         R23 R2 K18 ["getText"]
      250 CALL                             R23 3 1
      251 SETTABLEKS                       R23 R22 K14 ["Text"]
      253 GETUPVAL                         R23 7
      254 GETTABLEKS                       R23 R23 K41 ["Tag"]
      256 LOADK                            R24 K55 ["X-FitY Left Bold X-Pad"]
      257 SETTABLE                         R24 R22 R23
      258 CALL                             R20 2 1
      259 SETTABLEKS                       R20 R19 K48 ["SourceHeader"]
      261 GETUPVAL                         R20 7
      262 GETTABLEKS                       R20 R20 K39 ["createElement"]
      264 GETUPVAL                         R21 8
      265 NEWTABLE                         R22 2 0
      267 NAMECALL                         R23 R1 K46 ["getNextOrder"]
      269 CALL                             R23 1 1
      270 SETTABLEKS                       R23 R22 K40 ["LayoutOrder"]
      272 GETUPVAL                         R23 7
      273 GETTABLEKS                       R23 R23 K41 ["Tag"]
      275 LOADK                            R24 K56 ["ScopeSelector FitYPlusDragX"]
      276 SETTABLE                         R24 R22 R23
      277 DUPTABLE                         R23 K57 [{"Contents"}]
      278 GETUPVAL                         R24 7
      279 GETTABLEKS                       R24 R24 K39 ["createElement"]
      281 GETUPVAL                         R25 10
      282 DUPTABLE                         R26 K58 [{"LayoutOrder"}]
      283 NAMECALL                         R27 R1 K46 ["getNextOrder"]
      285 CALL                             R27 1 1
      286 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      288 CALL                             R24 2 1
      289 SETTABLEKS                       R24 R23 K43 ["Contents"]
      291 CALL                             R20 3 1
      292 SETTABLEKS                       R20 R19 K49 ["ScopeSelector"]
      294 GETUPVAL                         R20 7
      295 GETTABLEKS                       R20 R20 K39 ["createElement"]
      297 GETUPVAL                         R21 11
      298 DUPTABLE                         R22 K58 [{"LayoutOrder"}]
      299 NAMECALL                         R23 R1 K46 ["getNextOrder"]
      301 CALL                             R23 1 1
      302 SETTABLEKS                       R23 R22 K40 ["LayoutOrder"]
      304 CALL                             R20 2 1
      305 SETTABLEKS                       R20 R19 K50 ["Separator"]
      307 GETUPVAL                         R20 7
      308 GETTABLEKS                       R20 R20 K39 ["createElement"]
      310 GETUPVAL                         R21 9
      311 NEWTABLE                         R22 4 0
      313 NAMECALL                         R23 R1 K46 ["getNextOrder"]
      315 CALL                             R23 1 1
      316 SETTABLEKS                       R23 R22 K40 ["LayoutOrder"]
      318 LOADK                            R25 K59 ["AssetProperty"]
      319 LOADK                            R26 K3 ["AssetType"]
      320 NAMECALL                         R23 R2 K18 ["getText"]
      322 CALL                             R23 3 1
      323 SETTABLEKS                       R23 R22 K14 ["Text"]
      325 GETUPVAL                         R23 7
      326 GETTABLEKS                       R23 R23 K41 ["Tag"]
      328 LOADK                            R24 K55 ["X-FitY Left Bold X-Pad"]
      329 SETTABLE                         R24 R22 R23
      330 CALL                             R20 2 1
      331 SETTABLEKS                       R20 R19 K51 ["AssetTypeHeader"]
      333 GETUPVAL                         R20 7
      334 GETTABLEKS                       R20 R20 K39 ["createElement"]
      336 GETUPVAL                         R21 8
      337 NEWTABLE                         R22 2 0
      339 NAMECALL                         R23 R1 K46 ["getNextOrder"]
      341 CALL                             R23 1 1
      342 SETTABLEKS                       R23 R22 K40 ["LayoutOrder"]
      344 GETUPVAL                         R23 7
      345 GETTABLEKS                       R23 R23 K41 ["Tag"]
      347 LOADK                            R24 K60 ["X-ColumnM X-Center am-padding-left-medium fill"]
      348 SETTABLE                         R24 R22 R23
      349 DUPTABLE                         R23 K62 [{"RadioButtonListContainer"}]
      350 GETUPVAL                         R24 7
      351 GETTABLEKS                       R24 R24 K39 ["createElement"]
      353 GETUPVAL                         R25 12
      354 NEWTABLE                         R26 4 0
      356 NAMECALL                         R27 R1 K46 ["getNextOrder"]
      358 CALL                             R27 1 1
      359 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      361 SETTABLEKS                       R9 R26 K63 ["CanvasSize"]
      363 GETUPVAL                         R27 7
      364 GETTABLEKS                       R27 R27 K41 ["Tag"]
      366 LOADK                            R28 K64 ["am-padding-bottom-small fill"]
      367 SETTABLE                         R28 R26 R27
      368 NEWTABLE                         R27 0 1
      370 GETUPVAL                         R28 7
      371 GETTABLEKS                       R28 R28 K39 ["createElement"]
      373 GETUPVAL                         R29 8
      374 NEWTABLE                         R30 2 0
      376 GETUPVAL                         R31 7
      377 GETTABLEKS                       R31 R31 K65 ["Change"]
      379 GETTABLEKS                       R31 R31 K66 ["AbsoluteSize"]
      381 NEWCLOSURE                       R32 P2
      382 CAPTURE                          VAL R10
      383 SETTABLE                         R32 R30 R31
      384 GETUPVAL                         R31 7
      385 GETTABLEKS                       R31 R31 K41 ["Tag"]
      387 LOADK                            R32 K67 ["X-Fit"]
      388 SETTABLE                         R32 R30 R31
      389 DUPTABLE                         R31 K69 [{"RadioButtonList"}]
      390 GETUPVAL                         R32 7
      391 GETTABLEKS                       R32 R32 K39 ["createElement"]
      393 GETUPVAL                         R33 13
      394 DUPTABLE                         R34 K74 [{"LayoutOrder", "Buttons", "CurrentSelectedKey", "OnClick", "FillDirection", "TextXAlignment"}]
      395 NAMECALL                         R35 R1 K46 ["getNextOrder"]
      397 CALL                             R35 1 1
      398 SETTABLEKS                       R35 R34 K40 ["LayoutOrder"]
      400 SETTABLEKS                       R8 R34 K70 ["Buttons"]
      402 SETTABLEKS                       R6 R34 K71 ["CurrentSelectedKey"]
      404 NEWCLOSURE                       R35 P3
      405 CAPTURE                          VAL R3
      406 SETTABLEKS                       R35 R34 K32 ["OnClick"]
      408 GETIMPORT                        R35 K77 [Enum.FillDirection.Vertical]
      410 SETTABLEKS                       R35 R34 K72 ["FillDirection"]
      412 GETIMPORT                        R35 K79 [Enum.TextXAlignment.Left]
      414 SETTABLEKS                       R35 R34 K73 ["TextXAlignment"]
      416 CALL                             R32 2 1
      417 SETTABLEKS                       R32 R31 K68 ["RadioButtonList"]
      419 CALL                             R28 3 -1
      420 SETLIST                          R27 R28 -1 [1]
      422 CALL                             R24 3 1
      423 SETTABLEKS                       R24 R23 K61 ["RadioButtonListContainer"]
      425 CALL                             R20 3 1
      426 SETTABLEKS                       R20 R19 K52 ["AssetTypes"]
      428 CALL                             R16 3 1
      429 SETTABLEKS                       R16 R15 K43 ["Contents"]
      431 GETUPVAL                         R16 7
      432 GETTABLEKS                       R16 R16 K39 ["createElement"]
      434 GETUPVAL                         R17 14
      435 DUPTABLE                         R18 K80 [{"LayoutOrder", "Buttons"}]
      436 NAMECALL                         R19 R1 K46 ["getNextOrder"]
      438 CALL                             R19 1 1
      439 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
      441 SETTABLEKS                       R11 R18 K70 ["Buttons"]
      443 CALL                             R16 2 1
      444 SETTABLEKS                       R16 R15 K44 ["Toolbar"]
      446 CALL                             R12 3 -1
      447 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
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
       39 GETTABLEKS                       R12 R0 K17 ["Src"]
       41 GETTABLEKS                       R12 R12 K18 ["Components"]
       43 GETTABLEKS                       R12 R12 K19 ["Shared"]
       45 GETTABLEKS                       R12 R12 K20 ["Toolbar"]
       47 CALL                             R11 1 1
       48 GETIMPORT                        R12 K5 [require]
       50 GETIMPORT                        R13 K1 [script]
       52 GETTABLEKS                       R13 R13 K21 ["ScopeSelector"]
       54 CALL                             R12 1 1
       55 GETIMPORT                        R13 K5 [require]
       57 GETTABLEKS                       R14 R0 K17 ["Src"]
       59 GETTABLEKS                       R14 R14 K22 ["Controllers"]
       61 GETTABLEKS                       R14 R14 K23 ["SearchController"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETTABLEKS                       R15 R0 K17 ["Src"]
       68 GETTABLEKS                       R15 R15 K24 ["Hooks"]
       70 GETTABLEKS                       R15 R15 K25 ["useGameInfo"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K5 [require]
       75 GETTABLEKS                       R16 R0 K17 ["Src"]
       77 GETTABLEKS                       R16 R16 K24 ["Hooks"]
       79 GETTABLEKS                       R16 R16 K26 ["useSearchInfo"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R17 R0 K17 ["Src"]
       86 GETTABLEKS                       R17 R17 K27 ["Types"]
       88 CALL                             R16 1 1
       89 GETTABLEKS                       R17 R2 K28 ["Util"]
       91 GETTABLEKS                       R17 R17 K29 ["LayoutOrderIterator"]
       93 GETIMPORT                        R18 K5 [require]
       95 GETTABLEKS                       R19 R0 K17 ["Src"]
       97 GETTABLEKS                       R19 R19 K30 ["Flags"]
       99 GETTABLEKS                       R19 R19 K31 ["getFFlagAmrOrganizationFoundation"]
      101 CALL                             R18 1 1
      102 DUPCLOSURE                       R19 K32 [PROTO_4]
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R11
      118 RETURN                           R19 1
