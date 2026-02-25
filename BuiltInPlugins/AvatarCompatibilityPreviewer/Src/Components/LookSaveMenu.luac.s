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
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["openDialog"]
        7 LOADK                            R1 K2 ["AvatarLook"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["openDialog"]
        7 LOADK                            R1 K2 ["MakeupLook"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R3 R4 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R4 R5 K2 ["Context"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 5
       18 CALL                             R4 0 1
       19 GETUPVAL                         R6 6
       20 GETTABLEKS                       R5 R6 K3 ["new"]
       22 CALL                             R5 0 1
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R6 R7 K4 ["createElement"]
       26 GETUPVAL                         R9 7
       27 GETTABLEKS                       R8 R9 K5 ["Popover"]
       29 GETTABLEKS                       R7 R8 K6 ["Root"]
       31 DUPTABLE                         R8 K9 [{"LayoutOrder", "isOpen"}]
       32 GETTABLEKS                       R9 R0 K7 ["LayoutOrder"]
       34 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       36 GETTABLEKS                       R9 R0 K8 ["isOpen"]
       38 SETTABLEKS                       R9 R8 K8 ["isOpen"]
       40 DUPTABLE                         R9 K12 [{"Anchor", "Content"}]
       41 GETUPVAL                         R11 3
       42 GETTABLEKS                       R10 R11 K4 ["createElement"]
       44 GETUPVAL                         R13 7
       45 GETTABLEKS                       R12 R13 K5 ["Popover"]
       47 GETTABLEKS                       R11 R12 K10 ["Anchor"]
       49 DUPTABLE                         R12 K13 [{"LayoutOrder"}]
       50 GETTABLEKS                       R13 R0 K7 ["LayoutOrder"]
       52 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       54 DUPTABLE                         R13 K15 [{"AnchorContent"}]
       55 GETTABLEKS                       R14 R0 K16 ["anchor"]
       57 SETTABLEKS                       R14 R13 K14 ["AnchorContent"]
       59 CALL                             R10 3 1
       60 SETTABLEKS                       R10 R9 K10 ["Anchor"]
       62 GETUPVAL                         R11 3
       63 GETTABLEKS                       R10 R11 K4 ["createElement"]
       65 GETUPVAL                         R13 7
       66 GETTABLEKS                       R12 R13 K5 ["Popover"]
       68 GETTABLEKS                       R11 R12 K11 ["Content"]
       70 DUPTABLE                         R12 K20 [{"onPressedOutside", "align", "hasArrow"}]
       71 GETTABLEKS                       R13 R0 K21 ["onClose"]
       73 SETTABLEKS                       R13 R12 K17 ["onPressedOutside"]
       75 DUPTABLE                         R13 K24 [{"position", "offset"}]
       76 GETUPVAL                         R17 7
       77 GETTABLEKS                       R16 R17 K25 ["Enums"]
       79 GETTABLEKS                       R15 R16 K26 ["PopoverAlign"]
       81 GETTABLEKS                       R14 R15 K27 ["Start"]
       83 SETTABLEKS                       R14 R13 K22 ["position"]
       85 LOADN                            R14 50
       86 SETTABLEKS                       R14 R13 K23 ["offset"]
       88 SETTABLEKS                       R13 R12 K18 ["align"]
       90 LOADB                            R13 0
       91 SETTABLEKS                       R13 R12 K19 ["hasArrow"]
       93 DUPTABLE                         R13 K29 [{"Menu"}]
       94 GETUPVAL                         R15 3
       95 GETTABLEKS                       R14 R15 K4 ["createElement"]
       97 GETUPVAL                         R16 7
       98 GETTABLEKS                       R15 R16 K30 ["View"]
      100 DUPTABLE                         R16 K33 [{"Size", "tag"}]
      101 GETIMPORT                        R17 K36 [UDim2.fromOffset]
      103 LOADN                            R18 4
      104 LOADN                            R19 116
      105 CALL                             R17 2 1
      106 SETTABLEKS                       R17 R16 K31 ["Size"]
      108 LOADK                            R17 K37 ["col padding-xsmall auto-y bg-surface-300 radius-medium stroke-default"]
      109 SETTABLEKS                       R17 R16 K32 ["tag"]
      111 DUPTABLE                         R17 K45 [{"Title", "Gap1", "SaveToRoblox", "Gap2", "CreateAvatarLook", "Gap3", "CreateMakeupLook"}]
      112 GETUPVAL                         R19 3
      113 GETTABLEKS                       R18 R19 K4 ["createElement"]
      115 GETUPVAL                         R20 7
      116 GETTABLEKS                       R19 R20 K46 ["Text"]
      118 DUPTABLE                         R20 K47 [{"LayoutOrder", "Text", "tag"}]
      119 NAMECALL                         R21 R5 K48 ["getNextOrder"]
      121 CALL                             R21 1 1
      122 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      124 LOADK                            R23 K49 ["LookSaveMenu"]
      125 LOADK                            R24 K50 ["Save"]
      126 NAMECALL                         R21 R1 K51 ["getText"]
      128 CALL                             R21 3 1
      129 SETTABLEKS                       R21 R20 K46 ["Text"]
      131 LOADK                            R21 K52 ["text-caption-small auto-xy content-muted padding-small"]
      132 SETTABLEKS                       R21 R20 K32 ["tag"]
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K38 ["Title"]
      137 GETUPVAL                         R19 3
      138 GETTABLEKS                       R18 R19 K4 ["createElement"]
      140 GETUPVAL                         R20 7
      141 GETTABLEKS                       R19 R20 K30 ["View"]
      143 DUPTABLE                         R20 K53 [{"LayoutOrder", "Size"}]
      144 NAMECALL                         R21 R5 K48 ["getNextOrder"]
      146 CALL                             R21 1 1
      147 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      149 GETIMPORT                        R21 K36 [UDim2.fromOffset]
      151 LOADN                            R22 0
      152 GETTABLEKS                       R24 R4 K54 ["Gap"]
      154 GETTABLEKS                       R23 R24 K55 ["XXSmall"]
      156 CALL                             R21 2 1
      157 SETTABLEKS                       R21 R20 K31 ["Size"]
      159 CALL                             R18 2 1
      160 SETTABLEKS                       R18 R17 K39 ["Gap1"]
      162 GETUPVAL                         R19 3
      163 GETTABLEKS                       R18 R19 K4 ["createElement"]
      165 GETUPVAL                         R20 7
      166 GETTABLEKS                       R19 R20 K56 ["Tooltip"]
      168 DUPTABLE                         R20 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      169 NAMECALL                         R21 R5 K48 ["getNextOrder"]
      171 CALL                             R21 1 1
      172 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      174 LOADK                            R23 K49 ["LookSaveMenu"]
      175 LOADK                            R24 K40 ["SaveToRoblox"]
      176 NAMECALL                         R21 R1 K51 ["getText"]
      178 CALL                             R21 3 1
      179 SETTABLEKS                       R21 R20 K57 ["title"]
      181 LOADK                            R23 K49 ["LookSaveMenu"]
      182 LOADK                            R24 K61 ["TooltipSaveToRobloxDescription"]
      183 NAMECALL                         R21 R1 K51 ["getText"]
      185 CALL                             R21 3 1
      186 SETTABLEKS                       R21 R20 K58 ["text"]
      188 GETUPVAL                         R24 7
      189 GETTABLEKS                       R23 R24 K25 ["Enums"]
      191 GETTABLEKS                       R22 R23 K62 ["PopoverSide"]
      193 GETTABLEKS                       R21 R22 K63 ["Right"]
      195 SETTABLEKS                       R21 R20 K59 ["side"]
      197 GETUPVAL                         R24 7
      198 GETTABLEKS                       R23 R24 K25 ["Enums"]
      200 GETTABLEKS                       R22 R23 K26 ["PopoverAlign"]
      202 GETTABLEKS                       R21 R22 K27 ["Start"]
      204 SETTABLEKS                       R21 R20 K18 ["align"]
      206 GETUPVAL                         R22 3
      207 GETTABLEKS                       R21 R22 K4 ["createElement"]
      209 GETUPVAL                         R23 7
      210 GETTABLEKS                       R22 R23 K46 ["Text"]
      212 DUPTABLE                         R23 K65 [{"Text", "tag", "onActivated"}]
      213 LOADK                            R26 K49 ["LookSaveMenu"]
      214 LOADK                            R27 K40 ["SaveToRoblox"]
      215 NAMECALL                         R24 R1 K51 ["getText"]
      217 CALL                             R24 3 1
      218 SETTABLEKS                       R24 R23 K46 ["Text"]
      220 LOADK                            R24 K66 ["text-body-small auto-xy content-system-contrast padding-small"]
      221 SETTABLEKS                       R24 R23 K32 ["tag"]
      223 NEWCLOSURE                       R24 P0
      224 CAPTURE                          VAL R0
      225 SETTABLEKS                       R24 R23 K64 ["onActivated"]
      227 CALL                             R21 2 -1
      228 CALL                             R18 -1 1
      229 SETTABLEKS                       R18 R17 K40 ["SaveToRoblox"]
      231 GETUPVAL                         R19 3
      232 GETTABLEKS                       R18 R19 K4 ["createElement"]
      234 GETUPVAL                         R20 7
      235 GETTABLEKS                       R19 R20 K30 ["View"]
      237 DUPTABLE                         R20 K53 [{"LayoutOrder", "Size"}]
      238 NAMECALL                         R21 R5 K48 ["getNextOrder"]
      240 CALL                             R21 1 1
      241 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      243 GETIMPORT                        R21 K36 [UDim2.fromOffset]
      245 LOADN                            R22 0
      246 GETTABLEKS                       R24 R4 K54 ["Gap"]
      248 GETTABLEKS                       R23 R24 K55 ["XXSmall"]
      250 CALL                             R21 2 1
      251 SETTABLEKS                       R21 R20 K31 ["Size"]
      253 CALL                             R18 2 1
      254 SETTABLEKS                       R18 R17 K41 ["Gap2"]
      256 GETUPVAL                         R19 3
      257 GETTABLEKS                       R18 R19 K4 ["createElement"]
      259 GETUPVAL                         R20 7
      260 GETTABLEKS                       R19 R20 K56 ["Tooltip"]
      262 DUPTABLE                         R20 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      263 NAMECALL                         R21 R5 K48 ["getNextOrder"]
      265 CALL                             R21 1 1
      266 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      268 LOADK                            R23 K49 ["LookSaveMenu"]
      269 LOADK                            R24 K42 ["CreateAvatarLook"]
      270 NAMECALL                         R21 R1 K51 ["getText"]
      272 CALL                             R21 3 1
      273 SETTABLEKS                       R21 R20 K57 ["title"]
      275 LOADK                            R23 K49 ["LookSaveMenu"]
      276 LOADK                            R24 K67 ["TooltipCreateAvatarLookDescription"]
      277 NAMECALL                         R21 R1 K51 ["getText"]
      279 CALL                             R21 3 1
      280 SETTABLEKS                       R21 R20 K58 ["text"]
      282 GETUPVAL                         R24 7
      283 GETTABLEKS                       R23 R24 K25 ["Enums"]
      285 GETTABLEKS                       R22 R23 K62 ["PopoverSide"]
      287 GETTABLEKS                       R21 R22 K63 ["Right"]
      289 SETTABLEKS                       R21 R20 K59 ["side"]
      291 GETUPVAL                         R24 7
      292 GETTABLEKS                       R23 R24 K25 ["Enums"]
      294 GETTABLEKS                       R22 R23 K26 ["PopoverAlign"]
      296 GETTABLEKS                       R21 R22 K27 ["Start"]
      298 SETTABLEKS                       R21 R20 K18 ["align"]
      300 GETUPVAL                         R22 3
      301 GETTABLEKS                       R21 R22 K4 ["createElement"]
      303 GETUPVAL                         R23 7
      304 GETTABLEKS                       R22 R23 K46 ["Text"]
      306 DUPTABLE                         R23 K65 [{"Text", "tag", "onActivated"}]
      307 LOADK                            R26 K49 ["LookSaveMenu"]
      308 LOADK                            R27 K42 ["CreateAvatarLook"]
      309 NAMECALL                         R24 R1 K51 ["getText"]
      311 CALL                             R24 3 1
      312 SETTABLEKS                       R24 R23 K46 ["Text"]
      314 JUMPIFNOT                        R2 ; [+5]
      315 GETTABLEKS                       R25 R2 K68 ["canCreateAvatarLook"]
      317 JUMPIFNOT                        R25 ; [+2]
      318 LOADK                            R24 K66 ["text-body-small auto-xy content-system-contrast padding-small"]
      319 JUMP                             ; [+1]
      320 LOADK                            R24 K69 ["text-body-small auto-xy content-muted padding-small"]
      321 SETTABLEKS                       R24 R23 K32 ["tag"]
      323 JUMPIFNOT                        R2 ; [+7]
      324 GETTABLEKS                       R25 R2 K68 ["canCreateAvatarLook"]
      326 JUMPIFNOT                        R25 ; [+4]
      327 NEWCLOSURE                       R24 P1
      328 CAPTURE                          VAL R0
      329 CAPTURE                          VAL R3
      330 JUMP                             ; [+1]
      331 LOADNIL                          R24
      332 SETTABLEKS                       R24 R23 K64 ["onActivated"]
      334 CALL                             R21 2 -1
      335 CALL                             R18 -1 1
      336 SETTABLEKS                       R18 R17 K42 ["CreateAvatarLook"]
      338 GETUPVAL                         R19 3
      339 GETTABLEKS                       R18 R19 K4 ["createElement"]
      341 GETUPVAL                         R20 7
      342 GETTABLEKS                       R19 R20 K30 ["View"]
      344 DUPTABLE                         R20 K53 [{"LayoutOrder", "Size"}]
      345 NAMECALL                         R21 R5 K48 ["getNextOrder"]
      347 CALL                             R21 1 1
      348 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      350 GETIMPORT                        R21 K36 [UDim2.fromOffset]
      352 LOADN                            R22 0
      353 GETTABLEKS                       R24 R4 K54 ["Gap"]
      355 GETTABLEKS                       R23 R24 K55 ["XXSmall"]
      357 CALL                             R21 2 1
      358 SETTABLEKS                       R21 R20 K31 ["Size"]
      360 CALL                             R18 2 1
      361 SETTABLEKS                       R18 R17 K43 ["Gap3"]
      363 GETUPVAL                         R19 3
      364 GETTABLEKS                       R18 R19 K4 ["createElement"]
      366 GETUPVAL                         R20 7
      367 GETTABLEKS                       R19 R20 K56 ["Tooltip"]
      369 DUPTABLE                         R20 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      370 NAMECALL                         R21 R5 K48 ["getNextOrder"]
      372 CALL                             R21 1 1
      373 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      375 LOADK                            R23 K49 ["LookSaveMenu"]
      376 LOADK                            R24 K44 ["CreateMakeupLook"]
      377 NAMECALL                         R21 R1 K51 ["getText"]
      379 CALL                             R21 3 1
      380 SETTABLEKS                       R21 R20 K57 ["title"]
      382 LOADK                            R23 K49 ["LookSaveMenu"]
      383 LOADK                            R24 K70 ["TooltipCreateMakeupLookDescription"]
      384 NAMECALL                         R21 R1 K51 ["getText"]
      386 CALL                             R21 3 1
      387 SETTABLEKS                       R21 R20 K58 ["text"]
      389 GETUPVAL                         R24 7
      390 GETTABLEKS                       R23 R24 K25 ["Enums"]
      392 GETTABLEKS                       R22 R23 K62 ["PopoverSide"]
      394 GETTABLEKS                       R21 R22 K63 ["Right"]
      396 SETTABLEKS                       R21 R20 K59 ["side"]
      398 GETUPVAL                         R24 7
      399 GETTABLEKS                       R23 R24 K25 ["Enums"]
      401 GETTABLEKS                       R22 R23 K26 ["PopoverAlign"]
      403 GETTABLEKS                       R21 R22 K27 ["Start"]
      405 SETTABLEKS                       R21 R20 K18 ["align"]
      407 GETUPVAL                         R22 3
      408 GETTABLEKS                       R21 R22 K4 ["createElement"]
      410 GETUPVAL                         R23 7
      411 GETTABLEKS                       R22 R23 K46 ["Text"]
      413 DUPTABLE                         R23 K65 [{"Text", "tag", "onActivated"}]
      414 LOADK                            R26 K49 ["LookSaveMenu"]
      415 LOADK                            R27 K44 ["CreateMakeupLook"]
      416 NAMECALL                         R24 R1 K51 ["getText"]
      418 CALL                             R24 3 1
      419 SETTABLEKS                       R24 R23 K46 ["Text"]
      421 JUMPIFNOT                        R2 ; [+5]
      422 GETTABLEKS                       R25 R2 K71 ["canCreateMakeupLook"]
      424 JUMPIFNOT                        R25 ; [+2]
      425 LOADK                            R24 K66 ["text-body-small auto-xy content-system-contrast padding-small"]
      426 JUMP                             ; [+1]
      427 LOADK                            R24 K69 ["text-body-small auto-xy content-muted padding-small"]
      428 SETTABLEKS                       R24 R23 K32 ["tag"]
      430 JUMPIFNOT                        R2 ; [+7]
      431 GETTABLEKS                       R25 R2 K71 ["canCreateMakeupLook"]
      433 JUMPIFNOT                        R25 ; [+4]
      434 NEWCLOSURE                       R24 P2
      435 CAPTURE                          VAL R0
      436 CAPTURE                          VAL R3
      437 JUMP                             ; [+1]
      438 LOADNIL                          R24
      439 SETTABLEKS                       R24 R23 K64 ["onActivated"]
      441 CALL                             R21 2 -1
      442 CALL                             R18 -1 1
      443 SETTABLEKS                       R18 R17 K44 ["CreateMakeupLook"]
      445 CALL                             R14 3 1
      446 SETTABLEKS                       R14 R13 K28 ["Menu"]
      448 CALL                             R10 3 1
      449 SETTABLEKS                       R10 R9 K11 ["Content"]
      451 CALL                             R6 3 -1
      452 RETURN                           R6 -1

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
       45 GETTABLEKS                       R8 R9 K15 ["Hooks"]
       47 GETTABLEKS                       R7 R8 K16 ["useCheckLookEquippedItems"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R10 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R10 K17 ["Components"]
       56 GETTABLEKS                       R8 R9 K18 ["LookContext"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R9 R1 K15 ["Hooks"]
       61 GETTABLEKS                       R8 R9 K19 ["useTokens"]
       63 GETTABLEKS                       R10 R3 K20 ["Util"]
       65 GETTABLEKS                       R9 R10 K21 ["LayoutOrderIterator"]
       67 DUPCLOSURE                       R10 K22 [PROTO_3]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R1
       76 RETURN                           R10 1
