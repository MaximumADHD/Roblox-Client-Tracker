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
       45 GETTABLEKS                       R16 R1 K14 ["isResizable"]
       47 GETTABLEKS                       R17 R1 K15 ["buttons"]
       49 JUMPIF                           R17 ; [+2]
       50 NEWTABLE                         R17 0 0
       52 LENGTH                           R18 R17
       53 JUMPIFNOTEQKN                    R18 K10 [0] ; [+13]
       55 NEWTABLE                         R18 0 1
       57 DUPTABLE                         R19 K17 [{"Text", "action"}]
       58 LOADK                            R20 K18 ["Ok"]
       59 SETTABLEKS                       R20 R19 K7 ["Text"]
       61 LOADK                            R20 K19 ["ok"]
       62 SETTABLEKS                       R20 R19 K16 ["action"]
       64 SETLIST                          R18 R19 1 [1]
       66 MOVE                             R17 R18
       67 GETUPVAL                         R19 0
       68 GETTABLEKS                       R18 R19 K20 ["MESSAGE_BOX_BUTTON_WIDTH"]
       70 NEWTABLE                         R19 1 0
       72 GETUPVAL                         R21 1
       73 GETTABLEKS                       R20 R21 K21 ["createElement"]
       75 LOADK                            R21 K22 ["UIListLayout"]
       76 DUPTABLE                         R22 K28 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Padding"}]
       77 GETIMPORT                        R23 K31 [Enum.SortOrder.LayoutOrder]
       79 SETTABLEKS                       R23 R22 K23 ["SortOrder"]
       81 GETIMPORT                        R23 K33 [Enum.HorizontalAlignment.Right]
       83 SETTABLEKS                       R23 R22 K24 ["HorizontalAlignment"]
       85 GETIMPORT                        R23 K35 [Enum.VerticalAlignment.Top]
       87 SETTABLEKS                       R23 R22 K25 ["VerticalAlignment"]
       89 GETIMPORT                        R23 K37 [Enum.FillDirection.Horizontal]
       91 SETTABLEKS                       R23 R22 K26 ["FillDirection"]
       93 GETIMPORT                        R23 K40 [UDim.new]
       95 LOADN                            R24 0
       96 LOADN                            R25 8
       97 CALL                             R23 2 1
       98 SETTABLEKS                       R23 R22 K27 ["Padding"]
      100 CALL                             R20 2 1
      101 SETTABLEKS                       R20 R19 K22 ["UIListLayout"]
      103 GETIMPORT                        R20 K42 [ipairs]
      105 MOVE                             R21 R17
      106 CALL                             R20 1 3
      107 FORGPREP_INEXT                   R20
      108 GETTABLEKS                       R26 R24 K16 ["action"]
      110 MOVE                             R27 R23
      111 CONCAT                           R25 R26 R27
      112 GETUPVAL                         R27 1
      113 GETTABLEKS                       R26 R27 K21 ["createElement"]
      115 GETUPVAL                         R27 2
      116 DUPTABLE                         R28 K45 [{"index", "Text", "action", "onButtonClicked"}]
      117 SETTABLEKS                       R23 R28 K43 ["index"]
      119 GETTABLEKS                       R29 R24 K7 ["Text"]
      121 SETTABLEKS                       R29 R28 K7 ["Text"]
      123 GETTABLEKS                       R29 R24 K16 ["action"]
      125 SETTABLEKS                       R29 R28 K16 ["action"]
      127 GETTABLEKS                       R30 R0 K0 ["props"]
      129 GETTABLEKS                       R29 R30 K44 ["onButtonClicked"]
      131 SETTABLEKS                       R29 R28 K44 ["onButtonClicked"]
      133 CALL                             R26 2 1
      134 SETTABLE                         R26 R19 R25
      135 FORGLOOP                         R20 2 [inext] ; [-28]
      137 GETUPVAL                         R20 3
      138 MOVE                             R21 R6
      139 MOVE                             R22 R12
      140 MOVE                             R23 R11
      141 GETIMPORT                        R24 K47 [Vector2.new]
      143 LOADN                            R25 0
      144 LOADN                            R26 0
      145 CALL                             R24 2 -1
      146 CALL                             R20 -1 1
      147 GETUPVAL                         R21 3
      148 MOVE                             R22 R7
      149 MOVE                             R23 R14
      150 MOVE                             R24 R13
      151 GETIMPORT                        R25 K47 [Vector2.new]
      153 LOADN                            R26 0
      154 LOADN                            R27 0
      155 CALL                             R25 2 -1
      156 CALL                             R21 -1 1
      157 GETTABLEKS                       R24 R20 K48 ["X"]
      159 FASTCALL2K                       MATH_MIN R24 K49 ; [+4]
      161 LOADK                            R25 K49 [424]
      162 GETIMPORT                        R23 K52 [math.min]
      164 CALL                             R23 2 1
      165 GETTABLEKS                       R25 R21 K48 ["X"]
      167 FASTCALL2K                       MATH_MIN R25 K53 ; [+4]
      169 LOADK                            R26 K53 [192]
      170 GETIMPORT                        R24 K52 [math.min]
      172 CALL                             R24 2 1
      173 FASTCALL2                        MATH_MAX R23 R24 ; [+3]
      175 GETIMPORT                        R22 K55 [math.max]
      177 CALL                             R22 2 1
      178 JUMPIFNOT                        R10 ; [+2]
      179 LOADN                            R23 32
      180 JUMP                             ; [+1]
      181 LOADN                            R23 0
      182 ADDK                             R24 R23 K56 [20]
      183 ADD                              R25 R24 R22
      184 GETTABLEKS                       R27 R1 K57 ["IconColor"]
      186 JUMPIFNOT                        R27 ; [+3]
      187 GETTABLEKS                       R26 R1 K57 ["IconColor"]
      189 JUMP                             ; [+1]
      190 LOADNIL                          R26
      191 LENGTH                           R29 R17
      192 MUL                              R28 R29 R18
      193 LENGTH                           R31 R17
      194 SUBK                             R30 R31 K59 [1]
      195 MULK                             R29 R30 K58 [8]
      196 ADD                              R27 R28 R29
      197 FASTCALL2                        MATH_MAX R27 R25 ; [+5]
      199 MOVE                             R30 R27
      200 MOVE                             R31 R25
      201 GETIMPORT                        R29 K55 [math.max]
      203 CALL                             R29 2 1
      204 FASTCALL2K                       MATH_MAX R29 K60 ; [+4]
      206 LOADK                            R30 K60 [120]
      207 GETIMPORT                        R28 K55 [math.max]
      209 CALL                             R28 2 1
      210 SUB                              R29 R28 R24
      211 GETUPVAL                         R30 3
      212 MOVE                             R31 R6
      213 MOVE                             R32 R12
      214 MOVE                             R33 R11
      215 GETIMPORT                        R34 K47 [Vector2.new]
      217 MOVE                             R35 R29
      218 LOADN                            R36 232
      219 CALL                             R34 2 -1
      220 CALL                             R30 -1 1
      221 GETUPVAL                         R31 3
      222 MOVE                             R32 R7
      223 MOVE                             R33 R14
      224 MOVE                             R34 R13
      225 GETIMPORT                        R35 K47 [Vector2.new]
      227 MOVE                             R36 R29
      228 LOADN                            R37 232
      229 CALL                             R35 2 -1
      230 CALL                             R31 -1 1
      231 GETTABLEKS                       R32 R30 K61 ["Y"]
      233 GETTABLEKS                       R33 R31 K61 ["Y"]
      235 JUMPIFNOT                        R9 ; [+3]
      236 LOADN                            R38 8
      237 ADD                              R37 R38 R33
      238 JUMPIF                           R37 ; [+1]
      239 LOADN                            R37 0
      240 ADD                              R36 R32 R37
      241 FASTCALL2                        MATH_MAX R23 R36 ; [+4]
      243 MOVE                             R35 R23
      244 GETIMPORT                        R34 K55 [math.max]
      246 CALL                             R34 2 1
      247 ADDK                             R36 R28 K62 [12]
      248 ADDK                             R35 R36 K62 [12]
      249 ADDK                             R39 R34 K58 [8]
      250 ADDK                             R38 R39 K62 [12]
      251 ADDK                             R37 R38 K63 [23]
      252 ADDK                             R36 R37 K62 [12]
      253 GETTABLEKS                       R38 R1 K64 ["isScrollable"]
      255 JUMPIFNOT                        R38 ; [+2]
      256 GETUPVAL                         R37 4
      257 JUMP                             ; [+1]
      258 LOADK                            R37 K65 ["Frame"]
      259 NEWTABLE                         R38 0 0
      261 GETUPVAL                         R39 5
      262 CALL                             R39 0 1
      263 JUMPIFNOT                        R39 ; [+7]
      264 JUMPIFNOT                        R9 ; [+6]
      265 GETUPVAL                         R39 6
      266 MOVE                             R41 R7
      267 NAMECALL                         R39 R39 K66 ["createDynamicLinkMap"]
      269 CALL                             R39 2 1
      270 MOVE                             R38 R39
      271 GETUPVAL                         R40 1
      272 GETTABLEKS                       R39 R40 K21 ["createElement"]
      274 GETUPVAL                         R40 7
      275 NEWTABLE                         R41 16 0
      277 SETTABLEKS                       R4 R41 K4 ["Name"]
      279 SETTABLEKS                       R3 R41 K3 ["Title"]
      281 SETTABLEKS                       R5 R41 K6 ["Id"]
      283 GETIMPORT                        R42 K47 [Vector2.new]
      285 MOVE                             R43 R35
      286 GETTABLEKS                       R45 R1 K64 ["isScrollable"]
      288 JUMPIFNOT                        R45 ; [+13]
      289 GETTABLEKS                       R45 R1 K67 ["messageBoxHeight"]
      291 JUMPIFEQKNIL                     R45 ; [+10]
      293 GETTABLEKS                       R45 R1 K67 ["messageBoxHeight"]
      295 FASTCALL2                        MATH_MIN R45 R36 ; [+4]
      297 MOVE                             R46 R36
      298 GETIMPORT                        R44 K52 [math.min]
      300 CALL                             R44 2 1
      301 JUMP                             ; [+1]
      302 MOVE                             R44 R36
      303 CALL                             R42 2 1
      304 SETTABLEKS                       R42 R41 K68 ["Size"]
      306 GETIMPORT                        R42 K71 [Enum.ZIndexBehavior.Sibling]
      308 SETTABLEKS                       R42 R41 K69 ["ZIndexBehavior"]
      310 LOADB                            R42 1
      311 SETTABLEKS                       R42 R41 K72 ["Modal"]
      313 GETTABLEKS                       R43 R0 K0 ["props"]
      315 GETTABLEKS                       R42 R43 K73 ["Plugin"]
      317 NAMECALL                         R42 R42 K74 ["get"]
      319 CALL                             R42 1 1
      320 SETTABLEKS                       R42 R41 K75 ["plugin"]
      322 SETTABLEKS                       R16 R41 K76 ["Resizable"]
      324 GETUPVAL                         R44 1
      325 GETTABLEKS                       R43 R44 K77 ["Change"]
      327 GETTABLEKS                       R42 R43 K78 ["Enabled"]
      329 GETTABLEKS                       R43 R0 K79 ["onEnabledChanged"]
      331 SETTABLE                         R43 R41 R42
      332 GETUPVAL                         R44 1
      333 GETTABLEKS                       R43 R44 K80 ["Event"]
      335 GETTABLEKS                       R42 R43 K81 ["AncestryChanged"]
      337 GETTABLEKS                       R43 R0 K82 ["onAncestryChanged"]
      339 SETTABLE                         R43 R41 R42
      340 DUPTABLE                         R42 K84 [{"Background"}]
      341 GETUPVAL                         R44 1
      342 GETTABLEKS                       R43 R44 K21 ["createElement"]
      344 MOVE                             R44 R37
      345 DUPTABLE                         R45 K90 [{"AutomaticSize", "Position", "Size", "CanvasSize", "AutomaticCanvasSize", "BackgroundColor3"}]
      346 GETUPVAL                         R47 8
      347 CALL                             R47 0 1
      348 JUMPIFNOT                        R47 ; [+3]
      349 GETIMPORT                        R46 K91 [Enum.AutomaticSize.Y]
      351 JUMP                             ; [+1]
      352 LOADNIL                          R46
      353 SETTABLEKS                       R46 R45 K85 ["AutomaticSize"]
      355 GETIMPORT                        R46 K93 [UDim2.new]
      357 LOADN                            R47 0
      358 LOADN                            R48 0
      359 LOADN                            R49 0
      360 LOADN                            R50 0
      361 CALL                             R46 4 1
      362 SETTABLEKS                       R46 R45 K86 ["Position"]
      364 GETIMPORT                        R46 K93 [UDim2.new]
      366 LOADN                            R47 1
      367 LOADN                            R48 0
      368 LOADN                            R49 1
      369 LOADN                            R50 0
      370 CALL                             R46 4 1
      371 SETTABLEKS                       R46 R45 K68 ["Size"]
      373 GETTABLEKS                       R47 R1 K64 ["isScrollable"]
      375 JUMPIFNOT                        R47 ; [+6]
      376 GETIMPORT                        R46 K95 [UDim2.fromScale]
      378 LOADN                            R47 1
      379 LOADN                            R48 0
      380 CALL                             R46 2 1
      381 JUMP                             ; [+1]
      382 LOADNIL                          R46
      383 SETTABLEKS                       R46 R45 K87 ["CanvasSize"]
      385 GETTABLEKS                       R47 R1 K64 ["isScrollable"]
      387 JUMPIFNOT                        R47 ; [+3]
      388 GETIMPORT                        R46 K91 [Enum.AutomaticSize.Y]
      390 JUMP                             ; [+1]
      391 LOADNIL                          R46
      392 SETTABLEKS                       R46 R45 K88 ["AutomaticCanvasSize"]
      394 GETTABLEKS                       R46 R15 K96 ["backgroundColor"]
      396 SETTABLEKS                       R46 R45 K89 ["BackgroundColor3"]
      398 DUPTABLE                         R46 K100 [{"UIPadding", "UIListLayout", "Information", "Buttons"}]
      399 GETUPVAL                         R48 1
      400 GETTABLEKS                       R47 R48 K21 ["createElement"]
      402 LOADK                            R48 K97 ["UIPadding"]
      403 DUPTABLE                         R49 K105 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      404 GETIMPORT                        R50 K40 [UDim.new]
      406 LOADN                            R51 0
      407 LOADN                            R52 12
      408 CALL                             R50 2 1
      409 SETTABLEKS                       R50 R49 K101 ["PaddingBottom"]
      411 GETIMPORT                        R50 K40 [UDim.new]
      413 LOADN                            R51 0
      414 LOADN                            R52 12
      415 CALL                             R50 2 1
      416 SETTABLEKS                       R50 R49 K102 ["PaddingLeft"]
      418 GETIMPORT                        R50 K40 [UDim.new]
      420 LOADN                            R51 0
      421 LOADN                            R52 12
      422 CALL                             R50 2 1
      423 SETTABLEKS                       R50 R49 K103 ["PaddingRight"]
      425 GETIMPORT                        R50 K40 [UDim.new]
      427 LOADN                            R51 0
      428 LOADN                            R52 8
      429 CALL                             R50 2 1
      430 SETTABLEKS                       R50 R49 K104 ["PaddingTop"]
      432 CALL                             R47 2 1
      433 SETTABLEKS                       R47 R46 K97 ["UIPadding"]
      435 GETUPVAL                         R48 1
      436 GETTABLEKS                       R47 R48 K21 ["createElement"]
      438 LOADK                            R48 K22 ["UIListLayout"]
      439 DUPTABLE                         R49 K106 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      440 GETIMPORT                        R50 K31 [Enum.SortOrder.LayoutOrder]
      442 SETTABLEKS                       R50 R49 K23 ["SortOrder"]
      444 GETIMPORT                        R50 K108 [Enum.HorizontalAlignment.Center]
      446 SETTABLEKS                       R50 R49 K24 ["HorizontalAlignment"]
      448 GETIMPORT                        R50 K35 [Enum.VerticalAlignment.Top]
      450 SETTABLEKS                       R50 R49 K25 ["VerticalAlignment"]
      452 GETIMPORT                        R50 K40 [UDim.new]
      454 LOADN                            R51 0
      455 LOADN                            R52 12
      456 CALL                             R50 2 1
      457 SETTABLEKS                       R50 R49 K27 ["Padding"]
      459 CALL                             R47 2 1
      460 SETTABLEKS                       R47 R46 K22 ["UIListLayout"]
      462 GETUPVAL                         R48 1
      463 GETTABLEKS                       R47 R48 K21 ["createElement"]
      465 LOADK                            R48 K65 ["Frame"]
      466 DUPTABLE                         R49 K110 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
      467 GETUPVAL                         R51 8
      468 CALL                             R51 0 1
      469 JUMPIFNOT                        R51 ; [+3]
      470 GETIMPORT                        R50 K91 [Enum.AutomaticSize.Y]
      472 JUMP                             ; [+1]
      473 LOADNIL                          R50
      474 SETTABLEKS                       R50 R49 K85 ["AutomaticSize"]
      476 GETIMPORT                        R50 K93 [UDim2.new]
      478 LOADN                            R51 1
      479 LOADN                            R52 0
      480 LOADN                            R53 0
      481 MOVE                             R54 R34
      482 CALL                             R50 4 1
      483 SETTABLEKS                       R50 R49 K68 ["Size"]
      485 LOADN                            R50 1
      486 SETTABLEKS                       R50 R49 K109 ["BackgroundTransparency"]
      488 LOADN                            R50 1
      489 SETTABLEKS                       R50 R49 K30 ["LayoutOrder"]
      491 DUPTABLE                         R50 K112 [{"UIListLayout", "Icon", "Texts"}]
      492 GETUPVAL                         R52 1
      493 GETTABLEKS                       R51 R52 K21 ["createElement"]
      495 LOADK                            R52 K22 ["UIListLayout"]
      496 DUPTABLE                         R53 K113 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      497 GETIMPORT                        R54 K31 [Enum.SortOrder.LayoutOrder]
      499 SETTABLEKS                       R54 R53 K23 ["SortOrder"]
      501 GETIMPORT                        R54 K115 [Enum.HorizontalAlignment.Left]
      503 SETTABLEKS                       R54 R53 K24 ["HorizontalAlignment"]
      505 GETIMPORT                        R54 K35 [Enum.VerticalAlignment.Top]
      507 SETTABLEKS                       R54 R53 K25 ["VerticalAlignment"]
      509 GETIMPORT                        R54 K40 [UDim.new]
      511 LOADN                            R55 0
      512 LOADN                            R56 20
      513 CALL                             R54 2 1
      514 SETTABLEKS                       R54 R53 K27 ["Padding"]
      516 GETIMPORT                        R54 K37 [Enum.FillDirection.Horizontal]
      518 SETTABLEKS                       R54 R53 K26 ["FillDirection"]
      520 CALL                             R51 2 1
      521 SETTABLEKS                       R51 R50 K22 ["UIListLayout"]
      523 GETUPVAL                         R52 1
      524 GETTABLEKS                       R51 R52 K21 ["createElement"]
      526 LOADK                            R52 K116 ["ImageLabel"]
      527 DUPTABLE                         R53 K119 [{"Size", "BackgroundTransparency", "LayoutOrder", "Image", "ImageColor3"}]
      528 GETIMPORT                        R54 K93 [UDim2.new]
      530 LOADN                            R55 0
      531 MOVE                             R56 R23
      532 LOADN                            R57 0
      533 MOVE                             R58 R23
      534 CALL                             R54 4 1
      535 SETTABLEKS                       R54 R53 K68 ["Size"]
      537 LOADN                            R54 1
      538 SETTABLEKS                       R54 R53 K109 ["BackgroundTransparency"]
      540 LOADN                            R54 0
      541 SETTABLEKS                       R54 R53 K30 ["LayoutOrder"]
      543 SETTABLEKS                       R8 R53 K117 ["Image"]
      545 SETTABLEKS                       R26 R53 K118 ["ImageColor3"]
      547 CALL                             R51 2 1
      548 SETTABLEKS                       R51 R50 K9 ["Icon"]
      550 GETUPVAL                         R52 1
      551 GETTABLEKS                       R51 R52 K21 ["createElement"]
      553 LOADK                            R52 K65 ["Frame"]
      554 DUPTABLE                         R53 K120 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency"}]
      555 GETUPVAL                         R55 8
      556 CALL                             R55 0 1
      557 JUMPIFNOT                        R55 ; [+3]
      558 GETIMPORT                        R54 K91 [Enum.AutomaticSize.Y]
      560 JUMP                             ; [+1]
      561 LOADNIL                          R54
      562 SETTABLEKS                       R54 R53 K85 ["AutomaticSize"]
      564 LOADN                            R54 1
      565 SETTABLEKS                       R54 R53 K30 ["LayoutOrder"]
      567 GETIMPORT                        R54 K93 [UDim2.new]
      569 LOADN                            R55 1
      570 MINUS                            R56 R24
      571 GETUPVAL                         R58 8
      572 CALL                             R58 0 1
      573 JUMPIFNOT                        R58 ; [+2]
      574 LOADN                            R57 0
      575 JUMP                             ; [+1]
      576 LOADN                            R57 1
      577 LOADN                            R58 0
      578 CALL                             R54 4 1
      579 SETTABLEKS                       R54 R53 K68 ["Size"]
      581 LOADN                            R54 1
      582 SETTABLEKS                       R54 R53 K109 ["BackgroundTransparency"]
      584 DUPTABLE                         R54 K123 [{"UIListLayout", "TextLabel", "InformativeLabel"}]
      585 GETUPVAL                         R56 1
      586 GETTABLEKS                       R55 R56 K21 ["createElement"]
      588 LOADK                            R56 K22 ["UIListLayout"]
      589 DUPTABLE                         R57 K113 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      590 GETIMPORT                        R58 K31 [Enum.SortOrder.LayoutOrder]
      592 SETTABLEKS                       R58 R57 K23 ["SortOrder"]
      594 GETIMPORT                        R58 K115 [Enum.HorizontalAlignment.Left]
      596 SETTABLEKS                       R58 R57 K24 ["HorizontalAlignment"]
      598 GETIMPORT                        R58 K35 [Enum.VerticalAlignment.Top]
      600 SETTABLEKS                       R58 R57 K25 ["VerticalAlignment"]
      602 GETIMPORT                        R58 K40 [UDim.new]
      604 LOADN                            R59 0
      605 LOADN                            R60 8
      606 CALL                             R58 2 1
      607 SETTABLEKS                       R58 R57 K27 ["Padding"]
      609 GETIMPORT                        R58 K125 [Enum.FillDirection.Vertical]
      611 SETTABLEKS                       R58 R57 K26 ["FillDirection"]
      613 CALL                             R55 2 1
      614 SETTABLEKS                       R55 R54 K22 ["UIListLayout"]
      616 GETUPVAL                         R56 1
      617 GETTABLEKS                       R55 R56 K21 ["createElement"]
      619 LOADK                            R56 K121 ["TextLabel"]
      620 DUPTABLE                         R57 K132 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      621 GETUPVAL                         R59 8
      622 CALL                             R59 0 1
      623 JUMPIFNOT                        R59 ; [+3]
      624 GETIMPORT                        R58 K91 [Enum.AutomaticSize.Y]
      626 JUMP                             ; [+1]
      627 LOADNIL                          R58
      628 SETTABLEKS                       R58 R57 K85 ["AutomaticSize"]
      630 LOADN                            R58 0
      631 SETTABLEKS                       R58 R57 K30 ["LayoutOrder"]
      633 GETIMPORT                        R58 K93 [UDim2.new]
      635 LOADN                            R59 1
      636 LOADN                            R60 0
      637 LOADN                            R61 0
      638 MOVE                             R62 R32
      639 CALL                             R58 4 1
      640 SETTABLEKS                       R58 R57 K68 ["Size"]
      642 LOADN                            R58 1
      643 SETTABLEKS                       R58 R57 K109 ["BackgroundTransparency"]
      645 SETTABLEKS                       R6 R57 K7 ["Text"]
      647 SETTABLEKS                       R11 R57 K126 ["Font"]
      649 SETTABLEKS                       R12 R57 K127 ["TextSize"]
      651 GETTABLEKS                       R58 R15 K133 ["textColor"]
      653 SETTABLEKS                       R58 R57 K128 ["TextColor3"]
      655 GETIMPORT                        R58 K134 [Enum.TextXAlignment.Left]
      657 SETTABLEKS                       R58 R57 K129 ["TextXAlignment"]
      659 GETIMPORT                        R58 K135 [Enum.TextYAlignment.Top]
      661 SETTABLEKS                       R58 R57 K130 ["TextYAlignment"]
      663 LOADB                            R58 1
      664 SETTABLEKS                       R58 R57 K131 ["TextWrapped"]
      666 CALL                             R55 2 1
      667 SETTABLEKS                       R55 R54 K121 ["TextLabel"]
      669 MOVE                             R55 R9
      670 JUMPIFNOT                        R55 ; [+118]
      671 GETUPVAL                         R56 5
      672 CALL                             R56 0 1
      673 JUMPIFNOT                        R56 ; [+64]
      674 GETUPVAL                         R56 1
      675 GETTABLEKS                       R55 R56 K21 ["createElement"]
      677 GETUPVAL                         R56 9
      678 DUPTABLE                         R57 K138 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency", "Text", "TextProps", "LinkMap", "HorizontalAlignment"}]
      679 GETUPVAL                         R59 8
      680 CALL                             R59 0 1
      681 JUMPIFNOT                        R59 ; [+3]
      682 GETIMPORT                        R58 K91 [Enum.AutomaticSize.Y]
      684 JUMP                             ; [+1]
      685 LOADNIL                          R58
      686 SETTABLEKS                       R58 R57 K85 ["AutomaticSize"]
      688 LOADN                            R58 1
      689 SETTABLEKS                       R58 R57 K30 ["LayoutOrder"]
      691 GETIMPORT                        R58 K93 [UDim2.new]
      693 LOADN                            R59 1
      694 LOADN                            R60 0
      695 LOADN                            R61 0
      696 MOVE                             R62 R33
      697 CALL                             R58 4 1
      698 SETTABLEKS                       R58 R57 K68 ["Size"]
      700 LOADN                            R58 1
      701 SETTABLEKS                       R58 R57 K109 ["BackgroundTransparency"]
      703 SETTABLEKS                       R7 R57 K7 ["Text"]
      705 DUPTABLE                         R58 K140 [{"BackgroundTransparency", "Font", "TextSize", "TextColor", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      706 LOADN                            R59 1
      707 SETTABLEKS                       R59 R58 K109 ["BackgroundTransparency"]
      709 SETTABLEKS                       R13 R58 K126 ["Font"]
      711 SETTABLEKS                       R14 R58 K127 ["TextSize"]
      713 GETTABLEKS                       R59 R15 K141 ["informativeTextColor"]
      715 SETTABLEKS                       R59 R58 K139 ["TextColor"]
      717 GETIMPORT                        R59 K134 [Enum.TextXAlignment.Left]
      719 SETTABLEKS                       R59 R58 K129 ["TextXAlignment"]
      721 GETIMPORT                        R59 K135 [Enum.TextYAlignment.Top]
      723 SETTABLEKS                       R59 R58 K130 ["TextYAlignment"]
      725 LOADB                            R59 1
      726 SETTABLEKS                       R59 R58 K131 ["TextWrapped"]
      728 SETTABLEKS                       R58 R57 K136 ["TextProps"]
      730 SETTABLEKS                       R38 R57 K137 ["LinkMap"]
      732 GETIMPORT                        R58 K115 [Enum.HorizontalAlignment.Left]
      734 SETTABLEKS                       R58 R57 K24 ["HorizontalAlignment"]
      736 CALL                             R55 2 1
      737 JUMP                             ; [+51]
      738 GETUPVAL                         R56 1
      739 GETTABLEKS                       R55 R56 K21 ["createElement"]
      741 LOADK                            R56 K121 ["TextLabel"]
      742 DUPTABLE                         R57 K132 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      743 GETUPVAL                         R59 8
      744 CALL                             R59 0 1
      745 JUMPIFNOT                        R59 ; [+3]
      746 GETIMPORT                        R58 K91 [Enum.AutomaticSize.Y]
      748 JUMP                             ; [+1]
      749 LOADNIL                          R58
      750 SETTABLEKS                       R58 R57 K85 ["AutomaticSize"]
      752 LOADN                            R58 1
      753 SETTABLEKS                       R58 R57 K30 ["LayoutOrder"]
      755 GETIMPORT                        R58 K93 [UDim2.new]
      757 LOADN                            R59 1
      758 LOADN                            R60 0
      759 LOADN                            R61 0
      760 MOVE                             R62 R33
      761 CALL                             R58 4 1
      762 SETTABLEKS                       R58 R57 K68 ["Size"]
      764 LOADN                            R58 1
      765 SETTABLEKS                       R58 R57 K109 ["BackgroundTransparency"]
      767 SETTABLEKS                       R7 R57 K7 ["Text"]
      769 SETTABLEKS                       R13 R57 K126 ["Font"]
      771 SETTABLEKS                       R14 R57 K127 ["TextSize"]
      773 GETTABLEKS                       R58 R15 K141 ["informativeTextColor"]
      775 SETTABLEKS                       R58 R57 K128 ["TextColor3"]
      777 GETIMPORT                        R58 K134 [Enum.TextXAlignment.Left]
      779 SETTABLEKS                       R58 R57 K129 ["TextXAlignment"]
      781 GETIMPORT                        R58 K135 [Enum.TextYAlignment.Top]
      783 SETTABLEKS                       R58 R57 K130 ["TextYAlignment"]
      785 LOADB                            R58 1
      786 SETTABLEKS                       R58 R57 K131 ["TextWrapped"]
      788 CALL                             R55 2 1
      789 SETTABLEKS                       R55 R54 K122 ["InformativeLabel"]
      791 CALL                             R51 3 1
      792 SETTABLEKS                       R51 R50 K111 ["Texts"]
      794 CALL                             R47 3 1
      795 SETTABLEKS                       R47 R46 K98 ["Information"]
      797 GETUPVAL                         R48 1
      798 GETTABLEKS                       R47 R48 K21 ["createElement"]
      800 LOADK                            R48 K65 ["Frame"]
      801 DUPTABLE                         R49 K142 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      802 GETIMPORT                        R50 K93 [UDim2.new]
      804 LOADN                            R51 1
      805 LOADN                            R52 0
      806 LOADN                            R53 0
      807 LOADN                            R54 23
      808 CALL                             R50 4 1
      809 SETTABLEKS                       R50 R49 K68 ["Size"]
      811 LOADN                            R50 1
      812 SETTABLEKS                       R50 R49 K109 ["BackgroundTransparency"]
      814 LOADN                            R50 2
      815 SETTABLEKS                       R50 R49 K30 ["LayoutOrder"]
      817 MOVE                             R50 R19
      818 CALL                             R47 3 1
      819 SETTABLEKS                       R47 R46 K99 ["Buttons"]
      821 CALL                             R43 3 1
      822 SETTABLEKS                       R43 R42 K83 ["Background"]
      824 CALL                             R39 3 -1
      825 RETURN                           R39 -1

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
       98 GETTABLEKS                       R16 R17 K29 ["getFFlagToolboxAddLinksToMessageBox"]
      100 CALL                             R15 1 1
      101 GETTABLEKS                       R16 R3 K30 ["PureComponent"]
      103 LOADK                            R18 K23 ["MessageBox"]
      104 NAMECALL                         R16 R16 K31 ["extend"]
      106 CALL                             R16 2 1
      107 DUPCLOSURE                       R17 K32 [PROTO_0]
      108 DUPCLOSURE                       R18 K33 [PROTO_2]
      109 CAPTURE                          VAL R1
      110 SETTABLEKS                       R18 R16 K34 ["createDynamicLinkMap"]
      112 DUPCLOSURE                       R18 K35 [PROTO_5]
      113 SETTABLEKS                       R18 R16 K36 ["init"]
      115 DUPCLOSURE                       R18 K37 [PROTO_6]
      116 SETTABLEKS                       R18 R16 K38 ["willUnmount"]
      118 NEWCLOSURE                       R18 P4
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R15
      125 CAPTURE                          REF R16
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R6
      129 SETTABLEKS                       R18 R16 K39 ["render"]
      131 MOVE                             R18 R9
      132 DUPTABLE                         R19 K42 [{"Plugin", "Stylizer"}]
      133 GETTABLEKS                       R20 R8 K40 ["Plugin"]
      135 SETTABLEKS                       R20 R19 K40 ["Plugin"]
      137 GETTABLEKS                       R20 R8 K41 ["Stylizer"]
      139 SETTABLEKS                       R20 R19 K41 ["Stylizer"]
      141 CALL                             R18 1 1
      142 MOVE                             R19 R16
      143 CALL                             R18 1 1
      144 MOVE                             R16 R18
      145 CLOSEUPVALS                      R16
      146 RETURN                           R16 1
