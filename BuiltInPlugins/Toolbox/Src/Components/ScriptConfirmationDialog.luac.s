PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isDead"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 JUMPIF                           R1 ; [+12]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["props"]
       11 GETTABLEKS                       R1 R1 K3 ["onClose"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K2 ["props"]
       17 GETTABLEKS                       R1 R1 K3 ["onClose"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isDead"]
        3 JUMPIFNOT                        R3 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIF                           R2 ; [+12]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["props"]
        9 GETTABLEKS                       R3 R3 K2 ["onClose"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K1 ["props"]
       15 GETTABLEKS                       R3 R3 K2 ["onClose"]
       17 CALL                             R3 0 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["checked"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 0
        7 DUPTABLE                         R3 K2 [{"checked"}]
        8 SETTABLEKS                       R0 R3 K1 ["checked"]
       10 NAMECALL                         R1 R1 K3 ["setState"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K4 ["props"]
       16 GETTABLEKS                       R1 R1 K5 ["onChangeShowDialog"]
       18 NOT                              R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["isDead"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K1 ["onEnabledChanged"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K2 ["onAncestryChanged"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K3 ["onToggleShowAgain"]
       15 DUPTABLE                         R4 K6 [{["checked"] = False}]
       16 NAMECALL                         R2 R0 K7 ["setState"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isDead"]
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Info"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 LOADK                            R7 K5 ["ScriptWarning"]
       11 LOADK                            R8 K6 ["DetailText"]
       12 DUPTABLE                         R9 K9 [{"assetName", "numScripts"}]
       13 GETTABLEKS                       R10 R4 K7 ["assetName"]
       15 SETTABLEKS                       R10 R9 K7 ["assetName"]
       17 GETTABLEKS                       R10 R4 K8 ["numScripts"]
       19 SETTABLEKS                       R10 R9 K8 ["numScripts"]
       21 NAMECALL                         R5 R5 K10 ["getText"]
       23 CALL                             R5 4 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K11 ["FONT_SIZE_MEDIUM"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K12 ["FONT_BOLD"]
       30 GETTABLEKS                       R9 R1 K4 ["Localization"]
       32 LOADK                            R11 K5 ["ScriptWarning"]
       33 LOADK                            R12 K13 ["InstructionText"]
       34 NAMECALL                         R9 R9 K10 ["getText"]
       36 CALL                             R9 3 1
       37 LOADK                            R10 K14 [" "]
       38 GETTABLEKS                       R11 R1 K4 ["Localization"]
       40 LOADK                            R13 K5 ["ScriptWarning"]
       41 LOADK                            R14 K15 ["InstructionText2"]
       42 NAMECALL                         R11 R11 K10 ["getText"]
       44 CALL                             R11 3 1
       45 CONCAT                           R8 R9 R11
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K11 ["FONT_SIZE_MEDIUM"]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K16 ["FONT"]
       52 GETTABLEKS                       R11 R1 K4 ["Localization"]
       54 LOADK                            R13 K5 ["ScriptWarning"]
       55 LOADK                            R14 K17 ["DontShowAgain"]
       56 NAMECALL                         R11 R11 K10 ["getText"]
       58 CALL                             R11 3 1
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R12 R12 K11 ["FONT_SIZE_MEDIUM"]
       62 GETUPVAL                         R13 0
       63 GETTABLEKS                       R13 R13 K16 ["FONT"]
       65 GETTABLEKS                       R14 R1 K4 ["Localization"]
       67 LOADK                            R16 K18 ["Common"]
       68 LOADK                            R17 K19 ["OK"]
       69 NAMECALL                         R14 R14 K10 ["getText"]
       71 CALL                             R14 3 1
       72 GETTABLEKS                       R15 R1 K4 ["Localization"]
       74 LOADK                            R17 K20 ["Purchase"]
       75 LOADK                            R18 K21 ["Cancel"]
       76 NAMECALL                         R15 R15 K10 ["getText"]
       78 CALL                             R15 3 1
       79 GETTABLEKS                       R16 R1 K4 ["Localization"]
       81 LOADK                            R18 K22 ["General"]
       82 LOADK                            R19 K23 ["ToolboxToolbarName"]
       83 NAMECALL                         R16 R16 K10 ["getText"]
       85 CALL                             R16 3 1
       86 GETUPVAL                         R17 0
       87 GETTABLEKS                       R17 R17 K24 ["MESSAGE_BOX_BUTTON_WIDTH"]
       89 GETUPVAL                         R18 1
       90 MOVE                             R19 R5
       91 MOVE                             R20 R6
       92 MOVE                             R21 R7
       93 GETIMPORT                        R22 K27 [Vector2.new]
       95 LOADN                            R23 0
       96 LOADN                            R24 0
       97 CALL                             R22 2 -1
       98 CALL                             R18 -1 1
       99 GETUPVAL                         R19 1
      100 MOVE                             R20 R8
      101 MOVE                             R21 R9
      102 MOVE                             R22 R10
      103 GETIMPORT                        R23 K27 [Vector2.new]
      105 LOADN                            R24 0
      106 LOADN                            R25 0
      107 CALL                             R23 2 -1
      108 CALL                             R19 -1 1
      109 GETUPVAL                         R20 1
      110 MOVE                             R21 R11
      111 MOVE                             R22 R12
      112 MOVE                             R23 R13
      113 GETIMPORT                        R24 K27 [Vector2.new]
      115 LOADN                            R25 0
      116 LOADN                            R26 0
      117 CALL                             R24 2 -1
      118 CALL                             R20 -1 1
      119 GETTABLEKS                       R23 R18 K28 ["X"]
      121 FASTCALL2K                       MATH_MIN R23 K29 ; [+4]
      123 LOADK                            R24 K29 [424]
      124 GETIMPORT                        R22 K32 [math.min]
      126 CALL                             R22 2 1
      127 GETTABLEKS                       R24 R19 K28 ["X"]
      129 FASTCALL2K                       MATH_MIN R24 K29 ; [+4]
      131 LOADK                            R25 K29 [424]
      132 GETIMPORT                        R23 K32 [math.min]
      134 CALL                             R23 2 1
      135 GETTABLEKS                       R26 R20 K28 ["X"]
      137 FASTCALL2K                       MATH_MIN R26 K29 ; [+4]
      139 LOADK                            R27 K29 [424]
      140 GETIMPORT                        R25 K32 [math.min]
      142 CALL                             R25 2 1
      143 ADDK                             R24 R25 K33 [16]
      144 FASTCALL                         MATH_MAX ; [+2]
      145 GETIMPORT                        R21 K35 [math.max]
      147 CALL                             R21 3 1
      148 ADDK                             R22 R21 K36 [52]
      149 FASTCALL2                        MATH_MAX R17 R22 ; [+5]
      151 MOVE                             R25 R17
      152 MOVE                             R26 R22
      153 GETIMPORT                        R24 K35 [math.max]
      155 CALL                             R24 2 1
      156 FASTCALL2K                       MATH_MAX R24 K37 ; [+4]
      158 LOADK                            R25 K37 [120]
      159 GETIMPORT                        R23 K35 [math.max]
      161 CALL                             R23 2 1
      162 SUBK                             R24 R23 K36 [52]
      163 GETUPVAL                         R25 1
      164 MOVE                             R26 R5
      165 MOVE                             R27 R6
      166 MOVE                             R28 R7
      167 GETIMPORT                        R29 K27 [Vector2.new]
      169 MOVE                             R30 R24
      170 LOADN                            R31 1000
      171 CALL                             R29 2 -1
      172 CALL                             R25 -1 1
      173 GETUPVAL                         R26 1
      174 MOVE                             R27 R8
      175 MOVE                             R28 R9
      176 MOVE                             R29 R10
      177 GETIMPORT                        R30 K27 [Vector2.new]
      179 MOVE                             R31 R24
      180 LOADN                            R32 1000
      181 CALL                             R30 2 -1
      182 CALL                             R26 -1 1
      183 GETUPVAL                         R27 1
      184 MOVE                             R28 R11
      185 MOVE                             R29 R12
      186 MOVE                             R30 R13
      187 GETIMPORT                        R31 K27 [Vector2.new]
      189 SUBK                             R32 R24 K33 [16]
      190 LOADN                            R33 1000
      191 CALL                             R31 2 -1
      192 CALL                             R27 -1 1
      193 GETTABLEKS                       R28 R25 K38 ["Y"]
      195 GETTABLEKS                       R29 R26 K38 ["Y"]
      197 GETTABLEKS                       R30 R27 K38 ["Y"]
      199 LOADN                            R32 32
      200 ADD                              R35 R28 R30
      201 ADD                              R34 R35 R29
      202 ADDK                             R33 R34 K39 [8]
      203 FASTCALL2                        MATH_MAX R32 R33 ; [+3]
      205 GETIMPORT                        R31 K35 [math.max]
      207 CALL                             R31 2 1
      208 ADDK                             R33 R23 K40 [12]
      209 ADDK                             R32 R33 K40 [12]
      210 ADDK                             R36 R31 K39 [8]
      211 ADDK                             R35 R36 K40 [12]
      212 ADDK                             R34 R35 K41 [23]
      213 ADDK                             R33 R34 K40 [12]
      214 GETUPVAL                         R34 2
      215 GETTABLEKS                       R34 R34 K42 ["createElement"]
      217 GETUPVAL                         R35 3
      218 DUPTABLE                         R36 K45 [{"Text", "onButtonClicked"}]
      219 SETTABLEKS                       R15 R36 K43 ["Text"]
      221 GETTABLEKS                       R37 R0 K0 ["props"]
      223 GETTABLEKS                       R37 R37 K46 ["onCancel"]
      225 SETTABLEKS                       R37 R36 K44 ["onButtonClicked"]
      227 CALL                             R34 2 1
      228 GETUPVAL                         R35 2
      229 GETTABLEKS                       R35 R35 K42 ["createElement"]
      231 GETUPVAL                         R36 4
      232 NEWTABLE                         R37 8 0
      234 GETTABLEKS                       R38 R1 K47 ["Name"]
      236 SETTABLEKS                       R38 R37 K47 ["Name"]
      238 SETTABLEKS                       R16 R37 K48 ["Title"]
      240 GETIMPORT                        R38 K27 [Vector2.new]
      242 MOVE                             R39 R32
      243 MOVE                             R40 R33
      244 CALL                             R38 2 1
      245 SETTABLEKS                       R38 R37 K49 ["Size"]
      247 GETIMPORT                        R38 K53 [Enum.ZIndexBehavior.Sibling]
      249 SETTABLEKS                       R38 R37 K51 ["ZIndexBehavior"]
      251 LOADB                            R38 1
      252 SETTABLEKS                       R38 R37 K54 ["Modal"]
      254 GETTABLEKS                       R38 R0 K0 ["props"]
      256 GETTABLEKS                       R38 R38 K55 ["Plugin"]
      258 NAMECALL                         R38 R38 K56 ["get"]
      260 CALL                             R38 1 1
      261 SETTABLEKS                       R38 R37 K57 ["plugin"]
      263 GETUPVAL                         R38 2
      264 GETTABLEKS                       R38 R38 K58 ["Change"]
      266 GETTABLEKS                       R38 R38 K59 ["Enabled"]
      268 GETTABLEKS                       R39 R0 K60 ["onEnabledChanged"]
      270 SETTABLE                         R39 R37 R38
      271 GETUPVAL                         R38 2
      272 GETTABLEKS                       R38 R38 K61 ["Event"]
      274 GETTABLEKS                       R38 R38 K62 ["AncestryChanged"]
      276 GETTABLEKS                       R39 R0 K63 ["onAncestryChanged"]
      278 SETTABLE                         R39 R37 R38
      279 DUPTABLE                         R38 K65 [{"Background"}]
      280 GETUPVAL                         R39 2
      281 GETTABLEKS                       R39 R39 K42 ["createElement"]
      283 LOADK                            R40 K66 ["Frame"]
      284 DUPTABLE                         R41 K69 [{"Position", "Size", "BackgroundColor3"}]
      285 GETIMPORT                        R42 K71 [UDim2.new]
      287 LOADN                            R43 0
      288 LOADN                            R44 0
      289 LOADN                            R45 0
      290 LOADN                            R46 0
      291 CALL                             R42 4 1
      292 SETTABLEKS                       R42 R41 K67 ["Position"]
      294 GETIMPORT                        R42 K71 [UDim2.new]
      296 LOADN                            R43 1
      297 LOADN                            R44 0
      298 LOADN                            R45 1
      299 LOADN                            R46 0
      300 CALL                             R42 4 1
      301 SETTABLEKS                       R42 R41 K49 ["Size"]
      303 GETTABLEKS                       R42 R3 K72 ["messageBox"]
      305 GETTABLEKS                       R42 R42 K73 ["backgroundColor"]
      307 SETTABLEKS                       R42 R41 K68 ["BackgroundColor3"]
      309 DUPTABLE                         R42 K78 [{"UIPadding", "UIListLayout", "Information", "Buttons"}]
      310 GETUPVAL                         R43 2
      311 GETTABLEKS                       R43 R43 K42 ["createElement"]
      313 LOADK                            R44 K74 ["UIPadding"]
      314 DUPTABLE                         R45 K83 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      315 GETIMPORT                        R46 K85 [UDim.new]
      317 LOADN                            R47 0
      318 LOADN                            R48 12
      319 CALL                             R46 2 1
      320 SETTABLEKS                       R46 R45 K79 ["PaddingBottom"]
      322 GETIMPORT                        R46 K85 [UDim.new]
      324 LOADN                            R47 0
      325 LOADN                            R48 12
      326 CALL                             R46 2 1
      327 SETTABLEKS                       R46 R45 K80 ["PaddingLeft"]
      329 GETIMPORT                        R46 K85 [UDim.new]
      331 LOADN                            R47 0
      332 LOADN                            R48 12
      333 CALL                             R46 2 1
      334 SETTABLEKS                       R46 R45 K81 ["PaddingRight"]
      336 GETIMPORT                        R46 K85 [UDim.new]
      338 LOADN                            R47 0
      339 LOADN                            R48 8
      340 CALL                             R46 2 1
      341 SETTABLEKS                       R46 R45 K82 ["PaddingTop"]
      343 CALL                             R43 2 1
      344 SETTABLEKS                       R43 R42 K74 ["UIPadding"]
      346 GETUPVAL                         R43 2
      347 GETTABLEKS                       R43 R43 K42 ["createElement"]
      349 LOADK                            R44 K75 ["UIListLayout"]
      350 DUPTABLE                         R45 K90 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      351 GETIMPORT                        R46 K92 [Enum.SortOrder.LayoutOrder]
      353 SETTABLEKS                       R46 R45 K86 ["SortOrder"]
      355 GETIMPORT                        R46 K94 [Enum.HorizontalAlignment.Center]
      357 SETTABLEKS                       R46 R45 K87 ["HorizontalAlignment"]
      359 GETIMPORT                        R46 K96 [Enum.VerticalAlignment.Top]
      361 SETTABLEKS                       R46 R45 K88 ["VerticalAlignment"]
      363 GETIMPORT                        R46 K85 [UDim.new]
      365 LOADN                            R47 0
      366 LOADN                            R48 12
      367 CALL                             R46 2 1
      368 SETTABLEKS                       R46 R45 K89 ["Padding"]
      370 CALL                             R43 2 1
      371 SETTABLEKS                       R43 R42 K75 ["UIListLayout"]
      373 GETUPVAL                         R43 2
      374 GETTABLEKS                       R43 R43 K42 ["createElement"]
      376 LOADK                            R44 K66 ["Frame"]
      377 DUPTABLE                         R45 K99 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      378 GETIMPORT                        R46 K71 [UDim2.new]
      380 LOADN                            R47 1
      381 LOADN                            R48 0
      382 LOADN                            R49 0
      383 MOVE                             R50 R31
      384 CALL                             R46 4 1
      385 SETTABLEKS                       R46 R45 K49 ["Size"]
      387 DUPTABLE                         R46 K102 [{"UIListLayout", "Icon", "Texts"}]
      388 GETUPVAL                         R47 2
      389 GETTABLEKS                       R47 R47 K42 ["createElement"]
      391 LOADK                            R48 K75 ["UIListLayout"]
      392 DUPTABLE                         R49 K104 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      393 GETIMPORT                        R50 K92 [Enum.SortOrder.LayoutOrder]
      395 SETTABLEKS                       R50 R49 K86 ["SortOrder"]
      397 GETIMPORT                        R50 K106 [Enum.HorizontalAlignment.Left]
      399 SETTABLEKS                       R50 R49 K87 ["HorizontalAlignment"]
      401 GETIMPORT                        R50 K96 [Enum.VerticalAlignment.Top]
      403 SETTABLEKS                       R50 R49 K88 ["VerticalAlignment"]
      405 GETIMPORT                        R50 K85 [UDim.new]
      407 LOADN                            R51 0
      408 LOADN                            R52 20
      409 CALL                             R50 2 1
      410 SETTABLEKS                       R50 R49 K89 ["Padding"]
      412 GETIMPORT                        R50 K108 [Enum.FillDirection.Horizontal]
      414 SETTABLEKS                       R50 R49 K103 ["FillDirection"]
      416 CALL                             R47 2 1
      417 SETTABLEKS                       R47 R46 K75 ["UIListLayout"]
      419 GETUPVAL                         R47 2
      420 GETTABLEKS                       R47 R47 K42 ["createElement"]
      422 LOADK                            R48 K109 ["ImageLabel"]
      423 DUPTABLE                         R49 K112 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 0, ["Image"]}]
      424 GETIMPORT                        R50 K71 [UDim2.new]
      426 LOADN                            R51 0
      427 LOADN                            R52 32
      428 LOADN                            R53 0
      429 LOADN                            R54 32
      430 CALL                             R50 4 1
      431 SETTABLEKS                       R50 R49 K49 ["Size"]
      433 GETTABLEKS                       R50 R1 K100 ["Icon"]
      435 SETTABLEKS                       R50 R49 K111 ["Image"]
      437 CALL                             R47 2 1
      438 SETTABLEKS                       R47 R46 K100 ["Icon"]
      440 GETUPVAL                         R47 2
      441 GETTABLEKS                       R47 R47 K42 ["createElement"]
      443 LOADK                            R48 K66 ["Frame"]
      444 DUPTABLE                         R49 K113 [{["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1}]
      445 GETIMPORT                        R50 K71 [UDim2.new]
      447 LOADN                            R51 1
      448 LOADN                            R52 -52
      449 LOADN                            R53 1
      450 LOADN                            R54 0
      451 CALL                             R50 4 1
      452 SETTABLEKS                       R50 R49 K49 ["Size"]
      454 DUPTABLE                         R50 K117 [{"UIListLayout", "DetailLabel", "InstructionLabel", "ShowAgainCheckbox"}]
      455 GETUPVAL                         R51 2
      456 GETTABLEKS                       R51 R51 K42 ["createElement"]
      458 LOADK                            R52 K75 ["UIListLayout"]
      459 DUPTABLE                         R53 K104 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      460 GETIMPORT                        R54 K92 [Enum.SortOrder.LayoutOrder]
      462 SETTABLEKS                       R54 R53 K86 ["SortOrder"]
      464 GETIMPORT                        R54 K106 [Enum.HorizontalAlignment.Left]
      466 SETTABLEKS                       R54 R53 K87 ["HorizontalAlignment"]
      468 GETIMPORT                        R54 K96 [Enum.VerticalAlignment.Top]
      470 SETTABLEKS                       R54 R53 K88 ["VerticalAlignment"]
      472 GETIMPORT                        R54 K85 [UDim.new]
      474 LOADN                            R55 0
      475 LOADN                            R56 8
      476 CALL                             R54 2 1
      477 SETTABLEKS                       R54 R53 K89 ["Padding"]
      479 GETIMPORT                        R54 K119 [Enum.FillDirection.Vertical]
      481 SETTABLEKS                       R54 R53 K103 ["FillDirection"]
      483 CALL                             R51 2 1
      484 SETTABLEKS                       R51 R50 K75 ["UIListLayout"]
      486 GETUPVAL                         R51 2
      487 GETTABLEKS                       R51 R51 K42 ["createElement"]
      489 LOADK                            R52 K120 ["TextLabel"]
      490 DUPTABLE                         R53 K128 [{["LayoutOrder"] = 0, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      491 GETIMPORT                        R54 K71 [UDim2.new]
      493 LOADN                            R55 1
      494 LOADN                            R56 0
      495 LOADN                            R57 0
      496 MOVE                             R58 R28
      497 CALL                             R54 4 1
      498 SETTABLEKS                       R54 R53 K49 ["Size"]
      500 SETTABLEKS                       R5 R53 K43 ["Text"]
      502 SETTABLEKS                       R7 R53 K121 ["Font"]
      504 SETTABLEKS                       R6 R53 K122 ["TextSize"]
      506 GETTABLEKS                       R54 R3 K72 ["messageBox"]
      508 GETTABLEKS                       R54 R54 K129 ["textColor"]
      510 SETTABLEKS                       R54 R53 K123 ["TextColor3"]
      512 GETIMPORT                        R54 K130 [Enum.TextXAlignment.Left]
      514 SETTABLEKS                       R54 R53 K124 ["TextXAlignment"]
      516 GETIMPORT                        R54 K131 [Enum.TextYAlignment.Top]
      518 SETTABLEKS                       R54 R53 K125 ["TextYAlignment"]
      520 CALL                             R51 2 1
      521 SETTABLEKS                       R51 R50 K114 ["DetailLabel"]
      523 GETUPVAL                         R51 2
      524 GETTABLEKS                       R51 R51 K42 ["createElement"]
      526 LOADK                            R52 K120 ["TextLabel"]
      527 DUPTABLE                         R53 K132 [{["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      528 GETIMPORT                        R54 K71 [UDim2.new]
      530 LOADN                            R55 1
      531 LOADN                            R56 0
      532 LOADN                            R57 0
      533 MOVE                             R58 R29
      534 CALL                             R54 4 1
      535 SETTABLEKS                       R54 R53 K49 ["Size"]
      537 SETTABLEKS                       R8 R53 K43 ["Text"]
      539 SETTABLEKS                       R10 R53 K121 ["Font"]
      541 SETTABLEKS                       R9 R53 K122 ["TextSize"]
      543 GETTABLEKS                       R54 R3 K72 ["messageBox"]
      545 GETTABLEKS                       R54 R54 K129 ["textColor"]
      547 SETTABLEKS                       R54 R53 K123 ["TextColor3"]
      549 GETIMPORT                        R54 K130 [Enum.TextXAlignment.Left]
      551 SETTABLEKS                       R54 R53 K124 ["TextXAlignment"]
      553 GETIMPORT                        R54 K131 [Enum.TextYAlignment.Top]
      555 SETTABLEKS                       R54 R53 K125 ["TextYAlignment"]
      557 CALL                             R51 2 1
      558 SETTABLEKS                       R51 R50 K115 ["InstructionLabel"]
      560 GETUPVAL                         R51 2
      561 GETTABLEKS                       R51 R51 K42 ["createElement"]
      563 GETUPVAL                         R52 5
      564 DUPTABLE                         R53 K136 [{["LayoutOrder"] = 2, ["Text"], ["Font"], ["TextSize"], ["OnClick"], ["Size"], ["Checked"]}]
      565 SETTABLEKS                       R11 R53 K43 ["Text"]
      567 SETTABLEKS                       R13 R53 K121 ["Font"]
      569 SETTABLEKS                       R12 R53 K122 ["TextSize"]
      571 GETTABLEKS                       R54 R0 K137 ["onToggleShowAgain"]
      573 SETTABLEKS                       R54 R53 K134 ["OnClick"]
      575 GETIMPORT                        R54 K71 [UDim2.new]
      577 LOADN                            R55 1
      578 LOADN                            R56 0
      579 LOADN                            R57 0
      580 MOVE                             R58 R30
      581 CALL                             R54 4 1
      582 SETTABLEKS                       R54 R53 K49 ["Size"]
      584 GETTABLEKS                       R54 R2 K138 ["checked"]
      586 SETTABLEKS                       R54 R53 K135 ["Checked"]
      588 CALL                             R51 2 1
      589 SETTABLEKS                       R51 R50 K116 ["ShowAgainCheckbox"]
      591 CALL                             R47 3 1
      592 SETTABLEKS                       R47 R46 K101 ["Texts"]
      594 CALL                             R43 3 1
      595 SETTABLEKS                       R43 R42 K76 ["Information"]
      597 GETUPVAL                         R43 2
      598 GETTABLEKS                       R43 R43 K42 ["createElement"]
      600 LOADK                            R44 K66 ["Frame"]
      601 DUPTABLE                         R45 K139 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      602 GETIMPORT                        R46 K71 [UDim2.new]
      604 LOADN                            R47 1
      605 LOADN                            R48 0
      606 LOADN                            R49 0
      607 LOADN                            R50 23
      608 CALL                             R46 4 1
      609 SETTABLEKS                       R46 R45 K49 ["Size"]
      611 DUPTABLE                         R46 K142 [{"UIListLayout", "OkButton", "CancelButton"}]
      612 GETUPVAL                         R47 2
      613 GETTABLEKS                       R47 R47 K42 ["createElement"]
      615 LOADK                            R48 K75 ["UIListLayout"]
      616 DUPTABLE                         R49 K143 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Padding"}]
      617 GETIMPORT                        R50 K92 [Enum.SortOrder.LayoutOrder]
      619 SETTABLEKS                       R50 R49 K86 ["SortOrder"]
      621 GETIMPORT                        R50 K145 [Enum.HorizontalAlignment.Right]
      623 SETTABLEKS                       R50 R49 K87 ["HorizontalAlignment"]
      625 GETIMPORT                        R50 K96 [Enum.VerticalAlignment.Top]
      627 SETTABLEKS                       R50 R49 K88 ["VerticalAlignment"]
      629 GETIMPORT                        R50 K108 [Enum.FillDirection.Horizontal]
      631 SETTABLEKS                       R50 R49 K103 ["FillDirection"]
      633 GETIMPORT                        R50 K85 [UDim.new]
      635 LOADN                            R51 0
      636 LOADN                            R52 8
      637 CALL                             R50 2 1
      638 SETTABLEKS                       R50 R49 K89 ["Padding"]
      640 CALL                             R47 2 1
      641 SETTABLEKS                       R47 R46 K75 ["UIListLayout"]
      643 GETUPVAL                         R47 2
      644 GETTABLEKS                       R47 R47 K42 ["createElement"]
      646 GETUPVAL                         R48 3
      647 DUPTABLE                         R49 K45 [{"Text", "onButtonClicked"}]
      648 SETTABLEKS                       R14 R49 K43 ["Text"]
      650 GETTABLEKS                       R50 R0 K0 ["props"]
      652 GETTABLEKS                       R50 R50 K146 ["onOkButtonClicked"]
      654 SETTABLEKS                       R50 R49 K44 ["onButtonClicked"]
      656 CALL                             R47 2 1
      657 SETTABLEKS                       R47 R46 K140 ["OkButton"]
      659 SETTABLEKS                       R34 R46 K141 ["CancelButton"]
      661 CALL                             R43 3 1
      662 SETTABLEKS                       R43 R42 K77 ["Buttons"]
      664 CALL                             R39 3 1
      665 SETTABLEKS                       R39 R38 K64 ["Background"]
      667 CALL                             R35 3 -1
      668 RETURN                           R35 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R4 K9 ["Util"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["Constants"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       32 GETTABLEKS                       R7 R6 K12 ["withContext"]
       34 GETTABLEKS                       R8 R3 K13 ["UI"]
       36 GETTABLEKS                       R9 R8 K14 ["Checkbox"]
       38 GETTABLEKS                       R10 R3 K9 ["Util"]
       40 GETTABLEKS                       R10 R10 K15 ["GetTextSize"]
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R12 R0 K8 ["Src"]
       46 GETTABLEKS                       R12 R12 K16 ["Components"]
       48 GETTABLEKS                       R12 R12 K17 ["PluginWidget"]
       50 GETTABLEKS                       R12 R12 K18 ["Dialog"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K5 [require]
       55 GETTABLEKS                       R13 R0 K8 ["Src"]
       57 GETTABLEKS                       R13 R13 K16 ["Components"]
       59 GETTABLEKS                       R13 R13 K19 ["MessageBox"]
       61 GETTABLEKS                       R13 R13 K20 ["MessageBoxButton"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K5 [require]
       66 GETTABLEKS                       R14 R0 K8 ["Src"]
       68 GETTABLEKS                       R14 R14 K11 ["ContextServices"]
       70 GETTABLEKS                       R14 R14 K21 ["ModalContext"]
       72 CALL                             R13 1 1
       73 GETTABLEKS                       R14 R2 K22 ["PureComponent"]
       75 LOADK                            R16 K23 ["ScriptConfirmationDialog"]
       76 NAMECALL                         R14 R14 K24 ["extend"]
       78 CALL                             R14 2 1
       79 DUPCLOSURE                       R15 K25 [PROTO_3]
       80 SETTABLEKS                       R15 R14 K26 ["init"]
       82 DUPCLOSURE                       R15 K27 [PROTO_4]
       83 SETTABLEKS                       R15 R14 K28 ["willUnmount"]
       85 DUPCLOSURE                       R15 K29 [PROTO_5]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R9
       92 SETTABLEKS                       R15 R14 K30 ["render"]
       94 MOVE                             R15 R7
       95 DUPTABLE                         R16 K34 [{"Plugin", "Stylizer", "Localization"}]
       96 GETTABLEKS                       R17 R6 K31 ["Plugin"]
       98 SETTABLEKS                       R17 R16 K31 ["Plugin"]
      100 GETTABLEKS                       R17 R6 K32 ["Stylizer"]
      102 SETTABLEKS                       R17 R16 K32 ["Stylizer"]
      104 GETTABLEKS                       R17 R6 K33 ["Localization"]
      106 SETTABLEKS                       R17 R16 K33 ["Localization"]
      108 CALL                             R15 1 1
      109 MOVE                             R16 R14
      110 CALL                             R15 1 1
      111 MOVE                             R14 R15
      112 RETURN                           R14 1
