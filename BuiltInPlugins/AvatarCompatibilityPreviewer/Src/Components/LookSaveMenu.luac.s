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
       98 DUPTABLE                         R14 K22 [{"onPressedOutside", "align", "hasArrow"}]
       99 GETTABLEKS                       R15 R0 K23 ["onClose"]
      101 SETTABLEKS                       R15 R14 K19 ["onPressedOutside"]
      103 DUPTABLE                         R15 K26 [{"position", "offset"}]
      104 GETUPVAL                         R16 8
      105 GETTABLEKS                       R16 R16 K27 ["Enums"]
      107 GETTABLEKS                       R16 R16 K28 ["PopoverAlign"]
      109 GETTABLEKS                       R16 R16 K29 ["Start"]
      111 SETTABLEKS                       R16 R15 K24 ["position"]
      113 LOADN                            R16 50
      114 SETTABLEKS                       R16 R15 K25 ["offset"]
      116 SETTABLEKS                       R15 R14 K20 ["align"]
      118 LOADB                            R15 0
      119 SETTABLEKS                       R15 R14 K21 ["hasArrow"]
      121 DUPTABLE                         R15 K31 [{"Menu"}]
      122 GETUPVAL                         R16 5
      123 GETTABLEKS                       R16 R16 K6 ["createElement"]
      125 GETUPVAL                         R17 8
      126 GETTABLEKS                       R17 R17 K32 ["View"]
      128 DUPTABLE                         R18 K35 [{"Size", "tag"}]
      129 GETIMPORT                        R19 K38 [UDim2.fromOffset]
      131 LOADN                            R20 4
      132 LOADN                            R21 0
      133 CALL                             R19 2 1
      134 SETTABLEKS                       R19 R18 K33 ["Size"]
      136 LOADK                            R19 K39 ["col padding-xsmall auto-y bg-surface-300 radius-medium stroke-default"]
      137 SETTABLEKS                       R19 R18 K34 ["tag"]
      139 DUPTABLE                         R19 K47 [{"Title", "Gap1", "SaveToRoblox", "Gap2", "CreateAvatarLook", "Gap3", "CreateMakeupLook"}]
      140 GETUPVAL                         R20 5
      141 GETTABLEKS                       R20 R20 K6 ["createElement"]
      143 GETUPVAL                         R21 8
      144 GETTABLEKS                       R21 R21 K48 ["Text"]
      146 DUPTABLE                         R22 K49 [{"LayoutOrder", "Text", "tag"}]
      147 NAMECALL                         R23 R1 K50 ["getNextOrder"]
      149 CALL                             R23 1 1
      150 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      152 LOADK                            R25 K51 ["LookSaveMenu"]
      153 LOADK                            R26 K52 ["Save"]
      154 NAMECALL                         R23 R3 K53 ["getText"]
      156 CALL                             R23 3 1
      157 SETTABLEKS                       R23 R22 K48 ["Text"]
      159 LOADK                            R23 K54 ["text-caption-small auto-xy content-muted padding-small"]
      160 SETTABLEKS                       R23 R22 K34 ["tag"]
      162 CALL                             R20 2 1
      163 SETTABLEKS                       R20 R19 K40 ["Title"]
      165 GETUPVAL                         R20 5
      166 GETTABLEKS                       R20 R20 K6 ["createElement"]
      168 GETUPVAL                         R21 8
      169 GETTABLEKS                       R21 R21 K32 ["View"]
      171 DUPTABLE                         R22 K55 [{"LayoutOrder", "Size"}]
      172 NAMECALL                         R23 R1 K50 ["getNextOrder"]
      174 CALL                             R23 1 1
      175 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      177 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      179 LOADN                            R24 0
      180 GETTABLEKS                       R25 R2 K56 ["Gap"]
      182 GETTABLEKS                       R25 R25 K57 ["XXSmall"]
      184 CALL                             R23 2 1
      185 SETTABLEKS                       R23 R22 K33 ["Size"]
      187 CALL                             R20 2 1
      188 SETTABLEKS                       R20 R19 K41 ["Gap1"]
      190 GETUPVAL                         R20 5
      191 GETTABLEKS                       R20 R20 K6 ["createElement"]
      193 GETUPVAL                         R21 8
      194 GETTABLEKS                       R21 R21 K58 ["Tooltip"]
      196 DUPTABLE                         R22 K62 [{"LayoutOrder", "title", "text", "side", "align"}]
      197 NAMECALL                         R23 R1 K50 ["getNextOrder"]
      199 CALL                             R23 1 1
      200 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      202 LOADK                            R25 K51 ["LookSaveMenu"]
      203 LOADK                            R26 K42 ["SaveToRoblox"]
      204 NAMECALL                         R23 R3 K53 ["getText"]
      206 CALL                             R23 3 1
      207 SETTABLEKS                       R23 R22 K59 ["title"]
      209 LOADK                            R25 K51 ["LookSaveMenu"]
      210 LOADK                            R26 K63 ["TooltipSaveToRobloxDescription"]
      211 NAMECALL                         R23 R3 K53 ["getText"]
      213 CALL                             R23 3 1
      214 SETTABLEKS                       R23 R22 K60 ["text"]
      216 GETUPVAL                         R23 8
      217 GETTABLEKS                       R23 R23 K27 ["Enums"]
      219 GETTABLEKS                       R23 R23 K64 ["PopoverSide"]
      221 GETTABLEKS                       R23 R23 K65 ["Right"]
      223 SETTABLEKS                       R23 R22 K61 ["side"]
      225 GETUPVAL                         R23 8
      226 GETTABLEKS                       R23 R23 K27 ["Enums"]
      228 GETTABLEKS                       R23 R23 K28 ["PopoverAlign"]
      230 GETTABLEKS                       R23 R23 K29 ["Start"]
      232 SETTABLEKS                       R23 R22 K20 ["align"]
      234 GETUPVAL                         R23 5
      235 GETTABLEKS                       R23 R23 K6 ["createElement"]
      237 GETUPVAL                         R24 8
      238 GETTABLEKS                       R24 R24 K48 ["Text"]
      240 DUPTABLE                         R25 K67 [{"Text", "Size", "tag", "onActivated"}]
      241 LOADK                            R28 K51 ["LookSaveMenu"]
      242 LOADK                            R29 K42 ["SaveToRoblox"]
      243 NAMECALL                         R26 R3 K53 ["getText"]
      245 CALL                             R26 3 1
      246 SETTABLEKS                       R26 R25 K48 ["Text"]
      248 GETIMPORT                        R26 K38 [UDim2.fromOffset]
      250 LOADN                            R27 250
      251 LOADN                            R28 0
      252 CALL                             R26 2 1
      253 SETTABLEKS                       R26 R25 K33 ["Size"]
      255 LOADK                            R26 K68 ["text-body-small content-system-contrast padding-small auto-y text-align-x-left"]
      256 SETTABLEKS                       R26 R25 K34 ["tag"]
      258 NEWCLOSURE                       R26 P0
      259 CAPTURE                          VAL R0
      260 SETTABLEKS                       R26 R25 K66 ["onActivated"]
      262 CALL                             R23 2 -1
      263 CALL                             R20 -1 1
      264 SETTABLEKS                       R20 R19 K42 ["SaveToRoblox"]
      266 GETUPVAL                         R20 4
      267 CALL                             R20 0 1
      268 JUMPIFNOT                        R20 ; [+26]
      269 GETTABLEKS                       R20 R4 K69 ["showCreateAvatarLook"]
      271 JUMPIFNOT                        R20 ; [+23]
      272 GETUPVAL                         R20 5
      273 GETTABLEKS                       R20 R20 K6 ["createElement"]
      275 GETUPVAL                         R21 8
      276 GETTABLEKS                       R21 R21 K32 ["View"]
      278 DUPTABLE                         R22 K55 [{"LayoutOrder", "Size"}]
      279 NAMECALL                         R23 R1 K50 ["getNextOrder"]
      281 CALL                             R23 1 1
      282 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      284 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      286 LOADN                            R24 0
      287 GETTABLEKS                       R25 R2 K56 ["Gap"]
      289 GETTABLEKS                       R25 R25 K57 ["XXSmall"]
      291 CALL                             R23 2 1
      292 SETTABLEKS                       R23 R22 K33 ["Size"]
      294 CALL                             R20 2 1
      295 SETTABLEKS                       R20 R19 K43 ["Gap2"]
      297 GETUPVAL                         R20 4
      298 CALL                             R20 0 1
      299 JUMPIFNOT                        R20 ; [+87]
      300 GETTABLEKS                       R20 R4 K69 ["showCreateAvatarLook"]
      302 JUMPIFNOT                        R20 ; [+84]
      303 GETUPVAL                         R20 5
      304 GETTABLEKS                       R20 R20 K6 ["createElement"]
      306 GETUPVAL                         R21 8
      307 GETTABLEKS                       R21 R21 K58 ["Tooltip"]
      309 DUPTABLE                         R22 K62 [{"LayoutOrder", "title", "text", "side", "align"}]
      310 NAMECALL                         R23 R1 K50 ["getNextOrder"]
      312 CALL                             R23 1 1
      313 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      315 LOADK                            R25 K51 ["LookSaveMenu"]
      316 LOADK                            R26 K44 ["CreateAvatarLook"]
      317 NAMECALL                         R23 R3 K53 ["getText"]
      319 CALL                             R23 3 1
      320 SETTABLEKS                       R23 R22 K59 ["title"]
      322 LOADK                            R25 K51 ["LookSaveMenu"]
      323 LOADK                            R26 K70 ["TooltipCreateAvatarLookDescription"]
      324 NAMECALL                         R23 R3 K53 ["getText"]
      326 CALL                             R23 3 1
      327 SETTABLEKS                       R23 R22 K60 ["text"]
      329 GETUPVAL                         R23 8
      330 GETTABLEKS                       R23 R23 K27 ["Enums"]
      332 GETTABLEKS                       R23 R23 K64 ["PopoverSide"]
      334 GETTABLEKS                       R23 R23 K65 ["Right"]
      336 SETTABLEKS                       R23 R22 K61 ["side"]
      338 GETUPVAL                         R23 8
      339 GETTABLEKS                       R23 R23 K27 ["Enums"]
      341 GETTABLEKS                       R23 R23 K28 ["PopoverAlign"]
      343 GETTABLEKS                       R23 R23 K29 ["Start"]
      345 SETTABLEKS                       R23 R22 K20 ["align"]
      347 GETUPVAL                         R23 5
      348 GETTABLEKS                       R23 R23 K6 ["createElement"]
      350 GETUPVAL                         R24 8
      351 GETTABLEKS                       R24 R24 K48 ["Text"]
      353 DUPTABLE                         R25 K67 [{"Text", "Size", "tag", "onActivated"}]
      354 LOADK                            R28 K51 ["LookSaveMenu"]
      355 LOADK                            R29 K44 ["CreateAvatarLook"]
      356 NAMECALL                         R26 R3 K53 ["getText"]
      358 CALL                             R26 3 1
      359 SETTABLEKS                       R26 R25 K48 ["Text"]
      361 GETIMPORT                        R26 K38 [UDim2.fromOffset]
      363 LOADN                            R27 250
      364 LOADN                            R28 0
      365 CALL                             R26 2 1
      366 SETTABLEKS                       R26 R25 K33 ["Size"]
      368 GETTABLEKS                       R27 R4 K71 ["canCreateAvatarLook"]
      370 JUMPIFNOT                        R27 ; [+2]
      371 LOADK                            R26 K68 ["text-body-small content-system-contrast padding-small auto-y text-align-x-left"]
      372 JUMP                             ; [+1]
      373 LOADK                            R26 K72 ["text-body-small content-muted padding-small auto-y text-align-x-left"]
      374 SETTABLEKS                       R26 R25 K34 ["tag"]
      376 GETTABLEKS                       R27 R4 K71 ["canCreateAvatarLook"]
      378 JUMPIFNOT                        R27 ; [+3]
      379 NEWCLOSURE                       R26 P1
      380 CAPTURE                          VAL R0
      381 JUMP                             ; [+1]
      382 LOADNIL                          R26
      383 SETTABLEKS                       R26 R25 K66 ["onActivated"]
      385 CALL                             R23 2 -1
      386 CALL                             R20 -1 1
      387 SETTABLEKS                       R20 R19 K44 ["CreateAvatarLook"]
      389 MOVE                             R20 R7
      390 JUMPIFNOT                        R20 ; [+23]
      391 GETUPVAL                         R20 5
      392 GETTABLEKS                       R20 R20 K6 ["createElement"]
      394 GETUPVAL                         R21 8
      395 GETTABLEKS                       R21 R21 K32 ["View"]
      397 DUPTABLE                         R22 K55 [{"LayoutOrder", "Size"}]
      398 NAMECALL                         R23 R1 K50 ["getNextOrder"]
      400 CALL                             R23 1 1
      401 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      403 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      405 LOADN                            R24 0
      406 GETTABLEKS                       R25 R2 K56 ["Gap"]
      408 GETTABLEKS                       R25 R25 K57 ["XXSmall"]
      410 CALL                             R23 2 1
      411 SETTABLEKS                       R23 R22 K33 ["Size"]
      413 CALL                             R20 2 1
      414 SETTABLEKS                       R20 R19 K45 ["Gap3"]
      416 MOVE                             R20 R7
      417 JUMPIFNOT                        R20 ; [+80]
      418 GETUPVAL                         R20 5
      419 GETTABLEKS                       R20 R20 K6 ["createElement"]
      421 GETUPVAL                         R21 8
      422 GETTABLEKS                       R21 R21 K58 ["Tooltip"]
      424 DUPTABLE                         R22 K62 [{"LayoutOrder", "title", "text", "side", "align"}]
      425 NAMECALL                         R23 R1 K50 ["getNextOrder"]
      427 CALL                             R23 1 1
      428 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      430 LOADK                            R25 K51 ["LookSaveMenu"]
      431 LOADK                            R26 K46 ["CreateMakeupLook"]
      432 NAMECALL                         R23 R3 K53 ["getText"]
      434 CALL                             R23 3 1
      435 SETTABLEKS                       R23 R22 K59 ["title"]
      437 LOADK                            R25 K51 ["LookSaveMenu"]
      438 LOADK                            R26 K73 ["TooltipCreateMakeupLookDescription"]
      439 NAMECALL                         R23 R3 K53 ["getText"]
      441 CALL                             R23 3 1
      442 SETTABLEKS                       R23 R22 K60 ["text"]
      444 GETUPVAL                         R23 8
      445 GETTABLEKS                       R23 R23 K27 ["Enums"]
      447 GETTABLEKS                       R23 R23 K64 ["PopoverSide"]
      449 GETTABLEKS                       R23 R23 K65 ["Right"]
      451 SETTABLEKS                       R23 R22 K61 ["side"]
      453 GETUPVAL                         R23 8
      454 GETTABLEKS                       R23 R23 K27 ["Enums"]
      456 GETTABLEKS                       R23 R23 K28 ["PopoverAlign"]
      458 GETTABLEKS                       R23 R23 K29 ["Start"]
      460 SETTABLEKS                       R23 R22 K20 ["align"]
      462 GETUPVAL                         R23 5
      463 GETTABLEKS                       R23 R23 K6 ["createElement"]
      465 GETUPVAL                         R24 8
      466 GETTABLEKS                       R24 R24 K48 ["Text"]
      468 DUPTABLE                         R25 K67 [{"Text", "Size", "tag", "onActivated"}]
      469 LOADK                            R28 K51 ["LookSaveMenu"]
      470 LOADK                            R29 K46 ["CreateMakeupLook"]
      471 NAMECALL                         R26 R3 K53 ["getText"]
      473 CALL                             R26 3 1
      474 SETTABLEKS                       R26 R25 K48 ["Text"]
      476 GETIMPORT                        R26 K38 [UDim2.fromOffset]
      478 LOADN                            R27 250
      479 LOADN                            R28 0
      480 CALL                             R26 2 1
      481 SETTABLEKS                       R26 R25 K33 ["Size"]
      483 JUMPIFNOT                        R6 ; [+2]
      484 LOADK                            R26 K68 ["text-body-small content-system-contrast padding-small auto-y text-align-x-left"]
      485 JUMP                             ; [+1]
      486 LOADK                            R26 K72 ["text-body-small content-muted padding-small auto-y text-align-x-left"]
      487 SETTABLEKS                       R26 R25 K34 ["tag"]
      489 JUMPIFNOT                        R6 ; [+3]
      490 NEWCLOSURE                       R26 P2
      491 CAPTURE                          VAL R0
      492 JUMP                             ; [+1]
      493 LOADNIL                          R26
      494 SETTABLEKS                       R26 R25 K66 ["onActivated"]
      496 CALL                             R23 2 -1
      497 CALL                             R20 -1 1
      498 SETTABLEKS                       R20 R19 K46 ["CreateMakeupLook"]
      500 CALL                             R16 3 1
      501 SETTABLEKS                       R16 R15 K30 ["Menu"]
      503 CALL                             R12 3 1
      504 SETTABLEKS                       R12 R11 K13 ["Content"]
      506 CALL                             R8 3 -1
      507 RETURN                           R8 -1

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
