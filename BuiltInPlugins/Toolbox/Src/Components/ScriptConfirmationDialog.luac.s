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
       30 GETTABLEKS                       R12 R1 K4 ["Localization"]
       32 LOADK                            R14 K5 ["ScriptWarning"]
       33 LOADK                            R15 K13 ["InstructionText"]
       34 NAMECALL                         R12 R12 K10 ["getText"]
       36 CALL                             R12 3 1
       37 MOVE                             R9 R12
       38 LOADK                            R10 K14 [" "]
       39 GETTABLEKS                       R11 R1 K4 ["Localization"]
       41 LOADK                            R13 K5 ["ScriptWarning"]
       42 LOADK                            R14 K15 ["InstructionText2"]
       43 NAMECALL                         R11 R11 K10 ["getText"]
       45 CALL                             R11 3 1
       46 CONCAT                           R8 R9 R11
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K11 ["FONT_SIZE_MEDIUM"]
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K16 ["FONT"]
       53 GETTABLEKS                       R11 R1 K4 ["Localization"]
       55 LOADK                            R13 K5 ["ScriptWarning"]
       56 LOADK                            R14 K17 ["DontShowAgain"]
       57 NAMECALL                         R11 R11 K10 ["getText"]
       59 CALL                             R11 3 1
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K11 ["FONT_SIZE_MEDIUM"]
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R13 R13 K16 ["FONT"]
       66 GETTABLEKS                       R14 R1 K4 ["Localization"]
       68 LOADK                            R16 K18 ["Common"]
       69 LOADK                            R17 K19 ["OK"]
       70 NAMECALL                         R14 R14 K10 ["getText"]
       72 CALL                             R14 3 1
       73 GETTABLEKS                       R15 R1 K4 ["Localization"]
       75 LOADK                            R17 K20 ["Purchase"]
       76 LOADK                            R18 K21 ["Cancel"]
       77 NAMECALL                         R15 R15 K10 ["getText"]
       79 CALL                             R15 3 1
       80 GETTABLEKS                       R16 R1 K4 ["Localization"]
       82 LOADK                            R18 K22 ["General"]
       83 LOADK                            R19 K23 ["ToolboxToolbarName"]
       84 NAMECALL                         R16 R16 K10 ["getText"]
       86 CALL                             R16 3 1
       87 GETUPVAL                         R17 0
       88 GETTABLEKS                       R17 R17 K24 ["MESSAGE_BOX_BUTTON_WIDTH"]
       90 GETUPVAL                         R18 1
       91 MOVE                             R19 R5
       92 MOVE                             R20 R6
       93 MOVE                             R21 R7
       94 GETIMPORT                        R22 K27 [Vector2.new]
       96 LOADN                            R23 0
       97 LOADN                            R24 0
       98 CALL                             R22 2 -1
       99 CALL                             R18 -1 1
      100 GETUPVAL                         R19 1
      101 MOVE                             R20 R8
      102 MOVE                             R21 R9
      103 MOVE                             R22 R10
      104 GETIMPORT                        R23 K27 [Vector2.new]
      106 LOADN                            R24 0
      107 LOADN                            R25 0
      108 CALL                             R23 2 -1
      109 CALL                             R19 -1 1
      110 GETUPVAL                         R20 1
      111 MOVE                             R21 R11
      112 MOVE                             R22 R12
      113 MOVE                             R23 R13
      114 GETIMPORT                        R24 K27 [Vector2.new]
      116 LOADN                            R25 0
      117 LOADN                            R26 0
      118 CALL                             R24 2 -1
      119 CALL                             R20 -1 1
      120 GETTABLEKS                       R23 R18 K28 ["X"]
      122 FASTCALL2K                       MATH_MIN R23 K29 ; [+4]
      124 LOADK                            R24 K29 [424]
      125 GETIMPORT                        R22 K32 [math.min]
      127 CALL                             R22 2 1
      128 GETTABLEKS                       R24 R19 K28 ["X"]
      130 FASTCALL2K                       MATH_MIN R24 K29 ; [+4]
      132 LOADK                            R25 K29 [424]
      133 GETIMPORT                        R23 K32 [math.min]
      135 CALL                             R23 2 1
      136 GETTABLEKS                       R26 R20 K28 ["X"]
      138 FASTCALL2K                       MATH_MIN R26 K29 ; [+4]
      140 LOADK                            R27 K29 [424]
      141 GETIMPORT                        R25 K32 [math.min]
      143 CALL                             R25 2 1
      144 ADDK                             R24 R25 K33 [16]
      145 FASTCALL                         MATH_MAX ; [+2]
      146 GETIMPORT                        R21 K35 [math.max]
      148 CALL                             R21 3 1
      149 ADDK                             R22 R21 K36 [52]
      150 FASTCALL2                        MATH_MAX R17 R22 ; [+5]
      152 MOVE                             R25 R17
      153 MOVE                             R26 R22
      154 GETIMPORT                        R24 K35 [math.max]
      156 CALL                             R24 2 1
      157 FASTCALL2K                       MATH_MAX R24 K37 ; [+4]
      159 LOADK                            R25 K37 [120]
      160 GETIMPORT                        R23 K35 [math.max]
      162 CALL                             R23 2 1
      163 SUBK                             R24 R23 K36 [52]
      164 GETUPVAL                         R25 1
      165 MOVE                             R26 R5
      166 MOVE                             R27 R6
      167 MOVE                             R28 R7
      168 GETIMPORT                        R29 K27 [Vector2.new]
      170 MOVE                             R30 R24
      171 LOADN                            R31 1000
      172 CALL                             R29 2 -1
      173 CALL                             R25 -1 1
      174 GETUPVAL                         R26 1
      175 MOVE                             R27 R8
      176 MOVE                             R28 R9
      177 MOVE                             R29 R10
      178 GETIMPORT                        R30 K27 [Vector2.new]
      180 MOVE                             R31 R24
      181 LOADN                            R32 1000
      182 CALL                             R30 2 -1
      183 CALL                             R26 -1 1
      184 GETUPVAL                         R27 1
      185 MOVE                             R28 R11
      186 MOVE                             R29 R12
      187 MOVE                             R30 R13
      188 GETIMPORT                        R31 K27 [Vector2.new]
      190 SUBK                             R32 R24 K33 [16]
      191 LOADN                            R33 1000
      192 CALL                             R31 2 -1
      193 CALL                             R27 -1 1
      194 GETTABLEKS                       R28 R25 K38 ["Y"]
      196 GETTABLEKS                       R29 R26 K38 ["Y"]
      198 GETTABLEKS                       R30 R27 K38 ["Y"]
      200 LOADN                            R32 32
      201 ADD                              R35 R28 R30
      202 ADD                              R34 R35 R29
      203 ADDK                             R33 R34 K39 [8]
      204 FASTCALL2                        MATH_MAX R32 R33 ; [+3]
      206 GETIMPORT                        R31 K35 [math.max]
      208 CALL                             R31 2 1
      209 ADDK                             R33 R23 K40 [12]
      210 ADDK                             R32 R33 K40 [12]
      211 ADDK                             R36 R31 K39 [8]
      212 ADDK                             R35 R36 K40 [12]
      213 ADDK                             R34 R35 K41 [23]
      214 ADDK                             R33 R34 K40 [12]
      215 GETUPVAL                         R34 2
      216 GETTABLEKS                       R34 R34 K42 ["createElement"]
      218 GETUPVAL                         R35 3
      219 DUPTABLE                         R36 K45 [{"Text", "onButtonClicked"}]
      220 SETTABLEKS                       R15 R36 K43 ["Text"]
      222 GETTABLEKS                       R37 R0 K0 ["props"]
      224 GETTABLEKS                       R37 R37 K46 ["onCancel"]
      226 SETTABLEKS                       R37 R36 K44 ["onButtonClicked"]
      228 CALL                             R34 2 1
      229 GETUPVAL                         R35 2
      230 GETTABLEKS                       R35 R35 K42 ["createElement"]
      232 GETUPVAL                         R36 4
      233 NEWTABLE                         R37 8 0
      235 GETTABLEKS                       R38 R1 K47 ["Name"]
      237 SETTABLEKS                       R38 R37 K47 ["Name"]
      239 SETTABLEKS                       R16 R37 K48 ["Title"]
      241 GETIMPORT                        R38 K27 [Vector2.new]
      243 MOVE                             R39 R32
      244 MOVE                             R40 R33
      245 CALL                             R38 2 1
      246 SETTABLEKS                       R38 R37 K49 ["Size"]
      248 GETIMPORT                        R38 K53 [Enum.ZIndexBehavior.Sibling]
      250 SETTABLEKS                       R38 R37 K51 ["ZIndexBehavior"]
      252 LOADB                            R38 1
      253 SETTABLEKS                       R38 R37 K54 ["Modal"]
      255 GETTABLEKS                       R38 R0 K0 ["props"]
      257 GETTABLEKS                       R38 R38 K55 ["Plugin"]
      259 NAMECALL                         R38 R38 K56 ["get"]
      261 CALL                             R38 1 1
      262 SETTABLEKS                       R38 R37 K57 ["plugin"]
      264 GETUPVAL                         R38 2
      265 GETTABLEKS                       R38 R38 K58 ["Change"]
      267 GETTABLEKS                       R38 R38 K59 ["Enabled"]
      269 GETTABLEKS                       R39 R0 K60 ["onEnabledChanged"]
      271 SETTABLE                         R39 R37 R38
      272 GETUPVAL                         R38 2
      273 GETTABLEKS                       R38 R38 K61 ["Event"]
      275 GETTABLEKS                       R38 R38 K62 ["AncestryChanged"]
      277 GETTABLEKS                       R39 R0 K63 ["onAncestryChanged"]
      279 SETTABLE                         R39 R37 R38
      280 DUPTABLE                         R38 K65 [{"Background"}]
      281 GETUPVAL                         R39 2
      282 GETTABLEKS                       R39 R39 K42 ["createElement"]
      284 LOADK                            R40 K66 ["Frame"]
      285 DUPTABLE                         R41 K69 [{"Position", "Size", "BackgroundColor3"}]
      286 GETIMPORT                        R42 K71 [UDim2.new]
      288 LOADN                            R43 0
      289 LOADN                            R44 0
      290 LOADN                            R45 0
      291 LOADN                            R46 0
      292 CALL                             R42 4 1
      293 SETTABLEKS                       R42 R41 K67 ["Position"]
      295 GETIMPORT                        R42 K71 [UDim2.new]
      297 LOADN                            R43 1
      298 LOADN                            R44 0
      299 LOADN                            R45 1
      300 LOADN                            R46 0
      301 CALL                             R42 4 1
      302 SETTABLEKS                       R42 R41 K49 ["Size"]
      304 GETTABLEKS                       R42 R3 K72 ["messageBox"]
      306 GETTABLEKS                       R42 R42 K73 ["backgroundColor"]
      308 SETTABLEKS                       R42 R41 K68 ["BackgroundColor3"]
      310 DUPTABLE                         R42 K78 [{"UIPadding", "UIListLayout", "Information", "Buttons"}]
      311 GETUPVAL                         R43 2
      312 GETTABLEKS                       R43 R43 K42 ["createElement"]
      314 LOADK                            R44 K74 ["UIPadding"]
      315 DUPTABLE                         R45 K83 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      316 GETIMPORT                        R46 K85 [UDim.new]
      318 LOADN                            R47 0
      319 LOADN                            R48 12
      320 CALL                             R46 2 1
      321 SETTABLEKS                       R46 R45 K79 ["PaddingBottom"]
      323 GETIMPORT                        R46 K85 [UDim.new]
      325 LOADN                            R47 0
      326 LOADN                            R48 12
      327 CALL                             R46 2 1
      328 SETTABLEKS                       R46 R45 K80 ["PaddingLeft"]
      330 GETIMPORT                        R46 K85 [UDim.new]
      332 LOADN                            R47 0
      333 LOADN                            R48 12
      334 CALL                             R46 2 1
      335 SETTABLEKS                       R46 R45 K81 ["PaddingRight"]
      337 GETIMPORT                        R46 K85 [UDim.new]
      339 LOADN                            R47 0
      340 LOADN                            R48 8
      341 CALL                             R46 2 1
      342 SETTABLEKS                       R46 R45 K82 ["PaddingTop"]
      344 CALL                             R43 2 1
      345 SETTABLEKS                       R43 R42 K74 ["UIPadding"]
      347 GETUPVAL                         R43 2
      348 GETTABLEKS                       R43 R43 K42 ["createElement"]
      350 LOADK                            R44 K75 ["UIListLayout"]
      351 DUPTABLE                         R45 K90 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      352 GETIMPORT                        R46 K92 [Enum.SortOrder.LayoutOrder]
      354 SETTABLEKS                       R46 R45 K86 ["SortOrder"]
      356 GETIMPORT                        R46 K94 [Enum.HorizontalAlignment.Center]
      358 SETTABLEKS                       R46 R45 K87 ["HorizontalAlignment"]
      360 GETIMPORT                        R46 K96 [Enum.VerticalAlignment.Top]
      362 SETTABLEKS                       R46 R45 K88 ["VerticalAlignment"]
      364 GETIMPORT                        R46 K85 [UDim.new]
      366 LOADN                            R47 0
      367 LOADN                            R48 12
      368 CALL                             R46 2 1
      369 SETTABLEKS                       R46 R45 K89 ["Padding"]
      371 CALL                             R43 2 1
      372 SETTABLEKS                       R43 R42 K75 ["UIListLayout"]
      374 GETUPVAL                         R43 2
      375 GETTABLEKS                       R43 R43 K42 ["createElement"]
      377 LOADK                            R44 K66 ["Frame"]
      378 DUPTABLE                         R45 K99 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      379 GETIMPORT                        R46 K71 [UDim2.new]
      381 LOADN                            R47 1
      382 LOADN                            R48 0
      383 LOADN                            R49 0
      384 MOVE                             R50 R31
      385 CALL                             R46 4 1
      386 SETTABLEKS                       R46 R45 K49 ["Size"]
      388 DUPTABLE                         R46 K102 [{"UIListLayout", "Icon", "Texts"}]
      389 GETUPVAL                         R47 2
      390 GETTABLEKS                       R47 R47 K42 ["createElement"]
      392 LOADK                            R48 K75 ["UIListLayout"]
      393 DUPTABLE                         R49 K104 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      394 GETIMPORT                        R50 K92 [Enum.SortOrder.LayoutOrder]
      396 SETTABLEKS                       R50 R49 K86 ["SortOrder"]
      398 GETIMPORT                        R50 K106 [Enum.HorizontalAlignment.Left]
      400 SETTABLEKS                       R50 R49 K87 ["HorizontalAlignment"]
      402 GETIMPORT                        R50 K96 [Enum.VerticalAlignment.Top]
      404 SETTABLEKS                       R50 R49 K88 ["VerticalAlignment"]
      406 GETIMPORT                        R50 K85 [UDim.new]
      408 LOADN                            R51 0
      409 LOADN                            R52 20
      410 CALL                             R50 2 1
      411 SETTABLEKS                       R50 R49 K89 ["Padding"]
      413 GETIMPORT                        R50 K108 [Enum.FillDirection.Horizontal]
      415 SETTABLEKS                       R50 R49 K103 ["FillDirection"]
      417 CALL                             R47 2 1
      418 SETTABLEKS                       R47 R46 K75 ["UIListLayout"]
      420 GETUPVAL                         R47 2
      421 GETTABLEKS                       R47 R47 K42 ["createElement"]
      423 LOADK                            R48 K109 ["ImageLabel"]
      424 DUPTABLE                         R49 K112 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 0, ["Image"]}]
      425 GETIMPORT                        R50 K71 [UDim2.new]
      427 LOADN                            R51 0
      428 LOADN                            R52 32
      429 LOADN                            R53 0
      430 LOADN                            R54 32
      431 CALL                             R50 4 1
      432 SETTABLEKS                       R50 R49 K49 ["Size"]
      434 GETTABLEKS                       R50 R1 K100 ["Icon"]
      436 SETTABLEKS                       R50 R49 K111 ["Image"]
      438 CALL                             R47 2 1
      439 SETTABLEKS                       R47 R46 K100 ["Icon"]
      441 GETUPVAL                         R47 2
      442 GETTABLEKS                       R47 R47 K42 ["createElement"]
      444 LOADK                            R48 K66 ["Frame"]
      445 DUPTABLE                         R49 K113 [{["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1}]
      446 GETIMPORT                        R50 K71 [UDim2.new]
      448 LOADN                            R51 1
      449 LOADN                            R52 -52
      450 LOADN                            R53 1
      451 LOADN                            R54 0
      452 CALL                             R50 4 1
      453 SETTABLEKS                       R50 R49 K49 ["Size"]
      455 DUPTABLE                         R50 K117 [{"UIListLayout", "DetailLabel", "InstructionLabel", "ShowAgainCheckbox"}]
      456 GETUPVAL                         R51 2
      457 GETTABLEKS                       R51 R51 K42 ["createElement"]
      459 LOADK                            R52 K75 ["UIListLayout"]
      460 DUPTABLE                         R53 K104 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      461 GETIMPORT                        R54 K92 [Enum.SortOrder.LayoutOrder]
      463 SETTABLEKS                       R54 R53 K86 ["SortOrder"]
      465 GETIMPORT                        R54 K106 [Enum.HorizontalAlignment.Left]
      467 SETTABLEKS                       R54 R53 K87 ["HorizontalAlignment"]
      469 GETIMPORT                        R54 K96 [Enum.VerticalAlignment.Top]
      471 SETTABLEKS                       R54 R53 K88 ["VerticalAlignment"]
      473 GETIMPORT                        R54 K85 [UDim.new]
      475 LOADN                            R55 0
      476 LOADN                            R56 8
      477 CALL                             R54 2 1
      478 SETTABLEKS                       R54 R53 K89 ["Padding"]
      480 GETIMPORT                        R54 K119 [Enum.FillDirection.Vertical]
      482 SETTABLEKS                       R54 R53 K103 ["FillDirection"]
      484 CALL                             R51 2 1
      485 SETTABLEKS                       R51 R50 K75 ["UIListLayout"]
      487 GETUPVAL                         R51 2
      488 GETTABLEKS                       R51 R51 K42 ["createElement"]
      490 LOADK                            R52 K120 ["TextLabel"]
      491 DUPTABLE                         R53 K128 [{["LayoutOrder"] = 0, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      492 GETIMPORT                        R54 K71 [UDim2.new]
      494 LOADN                            R55 1
      495 LOADN                            R56 0
      496 LOADN                            R57 0
      497 MOVE                             R58 R28
      498 CALL                             R54 4 1
      499 SETTABLEKS                       R54 R53 K49 ["Size"]
      501 SETTABLEKS                       R5 R53 K43 ["Text"]
      503 SETTABLEKS                       R7 R53 K121 ["Font"]
      505 SETTABLEKS                       R6 R53 K122 ["TextSize"]
      507 GETTABLEKS                       R54 R3 K72 ["messageBox"]
      509 GETTABLEKS                       R54 R54 K129 ["textColor"]
      511 SETTABLEKS                       R54 R53 K123 ["TextColor3"]
      513 GETIMPORT                        R54 K130 [Enum.TextXAlignment.Left]
      515 SETTABLEKS                       R54 R53 K124 ["TextXAlignment"]
      517 GETIMPORT                        R54 K131 [Enum.TextYAlignment.Top]
      519 SETTABLEKS                       R54 R53 K125 ["TextYAlignment"]
      521 CALL                             R51 2 1
      522 SETTABLEKS                       R51 R50 K114 ["DetailLabel"]
      524 GETUPVAL                         R51 2
      525 GETTABLEKS                       R51 R51 K42 ["createElement"]
      527 LOADK                            R52 K120 ["TextLabel"]
      528 DUPTABLE                         R53 K132 [{["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      529 GETIMPORT                        R54 K71 [UDim2.new]
      531 LOADN                            R55 1
      532 LOADN                            R56 0
      533 LOADN                            R57 0
      534 MOVE                             R58 R29
      535 CALL                             R54 4 1
      536 SETTABLEKS                       R54 R53 K49 ["Size"]
      538 SETTABLEKS                       R8 R53 K43 ["Text"]
      540 SETTABLEKS                       R10 R53 K121 ["Font"]
      542 SETTABLEKS                       R9 R53 K122 ["TextSize"]
      544 GETTABLEKS                       R54 R3 K72 ["messageBox"]
      546 GETTABLEKS                       R54 R54 K129 ["textColor"]
      548 SETTABLEKS                       R54 R53 K123 ["TextColor3"]
      550 GETIMPORT                        R54 K130 [Enum.TextXAlignment.Left]
      552 SETTABLEKS                       R54 R53 K124 ["TextXAlignment"]
      554 GETIMPORT                        R54 K131 [Enum.TextYAlignment.Top]
      556 SETTABLEKS                       R54 R53 K125 ["TextYAlignment"]
      558 CALL                             R51 2 1
      559 SETTABLEKS                       R51 R50 K115 ["InstructionLabel"]
      561 GETUPVAL                         R51 2
      562 GETTABLEKS                       R51 R51 K42 ["createElement"]
      564 GETUPVAL                         R52 5
      565 DUPTABLE                         R53 K136 [{["LayoutOrder"] = 2, ["Text"], ["Font"], ["TextSize"], ["OnClick"], ["Size"], ["Checked"]}]
      566 SETTABLEKS                       R11 R53 K43 ["Text"]
      568 SETTABLEKS                       R13 R53 K121 ["Font"]
      570 SETTABLEKS                       R12 R53 K122 ["TextSize"]
      572 GETTABLEKS                       R54 R0 K137 ["onToggleShowAgain"]
      574 SETTABLEKS                       R54 R53 K134 ["OnClick"]
      576 GETIMPORT                        R54 K71 [UDim2.new]
      578 LOADN                            R55 1
      579 LOADN                            R56 0
      580 LOADN                            R57 0
      581 MOVE                             R58 R30
      582 CALL                             R54 4 1
      583 SETTABLEKS                       R54 R53 K49 ["Size"]
      585 GETTABLEKS                       R54 R2 K138 ["checked"]
      587 SETTABLEKS                       R54 R53 K135 ["Checked"]
      589 CALL                             R51 2 1
      590 SETTABLEKS                       R51 R50 K116 ["ShowAgainCheckbox"]
      592 CALL                             R47 3 1
      593 SETTABLEKS                       R47 R46 K101 ["Texts"]
      595 CALL                             R43 3 1
      596 SETTABLEKS                       R43 R42 K76 ["Information"]
      598 GETUPVAL                         R43 2
      599 GETTABLEKS                       R43 R43 K42 ["createElement"]
      601 LOADK                            R44 K66 ["Frame"]
      602 DUPTABLE                         R45 K139 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      603 GETIMPORT                        R46 K71 [UDim2.new]
      605 LOADN                            R47 1
      606 LOADN                            R48 0
      607 LOADN                            R49 0
      608 LOADN                            R50 23
      609 CALL                             R46 4 1
      610 SETTABLEKS                       R46 R45 K49 ["Size"]
      612 DUPTABLE                         R46 K142 [{"UIListLayout", "OkButton", "CancelButton"}]
      613 GETUPVAL                         R47 2
      614 GETTABLEKS                       R47 R47 K42 ["createElement"]
      616 LOADK                            R48 K75 ["UIListLayout"]
      617 DUPTABLE                         R49 K143 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Padding"}]
      618 GETIMPORT                        R50 K92 [Enum.SortOrder.LayoutOrder]
      620 SETTABLEKS                       R50 R49 K86 ["SortOrder"]
      622 GETIMPORT                        R50 K145 [Enum.HorizontalAlignment.Right]
      624 SETTABLEKS                       R50 R49 K87 ["HorizontalAlignment"]
      626 GETIMPORT                        R50 K96 [Enum.VerticalAlignment.Top]
      628 SETTABLEKS                       R50 R49 K88 ["VerticalAlignment"]
      630 GETIMPORT                        R50 K108 [Enum.FillDirection.Horizontal]
      632 SETTABLEKS                       R50 R49 K103 ["FillDirection"]
      634 GETIMPORT                        R50 K85 [UDim.new]
      636 LOADN                            R51 0
      637 LOADN                            R52 8
      638 CALL                             R50 2 1
      639 SETTABLEKS                       R50 R49 K89 ["Padding"]
      641 CALL                             R47 2 1
      642 SETTABLEKS                       R47 R46 K75 ["UIListLayout"]
      644 GETUPVAL                         R47 2
      645 GETTABLEKS                       R47 R47 K42 ["createElement"]
      647 GETUPVAL                         R48 3
      648 DUPTABLE                         R49 K45 [{"Text", "onButtonClicked"}]
      649 SETTABLEKS                       R14 R49 K43 ["Text"]
      651 GETTABLEKS                       R50 R0 K0 ["props"]
      653 GETTABLEKS                       R50 R50 K146 ["onOkButtonClicked"]
      655 SETTABLEKS                       R50 R49 K44 ["onButtonClicked"]
      657 CALL                             R47 2 1
      658 SETTABLEKS                       R47 R46 K140 ["OkButton"]
      660 SETTABLEKS                       R34 R46 K141 ["CancelButton"]
      662 CALL                             R43 3 1
      663 SETTABLEKS                       R43 R42 K77 ["Buttons"]
      665 CALL                             R39 3 1
      666 SETTABLEKS                       R39 R38 K64 ["Background"]
      668 CALL                             R35 3 -1
      669 RETURN                           R35 -1

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
