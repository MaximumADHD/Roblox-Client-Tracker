PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+9]
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R1 K0 ["Selected"]
        4 JUMP                             ; [+1]
        5 LOADK                            R1 K1 ["Deselected"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["onRowStateChanged"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R4 R0 K1 ["rowState"]
       13 JUMPIFEQKS                       R4 K2 ["Disabled"] ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 GETTABLEKS                       R5 R0 K1 ["rowState"]
       19 JUMPIFEQKS                       R5 K3 ["Selected"] ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K4 ["useRef"]
       26 LOADNIL                          R6
       27 CALL                             R5 1 1
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K5 ["useState"]
       31 LOADB                            R7 0
       32 CALL                             R6 1 2
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          VAL R7
       38 CAPTURE                          UPVAL U4
       39 NEWTABLE                         R10 0 0
       41 CALL                             R8 2 1
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       45 NEWCLOSURE                       R10 P1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R11 0 2
       50 MOVE                             R12 R3
       51 GETTABLEKS                       R13 R0 K7 ["onRowStateChanged"]
       53 SETLIST                          R11 R12 2 [1]
       55 CALL                             R9 2 1
       56 LOADNIL                          R10
       57 GETTABLEKS                       R11 R1 K8 ["Color"]
       59 GETTABLEKS                       R11 R11 K9 ["Content"]
       61 GETTABLEKS                       R11 R11 K10 ["Emphasis"]
       63 GETTABLEKS                       R11 R11 K11 ["Color3"]
       65 GETUPVAL                         R12 5
       66 CALL                             R12 0 1
       67 JUMPIFNOT                        R12 ; [+7]
       68 GETTABLEKS                       R12 R1 K8 ["Color"]
       70 GETTABLEKS                       R12 R12 K9 ["Content"]
       72 GETTABLEKS                       R10 R12 K10 ["Emphasis"]
       74 LOADNIL                          R11
       75 GETUPVAL                         R13 6
       76 CALL                             R13 0 1
       77 JUMPIFNOT                        R13 ; [+15]
       78 JUMPIFNOT                        R3 ; [+14]
       79 DUPTABLE                         R12 K19 [{["tag"] = "col gap-xsmall auto-xy", ["LayoutOrder"] = 2, ["ref"], ["onStateChanged"], ["stateLayer"]}]
       80 SETTABLEKS                       R5 R12 K16 ["ref"]
       82 SETTABLEKS                       R8 R12 K17 ["onStateChanged"]
       84 DUPTABLE                         R13 K21 [{"affordance"}]
       85 GETUPVAL                         R14 7
       86 GETTABLEKS                       R14 R14 K22 ["None"]
       88 SETTABLEKS                       R14 R13 K20 ["affordance"]
       90 SETTABLEKS                       R13 R12 K18 ["stateLayer"]
       92 JUMP                             ; [+1]
       93 DUPTABLE                         R12 K24 [{["tag"] = "col grow gap-xsmall auto-y", ["LayoutOrder"] = 2}]
       94 GETUPVAL                         R13 3
       95 GETTABLEKS                       R13 R13 K25 ["createElement"]
       97 GETUPVAL                         R14 8
       98 DUPTABLE                         R15 K30 [{["tag"] = "row align-y-top gap-medium padding-y-small", ["Size"], ["AutomaticSize"], ["LayoutOrder"], ["GroupTransparency"]}]
       99 GETIMPORT                        R16 K33 [UDim2.new]
      101 LOADN                            R17 1
      102 LOADN                            R18 0
      103 LOADN                            R19 0
      104 LOADN                            R20 0
      105 CALL                             R16 4 1
      106 SETTABLEKS                       R16 R15 K27 ["Size"]
      108 GETIMPORT                        R16 K36 [Enum.AutomaticSize.Y]
      110 SETTABLEKS                       R16 R15 K28 ["AutomaticSize"]
      112 GETTABLEKS                       R16 R0 K14 ["LayoutOrder"]
      114 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      116 JUMPIFNOT                        R3 ; [+2]
      117 LOADK                            R16 K37 [0.5]
      118 JUMP                             ; [+1]
      119 LOADN                            R16 0
      120 SETTABLEKS                       R16 R15 K29 ["GroupTransparency"]
      122 NEWTABLE                         R16 4 1
      124 GETUPVAL                         R17 3
      125 GETTABLEKS                       R17 R17 K25 ["createElement"]
      127 GETUPVAL                         R18 9
      128 DUPTABLE                         R19 K41 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-1000-1000 radius-medium", ["LayoutOrder"] = 1}]
      129 GETUPVAL                         R21 10
      130 CALL                             R21 0 1
      131 JUMPIFNOT                        R21 ; [+9]
      132 GETTABLEKS                       R21 R0 K42 ["rowType"]
      134 JUMPIFNOTEQKS                    R21 K43 ["Bundle"] ; [+6]
      136 GETUPVAL                         R20 11
      137 GETTABLEKS                       R21 R0 K44 ["id"]
      139 CALL                             R20 1 1
      140 JUMP                             ; [+4]
      141 GETUPVAL                         R20 12
      142 GETTABLEKS                       R21 R0 K44 ["id"]
      144 CALL                             R20 1 1
      145 SETTABLEKS                       R20 R19 K38 ["Image"]
      147 CALL                             R17 2 1
      148 SETLIST                          R16 R17 1 [1]
      150 GETUPVAL                         R18 3
      151 GETTABLEKS                       R18 R18 K25 ["createElement"]
      153 GETUPVAL                         R19 8
      154 MOVE                             R20 R12
      155 DUPTABLE                         R21 K48 [{"Name", "CreatorRow", "PriceContainer"}]
      156 GETUPVAL                         R22 3
      157 GETTABLEKS                       R22 R22 K25 ["createElement"]
      159 GETUPVAL                         R23 13
      160 DUPTABLE                         R24 K51 [{["Text"], ["tag"] = "auto-xy text-label-medium content-emphasis", ["LayoutOrder"] = 1}]
      161 GETTABLEKS                       R25 R0 K52 ["name"]
      163 SETTABLEKS                       R25 R24 K49 ["Text"]
      165 CALL                             R22 2 1
      166 SETTABLEKS                       R22 R21 K45 ["Name"]
      168 GETUPVAL                         R22 3
      169 GETTABLEKS                       R22 R22 K25 ["createElement"]
      171 GETUPVAL                         R23 8
      172 DUPTABLE                         R24 K54 [{["tag"] = "row align-y-center gap-xsmall auto-xy", ["LayoutOrder"] = 2}]
      173 DUPTABLE                         R25 K57 [{"CreatorText", "VerifiedIcon"}]
      174 GETUPVAL                         R26 3
      175 GETTABLEKS                       R26 R26 K25 ["createElement"]
      177 GETUPVAL                         R27 13
      178 DUPTABLE                         R28 K59 [{["Text"], ["tag"] = "auto-xy text-label-medium content-default", ["LayoutOrder"] = 1}]
      179 GETTABLEKS                       R29 R0 K60 ["creator"]
      181 SETTABLEKS                       R29 R28 K49 ["Text"]
      183 CALL                             R26 2 1
      184 SETTABLEKS                       R26 R25 K55 ["CreatorText"]
      186 GETTABLEKS                       R26 R0 K61 ["creatorHasVerifiedBadge"]
      188 JUMPIFNOT                        R26 ; [+35]
      189 GETUPVAL                         R26 3
      190 GETTABLEKS                       R26 R26 K25 ["createElement"]
      192 GETUPVAL                         R27 14
      193 GETTABLEKS                       R27 R27 K62 ["Icon"]
      195 DUPTABLE                         R28 K65 [{["name"], ["size"], ["variant"], ["LayoutOrder"] = 2}]
      196 GETUPVAL                         R29 14
      197 GETTABLEKS                       R29 R29 K66 ["Enums"]
      199 GETTABLEKS                       R29 R29 K67 ["IconName"]
      201 GETTABLEKS                       R29 R29 K68 ["VerifiedMono"]
      203 SETTABLEKS                       R29 R28 K52 ["name"]
      205 GETUPVAL                         R29 14
      206 GETTABLEKS                       R29 R29 K66 ["Enums"]
      208 GETTABLEKS                       R29 R29 K69 ["IconSize"]
      210 GETTABLEKS                       R29 R29 K70 ["XSmall"]
      212 SETTABLEKS                       R29 R28 K63 ["size"]
      214 GETUPVAL                         R29 14
      215 GETTABLEKS                       R29 R29 K66 ["Enums"]
      217 GETTABLEKS                       R29 R29 K71 ["IconVariant"]
      219 GETTABLEKS                       R29 R29 K72 ["Filled"]
      221 SETTABLEKS                       R29 R28 K64 ["variant"]
      223 CALL                             R26 2 1
      224 SETTABLEKS                       R26 R25 K56 ["VerifiedIcon"]
      226 CALL                             R22 3 1
      227 SETTABLEKS                       R22 R21 K46 ["CreatorRow"]
      229 GETUPVAL                         R22 3
      230 GETTABLEKS                       R22 R22 K25 ["createElement"]
      232 GETUPVAL                         R23 8
      233 DUPTABLE                         R24 K74 [{["tag"] = "row align-y-center gap-xsmall auto-xy", ["LayoutOrder"] = 3}]
      234 DUPTABLE                         R25 K77 [{"RobuxIcon", "Price"}]
      235 GETUPVAL                         R26 3
      236 GETTABLEKS                       R26 R26 K25 ["createElement"]
      238 GETUPVAL                         R27 9
      239 DUPTABLE                         R28 K81 [{["Image"] = "rbxasset://textures/ui/common/robux_small.png", ["Size"], ["imageStyle"], ["ImageColor3"], ["LayoutOrder"] = 1}]
      240 GETIMPORT                        R29 K83 [UDim2.fromOffset]
      242 LOADN                            R30 16
      243 LOADN                            R31 16
      244 CALL                             R29 2 1
      245 SETTABLEKS                       R29 R28 K27 ["Size"]
      247 SETTABLEKS                       R10 R28 K79 ["imageStyle"]
      249 SETTABLEKS                       R11 R28 K80 ["ImageColor3"]
      251 CALL                             R26 2 1
      252 SETTABLEKS                       R26 R25 K75 ["RobuxIcon"]
      254 GETUPVAL                         R26 3
      255 GETTABLEKS                       R26 R26 K25 ["createElement"]
      257 GETUPVAL                         R27 13
      258 DUPTABLE                         R28 K84 [{["Text"], ["tag"] = "auto-xy text-label-medium content-default", ["LayoutOrder"] = 2}]
      259 GETTABLEKS                       R30 R0 K85 ["price"]
      261 FASTCALL1                        TOSTRING R30 ; [+2]
      262 GETIMPORT                        R29 K87 [tostring]
      264 CALL                             R29 1 1
      265 SETTABLEKS                       R29 R28 K49 ["Text"]
      267 CALL                             R26 2 1
      268 SETTABLEKS                       R26 R25 K76 ["Price"]
      270 CALL                             R22 3 1
      271 SETTABLEKS                       R22 R21 K47 ["PriceContainer"]
      273 CALL                             R18 3 1
      274 SETTABLEKS                       R18 R16 K88 ["Details"]
      276 GETUPVAL                         R19 6
      277 CALL                             R19 0 1
      278 JUMPIFNOT                        R19 ; [+7]
      279 GETUPVAL                         R18 3
      280 GETTABLEKS                       R18 R18 K25 ["createElement"]
      282 GETUPVAL                         R19 8
      283 DUPTABLE                         R20 K90 [{["tag"] = "grow", ["LayoutOrder"] = 3}]
      284 CALL                             R18 2 1
      285 JUMP                             ; [+1]
      286 LOADNIL                          R18
      287 SETTABLEKS                       R18 R16 K91 ["RowSpacer"]
      289 GETUPVAL                         R19 6
      290 CALL                             R19 0 1
      291 JUMPIFNOT                        R19 ; [+97]
      292 JUMPIFNOT                        R3 ; [+96]
      293 GETUPVAL                         R18 3
      294 GETTABLEKS                       R18 R18 K25 ["createElement"]
      296 GETUPVAL                         R19 15
      297 GETTABLEKS                       R19 R19 K92 ["Root"]
      299 DUPTABLE                         R20 K94 [{"isOpen"}]
      300 SETTABLEKS                       R6 R20 K93 ["isOpen"]
      302 DUPTABLE                         R21 K96 [{"Anchor", "Content"}]
      303 GETUPVAL                         R22 3
      304 GETTABLEKS                       R22 R22 K25 ["createElement"]
      306 GETUPVAL                         R23 15
      307 GETTABLEKS                       R23 R23 K95 ["Anchor"]
      309 DUPTABLE                         R24 K98 [{"anchorRef"}]
      310 SETTABLEKS                       R5 R24 K97 ["anchorRef"]
      312 CALL                             R22 2 1
      313 SETTABLEKS                       R22 R21 K95 ["Anchor"]
      315 GETUPVAL                         R22 3
      316 GETTABLEKS                       R22 R22 K25 ["createElement"]
      318 GETUPVAL                         R23 15
      319 GETTABLEKS                       R23 R23 K9 ["Content"]
      321 DUPTABLE                         R24 K105 [{["hasArrow"] = False, ["side"], ["align"], ["selectionGroup"] = False, ["backgroundStyle"]}]
      322 DUPTABLE                         R25 K108 [{"position", "offset"}]
      323 GETUPVAL                         R26 16
      324 GETTABLEKS                       R26 R26 K109 ["Right"]
      326 SETTABLEKS                       R26 R25 K106 ["position"]
      328 GETTABLEKS                       R26 R1 K27 ["Size"]
      330 GETTABLEKS                       R26 R26 K110 ["Size_200"]
      332 SETTABLEKS                       R26 R25 K107 ["offset"]
      334 SETTABLEKS                       R25 R24 K101 ["side"]
      336 GETUPVAL                         R25 17
      337 GETTABLEKS                       R25 R25 K111 ["Start"]
      339 SETTABLEKS                       R25 R24 K102 ["align"]
      341 GETTABLEKS                       R25 R1 K112 ["Inverse"]
      343 GETTABLEKS                       R25 R25 K113 ["Surface"]
      345 GETTABLEKS                       R25 R25 K114 ["Surface_0"]
      347 SETTABLEKS                       R25 R24 K104 ["backgroundStyle"]
      349 DUPTABLE                         R25 K116 [{"TooltipContent"}]
      350 GETUPVAL                         R26 3
      351 GETTABLEKS                       R26 R26 K25 ["createElement"]
      353 GETUPVAL                         R27 8
      354 DUPTABLE                         R28 K119 [{["tag"] = "col auto-xy padding-x-medium padding-y-small radius-small", ["sizeConstraint"]}]
      355 DUPTABLE                         R29 K121 [{"MaxSize"}]
      356 GETIMPORT                        R30 K123 [Vector2.new]
      358 LOADN                            R31 320
      359 LOADK                            R32 K124 [∞]
      360 CALL                             R30 2 1
      361 SETTABLEKS                       R30 R29 K120 ["MaxSize"]
      363 SETTABLEKS                       R29 R28 K118 ["sizeConstraint"]
      365 DUPTABLE                         R29 K126 [{"TooltipText"}]
      366 GETUPVAL                         R30 3
      367 GETTABLEKS                       R30 R30 K25 ["createElement"]
      369 GETUPVAL                         R31 13
      370 DUPTABLE                         R32 K128 [{["Text"], ["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-inverse-default"}]
      371 LOADK                            R35 K129 ["LookComposerDialog"]
      372 LOADK                            R36 K130 ["TooltipItemCreatorMismatch"]
      373 NAMECALL                         R33 R2 K131 ["getText"]
      375 CALL                             R33 3 1
      376 SETTABLEKS                       R33 R32 K49 ["Text"]
      378 CALL                             R30 2 1
      379 SETTABLEKS                       R30 R29 K125 ["TooltipText"]
      381 CALL                             R26 3 1
      382 SETTABLEKS                       R26 R25 K115 ["TooltipContent"]
      384 CALL                             R22 3 1
      385 SETTABLEKS                       R22 R21 K9 ["Content"]
      387 CALL                             R18 3 1
      388 JUMP                             ; [+1]
      389 LOADNIL                          R18
      390 SETTABLEKS                       R18 R16 K132 ["CreatorMismatchTooltip"]
      392 GETUPVAL                         R18 3
      393 GETTABLEKS                       R18 R18 K25 ["createElement"]
      395 GETUPVAL                         R19 8
      396 DUPTABLE                         R20 K134 [{["tag"] = "auto-xy padding-left-medium", ["LayoutOrder"]}]
      397 GETUPVAL                         R22 6
      398 CALL                             R22 0 1
      399 JUMPIFNOT                        R22 ; [+2]
      400 LOADN                            R21 4
      401 JUMP                             ; [+1]
      402 LOADN                            R21 3
      403 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      405 DUPTABLE                         R21 K136 [{"Checkbox"}]
      406 GETUPVAL                         R22 3
      407 GETTABLEKS                       R22 R22 K25 ["createElement"]
      409 GETUPVAL                         R23 18
      410 DUPTABLE                         R24 K143 [{["isChecked"], ["isDisabled"], ["label"] = "", ["onActivated"], ["size"] = "Small"}]
      411 SETTABLEKS                       R4 R24 K137 ["isChecked"]
      413 SETTABLEKS                       R3 R24 K138 ["isDisabled"]
      415 SETTABLEKS                       R9 R24 K141 ["onActivated"]
      417 CALL                             R22 2 1
      418 SETTABLEKS                       R22 R21 K135 ["Checkbox"]
      420 CALL                             R18 3 1
      421 SETTABLEKS                       R18 R16 K144 ["CheckboxContainer"]
      423 CALL                             R13 3 -1
      424 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["Checkbox"]
       27 GETTABLEKS                       R6 R2 K12 ["Popover"]
       29 GETTABLEKS                       R7 R2 K13 ["Enums"]
       31 GETTABLEKS                       R7 R7 K14 ["PopoverSide"]
       33 GETTABLEKS                       R8 R2 K13 ["Enums"]
       35 GETTABLEKS                       R8 R8 K15 ["PopoverAlign"]
       37 GETTABLEKS                       R9 R2 K13 ["Enums"]
       39 GETTABLEKS                       R9 R9 K16 ["ControlState"]
       41 GETTABLEKS                       R10 R2 K13 ["Enums"]
       43 GETTABLEKS                       R10 R10 K17 ["StateLayerAffordance"]
       45 GETIMPORT                        R11 K5 [require]
       47 GETTABLEKS                       R12 R0 K18 ["Src"]
       49 GETTABLEKS                       R12 R12 K19 ["Flags"]
       51 GETTABLEKS                       R12 R12 K20 ["getFFlagAvatarPreviewerLookComposer"]
       53 CALL                             R11 1 1
       54 GETIMPORT                        R12 K5 [require]
       56 GETTABLEKS                       R13 R0 K18 ["Src"]
       58 GETTABLEKS                       R13 R13 K19 ["Flags"]
       60 GETTABLEKS                       R13 R13 K21 ["getFFlagAvatarPreviewerRobuxLightTheme"]
       62 CALL                             R12 1 1
       63 GETIMPORT                        R13 K5 [require]
       65 GETTABLEKS                       R14 R0 K18 ["Src"]
       67 GETTABLEKS                       R14 R14 K19 ["Flags"]
       69 GETTABLEKS                       R14 R14 K22 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R15 R0 K18 ["Src"]
       76 GETTABLEKS                       R15 R15 K19 ["Flags"]
       78 GETTABLEKS                       R15 R15 K23 ["getFFlagAvatarPreviewerLookDismissableErrors"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K5 [require]
       83 GETTABLEKS                       R16 R0 K6 ["Packages"]
       85 GETTABLEKS                       R16 R16 K24 ["Framework"]
       87 CALL                             R15 1 1
       88 GETTABLEKS                       R16 R15 K25 ["ContextServices"]
       90 GETTABLEKS                       R16 R16 K26 ["Localization"]
       92 GETIMPORT                        R17 K5 [require]
       94 GETTABLEKS                       R18 R0 K18 ["Src"]
       96 GETTABLEKS                       R18 R18 K27 ["Util"]
       98 GETTABLEKS                       R18 R18 K28 ["getAssetThumbnail"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K5 [require]
      103 GETTABLEKS                       R19 R0 K18 ["Src"]
      105 GETTABLEKS                       R19 R19 K27 ["Util"]
      107 GETTABLEKS                       R19 R19 K29 ["getBundleThumbnail"]
      109 CALL                             R18 1 1
      110 GETTABLEKS                       R19 R2 K30 ["Image"]
      112 GETIMPORT                        R20 K5 [require]
      114 GETTABLEKS                       R21 R0 K18 ["Src"]
      116 GETTABLEKS                       R21 R21 K31 ["Types"]
      118 CALL                             R20 1 1
      119 GETTABLEKS                       R21 R2 K32 ["Hooks"]
      121 GETTABLEKS                       R21 R21 K33 ["useTokens"]
      123 DUPCLOSURE                       R22 K34 [PROTO_2]
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R21
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R5
      143 RETURN                           R22 1
