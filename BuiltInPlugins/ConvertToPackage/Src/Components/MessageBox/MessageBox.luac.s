PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isDead"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 JUMPIF                           R1 ; [+12]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["props"]
       11 GETTABLEKS                       R1 R2 K3 ["onClose"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["props"]
       17 GETTABLEKS                       R1 R2 K3 ["onClose"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["isDead"]
        3 JUMPIFNOT                        R3 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIF                           R2 ; [+12]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["props"]
        9 GETTABLEKS                       R3 R4 K2 ["onClose"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K1 ["props"]
       15 GETTABLEKS                       R3 R4 K2 ["onClose"]
       17 CALL                             R3 0 0
       18 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["isDead"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K1 ["onEnabledChanged"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K2 ["onAncestryChanged"]
       11 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isDead"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R5 R1 K4 ["Title"]
        8 ORK                              R4 R5 K3 [""]
        9 GETTABLEKS                       R6 R1 K5 ["Text"]
       11 ORK                              R5 R6 K3 [""]
       12 GETTABLEKS                       R7 R1 K6 ["InformativeText"]
       14 ORK                              R6 R7 K3 [""]
       15 GETTABLEKS                       R8 R1 K7 ["Icon"]
       17 ORK                              R7 R8 K3 [""]
       18 GETTABLEKS                       R9 R1 K8 ["mockTesting"]
       20 ORK                              R8 R9 K3 [""]
       21 LENGTH                           R10 R6
       22 JUMPIFNOTEQKN                    R10 K9 [0] ; [+2]
       24 LOADB                            R9 0 +1
       25 LOADB                            R9 1
       26 JUMPIFNOTEQKS                    R7 K3 [""] ; [+2]
       28 LOADB                            R10 0 +1
       29 LOADB                            R10 1
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R11 R12 K10 ["FONT"]
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R12 R13 K11 ["FONT_SIZE_MEDIUM"]
       36 GETUPVAL                         R14 0
       37 GETTABLEKS                       R13 R14 K10 ["FONT"]
       39 GETUPVAL                         R15 0
       40 GETTABLEKS                       R14 R15 K12 ["FONT_SIZE_SMALL"]
       42 GETTABLEKS                       R15 R3 K13 ["messageBox"]
       44 GETTABLEKS                       R16 R1 K14 ["buttons"]
       46 JUMPIF                           R16 ; [+2]
       47 NEWTABLE                         R16 0 0
       49 LENGTH                           R17 R16
       50 JUMPIFNOTEQKN                    R17 K9 [0] ; [+17]
       52 NEWTABLE                         R17 0 1
       54 DUPTABLE                         R18 K16 [{"Text", "action"}]
       55 LOADK                            R21 K17 ["General"]
       56 LOADK                            R22 K18 ["OK"]
       57 NAMECALL                         R19 R2 K19 ["getText"]
       59 CALL                             R19 3 1
       60 SETTABLEKS                       R19 R18 K5 ["Text"]
       62 LOADK                            R19 K20 ["ok"]
       63 SETTABLEKS                       R19 R18 K15 ["action"]
       65 SETLIST                          R17 R18 1 [1]
       67 MOVE                             R16 R17
       68 GETUPVAL                         R18 0
       69 GETTABLEKS                       R17 R18 K21 ["MESSAGE_BOX_BUTTON_WIDTH"]
       71 NEWTABLE                         R18 1 0
       73 GETUPVAL                         R20 1
       74 GETTABLEKS                       R19 R20 K22 ["createElement"]
       76 LOADK                            R20 K23 ["UIListLayout"]
       77 DUPTABLE                         R21 K29 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Padding"}]
       78 GETIMPORT                        R22 K32 [Enum.SortOrder.LayoutOrder]
       80 SETTABLEKS                       R22 R21 K24 ["SortOrder"]
       82 GETIMPORT                        R22 K34 [Enum.HorizontalAlignment.Center]
       84 SETTABLEKS                       R22 R21 K25 ["HorizontalAlignment"]
       86 GETIMPORT                        R22 K36 [Enum.VerticalAlignment.Top]
       88 SETTABLEKS                       R22 R21 K26 ["VerticalAlignment"]
       90 GETIMPORT                        R22 K38 [Enum.FillDirection.Horizontal]
       92 SETTABLEKS                       R22 R21 K27 ["FillDirection"]
       94 GETIMPORT                        R22 K41 [UDim.new]
       96 LOADN                            R23 0
       97 LOADN                            R24 15
       98 CALL                             R22 2 1
       99 SETTABLEKS                       R22 R21 K28 ["Padding"]
      101 CALL                             R19 2 1
      102 SETTABLEKS                       R19 R18 K23 ["UIListLayout"]
      104 GETIMPORT                        R19 K43 [ipairs]
      106 MOVE                             R20 R16
      107 CALL                             R19 1 3
      108 FORGPREP_INEXT                   R19
      109 GETUPVAL                         R25 1
      110 GETTABLEKS                       R24 R25 K22 ["createElement"]
      112 GETUPVAL                         R25 2
      113 DUPTABLE                         R26 K47 [{"OnClick", "Size", "Style", "Text"}]
      114 GETTABLEKS                       R27 R23 K44 ["OnClick"]
      116 SETTABLEKS                       R27 R26 K44 ["OnClick"]
      118 GETIMPORT                        R27 K49 [UDim2.new]
      120 LOADN                            R28 0
      121 MOVE                             R29 R17
      122 LOADN                            R30 1
      123 LOADN                            R31 0
      124 CALL                             R27 4 1
      125 SETTABLEKS                       R27 R26 K45 ["Size"]
      127 LOADK                            R27 K50 ["Round"]
      128 SETTABLEKS                       R27 R26 K46 ["Style"]
      130 GETTABLEKS                       R27 R23 K5 ["Text"]
      132 SETTABLEKS                       R27 R26 K5 ["Text"]
      134 CALL                             R24 2 1
      135 SETTABLE                         R24 R18 R22
      136 FORGLOOP                         R19 2 [inext] ; [-28]
      138 GETUPVAL                         R19 3
      139 MOVE                             R20 R5
      140 MOVE                             R21 R12
      141 MOVE                             R22 R11
      142 GETIMPORT                        R23 K52 [Vector2.new]
      144 LOADN                            R24 0
      145 LOADN                            R25 0
      146 CALL                             R23 2 -1
      147 CALL                             R19 -1 1
      148 GETUPVAL                         R20 3
      149 MOVE                             R21 R6
      150 MOVE                             R22 R14
      151 MOVE                             R23 R13
      152 GETIMPORT                        R24 K52 [Vector2.new]
      154 LOADN                            R25 0
      155 LOADN                            R26 0
      156 CALL                             R24 2 -1
      157 CALL                             R20 -1 1
      158 GETTABLEKS                       R23 R19 K53 ["X"]
      160 FASTCALL2K                       MATH_MIN R23 K54 ; [+4]
      162 LOADK                            R24 K54 [424]
      163 GETIMPORT                        R22 K57 [math.min]
      165 CALL                             R22 2 1
      166 GETTABLEKS                       R24 R20 K53 ["X"]
      168 FASTCALL2K                       MATH_MIN R24 K58 ; [+4]
      170 LOADK                            R25 K58 [192]
      171 GETIMPORT                        R23 K57 [math.min]
      173 CALL                             R23 2 1
      174 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      176 GETIMPORT                        R21 K60 [math.max]
      178 CALL                             R21 2 1
      179 JUMPIFNOT                        R10 ; [+2]
      180 LOADN                            R22 32
      181 JUMP                             ; [+1]
      182 LOADN                            R22 0
      183 JUMPIFNOT                        R10 ; [+2]
      184 LOADN                            R23 20
      185 JUMP                             ; [+1]
      186 LOADN                            R23 0
      187 ADD                              R24 R22 R23
      188 ADD                              R25 R24 R21
      189 LENGTH                           R28 R16
      190 MUL                              R27 R28 R17
      191 LENGTH                           R30 R16
      192 SUBK                             R29 R30 K62 [1]
      193 MULK                             R28 R29 K61 [15]
      194 ADD                              R26 R27 R28
      195 FASTCALL2                        MATH_MAX R26 R25 ; [+5]
      197 MOVE                             R29 R26
      198 MOVE                             R30 R25
      199 GETIMPORT                        R28 K60 [math.max]
      201 CALL                             R28 2 1
      202 FASTCALL2K                       MATH_MAX R28 K63 ; [+4]
      204 LOADK                            R29 K63 [120]
      205 GETIMPORT                        R27 K60 [math.max]
      207 CALL                             R27 2 1
      208 SUB                              R28 R27 R24
      209 GETUPVAL                         R29 3
      210 MOVE                             R30 R5
      211 MOVE                             R31 R12
      212 MOVE                             R32 R11
      213 GETIMPORT                        R33 K52 [Vector2.new]
      215 MOVE                             R34 R28
      216 LOADN                            R35 232
      217 CALL                             R33 2 -1
      218 CALL                             R29 -1 1
      219 GETUPVAL                         R30 3
      220 MOVE                             R31 R6
      221 MOVE                             R32 R14
      222 MOVE                             R33 R13
      223 GETIMPORT                        R34 K52 [Vector2.new]
      225 MOVE                             R35 R28
      226 LOADN                            R36 232
      227 CALL                             R34 2 -1
      228 CALL                             R30 -1 1
      229 GETTABLEKS                       R31 R29 K64 ["Y"]
      231 GETTABLEKS                       R32 R30 K64 ["Y"]
      233 JUMPIFNOT                        R9 ; [+3]
      234 LOADN                            R37 8
      235 ADD                              R36 R37 R32
      236 JUMPIF                           R36 ; [+1]
      237 LOADN                            R36 0
      238 ADD                              R35 R31 R36
      239 FASTCALL2                        MATH_MAX R22 R35 ; [+4]
      241 MOVE                             R34 R22
      242 GETIMPORT                        R33 K60 [math.max]
      244 CALL                             R33 2 1
      245 ADDK                             R35 R27 K65 [12]
      246 ADDK                             R34 R35 K65 [12]
      247 ADDK                             R38 R33 K67 [20]
      248 ADDK                             R37 R38 K67 [20]
      249 ADDK                             R36 R37 K66 [30]
      250 ADDK                             R35 R36 K65 [12]
      251 JUMPIFEQKS                       R8 K3 [""] ; [+3]
      253 LOADNIL                          R36
      254 RETURN                           R36 1
      255 GETUPVAL                         R37 1
      256 GETTABLEKS                       R36 R37 K22 ["createElement"]
      258 GETUPVAL                         R37 4
      259 NEWTABLE                         R38 16 0
      261 SETTABLEKS                       R4 R38 K4 ["Title"]
      263 LOADB                            R39 1
      264 SETTABLEKS                       R39 R38 K68 ["Modal"]
      266 LOADB                            R39 0
      267 SETTABLEKS                       R39 R38 K69 ["Resizable"]
      269 GETIMPORT                        R39 K52 [Vector2.new]
      271 MOVE                             R40 R34
      272 MOVE                             R41 R35
      273 CALL                             R39 2 1
      274 SETTABLEKS                       R39 R38 K45 ["Size"]
      276 GETIMPORT                        R39 K52 [Vector2.new]
      278 MOVE                             R40 R34
      279 MOVE                             R41 R35
      280 CALL                             R39 2 1
      281 SETTABLEKS                       R39 R38 K70 ["MinSize"]
      283 LOADB                            R39 1
      284 SETTABLEKS                       R39 R38 K71 ["Enabled"]
      286 GETTABLEKS                       R39 R1 K72 ["onClose"]
      288 SETTABLEKS                       R39 R38 K73 ["OnClose"]
      290 GETIMPORT                        R39 K76 [Enum.ZIndexBehavior.Sibling]
      292 SETTABLEKS                       R39 R38 K74 ["ZIndexBehavior"]
      294 GETUPVAL                         R41 1
      295 GETTABLEKS                       R40 R41 K77 ["Change"]
      297 GETTABLEKS                       R39 R40 K71 ["Enabled"]
      299 GETTABLEKS                       R40 R0 K78 ["onEnabledChanged"]
      301 SETTABLE                         R40 R38 R39
      302 GETUPVAL                         R41 1
      303 GETTABLEKS                       R40 R41 K79 ["Event"]
      305 GETTABLEKS                       R39 R40 K80 ["AncestryChanged"]
      307 GETTABLEKS                       R40 R0 K81 ["onAncestryChanged"]
      309 SETTABLE                         R40 R38 R39
      310 DUPTABLE                         R39 K83 [{"Background"}]
      311 GETUPVAL                         R41 1
      312 GETTABLEKS                       R40 R41 K22 ["createElement"]
      314 LOADK                            R41 K84 ["Frame"]
      315 DUPTABLE                         R42 K87 [{"Position", "Size", "BackgroundColor3"}]
      316 GETIMPORT                        R43 K49 [UDim2.new]
      318 LOADN                            R44 0
      319 LOADN                            R45 0
      320 LOADN                            R46 0
      321 LOADN                            R47 0
      322 CALL                             R43 4 1
      323 SETTABLEKS                       R43 R42 K85 ["Position"]
      325 GETIMPORT                        R43 K49 [UDim2.new]
      327 LOADN                            R44 1
      328 LOADN                            R45 0
      329 LOADN                            R46 1
      330 LOADN                            R47 0
      331 CALL                             R43 4 1
      332 SETTABLEKS                       R43 R42 K45 ["Size"]
      334 GETTABLEKS                       R43 R15 K88 ["backgroundColor"]
      336 SETTABLEKS                       R43 R42 K86 ["BackgroundColor3"]
      338 DUPTABLE                         R43 K92 [{"UIPadding", "UIListLayout", "Information", "Buttons"}]
      339 GETUPVAL                         R45 1
      340 GETTABLEKS                       R44 R45 K22 ["createElement"]
      342 LOADK                            R45 K89 ["UIPadding"]
      343 DUPTABLE                         R46 K97 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      344 GETIMPORT                        R47 K41 [UDim.new]
      346 LOADN                            R48 0
      347 LOADN                            R49 12
      348 CALL                             R47 2 1
      349 SETTABLEKS                       R47 R46 K93 ["PaddingBottom"]
      351 GETIMPORT                        R47 K41 [UDim.new]
      353 LOADN                            R48 0
      354 LOADN                            R49 12
      355 CALL                             R47 2 1
      356 SETTABLEKS                       R47 R46 K94 ["PaddingLeft"]
      358 GETIMPORT                        R47 K41 [UDim.new]
      360 LOADN                            R48 0
      361 LOADN                            R49 12
      362 CALL                             R47 2 1
      363 SETTABLEKS                       R47 R46 K95 ["PaddingRight"]
      365 GETIMPORT                        R47 K41 [UDim.new]
      367 LOADN                            R48 0
      368 LOADN                            R49 20
      369 CALL                             R47 2 1
      370 SETTABLEKS                       R47 R46 K96 ["PaddingTop"]
      372 CALL                             R44 2 1
      373 SETTABLEKS                       R44 R43 K89 ["UIPadding"]
      375 GETUPVAL                         R45 1
      376 GETTABLEKS                       R44 R45 K22 ["createElement"]
      378 LOADK                            R45 K23 ["UIListLayout"]
      379 DUPTABLE                         R46 K98 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      380 GETIMPORT                        R47 K32 [Enum.SortOrder.LayoutOrder]
      382 SETTABLEKS                       R47 R46 K24 ["SortOrder"]
      384 GETIMPORT                        R47 K34 [Enum.HorizontalAlignment.Center]
      386 SETTABLEKS                       R47 R46 K25 ["HorizontalAlignment"]
      388 GETIMPORT                        R47 K36 [Enum.VerticalAlignment.Top]
      390 SETTABLEKS                       R47 R46 K26 ["VerticalAlignment"]
      392 GETIMPORT                        R47 K41 [UDim.new]
      394 LOADN                            R48 0
      395 LOADN                            R49 20
      396 CALL                             R47 2 1
      397 SETTABLEKS                       R47 R46 K28 ["Padding"]
      399 CALL                             R44 2 1
      400 SETTABLEKS                       R44 R43 K23 ["UIListLayout"]
      402 GETUPVAL                         R45 1
      403 GETTABLEKS                       R44 R45 K22 ["createElement"]
      405 LOADK                            R45 K84 ["Frame"]
      406 DUPTABLE                         R46 K100 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      407 GETIMPORT                        R47 K49 [UDim2.new]
      409 LOADN                            R48 1
      410 LOADN                            R49 0
      411 LOADN                            R50 0
      412 MOVE                             R51 R33
      413 CALL                             R47 4 1
      414 SETTABLEKS                       R47 R46 K45 ["Size"]
      416 LOADN                            R47 1
      417 SETTABLEKS                       R47 R46 K99 ["BackgroundTransparency"]
      419 LOADN                            R47 1
      420 SETTABLEKS                       R47 R46 K31 ["LayoutOrder"]
      422 DUPTABLE                         R47 K102 [{"UIListLayout", "Icon", "Texts"}]
      423 GETUPVAL                         R49 1
      424 GETTABLEKS                       R48 R49 K22 ["createElement"]
      426 LOADK                            R49 K23 ["UIListLayout"]
      427 DUPTABLE                         R50 K103 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      428 GETIMPORT                        R51 K32 [Enum.SortOrder.LayoutOrder]
      430 SETTABLEKS                       R51 R50 K24 ["SortOrder"]
      432 GETIMPORT                        R51 K34 [Enum.HorizontalAlignment.Center]
      434 SETTABLEKS                       R51 R50 K25 ["HorizontalAlignment"]
      436 GETIMPORT                        R51 K36 [Enum.VerticalAlignment.Top]
      438 SETTABLEKS                       R51 R50 K26 ["VerticalAlignment"]
      440 GETIMPORT                        R51 K41 [UDim.new]
      442 LOADN                            R52 0
      443 MOVE                             R53 R23
      444 CALL                             R51 2 1
      445 SETTABLEKS                       R51 R50 K28 ["Padding"]
      447 GETIMPORT                        R51 K38 [Enum.FillDirection.Horizontal]
      449 SETTABLEKS                       R51 R50 K27 ["FillDirection"]
      451 CALL                             R48 2 1
      452 SETTABLEKS                       R48 R47 K23 ["UIListLayout"]
      454 GETUPVAL                         R49 1
      455 GETTABLEKS                       R48 R49 K22 ["createElement"]
      457 LOADK                            R49 K104 ["ImageLabel"]
      458 DUPTABLE                         R50 K106 [{"Size", "BackgroundTransparency", "LayoutOrder", "Image"}]
      459 GETIMPORT                        R51 K49 [UDim2.new]
      461 LOADN                            R52 0
      462 MOVE                             R53 R22
      463 LOADN                            R54 0
      464 MOVE                             R55 R22
      465 CALL                             R51 4 1
      466 SETTABLEKS                       R51 R50 K45 ["Size"]
      468 LOADN                            R51 1
      469 SETTABLEKS                       R51 R50 K99 ["BackgroundTransparency"]
      471 LOADN                            R51 0
      472 SETTABLEKS                       R51 R50 K31 ["LayoutOrder"]
      474 SETTABLEKS                       R7 R50 K105 ["Image"]
      476 CALL                             R48 2 1
      477 SETTABLEKS                       R48 R47 K7 ["Icon"]
      479 GETUPVAL                         R49 1
      480 GETTABLEKS                       R48 R49 K22 ["createElement"]
      482 LOADK                            R49 K84 ["Frame"]
      483 DUPTABLE                         R50 K107 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      484 LOADN                            R51 1
      485 SETTABLEKS                       R51 R50 K31 ["LayoutOrder"]
      487 GETIMPORT                        R51 K49 [UDim2.new]
      489 LOADN                            R52 1
      490 MINUS                            R53 R24
      491 LOADN                            R54 1
      492 LOADN                            R55 0
      493 CALL                             R51 4 1
      494 SETTABLEKS                       R51 R50 K45 ["Size"]
      496 LOADN                            R51 1
      497 SETTABLEKS                       R51 R50 K99 ["BackgroundTransparency"]
      499 DUPTABLE                         R51 K110 [{"UIListLayout", "TextLabel", "InformativeLabel"}]
      500 GETUPVAL                         R53 1
      501 GETTABLEKS                       R52 R53 K22 ["createElement"]
      503 LOADK                            R53 K23 ["UIListLayout"]
      504 DUPTABLE                         R54 K103 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      505 GETIMPORT                        R55 K32 [Enum.SortOrder.LayoutOrder]
      507 SETTABLEKS                       R55 R54 K24 ["SortOrder"]
      509 GETIMPORT                        R55 K34 [Enum.HorizontalAlignment.Center]
      511 SETTABLEKS                       R55 R54 K25 ["HorizontalAlignment"]
      513 GETIMPORT                        R55 K36 [Enum.VerticalAlignment.Top]
      515 SETTABLEKS                       R55 R54 K26 ["VerticalAlignment"]
      517 GETIMPORT                        R55 K41 [UDim.new]
      519 LOADN                            R56 0
      520 LOADN                            R57 8
      521 CALL                             R55 2 1
      522 SETTABLEKS                       R55 R54 K28 ["Padding"]
      524 GETIMPORT                        R55 K112 [Enum.FillDirection.Vertical]
      526 SETTABLEKS                       R55 R54 K27 ["FillDirection"]
      528 CALL                             R52 2 1
      529 SETTABLEKS                       R52 R51 K23 ["UIListLayout"]
      531 GETUPVAL                         R53 1
      532 GETTABLEKS                       R52 R53 K22 ["createElement"]
      534 LOADK                            R53 K108 ["TextLabel"]
      535 DUPTABLE                         R54 K119 [{"LayoutOrder", "Size", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      536 LOADN                            R55 0
      537 SETTABLEKS                       R55 R54 K31 ["LayoutOrder"]
      539 GETIMPORT                        R55 K49 [UDim2.new]
      541 LOADN                            R56 1
      542 LOADN                            R57 0
      543 LOADN                            R58 0
      544 MOVE                             R59 R31
      545 CALL                             R55 4 1
      546 SETTABLEKS                       R55 R54 K45 ["Size"]
      548 LOADN                            R55 1
      549 SETTABLEKS                       R55 R54 K99 ["BackgroundTransparency"]
      551 SETTABLEKS                       R5 R54 K5 ["Text"]
      553 SETTABLEKS                       R11 R54 K113 ["Font"]
      555 SETTABLEKS                       R12 R54 K114 ["TextSize"]
      557 GETTABLEKS                       R55 R15 K120 ["textColor"]
      559 SETTABLEKS                       R55 R54 K115 ["TextColor3"]
      561 GETIMPORT                        R55 K121 [Enum.TextXAlignment.Center]
      563 SETTABLEKS                       R55 R54 K116 ["TextXAlignment"]
      565 GETIMPORT                        R55 K122 [Enum.TextYAlignment.Top]
      567 SETTABLEKS                       R55 R54 K117 ["TextYAlignment"]
      569 LOADB                            R55 1
      570 SETTABLEKS                       R55 R54 K118 ["TextWrapped"]
      572 CALL                             R52 2 1
      573 SETTABLEKS                       R52 R51 K108 ["TextLabel"]
      575 MOVE                             R52 R9
      576 JUMPIFNOT                        R52 ; [+42]
      577 GETUPVAL                         R53 1
      578 GETTABLEKS                       R52 R53 K22 ["createElement"]
      580 LOADK                            R53 K108 ["TextLabel"]
      581 DUPTABLE                         R54 K119 [{"LayoutOrder", "Size", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      582 LOADN                            R55 1
      583 SETTABLEKS                       R55 R54 K31 ["LayoutOrder"]
      585 GETIMPORT                        R55 K49 [UDim2.new]
      587 LOADN                            R56 1
      588 LOADN                            R57 0
      589 LOADN                            R58 0
      590 MOVE                             R59 R32
      591 CALL                             R55 4 1
      592 SETTABLEKS                       R55 R54 K45 ["Size"]
      594 LOADN                            R55 1
      595 SETTABLEKS                       R55 R54 K99 ["BackgroundTransparency"]
      597 SETTABLEKS                       R6 R54 K5 ["Text"]
      599 SETTABLEKS                       R13 R54 K113 ["Font"]
      601 SETTABLEKS                       R14 R54 K114 ["TextSize"]
      603 GETTABLEKS                       R55 R15 K123 ["informativeTextColor"]
      605 SETTABLEKS                       R55 R54 K115 ["TextColor3"]
      607 GETIMPORT                        R55 K121 [Enum.TextXAlignment.Center]
      609 SETTABLEKS                       R55 R54 K116 ["TextXAlignment"]
      611 GETIMPORT                        R55 K122 [Enum.TextYAlignment.Top]
      613 SETTABLEKS                       R55 R54 K117 ["TextYAlignment"]
      615 LOADB                            R55 1
      616 SETTABLEKS                       R55 R54 K118 ["TextWrapped"]
      618 CALL                             R52 2 1
      619 SETTABLEKS                       R52 R51 K109 ["InformativeLabel"]
      621 CALL                             R48 3 1
      622 SETTABLEKS                       R48 R47 K101 ["Texts"]
      624 CALL                             R44 3 1
      625 SETTABLEKS                       R44 R43 K90 ["Information"]
      627 GETUPVAL                         R45 1
      628 GETTABLEKS                       R44 R45 K22 ["createElement"]
      630 LOADK                            R45 K84 ["Frame"]
      631 DUPTABLE                         R46 K100 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      632 GETIMPORT                        R47 K49 [UDim2.new]
      634 LOADN                            R48 1
      635 LOADN                            R49 0
      636 LOADN                            R50 0
      637 LOADN                            R51 30
      638 CALL                             R47 4 1
      639 SETTABLEKS                       R47 R46 K45 ["Size"]
      641 LOADN                            R47 1
      642 SETTABLEKS                       R47 R46 K99 ["BackgroundTransparency"]
      644 LOADN                            R47 2
      645 SETTABLEKS                       R47 R46 K31 ["LayoutOrder"]
      647 MOVE                             R47 R18
      648 CALL                             R44 3 1
      649 SETTABLEKS                       R44 R43 K91 ["Buttons"]
      651 CALL                             R40 3 1
      652 SETTABLEKS                       R40 R39 K82 ["Background"]
      654 CALL                             R36 3 -1
      655 RETURN                           R36 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETTABLEKS                       R7 R3 K10 ["Util"]
       29 GETTABLEKS                       R6 R7 K11 ["GetTextSize"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETTABLEKS                       R10 R0 K12 ["Src"]
       35 GETTABLEKS                       R9 R10 K10 ["Util"]
       37 GETTABLEKS                       R8 R9 K13 ["Constants"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R8 R3 K14 ["UI"]
       42 GETTABLEKS                       R9 R8 K15 ["Button"]
       44 GETTABLEKS                       R10 R8 K16 ["Dialog"]
       46 GETTABLEKS                       R11 R2 K17 ["PureComponent"]
       48 LOADK                            R13 K18 ["MessageBox"]
       49 NAMECALL                         R11 R11 K19 ["extend"]
       51 CALL                             R11 2 1
       52 DUPCLOSURE                       R12 K20 [PROTO_2]
       53 SETTABLEKS                       R12 R11 K21 ["init"]
       55 DUPCLOSURE                       R12 K22 [PROTO_3]
       56 SETTABLEKS                       R12 R11 K23 ["willUnmount"]
       58 DUPCLOSURE                       R12 K24 [PROTO_4]
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R10
       64 SETTABLEKS                       R12 R11 K25 ["render"]
       66 MOVE                             R12 R5
       67 DUPTABLE                         R13 K28 [{"Localization", "Stylizer"}]
       68 GETTABLEKS                       R14 R4 K26 ["Localization"]
       70 SETTABLEKS                       R14 R13 K26 ["Localization"]
       72 GETTABLEKS                       R14 R4 K27 ["Stylizer"]
       74 SETTABLEKS                       R14 R13 K27 ["Stylizer"]
       76 CALL                             R12 1 1
       77 MOVE                             R13 R11
       78 CALL                             R12 1 1
       79 MOVE                             R11 R12
       80 RETURN                           R11 1
