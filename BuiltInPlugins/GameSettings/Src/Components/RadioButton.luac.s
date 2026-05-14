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
      122 JUMP                             ; [+29]
      123 DUPTABLE                         R12 K41 [{"axis", "minimumSize", "BackgroundTransparency", "FillDirection", "LayoutOrder"}]
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
      140 LOADN                            R13 1
      141 SETTABLEKS                       R13 R12 K40 ["BackgroundTransparency"]
      143 GETIMPORT                        R13 K33 [Enum.FillDirection.Horizontal]
      145 SETTABLEKS                       R13 R12 K31 ["FillDirection"]
      147 GETTABLEKS                       R14 R1 K24 ["LayoutOrder"]
      149 ORK                              R13 R14 K34 [1]
      150 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
      152 DUPTABLE                         R13 K48 [{"Button", "ContentAndChildren"}]
      153 GETUPVAL                         R14 1
      154 GETTABLEKS                       R14 R14 K21 ["createElement"]
      156 LOADK                            R15 K49 ["ImageButton"]
      157 NEWTABLE                         R16 8 0
      159 GETIMPORT                        R17 K45 [UDim2.new]
      161 LOADN                            R18 0
      162 GETTABLEKS                       R19 R2 K12 ["radioButton"]
      164 GETTABLEKS                       R19 R19 K20 ["size"]
      166 LOADN                            R20 0
      167 GETTABLEKS                       R21 R2 K12 ["radioButton"]
      169 GETTABLEKS                       R21 R21 K20 ["size"]
      171 CALL                             R17 4 1
      172 SETTABLEKS                       R17 R16 K50 ["Size"]
      174 LOADN                            R17 1
      175 SETTABLEKS                       R17 R16 K40 ["BackgroundTransparency"]
      177 GETTABLEKS                       R18 R0 K0 ["props"]
      179 GETTABLEKS                       R18 R18 K51 ["Enabled"]
      181 JUMPIFNOT                        R18 ; [+2]
      182 LOADN                            R17 0
      183 JUMP                             ; [+1]
      184 LOADK                            R17 K52 [0.4]
      185 SETTABLEKS                       R17 R16 K53 ["ImageTransparency"]
      187 GETTABLEKS                       R18 R0 K0 ["props"]
      189 GETTABLEKS                       R18 R18 K54 ["Selected"]
      191 JUMPIFNOT                        R18 ; [+5]
      192 GETTABLEKS                       R17 R2 K12 ["radioButton"]
      194 GETTABLEKS                       R17 R17 K55 ["onImage"]
      196 JUMP                             ; [+4]
      197 GETTABLEKS                       R17 R2 K12 ["radioButton"]
      199 GETTABLEKS                       R17 R17 K56 ["offImage"]
      201 SETTABLEKS                       R17 R16 K57 ["Image"]
      203 LOADN                            R17 1
      204 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      206 GETUPVAL                         R17 1
      207 GETTABLEKS                       R17 R17 K58 ["Event"]
      209 GETTABLEKS                       R17 R17 K59 ["MouseEnter"]
      211 GETTABLEKS                       R18 R0 K60 ["mouseEnter"]
      213 SETTABLE                         R18 R16 R17
      214 GETUPVAL                         R17 1
      215 GETTABLEKS                       R17 R17 K58 ["Event"]
      217 GETTABLEKS                       R17 R17 K61 ["MouseLeave"]
      219 GETTABLEKS                       R18 R0 K62 ["mouseLeave"]
      221 SETTABLE                         R18 R16 R17
      222 GETUPVAL                         R17 1
      223 GETTABLEKS                       R17 R17 K58 ["Event"]
      225 GETTABLEKS                       R17 R17 K63 ["Activated"]
      227 NEWCLOSURE                       R18 P0
      228 CAPTURE                          VAL R0
      229 SETTABLE                         R18 R16 R17
      230 CALL                             R14 2 1
      231 SETTABLEKS                       R14 R13 K46 ["Button"]
      233 GETUPVAL                         R14 1
      234 GETTABLEKS                       R14 R14 K21 ["createElement"]
      236 GETUPVAL                         R16 2
      237 JUMPIFNOT                        R16 ; [+2]
      238 GETUPVAL                         R15 3
      239 JUMP                             ; [+1]
      240 GETUPVAL                         R15 4
      241 GETUPVAL                         R17 2
      242 JUMPIFNOT                        R17 ; [+23]
      243 DUPTABLE                         R16 K65 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      244 GETIMPORT                        R17 K30 [Enum.AutomaticSize.XY]
      246 SETTABLEKS                       R17 R16 K22 ["AutomaticSize"]
      248 GETIMPORT                        R17 K67 [Enum.HorizontalAlignment.Left]
      250 SETTABLEKS                       R17 R16 K64 ["HorizontalAlignment"]
      252 GETIMPORT                        R17 K68 [Enum.FillDirection.Vertical]
      254 SETTABLEKS                       R17 R16 K23 ["Layout"]
      256 LOADN                            R17 2
      257 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      259 GETTABLEKS                       R17 R2 K12 ["radioButton"]
      261 GETTABLEKS                       R17 R17 K35 ["spacing"]
      263 SETTABLEKS                       R17 R16 K25 ["Spacing"]
      265 JUMP                             ; [+37]
      266 DUPTABLE                         R16 K70 [{"axis", "minimumSize", "contentPadding", "BackgroundTransparency", "FillDirection", "LayoutOrder"}]
      267 GETUPVAL                         R17 4
      268 GETTABLEKS                       R17 R17 K42 ["Axis"]
      270 GETTABLEKS                       R17 R17 K43 ["Vertical"]
      272 SETTABLEKS                       R17 R16 K38 ["axis"]
      274 GETIMPORT                        R17 K45 [UDim2.new]
      276 LOADN                            R18 0
      277 MOVE                             R19 R8
      278 LOADN                            R20 0
      279 LOADN                            R21 0
      280 CALL                             R17 4 1
      281 SETTABLEKS                       R17 R16 K39 ["minimumSize"]
      283 GETIMPORT                        R17 K72 [UDim.new]
      285 LOADN                            R18 0
      286 GETTABLEKS                       R19 R2 K12 ["radioButton"]
      288 GETTABLEKS                       R19 R19 K73 ["padding"]
      290 CALL                             R17 2 1
      291 SETTABLEKS                       R17 R16 K69 ["contentPadding"]
      293 LOADN                            R17 1
      294 SETTABLEKS                       R17 R16 K40 ["BackgroundTransparency"]
      296 GETIMPORT                        R17 K68 [Enum.FillDirection.Vertical]
      298 SETTABLEKS                       R17 R16 K31 ["FillDirection"]
      300 LOADN                            R17 2
      301 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      303 GETUPVAL                         R17 5
      304 GETTABLEKS                       R17 R17 K74 ["Dictionary"]
      306 GETTABLEKS                       R17 R17 K75 ["join"]
      308 DUPTABLE                         R18 K78 [{"TitleLabel", "DescriptionLabel"}]
      309 GETUPVAL                         R19 1
      310 GETTABLEKS                       R19 R19 K21 ["createElement"]
      312 LOADK                            R20 K79 ["TextButton"]
      313 GETUPVAL                         R21 5
      314 GETTABLEKS                       R21 R21 K74 ["Dictionary"]
      316 GETTABLEKS                       R21 R21 K75 ["join"]
      318 GETTABLEKS                       R22 R2 K4 ["fontStyle"]
      320 GETTABLEKS                       R22 R22 K80 ["Normal"]
      322 NEWTABLE                         R23 16 0
      324 LOADN                            R24 1
      325 SETTABLEKS                       R24 R23 K40 ["BackgroundTransparency"]
      327 LOADN                            R24 0
      328 SETTABLEKS                       R24 R23 K81 ["BorderSizePixel"]
      330 GETIMPORT                        R24 K45 [UDim2.new]
      332 LOADN                            R25 0
      333 GETTABLEKS                       R26 R5 K16 ["X"]
      335 LOADN                            R27 0
      336 GETTABLEKS                       R28 R5 K82 ["Y"]
      338 CALL                             R24 4 1
      339 SETTABLEKS                       R24 R23 K50 ["Size"]
      341 GETIMPORT                        R24 K84 [Enum.TextXAlignment.Left]
      343 SETTABLEKS                       R24 R23 K83 ["TextXAlignment"]
      345 GETIMPORT                        R24 K87 [Enum.TextYAlignment.Center]
      347 SETTABLEKS                       R24 R23 K85 ["TextYAlignment"]
      349 GETTABLEKS                       R25 R0 K0 ["props"]
      351 GETTABLEKS                       R25 R25 K51 ["Enabled"]
      353 JUMPIFNOT                        R25 ; [+2]
      354 LOADN                            R24 0
      355 JUMP                             ; [+1]
      356 LOADK                            R24 K88 [0.5]
      357 SETTABLEKS                       R24 R23 K89 ["TextTransparency"]
      359 SETTABLEKS                       R3 R23 K90 ["Text"]
      361 GETUPVAL                         R24 1
      362 GETTABLEKS                       R24 R24 K58 ["Event"]
      364 GETTABLEKS                       R24 R24 K59 ["MouseEnter"]
      366 GETTABLEKS                       R25 R0 K60 ["mouseEnter"]
      368 SETTABLE                         R25 R23 R24
      369 GETUPVAL                         R24 1
      370 GETTABLEKS                       R24 R24 K58 ["Event"]
      372 GETTABLEKS                       R24 R24 K61 ["MouseLeave"]
      374 GETTABLEKS                       R25 R0 K62 ["mouseLeave"]
      376 SETTABLE                         R25 R23 R24
      377 GETUPVAL                         R24 1
      378 GETTABLEKS                       R24 R24 K58 ["Event"]
      380 GETTABLEKS                       R24 R24 K63 ["Activated"]
      382 NEWCLOSURE                       R25 P1
      383 CAPTURE                          VAL R0
      384 SETTABLE                         R25 R23 R24
      385 LOADN                            R24 254
      386 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      388 CALL                             R21 2 -1
      389 CALL                             R19 -1 1
      390 SETTABLEKS                       R19 R18 K76 ["TitleLabel"]
      392 GETTABLEKS                       R19 R1 K3 ["Description"]
      394 JUMPIFNOT                        R19 ; [+74]
      395 GETUPVAL                         R19 1
      396 GETTABLEKS                       R19 R19 K21 ["createElement"]
      398 LOADK                            R20 K79 ["TextButton"]
      399 GETUPVAL                         R21 5
      400 GETTABLEKS                       R21 R21 K74 ["Dictionary"]
      402 GETTABLEKS                       R21 R21 K75 ["join"]
      404 GETTABLEKS                       R22 R2 K4 ["fontStyle"]
      406 GETTABLEKS                       R22 R22 K5 ["Subtext"]
      408 NEWTABLE                         R23 16 0
      410 LOADN                            R24 1
      411 SETTABLEKS                       R24 R23 K40 ["BackgroundTransparency"]
      413 LOADN                            R24 0
      414 SETTABLEKS                       R24 R23 K81 ["BorderSizePixel"]
      416 GETIMPORT                        R24 K45 [UDim2.new]
      418 LOADN                            R25 0
      419 GETTABLEKS                       R26 R6 K16 ["X"]
      421 LOADN                            R27 0
      422 GETTABLEKS                       R28 R6 K82 ["Y"]
      424 CALL                             R24 4 1
      425 SETTABLEKS                       R24 R23 K50 ["Size"]
      427 GETIMPORT                        R24 K84 [Enum.TextXAlignment.Left]
      429 SETTABLEKS                       R24 R23 K83 ["TextXAlignment"]
      431 GETIMPORT                        R24 K91 [Enum.TextYAlignment.Top]
      433 SETTABLEKS                       R24 R23 K85 ["TextYAlignment"]
      435 SETTABLEKS                       R4 R23 K90 ["Text"]
      437 LOADB                            R24 1
      438 SETTABLEKS                       R24 R23 K92 ["TextWrapped"]
      440 GETUPVAL                         R24 1
      441 GETTABLEKS                       R24 R24 K58 ["Event"]
      443 GETTABLEKS                       R24 R24 K59 ["MouseEnter"]
      445 GETTABLEKS                       R25 R0 K60 ["mouseEnter"]
      447 SETTABLE                         R25 R23 R24
      448 GETUPVAL                         R24 1
      449 GETTABLEKS                       R24 R24 K58 ["Event"]
      451 GETTABLEKS                       R24 R24 K61 ["MouseLeave"]
      453 GETTABLEKS                       R25 R0 K62 ["mouseLeave"]
      455 SETTABLE                         R25 R23 R24
      456 GETUPVAL                         R24 1
      457 GETTABLEKS                       R24 R24 K58 ["Event"]
      459 GETTABLEKS                       R24 R24 K63 ["Activated"]
      461 NEWCLOSURE                       R25 P2
      462 CAPTURE                          VAL R0
      463 SETTABLE                         R25 R23 R24
      464 LOADN                            R24 255
      465 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      467 CALL                             R21 2 -1
      468 CALL                             R19 -1 1
      469 SETTABLEKS                       R19 R18 K77 ["DescriptionLabel"]
      471 MOVE                             R19 R7
      472 CALL                             R17 2 -1
      473 CALL                             R14 -1 1
      474 SETTABLEKS                       R14 R13 K47 ["ContentAndChildren"]
      476 CALL                             R10 3 -1
      477 RETURN                           R10 -1

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
