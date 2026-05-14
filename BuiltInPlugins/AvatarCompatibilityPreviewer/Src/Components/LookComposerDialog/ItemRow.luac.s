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
       77 JUMPIFNOT                        R13 ; [+21]
       78 JUMPIFNOT                        R3 ; [+20]
       79 DUPTABLE                         R12 K17 [{"tag", "LayoutOrder", "ref", "onStateChanged", "stateLayer"}]
       80 LOADK                            R13 K18 ["col auto-xy gap-xsmall"]
       81 SETTABLEKS                       R13 R12 K12 ["tag"]
       83 LOADN                            R13 2
       84 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       86 SETTABLEKS                       R5 R12 K14 ["ref"]
       88 SETTABLEKS                       R8 R12 K15 ["onStateChanged"]
       90 DUPTABLE                         R13 K20 [{"affordance"}]
       91 GETUPVAL                         R14 7
       92 GETTABLEKS                       R14 R14 K21 ["None"]
       94 SETTABLEKS                       R14 R13 K19 ["affordance"]
       96 SETTABLEKS                       R13 R12 K16 ["stateLayer"]
       98 JUMP                             ; [+7]
       99 DUPTABLE                         R12 K22 [{"tag", "LayoutOrder"}]
      100 LOADK                            R13 K23 ["col grow auto-y gap-xsmall"]
      101 SETTABLEKS                       R13 R12 K12 ["tag"]
      103 LOADN                            R13 2
      104 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      106 GETUPVAL                         R13 3
      107 GETTABLEKS                       R13 R13 K24 ["createElement"]
      109 GETUPVAL                         R14 8
      110 DUPTABLE                         R15 K28 [{"tag", "Size", "AutomaticSize", "LayoutOrder", "GroupTransparency"}]
      111 LOADK                            R16 K29 ["row gap-medium align-y-top padding-y-small"]
      112 SETTABLEKS                       R16 R15 K12 ["tag"]
      114 GETIMPORT                        R16 K32 [UDim2.new]
      116 LOADN                            R17 1
      117 LOADN                            R18 0
      118 LOADN                            R19 0
      119 LOADN                            R20 0
      120 CALL                             R16 4 1
      121 SETTABLEKS                       R16 R15 K25 ["Size"]
      123 GETIMPORT                        R16 K35 [Enum.AutomaticSize.Y]
      125 SETTABLEKS                       R16 R15 K26 ["AutomaticSize"]
      127 GETTABLEKS                       R16 R0 K13 ["LayoutOrder"]
      129 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      131 JUMPIFNOT                        R3 ; [+2]
      132 LOADK                            R16 K36 [0.5]
      133 JUMP                             ; [+1]
      134 LOADN                            R16 0
      135 SETTABLEKS                       R16 R15 K27 ["GroupTransparency"]
      137 NEWTABLE                         R16 4 1
      139 GETUPVAL                         R17 3
      140 GETTABLEKS                       R17 R17 K24 ["createElement"]
      142 GETUPVAL                         R18 9
      143 DUPTABLE                         R19 K38 [{"Image", "tag", "LayoutOrder"}]
      144 GETUPVAL                         R21 10
      145 CALL                             R21 0 1
      146 JUMPIFNOT                        R21 ; [+9]
      147 GETTABLEKS                       R21 R0 K39 ["rowType"]
      149 JUMPIFNOTEQKS                    R21 K40 ["Bundle"] ; [+6]
      151 GETUPVAL                         R20 11
      152 GETTABLEKS                       R21 R0 K41 ["id"]
      154 CALL                             R20 1 1
      155 JUMP                             ; [+4]
      156 GETUPVAL                         R20 12
      157 GETTABLEKS                       R21 R0 K41 ["id"]
      159 CALL                             R20 1 1
      160 SETTABLEKS                       R20 R19 K37 ["Image"]
      162 LOADK                            R20 K42 ["size-1000-1000 anchor-center-center position-center-center radius-medium"]
      163 SETTABLEKS                       R20 R19 K12 ["tag"]
      165 LOADN                            R20 1
      166 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      168 CALL                             R17 2 1
      169 SETLIST                          R16 R17 1 [1]
      171 GETUPVAL                         R18 3
      172 GETTABLEKS                       R18 R18 K24 ["createElement"]
      174 GETUPVAL                         R19 8
      175 MOVE                             R20 R12
      176 DUPTABLE                         R21 K46 [{"Name", "CreatorRow", "PriceContainer"}]
      177 GETUPVAL                         R22 3
      178 GETTABLEKS                       R22 R22 K24 ["createElement"]
      180 GETUPVAL                         R23 13
      181 DUPTABLE                         R24 K48 [{"Text", "tag", "LayoutOrder"}]
      182 GETTABLEKS                       R25 R0 K49 ["name"]
      184 SETTABLEKS                       R25 R24 K47 ["Text"]
      186 LOADK                            R25 K50 ["text-label-medium auto-xy content-emphasis"]
      187 SETTABLEKS                       R25 R24 K12 ["tag"]
      189 LOADN                            R25 1
      190 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      192 CALL                             R22 2 1
      193 SETTABLEKS                       R22 R21 K43 ["Name"]
      195 GETUPVAL                         R22 3
      196 GETTABLEKS                       R22 R22 K24 ["createElement"]
      198 GETUPVAL                         R23 8
      199 DUPTABLE                         R24 K22 [{"tag", "LayoutOrder"}]
      200 LOADK                            R25 K51 ["row gap-xsmall align-y-center auto-xy"]
      201 SETTABLEKS                       R25 R24 K12 ["tag"]
      203 LOADN                            R25 2
      204 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      206 DUPTABLE                         R25 K54 [{"CreatorText", "VerifiedIcon"}]
      207 GETUPVAL                         R26 3
      208 GETTABLEKS                       R26 R26 K24 ["createElement"]
      210 GETUPVAL                         R27 13
      211 DUPTABLE                         R28 K48 [{"Text", "tag", "LayoutOrder"}]
      212 GETTABLEKS                       R29 R0 K55 ["creator"]
      214 SETTABLEKS                       R29 R28 K47 ["Text"]
      216 LOADK                            R29 K56 ["text-label-medium auto-xy content-default"]
      217 SETTABLEKS                       R29 R28 K12 ["tag"]
      219 LOADN                            R29 1
      220 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      222 CALL                             R26 2 1
      223 SETTABLEKS                       R26 R25 K52 ["CreatorText"]
      225 GETTABLEKS                       R26 R0 K57 ["creatorHasVerifiedBadge"]
      227 JUMPIFNOT                        R26 ; [+38]
      228 GETUPVAL                         R26 3
      229 GETTABLEKS                       R26 R26 K24 ["createElement"]
      231 GETUPVAL                         R27 14
      232 GETTABLEKS                       R27 R27 K58 ["Icon"]
      234 DUPTABLE                         R28 K61 [{"name", "size", "variant", "LayoutOrder"}]
      235 GETUPVAL                         R29 14
      236 GETTABLEKS                       R29 R29 K62 ["Enums"]
      238 GETTABLEKS                       R29 R29 K63 ["IconName"]
      240 GETTABLEKS                       R29 R29 K64 ["VerifiedMono"]
      242 SETTABLEKS                       R29 R28 K49 ["name"]
      244 GETUPVAL                         R29 14
      245 GETTABLEKS                       R29 R29 K62 ["Enums"]
      247 GETTABLEKS                       R29 R29 K65 ["IconSize"]
      249 GETTABLEKS                       R29 R29 K66 ["XSmall"]
      251 SETTABLEKS                       R29 R28 K59 ["size"]
      253 GETUPVAL                         R29 14
      254 GETTABLEKS                       R29 R29 K62 ["Enums"]
      256 GETTABLEKS                       R29 R29 K67 ["IconVariant"]
      258 GETTABLEKS                       R29 R29 K68 ["Filled"]
      260 SETTABLEKS                       R29 R28 K60 ["variant"]
      262 LOADN                            R29 2
      263 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      265 CALL                             R26 2 1
      266 SETTABLEKS                       R26 R25 K53 ["VerifiedIcon"]
      268 CALL                             R22 3 1
      269 SETTABLEKS                       R22 R21 K44 ["CreatorRow"]
      271 GETUPVAL                         R22 3
      272 GETTABLEKS                       R22 R22 K24 ["createElement"]
      274 GETUPVAL                         R23 8
      275 DUPTABLE                         R24 K22 [{"tag", "LayoutOrder"}]
      276 LOADK                            R25 K51 ["row gap-xsmall align-y-center auto-xy"]
      277 SETTABLEKS                       R25 R24 K12 ["tag"]
      279 LOADN                            R25 3
      280 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      282 DUPTABLE                         R25 K71 [{"RobuxIcon", "Price"}]
      283 GETUPVAL                         R26 3
      284 GETTABLEKS                       R26 R26 K24 ["createElement"]
      286 GETUPVAL                         R27 9
      287 DUPTABLE                         R28 K74 [{"Image", "Size", "imageStyle", "ImageColor3", "LayoutOrder"}]
      288 LOADK                            R29 K75 ["rbxasset://textures/ui/common/robux_small.png"]
      289 SETTABLEKS                       R29 R28 K37 ["Image"]
      291 GETIMPORT                        R29 K77 [UDim2.fromOffset]
      293 LOADN                            R30 16
      294 LOADN                            R31 16
      295 CALL                             R29 2 1
      296 SETTABLEKS                       R29 R28 K25 ["Size"]
      298 SETTABLEKS                       R10 R28 K72 ["imageStyle"]
      300 SETTABLEKS                       R11 R28 K73 ["ImageColor3"]
      302 LOADN                            R29 1
      303 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      305 CALL                             R26 2 1
      306 SETTABLEKS                       R26 R25 K69 ["RobuxIcon"]
      308 GETUPVAL                         R26 3
      309 GETTABLEKS                       R26 R26 K24 ["createElement"]
      311 GETUPVAL                         R27 13
      312 DUPTABLE                         R28 K48 [{"Text", "tag", "LayoutOrder"}]
      313 GETTABLEKS                       R30 R0 K78 ["price"]
      315 FASTCALL1                        TOSTRING R30 ; [+2]
      316 GETIMPORT                        R29 K80 [tostring]
      318 CALL                             R29 1 1
      319 SETTABLEKS                       R29 R28 K47 ["Text"]
      321 LOADK                            R29 K56 ["text-label-medium auto-xy content-default"]
      322 SETTABLEKS                       R29 R28 K12 ["tag"]
      324 LOADN                            R29 2
      325 SETTABLEKS                       R29 R28 K13 ["LayoutOrder"]
      327 CALL                             R26 2 1
      328 SETTABLEKS                       R26 R25 K70 ["Price"]
      330 CALL                             R22 3 1
      331 SETTABLEKS                       R22 R21 K45 ["PriceContainer"]
      333 CALL                             R18 3 1
      334 SETTABLEKS                       R18 R16 K81 ["Details"]
      336 GETUPVAL                         R19 6
      337 CALL                             R19 0 1
      338 JUMPIFNOT                        R19 ; [+13]
      339 GETUPVAL                         R18 3
      340 GETTABLEKS                       R18 R18 K24 ["createElement"]
      342 GETUPVAL                         R19 8
      343 DUPTABLE                         R20 K22 [{"tag", "LayoutOrder"}]
      344 LOADK                            R21 K82 ["grow"]
      345 SETTABLEKS                       R21 R20 K12 ["tag"]
      347 LOADN                            R21 3
      348 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      350 CALL                             R18 2 1
      351 JUMP                             ; [+1]
      352 LOADNIL                          R18
      353 SETTABLEKS                       R18 R16 K83 ["RowSpacer"]
      355 GETUPVAL                         R19 6
      356 CALL                             R19 0 1
      357 JUMPIFNOT                        R19 ; [+109]
      358 JUMPIFNOT                        R3 ; [+108]
      359 GETUPVAL                         R18 3
      360 GETTABLEKS                       R18 R18 K24 ["createElement"]
      362 GETUPVAL                         R19 15
      363 GETTABLEKS                       R19 R19 K84 ["Root"]
      365 DUPTABLE                         R20 K86 [{"isOpen"}]
      366 SETTABLEKS                       R6 R20 K85 ["isOpen"]
      368 DUPTABLE                         R21 K88 [{"Anchor", "Content"}]
      369 GETUPVAL                         R22 3
      370 GETTABLEKS                       R22 R22 K24 ["createElement"]
      372 GETUPVAL                         R23 15
      373 GETTABLEKS                       R23 R23 K87 ["Anchor"]
      375 DUPTABLE                         R24 K90 [{"anchorRef"}]
      376 SETTABLEKS                       R5 R24 K89 ["anchorRef"]
      378 CALL                             R22 2 1
      379 SETTABLEKS                       R22 R21 K87 ["Anchor"]
      381 GETUPVAL                         R22 3
      382 GETTABLEKS                       R22 R22 K24 ["createElement"]
      384 GETUPVAL                         R23 15
      385 GETTABLEKS                       R23 R23 K9 ["Content"]
      387 DUPTABLE                         R24 K96 [{"hasArrow", "side", "align", "selectionGroup", "backgroundStyle"}]
      388 LOADB                            R25 0
      389 SETTABLEKS                       R25 R24 K91 ["hasArrow"]
      391 DUPTABLE                         R25 K99 [{"position", "offset"}]
      392 GETUPVAL                         R26 16
      393 GETTABLEKS                       R26 R26 K100 ["Right"]
      395 SETTABLEKS                       R26 R25 K97 ["position"]
      397 GETTABLEKS                       R26 R1 K25 ["Size"]
      399 GETTABLEKS                       R26 R26 K101 ["Size_200"]
      401 SETTABLEKS                       R26 R25 K98 ["offset"]
      403 SETTABLEKS                       R25 R24 K92 ["side"]
      405 GETUPVAL                         R25 17
      406 GETTABLEKS                       R25 R25 K102 ["Start"]
      408 SETTABLEKS                       R25 R24 K93 ["align"]
      410 LOADB                            R25 0
      411 SETTABLEKS                       R25 R24 K94 ["selectionGroup"]
      413 GETTABLEKS                       R25 R1 K103 ["Inverse"]
      415 GETTABLEKS                       R25 R25 K104 ["Surface"]
      417 GETTABLEKS                       R25 R25 K105 ["Surface_0"]
      419 SETTABLEKS                       R25 R24 K95 ["backgroundStyle"]
      421 DUPTABLE                         R25 K107 [{"TooltipContent"}]
      422 GETUPVAL                         R26 3
      423 GETTABLEKS                       R26 R26 K24 ["createElement"]
      425 GETUPVAL                         R27 8
      426 DUPTABLE                         R28 K109 [{"tag", "sizeConstraint"}]
      427 LOADK                            R29 K110 ["col auto-xy padding-x-medium padding-y-small radius-small"]
      428 SETTABLEKS                       R29 R28 K12 ["tag"]
      430 DUPTABLE                         R29 K112 [{"MaxSize"}]
      431 GETIMPORT                        R30 K114 [Vector2.new]
      433 LOADN                            R31 64
      434 LOADK                            R32 K115 [∞]
      435 CALL                             R30 2 1
      436 SETTABLEKS                       R30 R29 K111 ["MaxSize"]
      438 SETTABLEKS                       R29 R28 K108 ["sizeConstraint"]
      440 DUPTABLE                         R29 K117 [{"TooltipText"}]
      441 GETUPVAL                         R30 3
      442 GETTABLEKS                       R30 R30 K24 ["createElement"]
      444 GETUPVAL                         R31 13
      445 DUPTABLE                         R32 K118 [{"Text", "tag"}]
      446 LOADK                            R35 K119 ["LookComposerDialog"]
      447 LOADK                            R36 K120 ["TooltipItemCreatorMismatch"]
      448 NAMECALL                         R33 R2 K121 ["getText"]
      450 CALL                             R33 3 1
      451 SETTABLEKS                       R33 R32 K47 ["Text"]
      453 LOADK                            R33 K122 ["auto-xy text-body-small text-wrap text-align-x-left content-inverse-default"]
      454 SETTABLEKS                       R33 R32 K12 ["tag"]
      456 CALL                             R30 2 1
      457 SETTABLEKS                       R30 R29 K116 ["TooltipText"]
      459 CALL                             R26 3 1
      460 SETTABLEKS                       R26 R25 K106 ["TooltipContent"]
      462 CALL                             R22 3 1
      463 SETTABLEKS                       R22 R21 K9 ["Content"]
      465 CALL                             R18 3 1
      466 JUMP                             ; [+1]
      467 LOADNIL                          R18
      468 SETTABLEKS                       R18 R16 K123 ["CreatorMismatchTooltip"]
      470 GETUPVAL                         R18 3
      471 GETTABLEKS                       R18 R18 K24 ["createElement"]
      473 GETUPVAL                         R19 8
      474 DUPTABLE                         R20 K22 [{"tag", "LayoutOrder"}]
      475 LOADK                            R21 K124 ["auto-xy padding-left-medium"]
      476 SETTABLEKS                       R21 R20 K12 ["tag"]
      478 GETUPVAL                         R22 6
      479 CALL                             R22 0 1
      480 JUMPIFNOT                        R22 ; [+2]
      481 LOADN                            R21 4
      482 JUMP                             ; [+1]
      483 LOADN                            R21 3
      484 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      486 DUPTABLE                         R21 K126 [{"Checkbox"}]
      487 GETUPVAL                         R22 3
      488 GETTABLEKS                       R22 R22 K24 ["createElement"]
      490 GETUPVAL                         R23 18
      491 DUPTABLE                         R24 K131 [{"isChecked", "isDisabled", "label", "onActivated", "size"}]
      492 SETTABLEKS                       R4 R24 K127 ["isChecked"]
      494 SETTABLEKS                       R3 R24 K128 ["isDisabled"]
      496 LOADK                            R25 K132 [""]
      497 SETTABLEKS                       R25 R24 K129 ["label"]
      499 SETTABLEKS                       R9 R24 K130 ["onActivated"]
      501 LOADK                            R25 K133 ["Small"]
      502 SETTABLEKS                       R25 R24 K59 ["size"]
      504 CALL                             R22 2 1
      505 SETTABLEKS                       R22 R21 K125 ["Checkbox"]
      507 CALL                             R18 3 1
      508 SETTABLEKS                       R18 R16 K134 ["CheckboxContainer"]
      510 CALL                             R13 3 -1
      511 RETURN                           R13 -1

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
