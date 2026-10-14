PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
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
       14 LOADNIL                          R6
       15 NEWTABLE                         R7 0 0
       17 GETUPVAL                         R8 4
       18 CALL                             R8 0 1
       19 JUMPIFNOT                        R8 ; [+66]
       20 GETTABLEKS                       R8 R0 K3 ["IsModerated"]
       22 JUMPIFNOT                        R8 ; [+30]
       23 DUPTABLE                         R8 K7 [{"name", "style", "variant"}]
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K8 ["Enums"]
       27 GETTABLEKS                       R9 R9 K9 ["IconName"]
       29 GETTABLEKS                       R9 R9 K10 ["TriangleExclamation"]
       31 SETTABLEKS                       R9 R8 K4 ["name"]
       33 GETTABLEKS                       R9 R5 K11 ["Color"]
       35 GETTABLEKS                       R9 R9 K12 ["System"]
       37 GETTABLEKS                       R9 R9 K13 ["Warning"]
       39 SETTABLEKS                       R9 R8 K5 ["style"]
       41 GETUPVAL                         R9 3
       42 GETTABLEKS                       R9 R9 K8 ["Enums"]
       44 GETTABLEKS                       R9 R9 K14 ["IconVariant"]
       46 GETTABLEKS                       R9 R9 K15 ["Filled"]
       48 SETTABLEKS                       R9 R8 K6 ["variant"]
       50 MOVE                             R7 R8
       51 LOADK                            R6 K16 ["Restricted"]
       52 JUMP                             ; [+34]
       53 GETTABLEKS                       R8 R0 K17 ["IsDraft"]
       55 JUMPIFNOT                        R8 ; [+31]
       56 DUPTABLE                         R8 K7 [{"name", "style", "variant"}]
       57 GETUPVAL                         R9 3
       58 GETTABLEKS                       R9 R9 K8 ["Enums"]
       60 GETTABLEKS                       R9 R9 K9 ["IconName"]
       62 GETTABLEKS                       R9 R9 K18 ["ClockDashed"]
       64 SETTABLEKS                       R9 R8 K4 ["name"]
       66 GETTABLEKS                       R9 R5 K11 ["Color"]
       68 GETTABLEKS                       R9 R9 K19 ["Content"]
       70 GETTABLEKS                       R9 R9 K20 ["Muted"]
       72 SETTABLEKS                       R9 R8 K5 ["style"]
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R9 R9 K8 ["Enums"]
       77 GETTABLEKS                       R9 R9 K14 ["IconVariant"]
       79 GETTABLEKS                       R9 R9 K15 ["Filled"]
       81 SETTABLEKS                       R9 R8 K6 ["variant"]
       83 MOVE                             R7 R8
       84 LOADK                            R6 K21 ["Draft"]
       85 JUMP                             ; [+1]
       86 LOADK                            R6 K16 ["Restricted"]
       87 GETUPVAL                         R8 5
       88 GETTABLEKS                       R8 R8 K22 ["useState"]
       90 LOADB                            R9 0
       91 CALL                             R8 1 2
       92 GETUPVAL                         R10 5
       93 GETTABLEKS                       R10 R10 K23 ["useRef"]
       95 LOADNIL                          R11
       96 CALL                             R10 1 1
       97 GETUPVAL                         R12 4
       98 CALL                             R12 0 1
       99 JUMPIFNOT                        R12 ; [+23]
      100 GETUPVAL                         R11 5
      101 GETTABLEKS                       R11 R11 K24 ["createElement"]
      103 GETUPVAL                         R12 3
      104 GETTABLEKS                       R12 R12 K25 ["Icon"]
      106 GETUPVAL                         R13 6
      107 GETTABLEKS                       R13 R13 K26 ["join"]
      109 DUPTABLE                         R14 K30 [{["size"], ["testId"] = "asset-status-icon"}]
      110 GETUPVAL                         R15 3
      111 GETTABLEKS                       R15 R15 K8 ["Enums"]
      113 GETTABLEKS                       R15 R15 K31 ["IconSize"]
      115 GETTABLEKS                       R15 R15 K32 ["XSmall"]
      117 SETTABLEKS                       R15 R14 K27 ["size"]
      119 MOVE                             R15 R7
      120 CALL                             R13 2 -1
      121 CALL                             R11 -1 1
      122 JUMP                             ; [+43]
      123 GETUPVAL                         R11 5
      124 GETTABLEKS                       R11 R11 K24 ["createElement"]
      126 GETUPVAL                         R12 3
      127 GETTABLEKS                       R12 R12 K25 ["Icon"]
      129 DUPTABLE                         R13 K33 [{["name"], ["size"], ["style"], ["variant"], ["testId"] = "asset-status-icon"}]
      130 GETUPVAL                         R14 3
      131 GETTABLEKS                       R14 R14 K8 ["Enums"]
      133 GETTABLEKS                       R14 R14 K9 ["IconName"]
      135 GETTABLEKS                       R14 R14 K10 ["TriangleExclamation"]
      137 SETTABLEKS                       R14 R13 K4 ["name"]
      139 GETUPVAL                         R14 3
      140 GETTABLEKS                       R14 R14 K8 ["Enums"]
      142 GETTABLEKS                       R14 R14 K31 ["IconSize"]
      144 GETTABLEKS                       R14 R14 K34 ["Small"]
      146 SETTABLEKS                       R14 R13 K27 ["size"]
      148 GETTABLEKS                       R14 R5 K11 ["Color"]
      150 GETTABLEKS                       R14 R14 K12 ["System"]
      152 GETTABLEKS                       R14 R14 K13 ["Warning"]
      154 SETTABLEKS                       R14 R13 K5 ["style"]
      156 GETUPVAL                         R14 3
      157 GETTABLEKS                       R14 R14 K8 ["Enums"]
      159 GETTABLEKS                       R14 R14 K14 ["IconVariant"]
      161 GETTABLEKS                       R14 R14 K15 ["Filled"]
      163 SETTABLEKS                       R14 R13 K6 ["variant"]
      165 CALL                             R11 2 1
      166 GETUPVAL                         R12 5
      167 GETTABLEKS                       R12 R12 K24 ["createElement"]
      169 GETUPVAL                         R13 3
      170 GETTABLEKS                       R13 R13 K35 ["Popover"]
      172 GETTABLEKS                       R13 R13 K36 ["Root"]
      174 DUPTABLE                         R14 K38 [{"isOpen"}]
      175 SETTABLEKS                       R8 R14 K37 ["isOpen"]
      177 DUPTABLE                         R15 K40 [{"Anchor", "Content"}]
      178 GETUPVAL                         R16 5
      179 GETTABLEKS                       R16 R16 K24 ["createElement"]
      181 GETUPVAL                         R17 3
      182 GETTABLEKS                       R17 R17 K35 ["Popover"]
      184 GETTABLEKS                       R17 R17 K39 ["Anchor"]
      186 GETUPVAL                         R18 6
      187 GETTABLEKS                       R18 R18 K26 ["join"]
      189 DUPTABLE                         R19 K42 [{"LayoutOrder"}]
      190 GETTABLEKS                       R20 R0 K41 ["LayoutOrder"]
      192 SETTABLEKS                       R20 R19 K41 ["LayoutOrder"]
      194 GETTABLEKS                       R21 R0 K43 ["IsGrid"]
      196 JUMPIFNOT                        R21 ; [+23]
      197 DUPTABLE                         R20 K48 [{["ZIndex"] = 4, ["AnchorPoint"], ["Position"]}]
      198 GETIMPORT                        R21 K51 [Vector2.new]
      200 LOADN                            R22 0
      201 LOADN                            R23 1
      202 CALL                             R21 2 1
      203 SETTABLEKS                       R21 R20 K46 ["AnchorPoint"]
      205 GETIMPORT                        R21 K53 [UDim2.new]
      207 LOADN                            R22 0
      208 GETUPVAL                         R23 7
      209 GETTABLEKS                       R23 R23 K54 ["GridCellIconPadding"]
      211 LOADN                            R24 1
      212 GETUPVAL                         R26 7
      213 GETTABLEKS                       R26 R26 K54 ["GridCellIconPadding"]
      215 MINUS                            R25 R26
      216 CALL                             R21 4 1
      217 SETTABLEKS                       R21 R20 K47 ["Position"]
      219 JUMP                             ; [+2]
      220 NEWTABLE                         R20 0 0
      222 CALL                             R18 2 1
      223 GETUPVAL                         R19 5
      224 GETTABLEKS                       R19 R19 K24 ["createElement"]
      226 GETUPVAL                         R20 3
      227 GETTABLEKS                       R20 R20 K55 ["Tooltip"]
      229 DUPTABLE                         R21 K57 [{"title"}]
      230 LOADK                            R24 K58 ["AssetStatus"]
      231 MOVE                             R25 R6
      232 NAMECALL                         R22 R1 K59 ["getText"]
      234 CALL                             R22 3 1
      235 SETTABLEKS                       R22 R21 K56 ["title"]
      237 GETUPVAL                         R22 5
      238 GETTABLEKS                       R22 R22 K24 ["createElement"]
      240 GETUPVAL                         R23 3
      241 GETTABLEKS                       R23 R23 K60 ["View"]
      243 DUPTABLE                         R24 K65 [{["onActivated"], ["stateLayer"], ["tag"] = "auto-xy padding-xsmall radius-small"}]
      244 NEWCLOSURE                       R25 P0
      245 CAPTURE                          VAL R9
      246 CAPTURE                          VAL R8
      247 SETTABLEKS                       R25 R24 K61 ["onActivated"]
      249 DUPTABLE                         R25 K67 [{"affordance"}]
      250 GETUPVAL                         R26 3
      251 GETTABLEKS                       R26 R26 K8 ["Enums"]
      253 GETTABLEKS                       R26 R26 K68 ["StateLayerAffordance"]
      255 GETTABLEKS                       R26 R26 K69 ["None"]
      257 SETTABLEKS                       R26 R25 K66 ["affordance"]
      259 SETTABLEKS                       R25 R24 K62 ["stateLayer"]
      261 MOVE                             R25 R11
      262 CALL                             R22 3 -1
      263 CALL                             R19 -1 -1
      264 CALL                             R16 -1 1
      265 SETTABLEKS                       R16 R15 K39 ["Anchor"]
      267 GETTABLEKS                       R17 R0 K3 ["IsModerated"]
      269 JUMPIFNOT                        R17 ; [+66]
      270 GETUPVAL                         R16 5
      271 GETTABLEKS                       R16 R16 K24 ["createElement"]
      273 GETUPVAL                         R17 3
      274 GETTABLEKS                       R17 R17 K35 ["Popover"]
      276 GETTABLEKS                       R17 R17 K19 ["Content"]
      278 DUPTABLE                         R18 K75 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"]}]
      279 DUPTABLE                         R19 K79 [{["position"], ["offset"] = 5}]
      280 GETUPVAL                         R21 8
      281 CALL                             R21 0 1
      282 JUMPIF                           R21 ; [+1]
      283 JUMPIF                           R4 ; [+8]
      284 GETUPVAL                         R20 3
      285 GETTABLEKS                       R20 R20 K8 ["Enums"]
      287 GETTABLEKS                       R20 R20 K80 ["PopoverSide"]
      289 GETTABLEKS                       R20 R20 K81 ["Right"]
      291 JUMP                             ; [+7]
      292 GETUPVAL                         R20 3
      293 GETTABLEKS                       R20 R20 K8 ["Enums"]
      295 GETTABLEKS                       R20 R20 K80 ["PopoverSide"]
      297 GETTABLEKS                       R20 R20 K82 ["Bottom"]
      299 SETTABLEKS                       R20 R19 K76 ["position"]
      301 SETTABLEKS                       R19 R18 K70 ["side"]
      303 GETUPVAL                         R19 3
      304 GETTABLEKS                       R19 R19 K8 ["Enums"]
      306 GETTABLEKS                       R19 R19 K83 ["PopoverAlign"]
      308 GETTABLEKS                       R19 R19 K84 ["Center"]
      310 SETTABLEKS                       R19 R18 K71 ["align"]
      312 NEWCLOSURE                       R19 P1
      313 CAPTURE                          VAL R9
      314 SETTABLEKS                       R19 R18 K74 ["onPressedOutside"]
      316 GETUPVAL                         R19 5
      317 GETTABLEKS                       R19 R19 K24 ["createElement"]
      319 GETUPVAL                         R20 9
      320 DUPTABLE                         R21 K89 [{"FrameRef", "AssetId", "AssetPath", "MaxWidth"}]
      321 SETTABLEKS                       R10 R21 K85 ["FrameRef"]
      323 GETTABLEKS                       R22 R0 K86 ["AssetId"]
      325 SETTABLEKS                       R22 R21 K86 ["AssetId"]
      327 GETTABLEKS                       R22 R0 K87 ["AssetPath"]
      329 SETTABLEKS                       R22 R21 K87 ["AssetPath"]
      331 SETTABLEKS                       R2 R21 K88 ["MaxWidth"]
      333 CALL                             R19 2 -1
      334 CALL                             R16 -1 1
      335 JUMP                             ; [+1]
      336 LOADNIL                          R16
      337 SETTABLEKS                       R16 R15 K19 ["Content"]
      339 CALL                             R12 3 -1
      340 RETURN                           R12 -1

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
       45 GETTABLEKS                       R8 R8 K15 ["useIsCompact"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K13 ["Src"]
       52 GETTABLEKS                       R9 R9 K14 ["Hooks"]
       54 GETTABLEKS                       R9 R9 K16 ["usePluginSize"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K13 ["Src"]
       61 GETTABLEKS                       R10 R10 K17 ["Resources"]
       63 GETTABLEKS                       R10 R10 K18 ["StyleConstants"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K13 ["Src"]
       70 GETTABLEKS                       R11 R11 K19 ["Flags"]
       72 GETTABLEKS                       R11 R11 K20 ["getFFlagAmrUseQWidgetPopovers"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K13 ["Src"]
       79 GETTABLEKS                       R12 R12 K19 ["Flags"]
       81 GETTABLEKS                       R12 R12 K21 ["getFFlagAmrEnableDraftStatus"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETIMPORT                        R13 K1 [script]
       88 GETTABLEKS                       R13 R13 K22 ["Details"]
       90 CALL                             R12 1 1
       91 DUPCLOSURE                       R13 K23 [PROTO_2]
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R12
      102 RETURN                           R13 1
