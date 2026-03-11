PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["onSaveToRoblox"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["openAvatarLookComposer"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["openMakeupLookComposer"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["new"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 3
       11 NAMECALL                         R3 R3 K1 ["use"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 4
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R5 R6 K2 ["createElement"]
       19 GETUPVAL                         R8 6
       20 GETTABLEKS                       R7 R8 K3 ["Popover"]
       22 GETTABLEKS                       R6 R7 K4 ["Root"]
       24 DUPTABLE                         R7 K7 [{"LayoutOrder", "isOpen"}]
       25 GETTABLEKS                       R8 R0 K5 ["LayoutOrder"]
       27 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       29 GETTABLEKS                       R8 R0 K6 ["isOpen"]
       31 SETTABLEKS                       R8 R7 K6 ["isOpen"]
       33 DUPTABLE                         R8 K10 [{"Anchor", "Content"}]
       34 GETUPVAL                         R10 5
       35 GETTABLEKS                       R9 R10 K2 ["createElement"]
       37 GETUPVAL                         R12 6
       38 GETTABLEKS                       R11 R12 K3 ["Popover"]
       40 GETTABLEKS                       R10 R11 K8 ["Anchor"]
       42 DUPTABLE                         R11 K11 [{"LayoutOrder"}]
       43 GETTABLEKS                       R12 R0 K5 ["LayoutOrder"]
       45 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       47 DUPTABLE                         R12 K13 [{"AnchorContent"}]
       48 GETTABLEKS                       R13 R0 K14 ["anchor"]
       50 SETTABLEKS                       R13 R12 K12 ["AnchorContent"]
       52 CALL                             R9 3 1
       53 SETTABLEKS                       R9 R8 K8 ["Anchor"]
       55 GETUPVAL                         R10 5
       56 GETTABLEKS                       R9 R10 K2 ["createElement"]
       58 GETUPVAL                         R12 6
       59 GETTABLEKS                       R11 R12 K3 ["Popover"]
       61 GETTABLEKS                       R10 R11 K9 ["Content"]
       63 DUPTABLE                         R11 K18 [{"onPressedOutside", "align", "hasArrow"}]
       64 GETTABLEKS                       R12 R0 K19 ["onClose"]
       66 SETTABLEKS                       R12 R11 K15 ["onPressedOutside"]
       68 DUPTABLE                         R12 K22 [{"position", "offset"}]
       69 GETUPVAL                         R16 6
       70 GETTABLEKS                       R15 R16 K23 ["Enums"]
       72 GETTABLEKS                       R14 R15 K24 ["PopoverAlign"]
       74 GETTABLEKS                       R13 R14 K25 ["Start"]
       76 SETTABLEKS                       R13 R12 K20 ["position"]
       78 LOADN                            R13 50
       79 SETTABLEKS                       R13 R12 K21 ["offset"]
       81 SETTABLEKS                       R12 R11 K16 ["align"]
       83 LOADB                            R12 0
       84 SETTABLEKS                       R12 R11 K17 ["hasArrow"]
       86 DUPTABLE                         R12 K27 [{"Menu"}]
       87 GETUPVAL                         R14 5
       88 GETTABLEKS                       R13 R14 K2 ["createElement"]
       90 GETUPVAL                         R15 6
       91 GETTABLEKS                       R14 R15 K28 ["View"]
       93 DUPTABLE                         R15 K31 [{"Size", "tag"}]
       94 GETIMPORT                        R16 K34 [UDim2.fromOffset]
       96 LOADN                            R17 4
       97 LOADN                            R18 0
       98 CALL                             R16 2 1
       99 SETTABLEKS                       R16 R15 K29 ["Size"]
      101 LOADK                            R16 K35 ["col padding-xsmall auto-y bg-surface-300 radius-medium stroke-default"]
      102 SETTABLEKS                       R16 R15 K30 ["tag"]
      104 DUPTABLE                         R16 K43 [{"Title", "Gap1", "SaveToRoblox", "Gap2", "CreateAvatarLook", "Gap3", "CreateMakeupLook"}]
      105 GETUPVAL                         R18 5
      106 GETTABLEKS                       R17 R18 K2 ["createElement"]
      108 GETUPVAL                         R19 6
      109 GETTABLEKS                       R18 R19 K44 ["Text"]
      111 DUPTABLE                         R19 K45 [{"LayoutOrder", "Text", "tag"}]
      112 NAMECALL                         R20 R1 K46 ["getNextOrder"]
      114 CALL                             R20 1 1
      115 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      117 LOADK                            R22 K47 ["LookSaveMenu"]
      118 LOADK                            R23 K48 ["Save"]
      119 NAMECALL                         R20 R3 K49 ["getText"]
      121 CALL                             R20 3 1
      122 SETTABLEKS                       R20 R19 K44 ["Text"]
      124 LOADK                            R20 K50 ["text-caption-small auto-xy content-muted padding-small"]
      125 SETTABLEKS                       R20 R19 K30 ["tag"]
      127 CALL                             R17 2 1
      128 SETTABLEKS                       R17 R16 K36 ["Title"]
      130 GETUPVAL                         R18 5
      131 GETTABLEKS                       R17 R18 K2 ["createElement"]
      133 GETUPVAL                         R19 6
      134 GETTABLEKS                       R18 R19 K28 ["View"]
      136 DUPTABLE                         R19 K51 [{"LayoutOrder", "Size"}]
      137 NAMECALL                         R20 R1 K46 ["getNextOrder"]
      139 CALL                             R20 1 1
      140 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      142 GETIMPORT                        R20 K34 [UDim2.fromOffset]
      144 LOADN                            R21 0
      145 GETTABLEKS                       R23 R2 K52 ["Gap"]
      147 GETTABLEKS                       R22 R23 K53 ["XXSmall"]
      149 CALL                             R20 2 1
      150 SETTABLEKS                       R20 R19 K29 ["Size"]
      152 CALL                             R17 2 1
      153 SETTABLEKS                       R17 R16 K37 ["Gap1"]
      155 GETUPVAL                         R18 5
      156 GETTABLEKS                       R17 R18 K2 ["createElement"]
      158 GETUPVAL                         R19 6
      159 GETTABLEKS                       R18 R19 K54 ["Tooltip"]
      161 DUPTABLE                         R19 K58 [{"LayoutOrder", "title", "text", "side", "align"}]
      162 NAMECALL                         R20 R1 K46 ["getNextOrder"]
      164 CALL                             R20 1 1
      165 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      167 LOADK                            R22 K47 ["LookSaveMenu"]
      168 LOADK                            R23 K38 ["SaveToRoblox"]
      169 NAMECALL                         R20 R3 K49 ["getText"]
      171 CALL                             R20 3 1
      172 SETTABLEKS                       R20 R19 K55 ["title"]
      174 LOADK                            R22 K47 ["LookSaveMenu"]
      175 LOADK                            R23 K59 ["TooltipSaveToRobloxDescription"]
      176 NAMECALL                         R20 R3 K49 ["getText"]
      178 CALL                             R20 3 1
      179 SETTABLEKS                       R20 R19 K56 ["text"]
      181 GETUPVAL                         R23 6
      182 GETTABLEKS                       R22 R23 K23 ["Enums"]
      184 GETTABLEKS                       R21 R22 K60 ["PopoverSide"]
      186 GETTABLEKS                       R20 R21 K61 ["Right"]
      188 SETTABLEKS                       R20 R19 K57 ["side"]
      190 GETUPVAL                         R23 6
      191 GETTABLEKS                       R22 R23 K23 ["Enums"]
      193 GETTABLEKS                       R21 R22 K24 ["PopoverAlign"]
      195 GETTABLEKS                       R20 R21 K25 ["Start"]
      197 SETTABLEKS                       R20 R19 K16 ["align"]
      199 GETUPVAL                         R21 5
      200 GETTABLEKS                       R20 R21 K2 ["createElement"]
      202 GETUPVAL                         R22 6
      203 GETTABLEKS                       R21 R22 K44 ["Text"]
      205 DUPTABLE                         R22 K63 [{"Text", "Size", "tag", "onActivated"}]
      206 LOADK                            R25 K47 ["LookSaveMenu"]
      207 LOADK                            R26 K38 ["SaveToRoblox"]
      208 NAMECALL                         R23 R3 K49 ["getText"]
      210 CALL                             R23 3 1
      211 SETTABLEKS                       R23 R22 K44 ["Text"]
      213 GETIMPORT                        R23 K34 [UDim2.fromOffset]
      215 LOADN                            R24 250
      216 LOADN                            R25 0
      217 CALL                             R23 2 1
      218 SETTABLEKS                       R23 R22 K29 ["Size"]
      220 LOADK                            R23 K64 ["text-body-small content-system-contrast padding-small auto-y text-align-x-left"]
      221 SETTABLEKS                       R23 R22 K30 ["tag"]
      223 NEWCLOSURE                       R23 P0
      224 CAPTURE                          VAL R0
      225 SETTABLEKS                       R23 R22 K62 ["onActivated"]
      227 CALL                             R20 2 -1
      228 CALL                             R17 -1 1
      229 SETTABLEKS                       R17 R16 K38 ["SaveToRoblox"]
      231 GETUPVAL                         R18 5
      232 GETTABLEKS                       R17 R18 K2 ["createElement"]
      234 GETUPVAL                         R19 6
      235 GETTABLEKS                       R18 R19 K28 ["View"]
      237 DUPTABLE                         R19 K51 [{"LayoutOrder", "Size"}]
      238 NAMECALL                         R20 R1 K46 ["getNextOrder"]
      240 CALL                             R20 1 1
      241 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      243 GETIMPORT                        R20 K34 [UDim2.fromOffset]
      245 LOADN                            R21 0
      246 GETTABLEKS                       R23 R2 K52 ["Gap"]
      248 GETTABLEKS                       R22 R23 K53 ["XXSmall"]
      250 CALL                             R20 2 1
      251 SETTABLEKS                       R20 R19 K29 ["Size"]
      253 CALL                             R17 2 1
      254 SETTABLEKS                       R17 R16 K39 ["Gap2"]
      256 GETUPVAL                         R17 7
      257 CALL                             R17 0 1
      258 JUMPIFNOT                        R17 ; [+79]
      259 GETUPVAL                         R18 5
      260 GETTABLEKS                       R17 R18 K2 ["createElement"]
      262 GETUPVAL                         R19 6
      263 GETTABLEKS                       R18 R19 K54 ["Tooltip"]
      265 DUPTABLE                         R19 K58 [{"LayoutOrder", "title", "text", "side", "align"}]
      266 NAMECALL                         R20 R1 K46 ["getNextOrder"]
      268 CALL                             R20 1 1
      269 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      271 LOADK                            R22 K47 ["LookSaveMenu"]
      272 LOADK                            R23 K40 ["CreateAvatarLook"]
      273 NAMECALL                         R20 R3 K49 ["getText"]
      275 CALL                             R20 3 1
      276 SETTABLEKS                       R20 R19 K55 ["title"]
      278 LOADK                            R22 K47 ["LookSaveMenu"]
      279 LOADK                            R23 K65 ["TooltipCreateAvatarLookDescription"]
      280 NAMECALL                         R20 R3 K49 ["getText"]
      282 CALL                             R20 3 1
      283 SETTABLEKS                       R20 R19 K56 ["text"]
      285 GETUPVAL                         R23 6
      286 GETTABLEKS                       R22 R23 K23 ["Enums"]
      288 GETTABLEKS                       R21 R22 K60 ["PopoverSide"]
      290 GETTABLEKS                       R20 R21 K61 ["Right"]
      292 SETTABLEKS                       R20 R19 K57 ["side"]
      294 GETUPVAL                         R23 6
      295 GETTABLEKS                       R22 R23 K23 ["Enums"]
      297 GETTABLEKS                       R21 R22 K24 ["PopoverAlign"]
      299 GETTABLEKS                       R20 R21 K25 ["Start"]
      301 SETTABLEKS                       R20 R19 K16 ["align"]
      303 GETUPVAL                         R21 5
      304 GETTABLEKS                       R20 R21 K2 ["createElement"]
      306 GETUPVAL                         R22 6
      307 GETTABLEKS                       R21 R22 K44 ["Text"]
      309 DUPTABLE                         R22 K66 [{"Text", "tag", "onActivated"}]
      310 LOADK                            R25 K47 ["LookSaveMenu"]
      311 LOADK                            R26 K40 ["CreateAvatarLook"]
      312 NAMECALL                         R23 R3 K49 ["getText"]
      314 CALL                             R23 3 1
      315 SETTABLEKS                       R23 R22 K44 ["Text"]
      317 JUMPIFNOT                        R4 ; [+5]
      318 GETTABLEKS                       R24 R4 K67 ["canCreateAvatarLook"]
      320 JUMPIFNOT                        R24 ; [+2]
      321 LOADK                            R23 K68 ["text-body-small auto-xy content-system-contrast padding-small"]
      322 JUMP                             ; [+1]
      323 LOADK                            R23 K69 ["text-body-small auto-xy content-muted padding-small"]
      324 SETTABLEKS                       R23 R22 K30 ["tag"]
      326 JUMPIFNOT                        R4 ; [+6]
      327 GETTABLEKS                       R24 R4 K67 ["canCreateAvatarLook"]
      329 JUMPIFNOT                        R24 ; [+3]
      330 NEWCLOSURE                       R23 P1
      331 CAPTURE                          VAL R0
      332 JUMP                             ; [+1]
      333 LOADNIL                          R23
      334 SETTABLEKS                       R23 R22 K62 ["onActivated"]
      336 CALL                             R20 2 -1
      337 CALL                             R17 -1 1
      338 SETTABLEKS                       R17 R16 K40 ["CreateAvatarLook"]
      340 GETUPVAL                         R18 5
      341 GETTABLEKS                       R17 R18 K2 ["createElement"]
      343 GETUPVAL                         R19 6
      344 GETTABLEKS                       R18 R19 K28 ["View"]
      346 DUPTABLE                         R19 K51 [{"LayoutOrder", "Size"}]
      347 NAMECALL                         R20 R1 K46 ["getNextOrder"]
      349 CALL                             R20 1 1
      350 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      352 GETIMPORT                        R20 K34 [UDim2.fromOffset]
      354 LOADN                            R21 0
      355 GETTABLEKS                       R23 R2 K52 ["Gap"]
      357 GETTABLEKS                       R22 R23 K53 ["XXSmall"]
      359 CALL                             R20 2 1
      360 SETTABLEKS                       R20 R19 K29 ["Size"]
      362 CALL                             R17 2 1
      363 SETTABLEKS                       R17 R16 K41 ["Gap3"]
      365 GETUPVAL                         R18 5
      366 GETTABLEKS                       R17 R18 K2 ["createElement"]
      368 GETUPVAL                         R19 6
      369 GETTABLEKS                       R18 R19 K54 ["Tooltip"]
      371 DUPTABLE                         R19 K58 [{"LayoutOrder", "title", "text", "side", "align"}]
      372 NAMECALL                         R20 R1 K46 ["getNextOrder"]
      374 CALL                             R20 1 1
      375 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      377 LOADK                            R22 K47 ["LookSaveMenu"]
      378 LOADK                            R23 K42 ["CreateMakeupLook"]
      379 NAMECALL                         R20 R3 K49 ["getText"]
      381 CALL                             R20 3 1
      382 SETTABLEKS                       R20 R19 K55 ["title"]
      384 LOADK                            R22 K47 ["LookSaveMenu"]
      385 LOADK                            R23 K70 ["TooltipCreateMakeupLookDescription"]
      386 NAMECALL                         R20 R3 K49 ["getText"]
      388 CALL                             R20 3 1
      389 SETTABLEKS                       R20 R19 K56 ["text"]
      391 GETUPVAL                         R23 6
      392 GETTABLEKS                       R22 R23 K23 ["Enums"]
      394 GETTABLEKS                       R21 R22 K60 ["PopoverSide"]
      396 GETTABLEKS                       R20 R21 K61 ["Right"]
      398 SETTABLEKS                       R20 R19 K57 ["side"]
      400 GETUPVAL                         R23 6
      401 GETTABLEKS                       R22 R23 K23 ["Enums"]
      403 GETTABLEKS                       R21 R22 K24 ["PopoverAlign"]
      405 GETTABLEKS                       R20 R21 K25 ["Start"]
      407 SETTABLEKS                       R20 R19 K16 ["align"]
      409 GETUPVAL                         R21 5
      410 GETTABLEKS                       R20 R21 K2 ["createElement"]
      412 GETUPVAL                         R22 6
      413 GETTABLEKS                       R21 R22 K44 ["Text"]
      415 DUPTABLE                         R22 K63 [{"Text", "Size", "tag", "onActivated"}]
      416 LOADK                            R25 K47 ["LookSaveMenu"]
      417 LOADK                            R26 K42 ["CreateMakeupLook"]
      418 NAMECALL                         R23 R3 K49 ["getText"]
      420 CALL                             R23 3 1
      421 SETTABLEKS                       R23 R22 K44 ["Text"]
      423 GETIMPORT                        R23 K34 [UDim2.fromOffset]
      425 LOADN                            R24 250
      426 LOADN                            R25 0
      427 CALL                             R23 2 1
      428 SETTABLEKS                       R23 R22 K29 ["Size"]
      430 JUMPIFNOT                        R4 ; [+5]
      431 GETTABLEKS                       R24 R4 K71 ["canCreateMakeupLook"]
      433 JUMPIFNOT                        R24 ; [+2]
      434 LOADK                            R23 K64 ["text-body-small content-system-contrast padding-small auto-y text-align-x-left"]
      435 JUMP                             ; [+1]
      436 LOADK                            R23 K72 ["text-body-small content-muted padding-small auto-y text-align-x-left"]
      437 SETTABLEKS                       R23 R22 K30 ["tag"]
      439 JUMPIFNOT                        R4 ; [+6]
      440 GETTABLEKS                       R24 R4 K71 ["canCreateMakeupLook"]
      442 JUMPIFNOT                        R24 ; [+3]
      443 NEWCLOSURE                       R23 P2
      444 CAPTURE                          VAL R0
      445 JUMP                             ; [+1]
      446 LOADNIL                          R23
      447 SETTABLEKS                       R23 R22 K62 ["onActivated"]
      449 CALL                             R20 2 -1
      450 CALL                             R17 -1 1
      451 SETTABLEKS                       R17 R16 K42 ["CreateMakeupLook"]
      453 CALL                             R13 3 1
      454 SETTABLEKS                       R13 R12 K26 ["Menu"]
      456 CALL                             R9 3 1
      457 SETTABLEKS                       R9 R8 K9 ["Content"]
      459 CALL                             R5 3 -1
      460 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R5 K11 ["Localization"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R8 K13 ["Flags"]
       38 GETTABLEKS                       R6 R7 K14 ["getFFlagAvatarPreviewerLookComposer"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R9 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R9 K13 ["Flags"]
       47 GETTABLEKS                       R7 R8 K15 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R10 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R10 K16 ["Hooks"]
       56 GETTABLEKS                       R8 R9 K17 ["useCheckLookEquippedItems"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R9 R1 K16 ["Hooks"]
       61 GETTABLEKS                       R8 R9 K18 ["useTokens"]
       63 GETTABLEKS                       R10 R3 K19 ["Util"]
       65 GETTABLEKS                       R9 R10 K20 ["LayoutOrderIterator"]
       67 DUPCLOSURE                       R10 K21 [PROTO_3]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R6
       76 RETURN                           R10 1
