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

PROTO_4:
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
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R11 R11 K11 ["FONT"]
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R12 R12 K12 ["FONT_SIZE_SMALL"]
       37 GETUPVAL                         R13 0
       38 GETTABLEKS                       R13 R13 K11 ["FONT"]
       40 GETUPVAL                         R14 0
       41 GETTABLEKS                       R14 R14 K12 ["FONT_SIZE_SMALL"]
       43 GETTABLEKS                       R15 R2 K13 ["messageBox"]
       45 GETTABLEKS                       R16 R1 K14 ["isResizable"]
       47 GETTABLEKS                       R17 R1 K15 ["buttons"]
       49 JUMPIF                           R17 ; [+2]
       50 NEWTABLE                         R17 0 0
       52 LENGTH                           R18 R17
       53 JUMPIFNOTEQKN                    R18 K10 [0] ; [+7]
       55 NEWTABLE                         R18 0 1
       57 DUPTABLE                         R19 K19 [{["Text"] = "Ok", ["action"] = "ok"}]
       58 SETLIST                          R18 R19 1 [1]
       60 MOVE                             R17 R18
       61 GETUPVAL                         R18 0
       62 GETTABLEKS                       R18 R18 K20 ["MESSAGE_BOX_BUTTON_WIDTH"]
       64 NEWTABLE                         R19 1 0
       66 GETUPVAL                         R20 1
       67 GETTABLEKS                       R20 R20 K21 ["createElement"]
       69 LOADK                            R21 K22 ["UIListLayout"]
       70 DUPTABLE                         R22 K28 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Padding"}]
       71 GETIMPORT                        R23 K31 [Enum.SortOrder.LayoutOrder]
       73 SETTABLEKS                       R23 R22 K23 ["SortOrder"]
       75 GETIMPORT                        R23 K33 [Enum.HorizontalAlignment.Right]
       77 SETTABLEKS                       R23 R22 K24 ["HorizontalAlignment"]
       79 GETIMPORT                        R23 K35 [Enum.VerticalAlignment.Top]
       81 SETTABLEKS                       R23 R22 K25 ["VerticalAlignment"]
       83 GETIMPORT                        R23 K37 [Enum.FillDirection.Horizontal]
       85 SETTABLEKS                       R23 R22 K26 ["FillDirection"]
       87 GETIMPORT                        R23 K40 [UDim.new]
       89 LOADN                            R24 0
       90 LOADN                            R25 8
       91 CALL                             R23 2 1
       92 SETTABLEKS                       R23 R22 K27 ["Padding"]
       94 CALL                             R20 2 1
       95 SETTABLEKS                       R20 R19 K22 ["UIListLayout"]
       97 GETIMPORT                        R20 K42 [ipairs]
       99 MOVE                             R21 R17
      100 CALL                             R20 1 3
      101 FORGPREP_INEXT                   R20
      102 GETTABLEKS                       R26 R24 K17 ["action"]
      104 MOVE                             R27 R23
      105 CONCAT                           R25 R26 R27
      106 GETUPVAL                         R26 1
      107 GETTABLEKS                       R26 R26 K21 ["createElement"]
      109 GETUPVAL                         R27 2
      110 DUPTABLE                         R28 K45 [{"index", "Text", "action", "onButtonClicked"}]
      111 SETTABLEKS                       R23 R28 K43 ["index"]
      113 GETTABLEKS                       R29 R24 K7 ["Text"]
      115 SETTABLEKS                       R29 R28 K7 ["Text"]
      117 GETTABLEKS                       R29 R24 K17 ["action"]
      119 SETTABLEKS                       R29 R28 K17 ["action"]
      121 GETTABLEKS                       R29 R0 K0 ["props"]
      123 GETTABLEKS                       R29 R29 K44 ["onButtonClicked"]
      125 SETTABLEKS                       R29 R28 K44 ["onButtonClicked"]
      127 CALL                             R26 2 1
      128 SETTABLE                         R26 R19 R25
      129 FORGLOOP                         R20 2 [inext] ; [-28]
      131 GETUPVAL                         R20 3
      132 MOVE                             R21 R6
      133 MOVE                             R22 R12
      134 MOVE                             R23 R11
      135 GETIMPORT                        R24 K47 [Vector2.new]
      137 LOADN                            R25 0
      138 LOADN                            R26 0
      139 CALL                             R24 2 -1
      140 CALL                             R20 -1 1
      141 GETUPVAL                         R21 3
      142 MOVE                             R22 R7
      143 MOVE                             R23 R14
      144 MOVE                             R24 R13
      145 GETIMPORT                        R25 K47 [Vector2.new]
      147 LOADN                            R26 0
      148 LOADN                            R27 0
      149 CALL                             R25 2 -1
      150 CALL                             R21 -1 1
      151 GETTABLEKS                       R24 R20 K48 ["X"]
      153 FASTCALL2K                       MATH_MIN R24 K49 ; [+4]
      155 LOADK                            R25 K49 [424]
      156 GETIMPORT                        R23 K52 [math.min]
      158 CALL                             R23 2 1
      159 GETTABLEKS                       R25 R21 K48 ["X"]
      161 FASTCALL2K                       MATH_MIN R25 K53 ; [+4]
      163 LOADK                            R26 K53 [192]
      164 GETIMPORT                        R24 K52 [math.min]
      166 CALL                             R24 2 1
      167 FASTCALL2                        MATH_MAX R23 R24 ; [+3]
      169 GETIMPORT                        R22 K55 [math.max]
      171 CALL                             R22 2 1
      172 JUMPIFNOT                        R10 ; [+2]
      173 LOADN                            R23 32
      174 JUMP                             ; [+1]
      175 LOADN                            R23 0
      176 ADDK                             R24 R23 K56 [20]
      177 ADD                              R25 R24 R22
      178 GETTABLEKS                       R27 R1 K57 ["IconColor"]
      180 JUMPIFNOT                        R27 ; [+3]
      181 GETTABLEKS                       R26 R1 K57 ["IconColor"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R26
      185 LENGTH                           R29 R17
      186 MUL                              R28 R29 R18
      187 LENGTH                           R31 R17
      188 SUBK                             R30 R31 K59 [1]
      189 MULK                             R29 R30 K58 [8]
      190 ADD                              R27 R28 R29
      191 FASTCALL2                        MATH_MAX R27 R25 ; [+5]
      193 MOVE                             R30 R27
      194 MOVE                             R31 R25
      195 GETIMPORT                        R29 K55 [math.max]
      197 CALL                             R29 2 1
      198 FASTCALL2K                       MATH_MAX R29 K60 ; [+4]
      200 LOADK                            R30 K60 [120]
      201 GETIMPORT                        R28 K55 [math.max]
      203 CALL                             R28 2 1
      204 SUB                              R29 R28 R24
      205 GETUPVAL                         R30 3
      206 MOVE                             R31 R6
      207 MOVE                             R32 R12
      208 MOVE                             R33 R11
      209 GETIMPORT                        R34 K47 [Vector2.new]
      211 MOVE                             R35 R29
      212 LOADN                            R36 1000
      213 CALL                             R34 2 -1
      214 CALL                             R30 -1 1
      215 GETUPVAL                         R31 3
      216 MOVE                             R32 R7
      217 MOVE                             R33 R14
      218 MOVE                             R34 R13
      219 GETIMPORT                        R35 K47 [Vector2.new]
      221 MOVE                             R36 R29
      222 LOADN                            R37 1000
      223 CALL                             R35 2 -1
      224 CALL                             R31 -1 1
      225 GETTABLEKS                       R32 R30 K61 ["Y"]
      227 GETTABLEKS                       R33 R31 K61 ["Y"]
      229 JUMPIFNOT                        R9 ; [+3]
      230 LOADN                            R38 8
      231 ADD                              R37 R38 R33
      232 JUMPIF                           R37 ; [+1]
      233 LOADN                            R37 0
      234 ADD                              R36 R32 R37
      235 FASTCALL2                        MATH_MAX R23 R36 ; [+4]
      237 MOVE                             R35 R23
      238 GETIMPORT                        R34 K55 [math.max]
      240 CALL                             R34 2 1
      241 ADDK                             R36 R28 K62 [12]
      242 ADDK                             R35 R36 K62 [12]
      243 ADDK                             R39 R34 K58 [8]
      244 ADDK                             R38 R39 K62 [12]
      245 ADDK                             R37 R38 K63 [23]
      246 ADDK                             R36 R37 K62 [12]
      247 GETTABLEKS                       R38 R1 K64 ["isScrollable"]
      249 JUMPIFNOT                        R38 ; [+2]
      250 GETUPVAL                         R37 4
      251 JUMP                             ; [+1]
      252 LOADK                            R37 K65 ["Frame"]
      253 NEWTABLE                         R38 0 0
      255 GETUPVAL                         R39 5
      256 CALL                             R39 0 1
      257 JUMPIFNOT                        R39 ; [+7]
      258 JUMPIFNOT                        R9 ; [+6]
      259 GETUPVAL                         R39 6
      260 MOVE                             R41 R7
      261 NAMECALL                         R39 R39 K66 ["createDynamicLinkMap"]
      263 CALL                             R39 2 1
      264 MOVE                             R38 R39
      265 GETUPVAL                         R39 1
      266 GETTABLEKS                       R39 R39 K21 ["createElement"]
      268 GETUPVAL                         R40 7
      269 NEWTABLE                         R41 16 0
      271 SETTABLEKS                       R4 R41 K4 ["Name"]
      273 SETTABLEKS                       R3 R41 K3 ["Title"]
      275 SETTABLEKS                       R5 R41 K6 ["Id"]
      277 GETIMPORT                        R42 K47 [Vector2.new]
      279 MOVE                             R43 R35
      280 GETTABLEKS                       R45 R1 K64 ["isScrollable"]
      282 JUMPIFNOT                        R45 ; [+13]
      283 GETTABLEKS                       R45 R1 K67 ["messageBoxHeight"]
      285 JUMPIFEQKNIL                     R45 ; [+10]
      287 GETTABLEKS                       R45 R1 K67 ["messageBoxHeight"]
      289 FASTCALL2                        MATH_MIN R45 R36 ; [+4]
      291 MOVE                             R46 R36
      292 GETIMPORT                        R44 K52 [math.min]
      294 CALL                             R44 2 1
      295 JUMP                             ; [+1]
      296 MOVE                             R44 R36
      297 CALL                             R42 2 1
      298 SETTABLEKS                       R42 R41 K68 ["Size"]
      300 GETIMPORT                        R42 K71 [Enum.ZIndexBehavior.Sibling]
      302 SETTABLEKS                       R42 R41 K69 ["ZIndexBehavior"]
      304 LOADB                            R42 1
      305 SETTABLEKS                       R42 R41 K72 ["Modal"]
      307 GETTABLEKS                       R42 R0 K0 ["props"]
      309 GETTABLEKS                       R42 R42 K73 ["Plugin"]
      311 NAMECALL                         R42 R42 K74 ["get"]
      313 CALL                             R42 1 1
      314 SETTABLEKS                       R42 R41 K75 ["plugin"]
      316 SETTABLEKS                       R16 R41 K76 ["Resizable"]
      318 GETUPVAL                         R42 1
      319 GETTABLEKS                       R42 R42 K77 ["Change"]
      321 GETTABLEKS                       R42 R42 K78 ["Enabled"]
      323 GETTABLEKS                       R43 R0 K79 ["onEnabledChanged"]
      325 SETTABLE                         R43 R41 R42
      326 GETUPVAL                         R42 1
      327 GETTABLEKS                       R42 R42 K80 ["Event"]
      329 GETTABLEKS                       R42 R42 K81 ["AncestryChanged"]
      331 GETTABLEKS                       R43 R0 K82 ["onAncestryChanged"]
      333 SETTABLE                         R43 R41 R42
      334 DUPTABLE                         R42 K84 [{"Background"}]
      335 GETUPVAL                         R43 1
      336 GETTABLEKS                       R43 R43 K21 ["createElement"]
      338 MOVE                             R44 R37
      339 DUPTABLE                         R45 K90 [{"AutomaticSize", "Position", "Size", "CanvasSize", "AutomaticCanvasSize", "BackgroundColor3"}]
      340 GETUPVAL                         R47 8
      341 CALL                             R47 0 1
      342 JUMPIFNOT                        R47 ; [+3]
      343 GETIMPORT                        R46 K91 [Enum.AutomaticSize.Y]
      345 JUMP                             ; [+1]
      346 LOADNIL                          R46
      347 SETTABLEKS                       R46 R45 K85 ["AutomaticSize"]
      349 GETIMPORT                        R46 K93 [UDim2.new]
      351 LOADN                            R47 0
      352 LOADN                            R48 0
      353 LOADN                            R49 0
      354 LOADN                            R50 0
      355 CALL                             R46 4 1
      356 SETTABLEKS                       R46 R45 K86 ["Position"]
      358 GETIMPORT                        R46 K93 [UDim2.new]
      360 LOADN                            R47 1
      361 LOADN                            R48 0
      362 LOADN                            R49 1
      363 LOADN                            R50 0
      364 CALL                             R46 4 1
      365 SETTABLEKS                       R46 R45 K68 ["Size"]
      367 GETTABLEKS                       R47 R1 K64 ["isScrollable"]
      369 JUMPIFNOT                        R47 ; [+6]
      370 GETIMPORT                        R46 K95 [UDim2.fromScale]
      372 LOADN                            R47 1
      373 LOADN                            R48 0
      374 CALL                             R46 2 1
      375 JUMP                             ; [+1]
      376 LOADNIL                          R46
      377 SETTABLEKS                       R46 R45 K87 ["CanvasSize"]
      379 GETTABLEKS                       R47 R1 K64 ["isScrollable"]
      381 JUMPIFNOT                        R47 ; [+3]
      382 GETIMPORT                        R46 K91 [Enum.AutomaticSize.Y]
      384 JUMP                             ; [+1]
      385 LOADNIL                          R46
      386 SETTABLEKS                       R46 R45 K88 ["AutomaticCanvasSize"]
      388 GETTABLEKS                       R46 R15 K96 ["backgroundColor"]
      390 SETTABLEKS                       R46 R45 K89 ["BackgroundColor3"]
      392 DUPTABLE                         R46 K100 [{"UIPadding", "UIListLayout", "Information", "Buttons"}]
      393 GETUPVAL                         R47 1
      394 GETTABLEKS                       R47 R47 K21 ["createElement"]
      396 LOADK                            R48 K97 ["UIPadding"]
      397 DUPTABLE                         R49 K105 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      398 GETIMPORT                        R50 K40 [UDim.new]
      400 LOADN                            R51 0
      401 LOADN                            R52 12
      402 CALL                             R50 2 1
      403 SETTABLEKS                       R50 R49 K101 ["PaddingBottom"]
      405 GETIMPORT                        R50 K40 [UDim.new]
      407 LOADN                            R51 0
      408 LOADN                            R52 12
      409 CALL                             R50 2 1
      410 SETTABLEKS                       R50 R49 K102 ["PaddingLeft"]
      412 GETIMPORT                        R50 K40 [UDim.new]
      414 LOADN                            R51 0
      415 LOADN                            R52 12
      416 CALL                             R50 2 1
      417 SETTABLEKS                       R50 R49 K103 ["PaddingRight"]
      419 GETIMPORT                        R50 K40 [UDim.new]
      421 LOADN                            R51 0
      422 LOADN                            R52 8
      423 CALL                             R50 2 1
      424 SETTABLEKS                       R50 R49 K104 ["PaddingTop"]
      426 CALL                             R47 2 1
      427 SETTABLEKS                       R47 R46 K97 ["UIPadding"]
      429 GETUPVAL                         R47 1
      430 GETTABLEKS                       R47 R47 K21 ["createElement"]
      432 LOADK                            R48 K22 ["UIListLayout"]
      433 DUPTABLE                         R49 K106 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      434 GETIMPORT                        R50 K31 [Enum.SortOrder.LayoutOrder]
      436 SETTABLEKS                       R50 R49 K23 ["SortOrder"]
      438 GETIMPORT                        R50 K108 [Enum.HorizontalAlignment.Center]
      440 SETTABLEKS                       R50 R49 K24 ["HorizontalAlignment"]
      442 GETIMPORT                        R50 K35 [Enum.VerticalAlignment.Top]
      444 SETTABLEKS                       R50 R49 K25 ["VerticalAlignment"]
      446 GETIMPORT                        R50 K40 [UDim.new]
      448 LOADN                            R51 0
      449 LOADN                            R52 12
      450 CALL                             R50 2 1
      451 SETTABLEKS                       R50 R49 K27 ["Padding"]
      453 CALL                             R47 2 1
      454 SETTABLEKS                       R47 R46 K22 ["UIListLayout"]
      456 GETUPVAL                         R47 1
      457 GETTABLEKS                       R47 R47 K21 ["createElement"]
      459 LOADK                            R48 K65 ["Frame"]
      460 DUPTABLE                         R49 K110 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      461 GETUPVAL                         R51 8
      462 CALL                             R51 0 1
      463 JUMPIFNOT                        R51 ; [+3]
      464 GETIMPORT                        R50 K91 [Enum.AutomaticSize.Y]
      466 JUMP                             ; [+1]
      467 LOADNIL                          R50
      468 SETTABLEKS                       R50 R49 K85 ["AutomaticSize"]
      470 GETIMPORT                        R50 K93 [UDim2.new]
      472 LOADN                            R51 1
      473 LOADN                            R52 0
      474 LOADN                            R53 0
      475 MOVE                             R54 R34
      476 CALL                             R50 4 1
      477 SETTABLEKS                       R50 R49 K68 ["Size"]
      479 DUPTABLE                         R50 K112 [{"UIListLayout", "Icon", "Texts"}]
      480 GETUPVAL                         R51 1
      481 GETTABLEKS                       R51 R51 K21 ["createElement"]
      483 LOADK                            R52 K22 ["UIListLayout"]
      484 DUPTABLE                         R53 K113 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      485 GETIMPORT                        R54 K31 [Enum.SortOrder.LayoutOrder]
      487 SETTABLEKS                       R54 R53 K23 ["SortOrder"]
      489 GETIMPORT                        R54 K115 [Enum.HorizontalAlignment.Left]
      491 SETTABLEKS                       R54 R53 K24 ["HorizontalAlignment"]
      493 GETIMPORT                        R54 K35 [Enum.VerticalAlignment.Top]
      495 SETTABLEKS                       R54 R53 K25 ["VerticalAlignment"]
      497 GETIMPORT                        R54 K40 [UDim.new]
      499 LOADN                            R55 0
      500 LOADN                            R56 20
      501 CALL                             R54 2 1
      502 SETTABLEKS                       R54 R53 K27 ["Padding"]
      504 GETIMPORT                        R54 K37 [Enum.FillDirection.Horizontal]
      506 SETTABLEKS                       R54 R53 K26 ["FillDirection"]
      508 CALL                             R51 2 1
      509 SETTABLEKS                       R51 R50 K22 ["UIListLayout"]
      511 GETUPVAL                         R51 1
      512 GETTABLEKS                       R51 R51 K21 ["createElement"]
      514 LOADK                            R52 K116 ["ImageLabel"]
      515 DUPTABLE                         R53 K119 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 0, ["Image"], ["ImageColor3"]}]
      516 GETIMPORT                        R54 K93 [UDim2.new]
      518 LOADN                            R55 0
      519 MOVE                             R56 R23
      520 LOADN                            R57 0
      521 MOVE                             R58 R23
      522 CALL                             R54 4 1
      523 SETTABLEKS                       R54 R53 K68 ["Size"]
      525 SETTABLEKS                       R8 R53 K117 ["Image"]
      527 SETTABLEKS                       R26 R53 K118 ["ImageColor3"]
      529 CALL                             R51 2 1
      530 SETTABLEKS                       R51 R50 K9 ["Icon"]
      532 GETUPVAL                         R51 1
      533 GETTABLEKS                       R51 R51 K21 ["createElement"]
      535 LOADK                            R52 K65 ["Frame"]
      536 DUPTABLE                         R53 K120 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1}]
      537 GETUPVAL                         R55 8
      538 CALL                             R55 0 1
      539 JUMPIFNOT                        R55 ; [+3]
      540 GETIMPORT                        R54 K91 [Enum.AutomaticSize.Y]
      542 JUMP                             ; [+1]
      543 LOADNIL                          R54
      544 SETTABLEKS                       R54 R53 K85 ["AutomaticSize"]
      546 GETIMPORT                        R54 K93 [UDim2.new]
      548 LOADN                            R55 1
      549 MINUS                            R56 R24
      550 GETUPVAL                         R58 8
      551 CALL                             R58 0 1
      552 JUMPIFNOT                        R58 ; [+2]
      553 LOADN                            R57 0
      554 JUMP                             ; [+1]
      555 LOADN                            R57 1
      556 LOADN                            R58 0
      557 CALL                             R54 4 1
      558 SETTABLEKS                       R54 R53 K68 ["Size"]
      560 DUPTABLE                         R54 K123 [{"UIListLayout", "TextLabel", "InformativeLabel"}]
      561 GETUPVAL                         R55 1
      562 GETTABLEKS                       R55 R55 K21 ["createElement"]
      564 LOADK                            R56 K22 ["UIListLayout"]
      565 DUPTABLE                         R57 K113 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      566 GETIMPORT                        R58 K31 [Enum.SortOrder.LayoutOrder]
      568 SETTABLEKS                       R58 R57 K23 ["SortOrder"]
      570 GETIMPORT                        R58 K115 [Enum.HorizontalAlignment.Left]
      572 SETTABLEKS                       R58 R57 K24 ["HorizontalAlignment"]
      574 GETIMPORT                        R58 K35 [Enum.VerticalAlignment.Top]
      576 SETTABLEKS                       R58 R57 K25 ["VerticalAlignment"]
      578 GETIMPORT                        R58 K40 [UDim.new]
      580 LOADN                            R59 0
      581 LOADN                            R60 8
      582 CALL                             R58 2 1
      583 SETTABLEKS                       R58 R57 K27 ["Padding"]
      585 GETIMPORT                        R58 K125 [Enum.FillDirection.Vertical]
      587 SETTABLEKS                       R58 R57 K26 ["FillDirection"]
      589 CALL                             R55 2 1
      590 SETTABLEKS                       R55 R54 K22 ["UIListLayout"]
      592 GETUPVAL                         R55 1
      593 GETTABLEKS                       R55 R55 K21 ["createElement"]
      595 LOADK                            R56 K121 ["TextLabel"]
      596 DUPTABLE                         R57 K133 [{["AutomaticSize"], ["LayoutOrder"] = 0, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      597 GETUPVAL                         R59 8
      598 CALL                             R59 0 1
      599 JUMPIFNOT                        R59 ; [+3]
      600 GETIMPORT                        R58 K91 [Enum.AutomaticSize.Y]
      602 JUMP                             ; [+1]
      603 LOADNIL                          R58
      604 SETTABLEKS                       R58 R57 K85 ["AutomaticSize"]
      606 GETIMPORT                        R58 K93 [UDim2.new]
      608 LOADN                            R59 1
      609 LOADN                            R60 0
      610 LOADN                            R61 0
      611 MOVE                             R62 R32
      612 CALL                             R58 4 1
      613 SETTABLEKS                       R58 R57 K68 ["Size"]
      615 SETTABLEKS                       R6 R57 K7 ["Text"]
      617 SETTABLEKS                       R11 R57 K126 ["Font"]
      619 SETTABLEKS                       R12 R57 K127 ["TextSize"]
      621 GETTABLEKS                       R58 R15 K134 ["textColor"]
      623 SETTABLEKS                       R58 R57 K128 ["TextColor3"]
      625 GETIMPORT                        R58 K135 [Enum.TextXAlignment.Left]
      627 SETTABLEKS                       R58 R57 K129 ["TextXAlignment"]
      629 GETIMPORT                        R58 K136 [Enum.TextYAlignment.Top]
      631 SETTABLEKS                       R58 R57 K130 ["TextYAlignment"]
      633 CALL                             R55 2 1
      634 SETTABLEKS                       R55 R54 K121 ["TextLabel"]
      636 MOVE                             R55 R9
      637 JUMPIFNOT                        R55 ; [+97]
      638 GETUPVAL                         R56 5
      639 CALL                             R56 0 1
      640 JUMPIFNOT                        R56 ; [+52]
      641 GETUPVAL                         R55 1
      642 GETTABLEKS                       R55 R55 K21 ["createElement"]
      644 GETUPVAL                         R56 9
      645 DUPTABLE                         R57 K139 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextProps"], ["LinkMap"], ["HorizontalAlignment"]}]
      646 GETUPVAL                         R59 8
      647 CALL                             R59 0 1
      648 JUMPIFNOT                        R59 ; [+3]
      649 GETIMPORT                        R58 K91 [Enum.AutomaticSize.Y]
      651 JUMP                             ; [+1]
      652 LOADNIL                          R58
      653 SETTABLEKS                       R58 R57 K85 ["AutomaticSize"]
      655 GETIMPORT                        R58 K93 [UDim2.new]
      657 LOADN                            R59 1
      658 LOADN                            R60 0
      659 LOADN                            R61 0
      660 MOVE                             R62 R33
      661 CALL                             R58 4 1
      662 SETTABLEKS                       R58 R57 K68 ["Size"]
      664 SETTABLEKS                       R7 R57 K7 ["Text"]
      666 DUPTABLE                         R58 K141 [{["BackgroundTransparency"] = 1, ["Font"], ["TextSize"], ["TextColor"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      667 SETTABLEKS                       R13 R58 K126 ["Font"]
      669 SETTABLEKS                       R14 R58 K127 ["TextSize"]
      671 GETTABLEKS                       R59 R15 K142 ["informativeTextColor"]
      673 SETTABLEKS                       R59 R58 K140 ["TextColor"]
      675 GETIMPORT                        R59 K135 [Enum.TextXAlignment.Left]
      677 SETTABLEKS                       R59 R58 K129 ["TextXAlignment"]
      679 GETIMPORT                        R59 K136 [Enum.TextYAlignment.Top]
      681 SETTABLEKS                       R59 R58 K130 ["TextYAlignment"]
      683 SETTABLEKS                       R58 R57 K137 ["TextProps"]
      685 SETTABLEKS                       R38 R57 K138 ["LinkMap"]
      687 GETIMPORT                        R58 K115 [Enum.HorizontalAlignment.Left]
      689 SETTABLEKS                       R58 R57 K24 ["HorizontalAlignment"]
      691 CALL                             R55 2 1
      692 JUMP                             ; [+42]
      693 GETUPVAL                         R55 1
      694 GETTABLEKS                       R55 R55 K21 ["createElement"]
      696 LOADK                            R56 K121 ["TextLabel"]
      697 DUPTABLE                         R57 K143 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      698 GETUPVAL                         R59 8
      699 CALL                             R59 0 1
      700 JUMPIFNOT                        R59 ; [+3]
      701 GETIMPORT                        R58 K91 [Enum.AutomaticSize.Y]
      703 JUMP                             ; [+1]
      704 LOADNIL                          R58
      705 SETTABLEKS                       R58 R57 K85 ["AutomaticSize"]
      707 GETIMPORT                        R58 K93 [UDim2.new]
      709 LOADN                            R59 1
      710 LOADN                            R60 0
      711 LOADN                            R61 0
      712 MOVE                             R62 R33
      713 CALL                             R58 4 1
      714 SETTABLEKS                       R58 R57 K68 ["Size"]
      716 SETTABLEKS                       R7 R57 K7 ["Text"]
      718 SETTABLEKS                       R13 R57 K126 ["Font"]
      720 SETTABLEKS                       R14 R57 K127 ["TextSize"]
      722 GETTABLEKS                       R58 R15 K142 ["informativeTextColor"]
      724 SETTABLEKS                       R58 R57 K128 ["TextColor3"]
      726 GETIMPORT                        R58 K135 [Enum.TextXAlignment.Left]
      728 SETTABLEKS                       R58 R57 K129 ["TextXAlignment"]
      730 GETIMPORT                        R58 K136 [Enum.TextYAlignment.Top]
      732 SETTABLEKS                       R58 R57 K130 ["TextYAlignment"]
      734 CALL                             R55 2 1
      735 SETTABLEKS                       R55 R54 K122 ["InformativeLabel"]
      737 CALL                             R51 3 1
      738 SETTABLEKS                       R51 R50 K111 ["Texts"]
      740 CALL                             R47 3 1
      741 SETTABLEKS                       R47 R46 K98 ["Information"]
      743 GETUPVAL                         R47 1
      744 GETTABLEKS                       R47 R47 K21 ["createElement"]
      746 LOADK                            R48 K65 ["Frame"]
      747 DUPTABLE                         R49 K145 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      748 GETIMPORT                        R50 K93 [UDim2.new]
      750 LOADN                            R51 1
      751 LOADN                            R52 0
      752 LOADN                            R53 0
      753 LOADN                            R54 23
      754 CALL                             R50 4 1
      755 SETTABLEKS                       R50 R49 K68 ["Size"]
      757 MOVE                             R50 R19
      758 CALL                             R47 3 1
      759 SETTABLEKS                       R47 R46 K99 ["Buttons"]
      761 CALL                             R43 3 1
      762 SETTABLEKS                       R43 R42 K83 ["Background"]
      764 CALL                             R39 3 -1
      765 RETURN                           R39 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       35 GETTABLEKS                       R8 R0 K14 ["Src"]
       37 GETTABLEKS                       R8 R8 K15 ["Util"]
       39 GETTABLEKS                       R8 R8 K16 ["Constants"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R4 K17 ["ContextServices"]
       44 GETTABLEKS                       R9 R8 K18 ["withContext"]
       46 GETTABLEKS                       R10 R4 K15 ["Util"]
       48 GETTABLEKS                       R10 R10 K19 ["GetTextSize"]
       50 GETIMPORT                        R11 K9 [require]
       52 GETTABLEKS                       R12 R0 K14 ["Src"]
       54 GETTABLEKS                       R12 R12 K20 ["Components"]
       56 GETTABLEKS                       R12 R12 K21 ["PluginWidget"]
       58 GETTABLEKS                       R12 R12 K22 ["Dialog"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K9 [require]
       63 GETTABLEKS                       R13 R0 K14 ["Src"]
       65 GETTABLEKS                       R13 R13 K20 ["Components"]
       67 GETTABLEKS                       R13 R13 K23 ["MessageBox"]
       69 GETTABLEKS                       R13 R13 K24 ["MessageBoxButton"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K9 [require]
       74 GETTABLEKS                       R14 R0 K14 ["Src"]
       76 GETTABLEKS                       R14 R14 K20 ["Components"]
       78 GETTABLEKS                       R14 R14 K25 ["StyledScrollingFrame"]
       80 CALL                             R13 1 1
       81 GETIMPORT                        R14 K9 [require]
       83 GETTABLEKS                       R15 R0 K14 ["Src"]
       85 GETTABLEKS                       R15 R15 K15 ["Util"]
       87 GETTABLEKS                       R15 R15 K26 ["SharedFlags"]
       89 GETTABLEKS                       R15 R15 K27 ["getFFlagToolboxFixMessageBoxSize"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K9 [require]
       94 GETTABLEKS                       R16 R0 K14 ["Src"]
       96 GETTABLEKS                       R16 R16 K28 ["Flags"]
       98 GETTABLEKS                       R16 R16 K29 ["getFFlagToolboxAddLinksToMessageBox"]
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
