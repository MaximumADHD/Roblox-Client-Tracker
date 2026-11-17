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
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R11 R11 K10 ["FONT"]
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K11 ["FONT_SIZE_MEDIUM"]
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R13 R13 K10 ["FONT"]
       39 GETUPVAL                         R14 0
       40 GETTABLEKS                       R14 R14 K12 ["FONT_SIZE_SMALL"]
       42 GETTABLEKS                       R15 R3 K13 ["messageBox"]
       44 GETTABLEKS                       R16 R1 K14 ["buttons"]
       46 JUMPIF                           R16 ; [+2]
       47 NEWTABLE                         R16 0 0
       49 LENGTH                           R17 R16
       50 JUMPIFNOTEQKN                    R17 K9 [0] ; [+14]
       52 NEWTABLE                         R17 0 1
       54 DUPTABLE                         R18 K17 [{["Text"], ["action"] = "ok"}]
       55 LOADK                            R21 K18 ["General"]
       56 LOADK                            R22 K19 ["OK"]
       57 NAMECALL                         R19 R2 K20 ["getText"]
       59 CALL                             R19 3 1
       60 SETTABLEKS                       R19 R18 K5 ["Text"]
       62 SETLIST                          R17 R18 1 [1]
       64 MOVE                             R16 R17
       65 GETUPVAL                         R17 0
       66 GETTABLEKS                       R17 R17 K21 ["MESSAGE_BOX_BUTTON_WIDTH"]
       68 NEWTABLE                         R18 1 0
       70 GETUPVAL                         R19 1
       71 GETTABLEKS                       R19 R19 K22 ["createElement"]
       73 LOADK                            R20 K23 ["UIListLayout"]
       74 DUPTABLE                         R21 K29 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection", "Padding"}]
       75 GETIMPORT                        R22 K32 [Enum.SortOrder.LayoutOrder]
       77 SETTABLEKS                       R22 R21 K24 ["SortOrder"]
       79 GETIMPORT                        R22 K34 [Enum.HorizontalAlignment.Center]
       81 SETTABLEKS                       R22 R21 K25 ["HorizontalAlignment"]
       83 GETIMPORT                        R22 K36 [Enum.VerticalAlignment.Top]
       85 SETTABLEKS                       R22 R21 K26 ["VerticalAlignment"]
       87 GETIMPORT                        R22 K38 [Enum.FillDirection.Horizontal]
       89 SETTABLEKS                       R22 R21 K27 ["FillDirection"]
       91 GETIMPORT                        R22 K41 [UDim.new]
       93 LOADN                            R23 0
       94 LOADN                            R24 15
       95 CALL                             R22 2 1
       96 SETTABLEKS                       R22 R21 K28 ["Padding"]
       98 CALL                             R19 2 1
       99 SETTABLEKS                       R19 R18 K23 ["UIListLayout"]
      101 GETIMPORT                        R19 K43 [ipairs]
      103 MOVE                             R20 R16
      104 CALL                             R19 1 3
      105 FORGPREP_INEXT                   R19
      106 GETUPVAL                         R24 1
      107 GETTABLEKS                       R24 R24 K22 ["createElement"]
      109 GETUPVAL                         R25 2
      110 DUPTABLE                         R26 K48 [{["OnClick"], ["Size"], ["Style"] = "Round", ["Text"]}]
      111 GETTABLEKS                       R27 R23 K44 ["OnClick"]
      113 SETTABLEKS                       R27 R26 K44 ["OnClick"]
      115 GETIMPORT                        R27 K50 [UDim2.new]
      117 LOADN                            R28 0
      118 MOVE                             R29 R17
      119 LOADN                            R30 1
      120 LOADN                            R31 0
      121 CALL                             R27 4 1
      122 SETTABLEKS                       R27 R26 K45 ["Size"]
      124 GETTABLEKS                       R27 R23 K5 ["Text"]
      126 SETTABLEKS                       R27 R26 K5 ["Text"]
      128 CALL                             R24 2 1
      129 SETTABLE                         R24 R18 R22
      130 FORGLOOP                         R19 2 [inext] ; [-25]
      132 GETUPVAL                         R19 3
      133 MOVE                             R20 R5
      134 MOVE                             R21 R12
      135 MOVE                             R22 R11
      136 GETIMPORT                        R23 K52 [Vector2.new]
      138 LOADN                            R24 0
      139 LOADN                            R25 0
      140 CALL                             R23 2 -1
      141 CALL                             R19 -1 1
      142 GETUPVAL                         R20 3
      143 MOVE                             R21 R6
      144 MOVE                             R22 R14
      145 MOVE                             R23 R13
      146 GETIMPORT                        R24 K52 [Vector2.new]
      148 LOADN                            R25 0
      149 LOADN                            R26 0
      150 CALL                             R24 2 -1
      151 CALL                             R20 -1 1
      152 GETTABLEKS                       R23 R19 K53 ["X"]
      154 FASTCALL2K                       MATH_MIN R23 K54 ; [+4]
      156 LOADK                            R24 K54 [424]
      157 GETIMPORT                        R22 K57 [math.min]
      159 CALL                             R22 2 1
      160 GETTABLEKS                       R24 R20 K53 ["X"]
      162 FASTCALL2K                       MATH_MIN R24 K58 ; [+4]
      164 LOADK                            R25 K58 [192]
      165 GETIMPORT                        R23 K57 [math.min]
      167 CALL                             R23 2 1
      168 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      170 GETIMPORT                        R21 K60 [math.max]
      172 CALL                             R21 2 1
      173 JUMPIFNOT                        R10 ; [+2]
      174 LOADN                            R22 32
      175 JUMP                             ; [+1]
      176 LOADN                            R22 0
      177 JUMPIFNOT                        R10 ; [+2]
      178 LOADN                            R23 20
      179 JUMP                             ; [+1]
      180 LOADN                            R23 0
      181 ADD                              R24 R22 R23
      182 ADD                              R25 R24 R21
      183 LENGTH                           R28 R16
      184 MUL                              R27 R28 R17
      185 LENGTH                           R30 R16
      186 SUBK                             R29 R30 K62 [1]
      187 MULK                             R28 R29 K61 [15]
      188 ADD                              R26 R27 R28
      189 FASTCALL2                        MATH_MAX R26 R25 ; [+5]
      191 MOVE                             R29 R26
      192 MOVE                             R30 R25
      193 GETIMPORT                        R28 K60 [math.max]
      195 CALL                             R28 2 1
      196 FASTCALL2K                       MATH_MAX R28 K63 ; [+4]
      198 LOADK                            R29 K63 [120]
      199 GETIMPORT                        R27 K60 [math.max]
      201 CALL                             R27 2 1
      202 SUB                              R28 R27 R24
      203 GETUPVAL                         R29 3
      204 MOVE                             R30 R5
      205 MOVE                             R31 R12
      206 MOVE                             R32 R11
      207 GETIMPORT                        R33 K52 [Vector2.new]
      209 MOVE                             R34 R28
      210 LOADN                            R35 1000
      211 CALL                             R33 2 -1
      212 CALL                             R29 -1 1
      213 GETUPVAL                         R30 3
      214 MOVE                             R31 R6
      215 MOVE                             R32 R14
      216 MOVE                             R33 R13
      217 GETIMPORT                        R34 K52 [Vector2.new]
      219 MOVE                             R35 R28
      220 LOADN                            R36 1000
      221 CALL                             R34 2 -1
      222 CALL                             R30 -1 1
      223 GETTABLEKS                       R31 R29 K64 ["Y"]
      225 GETTABLEKS                       R32 R30 K64 ["Y"]
      227 JUMPIFNOT                        R9 ; [+3]
      228 LOADN                            R37 8
      229 ADD                              R36 R37 R32
      230 JUMPIF                           R36 ; [+1]
      231 LOADN                            R36 0
      232 ADD                              R35 R31 R36
      233 FASTCALL2                        MATH_MAX R22 R35 ; [+4]
      235 MOVE                             R34 R22
      236 GETIMPORT                        R33 K60 [math.max]
      238 CALL                             R33 2 1
      239 ADDK                             R35 R27 K65 [12]
      240 ADDK                             R34 R35 K65 [12]
      241 ADDK                             R38 R33 K67 [20]
      242 ADDK                             R37 R38 K67 [20]
      243 ADDK                             R36 R37 K66 [30]
      244 ADDK                             R35 R36 K65 [12]
      245 JUMPIFEQKS                       R8 K3 [""] ; [+3]
      247 LOADNIL                          R36
      248 RETURN                           R36 1
      249 GETUPVAL                         R36 1
      250 GETTABLEKS                       R36 R36 K22 ["createElement"]
      252 GETUPVAL                         R37 4
      253 NEWTABLE                         R38 16 0
      255 SETTABLEKS                       R4 R38 K4 ["Title"]
      257 LOADB                            R39 1
      258 SETTABLEKS                       R39 R38 K68 ["Modal"]
      260 LOADB                            R39 0
      261 SETTABLEKS                       R39 R38 K69 ["Resizable"]
      263 GETIMPORT                        R39 K52 [Vector2.new]
      265 MOVE                             R40 R34
      266 MOVE                             R41 R35
      267 CALL                             R39 2 1
      268 SETTABLEKS                       R39 R38 K45 ["Size"]
      270 GETIMPORT                        R39 K52 [Vector2.new]
      272 MOVE                             R40 R34
      273 MOVE                             R41 R35
      274 CALL                             R39 2 1
      275 SETTABLEKS                       R39 R38 K70 ["MinSize"]
      277 LOADB                            R39 1
      278 SETTABLEKS                       R39 R38 K71 ["Enabled"]
      280 GETTABLEKS                       R39 R1 K72 ["onClose"]
      282 SETTABLEKS                       R39 R38 K73 ["OnClose"]
      284 GETIMPORT                        R39 K76 [Enum.ZIndexBehavior.Sibling]
      286 SETTABLEKS                       R39 R38 K74 ["ZIndexBehavior"]
      288 GETUPVAL                         R39 1
      289 GETTABLEKS                       R39 R39 K77 ["Change"]
      291 GETTABLEKS                       R39 R39 K71 ["Enabled"]
      293 GETTABLEKS                       R40 R0 K78 ["onEnabledChanged"]
      295 SETTABLE                         R40 R38 R39
      296 GETUPVAL                         R39 1
      297 GETTABLEKS                       R39 R39 K79 ["Event"]
      299 GETTABLEKS                       R39 R39 K80 ["AncestryChanged"]
      301 GETTABLEKS                       R40 R0 K81 ["onAncestryChanged"]
      303 SETTABLE                         R40 R38 R39
      304 DUPTABLE                         R39 K83 [{"Background"}]
      305 GETUPVAL                         R40 1
      306 GETTABLEKS                       R40 R40 K22 ["createElement"]
      308 LOADK                            R41 K84 ["Frame"]
      309 DUPTABLE                         R42 K87 [{"Position", "Size", "BackgroundColor3"}]
      310 GETIMPORT                        R43 K50 [UDim2.new]
      312 LOADN                            R44 0
      313 LOADN                            R45 0
      314 LOADN                            R46 0
      315 LOADN                            R47 0
      316 CALL                             R43 4 1
      317 SETTABLEKS                       R43 R42 K85 ["Position"]
      319 GETIMPORT                        R43 K50 [UDim2.new]
      321 LOADN                            R44 1
      322 LOADN                            R45 0
      323 LOADN                            R46 1
      324 LOADN                            R47 0
      325 CALL                             R43 4 1
      326 SETTABLEKS                       R43 R42 K45 ["Size"]
      328 GETTABLEKS                       R43 R15 K88 ["backgroundColor"]
      330 SETTABLEKS                       R43 R42 K86 ["BackgroundColor3"]
      332 DUPTABLE                         R43 K92 [{"UIPadding", "UIListLayout", "Information", "Buttons"}]
      333 GETUPVAL                         R44 1
      334 GETTABLEKS                       R44 R44 K22 ["createElement"]
      336 LOADK                            R45 K89 ["UIPadding"]
      337 DUPTABLE                         R46 K97 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      338 GETIMPORT                        R47 K41 [UDim.new]
      340 LOADN                            R48 0
      341 LOADN                            R49 12
      342 CALL                             R47 2 1
      343 SETTABLEKS                       R47 R46 K93 ["PaddingBottom"]
      345 GETIMPORT                        R47 K41 [UDim.new]
      347 LOADN                            R48 0
      348 LOADN                            R49 12
      349 CALL                             R47 2 1
      350 SETTABLEKS                       R47 R46 K94 ["PaddingLeft"]
      352 GETIMPORT                        R47 K41 [UDim.new]
      354 LOADN                            R48 0
      355 LOADN                            R49 12
      356 CALL                             R47 2 1
      357 SETTABLEKS                       R47 R46 K95 ["PaddingRight"]
      359 GETIMPORT                        R47 K41 [UDim.new]
      361 LOADN                            R48 0
      362 LOADN                            R49 20
      363 CALL                             R47 2 1
      364 SETTABLEKS                       R47 R46 K96 ["PaddingTop"]
      366 CALL                             R44 2 1
      367 SETTABLEKS                       R44 R43 K89 ["UIPadding"]
      369 GETUPVAL                         R44 1
      370 GETTABLEKS                       R44 R44 K22 ["createElement"]
      372 LOADK                            R45 K23 ["UIListLayout"]
      373 DUPTABLE                         R46 K98 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      374 GETIMPORT                        R47 K32 [Enum.SortOrder.LayoutOrder]
      376 SETTABLEKS                       R47 R46 K24 ["SortOrder"]
      378 GETIMPORT                        R47 K34 [Enum.HorizontalAlignment.Center]
      380 SETTABLEKS                       R47 R46 K25 ["HorizontalAlignment"]
      382 GETIMPORT                        R47 K36 [Enum.VerticalAlignment.Top]
      384 SETTABLEKS                       R47 R46 K26 ["VerticalAlignment"]
      386 GETIMPORT                        R47 K41 [UDim.new]
      388 LOADN                            R48 0
      389 LOADN                            R49 20
      390 CALL                             R47 2 1
      391 SETTABLEKS                       R47 R46 K28 ["Padding"]
      393 CALL                             R44 2 1
      394 SETTABLEKS                       R44 R43 K23 ["UIListLayout"]
      396 GETUPVAL                         R44 1
      397 GETTABLEKS                       R44 R44 K22 ["createElement"]
      399 LOADK                            R45 K84 ["Frame"]
      400 DUPTABLE                         R46 K100 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      401 GETIMPORT                        R47 K50 [UDim2.new]
      403 LOADN                            R48 1
      404 LOADN                            R49 0
      405 LOADN                            R50 0
      406 MOVE                             R51 R33
      407 CALL                             R47 4 1
      408 SETTABLEKS                       R47 R46 K45 ["Size"]
      410 DUPTABLE                         R47 K102 [{"UIListLayout", "Icon", "Texts"}]
      411 GETUPVAL                         R48 1
      412 GETTABLEKS                       R48 R48 K22 ["createElement"]
      414 LOADK                            R49 K23 ["UIListLayout"]
      415 DUPTABLE                         R50 K103 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      416 GETIMPORT                        R51 K32 [Enum.SortOrder.LayoutOrder]
      418 SETTABLEKS                       R51 R50 K24 ["SortOrder"]
      420 GETIMPORT                        R51 K34 [Enum.HorizontalAlignment.Center]
      422 SETTABLEKS                       R51 R50 K25 ["HorizontalAlignment"]
      424 GETIMPORT                        R51 K36 [Enum.VerticalAlignment.Top]
      426 SETTABLEKS                       R51 R50 K26 ["VerticalAlignment"]
      428 GETIMPORT                        R51 K41 [UDim.new]
      430 LOADN                            R52 0
      431 MOVE                             R53 R23
      432 CALL                             R51 2 1
      433 SETTABLEKS                       R51 R50 K28 ["Padding"]
      435 GETIMPORT                        R51 K38 [Enum.FillDirection.Horizontal]
      437 SETTABLEKS                       R51 R50 K27 ["FillDirection"]
      439 CALL                             R48 2 1
      440 SETTABLEKS                       R48 R47 K23 ["UIListLayout"]
      442 GETUPVAL                         R48 1
      443 GETTABLEKS                       R48 R48 K22 ["createElement"]
      445 LOADK                            R49 K104 ["ImageLabel"]
      446 DUPTABLE                         R50 K106 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 0, ["Image"]}]
      447 GETIMPORT                        R51 K50 [UDim2.new]
      449 LOADN                            R52 0
      450 MOVE                             R53 R22
      451 LOADN                            R54 0
      452 MOVE                             R55 R22
      453 CALL                             R51 4 1
      454 SETTABLEKS                       R51 R50 K45 ["Size"]
      456 SETTABLEKS                       R7 R50 K105 ["Image"]
      458 CALL                             R48 2 1
      459 SETTABLEKS                       R48 R47 K7 ["Icon"]
      461 GETUPVAL                         R48 1
      462 GETTABLEKS                       R48 R48 K22 ["createElement"]
      464 LOADK                            R49 K84 ["Frame"]
      465 DUPTABLE                         R50 K107 [{["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1}]
      466 GETIMPORT                        R51 K50 [UDim2.new]
      468 LOADN                            R52 1
      469 MINUS                            R53 R24
      470 LOADN                            R54 1
      471 LOADN                            R55 0
      472 CALL                             R51 4 1
      473 SETTABLEKS                       R51 R50 K45 ["Size"]
      475 DUPTABLE                         R51 K110 [{"UIListLayout", "TextLabel", "InformativeLabel"}]
      476 GETUPVAL                         R52 1
      477 GETTABLEKS                       R52 R52 K22 ["createElement"]
      479 LOADK                            R53 K23 ["UIListLayout"]
      480 DUPTABLE                         R54 K103 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding", "FillDirection"}]
      481 GETIMPORT                        R55 K32 [Enum.SortOrder.LayoutOrder]
      483 SETTABLEKS                       R55 R54 K24 ["SortOrder"]
      485 GETIMPORT                        R55 K34 [Enum.HorizontalAlignment.Center]
      487 SETTABLEKS                       R55 R54 K25 ["HorizontalAlignment"]
      489 GETIMPORT                        R55 K36 [Enum.VerticalAlignment.Top]
      491 SETTABLEKS                       R55 R54 K26 ["VerticalAlignment"]
      493 GETIMPORT                        R55 K41 [UDim.new]
      495 LOADN                            R56 0
      496 LOADN                            R57 8
      497 CALL                             R55 2 1
      498 SETTABLEKS                       R55 R54 K28 ["Padding"]
      500 GETIMPORT                        R55 K112 [Enum.FillDirection.Vertical]
      502 SETTABLEKS                       R55 R54 K27 ["FillDirection"]
      504 CALL                             R52 2 1
      505 SETTABLEKS                       R52 R51 K23 ["UIListLayout"]
      507 GETUPVAL                         R52 1
      508 GETTABLEKS                       R52 R52 K22 ["createElement"]
      510 LOADK                            R53 K108 ["TextLabel"]
      511 DUPTABLE                         R54 K120 [{["LayoutOrder"] = 0, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      512 GETIMPORT                        R55 K50 [UDim2.new]
      514 LOADN                            R56 1
      515 LOADN                            R57 0
      516 LOADN                            R58 0
      517 MOVE                             R59 R31
      518 CALL                             R55 4 1
      519 SETTABLEKS                       R55 R54 K45 ["Size"]
      521 SETTABLEKS                       R5 R54 K5 ["Text"]
      523 SETTABLEKS                       R11 R54 K113 ["Font"]
      525 SETTABLEKS                       R12 R54 K114 ["TextSize"]
      527 GETTABLEKS                       R55 R15 K121 ["textColor"]
      529 SETTABLEKS                       R55 R54 K115 ["TextColor3"]
      531 GETIMPORT                        R55 K122 [Enum.TextXAlignment.Center]
      533 SETTABLEKS                       R55 R54 K116 ["TextXAlignment"]
      535 GETIMPORT                        R55 K123 [Enum.TextYAlignment.Top]
      537 SETTABLEKS                       R55 R54 K117 ["TextYAlignment"]
      539 CALL                             R52 2 1
      540 SETTABLEKS                       R52 R51 K108 ["TextLabel"]
      542 MOVE                             R52 R9
      543 JUMPIFNOT                        R52 ; [+33]
      544 GETUPVAL                         R52 1
      545 GETTABLEKS                       R52 R52 K22 ["createElement"]
      547 LOADK                            R53 K108 ["TextLabel"]
      548 DUPTABLE                         R54 K124 [{["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      549 GETIMPORT                        R55 K50 [UDim2.new]
      551 LOADN                            R56 1
      552 LOADN                            R57 0
      553 LOADN                            R58 0
      554 MOVE                             R59 R32
      555 CALL                             R55 4 1
      556 SETTABLEKS                       R55 R54 K45 ["Size"]
      558 SETTABLEKS                       R6 R54 K5 ["Text"]
      560 SETTABLEKS                       R13 R54 K113 ["Font"]
      562 SETTABLEKS                       R14 R54 K114 ["TextSize"]
      564 GETTABLEKS                       R55 R15 K125 ["informativeTextColor"]
      566 SETTABLEKS                       R55 R54 K115 ["TextColor3"]
      568 GETIMPORT                        R55 K122 [Enum.TextXAlignment.Center]
      570 SETTABLEKS                       R55 R54 K116 ["TextXAlignment"]
      572 GETIMPORT                        R55 K123 [Enum.TextYAlignment.Top]
      574 SETTABLEKS                       R55 R54 K117 ["TextYAlignment"]
      576 CALL                             R52 2 1
      577 SETTABLEKS                       R52 R51 K109 ["InformativeLabel"]
      579 CALL                             R48 3 1
      580 SETTABLEKS                       R48 R47 K101 ["Texts"]
      582 CALL                             R44 3 1
      583 SETTABLEKS                       R44 R43 K90 ["Information"]
      585 GETUPVAL                         R44 1
      586 GETTABLEKS                       R44 R44 K22 ["createElement"]
      588 LOADK                            R45 K84 ["Frame"]
      589 DUPTABLE                         R46 K127 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      590 GETIMPORT                        R47 K50 [UDim2.new]
      592 LOADN                            R48 1
      593 LOADN                            R49 0
      594 LOADN                            R50 0
      595 LOADN                            R51 30
      596 CALL                             R47 4 1
      597 SETTABLEKS                       R47 R46 K45 ["Size"]
      599 MOVE                             R47 R18
      600 CALL                             R44 3 1
      601 SETTABLEKS                       R44 R43 K91 ["Buttons"]
      603 CALL                             R40 3 1
      604 SETTABLEKS                       R40 R39 K82 ["Background"]
      606 CALL                             R36 3 -1
      607 RETURN                           R36 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETTABLEKS                       R6 R3 K10 ["Util"]
       29 GETTABLEKS                       R6 R6 K11 ["GetTextSize"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Src"]
       35 GETTABLEKS                       R8 R8 K10 ["Util"]
       37 GETTABLEKS                       R8 R8 K13 ["Constants"]
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
