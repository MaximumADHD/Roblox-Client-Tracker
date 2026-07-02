PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 LOADB                            R2 1
        8 NAMECALL                         R0 R0 K2 ["mouseHoverChanged"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 LOADB                            R2 0
        8 NAMECALL                         R0 R0 K2 ["mouseHoverChanged"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R2 R0 K0 ["mouseEnter"]
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K1 ["mouseLeave"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R3 R2 K1 ["Mouse"]
        5 LOADK                            R5 K2 ["PointingHand"]
        6 NAMECALL                         R3 R3 K3 ["__pushCursor"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R2 K1 ["Mouse"]
       12 NAMECALL                         R3 R3 K4 ["__resetCursor"]
       14 CALL                             R3 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["OnClicked"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["OnClicked"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["OnClicked"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Title"]
        8 GETTABLEKS                       R5 R1 K3 ["Description"]
       10 JUMPIFNOT                        R5 ; [+3]
       11 GETTABLEKS                       R4 R1 K3 ["Description"]
       13 JUMPIF                           R4 ; [+1]
       14 LOADNIL                          R4
       15 GETUPVAL                         R5 0
       16 MOVE                             R7 R3
       17 GETTABLEKS                       R8 R2 K4 ["fontStyle"]
       19 GETTABLEKS                       R8 R8 K5 ["Subtext"]
       21 GETTABLEKS                       R8 R8 K6 ["TextSize"]
       23 GETTABLEKS                       R9 R2 K4 ["fontStyle"]
       25 GETTABLEKS                       R9 R9 K5 ["Subtext"]
       27 GETTABLEKS                       R9 R9 K7 ["Font"]
       29 GETIMPORT                        R10 K10 [Vector2.new]
       31 CALL                             R10 0 -1
       32 NAMECALL                         R5 R5 K11 ["GetTextSize"]
       34 CALL                             R5 -1 1
       35 GETTABLEKS                       R6 R1 K3 ["Description"]
       37 JUMPIFNOT                        R6 ; [+25]
       38 GETUPVAL                         R6 0
       39 MOVE                             R8 R4
       40 GETTABLEKS                       R9 R2 K4 ["fontStyle"]
       42 GETTABLEKS                       R9 R9 K5 ["Subtext"]
       44 GETTABLEKS                       R9 R9 K6 ["TextSize"]
       46 GETTABLEKS                       R10 R2 K4 ["fontStyle"]
       48 GETTABLEKS                       R10 R10 K5 ["Subtext"]
       50 GETTABLEKS                       R10 R10 K7 ["Font"]
       52 GETIMPORT                        R11 K10 [Vector2.new]
       54 GETTABLEKS                       R12 R2 K12 ["radioButton"]
       56 GETTABLEKS                       R12 R12 K13 ["descriptionWidth"]
       58 LOADK                            R13 K14 [∞]
       59 CALL                             R11 2 -1
       60 NAMECALL                         R6 R6 K11 ["GetTextSize"]
       62 CALL                             R6 -1 1
       63 GETTABLEKS                       R8 R1 K15 ["Children"]
       65 JUMPIFNOT                        R8 ; [+3]
       66 GETTABLEKS                       R7 R1 K15 ["Children"]
       68 JUMPIF                           R7 ; [+2]
       69 NEWTABLE                         R7 0 0
       71 GETTABLEKS                       R9 R5 K16 ["X"]
       73 JUMPIFNOT                        R6 ; [+3]
       74 GETTABLEKS                       R10 R6 K16 ["X"]
       76 JUMPIF                           R10 ; [+1]
       77 LOADN                            R10 0
       78 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       80 GETIMPORT                        R8 K19 [math.max]
       82 CALL                             R8 2 1
       83 GETTABLEKS                       R10 R2 K12 ["radioButton"]
       85 GETTABLEKS                       R10 R10 K20 ["size"]
       87 ADD                              R9 R8 R10
       88 GETUPVAL                         R10 1
       89 GETTABLEKS                       R10 R10 K21 ["createElement"]
       91 GETUPVAL                         R12 2
       92 JUMPIFNOT                        R12 ; [+2]
       93 GETUPVAL                         R11 3
       94 JUMP                             ; [+1]
       95 GETUPVAL                         R11 4
       96 GETUPVAL                         R13 2
       97 JUMPIFNOT                        R13 ; [+25]
       98 DUPTABLE                         R12 K27 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
       99 GETIMPORT                        R13 K30 [Enum.AutomaticSize.XY]
      101 SETTABLEKS                       R13 R12 K22 ["AutomaticSize"]
      103 GETIMPORT                        R13 K33 [Enum.FillDirection.Horizontal]
      105 SETTABLEKS                       R13 R12 K23 ["Layout"]
      107 GETTABLEKS                       R14 R1 K24 ["LayoutOrder"]
      109 ORK                              R13 R14 K34 [1]
      110 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
      112 GETTABLEKS                       R13 R2 K12 ["radioButton"]
      114 GETTABLEKS                       R13 R13 K35 ["spacing"]
      116 SETTABLEKS                       R13 R12 K25 ["Spacing"]
      118 GETIMPORT                        R13 K37 [Enum.VerticalAlignment.Top]
      120 SETTABLEKS                       R13 R12 K26 ["VerticalAlignment"]
      122 JUMP                             ; [+26]
      123 DUPTABLE                         R12 K41 [{["axis"], ["minimumSize"], ["BackgroundTransparency"] = 1, ["FillDirection"], ["LayoutOrder"]}]
      124 GETUPVAL                         R13 4
      125 GETTABLEKS                       R13 R13 K42 ["Axis"]
      127 GETTABLEKS                       R13 R13 K43 ["Vertical"]
      129 SETTABLEKS                       R13 R12 K38 ["axis"]
      131 GETIMPORT                        R13 K45 [UDim2.new]
      133 LOADN                            R14 0
      134 MOVE                             R15 R9
      135 LOADN                            R16 0
      136 LOADN                            R17 0
      137 CALL                             R13 4 1
      138 SETTABLEKS                       R13 R12 K39 ["minimumSize"]
      140 GETIMPORT                        R13 K33 [Enum.FillDirection.Horizontal]
      142 SETTABLEKS                       R13 R12 K31 ["FillDirection"]
      144 GETTABLEKS                       R14 R1 K24 ["LayoutOrder"]
      146 ORK                              R13 R14 K34 [1]
      147 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
      149 DUPTABLE                         R13 K48 [{"Button", "ContentAndChildren"}]
      150 GETUPVAL                         R14 1
      151 GETTABLEKS                       R14 R14 K21 ["createElement"]
      153 LOADK                            R15 K49 ["ImageButton"]
      154 NEWTABLE                         R16 8 0
      156 GETIMPORT                        R17 K45 [UDim2.new]
      158 LOADN                            R18 0
      159 GETTABLEKS                       R19 R2 K12 ["radioButton"]
      161 GETTABLEKS                       R19 R19 K20 ["size"]
      163 LOADN                            R20 0
      164 GETTABLEKS                       R21 R2 K12 ["radioButton"]
      166 GETTABLEKS                       R21 R21 K20 ["size"]
      168 CALL                             R17 4 1
      169 SETTABLEKS                       R17 R16 K50 ["Size"]
      171 LOADN                            R17 1
      172 SETTABLEKS                       R17 R16 K40 ["BackgroundTransparency"]
      174 GETTABLEKS                       R18 R0 K0 ["props"]
      176 GETTABLEKS                       R18 R18 K51 ["Enabled"]
      178 JUMPIFNOT                        R18 ; [+2]
      179 LOADN                            R17 0
      180 JUMP                             ; [+1]
      181 LOADK                            R17 K52 [0.4]
      182 SETTABLEKS                       R17 R16 K53 ["ImageTransparency"]
      184 GETTABLEKS                       R18 R0 K0 ["props"]
      186 GETTABLEKS                       R18 R18 K54 ["Selected"]
      188 JUMPIFNOT                        R18 ; [+5]
      189 GETTABLEKS                       R17 R2 K12 ["radioButton"]
      191 GETTABLEKS                       R17 R17 K55 ["onImage"]
      193 JUMP                             ; [+4]
      194 GETTABLEKS                       R17 R2 K12 ["radioButton"]
      196 GETTABLEKS                       R17 R17 K56 ["offImage"]
      198 SETTABLEKS                       R17 R16 K57 ["Image"]
      200 LOADN                            R17 1
      201 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      203 GETUPVAL                         R17 1
      204 GETTABLEKS                       R17 R17 K58 ["Event"]
      206 GETTABLEKS                       R17 R17 K59 ["MouseEnter"]
      208 GETTABLEKS                       R18 R0 K60 ["mouseEnter"]
      210 SETTABLE                         R18 R16 R17
      211 GETUPVAL                         R17 1
      212 GETTABLEKS                       R17 R17 K58 ["Event"]
      214 GETTABLEKS                       R17 R17 K61 ["MouseLeave"]
      216 GETTABLEKS                       R18 R0 K62 ["mouseLeave"]
      218 SETTABLE                         R18 R16 R17
      219 GETUPVAL                         R17 1
      220 GETTABLEKS                       R17 R17 K58 ["Event"]
      222 GETTABLEKS                       R17 R17 K63 ["Activated"]
      224 NEWCLOSURE                       R18 P0
      225 CAPTURE                          VAL R0
      226 SETTABLE                         R18 R16 R17
      227 CALL                             R14 2 1
      228 SETTABLEKS                       R14 R13 K46 ["Button"]
      230 GETUPVAL                         R14 1
      231 GETTABLEKS                       R14 R14 K21 ["createElement"]
      233 GETUPVAL                         R16 2
      234 JUMPIFNOT                        R16 ; [+2]
      235 GETUPVAL                         R15 3
      236 JUMP                             ; [+1]
      237 GETUPVAL                         R15 4
      238 GETUPVAL                         R17 2
      239 JUMPIFNOT                        R17 ; [+20]
      240 DUPTABLE                         R16 K66 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2, ["Spacing"]}]
      241 GETIMPORT                        R17 K30 [Enum.AutomaticSize.XY]
      243 SETTABLEKS                       R17 R16 K22 ["AutomaticSize"]
      245 GETIMPORT                        R17 K68 [Enum.HorizontalAlignment.Left]
      247 SETTABLEKS                       R17 R16 K64 ["HorizontalAlignment"]
      249 GETIMPORT                        R17 K69 [Enum.FillDirection.Vertical]
      251 SETTABLEKS                       R17 R16 K23 ["Layout"]
      253 GETTABLEKS                       R17 R2 K12 ["radioButton"]
      255 GETTABLEKS                       R17 R17 K35 ["spacing"]
      257 SETTABLEKS                       R17 R16 K25 ["Spacing"]
      259 JUMP                             ; [+31]
      260 DUPTABLE                         R16 K71 [{["axis"], ["minimumSize"], ["contentPadding"], ["BackgroundTransparency"] = 1, ["FillDirection"], ["LayoutOrder"] = 2}]
      261 GETUPVAL                         R17 4
      262 GETTABLEKS                       R17 R17 K42 ["Axis"]
      264 GETTABLEKS                       R17 R17 K43 ["Vertical"]
      266 SETTABLEKS                       R17 R16 K38 ["axis"]
      268 GETIMPORT                        R17 K45 [UDim2.new]
      270 LOADN                            R18 0
      271 MOVE                             R19 R8
      272 LOADN                            R20 0
      273 LOADN                            R21 0
      274 CALL                             R17 4 1
      275 SETTABLEKS                       R17 R16 K39 ["minimumSize"]
      277 GETIMPORT                        R17 K73 [UDim.new]
      279 LOADN                            R18 0
      280 GETTABLEKS                       R19 R2 K12 ["radioButton"]
      282 GETTABLEKS                       R19 R19 K74 ["padding"]
      284 CALL                             R17 2 1
      285 SETTABLEKS                       R17 R16 K70 ["contentPadding"]
      287 GETIMPORT                        R17 K69 [Enum.FillDirection.Vertical]
      289 SETTABLEKS                       R17 R16 K31 ["FillDirection"]
      291 GETUPVAL                         R17 5
      292 GETTABLEKS                       R17 R17 K75 ["Dictionary"]
      294 GETTABLEKS                       R17 R17 K76 ["join"]
      296 DUPTABLE                         R18 K79 [{"TitleLabel", "DescriptionLabel"}]
      297 GETUPVAL                         R19 1
      298 GETTABLEKS                       R19 R19 K21 ["createElement"]
      300 LOADK                            R20 K80 ["TextButton"]
      301 GETUPVAL                         R21 5
      302 GETTABLEKS                       R21 R21 K75 ["Dictionary"]
      304 GETTABLEKS                       R21 R21 K76 ["join"]
      306 GETTABLEKS                       R22 R2 K4 ["fontStyle"]
      308 GETTABLEKS                       R22 R22 K81 ["Normal"]
      310 NEWTABLE                         R23 16 0
      312 LOADN                            R24 1
      313 SETTABLEKS                       R24 R23 K40 ["BackgroundTransparency"]
      315 LOADN                            R24 0
      316 SETTABLEKS                       R24 R23 K82 ["BorderSizePixel"]
      318 GETIMPORT                        R24 K45 [UDim2.new]
      320 LOADN                            R25 0
      321 GETTABLEKS                       R26 R5 K16 ["X"]
      323 LOADN                            R27 0
      324 GETTABLEKS                       R28 R5 K83 ["Y"]
      326 CALL                             R24 4 1
      327 SETTABLEKS                       R24 R23 K50 ["Size"]
      329 GETIMPORT                        R24 K85 [Enum.TextXAlignment.Left]
      331 SETTABLEKS                       R24 R23 K84 ["TextXAlignment"]
      333 GETIMPORT                        R24 K88 [Enum.TextYAlignment.Center]
      335 SETTABLEKS                       R24 R23 K86 ["TextYAlignment"]
      337 GETTABLEKS                       R25 R0 K0 ["props"]
      339 GETTABLEKS                       R25 R25 K51 ["Enabled"]
      341 JUMPIFNOT                        R25 ; [+2]
      342 LOADN                            R24 0
      343 JUMP                             ; [+1]
      344 LOADK                            R24 K89 [0.5]
      345 SETTABLEKS                       R24 R23 K90 ["TextTransparency"]
      347 SETTABLEKS                       R3 R23 K91 ["Text"]
      349 GETUPVAL                         R24 1
      350 GETTABLEKS                       R24 R24 K58 ["Event"]
      352 GETTABLEKS                       R24 R24 K59 ["MouseEnter"]
      354 GETTABLEKS                       R25 R0 K60 ["mouseEnter"]
      356 SETTABLE                         R25 R23 R24
      357 GETUPVAL                         R24 1
      358 GETTABLEKS                       R24 R24 K58 ["Event"]
      360 GETTABLEKS                       R24 R24 K61 ["MouseLeave"]
      362 GETTABLEKS                       R25 R0 K62 ["mouseLeave"]
      364 SETTABLE                         R25 R23 R24
      365 GETUPVAL                         R24 1
      366 GETTABLEKS                       R24 R24 K58 ["Event"]
      368 GETTABLEKS                       R24 R24 K63 ["Activated"]
      370 NEWCLOSURE                       R25 P1
      371 CAPTURE                          VAL R0
      372 SETTABLE                         R25 R23 R24
      373 LOADN                            R24 -2
      374 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      376 CALL                             R21 2 -1
      377 CALL                             R19 -1 1
      378 SETTABLEKS                       R19 R18 K77 ["TitleLabel"]
      380 GETTABLEKS                       R19 R1 K3 ["Description"]
      382 JUMPIFNOT                        R19 ; [+74]
      383 GETUPVAL                         R19 1
      384 GETTABLEKS                       R19 R19 K21 ["createElement"]
      386 LOADK                            R20 K80 ["TextButton"]
      387 GETUPVAL                         R21 5
      388 GETTABLEKS                       R21 R21 K75 ["Dictionary"]
      390 GETTABLEKS                       R21 R21 K76 ["join"]
      392 GETTABLEKS                       R22 R2 K4 ["fontStyle"]
      394 GETTABLEKS                       R22 R22 K5 ["Subtext"]
      396 NEWTABLE                         R23 16 0
      398 LOADN                            R24 1
      399 SETTABLEKS                       R24 R23 K40 ["BackgroundTransparency"]
      401 LOADN                            R24 0
      402 SETTABLEKS                       R24 R23 K82 ["BorderSizePixel"]
      404 GETIMPORT                        R24 K45 [UDim2.new]
      406 LOADN                            R25 0
      407 GETTABLEKS                       R26 R6 K16 ["X"]
      409 LOADN                            R27 0
      410 GETTABLEKS                       R28 R6 K83 ["Y"]
      412 CALL                             R24 4 1
      413 SETTABLEKS                       R24 R23 K50 ["Size"]
      415 GETIMPORT                        R24 K85 [Enum.TextXAlignment.Left]
      417 SETTABLEKS                       R24 R23 K84 ["TextXAlignment"]
      419 GETIMPORT                        R24 K92 [Enum.TextYAlignment.Top]
      421 SETTABLEKS                       R24 R23 K86 ["TextYAlignment"]
      423 SETTABLEKS                       R4 R23 K91 ["Text"]
      425 LOADB                            R24 1
      426 SETTABLEKS                       R24 R23 K93 ["TextWrapped"]
      428 GETUPVAL                         R24 1
      429 GETTABLEKS                       R24 R24 K58 ["Event"]
      431 GETTABLEKS                       R24 R24 K59 ["MouseEnter"]
      433 GETTABLEKS                       R25 R0 K60 ["mouseEnter"]
      435 SETTABLE                         R25 R23 R24
      436 GETUPVAL                         R24 1
      437 GETTABLEKS                       R24 R24 K58 ["Event"]
      439 GETTABLEKS                       R24 R24 K61 ["MouseLeave"]
      441 GETTABLEKS                       R25 R0 K62 ["mouseLeave"]
      443 SETTABLE                         R25 R23 R24
      444 GETUPVAL                         R24 1
      445 GETTABLEKS                       R24 R24 K58 ["Event"]
      447 GETTABLEKS                       R24 R24 K63 ["Activated"]
      449 NEWCLOSURE                       R25 P2
      450 CAPTURE                          VAL R0
      451 SETTABLE                         R25 R23 R24
      452 LOADN                            R24 -1
      453 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      455 CALL                             R21 2 -1
      456 CALL                             R19 -1 1
      457 SETTABLEKS                       R19 R18 K78 ["DescriptionLabel"]
      459 MOVE                             R19 R7
      460 CALL                             R17 2 -1
      461 CALL                             R14 -1 1
      462 SETTABLEKS                       R14 R13 K47 ["ContentAndChildren"]
      464 CALL                             R10 3 -1
      465 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["GameSettingsPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K10 [game]
       19 LOADK                            R4 K11 ["TextService"]
       20 NAMECALL                         R2 R2 K12 ["GetService"]
       22 CALL                             R2 2 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K13 ["Packages"]
       27 GETTABLEKS                       R4 R4 K14 ["FitFrame"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Packages"]
       34 GETTABLEKS                       R5 R5 K15 ["Roact"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Packages"]
       41 GETTABLEKS                       R6 R6 K16 ["Cryo"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Packages"]
       48 GETTABLEKS                       R7 R7 K17 ["Framework"]
       50 CALL                             R6 1 1
       51 JUMPIFNOT                        R1 ; [+2]
       52 LOADNIL                          R7
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R7 R3 K18 ["FitFrameOnAxis"]
       56 GETTABLEKS                       R8 R6 K19 ["ContextServices"]
       58 GETTABLEKS                       R9 R8 K20 ["withContext"]
       60 GETTABLEKS                       R10 R6 K21 ["UI"]
       62 GETTABLEKS                       R11 R10 K22 ["Pane"]
       64 GETTABLEKS                       R12 R4 K23 ["PureComponent"]
       66 LOADK                            R14 K24 ["RadioButton"]
       67 NAMECALL                         R12 R12 K25 ["extend"]
       69 CALL                             R12 2 1
       70 DUPCLOSURE                       R13 K26 [PROTO_2]
       71 SETTABLEKS                       R13 R12 K27 ["init"]
       73 DUPCLOSURE                       R13 K28 [PROTO_3]
       74 SETTABLEKS                       R13 R12 K29 ["mouseHoverChanged"]
       76 DUPCLOSURE                       R13 K30 [PROTO_7]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R5
       83 SETTABLEKS                       R13 R12 K31 ["render"]
       85 MOVE                             R13 R9
       86 DUPTABLE                         R14 K34 [{"Stylizer", "Mouse"}]
       87 GETTABLEKS                       R15 R8 K32 ["Stylizer"]
       89 SETTABLEKS                       R15 R14 K32 ["Stylizer"]
       91 GETTABLEKS                       R15 R8 K33 ["Mouse"]
       93 SETTABLEKS                       R15 R14 K33 ["Mouse"]
       95 CALL                             R13 1 1
       96 MOVE                             R14 R12
       97 CALL                             R13 1 1
       98 MOVE                             R12 R13
       99 RETURN                           R12 1
