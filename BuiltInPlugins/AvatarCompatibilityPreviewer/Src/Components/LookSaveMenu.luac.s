PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onSaveToRoblox"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["openAvatarLookComposer"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["openMakeupLookComposer"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["new"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 3
       11 NAMECALL                         R3 R3 K1 ["use"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R5 4
       15 CALL                             R5 0 1
       16 JUMPIFNOT                        R5 ; [+8]
       17 GETUPVAL                         R4 5
       18 GETTABLEKS                       R4 R4 K2 ["useContext"]
       20 GETUPVAL                         R5 6
       21 GETTABLEKS                       R5 R5 K3 ["Context"]
       23 CALL                             R4 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 GETUPVAL                         R6 4
       27 CALL                             R6 0 1
       28 JUMPIF                           R6 ; [+3]
       29 GETUPVAL                         R5 7
       30 CALL                             R5 0 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R5
       33 GETUPVAL                         R7 4
       34 CALL                             R7 0 1
       35 JUMPIFNOT                        R7 ; [+3]
       36 GETTABLEKS                       R6 R4 K4 ["canCreateMakeupLook"]
       38 JUMP                             ; [+5]
       39 LOADB                            R6 0
       40 JUMPIFEQKNIL                     R5 ; [+3]
       42 GETTABLEKS                       R6 R5 K4 ["canCreateMakeupLook"]
       44 GETUPVAL                         R8 4
       45 CALL                             R8 0 1
       46 JUMPIFNOT                        R8 ; [+3]
       47 GETTABLEKS                       R7 R4 K5 ["showCreateMakeupLook"]
       49 JUMP                             ; [+1]
       50 LOADB                            R7 1
       51 GETUPVAL                         R8 5
       52 GETTABLEKS                       R8 R8 K6 ["createElement"]
       54 GETUPVAL                         R9 8
       55 GETTABLEKS                       R9 R9 K7 ["Popover"]
       57 GETTABLEKS                       R9 R9 K8 ["Root"]
       59 DUPTABLE                         R10 K11 [{"LayoutOrder", "isOpen"}]
       60 GETTABLEKS                       R11 R0 K9 ["LayoutOrder"]
       62 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       64 GETTABLEKS                       R11 R0 K10 ["isOpen"]
       66 SETTABLEKS                       R11 R10 K10 ["isOpen"]
       68 DUPTABLE                         R11 K14 [{"Anchor", "Content"}]
       69 GETUPVAL                         R12 5
       70 GETTABLEKS                       R12 R12 K6 ["createElement"]
       72 GETUPVAL                         R13 8
       73 GETTABLEKS                       R13 R13 K7 ["Popover"]
       75 GETTABLEKS                       R13 R13 K12 ["Anchor"]
       77 DUPTABLE                         R14 K15 [{"LayoutOrder"}]
       78 GETTABLEKS                       R15 R0 K9 ["LayoutOrder"]
       80 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       82 DUPTABLE                         R15 K17 [{"AnchorContent"}]
       83 GETTABLEKS                       R16 R0 K18 ["anchor"]
       85 SETTABLEKS                       R16 R15 K16 ["AnchorContent"]
       87 CALL                             R12 3 1
       88 SETTABLEKS                       R12 R11 K12 ["Anchor"]
       90 GETUPVAL                         R12 5
       91 GETTABLEKS                       R12 R12 K6 ["createElement"]
       93 GETUPVAL                         R13 8
       94 GETTABLEKS                       R13 R13 K7 ["Popover"]
       96 GETTABLEKS                       R13 R13 K13 ["Content"]
       98 DUPTABLE                         R14 K23 [{["onPressedOutside"], ["align"], ["hasArrow"] = False}]
       99 GETTABLEKS                       R15 R0 K24 ["onClose"]
      101 SETTABLEKS                       R15 R14 K19 ["onPressedOutside"]
      103 DUPTABLE                         R15 K28 [{["position"], ["offset"] = 50}]
      104 GETUPVAL                         R16 8
      105 GETTABLEKS                       R16 R16 K29 ["Enums"]
      107 GETTABLEKS                       R16 R16 K30 ["PopoverAlign"]
      109 GETTABLEKS                       R16 R16 K31 ["Start"]
      111 SETTABLEKS                       R16 R15 K25 ["position"]
      113 SETTABLEKS                       R15 R14 K20 ["align"]
      115 DUPTABLE                         R15 K33 [{"Menu"}]
      116 GETUPVAL                         R16 5
      117 GETTABLEKS                       R16 R16 K6 ["createElement"]
      119 GETUPVAL                         R17 8
      120 GETTABLEKS                       R17 R17 K34 ["View"]
      122 DUPTABLE                         R18 K38 [{["Size"], ["tag"] = "col auto-y padding-xsmall stroke-default radius-medium bg-surface-300"}]
      123 GETIMPORT                        R19 K41 [UDim2.fromOffset]
      125 LOADN                            R20 260
      126 LOADN                            R21 0
      127 CALL                             R19 2 1
      128 SETTABLEKS                       R19 R18 K35 ["Size"]
      130 DUPTABLE                         R19 K49 [{"Title", "Gap1", "SaveToRoblox", "Gap2", "CreateAvatarLook", "Gap3", "CreateMakeupLook"}]
      131 GETUPVAL                         R20 5
      132 GETTABLEKS                       R20 R20 K6 ["createElement"]
      134 GETUPVAL                         R21 8
      135 GETTABLEKS                       R21 R21 K50 ["Text"]
      137 DUPTABLE                         R22 K52 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy padding-small text-caption-small content-muted"}]
      138 NAMECALL                         R23 R1 K53 ["getNextOrder"]
      140 CALL                             R23 1 1
      141 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      143 LOADK                            R25 K54 ["LookSaveMenu"]
      144 LOADK                            R26 K55 ["Save"]
      145 NAMECALL                         R23 R3 K56 ["getText"]
      147 CALL                             R23 3 1
      148 SETTABLEKS                       R23 R22 K50 ["Text"]
      150 CALL                             R20 2 1
      151 SETTABLEKS                       R20 R19 K42 ["Title"]
      153 GETUPVAL                         R20 5
      154 GETTABLEKS                       R20 R20 K6 ["createElement"]
      156 GETUPVAL                         R21 8
      157 GETTABLEKS                       R21 R21 K34 ["View"]
      159 DUPTABLE                         R22 K57 [{"LayoutOrder", "Size"}]
      160 NAMECALL                         R23 R1 K53 ["getNextOrder"]
      162 CALL                             R23 1 1
      163 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      165 GETIMPORT                        R23 K41 [UDim2.fromOffset]
      167 LOADN                            R24 0
      168 GETTABLEKS                       R25 R2 K58 ["Gap"]
      170 GETTABLEKS                       R25 R25 K59 ["XXSmall"]
      172 CALL                             R23 2 1
      173 SETTABLEKS                       R23 R22 K35 ["Size"]
      175 CALL                             R20 2 1
      176 SETTABLEKS                       R20 R19 K43 ["Gap1"]
      178 GETUPVAL                         R20 5
      179 GETTABLEKS                       R20 R20 K6 ["createElement"]
      181 GETUPVAL                         R21 8
      182 GETTABLEKS                       R21 R21 K60 ["Tooltip"]
      184 DUPTABLE                         R22 K64 [{"LayoutOrder", "title", "text", "side", "align"}]
      185 NAMECALL                         R23 R1 K53 ["getNextOrder"]
      187 CALL                             R23 1 1
      188 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      190 LOADK                            R25 K54 ["LookSaveMenu"]
      191 LOADK                            R26 K44 ["SaveToRoblox"]
      192 NAMECALL                         R23 R3 K56 ["getText"]
      194 CALL                             R23 3 1
      195 SETTABLEKS                       R23 R22 K61 ["title"]
      197 LOADK                            R25 K54 ["LookSaveMenu"]
      198 LOADK                            R26 K65 ["TooltipSaveToRobloxDescription"]
      199 NAMECALL                         R23 R3 K56 ["getText"]
      201 CALL                             R23 3 1
      202 SETTABLEKS                       R23 R22 K62 ["text"]
      204 GETUPVAL                         R23 8
      205 GETTABLEKS                       R23 R23 K29 ["Enums"]
      207 GETTABLEKS                       R23 R23 K66 ["PopoverSide"]
      209 GETTABLEKS                       R23 R23 K67 ["Right"]
      211 SETTABLEKS                       R23 R22 K63 ["side"]
      213 GETUPVAL                         R23 8
      214 GETTABLEKS                       R23 R23 K29 ["Enums"]
      216 GETTABLEKS                       R23 R23 K30 ["PopoverAlign"]
      218 GETTABLEKS                       R23 R23 K31 ["Start"]
      220 SETTABLEKS                       R23 R22 K20 ["align"]
      222 GETUPVAL                         R23 5
      223 GETTABLEKS                       R23 R23 K6 ["createElement"]
      225 GETUPVAL                         R24 8
      226 GETTABLEKS                       R24 R24 K50 ["Text"]
      228 DUPTABLE                         R25 K70 [{["Text"], ["Size"], ["tag"] = "auto-y padding-small text-body-small text-align-x-left content-system-contrast", ["onActivated"]}]
      229 LOADK                            R28 K54 ["LookSaveMenu"]
      230 LOADK                            R29 K44 ["SaveToRoblox"]
      231 NAMECALL                         R26 R3 K56 ["getText"]
      233 CALL                             R26 3 1
      234 SETTABLEKS                       R26 R25 K50 ["Text"]
      236 GETIMPORT                        R26 K41 [UDim2.fromOffset]
      238 LOADN                            R27 250
      239 LOADN                            R28 0
      240 CALL                             R26 2 1
      241 SETTABLEKS                       R26 R25 K35 ["Size"]
      243 NEWCLOSURE                       R26 P0
      244 CAPTURE                          VAL R0
      245 SETTABLEKS                       R26 R25 K69 ["onActivated"]
      247 CALL                             R23 2 -1
      248 CALL                             R20 -1 1
      249 SETTABLEKS                       R20 R19 K44 ["SaveToRoblox"]
      251 GETUPVAL                         R20 4
      252 CALL                             R20 0 1
      253 JUMPIFNOT                        R20 ; [+26]
      254 GETTABLEKS                       R20 R4 K71 ["showCreateAvatarLook"]
      256 JUMPIFNOT                        R20 ; [+23]
      257 GETUPVAL                         R20 5
      258 GETTABLEKS                       R20 R20 K6 ["createElement"]
      260 GETUPVAL                         R21 8
      261 GETTABLEKS                       R21 R21 K34 ["View"]
      263 DUPTABLE                         R22 K57 [{"LayoutOrder", "Size"}]
      264 NAMECALL                         R23 R1 K53 ["getNextOrder"]
      266 CALL                             R23 1 1
      267 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      269 GETIMPORT                        R23 K41 [UDim2.fromOffset]
      271 LOADN                            R24 0
      272 GETTABLEKS                       R25 R2 K58 ["Gap"]
      274 GETTABLEKS                       R25 R25 K59 ["XXSmall"]
      276 CALL                             R23 2 1
      277 SETTABLEKS                       R23 R22 K35 ["Size"]
      279 CALL                             R20 2 1
      280 SETTABLEKS                       R20 R19 K45 ["Gap2"]
      282 GETUPVAL                         R20 4
      283 CALL                             R20 0 1
      284 JUMPIFNOT                        R20 ; [+87]
      285 GETTABLEKS                       R20 R4 K71 ["showCreateAvatarLook"]
      287 JUMPIFNOT                        R20 ; [+84]
      288 GETUPVAL                         R20 5
      289 GETTABLEKS                       R20 R20 K6 ["createElement"]
      291 GETUPVAL                         R21 8
      292 GETTABLEKS                       R21 R21 K60 ["Tooltip"]
      294 DUPTABLE                         R22 K64 [{"LayoutOrder", "title", "text", "side", "align"}]
      295 NAMECALL                         R23 R1 K53 ["getNextOrder"]
      297 CALL                             R23 1 1
      298 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      300 LOADK                            R25 K54 ["LookSaveMenu"]
      301 LOADK                            R26 K46 ["CreateAvatarLook"]
      302 NAMECALL                         R23 R3 K56 ["getText"]
      304 CALL                             R23 3 1
      305 SETTABLEKS                       R23 R22 K61 ["title"]
      307 LOADK                            R25 K54 ["LookSaveMenu"]
      308 LOADK                            R26 K72 ["TooltipCreateAvatarLookDescription"]
      309 NAMECALL                         R23 R3 K56 ["getText"]
      311 CALL                             R23 3 1
      312 SETTABLEKS                       R23 R22 K62 ["text"]
      314 GETUPVAL                         R23 8
      315 GETTABLEKS                       R23 R23 K29 ["Enums"]
      317 GETTABLEKS                       R23 R23 K66 ["PopoverSide"]
      319 GETTABLEKS                       R23 R23 K67 ["Right"]
      321 SETTABLEKS                       R23 R22 K63 ["side"]
      323 GETUPVAL                         R23 8
      324 GETTABLEKS                       R23 R23 K29 ["Enums"]
      326 GETTABLEKS                       R23 R23 K30 ["PopoverAlign"]
      328 GETTABLEKS                       R23 R23 K31 ["Start"]
      330 SETTABLEKS                       R23 R22 K20 ["align"]
      332 GETUPVAL                         R23 5
      333 GETTABLEKS                       R23 R23 K6 ["createElement"]
      335 GETUPVAL                         R24 8
      336 GETTABLEKS                       R24 R24 K50 ["Text"]
      338 DUPTABLE                         R25 K73 [{"Text", "Size", "tag", "onActivated"}]
      339 LOADK                            R28 K54 ["LookSaveMenu"]
      340 LOADK                            R29 K46 ["CreateAvatarLook"]
      341 NAMECALL                         R26 R3 K56 ["getText"]
      343 CALL                             R26 3 1
      344 SETTABLEKS                       R26 R25 K50 ["Text"]
      346 GETIMPORT                        R26 K41 [UDim2.fromOffset]
      348 LOADN                            R27 250
      349 LOADN                            R28 0
      350 CALL                             R26 2 1
      351 SETTABLEKS                       R26 R25 K35 ["Size"]
      353 GETTABLEKS                       R27 R4 K74 ["canCreateAvatarLook"]
      355 JUMPIFNOT                        R27 ; [+2]
      356 LOADK                            R26 K68 ["auto-y padding-small text-body-small text-align-x-left content-system-contrast"]
      357 JUMP                             ; [+1]
      358 LOADK                            R26 K75 ["auto-y padding-small text-body-small text-align-x-left content-muted"]
      359 SETTABLEKS                       R26 R25 K36 ["tag"]
      361 GETTABLEKS                       R27 R4 K74 ["canCreateAvatarLook"]
      363 JUMPIFNOT                        R27 ; [+3]
      364 NEWCLOSURE                       R26 P1
      365 CAPTURE                          VAL R0
      366 JUMP                             ; [+1]
      367 LOADNIL                          R26
      368 SETTABLEKS                       R26 R25 K69 ["onActivated"]
      370 CALL                             R23 2 -1
      371 CALL                             R20 -1 1
      372 SETTABLEKS                       R20 R19 K46 ["CreateAvatarLook"]
      374 MOVE                             R20 R7
      375 JUMPIFNOT                        R20 ; [+23]
      376 GETUPVAL                         R20 5
      377 GETTABLEKS                       R20 R20 K6 ["createElement"]
      379 GETUPVAL                         R21 8
      380 GETTABLEKS                       R21 R21 K34 ["View"]
      382 DUPTABLE                         R22 K57 [{"LayoutOrder", "Size"}]
      383 NAMECALL                         R23 R1 K53 ["getNextOrder"]
      385 CALL                             R23 1 1
      386 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      388 GETIMPORT                        R23 K41 [UDim2.fromOffset]
      390 LOADN                            R24 0
      391 GETTABLEKS                       R25 R2 K58 ["Gap"]
      393 GETTABLEKS                       R25 R25 K59 ["XXSmall"]
      395 CALL                             R23 2 1
      396 SETTABLEKS                       R23 R22 K35 ["Size"]
      398 CALL                             R20 2 1
      399 SETTABLEKS                       R20 R19 K47 ["Gap3"]
      401 MOVE                             R20 R7
      402 JUMPIFNOT                        R20 ; [+80]
      403 GETUPVAL                         R20 5
      404 GETTABLEKS                       R20 R20 K6 ["createElement"]
      406 GETUPVAL                         R21 8
      407 GETTABLEKS                       R21 R21 K60 ["Tooltip"]
      409 DUPTABLE                         R22 K64 [{"LayoutOrder", "title", "text", "side", "align"}]
      410 NAMECALL                         R23 R1 K53 ["getNextOrder"]
      412 CALL                             R23 1 1
      413 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      415 LOADK                            R25 K54 ["LookSaveMenu"]
      416 LOADK                            R26 K48 ["CreateMakeupLook"]
      417 NAMECALL                         R23 R3 K56 ["getText"]
      419 CALL                             R23 3 1
      420 SETTABLEKS                       R23 R22 K61 ["title"]
      422 LOADK                            R25 K54 ["LookSaveMenu"]
      423 LOADK                            R26 K76 ["TooltipCreateMakeupLookDescription"]
      424 NAMECALL                         R23 R3 K56 ["getText"]
      426 CALL                             R23 3 1
      427 SETTABLEKS                       R23 R22 K62 ["text"]
      429 GETUPVAL                         R23 8
      430 GETTABLEKS                       R23 R23 K29 ["Enums"]
      432 GETTABLEKS                       R23 R23 K66 ["PopoverSide"]
      434 GETTABLEKS                       R23 R23 K67 ["Right"]
      436 SETTABLEKS                       R23 R22 K63 ["side"]
      438 GETUPVAL                         R23 8
      439 GETTABLEKS                       R23 R23 K29 ["Enums"]
      441 GETTABLEKS                       R23 R23 K30 ["PopoverAlign"]
      443 GETTABLEKS                       R23 R23 K31 ["Start"]
      445 SETTABLEKS                       R23 R22 K20 ["align"]
      447 GETUPVAL                         R23 5
      448 GETTABLEKS                       R23 R23 K6 ["createElement"]
      450 GETUPVAL                         R24 8
      451 GETTABLEKS                       R24 R24 K50 ["Text"]
      453 DUPTABLE                         R25 K73 [{"Text", "Size", "tag", "onActivated"}]
      454 LOADK                            R28 K54 ["LookSaveMenu"]
      455 LOADK                            R29 K48 ["CreateMakeupLook"]
      456 NAMECALL                         R26 R3 K56 ["getText"]
      458 CALL                             R26 3 1
      459 SETTABLEKS                       R26 R25 K50 ["Text"]
      461 GETIMPORT                        R26 K41 [UDim2.fromOffset]
      463 LOADN                            R27 250
      464 LOADN                            R28 0
      465 CALL                             R26 2 1
      466 SETTABLEKS                       R26 R25 K35 ["Size"]
      468 JUMPIFNOT                        R6 ; [+2]
      469 LOADK                            R26 K68 ["auto-y padding-small text-body-small text-align-x-left content-system-contrast"]
      470 JUMP                             ; [+1]
      471 LOADK                            R26 K75 ["auto-y padding-small text-body-small text-align-x-left content-muted"]
      472 SETTABLEKS                       R26 R25 K36 ["tag"]
      474 JUMPIFNOT                        R6 ; [+3]
      475 NEWCLOSURE                       R26 P2
      476 CAPTURE                          VAL R0
      477 JUMP                             ; [+1]
      478 LOADNIL                          R26
      479 SETTABLEKS                       R26 R25 K69 ["onActivated"]
      481 CALL                             R23 2 -1
      482 CALL                             R20 -1 1
      483 SETTABLEKS                       R20 R19 K48 ["CreateMakeupLook"]
      485 CALL                             R16 3 1
      486 SETTABLEKS                       R16 R15 K32 ["Menu"]
      488 CALL                             R12 3 1
      489 SETTABLEKS                       R12 R11 K13 ["Content"]
      491 CALL                             R8 3 -1
      492 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R4 K11 ["Localization"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Flags"]
       38 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarPreviewerLookComposer"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Src"]
       45 GETTABLEKS                       R7 R7 K13 ["Flags"]
       47 GETTABLEKS                       R7 R7 K15 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K12 ["Src"]
       54 GETTABLEKS                       R8 R8 K16 ["Components"]
       56 GETTABLEKS                       R8 R8 K17 ["LookContext"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K12 ["Src"]
       63 GETTABLEKS                       R9 R9 K18 ["Hooks"]
       65 GETTABLEKS                       R9 R9 K19 ["useCheckLookEquippedItems"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R9 R1 K18 ["Hooks"]
       70 GETTABLEKS                       R9 R9 K20 ["useTokens"]
       72 GETTABLEKS                       R10 R3 K21 ["Util"]
       74 GETTABLEKS                       R10 R10 K22 ["LayoutOrderIterator"]
       76 DUPCLOSURE                       R11 K23 [PROTO_3]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R1
       86 RETURN                           R11 1
