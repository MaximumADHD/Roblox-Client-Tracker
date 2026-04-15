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
      258 JUMPIFNOT                        R17 ; [+86]
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
      309 DUPTABLE                         R22 K63 [{"Text", "Size", "tag", "onActivated"}]
      310 LOADK                            R25 K47 ["LookSaveMenu"]
      311 LOADK                            R26 K40 ["CreateAvatarLook"]
      312 NAMECALL                         R23 R3 K49 ["getText"]
      314 CALL                             R23 3 1
      315 SETTABLEKS                       R23 R22 K44 ["Text"]
      317 GETIMPORT                        R23 K34 [UDim2.fromOffset]
      319 LOADN                            R24 250
      320 LOADN                            R25 0
      321 CALL                             R23 2 1
      322 SETTABLEKS                       R23 R22 K29 ["Size"]
      324 JUMPIFNOT                        R4 ; [+5]
      325 GETTABLEKS                       R24 R4 K66 ["canCreateAvatarLook"]
      327 JUMPIFNOT                        R24 ; [+2]
      328 LOADK                            R23 K64 ["text-body-small content-system-contrast padding-small auto-y text-align-x-left"]
      329 JUMP                             ; [+1]
      330 LOADK                            R23 K67 ["text-body-small content-muted padding-small auto-y text-align-x-left"]
      331 SETTABLEKS                       R23 R22 K30 ["tag"]
      333 JUMPIFNOT                        R4 ; [+6]
      334 GETTABLEKS                       R24 R4 K66 ["canCreateAvatarLook"]
      336 JUMPIFNOT                        R24 ; [+3]
      337 NEWCLOSURE                       R23 P1
      338 CAPTURE                          VAL R0
      339 JUMP                             ; [+1]
      340 LOADNIL                          R23
      341 SETTABLEKS                       R23 R22 K62 ["onActivated"]
      343 CALL                             R20 2 -1
      344 CALL                             R17 -1 1
      345 SETTABLEKS                       R17 R16 K40 ["CreateAvatarLook"]
      347 GETUPVAL                         R18 5
      348 GETTABLEKS                       R17 R18 K2 ["createElement"]
      350 GETUPVAL                         R19 6
      351 GETTABLEKS                       R18 R19 K28 ["View"]
      353 DUPTABLE                         R19 K51 [{"LayoutOrder", "Size"}]
      354 NAMECALL                         R20 R1 K46 ["getNextOrder"]
      356 CALL                             R20 1 1
      357 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      359 GETIMPORT                        R20 K34 [UDim2.fromOffset]
      361 LOADN                            R21 0
      362 GETTABLEKS                       R23 R2 K52 ["Gap"]
      364 GETTABLEKS                       R22 R23 K53 ["XXSmall"]
      366 CALL                             R20 2 1
      367 SETTABLEKS                       R20 R19 K29 ["Size"]
      369 CALL                             R17 2 1
      370 SETTABLEKS                       R17 R16 K41 ["Gap3"]
      372 GETUPVAL                         R18 5
      373 GETTABLEKS                       R17 R18 K2 ["createElement"]
      375 GETUPVAL                         R19 6
      376 GETTABLEKS                       R18 R19 K54 ["Tooltip"]
      378 DUPTABLE                         R19 K58 [{"LayoutOrder", "title", "text", "side", "align"}]
      379 NAMECALL                         R20 R1 K46 ["getNextOrder"]
      381 CALL                             R20 1 1
      382 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      384 LOADK                            R22 K47 ["LookSaveMenu"]
      385 LOADK                            R23 K42 ["CreateMakeupLook"]
      386 NAMECALL                         R20 R3 K49 ["getText"]
      388 CALL                             R20 3 1
      389 SETTABLEKS                       R20 R19 K55 ["title"]
      391 LOADK                            R22 K47 ["LookSaveMenu"]
      392 LOADK                            R23 K68 ["TooltipCreateMakeupLookDescription"]
      393 NAMECALL                         R20 R3 K49 ["getText"]
      395 CALL                             R20 3 1
      396 SETTABLEKS                       R20 R19 K56 ["text"]
      398 GETUPVAL                         R23 6
      399 GETTABLEKS                       R22 R23 K23 ["Enums"]
      401 GETTABLEKS                       R21 R22 K60 ["PopoverSide"]
      403 GETTABLEKS                       R20 R21 K61 ["Right"]
      405 SETTABLEKS                       R20 R19 K57 ["side"]
      407 GETUPVAL                         R23 6
      408 GETTABLEKS                       R22 R23 K23 ["Enums"]
      410 GETTABLEKS                       R21 R22 K24 ["PopoverAlign"]
      412 GETTABLEKS                       R20 R21 K25 ["Start"]
      414 SETTABLEKS                       R20 R19 K16 ["align"]
      416 GETUPVAL                         R21 5
      417 GETTABLEKS                       R20 R21 K2 ["createElement"]
      419 GETUPVAL                         R22 6
      420 GETTABLEKS                       R21 R22 K44 ["Text"]
      422 DUPTABLE                         R22 K63 [{"Text", "Size", "tag", "onActivated"}]
      423 LOADK                            R25 K47 ["LookSaveMenu"]
      424 LOADK                            R26 K42 ["CreateMakeupLook"]
      425 NAMECALL                         R23 R3 K49 ["getText"]
      427 CALL                             R23 3 1
      428 SETTABLEKS                       R23 R22 K44 ["Text"]
      430 GETIMPORT                        R23 K34 [UDim2.fromOffset]
      432 LOADN                            R24 250
      433 LOADN                            R25 0
      434 CALL                             R23 2 1
      435 SETTABLEKS                       R23 R22 K29 ["Size"]
      437 JUMPIFNOT                        R4 ; [+5]
      438 GETTABLEKS                       R24 R4 K69 ["canCreateMakeupLook"]
      440 JUMPIFNOT                        R24 ; [+2]
      441 LOADK                            R23 K64 ["text-body-small content-system-contrast padding-small auto-y text-align-x-left"]
      442 JUMP                             ; [+1]
      443 LOADK                            R23 K67 ["text-body-small content-muted padding-small auto-y text-align-x-left"]
      444 SETTABLEKS                       R23 R22 K30 ["tag"]
      446 JUMPIFNOT                        R4 ; [+6]
      447 GETTABLEKS                       R24 R4 K69 ["canCreateMakeupLook"]
      449 JUMPIFNOT                        R24 ; [+3]
      450 NEWCLOSURE                       R23 P2
      451 CAPTURE                          VAL R0
      452 JUMP                             ; [+1]
      453 LOADNIL                          R23
      454 SETTABLEKS                       R23 R22 K62 ["onActivated"]
      456 CALL                             R20 2 -1
      457 CALL                             R17 -1 1
      458 SETTABLEKS                       R17 R16 K42 ["CreateMakeupLook"]
      460 CALL                             R13 3 1
      461 SETTABLEKS                       R13 R12 K26 ["Menu"]
      463 CALL                             R9 3 1
      464 SETTABLEKS                       R9 R8 K9 ["Content"]
      466 CALL                             R5 3 -1
      467 RETURN                           R5 -1

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
