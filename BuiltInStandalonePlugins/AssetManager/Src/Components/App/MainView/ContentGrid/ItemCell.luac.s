PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["Browser"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["Cell"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["Key"]
       12 GETUPVAL                         R5 3
       13 NAMECALL                         R0 R0 K4 ["handleMouse2Click"]
       15 CALL                             R0 5 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R6 R0 K2 ["Cell"]
       19 CALL                             R5 1 1
       20 LOADN                            R6 0
       21 GETUPVAL                         R7 5
       22 GETTABLEKS                       R7 R7 K3 ["AssetType"]
       24 GETTABLEKS                       R7 R7 K4 ["Model"]
       26 LOADK                            R8 K5 [""]
       27 LOADNIL                          R9
       28 NAMECALL                         R10 R4 K6 ["getItemsCache"]
       30 CALL                             R10 1 1
       31 GETTABLEKS                       R11 R0 K2 ["Cell"]
       33 GETUPVAL                         R12 6
       34 CALL                             R12 0 1
       35 LOADK                            R13 K5 [""]
       36 GETTABLEKS                       R15 R0 K2 ["Cell"]
       38 GETTABLE                         R14 R12 R15
       39 JUMPIFNOT                        R14 ; [+2]
       40 LOADK                            R13 K7 ["bg-shift-200"]
       41 JUMP                             ; [+1]
       42 LOADK                            R13 K8 ["bg-paper"]
       43 GETTABLEKS                       R15 R0 K9 ["Size"]
       45 GETTABLEKS                       R15 R15 K10 ["X"]
       47 GETTABLEKS                       R15 R15 K11 ["Offset"]
       49 GETUPVAL                         R17 7
       50 LOADK                            R19 K13 ["CellTagPadding"]
       51 NAMECALL                         R17 R17 K14 ["GetAttribute"]
       53 CALL                             R17 2 1
       54 MULK                             R16 R17 K12 [2]
       55 SUB                              R14 R15 R16
       56 GETUPVAL                         R15 8
       57 GETTABLEKS                       R15 R15 K15 ["useRef"]
       59 LOADNIL                          R16
       60 CALL                             R15 1 1
       61 GETUPVAL                         R16 8
       62 GETTABLEKS                       R16 R16 K15 ["useRef"]
       64 LOADNIL                          R17
       65 CALL                             R16 1 1
       66 GETUPVAL                         R17 9
       67 MOVE                             R18 R15
       68 CALL                             R17 1 1
       69 GETUPVAL                         R18 9
       70 MOVE                             R19 R16
       71 CALL                             R18 1 1
       72 GETUPVAL                         R19 10
       73 MOVE                             R20 R17
       74 GETTABLEKS                       R21 R0 K2 ["Cell"]
       76 CALL                             R19 2 1
       77 GETUPVAL                         R20 11
       78 GETUPVAL                         R21 5
       79 GETTABLEKS                       R21 R21 K16 ["MenuContext"]
       81 GETTABLEKS                       R21 R21 K17 ["Asset"]
       83 DUPTABLE                         R22 K20 [{"Path", "Index"}]
       84 GETTABLEKS                       R23 R0 K2 ["Cell"]
       86 SETTABLEKS                       R23 R22 K18 ["Path"]
       88 GETTABLEKS                       R23 R0 K21 ["Key"]
       90 SETTABLEKS                       R23 R22 K19 ["Index"]
       92 CALL                             R20 2 1
       93 GETTABLEKS                       R21 R0 K22 ["ParentScope"]
       95 GETTABLEKS                       R24 R21 K23 ["Uid"]
       97 MOVE                             R25 R11
       98 GETUPVAL                         R26 5
       99 GETTABLEKS                       R26 R26 K24 ["AssetInfoField"]
      101 GETTABLEKS                       R26 R26 K3 ["AssetType"]
      103 NAMECALL                         R22 R10 K25 ["getItemField"]
      105 CALL                             R22 4 1
      106 MOVE                             R7 R22
      107 GETTABLEKS                       R24 R21 K23 ["Uid"]
      109 MOVE                             R25 R11
      110 GETUPVAL                         R26 5
      111 GETTABLEKS                       R26 R26 K24 ["AssetInfoField"]
      113 GETTABLEKS                       R26 R26 K26 ["DisplayName"]
      115 NAMECALL                         R22 R10 K25 ["getItemField"]
      117 CALL                             R22 4 1
      118 MOVE                             R8 R22
      119 GETTABLEKS                       R24 R21 K23 ["Uid"]
      121 MOVE                             R25 R11
      122 GETUPVAL                         R26 5
      123 GETTABLEKS                       R26 R26 K24 ["AssetInfoField"]
      125 GETTABLEKS                       R26 R26 K27 ["AssetId"]
      127 NAMECALL                         R22 R10 K25 ["getItemField"]
      129 CALL                             R22 4 1
      130 MOVE                             R6 R22
      131 GETTABLEKS                       R24 R21 K23 ["Uid"]
      133 MOVE                             R25 R11
      134 GETUPVAL                         R26 5
      135 GETTABLEKS                       R26 R26 K24 ["AssetInfoField"]
      137 GETTABLEKS                       R26 R26 K28 ["IsPackage"]
      139 NAMECALL                         R22 R10 K25 ["getItemField"]
      141 CALL                             R22 4 1
      142 MOVE                             R9 R22
      143 JUMPIFNOT                        R6 ; [+2]
      144 JUMPIFNOT                        R7 ; [+1]
      145 JUMPIF                           R8 ; [+2]
      146 LOADNIL                          R22
      147 RETURN                           R22 1
      148 GETUPVAL                         R23 12
      149 MOVE                             R24 R8
      150 CALL                             R23 1 1
      151 GETTABLEKS                       R23 R23 K10 ["X"]
      153 JUMPIFLT                         R14 R23 ; [+2]
      155 LOADB                            R22 0 +1
      156 LOADB                            R22 1
      157 GETTABLEKS                       R24 R0 K2 ["Cell"]
      159 GETTABLE                         R23 R12 R24
      160 NEWCLOSURE                       R24 P0
      161 CAPTURE                          VAL R3
      162 CAPTURE                          UPVAL U5
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R20
      165 GETUPVAL                         R25 8
      166 GETTABLEKS                       R25 R25 K29 ["createElement"]
      168 GETUPVAL                         R26 13
      169 GETTABLEKS                       R26 R26 K30 ["View"]
      171 DUPTABLE                         R27 K35 [{"LayoutOrder", "Size", "Position", "ref", "tag"}]
      172 GETTABLEKS                       R28 R0 K21 ["Key"]
      174 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      176 GETTABLEKS                       R28 R0 K9 ["Size"]
      178 SETTABLEKS                       R28 R27 K9 ["Size"]
      180 GETTABLEKS                       R28 R0 K32 ["Position"]
      182 SETTABLEKS                       R28 R27 K32 ["Position"]
      184 SETTABLEKS                       R15 R27 K33 ["ref"]
      186 NEWTABLE                         R28 4 0
      188 LOADB                            R29 1
      189 SETTABLEKS                       R29 R28 K36 ["align-x-center align-y-top padding-xsmall radius-medium"]
      191 SETTABLEKS                       R23 R28 K37 ["bg-action-soft-emphasis"]
      193 NOT                              R30 R23
      194 AND                              R29 R30 R17
      195 SETTABLEKS                       R29 R28 K7 ["bg-shift-200"]
      197 SETTABLEKS                       R19 R28 K38 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      199 SETTABLEKS                       R28 R27 K34 ["tag"]
      201 DUPTABLE                         R28 K40 [{"InputHandler"}]
      202 GETUPVAL                         R29 8
      203 GETTABLEKS                       R29 R29 K29 ["createElement"]
      205 LOADK                            R30 K41 ["ImageButton"]
      206 NEWTABLE                         R31 4 0
      208 GETUPVAL                         R32 8
      209 GETTABLEKS                       R32 R32 K42 ["Event"]
      211 GETTABLEKS                       R32 R32 K43 ["MouseButton2Click"]
      213 SETTABLE                         R24 R31 R32
      214 GETUPVAL                         R32 8
      215 GETTABLEKS                       R32 R32 K42 ["Event"]
      217 GETTABLEKS                       R32 R32 K44 ["MouseButton1Down"]
      219 NEWCLOSURE                       R33 P1
      220 CAPTURE                          VAL R3
      221 CAPTURE                          UPVAL U5
      222 CAPTURE                          VAL R0
      223 SETTABLE                         R33 R31 R32
      224 GETUPVAL                         R32 8
      225 GETTABLEKS                       R32 R32 K42 ["Event"]
      227 GETTABLEKS                       R32 R32 K45 ["MouseButton1Up"]
      229 NEWCLOSURE                       R33 P2
      230 CAPTURE                          VAL R3
      231 CAPTURE                          UPVAL U5
      232 CAPTURE                          VAL R0
      233 SETTABLE                         R33 R31 R32
      234 GETUPVAL                         R32 8
      235 GETTABLEKS                       R32 R32 K46 ["Tag"]
      237 LOADK                            R33 K47 ["gui-object-defaults size-full col gap-xsmall data-testid=item-cell-input"]
      238 SETTABLE                         R33 R31 R32
      239 DUPTABLE                         R32 K50 [{"ThumbnailContainer", "CellData"}]
      240 GETUPVAL                         R33 8
      241 GETTABLEKS                       R33 R33 K29 ["createElement"]
      243 GETUPVAL                         R34 13
      244 GETTABLEKS                       R34 R34 K30 ["View"]
      246 DUPTABLE                         R35 K51 [{"LayoutOrder", "ref", "tag"}]
      247 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      249 CALL                             R36 1 1
      250 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      252 SETTABLEKS                       R16 R35 K33 ["ref"]
      254 LOADK                            R37 K53 ["fill size-full radius-small %*"]
      255 MOVE                             R39 R13
      256 NAMECALL                         R37 R37 K54 ["format"]
      258 CALL                             R37 2 1
      259 MOVE                             R36 R37
      260 SETTABLEKS                       R36 R35 K34 ["tag"]
      262 DUPTABLE                         R36 K58 [{"Thumbnail", "PackageLinkIcon", "AudioOverlay"}]
      263 GETUPVAL                         R37 8
      264 GETTABLEKS                       R37 R37 K29 ["createElement"]
      266 GETUPVAL                         R38 14
      267 DUPTABLE                         R39 K59 [{"AssetId", "AssetType"}]
      268 SETTABLEKS                       R6 R39 K27 ["AssetId"]
      270 SETTABLEKS                       R7 R39 K3 ["AssetType"]
      272 CALL                             R37 2 1
      273 SETTABLEKS                       R37 R36 K55 ["Thumbnail"]
      275 MOVE                             R37 R9
      276 JUMPIFNOT                        R37 ; [+8]
      277 GETUPVAL                         R37 8
      278 GETTABLEKS                       R37 R37 K29 ["createElement"]
      280 GETUPVAL                         R38 13
      281 GETTABLEKS                       R38 R38 K60 ["Image"]
      283 DUPTABLE                         R39 K65 [{["ZIndex"] = 2, ["tag"] = "am-size-icon icon-packageLink anchor-bottom-right radius-small bg-over-media-0", ["testId"] = "package-link-icon"}]
      284 CALL                             R37 2 1
      285 SETTABLEKS                       R37 R36 K56 ["PackageLinkIcon"]
      287 GETUPVAL                         R38 5
      288 GETTABLEKS                       R38 R38 K3 ["AssetType"]
      290 GETTABLEKS                       R38 R38 K66 ["Audio"]
      292 JUMPIFNOTEQ                      R7 R38 ; [+14]
      294 GETUPVAL                         R37 8
      295 GETTABLEKS                       R37 R37 K29 ["createElement"]
      297 GETUPVAL                         R38 15
      298 DUPTABLE                         R39 K69 [{"AssetId", "IsHovered", "OnRightClick"}]
      299 SETTABLEKS                       R6 R39 K27 ["AssetId"]
      301 SETTABLEKS                       R18 R39 K67 ["IsHovered"]
      303 SETTABLEKS                       R24 R39 K68 ["OnRightClick"]
      305 CALL                             R37 2 1
      306 JUMP                             ; [+1]
      307 LOADNIL                          R37
      308 SETTABLEKS                       R37 R36 K57 ["AudioOverlay"]
      310 CALL                             R33 3 1
      311 SETTABLEKS                       R33 R32 K48 ["ThumbnailContainer"]
      313 GETUPVAL                         R33 8
      314 GETTABLEKS                       R33 R33 K29 ["createElement"]
      316 GETUPVAL                         R34 13
      317 GETTABLEKS                       R34 R34 K30 ["View"]
      319 DUPTABLE                         R35 K71 [{["LayoutOrder"], ["tag"] = "am-size-full-celldata col align-x-left"}]
      320 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      322 CALL                             R36 1 1
      323 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      325 DUPTABLE                         R36 K74 [{"NameTag", "TypeTag"}]
      326 JUMPIFNOT                        R5 ; [+24]
      327 GETUPVAL                         R37 8
      328 GETTABLEKS                       R37 R37 K29 ["createElement"]
      330 GETUPVAL                         R38 16
      331 DUPTABLE                         R39 K78 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      332 NAMECALL                         R40 R1 K52 ["getNextOrder"]
      334 CALL                             R40 1 1
      335 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      337 SETTABLEKS                       R8 R39 K75 ["InitialText"]
      339 SETTABLEKS                       R7 R39 K76 ["ItemType"]
      341 GETTABLEKS                       R40 R0 K2 ["Cell"]
      343 SETTABLEKS                       R40 R39 K77 ["ItemPath"]
      345 GETTABLEKS                       R40 R0 K9 ["Size"]
      347 SETTABLEKS                       R40 R39 K9 ["Size"]
      349 CALL                             R37 2 1
      350 JUMP                             ; [+60]
      351 JUMPIFNOT                        R22 ; [+44]
      352 GETUPVAL                         R37 8
      353 GETTABLEKS                       R37 R37 K29 ["createElement"]
      355 GETUPVAL                         R38 13
      356 GETTABLEKS                       R38 R38 K79 ["Tooltip"]
      358 DUPTABLE                         R39 K82 [{"LayoutOrder", "title", "side"}]
      359 NAMECALL                         R40 R1 K52 ["getNextOrder"]
      361 CALL                             R40 1 1
      362 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      364 SETTABLEKS                       R8 R39 K80 ["title"]
      366 GETUPVAL                         R40 13
      367 GETTABLEKS                       R40 R40 K83 ["Enums"]
      369 GETTABLEKS                       R40 R40 K84 ["PopoverSide"]
      371 GETTABLEKS                       R40 R40 K85 ["Bottom"]
      373 SETTABLEKS                       R40 R39 K81 ["side"]
      375 NEWTABLE                         R40 0 1
      377 GETUPVAL                         R41 8
      378 GETTABLEKS                       R41 R41 K29 ["createElement"]
      380 GETUPVAL                         R42 13
      381 GETTABLEKS                       R42 R42 K86 ["Text"]
      383 DUPTABLE                         R43 K88 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
      384 NAMECALL                         R44 R1 K52 ["getNextOrder"]
      386 CALL                             R44 1 1
      387 SETTABLEKS                       R44 R43 K31 ["LayoutOrder"]
      389 SETTABLEKS                       R8 R43 K86 ["Text"]
      391 CALL                             R41 2 -1
      392 SETLIST                          R40 R41 -1 [1]
      394 CALL                             R37 3 1
      395 JUMP                             ; [+15]
      396 GETUPVAL                         R37 8
      397 GETTABLEKS                       R37 R37 K29 ["createElement"]
      399 GETUPVAL                         R38 13
      400 GETTABLEKS                       R38 R38 K86 ["Text"]
      402 DUPTABLE                         R39 K88 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
      403 NAMECALL                         R40 R1 K52 ["getNextOrder"]
      405 CALL                             R40 1 1
      406 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      408 SETTABLEKS                       R8 R39 K86 ["Text"]
      410 CALL                             R37 2 1
      411 SETTABLEKS                       R37 R36 K72 ["NameTag"]
      413 GETUPVAL                         R37 8
      414 GETTABLEKS                       R37 R37 K29 ["createElement"]
      416 GETUPVAL                         R38 13
      417 GETTABLEKS                       R38 R38 K86 ["Text"]
      419 DUPTABLE                         R39 K90 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy text-caption-small text-truncate-end content-default"}]
      420 NAMECALL                         R40 R1 K52 ["getNextOrder"]
      422 CALL                             R40 1 1
      423 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      425 LOADK                            R42 K3 ["AssetType"]
      426 MOVE                             R43 R7
      427 NAMECALL                         R40 R2 K91 ["getText"]
      429 CALL                             R40 3 1
      430 SETTABLEKS                       R40 R39 K86 ["Text"]
      432 CALL                             R37 2 1
      433 SETTABLEKS                       R37 R36 K73 ["TypeTag"]
      435 CALL                             R33 3 1
      436 SETTABLEKS                       R33 R32 K49 ["CellData"]
      438 CALL                             R29 3 1
      439 SETTABLEKS                       R29 R28 K39 ["InputHandler"]
      441 CALL                             R25 3 -1
      442 RETURN                           R25 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Components"]
       38 GETTABLEKS                       R7 R7 K14 ["Shared"]
       40 GETTABLEKS                       R7 R7 K15 ["AudioPreviewOverlay"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["Shared"]
       51 GETTABLEKS                       R8 R8 K16 ["EditNameInput"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K13 ["Components"]
       60 GETTABLEKS                       R9 R9 K14 ["Shared"]
       62 GETTABLEKS                       R9 R9 K17 ["ItemThumbnail"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K12 ["Src"]
       69 GETTABLEKS                       R10 R10 K18 ["Controllers"]
       71 GETTABLEKS                       R10 R10 K19 ["Input"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K12 ["Src"]
       78 GETTABLEKS                       R11 R11 K18 ["Controllers"]
       80 GETTABLEKS                       R11 R11 K20 ["ItemsController"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K12 ["Src"]
       87 GETTABLEKS                       R12 R12 K21 ["Hooks"]
       89 GETTABLEKS                       R12 R12 K22 ["useContextMenu"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K12 ["Src"]
       96 GETTABLEKS                       R13 R13 K21 ["Hooks"]
       98 GETTABLEKS                       R13 R13 K23 ["useIsEditItem"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K12 ["Src"]
      105 GETTABLEKS                       R14 R14 K21 ["Hooks"]
      107 GETTABLEKS                       R14 R14 K24 ["useItemHovered"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K12 ["Src"]
      114 GETTABLEKS                       R15 R15 K21 ["Hooks"]
      116 GETTABLEKS                       R15 R15 K25 ["useItemDragHovered"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K12 ["Src"]
      123 GETTABLEKS                       R16 R16 K21 ["Hooks"]
      125 GETTABLEKS                       R16 R16 K26 ["useItemSelection"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R17 R0 K12 ["Src"]
      132 GETTABLEKS                       R17 R17 K27 ["Types"]
      134 CALL                             R16 1 1
      135 GETTABLEKS                       R17 R3 K28 ["Util"]
      137 GETTABLEKS                       R17 R17 K29 ["LayoutOrderIterator"]
      139 GETTABLEKS                       R18 R3 K28 ["Util"]
      141 GETTABLEKS                       R18 R18 K30 ["GetTextSize"]
      143 GETIMPORT                        R19 K5 [require]
      145 GETTABLEKS                       R20 R0 K12 ["Src"]
      147 GETTABLEKS                       R20 R20 K31 ["Resources"]
      149 GETTABLEKS                       R20 R20 K32 ["PluginStyles"]
      151 CALL                             R19 1 1
      152 DUPCLOSURE                       R20 K33 [PROTO_3]
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R7
      170 RETURN                           R20 1
