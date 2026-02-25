PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETIMPORT                        R1 K3 [string.match]
        7 MOVE                             R2 R0
        8 LOADK                            R3 K4 ["^https?://%S+$"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETIMPORT                        R1 K6 [string.find]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K7 ["roblox%.com"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K2 [string.gmatch]
        4 MOVE                             R4 R1
        5 LOADK                            R5 K3 ["%[([^%]]+)%]%(([^%)]+)%)"]
        6 CALL                             R3 2 3
        7 FORGPREP                         R3
        8 JUMPIFNOT                        R7 ; [+2]
        9 JUMPIFNOTEQKS                    R7 K4 [""] ; [+3]
       11 LOADB                            R8 0
       12 JUMP                             ; [+11]
       13 GETIMPORT                        R8 K6 [string.match]
       15 MOVE                             R9 R7
       16 LOADK                            R10 K7 ["^https?://%S+$"]
       17 CALL                             R8 2 1
       18 JUMPIFNOT                        R8 ; [+5]
       19 GETIMPORT                        R8 K9 [string.find]
       21 MOVE                             R9 R7
       22 LOADK                            R10 K10 ["roblox%.com"]
       23 CALL                             R8 2 1
       24 JUMPIFNOT                        R8 ; [+15]
       25 GETIMPORT                        R8 K12 [string.format]
       27 LOADK                            R9 K13 ["[%s](%s)"]
       28 MOVE                             R10 R6
       29 MOVE                             R11 R7
       30 CALL                             R8 3 1
       31 DUPTABLE                         R9 K16 [{"LinkText", "LinkCallback"}]
       32 SETTABLEKS                       R6 R9 K14 ["LinkText"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R7
       37 SETTABLEKS                       R10 R9 K15 ["LinkCallback"]
       39 SETTABLE                         R9 R2 R8
       40 FORGLOOP                         R3 2 ; [-33]
       42 RETURN                           R2 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["isDead"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K1 ["onEnabledChanged"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K2 ["onAncestryChanged"]
       11 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isDead"]
        3 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R1 K3 ["Title"]
        6 ORK                              R3 R4 K2 [""]
        7 GETTABLEKS                       R5 R1 K4 ["Name"]
        9 OR                               R4 R5 R3
       10 GETTABLEKS                       R6 R1 K6 ["Id"]
       12 ORK                              R5 R6 K5 []
       13 GETTABLEKS                       R7 R1 K7 ["Text"]
       15 ORK                              R6 R7 K2 [""]
       16 GETTABLEKS                       R8 R1 K8 ["InformativeText"]
       18 ORK                              R7 R8 K2 [""]
       19 GETTABLEKS                       R9 R1 K9 ["Icon"]
       21 ORK                              R8 R9 K2 [""]
       22 LENGTH                           R10 R7
       23 JUMPIFNOTEQKN                    R10 K10 [0] ; [+2]
       25 LOADB                            R9 0 +1
       26 LOADB                            R9 1
       27 JUMPIFNOTEQKS                    R8 K2 [""] ; [+2]
       29 LOADB                            R10 0 +1
       30 LOADB                            R10 1
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R11 R12 K11 ["FONT"]
       34 GETUPVAL                         R13 0
       35 GETTABLEKS                       R12 R13 K12 ["FONT_SIZE_SMALL"]
       37 GETUPVAL                         R14 0
       38 GETTABLEKS                       R13 R14 K11 ["FONT"]
       40 GETUPVAL                         R15 0
       41 GETTABLEKS                       R14 R15 K12 ["FONT_SIZE_SMALL"]
       43 GETTABLEKS                       R15 R2 K13 ["messageBox"]
       45 GETUPVAL                         R17 1
       46 CALL                             R17 0 1
       47 JUMPIFNOT                        R17 ; [+3]
       48 GETTABLEKS                       R16 R1 K14 ["isResizable"]
       50 JUMP                             ; [+1]
       51 LOADB                            R16 0
       52 GETTABLEKS                       R17 R1 K15 ["buttons"]
       54 JUMPIF                           R17 ; [+2]
       55 NEWTABLE                         R17 0 0
       57 LENGTH                           R18 R17
       58 JUMPIFNOTEQKN                    R18 K10 [0] ; [+13]
       60 NEWTABLE                         R18 0 1
       62 DUPTABLE                         R19 K17 [{"Text", "action"}]
       63 LOADK                            R20 K18 ["Ok"]
       64 SETTABLEKS                       R20 R19 K7 ["Text"]
       66 LOADK                            R20 K19 ["ok"]
       67 SETTABLEKS                       R20 R19 K16 ["action"]
       69 SETLIST                          R18 R19 1 [1]
       71 MOVE                             R17 R18
       72 GETUPVAL                         R19 0
       73 GETTABLEKS                       R18 R19 K20 ["MESSAGE_BOX_BUTTON_WIDTH"]
       75 NEWTABLE                         R19 1 0
       77 GETUPVAL                         R21 2
       78 GETTABLEKS                       R20 R21 K21 ["createElement"]
       80 LOADK                            R21 K22 ["UIListLayout"]
       81 DUPTABLE                         R22 K28 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Padding"}]
       82 GETIMPORT                        R23 K31 [Enum.SortOrder.LayoutOrder]
       84 SETTABLEKS                       R23 R22 K23 ["SortOrder"]
       86 GETIMPORT                        R23 K33 [Enum.HorizontalAlignment.Right]
       88 SETTABLEKS                       R23 R22 K24 ["HorizontalAlignment"]
       90 GETIMPORT                        R23 K35 [Enum.VerticalAlignment.Top]
       92 SETTABLEKS                       R23 R22 K25 ["VerticalAlignment"]
       94 GETIMPORT                        R23 K37 [Enum.FillDirection.Horizontal]
       96 SETTABLEKS                       R23 R22 K26 ["FillDirection"]
       98 GETIMPORT                        R23 K40 [UDim.new]
      100 LOADN                            R24 0
      101 LOADN                            R25 8
      102 CALL                             R23 2 1
      103 SETTABLEKS                       R23 R22 K27 ["Padding"]
      105 CALL                             R20 2 1
      106 SETTABLEKS                       R20 R19 K22 ["UIListLayout"]
      108 GETIMPORT                        R20 K42 [ipairs]
      110 MOVE                             R21 R17
      111 CALL                             R20 1 3
      112 FORGPREP_INEXT                   R20
      113 GETTABLEKS                       R26 R24 K16 ["action"]
      115 MOVE                             R27 R23
      116 CONCAT                           R25 R26 R27
      117 GETUPVAL                         R27 2
      118 GETTABLEKS                       R26 R27 K21 ["createElement"]
      120 GETUPVAL                         R27 3
      121 DUPTABLE                         R28 K45 [{"index", "Text", "action", "onButtonClicked"}]
      122 SETTABLEKS                       R23 R28 K43 ["index"]
      124 GETTABLEKS                       R29 R24 K7 ["Text"]
      126 SETTABLEKS                       R29 R28 K7 ["Text"]
      128 GETTABLEKS                       R29 R24 K16 ["action"]
      130 SETTABLEKS                       R29 R28 K16 ["action"]
      132 GETTABLEKS                       R30 R0 K0 ["props"]
      134 GETTABLEKS                       R29 R30 K44 ["onButtonClicked"]
      136 SETTABLEKS                       R29 R28 K44 ["onButtonClicked"]
      138 CALL                             R26 2 1
      139 SETTABLE                         R26 R19 R25
      140 FORGLOOP                         R20 2 [inext] ; [-28]
      142 GETUPVAL                         R20 4
      143 MOVE                             R21 R6
      144 MOVE                             R22 R12
      145 MOVE                             R23 R11
      146 GETIMPORT                        R24 K47 [Vector2.new]
      148 LOADN                            R25 0
      149 LOADN                            R26 0
      150 CALL                             R24 2 -1
      151 CALL                             R20 -1 1
      152 GETUPVAL                         R21 4
      153 MOVE                             R22 R7
      154 MOVE                             R23 R14
      155 MOVE                             R24 R13
      156 GETIMPORT                        R25 K47 [Vector2.new]
      158 LOADN                            R26 0
      159 LOADN                            R27 0
      160 CALL                             R25 2 -1
      161 CALL                             R21 -1 1
      162 GETTABLEKS                       R24 R20 K48 ["X"]
      164 FASTCALL2K                       MATH_MIN R24 K49 ; [+4]
      166 LOADK                            R25 K49 [424]
      167 GETIMPORT                        R23 K52 [math.min]
      169 CALL                             R23 2 1
      170 GETTABLEKS                       R25 R21 K48 ["X"]
      172 FASTCALL2K                       MATH_MIN R25 K53 ; [+4]
      174 LOADK                            R26 K53 [192]
      175 GETIMPORT                        R24 K52 [math.min]
      177 CALL                             R24 2 1
      178 FASTCALL2                        MATH_MAX R23 R24 ; [+3]
      180 GETIMPORT                        R22 K55 [math.max]
      182 CALL                             R22 2 1
      183 JUMPIFNOT                        R10 ; [+2]
      184 LOADN                            R23 32
      185 JUMP                             ; [+1]
      186 LOADN                            R23 0
      187 ADDK                             R24 R23 K56 [20]
      188 ADD                              R25 R24 R22
      189 GETTABLEKS                       R27 R1 K57 ["IconColor"]
      191 JUMPIFNOT                        R27 ; [+3]
      192 GETTABLEKS                       R26 R1 K57 ["IconColor"]
      194 JUMP                             ; [+1]
      195 LOADNIL                          R26
      196 LENGTH                           R29 R17
      197 MUL                              R28 R29 R18
      198 LENGTH                           R31 R17
      199 SUBK                             R30 R31 K59 [1]
      200 MULK                             R29 R30 K58 [8]
      201 ADD                              R27 R28 R29
      202 FASTCALL2                        MATH_MAX R27 R25 ; [+5]
      204 MOVE                             R30 R27
      205 MOVE                             R31 R25
      206 GETIMPORT                        R29 K55 [math.max]
      208 CALL                             R29 2 1
      209 FASTCALL2K                       MATH_MAX R29 K60 ; [+4]
      211 LOADK                            R30 K60 [120]
      212 GETIMPORT                        R28 K55 [math.max]
      214 CALL                             R28 2 1
      215 SUB                              R29 R28 R24
      216 GETUPVAL                         R30 4
      217 MOVE                             R31 R6
      218 MOVE                             R32 R12
      219 MOVE                             R33 R11
      220 GETIMPORT                        R34 K47 [Vector2.new]
      222 MOVE                             R35 R29
      223 LOADN                            R36 232
      224 CALL                             R34 2 -1
      225 CALL                             R30 -1 1
      226 GETUPVAL                         R31 4
      227 MOVE                             R32 R7
      228 MOVE                             R33 R14
      229 MOVE                             R34 R13
      230 GETIMPORT                        R35 K47 [Vector2.new]
      232 MOVE                             R36 R29
      233 LOADN                            R37 232
      234 CALL                             R35 2 -1
      235 CALL                             R31 -1 1
      236 GETTABLEKS                       R32 R30 K61 ["Y"]
      238 GETTABLEKS                       R33 R31 K61 ["Y"]
      240 JUMPIFNOT                        R9 ; [+3]
      241 LOADN                            R38 8
      242 ADD                              R37 R38 R33
      243 JUMPIF                           R37 ; [+1]
      244 LOADN                            R37 0
      245 ADD                              R36 R32 R37
      246 FASTCALL2                        MATH_MAX R23 R36 ; [+4]
      248 MOVE                             R35 R23
      249 GETIMPORT                        R34 K55 [math.max]
      251 CALL                             R34 2 1
      252 ADDK                             R36 R28 K62 [12]
      253 ADDK                             R35 R36 K62 [12]
      254 ADDK                             R39 R34 K58 [8]
      255 ADDK                             R38 R39 K62 [12]
      256 ADDK                             R37 R38 K63 [23]
      257 ADDK                             R36 R37 K62 [12]
      258 GETTABLEKS                       R38 R1 K64 ["isScrollable"]
      260 JUMPIFNOT                        R38 ; [+2]
      261 GETUPVAL                         R37 5
      262 JUMP                             ; [+1]
      263 LOADK                            R37 K65 ["Frame"]
      264 NEWTABLE                         R38 0 0
      266 GETUPVAL                         R39 6
      267 CALL                             R39 0 1
      268 JUMPIFNOT                        R39 ; [+7]
      269 JUMPIFNOT                        R9 ; [+6]
      270 GETUPVAL                         R39 7
      271 MOVE                             R41 R7
      272 NAMECALL                         R39 R39 K66 ["createDynamicLinkMap"]
      274 CALL                             R39 2 1
      275 MOVE                             R38 R39
      276 GETUPVAL                         R40 2
      277 GETTABLEKS                       R39 R40 K21 ["createElement"]
      279 GETUPVAL                         R40 8
      280 NEWTABLE                         R41 16 0
      282 SETTABLEKS                       R4 R41 K4 ["Name"]
      284 SETTABLEKS                       R3 R41 K3 ["Title"]
      286 SETTABLEKS                       R5 R41 K6 ["Id"]
      288 GETIMPORT                        R42 K47 [Vector2.new]
      290 MOVE                             R43 R35
      291 GETTABLEKS                       R45 R1 K64 ["isScrollable"]
      293 JUMPIFNOT                        R45 ; [+13]
      294 GETTABLEKS                       R45 R1 K67 ["messageBoxHeight"]
      296 JUMPIFEQKNIL                     R45 ; [+10]
      298 GETTABLEKS                       R45 R1 K67 ["messageBoxHeight"]
      300 FASTCALL2                        MATH_MIN R45 R36 ; [+4]
      302 MOVE                             R46 R36
      303 GETIMPORT                        R44 K52 [math.min]
      305 CALL                             R44 2 1
      306 JUMP                             ; [+1]
      307 MOVE                             R44 R36
      308 CALL                             R42 2 1
      309 SETTABLEKS                       R42 R41 K68 ["Size"]
      311 GETIMPORT                        R42 K71 [Enum.ZIndexBehavior.Sibling]
      313 SETTABLEKS                       R42 R41 K69 ["ZIndexBehavior"]
      315 LOADB                            R42 1
      316 SETTABLEKS                       R42 R41 K72 ["Modal"]
      318 GETTABLEKS                       R43 R0 K0 ["props"]
      320 GETTABLEKS                       R42 R43 K73 ["Plugin"]
      322 NAMECALL                         R42 R42 K74 ["get"]
      324 CALL                             R42 1 1
      325 SETTABLEKS                       R42 R41 K75 ["plugin"]
      327 SETTABLEKS                       R16 R41 K76 ["Resizable"]
      329 GETUPVAL                         R44 2
      330 GETTABLEKS                       R43 R44 K77 ["Change"]
      332 GETTABLEKS                       R42 R43 K78 ["Enabled"]
      334 GETTABLEKS                       R43 R0 K79 ["onEnabledChanged"]
      336 SETTABLE                         R43 R41 R42
      337 GETUPVAL                         R44 2
      338 GETTABLEKS                       R43 R44 K80 ["Event"]
      340 GETTABLEKS                       R42 R43 K81 ["AncestryChanged"]
      342 GETTABLEKS                       R43 R0 K82 ["onAncestryChanged"]
      344 SETTABLE                         R43 R41 R42
      345 DUPTABLE                         R42 K84 [{"Background"}]
      346 GETUPVAL                         R44 2
      347 GETTABLEKS                       R43 R44 K21 ["createElement"]
      349 MOVE                             R44 R37
      350 DUPTABLE                         R45 K90 [{"AutomaticSize", "Position", "Size", "CanvasSize", "AutomaticCanvasSize", "BackgroundColor3"}]
      351 GETUPVAL                         R47 9
      352 CALL                             R47 0 1
      353 JUMPIFNOT                        R47 ; [+3]
      354 GETIMPORT                        R46 K91 [Enum.AutomaticSize.Y]
      356 JUMP                             ; [+1]
      357 LOADNIL                          R46
      358 SETTABLEKS                       R46 R45 K85 ["AutomaticSize"]
      360 GETIMPORT                        R46 K93 [UDim2.new]
      362 LOADN                            R47 0
      363 LOADN                            R48 0
      364 LOADN                            R49 0
      365 LOADN                            R50 0
      366 CALL                             R46 4 1
      367 SETTABLEKS                       R46 R45 K86 ["Position"]
      369 GETIMPORT                        R46 K93 [UDim2.new]
      371 LOADN                            R47 1
      372 LOADN                            R48 0
      373 LOADN                            R49 1
      374 LOADN                            R50 0
      375 CALL                             R46 4 1
      376 SETTABLEKS                       R46 R45 K68 ["Size"]
      378 GETTABLEKS                       R47 R1 K64 ["isScrollable"]
      380 JUMPIFNOT                        R47 ; [+6]
      381 GETIMPORT                        R46 K95 [UDim2.fromScale]
      383 LOADN                            R47 1
      384 LOADN                            R48 0
      385 CALL                             R46 2 1
      386 JUMP                             ; [+1]
      387 LOADNIL                          R46
      388 SETTABLEKS                       R46 R45 K87 ["CanvasSize"]
      390 GETTABLEKS                       R47 R1 K64 ["isScrollable"]
      392 JUMPIFNOT                        R47 ; [+3]
      393 GETIMPORT                        R46 K91 [Enum.AutomaticSize.Y]
      395 JUMP                             ; [+1]
      396 LOADNIL                          R46
      397 SETTABLEKS                       R46 R45 K88 ["AutomaticCanvasSize"]
      399 GETTABLEKS                       R46 R15 K96 ["backgroundColor"]
      401 SETTABLEKS                       R46 R45 K89 ["BackgroundColor3"]
      403 DUPTABLE                         R46 K100 [{"UIPadding", "UIListLayout", "Information", "Buttons"}]
      404 GETUPVAL                         R48 2
      405 GETTABLEKS                       R47 R48 K21 ["createElement"]
      407 LOADK                            R48 K97 ["UIPadding"]
      408 DUPTABLE                         R49 K105 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      409 GETIMPORT                        R50 K40 [UDim.new]
      411 LOADN                            R51 0
      412 LOADN                            R52 12
      413 CALL                             R50 2 1
      414 SETTABLEKS                       R50 R49 K101 ["PaddingBottom"]
      416 GETIMPORT                        R50 K40 [UDim.new]
      418 LOADN                            R51 0
      419 LOADN                            R52 12
      420 CALL                             R50 2 1
      421 SETTABLEKS                       R50 R49 K102 ["PaddingLeft"]
      423 GETIMPORT                        R50 K40 [UDim.new]
      425 LOADN                            R51 0
      426 LOADN                            R52 12
      427 CALL                             R50 2 1
      428 SETTABLEKS                       R50 R49 K103 ["PaddingRight"]
      430 GETIMPORT                        R50 K40 [UDim.new]
      432 LOADN                            R51 0
      433 LOADN                            R52 8
      434 CALL                             R50 2 1
      435 SETTABLEKS                       R50 R49 K104 ["PaddingTop"]
      437 CALL                             R47 2 1
      438 SETTABLEKS                       R47 R46 K97 ["UIPadding"]
      440 GETUPVAL                         R48 2
      441 GETTABLEKS                       R47 R48 K21 ["createElement"]
      443 LOADK                            R48 K22 ["UIListLayout"]
      444 DUPTABLE                         R49 K106 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      445 GETIMPORT                        R50 K31 [Enum.SortOrder.LayoutOrder]
      447 SETTABLEKS                       R50 R49 K23 ["SortOrder"]
      449 GETIMPORT                        R50 K108 [Enum.HorizontalAlignment.Center]
      451 SETTABLEKS                       R50 R49 K24 ["HorizontalAlignment"]
      453 GETIMPORT                        R50 K35 [Enum.VerticalAlignment.Top]
      455 SETTABLEKS                       R50 R49 K25 ["VerticalAlignment"]
      457 GETIMPORT                        R50 K40 [UDim.new]
      459 LOADN                            R51 0
      460 LOADN                            R52 12
      461 CALL                             R50 2 1
      462 SETTABLEKS                       R50 R49 K27 ["Padding"]
      464 CALL                             R47 2 1
      465 SETTABLEKS                       R47 R46 K22 ["UIListLayout"]
      467 GETUPVAL                         R48 2
      468 GETTABLEKS                       R47 R48 K21 ["createElement"]
      470 LOADK                            R48 K65 ["Frame"]
      471 DUPTABLE                         R49 K110 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
      472 GETUPVAL                         R51 9
      473 CALL                             R51 0 1
      474 JUMPIFNOT                        R51 ; [+3]
      475 GETIMPORT                        R50 K91 [Enum.AutomaticSize.Y]
      477 JUMP                             ; [+1]
      478 LOADNIL                          R50
      479 SETTABLEKS                       R50 R49 K85 ["AutomaticSize"]
      481 GETIMPORT                        R50 K93 [UDim2.new]
      483 LOADN                            R51 1
      484 LOADN                            R52 0
      485 LOADN                            R53 0
      486 MOVE                             R54 R34
      487 CALL                             R50 4 1
      488 SETTABLEKS                       R50 R49 K68 ["Size"]
      490 LOADN                            R50 1
      491 SETTABLEKS                       R50 R49 K109 ["BackgroundTransparency"]
      493 LOADN                            R50 1
      494 SETTABLEKS                       R50 R49 K30 ["LayoutOrder"]
      496 DUPTABLE                         R50 K112 [{"UIListLayout", "Icon", "Texts"}]
      497 GETUPVAL                         R52 2
      498 GETTABLEKS                       R51 R52 K21 ["createElement"]
      500 LOADK                            R52 K22 ["UIListLayout"]
      501 DUPTABLE                         R53 K113 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      502 GETIMPORT                        R54 K31 [Enum.SortOrder.LayoutOrder]
      504 SETTABLEKS                       R54 R53 K23 ["SortOrder"]
      506 GETIMPORT                        R54 K115 [Enum.HorizontalAlignment.Left]
      508 SETTABLEKS                       R54 R53 K24 ["HorizontalAlignment"]
      510 GETIMPORT                        R54 K35 [Enum.VerticalAlignment.Top]
      512 SETTABLEKS                       R54 R53 K25 ["VerticalAlignment"]
      514 GETIMPORT                        R54 K40 [UDim.new]
      516 LOADN                            R55 0
      517 LOADN                            R56 20
      518 CALL                             R54 2 1
      519 SETTABLEKS                       R54 R53 K27 ["Padding"]
      521 GETIMPORT                        R54 K37 [Enum.FillDirection.Horizontal]
      523 SETTABLEKS                       R54 R53 K26 ["FillDirection"]
      525 CALL                             R51 2 1
      526 SETTABLEKS                       R51 R50 K22 ["UIListLayout"]
      528 GETUPVAL                         R52 2
      529 GETTABLEKS                       R51 R52 K21 ["createElement"]
      531 LOADK                            R52 K116 ["ImageLabel"]
      532 DUPTABLE                         R53 K119 [{"Size", "BackgroundTransparency", "LayoutOrder", "Image", "ImageColor3"}]
      533 GETIMPORT                        R54 K93 [UDim2.new]
      535 LOADN                            R55 0
      536 MOVE                             R56 R23
      537 LOADN                            R57 0
      538 MOVE                             R58 R23
      539 CALL                             R54 4 1
      540 SETTABLEKS                       R54 R53 K68 ["Size"]
      542 LOADN                            R54 1
      543 SETTABLEKS                       R54 R53 K109 ["BackgroundTransparency"]
      545 LOADN                            R54 0
      546 SETTABLEKS                       R54 R53 K30 ["LayoutOrder"]
      548 SETTABLEKS                       R8 R53 K117 ["Image"]
      550 SETTABLEKS                       R26 R53 K118 ["ImageColor3"]
      552 CALL                             R51 2 1
      553 SETTABLEKS                       R51 R50 K9 ["Icon"]
      555 GETUPVAL                         R52 2
      556 GETTABLEKS                       R51 R52 K21 ["createElement"]
      558 LOADK                            R52 K65 ["Frame"]
      559 DUPTABLE                         R53 K120 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency"}]
      560 GETUPVAL                         R55 9
      561 CALL                             R55 0 1
      562 JUMPIFNOT                        R55 ; [+3]
      563 GETIMPORT                        R54 K91 [Enum.AutomaticSize.Y]
      565 JUMP                             ; [+1]
      566 LOADNIL                          R54
      567 SETTABLEKS                       R54 R53 K85 ["AutomaticSize"]
      569 LOADN                            R54 1
      570 SETTABLEKS                       R54 R53 K30 ["LayoutOrder"]
      572 GETIMPORT                        R54 K93 [UDim2.new]
      574 LOADN                            R55 1
      575 MINUS                            R56 R24
      576 GETUPVAL                         R58 9
      577 CALL                             R58 0 1
      578 JUMPIFNOT                        R58 ; [+2]
      579 LOADN                            R57 0
      580 JUMP                             ; [+1]
      581 LOADN                            R57 1
      582 LOADN                            R58 0
      583 CALL                             R54 4 1
      584 SETTABLEKS                       R54 R53 K68 ["Size"]
      586 LOADN                            R54 1
      587 SETTABLEKS                       R54 R53 K109 ["BackgroundTransparency"]
      589 DUPTABLE                         R54 K123 [{"UIListLayout", "TextLabel", "InformativeLabel"}]
      590 GETUPVAL                         R56 2
      591 GETTABLEKS                       R55 R56 K21 ["createElement"]
      593 LOADK                            R56 K22 ["UIListLayout"]
      594 DUPTABLE                         R57 K113 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      595 GETIMPORT                        R58 K31 [Enum.SortOrder.LayoutOrder]
      597 SETTABLEKS                       R58 R57 K23 ["SortOrder"]
      599 GETIMPORT                        R58 K115 [Enum.HorizontalAlignment.Left]
      601 SETTABLEKS                       R58 R57 K24 ["HorizontalAlignment"]
      603 GETIMPORT                        R58 K35 [Enum.VerticalAlignment.Top]
      605 SETTABLEKS                       R58 R57 K25 ["VerticalAlignment"]
      607 GETIMPORT                        R58 K40 [UDim.new]
      609 LOADN                            R59 0
      610 LOADN                            R60 8
      611 CALL                             R58 2 1
      612 SETTABLEKS                       R58 R57 K27 ["Padding"]
      614 GETIMPORT                        R58 K125 [Enum.FillDirection.Vertical]
      616 SETTABLEKS                       R58 R57 K26 ["FillDirection"]
      618 CALL                             R55 2 1
      619 SETTABLEKS                       R55 R54 K22 ["UIListLayout"]
      621 GETUPVAL                         R56 2
      622 GETTABLEKS                       R55 R56 K21 ["createElement"]
      624 LOADK                            R56 K121 ["TextLabel"]
      625 DUPTABLE                         R57 K132 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      626 GETUPVAL                         R59 9
      627 CALL                             R59 0 1
      628 JUMPIFNOT                        R59 ; [+3]
      629 GETIMPORT                        R58 K91 [Enum.AutomaticSize.Y]
      631 JUMP                             ; [+1]
      632 LOADNIL                          R58
      633 SETTABLEKS                       R58 R57 K85 ["AutomaticSize"]
      635 LOADN                            R58 0
      636 SETTABLEKS                       R58 R57 K30 ["LayoutOrder"]
      638 GETIMPORT                        R58 K93 [UDim2.new]
      640 LOADN                            R59 1
      641 LOADN                            R60 0
      642 LOADN                            R61 0
      643 MOVE                             R62 R32
      644 CALL                             R58 4 1
      645 SETTABLEKS                       R58 R57 K68 ["Size"]
      647 LOADN                            R58 1
      648 SETTABLEKS                       R58 R57 K109 ["BackgroundTransparency"]
      650 SETTABLEKS                       R6 R57 K7 ["Text"]
      652 SETTABLEKS                       R11 R57 K126 ["Font"]
      654 SETTABLEKS                       R12 R57 K127 ["TextSize"]
      656 GETTABLEKS                       R58 R15 K133 ["textColor"]
      658 SETTABLEKS                       R58 R57 K128 ["TextColor3"]
      660 GETIMPORT                        R58 K134 [Enum.TextXAlignment.Left]
      662 SETTABLEKS                       R58 R57 K129 ["TextXAlignment"]
      664 GETIMPORT                        R58 K135 [Enum.TextYAlignment.Top]
      666 SETTABLEKS                       R58 R57 K130 ["TextYAlignment"]
      668 LOADB                            R58 1
      669 SETTABLEKS                       R58 R57 K131 ["TextWrapped"]
      671 CALL                             R55 2 1
      672 SETTABLEKS                       R55 R54 K121 ["TextLabel"]
      674 MOVE                             R55 R9
      675 JUMPIFNOT                        R55 ; [+118]
      676 GETUPVAL                         R56 6
      677 CALL                             R56 0 1
      678 JUMPIFNOT                        R56 ; [+64]
      679 GETUPVAL                         R56 2
      680 GETTABLEKS                       R55 R56 K21 ["createElement"]
      682 GETUPVAL                         R56 10
      683 DUPTABLE                         R57 K138 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency", "Text", "TextProps", "LinkMap", "HorizontalAlignment"}]
      684 GETUPVAL                         R59 9
      685 CALL                             R59 0 1
      686 JUMPIFNOT                        R59 ; [+3]
      687 GETIMPORT                        R58 K91 [Enum.AutomaticSize.Y]
      689 JUMP                             ; [+1]
      690 LOADNIL                          R58
      691 SETTABLEKS                       R58 R57 K85 ["AutomaticSize"]
      693 LOADN                            R58 1
      694 SETTABLEKS                       R58 R57 K30 ["LayoutOrder"]
      696 GETIMPORT                        R58 K93 [UDim2.new]
      698 LOADN                            R59 1
      699 LOADN                            R60 0
      700 LOADN                            R61 0
      701 MOVE                             R62 R33
      702 CALL                             R58 4 1
      703 SETTABLEKS                       R58 R57 K68 ["Size"]
      705 LOADN                            R58 1
      706 SETTABLEKS                       R58 R57 K109 ["BackgroundTransparency"]
      708 SETTABLEKS                       R7 R57 K7 ["Text"]
      710 DUPTABLE                         R58 K140 [{"BackgroundTransparency", "Font", "TextSize", "TextColor", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      711 LOADN                            R59 1
      712 SETTABLEKS                       R59 R58 K109 ["BackgroundTransparency"]
      714 SETTABLEKS                       R13 R58 K126 ["Font"]
      716 SETTABLEKS                       R14 R58 K127 ["TextSize"]
      718 GETTABLEKS                       R59 R15 K141 ["informativeTextColor"]
      720 SETTABLEKS                       R59 R58 K139 ["TextColor"]
      722 GETIMPORT                        R59 K134 [Enum.TextXAlignment.Left]
      724 SETTABLEKS                       R59 R58 K129 ["TextXAlignment"]
      726 GETIMPORT                        R59 K135 [Enum.TextYAlignment.Top]
      728 SETTABLEKS                       R59 R58 K130 ["TextYAlignment"]
      730 LOADB                            R59 1
      731 SETTABLEKS                       R59 R58 K131 ["TextWrapped"]
      733 SETTABLEKS                       R58 R57 K136 ["TextProps"]
      735 SETTABLEKS                       R38 R57 K137 ["LinkMap"]
      737 GETIMPORT                        R58 K115 [Enum.HorizontalAlignment.Left]
      739 SETTABLEKS                       R58 R57 K24 ["HorizontalAlignment"]
      741 CALL                             R55 2 1
      742 JUMP                             ; [+51]
      743 GETUPVAL                         R56 2
      744 GETTABLEKS                       R55 R56 K21 ["createElement"]
      746 LOADK                            R56 K121 ["TextLabel"]
      747 DUPTABLE                         R57 K132 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      748 GETUPVAL                         R59 9
      749 CALL                             R59 0 1
      750 JUMPIFNOT                        R59 ; [+3]
      751 GETIMPORT                        R58 K91 [Enum.AutomaticSize.Y]
      753 JUMP                             ; [+1]
      754 LOADNIL                          R58
      755 SETTABLEKS                       R58 R57 K85 ["AutomaticSize"]
      757 LOADN                            R58 1
      758 SETTABLEKS                       R58 R57 K30 ["LayoutOrder"]
      760 GETIMPORT                        R58 K93 [UDim2.new]
      762 LOADN                            R59 1
      763 LOADN                            R60 0
      764 LOADN                            R61 0
      765 MOVE                             R62 R33
      766 CALL                             R58 4 1
      767 SETTABLEKS                       R58 R57 K68 ["Size"]
      769 LOADN                            R58 1
      770 SETTABLEKS                       R58 R57 K109 ["BackgroundTransparency"]
      772 SETTABLEKS                       R7 R57 K7 ["Text"]
      774 SETTABLEKS                       R13 R57 K126 ["Font"]
      776 SETTABLEKS                       R14 R57 K127 ["TextSize"]
      778 GETTABLEKS                       R58 R15 K141 ["informativeTextColor"]
      780 SETTABLEKS                       R58 R57 K128 ["TextColor3"]
      782 GETIMPORT                        R58 K134 [Enum.TextXAlignment.Left]
      784 SETTABLEKS                       R58 R57 K129 ["TextXAlignment"]
      786 GETIMPORT                        R58 K135 [Enum.TextYAlignment.Top]
      788 SETTABLEKS                       R58 R57 K130 ["TextYAlignment"]
      790 LOADB                            R58 1
      791 SETTABLEKS                       R58 R57 K131 ["TextWrapped"]
      793 CALL                             R55 2 1
      794 SETTABLEKS                       R55 R54 K122 ["InformativeLabel"]
      796 CALL                             R51 3 1
      797 SETTABLEKS                       R51 R50 K111 ["Texts"]
      799 CALL                             R47 3 1
      800 SETTABLEKS                       R47 R46 K98 ["Information"]
      802 GETUPVAL                         R48 2
      803 GETTABLEKS                       R47 R48 K21 ["createElement"]
      805 LOADK                            R48 K65 ["Frame"]
      806 DUPTABLE                         R49 K142 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      807 GETIMPORT                        R50 K93 [UDim2.new]
      809 LOADN                            R51 1
      810 LOADN                            R52 0
      811 LOADN                            R53 0
      812 LOADN                            R54 23
      813 CALL                             R50 4 1
      814 SETTABLEKS                       R50 R49 K68 ["Size"]
      816 LOADN                            R50 1
      817 SETTABLEKS                       R50 R49 K109 ["BackgroundTransparency"]
      819 LOADN                            R50 2
      820 SETTABLEKS                       R50 R49 K30 ["LayoutOrder"]
      822 MOVE                             R50 R19
      823 CALL                             R47 3 1
      824 SETTABLEKS                       R47 R46 K99 ["Buttons"]
      826 CALL                             R43 3 1
      827 SETTABLEKS                       R43 R42 K83 ["Background"]
      829 CALL                             R39 3 -1
      830 RETURN                           R39 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["BrowserService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETTABLEKS                       R2 R0 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Framework"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R4 K12 ["UI"]
       31 GETTABLEKS                       R6 R5 K13 ["TextWithLinks"]
       33 GETIMPORT                        R7 K9 [require]
       35 GETTABLEKS                       R10 R0 K14 ["Src"]
       37 GETTABLEKS                       R9 R10 K15 ["Util"]
       39 GETTABLEKS                       R8 R9 K16 ["Constants"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R4 K17 ["ContextServices"]
       44 GETTABLEKS                       R9 R8 K18 ["withContext"]
       46 GETTABLEKS                       R11 R4 K15 ["Util"]
       48 GETTABLEKS                       R10 R11 K19 ["GetTextSize"]
       50 GETIMPORT                        R11 K9 [require]
       52 GETTABLEKS                       R15 R0 K14 ["Src"]
       54 GETTABLEKS                       R14 R15 K20 ["Components"]
       56 GETTABLEKS                       R13 R14 K21 ["PluginWidget"]
       58 GETTABLEKS                       R12 R13 K22 ["Dialog"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K9 [require]
       63 GETTABLEKS                       R16 R0 K14 ["Src"]
       65 GETTABLEKS                       R15 R16 K20 ["Components"]
       67 GETTABLEKS                       R14 R15 K23 ["MessageBox"]
       69 GETTABLEKS                       R13 R14 K24 ["MessageBoxButton"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K9 [require]
       74 GETTABLEKS                       R16 R0 K14 ["Src"]
       76 GETTABLEKS                       R15 R16 K20 ["Components"]
       78 GETTABLEKS                       R14 R15 K25 ["StyledScrollingFrame"]
       80 CALL                             R13 1 1
       81 GETIMPORT                        R14 K9 [require]
       83 GETTABLEKS                       R18 R0 K14 ["Src"]
       85 GETTABLEKS                       R17 R18 K15 ["Util"]
       87 GETTABLEKS                       R16 R17 K26 ["SharedFlags"]
       89 GETTABLEKS                       R15 R16 K27 ["getFFlagToolboxFixMessageBoxSize"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K9 [require]
       94 GETTABLEKS                       R18 R0 K14 ["Src"]
       96 GETTABLEKS                       R17 R18 K28 ["Flags"]
       98 GETTABLEKS                       R16 R17 K29 ["getFFlagToolboxErrorMessageBoxResizable"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K9 [require]
      103 GETTABLEKS                       R19 R0 K14 ["Src"]
      105 GETTABLEKS                       R18 R19 K28 ["Flags"]
      107 GETTABLEKS                       R17 R18 K30 ["getFFlagToolboxAddLinksToMessageBox"]
      109 CALL                             R16 1 1
      110 GETTABLEKS                       R17 R3 K31 ["PureComponent"]
      112 LOADK                            R19 K23 ["MessageBox"]
      113 NAMECALL                         R17 R17 K32 ["extend"]
      115 CALL                             R17 2 1
      116 DUPCLOSURE                       R18 K33 [PROTO_0]
      117 DUPCLOSURE                       R19 K34 [PROTO_2]
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R19 R17 K35 ["createDynamicLinkMap"]
      121 DUPCLOSURE                       R19 K36 [PROTO_5]
      122 SETTABLEKS                       R19 R17 K37 ["init"]
      124 DUPCLOSURE                       R19 K38 [PROTO_6]
      125 SETTABLEKS                       R19 R17 K39 ["willUnmount"]
      127 NEWCLOSURE                       R19 P4
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R16
      135 CAPTURE                          REF R17
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R6
      139 SETTABLEKS                       R19 R17 K40 ["render"]
      141 MOVE                             R19 R9
      142 DUPTABLE                         R20 K43 [{"Plugin", "Stylizer"}]
      143 GETTABLEKS                       R21 R8 K41 ["Plugin"]
      145 SETTABLEKS                       R21 R20 K41 ["Plugin"]
      147 GETTABLEKS                       R21 R8 K42 ["Stylizer"]
      149 SETTABLEKS                       R21 R20 K42 ["Stylizer"]
      151 CALL                             R19 1 1
      152 MOVE                             R20 R17
      153 CALL                             R19 1 1
      154 MOVE                             R17 R19
      155 CLOSEUPVALS                      R17
      156 RETURN                           R17 1
