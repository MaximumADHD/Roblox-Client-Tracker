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
       14 DUPTABLE                         R5 K7 [{["duration"] = 0.2, ["easingStyle"]}]
       15 GETIMPORT                        R6 K11 [Enum.EasingStyle.Quad]
       17 SETTABLEKS                       R6 R5 K6 ["easingStyle"]
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

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
        1 LOADN                            R1 -90
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
      114 JUMPIFNOT                        R19 ; [+9]
      115 DUPTABLE                         R18 K14 [{["tag"] = "auto-y", ["Size"]}]
      116 GETIMPORT                        R19 K17 [UDim2.fromScale]
      118 LOADN                            R20 1
      119 LOADN                            R21 0
      120 CALL                             R19 2 1
      121 SETTABLEKS                       R19 R18 K13 ["Size"]
      123 JUMP                             ; [+1]
      124 DUPTABLE                         R18 K19 [{["tag"] = "size-full-0 auto-y"}]
      125 CALL                             R16 2 1
      126 DUPTABLE                         R17 K23 [{"Scroll", "OverflowStart", "OverflowEnd"}]
      127 GETUPVAL                         R18 0
      128 GETTABLEKS                       R18 R18 K9 ["createElement"]
      130 GETUPVAL                         R19 8
      131 DUPTABLE                         R20 K34 [{["LayoutOrder"] = 1, ["tag"], ["Size"], ["onStateChanged"], ["stateLayer"], ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"], ["scrollingFrameRef"], ["selection"], ["scroll"], ["testId"]}]
      132 GETUPVAL                         R22 1
      133 GETTABLEKS                       R22 R22 K10 ["FoundationTabsInlineSizeFull"]
      135 JUMPIFNOT                        R22 ; [+8]
      136 GETUPVAL                         R22 1
      137 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      139 JUMPIFNOT                        R22 ; [+2]
      140 LOADK                            R21 K12 ["auto-y"]
      141 JUMP                             ; [+15]
      142 LOADNIL                          R21
      143 JUMP                             ; [+13]
      144 NEWTABLE                         R21 2 0
      146 GETUPVAL                         R22 1
      147 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      149 SETTABLEKS                       R22 R21 K18 ["size-full-0 auto-y"]
      151 GETUPVAL                         R23 1
      152 GETTABLEKS                       R23 R23 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      154 NOT                              R22 R23
      155 SETTABLEKS                       R22 R21 K35 ["size-full"]
      157 SETTABLEKS                       R21 R20 K11 ["tag"]
      159 GETUPVAL                         R22 1
      160 GETTABLEKS                       R22 R22 K10 ["FoundationTabsInlineSizeFull"]
      162 JUMPIFNOT                        R22 ; [+16]
      163 GETUPVAL                         R22 1
      164 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      166 JUMPIFNOT                        R22 ; [+6]
      167 GETIMPORT                        R21 K17 [UDim2.fromScale]
      169 LOADN                            R22 1
      170 LOADN                            R23 0
      171 CALL                             R21 2 1
      172 JUMP                             ; [+7]
      173 GETIMPORT                        R21 K17 [UDim2.fromScale]
      175 LOADN                            R22 1
      176 LOADN                            R23 1
      177 CALL                             R21 2 1
      178 JUMP                             ; [+1]
      179 LOADNIL                          R21
      180 SETTABLEKS                       R21 R20 K13 ["Size"]
      182 GETUPVAL                         R22 1
      183 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      185 JUMPIFNOT                        R22 ; [+2]
      186 MOVE                             R21 R13
      187 JUMP                             ; [+1]
      188 LOADNIL                          R21
      189 SETTABLEKS                       R21 R20 K26 ["onStateChanged"]
      191 GETUPVAL                         R22 1
      192 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      194 JUMPIFNOT                        R22 ; [+7]
      195 DUPTABLE                         R21 K37 [{"affordance"}]
      196 GETUPVAL                         R22 9
      197 GETTABLEKS                       R22 R22 K38 ["None"]
      199 SETTABLEKS                       R22 R21 K36 ["affordance"]
      201 JUMP                             ; [+1]
      202 LOADNIL                          R21
      203 SETTABLEKS                       R21 R20 K27 ["stateLayer"]
      205 SETTABLEKS                       R9 R20 K28 ["onCanvasPositionChanged"]
      207 SETTABLEKS                       R9 R20 K29 ["onAbsoluteWindowSizeChanged"]
      209 SETTABLEKS                       R7 R20 K30 ["scrollingFrameRef"]
      211 DUPTABLE                         R21 K41 [{["Selectable"] = False}]
      212 SETTABLEKS                       R21 R20 K31 ["selection"]
      214 DUPTABLE                         R21 K46 [{"AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      215 GETIMPORT                        R22 K49 [Enum.AutomaticSize.Y]
      217 SETTABLEKS                       R22 R21 K42 ["AutomaticSize"]
      219 GETIMPORT                        R22 K51 [Enum.AutomaticSize.X]
      221 SETTABLEKS                       R22 R21 K43 ["AutomaticCanvasSize"]
      223 GETIMPORT                        R22 K52 [Enum.ScrollingDirection.X]
      225 SETTABLEKS                       R22 R21 K44 ["ScrollingDirection"]
      227 GETUPVAL                         R22 10
      228 GETTABLEKS                       R22 R22 K38 ["None"]
      230 SETTABLEKS                       R22 R21 K45 ["scrollBarVisibility"]
      232 SETTABLEKS                       R21 R20 K32 ["scroll"]
      234 GETUPVAL                         R22 1
      235 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      237 JUMPIFNOT                        R22 ; [+8]
      238 LOADK                            R22 K53 ["%*--scroll"]
      239 GETTABLEKS                       R24 R0 K33 ["testId"]
      241 NAMECALL                         R22 R22 K54 ["format"]
      243 CALL                             R22 2 1
      244 MOVE                             R21 R22
      245 JUMP                             ; [+1]
      246 LOADNIL                          R21
      247 SETTABLEKS                       R21 R20 K33 ["testId"]
      249 GETTABLEKS                       R21 R0 K55 ["children"]
      251 CALL                             R18 3 1
      252 SETTABLEKS                       R18 R17 K20 ["Scroll"]
      254 GETUPVAL                         R18 0
      255 GETTABLEKS                       R18 R18 K9 ["createElement"]
      257 GETUPVAL                         R19 11
      258 DUPTABLE                         R20 K69 [{["LayoutOrder"] = 3, ["Position"], ["size"], ["isStart"] = True, ["ZIndex"] = 2, ["Visible"], ["onActivated"], ["gradient"], ["tag"] = "padding-right-small", ["icon"] = "chevron-large-left", ["testId"]}]
      259 GETIMPORT                        R21 K17 [UDim2.fromScale]
      261 LOADN                            R22 0
      262 LOADN                            R23 0
      263 CALL                             R21 2 1
      264 SETTABLEKS                       R21 R20 K57 ["Position"]
      266 GETTABLEKS                       R21 R0 K58 ["size"]
      268 SETTABLEKS                       R21 R20 K58 ["size"]
      270 GETUPVAL                         R22 1
      271 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      273 JUMPIFNOT                        R22 ; [+6]
      274 NEWCLOSURE                       R23 P7
      275 CAPTURE                          REF R5
      276 NAMECALL                         R21 R3 K70 ["map"]
      278 CALL                             R21 2 1
      279 JUMP                             ; [+1]
      280 MOVE                             R21 R3
      281 SETTABLEKS                       R21 R20 K63 ["Visible"]
      283 SETTABLEKS                       R11 R20 K64 ["onActivated"]
      285 GETUPVAL                         R21 12
      286 SETTABLEKS                       R21 R20 K65 ["gradient"]
      288 LOADK                            R22 K71 ["%*--overflow-start"]
      289 GETTABLEKS                       R24 R0 K33 ["testId"]
      291 NAMECALL                         R22 R22 K54 ["format"]
      293 CALL                             R22 2 1
      294 MOVE                             R21 R22
      295 SETTABLEKS                       R21 R20 K33 ["testId"]
      297 CALL                             R18 2 1
      298 SETTABLEKS                       R18 R17 K21 ["OverflowStart"]
      300 GETUPVAL                         R18 0
      301 GETTABLEKS                       R18 R18 K9 ["createElement"]
      303 GETUPVAL                         R19 11
      304 DUPTABLE                         R20 K75 [{["LayoutOrder"] = 4, ["Position"], ["size"], ["ZIndex"] = 2, ["Visible"], ["onActivated"], ["gradient"], ["tag"] = "anchor-top-right padding-left-small", ["icon"] = "chevron-large-right", ["testId"]}]
      305 GETIMPORT                        R21 K17 [UDim2.fromScale]
      307 LOADN                            R22 1
      308 LOADN                            R23 0
      309 CALL                             R21 2 1
      310 SETTABLEKS                       R21 R20 K57 ["Position"]
      312 GETTABLEKS                       R21 R0 K58 ["size"]
      314 SETTABLEKS                       R21 R20 K58 ["size"]
      316 GETUPVAL                         R22 1
      317 GETTABLEKS                       R22 R22 K1 ["FoundationTabsNavArrowsOnlyOnHover"]
      319 JUMPIFNOT                        R22 ; [+6]
      320 NEWCLOSURE                       R23 P8
      321 CAPTURE                          REF R5
      322 NAMECALL                         R21 R1 K70 ["map"]
      324 CALL                             R21 2 1
      325 JUMP                             ; [+1]
      326 MOVE                             R21 R1
      327 SETTABLEKS                       R21 R20 K63 ["Visible"]
      329 SETTABLEKS                       R12 R20 K64 ["onActivated"]
      331 GETUPVAL                         R21 13
      332 SETTABLEKS                       R21 R20 K65 ["gradient"]
      334 LOADK                            R22 K76 ["%*--overflow-end"]
      335 GETTABLEKS                       R24 R0 K33 ["testId"]
      337 NAMECALL                         R22 R22 K54 ["format"]
      339 CALL                             R22 2 1
      340 MOVE                             R21 R22
      341 SETTABLEKS                       R21 R20 K33 ["testId"]
      343 CALL                             R18 2 1
      344 SETTABLEKS                       R18 R17 K22 ["OverflowEnd"]
      346 CALL                             R14 3 -1
      347 CLOSEUPVALS                      R5
      348 RETURN                           R14 -1

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
