PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Enums"]
        4 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R3 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 2
        6 GETUPVAL                         R4 2
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R5 R5 K1 ["Hooks"]
       11 GETTABLEKS                       R5 R5 K2 ["useTokens"]
       13 CALL                             R5 0 1
       14 GETUPVAL                         R6 4
       15 GETTABLEKS                       R6 R6 K3 ["useState"]
       17 LOADB                            R7 0
       18 CALL                             R6 1 2
       19 GETUPVAL                         R8 4
       20 GETTABLEKS                       R8 R8 K3 ["useState"]
       22 LOADB                            R9 0
       23 CALL                             R8 1 2
       24 GETUPVAL                         R10 4
       25 GETTABLEKS                       R10 R10 K4 ["useRef"]
       27 LOADNIL                          R11
       28 CALL                             R10 1 1
       29 GETUPVAL                         R11 5
       30 MOVE                             R12 R10
       31 LOADN                            R13 -10
       32 LOADB                            R14 1
       33 CALL                             R11 3 1
       34 GETUPVAL                         R13 6
       35 CALL                             R13 0 1
       36 JUMPIFNOT                        R13 ; [+2]
       37 MOVE                             R12 R8
       38 JUMP                             ; [+1]
       39 OR                               R12 R6 R11
       40 GETUPVAL                         R13 4
       41 GETTABLEKS                       R13 R13 K5 ["createElement"]
       43 GETUPVAL                         R14 3
       44 GETTABLEKS                       R14 R14 K6 ["Popover"]
       46 GETTABLEKS                       R14 R14 K7 ["Root"]
       48 DUPTABLE                         R15 K9 [{"isOpen"}]
       49 SETTABLEKS                       R12 R15 K8 ["isOpen"]
       51 DUPTABLE                         R16 K12 [{"Anchor", "Content"}]
       52 GETUPVAL                         R17 4
       53 GETTABLEKS                       R17 R17 K5 ["createElement"]
       55 GETUPVAL                         R18 3
       56 GETTABLEKS                       R18 R18 K6 ["Popover"]
       58 GETTABLEKS                       R18 R18 K10 ["Anchor"]
       60 GETUPVAL                         R19 7
       61 GETTABLEKS                       R19 R19 K13 ["join"]
       63 DUPTABLE                         R20 K15 [{"LayoutOrder"}]
       64 GETTABLEKS                       R21 R0 K14 ["LayoutOrder"]
       66 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
       68 GETTABLEKS                       R22 R0 K16 ["IsGrid"]
       70 JUMPIFNOT                        R22 ; [+23]
       71 DUPTABLE                         R21 K21 [{["ZIndex"] = 4, ["AnchorPoint"], ["Position"]}]
       72 GETIMPORT                        R22 K24 [Vector2.new]
       74 LOADN                            R23 0
       75 LOADN                            R24 1
       76 CALL                             R22 2 1
       77 SETTABLEKS                       R22 R21 K19 ["AnchorPoint"]
       79 GETIMPORT                        R22 K26 [UDim2.new]
       81 LOADN                            R23 0
       82 GETUPVAL                         R24 8
       83 GETTABLEKS                       R24 R24 K27 ["GridCellIconPadding"]
       85 LOADN                            R25 1
       86 GETUPVAL                         R27 8
       87 GETTABLEKS                       R27 R27 K27 ["GridCellIconPadding"]
       89 MINUS                            R26 R27
       90 CALL                             R22 4 1
       91 SETTABLEKS                       R22 R21 K20 ["Position"]
       93 JUMP                             ; [+2]
       94 NEWTABLE                         R21 0 0
       96 CALL                             R19 2 1
       97 GETUPVAL                         R21 6
       98 CALL                             R21 0 1
       99 JUMPIFNOT                        R21 ; [+72]
      100 GETUPVAL                         R20 4
      101 GETTABLEKS                       R20 R20 K5 ["createElement"]
      103 GETUPVAL                         R21 3
      104 GETTABLEKS                       R21 R21 K28 ["Tooltip"]
      106 DUPTABLE                         R22 K30 [{"title"}]
      107 LOADK                            R25 K31 ["AssetState"]
      108 LOADK                            R26 K32 ["Moderated"]
      109 NAMECALL                         R23 R1 K33 ["getText"]
      111 CALL                             R23 3 1
      112 SETTABLEKS                       R23 R22 K29 ["title"]
      114 GETUPVAL                         R23 4
      115 GETTABLEKS                       R23 R23 K5 ["createElement"]
      117 GETUPVAL                         R24 3
      118 GETTABLEKS                       R24 R24 K34 ["View"]
      120 DUPTABLE                         R25 K38 [{["onActivated"], ["tag"] = "auto-xy padding-xsmall radius-small"}]
      121 NEWCLOSURE                       R26 P0
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R8
      124 SETTABLEKS                       R26 R25 K35 ["onActivated"]
      126 GETUPVAL                         R26 4
      127 GETTABLEKS                       R26 R26 K5 ["createElement"]
      129 GETUPVAL                         R27 3
      130 GETTABLEKS                       R27 R27 K39 ["Icon"]
      132 DUPTABLE                         R28 K46 [{["name"], ["size"], ["style"], ["variant"], ["testId"] = "asset-state-icon"}]
      133 GETUPVAL                         R29 3
      134 GETTABLEKS                       R29 R29 K47 ["Enums"]
      136 GETTABLEKS                       R29 R29 K48 ["IconName"]
      138 GETTABLEKS                       R29 R29 K49 ["TriangleExclamation"]
      140 SETTABLEKS                       R29 R28 K40 ["name"]
      142 GETUPVAL                         R29 3
      143 GETTABLEKS                       R29 R29 K47 ["Enums"]
      145 GETTABLEKS                       R29 R29 K50 ["IconSize"]
      147 GETTABLEKS                       R29 R29 K51 ["Small"]
      149 SETTABLEKS                       R29 R28 K41 ["size"]
      151 GETTABLEKS                       R29 R5 K52 ["Color"]
      153 GETTABLEKS                       R29 R29 K53 ["System"]
      155 GETTABLEKS                       R29 R29 K54 ["Warning"]
      157 SETTABLEKS                       R29 R28 K42 ["style"]
      159 GETUPVAL                         R29 3
      160 GETTABLEKS                       R29 R29 K47 ["Enums"]
      162 GETTABLEKS                       R29 R29 K55 ["IconVariant"]
      164 GETTABLEKS                       R29 R29 K56 ["Filled"]
      166 SETTABLEKS                       R29 R28 K43 ["variant"]
      168 CALL                             R26 2 -1
      169 CALL                             R23 -1 -1
      170 CALL                             R20 -1 1
      171 JUMP                             ; [+68]
      172 GETUPVAL                         R20 4
      173 GETTABLEKS                       R20 R20 K5 ["createElement"]
      175 GETUPVAL                         R21 3
      176 GETTABLEKS                       R21 R21 K34 ["View"]
      178 DUPTABLE                         R22 K60 [{["onStateChanged"], ["stateLayer"], ["tag"] = "auto-xy"}]
      179 NEWCLOSURE                       R23 P1
      180 CAPTURE                          VAL R7
      181 CAPTURE                          UPVAL U3
      182 SETTABLEKS                       R23 R22 K57 ["onStateChanged"]
      184 DUPTABLE                         R23 K62 [{"affordance"}]
      185 GETUPVAL                         R24 3
      186 GETTABLEKS                       R24 R24 K47 ["Enums"]
      188 GETTABLEKS                       R24 R24 K63 ["StateLayerAffordance"]
      190 GETTABLEKS                       R24 R24 K64 ["None"]
      192 SETTABLEKS                       R24 R23 K61 ["affordance"]
      194 SETTABLEKS                       R23 R22 K58 ["stateLayer"]
      196 GETUPVAL                         R23 4
      197 GETTABLEKS                       R23 R23 K5 ["createElement"]
      199 GETUPVAL                         R24 3
      200 GETTABLEKS                       R24 R24 K39 ["Icon"]
      202 DUPTABLE                         R25 K46 [{["name"], ["size"], ["style"], ["variant"], ["testId"] = "asset-state-icon"}]
      203 GETUPVAL                         R26 3
      204 GETTABLEKS                       R26 R26 K47 ["Enums"]
      206 GETTABLEKS                       R26 R26 K48 ["IconName"]
      208 GETTABLEKS                       R26 R26 K49 ["TriangleExclamation"]
      210 SETTABLEKS                       R26 R25 K40 ["name"]
      212 GETUPVAL                         R26 3
      213 GETTABLEKS                       R26 R26 K47 ["Enums"]
      215 GETTABLEKS                       R26 R26 K50 ["IconSize"]
      217 GETTABLEKS                       R26 R26 K51 ["Small"]
      219 SETTABLEKS                       R26 R25 K41 ["size"]
      221 GETTABLEKS                       R26 R5 K52 ["Color"]
      223 GETTABLEKS                       R26 R26 K53 ["System"]
      225 GETTABLEKS                       R26 R26 K54 ["Warning"]
      227 SETTABLEKS                       R26 R25 K42 ["style"]
      229 GETUPVAL                         R26 3
      230 GETTABLEKS                       R26 R26 K47 ["Enums"]
      232 GETTABLEKS                       R26 R26 K55 ["IconVariant"]
      234 GETTABLEKS                       R26 R26 K56 ["Filled"]
      236 SETTABLEKS                       R26 R25 K43 ["variant"]
      238 CALL                             R23 2 -1
      239 CALL                             R20 -1 1
      240 CALL                             R17 3 1
      241 SETTABLEKS                       R17 R16 K10 ["Anchor"]
      243 GETUPVAL                         R17 4
      244 GETTABLEKS                       R17 R17 K5 ["createElement"]
      246 GETUPVAL                         R18 3
      247 GETTABLEKS                       R18 R18 K6 ["Popover"]
      249 GETTABLEKS                       R18 R18 K11 ["Content"]
      251 DUPTABLE                         R19 K70 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"]}]
      252 DUPTABLE                         R20 K74 [{["position"], ["offset"] = 5}]
      253 GETUPVAL                         R22 9
      254 CALL                             R22 0 1
      255 JUMPIF                           R22 ; [+1]
      256 JUMPIF                           R4 ; [+8]
      257 GETUPVAL                         R21 3
      258 GETTABLEKS                       R21 R21 K47 ["Enums"]
      260 GETTABLEKS                       R21 R21 K75 ["PopoverSide"]
      262 GETTABLEKS                       R21 R21 K76 ["Right"]
      264 JUMP                             ; [+7]
      265 GETUPVAL                         R21 3
      266 GETTABLEKS                       R21 R21 K47 ["Enums"]
      268 GETTABLEKS                       R21 R21 K75 ["PopoverSide"]
      270 GETTABLEKS                       R21 R21 K77 ["Bottom"]
      272 SETTABLEKS                       R21 R20 K71 ["position"]
      274 SETTABLEKS                       R20 R19 K65 ["side"]
      276 GETUPVAL                         R20 3
      277 GETTABLEKS                       R20 R20 K47 ["Enums"]
      279 GETTABLEKS                       R20 R20 K78 ["PopoverAlign"]
      281 GETTABLEKS                       R20 R20 K79 ["Center"]
      283 SETTABLEKS                       R20 R19 K66 ["align"]
      285 GETUPVAL                         R21 6
      286 CALL                             R21 0 1
      287 JUMPIFNOT                        R21 ; [+3]
      288 NEWCLOSURE                       R20 P2
      289 CAPTURE                          VAL R9
      290 JUMP                             ; [+1]
      291 LOADNIL                          R20
      292 SETTABLEKS                       R20 R19 K69 ["onPressedOutside"]
      294 GETUPVAL                         R20 4
      295 GETTABLEKS                       R20 R20 K5 ["createElement"]
      297 GETUPVAL                         R21 10
      298 DUPTABLE                         R22 K84 [{"FrameRef", "AssetId", "AssetPath", "MaxWidth"}]
      299 SETTABLEKS                       R10 R22 K80 ["FrameRef"]
      301 GETTABLEKS                       R23 R0 K81 ["AssetId"]
      303 SETTABLEKS                       R23 R22 K81 ["AssetId"]
      305 GETTABLEKS                       R23 R0 K82 ["AssetPath"]
      307 SETTABLEKS                       R23 R22 K82 ["AssetPath"]
      309 SETTABLEKS                       R2 R22 K83 ["MaxWidth"]
      311 CALL                             R20 2 -1
      312 CALL                             R17 -1 1
      313 SETTABLEKS                       R17 R16 K11 ["Content"]
      315 CALL                             R13 3 -1
      316 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Hooks"]
       45 GETTABLEKS                       R8 R8 K15 ["useItemHovered"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K13 ["Src"]
       52 GETTABLEKS                       R9 R9 K14 ["Hooks"]
       54 GETTABLEKS                       R9 R9 K16 ["useIsCompact"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K13 ["Src"]
       61 GETTABLEKS                       R10 R10 K14 ["Hooks"]
       63 GETTABLEKS                       R10 R10 K17 ["usePluginSize"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K13 ["Src"]
       70 GETTABLEKS                       R11 R11 K18 ["Resources"]
       72 GETTABLEKS                       R11 R11 K19 ["StyleConstants"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K13 ["Src"]
       79 GETTABLEKS                       R12 R12 K20 ["Flags"]
       81 GETTABLEKS                       R12 R12 K21 ["getFFlagAmrUseQWidgetPopovers"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K13 ["Src"]
       88 GETTABLEKS                       R13 R13 K20 ["Flags"]
       90 GETTABLEKS                       R13 R13 K22 ["getFFlagAmrAssetStateOnClick"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETIMPORT                        R14 K1 [script]
       97 GETTABLEKS                       R14 R14 K23 ["Details"]
       99 CALL                             R13 1 1
      100 DUPCLOSURE                       R14 K24 [PROTO_3]
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R13
      112 RETURN                           R14 1
