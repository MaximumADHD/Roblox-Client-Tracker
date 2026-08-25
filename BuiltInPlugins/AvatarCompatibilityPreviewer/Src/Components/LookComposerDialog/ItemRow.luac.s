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
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+5]
       14 GETUPVAL                         R3 4
       15 GETTABLEKS                       R4 R0 K1 ["priceInfo"]
       17 CALL                             R3 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R5 3
       21 CALL                             R5 0 1
       22 JUMPIFNOT                        R5 ; [+2]
       23 ORK                              R4 R3 K2 [""]
       24 JUMP                             ; [+6]
       25 GETTABLEKS                       R5 R0 K3 ["price"]
       27 FASTCALL1                        TOSTRING R5 ; [+2]
       28 GETIMPORT                        R4 K5 [tostring]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R6 R0 K6 ["rowState"]
       33 JUMPIFEQKS                       R6 K7 ["Disabled"] ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 GETTABLEKS                       R7 R0 K6 ["rowState"]
       39 JUMPIFEQKS                       R7 K8 ["Selected"] ; [+2]
       41 LOADB                            R6 0 +1
       42 LOADB                            R6 1
       43 GETUPVAL                         R7 5
       44 GETTABLEKS                       R7 R7 K9 ["useRef"]
       46 LOADNIL                          R8
       47 CALL                             R7 1 1
       48 GETUPVAL                         R8 5
       49 GETTABLEKS                       R8 R8 K10 ["useState"]
       51 LOADB                            R9 0
       52 CALL                             R8 1 2
       53 GETUPVAL                         R10 5
       54 GETTABLEKS                       R10 R10 K11 ["useCallback"]
       56 NEWCLOSURE                       R11 P0
       57 CAPTURE                          VAL R9
       58 CAPTURE                          UPVAL U6
       59 NEWTABLE                         R12 0 0
       61 CALL                             R10 2 1
       62 GETUPVAL                         R11 5
       63 GETTABLEKS                       R11 R11 K11 ["useCallback"]
       65 NEWCLOSURE                       R12 P1
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R13 0 2
       70 MOVE                             R14 R5
       71 GETTABLEKS                       R15 R0 K12 ["onRowStateChanged"]
       73 SETLIST                          R13 R14 2 [1]
       75 CALL                             R11 2 1
       76 LOADNIL                          R12
       77 GETTABLEKS                       R13 R1 K13 ["Color"]
       79 GETTABLEKS                       R13 R13 K14 ["Content"]
       81 GETTABLEKS                       R13 R13 K15 ["Emphasis"]
       83 GETTABLEKS                       R13 R13 K16 ["Color3"]
       85 GETUPVAL                         R14 7
       86 CALL                             R14 0 1
       87 JUMPIFNOT                        R14 ; [+7]
       88 GETTABLEKS                       R14 R1 K13 ["Color"]
       90 GETTABLEKS                       R14 R14 K14 ["Content"]
       92 GETTABLEKS                       R12 R14 K15 ["Emphasis"]
       94 LOADNIL                          R13
       95 GETUPVAL                         R15 8
       96 CALL                             R15 0 1
       97 JUMPIFNOT                        R15 ; [+15]
       98 JUMPIFNOT                        R5 ; [+14]
       99 DUPTABLE                         R14 K24 [{["tag"] = "col gap-xsmall auto-xy", ["LayoutOrder"] = 2, ["ref"], ["onStateChanged"], ["stateLayer"]}]
      100 SETTABLEKS                       R7 R14 K21 ["ref"]
      102 SETTABLEKS                       R10 R14 K22 ["onStateChanged"]
      104 DUPTABLE                         R15 K26 [{"affordance"}]
      105 GETUPVAL                         R16 9
      106 GETTABLEKS                       R16 R16 K27 ["None"]
      108 SETTABLEKS                       R16 R15 K25 ["affordance"]
      110 SETTABLEKS                       R15 R14 K23 ["stateLayer"]
      112 JUMP                             ; [+1]
      113 DUPTABLE                         R14 K29 [{["tag"] = "col grow gap-xsmall auto-y", ["LayoutOrder"] = 2}]
      114 GETUPVAL                         R15 5
      115 GETTABLEKS                       R15 R15 K30 ["createElement"]
      117 GETUPVAL                         R16 10
      118 DUPTABLE                         R17 K35 [{["tag"] = "row align-y-top gap-medium padding-y-small", ["Size"], ["AutomaticSize"], ["LayoutOrder"], ["GroupTransparency"]}]
      119 GETIMPORT                        R18 K38 [UDim2.new]
      121 LOADN                            R19 1
      122 LOADN                            R20 0
      123 LOADN                            R21 0
      124 LOADN                            R22 0
      125 CALL                             R18 4 1
      126 SETTABLEKS                       R18 R17 K32 ["Size"]
      128 GETIMPORT                        R18 K41 [Enum.AutomaticSize.Y]
      130 SETTABLEKS                       R18 R17 K33 ["AutomaticSize"]
      132 GETTABLEKS                       R18 R0 K19 ["LayoutOrder"]
      134 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      136 JUMPIFNOT                        R5 ; [+2]
      137 LOADK                            R18 K42 [0.5]
      138 JUMP                             ; [+1]
      139 LOADN                            R18 0
      140 SETTABLEKS                       R18 R17 K34 ["GroupTransparency"]
      142 NEWTABLE                         R18 4 1
      144 GETUPVAL                         R19 5
      145 GETTABLEKS                       R19 R19 K30 ["createElement"]
      147 GETUPVAL                         R20 11
      148 DUPTABLE                         R21 K46 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-1000-1000 radius-medium", ["LayoutOrder"] = 1}]
      149 GETUPVAL                         R23 12
      150 CALL                             R23 0 1
      151 JUMPIFNOT                        R23 ; [+9]
      152 GETTABLEKS                       R23 R0 K47 ["rowType"]
      154 JUMPIFNOTEQKS                    R23 K48 ["Bundle"] ; [+6]
      156 GETUPVAL                         R22 13
      157 GETTABLEKS                       R23 R0 K49 ["id"]
      159 CALL                             R22 1 1
      160 JUMP                             ; [+4]
      161 GETUPVAL                         R22 14
      162 GETTABLEKS                       R23 R0 K49 ["id"]
      164 CALL                             R22 1 1
      165 SETTABLEKS                       R22 R21 K43 ["Image"]
      167 CALL                             R19 2 1
      168 SETLIST                          R18 R19 1 [1]
      170 GETUPVAL                         R20 5
      171 GETTABLEKS                       R20 R20 K30 ["createElement"]
      173 GETUPVAL                         R21 10
      174 MOVE                             R22 R14
      175 DUPTABLE                         R23 K53 [{"Name", "CreatorRow", "PriceContainer"}]
      176 GETUPVAL                         R24 5
      177 GETTABLEKS                       R24 R24 K30 ["createElement"]
      179 GETUPVAL                         R25 15
      180 DUPTABLE                         R26 K56 [{["Text"], ["tag"] = "auto-xy text-label-medium content-emphasis", ["LayoutOrder"] = 1}]
      181 GETTABLEKS                       R27 R0 K57 ["name"]
      183 SETTABLEKS                       R27 R26 K54 ["Text"]
      185 CALL                             R24 2 1
      186 SETTABLEKS                       R24 R23 K50 ["Name"]
      188 GETUPVAL                         R24 5
      189 GETTABLEKS                       R24 R24 K30 ["createElement"]
      191 GETUPVAL                         R25 10
      192 DUPTABLE                         R26 K59 [{["tag"] = "row align-y-center gap-xsmall auto-xy", ["LayoutOrder"] = 2}]
      193 DUPTABLE                         R27 K62 [{"CreatorText", "VerifiedIcon"}]
      194 GETUPVAL                         R28 5
      195 GETTABLEKS                       R28 R28 K30 ["createElement"]
      197 GETUPVAL                         R29 15
      198 DUPTABLE                         R30 K64 [{["Text"], ["tag"] = "auto-xy text-label-medium content-default", ["LayoutOrder"] = 1}]
      199 GETTABLEKS                       R31 R0 K65 ["creator"]
      201 SETTABLEKS                       R31 R30 K54 ["Text"]
      203 CALL                             R28 2 1
      204 SETTABLEKS                       R28 R27 K60 ["CreatorText"]
      206 GETTABLEKS                       R28 R0 K66 ["creatorHasVerifiedBadge"]
      208 JUMPIFNOT                        R28 ; [+35]
      209 GETUPVAL                         R28 5
      210 GETTABLEKS                       R28 R28 K30 ["createElement"]
      212 GETUPVAL                         R29 16
      213 GETTABLEKS                       R29 R29 K67 ["Icon"]
      215 DUPTABLE                         R30 K70 [{["name"], ["size"], ["variant"], ["LayoutOrder"] = 2}]
      216 GETUPVAL                         R31 16
      217 GETTABLEKS                       R31 R31 K71 ["Enums"]
      219 GETTABLEKS                       R31 R31 K72 ["IconName"]
      221 GETTABLEKS                       R31 R31 K73 ["VerifiedMono"]
      223 SETTABLEKS                       R31 R30 K57 ["name"]
      225 GETUPVAL                         R31 16
      226 GETTABLEKS                       R31 R31 K71 ["Enums"]
      228 GETTABLEKS                       R31 R31 K74 ["IconSize"]
      230 GETTABLEKS                       R31 R31 K75 ["XSmall"]
      232 SETTABLEKS                       R31 R30 K68 ["size"]
      234 GETUPVAL                         R31 16
      235 GETTABLEKS                       R31 R31 K71 ["Enums"]
      237 GETTABLEKS                       R31 R31 K76 ["IconVariant"]
      239 GETTABLEKS                       R31 R31 K77 ["Filled"]
      241 SETTABLEKS                       R31 R30 K69 ["variant"]
      243 CALL                             R28 2 1
      244 SETTABLEKS                       R28 R27 K61 ["VerifiedIcon"]
      246 CALL                             R24 3 1
      247 SETTABLEKS                       R24 R23 K51 ["CreatorRow"]
      249 GETUPVAL                         R24 5
      250 GETTABLEKS                       R24 R24 K30 ["createElement"]
      252 GETUPVAL                         R25 10
      253 DUPTABLE                         R26 K79 [{["tag"] = "row align-y-center gap-xsmall auto-xy", ["LayoutOrder"] = 3}]
      254 DUPTABLE                         R27 K82 [{"RobuxIcon", "Price"}]
      255 GETUPVAL                         R29 3
      256 CALL                             R29 0 1
      257 JUMPIFNOT                        R29 ; [+2]
      258 LOADNIL                          R28
      259 JUMP                             ; [+17]
      260 GETUPVAL                         R28 5
      261 GETTABLEKS                       R28 R28 K30 ["createElement"]
      263 GETUPVAL                         R29 11
      264 DUPTABLE                         R30 K86 [{["Image"] = "rbxasset://textures/ui/common/robux_small.png", ["Size"], ["imageStyle"], ["ImageColor3"], ["LayoutOrder"] = 1}]
      265 GETIMPORT                        R31 K88 [UDim2.fromOffset]
      267 LOADN                            R32 16
      268 LOADN                            R33 16
      269 CALL                             R31 2 1
      270 SETTABLEKS                       R31 R30 K32 ["Size"]
      272 SETTABLEKS                       R12 R30 K84 ["imageStyle"]
      274 SETTABLEKS                       R13 R30 K85 ["ImageColor3"]
      276 CALL                             R28 2 1
      277 SETTABLEKS                       R28 R27 K80 ["RobuxIcon"]
      279 GETUPVAL                         R28 5
      280 GETTABLEKS                       R28 R28 K30 ["createElement"]
      282 GETUPVAL                         R29 15
      283 DUPTABLE                         R30 K90 [{["Text"], ["testId"], ["tag"] = "auto-xy text-label-medium content-default", ["LayoutOrder"] = 2}]
      284 SETTABLEKS                       R4 R30 K54 ["Text"]
      286 LOADK                            R32 K91 ["look-item-price-%*"]
      287 GETTABLEKS                       R34 R0 K49 ["id"]
      289 NAMECALL                         R32 R32 K92 ["format"]
      291 CALL                             R32 2 1
      292 MOVE                             R31 R32
      293 SETTABLEKS                       R31 R30 K89 ["testId"]
      295 CALL                             R28 2 1
      296 SETTABLEKS                       R28 R27 K81 ["Price"]
      298 CALL                             R24 3 1
      299 SETTABLEKS                       R24 R23 K52 ["PriceContainer"]
      301 CALL                             R20 3 1
      302 SETTABLEKS                       R20 R18 K93 ["Details"]
      304 GETUPVAL                         R21 8
      305 CALL                             R21 0 1
      306 JUMPIFNOT                        R21 ; [+7]
      307 GETUPVAL                         R20 5
      308 GETTABLEKS                       R20 R20 K30 ["createElement"]
      310 GETUPVAL                         R21 10
      311 DUPTABLE                         R22 K95 [{["tag"] = "grow", ["LayoutOrder"] = 3}]
      312 CALL                             R20 2 1
      313 JUMP                             ; [+1]
      314 LOADNIL                          R20
      315 SETTABLEKS                       R20 R18 K96 ["RowSpacer"]
      317 GETUPVAL                         R21 8
      318 CALL                             R21 0 1
      319 JUMPIFNOT                        R21 ; [+97]
      320 JUMPIFNOT                        R5 ; [+96]
      321 GETUPVAL                         R20 5
      322 GETTABLEKS                       R20 R20 K30 ["createElement"]
      324 GETUPVAL                         R21 17
      325 GETTABLEKS                       R21 R21 K97 ["Root"]
      327 DUPTABLE                         R22 K99 [{"isOpen"}]
      328 SETTABLEKS                       R8 R22 K98 ["isOpen"]
      330 DUPTABLE                         R23 K101 [{"Anchor", "Content"}]
      331 GETUPVAL                         R24 5
      332 GETTABLEKS                       R24 R24 K30 ["createElement"]
      334 GETUPVAL                         R25 17
      335 GETTABLEKS                       R25 R25 K100 ["Anchor"]
      337 DUPTABLE                         R26 K103 [{"anchorRef"}]
      338 SETTABLEKS                       R7 R26 K102 ["anchorRef"]
      340 CALL                             R24 2 1
      341 SETTABLEKS                       R24 R23 K100 ["Anchor"]
      343 GETUPVAL                         R24 5
      344 GETTABLEKS                       R24 R24 K30 ["createElement"]
      346 GETUPVAL                         R25 17
      347 GETTABLEKS                       R25 R25 K14 ["Content"]
      349 DUPTABLE                         R26 K110 [{["hasArrow"] = False, ["side"], ["align"], ["selectionGroup"] = False, ["backgroundStyle"]}]
      350 DUPTABLE                         R27 K113 [{"position", "offset"}]
      351 GETUPVAL                         R28 18
      352 GETTABLEKS                       R28 R28 K114 ["Right"]
      354 SETTABLEKS                       R28 R27 K111 ["position"]
      356 GETTABLEKS                       R28 R1 K32 ["Size"]
      358 GETTABLEKS                       R28 R28 K115 ["Size_200"]
      360 SETTABLEKS                       R28 R27 K112 ["offset"]
      362 SETTABLEKS                       R27 R26 K106 ["side"]
      364 GETUPVAL                         R27 19
      365 GETTABLEKS                       R27 R27 K116 ["Start"]
      367 SETTABLEKS                       R27 R26 K107 ["align"]
      369 GETTABLEKS                       R27 R1 K117 ["Inverse"]
      371 GETTABLEKS                       R27 R27 K118 ["Surface"]
      373 GETTABLEKS                       R27 R27 K119 ["Surface_0"]
      375 SETTABLEKS                       R27 R26 K109 ["backgroundStyle"]
      377 DUPTABLE                         R27 K121 [{"TooltipContent"}]
      378 GETUPVAL                         R28 5
      379 GETTABLEKS                       R28 R28 K30 ["createElement"]
      381 GETUPVAL                         R29 10
      382 DUPTABLE                         R30 K124 [{["tag"] = "col auto-xy padding-x-medium padding-y-small radius-small", ["sizeConstraint"]}]
      383 DUPTABLE                         R31 K126 [{"MaxSize"}]
      384 GETIMPORT                        R32 K128 [Vector2.new]
      386 LOADN                            R33 320
      387 LOADK                            R34 K129 [∞]
      388 CALL                             R32 2 1
      389 SETTABLEKS                       R32 R31 K125 ["MaxSize"]
      391 SETTABLEKS                       R31 R30 K123 ["sizeConstraint"]
      393 DUPTABLE                         R31 K131 [{"TooltipText"}]
      394 GETUPVAL                         R32 5
      395 GETTABLEKS                       R32 R32 K30 ["createElement"]
      397 GETUPVAL                         R33 15
      398 DUPTABLE                         R34 K133 [{["Text"], ["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-inverse-default"}]
      399 LOADK                            R37 K134 ["LookComposerDialog"]
      400 LOADK                            R38 K135 ["TooltipItemCreatorMismatch"]
      401 NAMECALL                         R35 R2 K136 ["getText"]
      403 CALL                             R35 3 1
      404 SETTABLEKS                       R35 R34 K54 ["Text"]
      406 CALL                             R32 2 1
      407 SETTABLEKS                       R32 R31 K130 ["TooltipText"]
      409 CALL                             R28 3 1
      410 SETTABLEKS                       R28 R27 K120 ["TooltipContent"]
      412 CALL                             R24 3 1
      413 SETTABLEKS                       R24 R23 K14 ["Content"]
      415 CALL                             R20 3 1
      416 JUMP                             ; [+1]
      417 LOADNIL                          R20
      418 SETTABLEKS                       R20 R18 K137 ["CreatorMismatchTooltip"]
      420 GETUPVAL                         R20 5
      421 GETTABLEKS                       R20 R20 K30 ["createElement"]
      423 GETUPVAL                         R21 10
      424 DUPTABLE                         R22 K139 [{["tag"] = "auto-xy padding-left-medium", ["LayoutOrder"]}]
      425 GETUPVAL                         R24 8
      426 CALL                             R24 0 1
      427 JUMPIFNOT                        R24 ; [+2]
      428 LOADN                            R23 4
      429 JUMP                             ; [+1]
      430 LOADN                            R23 3
      431 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      433 DUPTABLE                         R23 K141 [{"Checkbox"}]
      434 GETUPVAL                         R24 5
      435 GETTABLEKS                       R24 R24 K30 ["createElement"]
      437 GETUPVAL                         R25 20
      438 DUPTABLE                         R26 K147 [{["isChecked"], ["isDisabled"], ["label"] = "", ["onActivated"], ["size"] = "Small"}]
      439 SETTABLEKS                       R6 R26 K142 ["isChecked"]
      441 SETTABLEKS                       R5 R26 K143 ["isDisabled"]
      443 SETTABLEKS                       R11 R26 K145 ["onActivated"]
      445 CALL                             R24 2 1
      446 SETTABLEKS                       R24 R23 K140 ["Checkbox"]
      448 CALL                             R20 3 1
      449 SETTABLEKS                       R20 R18 K148 ["CheckboxContainer"]
      451 CALL                             R15 3 -1
      452 RETURN                           R15 -1

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
       83 GETTABLEKS                       R16 R0 K18 ["Src"]
       85 GETTABLEKS                       R16 R16 K19 ["Flags"]
       87 GETTABLEKS                       R16 R16 K24 ["getFFlagAvatarPreviewerLookComposerPriceText"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K5 [require]
       92 GETTABLEKS                       R17 R0 K6 ["Packages"]
       94 GETTABLEKS                       R17 R17 K25 ["Framework"]
       96 CALL                             R16 1 1
       97 GETTABLEKS                       R17 R16 K26 ["ContextServices"]
       99 GETTABLEKS                       R17 R17 K27 ["Localization"]
      101 GETIMPORT                        R18 K5 [require]
      103 GETTABLEKS                       R19 R0 K18 ["Src"]
      105 GETTABLEKS                       R19 R19 K28 ["Util"]
      107 GETTABLEKS                       R19 R19 K29 ["getAssetThumbnail"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K5 [require]
      112 GETTABLEKS                       R20 R0 K18 ["Src"]
      114 GETTABLEKS                       R20 R20 K28 ["Util"]
      116 GETTABLEKS                       R20 R20 K30 ["getBundleThumbnail"]
      118 CALL                             R19 1 1
      119 GETIMPORT                        R20 K5 [require]
      121 GETTABLEKS                       R21 R0 K18 ["Src"]
      123 GETTABLEKS                       R21 R21 K31 ["Hooks"]
      125 GETTABLEKS                       R21 R21 K32 ["usePriceText"]
      127 CALL                             R20 1 1
      128 GETTABLEKS                       R21 R2 K33 ["Image"]
      130 GETIMPORT                        R22 K5 [require]
      132 GETTABLEKS                       R23 R0 K18 ["Src"]
      134 GETTABLEKS                       R23 R23 K34 ["Types"]
      136 CALL                             R22 1 1
      137 GETTABLEKS                       R23 R2 K31 ["Hooks"]
      139 GETTABLEKS                       R23 R23 K35 ["useTokens"]
      141 DUPCLOSURE                       R24 K36 [PROTO_2]
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R23
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R20
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R5
      163 RETURN                           R24 1
