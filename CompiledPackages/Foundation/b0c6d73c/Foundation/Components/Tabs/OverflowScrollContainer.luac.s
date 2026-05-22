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
      111 DUPTABLE                         R18 K11 [{"tag"}]
      112 LOADK                            R19 K12 ["size-full-0 auto-y"]
      113 SETTABLEKS                       R19 R18 K10 ["tag"]
      115 CALL                             R16 2 1
      116 DUPTABLE                         R17 K16 [{"Scroll", "OverflowStart", "OverflowEnd"}]
      117 GETUPVAL                         R18 0
      118 GETTABLEKS                       R18 R18 K9 ["createElement"]
      120 GETUPVAL                         R19 8
      121 DUPTABLE                         R20 K26 [{"LayoutOrder", "tag", "onStateChanged", "stateLayer", "onCanvasPositionChanged", "onAbsoluteWindowSizeChanged", "scrollingFrameRef", "selection", "scroll", "testId"}]
      122 LOADN                            R21 1
      123 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      125 NEWTABLE                         R21 2 0
      127 GETUPVAL                         R22 1
      128 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      130 SETTABLEKS                       R22 R21 K12 ["size-full-0 auto-y"]
      132 GETUPVAL                         R23 1
      133 GETTABLEKS                       R23 R23 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      135 NOT                              R22 R23
      136 SETTABLEKS                       R22 R21 K27 ["size-full"]
      138 SETTABLEKS                       R21 R20 K10 ["tag"]
      140 GETUPVAL                         R22 1
      141 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      143 JUMPIFNOT                        R22 ; [+2]
      144 MOVE                             R21 R13
      145 JUMP                             ; [+1]
      146 LOADNIL                          R21
      147 SETTABLEKS                       R21 R20 K18 ["onStateChanged"]
      149 GETUPVAL                         R22 1
      150 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      152 JUMPIFNOT                        R22 ; [+7]
      153 DUPTABLE                         R21 K29 [{"affordance"}]
      154 GETUPVAL                         R22 9
      155 GETTABLEKS                       R22 R22 K30 ["None"]
      157 SETTABLEKS                       R22 R21 K28 ["affordance"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R21
      161 SETTABLEKS                       R21 R20 K19 ["stateLayer"]
      163 SETTABLEKS                       R9 R20 K20 ["onCanvasPositionChanged"]
      165 SETTABLEKS                       R9 R20 K21 ["onAbsoluteWindowSizeChanged"]
      167 SETTABLEKS                       R7 R20 K22 ["scrollingFrameRef"]
      169 GETUPVAL                         R22 1
      170 GETTABLEKS                       R22 R22 K31 ["FoundationTabsDisableScrollSelection"]
      172 JUMPIFNOT                        R22 ; [+5]
      173 DUPTABLE                         R21 K33 [{"Selectable"}]
      174 LOADB                            R22 0
      175 SETTABLEKS                       R22 R21 K32 ["Selectable"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R21
      179 SETTABLEKS                       R21 R20 K23 ["selection"]
      181 DUPTABLE                         R21 K38 [{"AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      182 GETIMPORT                        R22 K41 [Enum.AutomaticSize.Y]
      184 SETTABLEKS                       R22 R21 K34 ["AutomaticSize"]
      186 GETIMPORT                        R22 K43 [Enum.AutomaticSize.X]
      188 SETTABLEKS                       R22 R21 K35 ["AutomaticCanvasSize"]
      190 GETIMPORT                        R22 K44 [Enum.ScrollingDirection.X]
      192 SETTABLEKS                       R22 R21 K36 ["ScrollingDirection"]
      194 GETUPVAL                         R22 10
      195 GETTABLEKS                       R22 R22 K30 ["None"]
      197 SETTABLEKS                       R22 R21 K37 ["scrollBarVisibility"]
      199 SETTABLEKS                       R21 R20 K24 ["scroll"]
      201 GETUPVAL                         R22 1
      202 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      204 JUMPIFNOT                        R22 ; [+8]
      205 LOADK                            R22 K45 ["%*--scroll"]
      206 GETTABLEKS                       R24 R0 K25 ["testId"]
      208 NAMECALL                         R22 R22 K46 ["format"]
      210 CALL                             R22 2 1
      211 MOVE                             R21 R22
      212 JUMP                             ; [+1]
      213 LOADNIL                          R21
      214 SETTABLEKS                       R21 R20 K25 ["testId"]
      216 GETTABLEKS                       R21 R0 K47 ["children"]
      218 CALL                             R18 3 1
      219 SETTABLEKS                       R18 R17 K13 ["Scroll"]
      221 GETUPVAL                         R18 0
      222 GETTABLEKS                       R18 R18 K9 ["createElement"]
      224 GETUPVAL                         R19 11
      225 DUPTABLE                         R20 K56 [{"LayoutOrder", "Position", "size", "isStart", "ZIndex", "Visible", "onActivated", "gradient", "tag", "icon", "testId"}]
      226 LOADN                            R21 3
      227 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      229 GETIMPORT                        R21 K59 [UDim2.fromScale]
      231 LOADN                            R22 0
      232 LOADN                            R23 0
      233 CALL                             R21 2 1
      234 SETTABLEKS                       R21 R20 K48 ["Position"]
      236 GETTABLEKS                       R21 R0 K49 ["size"]
      238 SETTABLEKS                       R21 R20 K49 ["size"]
      240 LOADB                            R21 1
      241 SETTABLEKS                       R21 R20 K50 ["isStart"]
      243 LOADN                            R21 2
      244 SETTABLEKS                       R21 R20 K51 ["ZIndex"]
      246 GETUPVAL                         R22 1
      247 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      249 JUMPIFNOT                        R22 ; [+6]
      250 NEWCLOSURE                       R23 P7
      251 CAPTURE                          REF R5
      252 NAMECALL                         R21 R3 K60 ["map"]
      254 CALL                             R21 2 1
      255 JUMP                             ; [+1]
      256 MOVE                             R21 R3
      257 SETTABLEKS                       R21 R20 K52 ["Visible"]
      259 SETTABLEKS                       R11 R20 K53 ["onActivated"]
      261 GETUPVAL                         R21 12
      262 SETTABLEKS                       R21 R20 K54 ["gradient"]
      264 LOADK                            R21 K61 ["padding-right-small"]
      265 SETTABLEKS                       R21 R20 K10 ["tag"]
      267 LOADK                            R21 K62 ["chevron-large-left"]
      268 SETTABLEKS                       R21 R20 K55 ["icon"]
      270 LOADK                            R22 K63 ["%*--overflow-start"]
      271 GETTABLEKS                       R24 R0 K25 ["testId"]
      273 NAMECALL                         R22 R22 K46 ["format"]
      275 CALL                             R22 2 1
      276 MOVE                             R21 R22
      277 SETTABLEKS                       R21 R20 K25 ["testId"]
      279 CALL                             R18 2 1
      280 SETTABLEKS                       R18 R17 K14 ["OverflowStart"]
      282 GETUPVAL                         R18 0
      283 GETTABLEKS                       R18 R18 K9 ["createElement"]
      285 GETUPVAL                         R19 11
      286 DUPTABLE                         R20 K64 [{"LayoutOrder", "Position", "size", "ZIndex", "Visible", "onActivated", "gradient", "tag", "icon", "testId"}]
      287 LOADN                            R21 4
      288 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      290 GETIMPORT                        R21 K59 [UDim2.fromScale]
      292 LOADN                            R22 1
      293 LOADN                            R23 0
      294 CALL                             R21 2 1
      295 SETTABLEKS                       R21 R20 K48 ["Position"]
      297 GETTABLEKS                       R21 R0 K49 ["size"]
      299 SETTABLEKS                       R21 R20 K49 ["size"]
      301 LOADN                            R21 2
      302 SETTABLEKS                       R21 R20 K51 ["ZIndex"]
      304 GETUPVAL                         R22 1
      305 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      307 JUMPIFNOT                        R22 ; [+6]
      308 NEWCLOSURE                       R23 P8
      309 CAPTURE                          REF R5
      310 NAMECALL                         R21 R1 K60 ["map"]
      312 CALL                             R21 2 1
      313 JUMP                             ; [+1]
      314 MOVE                             R21 R1
      315 SETTABLEKS                       R21 R20 K52 ["Visible"]
      317 SETTABLEKS                       R12 R20 K53 ["onActivated"]
      319 GETUPVAL                         R21 13
      320 SETTABLEKS                       R21 R20 K54 ["gradient"]
      322 LOADK                            R21 K65 ["anchor-top-right padding-left-small"]
      323 SETTABLEKS                       R21 R20 K10 ["tag"]
      325 LOADK                            R21 K66 ["chevron-large-right"]
      326 SETTABLEKS                       R21 R20 K55 ["icon"]
      328 LOADK                            R22 K67 ["%*--overflow-end"]
      329 GETTABLEKS                       R24 R0 K25 ["testId"]
      331 NAMECALL                         R22 R22 K46 ["format"]
      333 CALL                             R22 2 1
      334 MOVE                             R21 R22
      335 SETTABLEKS                       R21 R20 K25 ["testId"]
      337 CALL                             R18 2 1
      338 SETTABLEKS                       R18 R17 K15 ["OverflowEnd"]
      340 CALL                             R14 3 -1
      341 CLOSEUPVALS                      R5
      342 RETURN                           R14 -1

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
