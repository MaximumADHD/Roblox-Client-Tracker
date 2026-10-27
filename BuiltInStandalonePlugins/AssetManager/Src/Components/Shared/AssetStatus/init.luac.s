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
       19 JUMPIFNOT                        R8 ; [+58]
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
       52 JUMP                             ; [+26]
       53 GETTABLEKS                       R8 R0 K17 ["IsDraft"]
       55 JUMPIFNOT                        R8 ; [+23]
       56 DUPTABLE                         R8 K18 [{"name", "variant"}]
       57 GETUPVAL                         R9 3
       58 GETTABLEKS                       R9 R9 K8 ["Enums"]
       60 GETTABLEKS                       R9 R9 K9 ["IconName"]
       62 GETTABLEKS                       R9 R9 K19 ["Pencil"]
       64 SETTABLEKS                       R9 R8 K4 ["name"]
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R9 R9 K8 ["Enums"]
       69 GETTABLEKS                       R9 R9 K14 ["IconVariant"]
       71 GETTABLEKS                       R9 R9 K15 ["Filled"]
       73 SETTABLEKS                       R9 R8 K6 ["variant"]
       75 MOVE                             R7 R8
       76 LOADK                            R6 K20 ["Draft"]
       77 JUMP                             ; [+1]
       78 LOADK                            R6 K16 ["Restricted"]
       79 GETUPVAL                         R8 5
       80 GETTABLEKS                       R8 R8 K21 ["useState"]
       82 LOADB                            R9 0
       83 CALL                             R8 1 2
       84 GETUPVAL                         R10 5
       85 GETTABLEKS                       R10 R10 K22 ["useRef"]
       87 LOADNIL                          R11
       88 CALL                             R10 1 1
       89 GETUPVAL                         R12 4
       90 CALL                             R12 0 1
       91 JUMPIFNOT                        R12 ; [+23]
       92 GETUPVAL                         R11 5
       93 GETTABLEKS                       R11 R11 K23 ["createElement"]
       95 GETUPVAL                         R12 3
       96 GETTABLEKS                       R12 R12 K24 ["Icon"]
       98 GETUPVAL                         R13 6
       99 GETTABLEKS                       R13 R13 K25 ["join"]
      101 DUPTABLE                         R14 K29 [{["size"], ["testId"] = "asset-status-icon"}]
      102 GETUPVAL                         R15 3
      103 GETTABLEKS                       R15 R15 K8 ["Enums"]
      105 GETTABLEKS                       R15 R15 K30 ["IconSize"]
      107 GETTABLEKS                       R15 R15 K31 ["XSmall"]
      109 SETTABLEKS                       R15 R14 K26 ["size"]
      111 MOVE                             R15 R7
      112 CALL                             R13 2 -1
      113 CALL                             R11 -1 1
      114 JUMP                             ; [+43]
      115 GETUPVAL                         R11 5
      116 GETTABLEKS                       R11 R11 K23 ["createElement"]
      118 GETUPVAL                         R12 3
      119 GETTABLEKS                       R12 R12 K24 ["Icon"]
      121 DUPTABLE                         R13 K32 [{["name"], ["size"], ["style"], ["variant"], ["testId"] = "asset-status-icon"}]
      122 GETUPVAL                         R14 3
      123 GETTABLEKS                       R14 R14 K8 ["Enums"]
      125 GETTABLEKS                       R14 R14 K9 ["IconName"]
      127 GETTABLEKS                       R14 R14 K10 ["TriangleExclamation"]
      129 SETTABLEKS                       R14 R13 K4 ["name"]
      131 GETUPVAL                         R14 3
      132 GETTABLEKS                       R14 R14 K8 ["Enums"]
      134 GETTABLEKS                       R14 R14 K30 ["IconSize"]
      136 GETTABLEKS                       R14 R14 K33 ["Small"]
      138 SETTABLEKS                       R14 R13 K26 ["size"]
      140 GETTABLEKS                       R14 R5 K11 ["Color"]
      142 GETTABLEKS                       R14 R14 K12 ["System"]
      144 GETTABLEKS                       R14 R14 K13 ["Warning"]
      146 SETTABLEKS                       R14 R13 K5 ["style"]
      148 GETUPVAL                         R14 3
      149 GETTABLEKS                       R14 R14 K8 ["Enums"]
      151 GETTABLEKS                       R14 R14 K14 ["IconVariant"]
      153 GETTABLEKS                       R14 R14 K15 ["Filled"]
      155 SETTABLEKS                       R14 R13 K6 ["variant"]
      157 CALL                             R11 2 1
      158 GETUPVAL                         R12 5
      159 GETTABLEKS                       R12 R12 K23 ["createElement"]
      161 GETUPVAL                         R13 3
      162 GETTABLEKS                       R13 R13 K34 ["Popover"]
      164 GETTABLEKS                       R13 R13 K35 ["Root"]
      166 DUPTABLE                         R14 K37 [{"isOpen"}]
      167 SETTABLEKS                       R8 R14 K36 ["isOpen"]
      169 DUPTABLE                         R15 K40 [{"Anchor", "Content"}]
      170 GETUPVAL                         R16 5
      171 GETTABLEKS                       R16 R16 K23 ["createElement"]
      173 GETUPVAL                         R17 3
      174 GETTABLEKS                       R17 R17 K34 ["Popover"]
      176 GETTABLEKS                       R17 R17 K38 ["Anchor"]
      178 GETUPVAL                         R18 6
      179 GETTABLEKS                       R18 R18 K25 ["join"]
      181 DUPTABLE                         R19 K42 [{"LayoutOrder"}]
      182 GETTABLEKS                       R20 R0 K41 ["LayoutOrder"]
      184 SETTABLEKS                       R20 R19 K41 ["LayoutOrder"]
      186 GETTABLEKS                       R21 R0 K43 ["IsGrid"]
      188 JUMPIFNOT                        R21 ; [+23]
      189 DUPTABLE                         R20 K48 [{["ZIndex"] = 4, ["AnchorPoint"], ["Position"]}]
      190 GETIMPORT                        R21 K51 [Vector2.new]
      192 LOADN                            R22 0
      193 LOADN                            R23 1
      194 CALL                             R21 2 1
      195 SETTABLEKS                       R21 R20 K46 ["AnchorPoint"]
      197 GETIMPORT                        R21 K53 [UDim2.new]
      199 LOADN                            R22 0
      200 GETUPVAL                         R23 7
      201 GETTABLEKS                       R23 R23 K54 ["GridCellIconPadding"]
      203 LOADN                            R24 1
      204 GETUPVAL                         R26 7
      205 GETTABLEKS                       R26 R26 K54 ["GridCellIconPadding"]
      207 MINUS                            R25 R26
      208 CALL                             R21 4 1
      209 SETTABLEKS                       R21 R20 K47 ["Position"]
      211 JUMP                             ; [+2]
      212 NEWTABLE                         R20 0 0
      214 CALL                             R18 2 1
      215 GETUPVAL                         R19 5
      216 GETTABLEKS                       R19 R19 K23 ["createElement"]
      218 GETUPVAL                         R20 3
      219 GETTABLEKS                       R20 R20 K55 ["Tooltip"]
      221 DUPTABLE                         R21 K57 [{"title"}]
      222 LOADK                            R24 K58 ["AssetStatus"]
      223 MOVE                             R25 R6
      224 NAMECALL                         R22 R1 K59 ["getText"]
      226 CALL                             R22 3 1
      227 SETTABLEKS                       R22 R21 K56 ["title"]
      229 GETUPVAL                         R22 5
      230 GETTABLEKS                       R22 R22 K23 ["createElement"]
      232 GETUPVAL                         R23 3
      233 GETTABLEKS                       R23 R23 K60 ["View"]
      235 DUPTABLE                         R24 K65 [{["onActivated"], ["stateLayer"], ["tag"] = "auto-xy padding-xsmall radius-small"}]
      236 NEWCLOSURE                       R25 P0
      237 CAPTURE                          VAL R9
      238 CAPTURE                          VAL R8
      239 SETTABLEKS                       R25 R24 K61 ["onActivated"]
      241 DUPTABLE                         R25 K67 [{"affordance"}]
      242 GETUPVAL                         R26 3
      243 GETTABLEKS                       R26 R26 K8 ["Enums"]
      245 GETTABLEKS                       R26 R26 K68 ["StateLayerAffordance"]
      247 GETTABLEKS                       R26 R26 K69 ["None"]
      249 SETTABLEKS                       R26 R25 K66 ["affordance"]
      251 SETTABLEKS                       R25 R24 K62 ["stateLayer"]
      253 MOVE                             R25 R11
      254 CALL                             R22 3 -1
      255 CALL                             R19 -1 -1
      256 CALL                             R16 -1 1
      257 SETTABLEKS                       R16 R15 K38 ["Anchor"]
      259 GETTABLEKS                       R17 R0 K3 ["IsModerated"]
      261 JUMPIFNOT                        R17 ; [+66]
      262 GETUPVAL                         R16 5
      263 GETTABLEKS                       R16 R16 K23 ["createElement"]
      265 GETUPVAL                         R17 3
      266 GETTABLEKS                       R17 R17 K34 ["Popover"]
      268 GETTABLEKS                       R17 R17 K39 ["Content"]
      270 DUPTABLE                         R18 K75 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"]}]
      271 DUPTABLE                         R19 K79 [{["position"], ["offset"] = 5}]
      272 GETUPVAL                         R21 8
      273 CALL                             R21 0 1
      274 JUMPIF                           R21 ; [+1]
      275 JUMPIF                           R4 ; [+8]
      276 GETUPVAL                         R20 3
      277 GETTABLEKS                       R20 R20 K8 ["Enums"]
      279 GETTABLEKS                       R20 R20 K80 ["PopoverSide"]
      281 GETTABLEKS                       R20 R20 K81 ["Right"]
      283 JUMP                             ; [+7]
      284 GETUPVAL                         R20 3
      285 GETTABLEKS                       R20 R20 K8 ["Enums"]
      287 GETTABLEKS                       R20 R20 K80 ["PopoverSide"]
      289 GETTABLEKS                       R20 R20 K82 ["Bottom"]
      291 SETTABLEKS                       R20 R19 K76 ["position"]
      293 SETTABLEKS                       R19 R18 K70 ["side"]
      295 GETUPVAL                         R19 3
      296 GETTABLEKS                       R19 R19 K8 ["Enums"]
      298 GETTABLEKS                       R19 R19 K83 ["PopoverAlign"]
      300 GETTABLEKS                       R19 R19 K84 ["Center"]
      302 SETTABLEKS                       R19 R18 K71 ["align"]
      304 NEWCLOSURE                       R19 P1
      305 CAPTURE                          VAL R9
      306 SETTABLEKS                       R19 R18 K74 ["onPressedOutside"]
      308 GETUPVAL                         R19 5
      309 GETTABLEKS                       R19 R19 K23 ["createElement"]
      311 GETUPVAL                         R20 9
      312 DUPTABLE                         R21 K89 [{"FrameRef", "AssetId", "AssetPath", "MaxWidth"}]
      313 SETTABLEKS                       R10 R21 K85 ["FrameRef"]
      315 GETTABLEKS                       R22 R0 K86 ["AssetId"]
      317 SETTABLEKS                       R22 R21 K86 ["AssetId"]
      319 GETTABLEKS                       R22 R0 K87 ["AssetPath"]
      321 SETTABLEKS                       R22 R21 K87 ["AssetPath"]
      323 SETTABLEKS                       R2 R21 K88 ["MaxWidth"]
      325 CALL                             R19 2 -1
      326 CALL                             R16 -1 1
      327 JUMP                             ; [+1]
      328 LOADNIL                          R16
      329 SETTABLEKS                       R16 R15 K39 ["Content"]
      331 CALL                             R12 3 -1
      332 RETURN                           R12 -1

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
