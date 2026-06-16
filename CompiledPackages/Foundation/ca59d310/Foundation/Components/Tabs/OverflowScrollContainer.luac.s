PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K2 [{"tag"}]
        7 LOADK                            R7 K3 ["col align-y-center size-0-full auto-x bg-surface-0 %*"]
        8 GETTABLEKS                       R9 R0 K1 ["tag"]
       10 NAMECALL                         R7 R7 K4 ["format"]
       12 CALL                             R7 2 1
       13 MOVE                             R6 R7
       14 SETTABLEKS                       R6 R5 K1 ["tag"]
       16 CALL                             R3 2 1
       17 DUPTABLE                         R4 K7 [{"UIGradient", "Button"}]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 LOADK                            R6 K5 ["UIGradient"]
       22 DUPTABLE                         R7 K9 [{"Transparency"}]
       23 GETTABLEKS                       R8 R0 K10 ["gradient"]
       25 SETTABLEKS                       R8 R7 K8 ["Transparency"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K5 ["UIGradient"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["createElement"]
       33 GETUPVAL                         R6 3
       34 DUPTABLE                         R7 K14 [{"onActivated", "size", "icon"}]
       35 GETTABLEKS                       R8 R0 K11 ["onActivated"]
       37 SETTABLEKS                       R8 R7 K11 ["onActivated"]
       39 GETTABLEKS                       R9 R0 K12 ["size"]
       41 GETUPVAL                         R10 4
       42 GETTABLEKS                       R10 R10 K15 ["Large"]
       44 JUMPIFEQ                         R9 R10 ; [+8]
       46 GETTABLEKS                       R9 R0 K12 ["size"]
       48 GETUPVAL                         R10 4
       49 GETTABLEKS                       R10 R10 K16 ["Medium"]
       51 JUMPIFNOTEQ                      R9 R10 ; [+5]
       53 GETUPVAL                         R8 4
       54 GETTABLEKS                       R8 R8 K17 ["Small"]
       56 JUMP                             ; [+3]
       57 GETUPVAL                         R8 4
       58 GETTABLEKS                       R8 R8 K18 ["XSmall"]
       60 SETTABLEKS                       R8 R7 K12 ["size"]
       62 DUPTABLE                         R8 K20 [{"name"}]
       63 GETTABLEKS                       R9 R0 K13 ["icon"]
       65 SETTABLEKS                       R9 R8 K19 ["name"]
       67 SETTABLEKS                       R8 R7 K13 ["icon"]
       69 CALL                             R5 2 1
       70 SETTABLEKS                       R5 R4 K6 ["Button"]
       72 CALL                             R1 3 -1
       73 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K3 [Vector2.new]
        7 MOVE                             R3 R0
        8 LOADN                            R4 0
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K4 ["CanvasPosition"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteWindowSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R4 R0 K0 ["AbsoluteWindowSize"]
       10 GETTABLEKS                       R4 R4 K1 ["X"]
       12 GETTABLEKS                       R5 R0 K3 ["CanvasPosition"]
       14 GETTABLEKS                       R5 R5 K1 ["X"]
       16 ADD                              R3 R4 R5
       17 GETTABLEKS                       R5 R0 K5 ["AbsoluteCanvasSize"]
       19 GETTABLEKS                       R5 R5 K1 ["X"]
       21 SUBK                             R4 R5 K4 [1]
       22 JUMPIFLT                         R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R3 R0 K3 ["CanvasPosition"]
       30 GETTABLEKS                       R3 R3 K1 ["X"]
       32 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["ease"]
        9 GETTABLEKS                       R5 R1 K2 ["CanvasPosition"]
       11 GETTABLEKS                       R5 R5 K3 ["X"]
       13 ADD                              R4 R5 R0
       14 DUPTABLE                         R5 K6 [{"duration", "easingStyle"}]
       15 LOADK                            R6 K7 [0.2]
       16 SETTABLEKS                       R6 R5 K4 ["duration"]
       18 GETIMPORT                        R6 K11 [Enum.EasingStyle.Quad]
       20 SETTABLEKS                       R6 R5 K5 ["easingStyle"]
       22 CALL                             R3 2 -1
       23 CALL                             R2 -1 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 166
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 90
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 AND                              R1 R2 R0
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 AND                              R1 R2 R0
        2 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useBinding"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
       15 JUMPIFNOT                        R7 ; [+7]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K2 ["useState"]
       19 LOADB                            R8 0
       20 CALL                             R7 1 2
       21 MOVE                             R5 R7
       22 MOVE                             R6 R8
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K3 ["useRef"]
       26 LOADNIL                          R8
       27 CALL                             R7 1 1
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R8 R8 K4 ["useMotor"]
       31 LOADN                            R9 0
       32 NEWCLOSURE                       R10 P0
       33 CAPTURE                          VAL R7
       34 CALL                             R8 2 1
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K6 ["throttle"]
       41 NEWCLOSURE                       R11 P1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 LOADK                            R12 K7 [0.2]
       45 CALL                             R10 2 1
       46 NEWTABLE                         R11 0 0
       48 CALL                             R9 2 1
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       52 NEWCLOSURE                       R11 P2
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R8
       55 CAPTURE                          UPVAL U4
       56 NEWTABLE                         R12 0 0
       58 CALL                             R10 2 1
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R11 R11 K8 ["useEffect"]
       62 NEWCLOSURE                       R12 P3
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R9
       65 NEWTABLE                         R13 0 0
       67 CALL                             R11 2 0
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       71 NEWCLOSURE                       R12 P4
       72 CAPTURE                          VAL R10
       73 NEWTABLE                         R13 0 1
       75 MOVE                             R14 R10
       76 SETLIST                          R13 R14 1 [1]
       78 CALL                             R11 2 1
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K5 ["useCallback"]
       82 NEWCLOSURE                       R13 P5
       83 CAPTURE                          VAL R10
       84 NEWTABLE                         R14 0 1
       86 MOVE                             R15 R10
       87 SETLIST                          R14 R15 1 [1]
       89 CALL                             R12 2 1
       90 GETUPVAL                         R14 1
       91 GETTABLEKS                       R14 R14 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
       93 JUMPIFNOT                        R14 ; [+10]
       94 GETUPVAL                         R13 0
       95 GETTABLEKS                       R13 R13 K5 ["useCallback"]
       97 NEWCLOSURE                       R14 P6
       98 CAPTURE                          REF R6
       99 CAPTURE                          UPVAL U5
      100 NEWTABLE                         R15 0 0
      102 CALL                             R13 2 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R13
      105 GETUPVAL                         R14 0
      106 GETTABLEKS                       R14 R14 K9 ["createElement"]
      108 GETUPVAL                         R15 6
      109 GETUPVAL                         R16 7
      110 MOVE                             R17 R0
      111 GETUPVAL                         R19 1
      112 GETTABLEKS                       R19 R19 K10 ["FoundationTabsInlineSizeFull"]
      114 JUMPIFNOT                        R19 ; [+12]
      115 DUPTABLE                         R18 K13 [{"tag", "Size"}]
      116 LOADK                            R19 K14 ["auto-y"]
      117 SETTABLEKS                       R19 R18 K11 ["tag"]
      119 GETIMPORT                        R19 K17 [UDim2.fromScale]
      121 LOADN                            R20 1
      122 LOADN                            R21 0
      123 CALL                             R19 2 1
      124 SETTABLEKS                       R19 R18 K12 ["Size"]
      126 JUMP                             ; [+4]
      127 DUPTABLE                         R18 K18 [{"tag"}]
      128 LOADK                            R19 K19 ["size-full-0 auto-y"]
      129 SETTABLEKS                       R19 R18 K11 ["tag"]
      131 CALL                             R16 2 1
      132 DUPTABLE                         R17 K23 [{"Scroll", "OverflowStart", "OverflowEnd"}]
      133 GETUPVAL                         R18 0
      134 GETTABLEKS                       R18 R18 K9 ["createElement"]
      136 GETUPVAL                         R19 8
      137 DUPTABLE                         R20 K33 [{"LayoutOrder", "tag", "Size", "onStateChanged", "stateLayer", "onCanvasPositionChanged", "onAbsoluteWindowSizeChanged", "scrollingFrameRef", "selection", "scroll", "testId"}]
      138 LOADN                            R21 1
      139 SETTABLEKS                       R21 R20 K24 ["LayoutOrder"]
      141 GETUPVAL                         R22 1
      142 GETTABLEKS                       R22 R22 K10 ["FoundationTabsInlineSizeFull"]
      144 JUMPIFNOT                        R22 ; [+8]
      145 GETUPVAL                         R22 1
      146 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      148 JUMPIFNOT                        R22 ; [+2]
      149 LOADK                            R21 K14 ["auto-y"]
      150 JUMP                             ; [+15]
      151 LOADNIL                          R21
      152 JUMP                             ; [+13]
      153 NEWTABLE                         R21 2 0
      155 GETUPVAL                         R22 1
      156 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      158 SETTABLEKS                       R22 R21 K19 ["size-full-0 auto-y"]
      160 GETUPVAL                         R23 1
      161 GETTABLEKS                       R23 R23 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      163 NOT                              R22 R23
      164 SETTABLEKS                       R22 R21 K34 ["size-full"]
      166 SETTABLEKS                       R21 R20 K11 ["tag"]
      168 GETUPVAL                         R22 1
      169 GETTABLEKS                       R22 R22 K10 ["FoundationTabsInlineSizeFull"]
      171 JUMPIFNOT                        R22 ; [+16]
      172 GETUPVAL                         R22 1
      173 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      175 JUMPIFNOT                        R22 ; [+6]
      176 GETIMPORT                        R21 K17 [UDim2.fromScale]
      178 LOADN                            R22 1
      179 LOADN                            R23 0
      180 CALL                             R21 2 1
      181 JUMP                             ; [+7]
      182 GETIMPORT                        R21 K17 [UDim2.fromScale]
      184 LOADN                            R22 1
      185 LOADN                            R23 1
      186 CALL                             R21 2 1
      187 JUMP                             ; [+1]
      188 LOADNIL                          R21
      189 SETTABLEKS                       R21 R20 K12 ["Size"]
      191 GETUPVAL                         R22 1
      192 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      194 JUMPIFNOT                        R22 ; [+2]
      195 MOVE                             R21 R13
      196 JUMP                             ; [+1]
      197 LOADNIL                          R21
      198 SETTABLEKS                       R21 R20 K25 ["onStateChanged"]
      200 GETUPVAL                         R22 1
      201 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      203 JUMPIFNOT                        R22 ; [+7]
      204 DUPTABLE                         R21 K36 [{"affordance"}]
      205 GETUPVAL                         R22 9
      206 GETTABLEKS                       R22 R22 K37 ["None"]
      208 SETTABLEKS                       R22 R21 K35 ["affordance"]
      210 JUMP                             ; [+1]
      211 LOADNIL                          R21
      212 SETTABLEKS                       R21 R20 K26 ["stateLayer"]
      214 SETTABLEKS                       R9 R20 K27 ["onCanvasPositionChanged"]
      216 SETTABLEKS                       R9 R20 K28 ["onAbsoluteWindowSizeChanged"]
      218 SETTABLEKS                       R7 R20 K29 ["scrollingFrameRef"]
      220 DUPTABLE                         R21 K39 [{"Selectable"}]
      221 LOADB                            R22 0
      222 SETTABLEKS                       R22 R21 K38 ["Selectable"]
      224 SETTABLEKS                       R21 R20 K30 ["selection"]
      226 DUPTABLE                         R21 K44 [{"AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      227 GETIMPORT                        R22 K47 [Enum.AutomaticSize.Y]
      229 SETTABLEKS                       R22 R21 K40 ["AutomaticSize"]
      231 GETIMPORT                        R22 K49 [Enum.AutomaticSize.X]
      233 SETTABLEKS                       R22 R21 K41 ["AutomaticCanvasSize"]
      235 GETIMPORT                        R22 K50 [Enum.ScrollingDirection.X]
      237 SETTABLEKS                       R22 R21 K42 ["ScrollingDirection"]
      239 GETUPVAL                         R22 10
      240 GETTABLEKS                       R22 R22 K37 ["None"]
      242 SETTABLEKS                       R22 R21 K43 ["scrollBarVisibility"]
      244 SETTABLEKS                       R21 R20 K31 ["scroll"]
      246 GETUPVAL                         R22 1
      247 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      249 JUMPIFNOT                        R22 ; [+8]
      250 LOADK                            R22 K51 ["%*--scroll"]
      251 GETTABLEKS                       R24 R0 K32 ["testId"]
      253 NAMECALL                         R22 R22 K52 ["format"]
      255 CALL                             R22 2 1
      256 MOVE                             R21 R22
      257 JUMP                             ; [+1]
      258 LOADNIL                          R21
      259 SETTABLEKS                       R21 R20 K32 ["testId"]
      261 GETTABLEKS                       R21 R0 K53 ["children"]
      263 CALL                             R18 3 1
      264 SETTABLEKS                       R18 R17 K20 ["Scroll"]
      266 GETUPVAL                         R18 0
      267 GETTABLEKS                       R18 R18 K9 ["createElement"]
      269 GETUPVAL                         R19 11
      270 DUPTABLE                         R20 K62 [{"LayoutOrder", "Position", "size", "isStart", "ZIndex", "Visible", "onActivated", "gradient", "tag", "icon", "testId"}]
      271 LOADN                            R21 3
      272 SETTABLEKS                       R21 R20 K24 ["LayoutOrder"]
      274 GETIMPORT                        R21 K17 [UDim2.fromScale]
      276 LOADN                            R22 0
      277 LOADN                            R23 0
      278 CALL                             R21 2 1
      279 SETTABLEKS                       R21 R20 K54 ["Position"]
      281 GETTABLEKS                       R21 R0 K55 ["size"]
      283 SETTABLEKS                       R21 R20 K55 ["size"]
      285 LOADB                            R21 1
      286 SETTABLEKS                       R21 R20 K56 ["isStart"]
      288 LOADN                            R21 2
      289 SETTABLEKS                       R21 R20 K57 ["ZIndex"]
      291 GETUPVAL                         R22 1
      292 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      294 JUMPIFNOT                        R22 ; [+6]
      295 NEWCLOSURE                       R23 P7
      296 CAPTURE                          REF R5
      297 NAMECALL                         R21 R3 K63 ["map"]
      299 CALL                             R21 2 1
      300 JUMP                             ; [+1]
      301 MOVE                             R21 R3
      302 SETTABLEKS                       R21 R20 K58 ["Visible"]
      304 SETTABLEKS                       R11 R20 K59 ["onActivated"]
      306 GETUPVAL                         R21 12
      307 SETTABLEKS                       R21 R20 K60 ["gradient"]
      309 LOADK                            R21 K64 ["padding-right-small"]
      310 SETTABLEKS                       R21 R20 K11 ["tag"]
      312 LOADK                            R21 K65 ["chevron-large-left"]
      313 SETTABLEKS                       R21 R20 K61 ["icon"]
      315 LOADK                            R22 K66 ["%*--overflow-start"]
      316 GETTABLEKS                       R24 R0 K32 ["testId"]
      318 NAMECALL                         R22 R22 K52 ["format"]
      320 CALL                             R22 2 1
      321 MOVE                             R21 R22
      322 SETTABLEKS                       R21 R20 K32 ["testId"]
      324 CALL                             R18 2 1
      325 SETTABLEKS                       R18 R17 K21 ["OverflowStart"]
      327 GETUPVAL                         R18 0
      328 GETTABLEKS                       R18 R18 K9 ["createElement"]
      330 GETUPVAL                         R19 11
      331 DUPTABLE                         R20 K67 [{"LayoutOrder", "Position", "size", "ZIndex", "Visible", "onActivated", "gradient", "tag", "icon", "testId"}]
      332 LOADN                            R21 4
      333 SETTABLEKS                       R21 R20 K24 ["LayoutOrder"]
      335 GETIMPORT                        R21 K17 [UDim2.fromScale]
      337 LOADN                            R22 1
      338 LOADN                            R23 0
      339 CALL                             R21 2 1
      340 SETTABLEKS                       R21 R20 K54 ["Position"]
      342 GETTABLEKS                       R21 R0 K55 ["size"]
      344 SETTABLEKS                       R21 R20 K55 ["size"]
      346 LOADN                            R21 2
      347 SETTABLEKS                       R21 R20 K57 ["ZIndex"]
      349 GETUPVAL                         R22 1
      350 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      352 JUMPIFNOT                        R22 ; [+6]
      353 NEWCLOSURE                       R23 P8
      354 CAPTURE                          REF R5
      355 NAMECALL                         R21 R1 K63 ["map"]
      357 CALL                             R21 2 1
      358 JUMP                             ; [+1]
      359 MOVE                             R21 R1
      360 SETTABLEKS                       R21 R20 K58 ["Visible"]
      362 SETTABLEKS                       R12 R20 K59 ["onActivated"]
      364 GETUPVAL                         R21 13
      365 SETTABLEKS                       R21 R20 K60 ["gradient"]
      367 LOADK                            R21 K68 ["anchor-top-right padding-left-small"]
      368 SETTABLEKS                       R21 R20 K11 ["tag"]
      370 LOADK                            R21 K69 ["chevron-large-right"]
      371 SETTABLEKS                       R21 R20 K61 ["icon"]
      373 LOADK                            R22 K70 ["%*--overflow-end"]
      374 GETTABLEKS                       R24 R0 K32 ["testId"]
      376 NAMECALL                         R22 R22 K52 ["format"]
      378 CALL                             R22 2 1
      379 MOVE                             R21 R22
      380 SETTABLEKS                       R21 R20 K32 ["testId"]
      382 CALL                             R18 2 1
      383 SETTABLEKS                       R18 R17 K22 ["OverflowEnd"]
      385 CALL                             R14 3 -1
      386 CLOSEUPVALS                      R5
      387 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Otter"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactOtter"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Enums"]
       33 GETTABLEKS                       R7 R7 K12 ["ControlState"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Utility"]
       40 GETTABLEKS                       R8 R8 K14 ["Flags"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Components"]
       47 GETTABLEKS                       R9 R9 K16 ["IconButton"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K11 ["Enums"]
       54 GETTABLEKS                       R10 R10 K17 ["InputSize"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K15 ["Components"]
       61 GETTABLEKS                       R11 R11 K18 ["ScrollView"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R0 K11 ["Enums"]
       68 GETTABLEKS                       R12 R12 K19 ["StateLayerAffordance"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R13 R0 K15 ["Components"]
       75 GETTABLEKS                       R13 R13 K20 ["Types"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K6 [require]
       80 GETTABLEKS                       R14 R0 K15 ["Components"]
       82 GETTABLEKS                       R14 R14 K21 ["View"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K6 [require]
       87 GETTABLEKS                       R15 R0 K11 ["Enums"]
       89 GETTABLEKS                       R15 R15 K22 ["Visibility"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K6 [require]
       94 GETTABLEKS                       R16 R0 K13 ["Utility"]
       96 GETTABLEKS                       R16 R16 K23 ["withCommonProps"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K26 [NumberSequence.new]
      101 NEWTABLE                         R17 0 3
      103 GETIMPORT                        R18 K28 [NumberSequenceKeypoint.new]
      105 LOADN                            R19 0
      106 LOADN                            R20 0
      107 CALL                             R18 2 1
      108 GETIMPORT                        R19 K28 [NumberSequenceKeypoint.new]
      110 LOADK                            R20 K29 [0.8]
      111 LOADN                            R21 0
      112 CALL                             R19 2 1
      113 GETIMPORT                        R20 K28 [NumberSequenceKeypoint.new]
      115 LOADN                            R21 1
      116 LOADN                            R22 1
      117 CALL                             R20 2 -1
      118 SETLIST                          R17 R18 -1 [1]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K26 [NumberSequence.new]
      123 NEWTABLE                         R18 0 3
      125 GETIMPORT                        R19 K28 [NumberSequenceKeypoint.new]
      127 LOADN                            R20 0
      128 LOADN                            R21 1
      129 CALL                             R19 2 1
      130 GETIMPORT                        R20 K28 [NumberSequenceKeypoint.new]
      132 LOADK                            R21 K30 [0.2]
      133 LOADN                            R22 0
      134 CALL                             R20 2 1
      135 GETIMPORT                        R21 K28 [NumberSequenceKeypoint.new]
      137 LOADN                            R22 1
      138 LOADN                            R23 0
      139 CALL                             R21 2 -1
      140 SETLIST                          R18 R19 -1 [1]
      142 CALL                             R17 1 1
      143 DUPCLOSURE                       R18 K31 [PROTO_0]
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R9
      149 DUPCLOSURE                       R19 K32 [PROTO_10]
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R17
      164 RETURN                           R19 1
