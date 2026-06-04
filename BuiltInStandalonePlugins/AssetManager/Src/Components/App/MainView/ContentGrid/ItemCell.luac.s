PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Cell"]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R7 R7 K3 ["Key"]
       12 GETUPVAL                         R8 3
       13 NAMECALL                         R3 R3 K4 ["handleMouse2Click"]
       15 CALL                             R3 5 0
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
       17 CALL                             R5 0 1
       18 GETUPVAL                         R6 5
       19 GETTABLEKS                       R7 R0 K2 ["Cell"]
       21 CALL                             R6 1 1
       22 LOADN                            R7 0
       23 GETUPVAL                         R8 6
       24 GETTABLEKS                       R8 R8 K3 ["AssetType"]
       26 GETTABLEKS                       R8 R8 K4 ["Model"]
       28 LOADK                            R9 K5 [""]
       29 LOADNIL                          R10
       30 NAMECALL                         R11 R4 K6 ["getItemsCache"]
       32 CALL                             R11 1 1
       33 GETTABLEKS                       R12 R0 K2 ["Cell"]
       35 GETUPVAL                         R13 7
       36 CALL                             R13 0 1
       37 LOADK                            R14 K5 [""]
       38 GETTABLEKS                       R16 R0 K2 ["Cell"]
       40 GETTABLE                         R15 R13 R16
       41 JUMPIFNOT                        R15 ; [+2]
       42 LOADK                            R14 K7 ["bg-shift-200"]
       43 JUMP                             ; [+1]
       44 LOADK                            R14 K8 ["bg-paper"]
       45 GETTABLEKS                       R16 R0 K9 ["Size"]
       47 GETTABLEKS                       R16 R16 K10 ["X"]
       49 GETTABLEKS                       R16 R16 K11 ["Offset"]
       51 GETUPVAL                         R18 8
       52 LOADK                            R20 K13 ["CellTagPadding"]
       53 NAMECALL                         R18 R18 K14 ["GetAttribute"]
       55 CALL                             R18 2 1
       56 MULK                             R17 R18 K12 [2]
       57 SUB                              R15 R16 R17
       58 GETUPVAL                         R16 9
       59 GETTABLEKS                       R16 R16 K15 ["useRef"]
       61 LOADNIL                          R17
       62 CALL                             R16 1 1
       63 GETUPVAL                         R17 10
       64 MOVE                             R18 R16
       65 CALL                             R17 1 1
       66 GETUPVAL                         R18 11
       67 MOVE                             R19 R17
       68 GETTABLEKS                       R20 R0 K2 ["Cell"]
       70 CALL                             R18 2 1
       71 GETUPVAL                         R19 12
       72 GETUPVAL                         R20 6
       73 GETTABLEKS                       R20 R20 K16 ["MenuContext"]
       75 GETTABLEKS                       R20 R20 K17 ["Asset"]
       77 DUPTABLE                         R21 K20 [{"Path", "Index"}]
       78 GETTABLEKS                       R22 R0 K2 ["Cell"]
       80 SETTABLEKS                       R22 R21 K18 ["Path"]
       82 GETTABLEKS                       R22 R0 K21 ["Key"]
       84 SETTABLEKS                       R22 R21 K19 ["Index"]
       86 CALL                             R19 2 1
       87 GETTABLEKS                       R20 R0 K22 ["ParentScope"]
       89 GETTABLEKS                       R23 R20 K23 ["Uid"]
       91 MOVE                             R24 R12
       92 GETUPVAL                         R25 6
       93 GETTABLEKS                       R25 R25 K24 ["AssetInfoField"]
       95 GETTABLEKS                       R25 R25 K3 ["AssetType"]
       97 NAMECALL                         R21 R11 K25 ["getItemField"]
       99 CALL                             R21 4 1
      100 MOVE                             R8 R21
      101 GETTABLEKS                       R23 R20 K23 ["Uid"]
      103 MOVE                             R24 R12
      104 GETUPVAL                         R25 6
      105 GETTABLEKS                       R25 R25 K24 ["AssetInfoField"]
      107 GETTABLEKS                       R25 R25 K26 ["DisplayName"]
      109 NAMECALL                         R21 R11 K25 ["getItemField"]
      111 CALL                             R21 4 1
      112 MOVE                             R9 R21
      113 GETTABLEKS                       R23 R20 K23 ["Uid"]
      115 MOVE                             R24 R12
      116 GETUPVAL                         R25 6
      117 GETTABLEKS                       R25 R25 K24 ["AssetInfoField"]
      119 GETTABLEKS                       R25 R25 K27 ["AssetId"]
      121 NAMECALL                         R21 R11 K25 ["getItemField"]
      123 CALL                             R21 4 1
      124 MOVE                             R7 R21
      125 GETTABLEKS                       R23 R20 K23 ["Uid"]
      127 MOVE                             R24 R12
      128 GETUPVAL                         R25 6
      129 GETTABLEKS                       R25 R25 K24 ["AssetInfoField"]
      131 GETTABLEKS                       R25 R25 K28 ["IsPackage"]
      133 NAMECALL                         R21 R11 K25 ["getItemField"]
      135 CALL                             R21 4 1
      136 MOVE                             R10 R21
      137 JUMPIFNOT                        R7 ; [+2]
      138 JUMPIFNOT                        R8 ; [+1]
      139 JUMPIF                           R9 ; [+2]
      140 LOADNIL                          R21
      141 RETURN                           R21 1
      142 GETUPVAL                         R22 13
      143 MOVE                             R23 R9
      144 CALL                             R22 1 1
      145 GETTABLEKS                       R22 R22 K10 ["X"]
      147 JUMPIFLT                         R15 R22 ; [+2]
      149 LOADB                            R21 0 +1
      150 LOADB                            R21 1
      151 GETTABLEKS                       R23 R0 K2 ["Cell"]
      153 GETTABLE                         R22 R13 R23
      154 GETUPVAL                         R23 9
      155 GETTABLEKS                       R23 R23 K29 ["createElement"]
      157 GETUPVAL                         R24 14
      158 GETTABLEKS                       R24 R24 K30 ["View"]
      160 DUPTABLE                         R25 K35 [{"LayoutOrder", "Size", "Position", "ref", "tag"}]
      161 GETTABLEKS                       R26 R0 K21 ["Key"]
      163 SETTABLEKS                       R26 R25 K31 ["LayoutOrder"]
      165 GETTABLEKS                       R26 R0 K9 ["Size"]
      167 SETTABLEKS                       R26 R25 K9 ["Size"]
      169 GETTABLEKS                       R26 R0 K32 ["Position"]
      171 SETTABLEKS                       R26 R25 K32 ["Position"]
      173 SETTABLEKS                       R16 R25 K33 ["ref"]
      175 NEWTABLE                         R26 4 0
      177 LOADB                            R27 1
      178 SETTABLEKS                       R27 R26 K36 ["align-y-top align-x-center padding-xsmall radius-medium"]
      180 SETTABLEKS                       R22 R26 K37 ["bg-action-soft-emphasis"]
      182 NOT                              R28 R22
      183 AND                              R27 R28 R17
      184 SETTABLEKS                       R27 R26 K7 ["bg-shift-200"]
      186 GETUPVAL                         R28 15
      187 CALL                             R28 0 1
      188 AND                              R27 R28 R18
      189 SETTABLEKS                       R27 R26 K38 ["stroke-system-emphasis stroke-standard stroke-position-inner"]
      191 SETTABLEKS                       R26 R25 K34 ["tag"]
      193 DUPTABLE                         R26 K40 [{"InputHandler"}]
      194 GETUPVAL                         R27 9
      195 GETTABLEKS                       R27 R27 K29 ["createElement"]
      197 LOADK                            R28 K41 ["ImageButton"]
      198 NEWTABLE                         R29 4 0
      200 GETUPVAL                         R30 9
      201 GETTABLEKS                       R30 R30 K42 ["Event"]
      203 GETTABLEKS                       R30 R30 K43 ["MouseButton2Click"]
      205 NEWCLOSURE                       R31 P0
      206 CAPTURE                          VAL R3
      207 CAPTURE                          UPVAL U6
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R19
      210 SETTABLE                         R31 R29 R30
      211 GETUPVAL                         R30 9
      212 GETTABLEKS                       R30 R30 K42 ["Event"]
      214 GETTABLEKS                       R30 R30 K44 ["MouseButton1Down"]
      216 NEWCLOSURE                       R31 P1
      217 CAPTURE                          VAL R3
      218 CAPTURE                          UPVAL U6
      219 CAPTURE                          VAL R0
      220 SETTABLE                         R31 R29 R30
      221 GETUPVAL                         R30 9
      222 GETTABLEKS                       R30 R30 K42 ["Event"]
      224 GETTABLEKS                       R30 R30 K45 ["MouseButton1Up"]
      226 NEWCLOSURE                       R31 P2
      227 CAPTURE                          VAL R3
      228 CAPTURE                          UPVAL U6
      229 CAPTURE                          VAL R0
      230 SETTABLE                         R31 R29 R30
      231 GETUPVAL                         R30 9
      232 GETTABLEKS                       R30 R30 K46 ["Tag"]
      234 LOADK                            R31 K47 ["gui-object-defaults size-full col gap-xsmall data-testid=item-cell-input"]
      235 SETTABLE                         R31 R29 R30
      236 DUPTABLE                         R30 K50 [{"ThumbnailContainer", "CellData"}]
      237 GETUPVAL                         R31 9
      238 GETTABLEKS                       R31 R31 K29 ["createElement"]
      240 GETUPVAL                         R32 14
      241 GETTABLEKS                       R32 R32 K30 ["View"]
      243 DUPTABLE                         R33 K51 [{"LayoutOrder", "tag"}]
      244 NAMECALL                         R34 R1 K52 ["getNextOrder"]
      246 CALL                             R34 1 1
      247 SETTABLEKS                       R34 R33 K31 ["LayoutOrder"]
      249 LOADK                            R35 K53 ["size-full fill radius-small %*"]
      250 MOVE                             R37 R14
      251 NAMECALL                         R35 R35 K54 ["format"]
      253 CALL                             R35 2 1
      254 MOVE                             R34 R35
      255 SETTABLEKS                       R34 R33 K34 ["tag"]
      257 DUPTABLE                         R34 K57 [{"Thumbnail", "PackageLinkIcon"}]
      258 GETUPVAL                         R35 9
      259 GETTABLEKS                       R35 R35 K29 ["createElement"]
      261 GETUPVAL                         R36 16
      262 DUPTABLE                         R37 K58 [{"AssetId", "AssetType"}]
      263 SETTABLEKS                       R7 R37 K27 ["AssetId"]
      265 SETTABLEKS                       R8 R37 K3 ["AssetType"]
      267 CALL                             R35 2 1
      268 SETTABLEKS                       R35 R34 K55 ["Thumbnail"]
      270 MOVE                             R35 R10
      271 JUMPIFNOT                        R35 ; [+14]
      272 GETUPVAL                         R35 9
      273 GETTABLEKS                       R35 R35 K29 ["createElement"]
      275 GETUPVAL                         R36 14
      276 GETTABLEKS                       R36 R36 K59 ["Image"]
      278 DUPTABLE                         R37 K61 [{"ZIndex", "tag"}]
      279 LOADN                            R38 2
      280 SETTABLEKS                       R38 R37 K60 ["ZIndex"]
      282 LOADK                            R38 K62 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      283 SETTABLEKS                       R38 R37 K34 ["tag"]
      285 CALL                             R35 2 1
      286 SETTABLEKS                       R35 R34 K56 ["PackageLinkIcon"]
      288 CALL                             R31 3 1
      289 SETTABLEKS                       R31 R30 K48 ["ThumbnailContainer"]
      291 GETUPVAL                         R31 9
      292 GETTABLEKS                       R31 R31 K29 ["createElement"]
      294 GETUPVAL                         R32 14
      295 GETTABLEKS                       R32 R32 K30 ["View"]
      297 DUPTABLE                         R33 K51 [{"LayoutOrder", "tag"}]
      298 NAMECALL                         R34 R1 K52 ["getNextOrder"]
      300 CALL                             R34 1 1
      301 SETTABLEKS                       R34 R33 K31 ["LayoutOrder"]
      303 LOADK                            R34 K63 ["am-size-full-celldata col align-x-left align-y-middle"]
      304 SETTABLEKS                       R34 R33 K34 ["tag"]
      306 DUPTABLE                         R34 K66 [{"NameTag", "TypeTag"}]
      307 GETUPVAL                         R36 17
      308 CALL                             R36 0 1
      309 JUMPIFNOT                        R36 ; [+25]
      310 JUMPIFNOT                        R6 ; [+24]
      311 GETUPVAL                         R35 9
      312 GETTABLEKS                       R35 R35 K29 ["createElement"]
      314 GETUPVAL                         R36 18
      315 DUPTABLE                         R37 K70 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      316 NAMECALL                         R38 R1 K52 ["getNextOrder"]
      318 CALL                             R38 1 1
      319 SETTABLEKS                       R38 R37 K31 ["LayoutOrder"]
      321 SETTABLEKS                       R9 R37 K67 ["InitialText"]
      323 SETTABLEKS                       R8 R37 K68 ["ItemType"]
      325 GETTABLEKS                       R38 R0 K2 ["Cell"]
      327 SETTABLEKS                       R38 R37 K69 ["ItemPath"]
      329 GETTABLEKS                       R38 R0 K9 ["Size"]
      331 SETTABLEKS                       R38 R37 K9 ["Size"]
      333 CALL                             R35 2 1
      334 JUMP                             ; [+89]
      335 GETUPVAL                         R36 17
      336 CALL                             R36 0 1
      337 JUMPIF                           R36 ; [+20]
      338 JUMPIFNOTEQ                      R7 R5 ; [+19]
      340 GETUPVAL                         R35 9
      341 GETTABLEKS                       R35 R35 K29 ["createElement"]
      343 GETUPVAL                         R36 19
      344 DUPTABLE                         R37 K71 [{"LayoutOrder", "InitialText", "Size"}]
      345 NAMECALL                         R38 R1 K52 ["getNextOrder"]
      347 CALL                             R38 1 1
      348 SETTABLEKS                       R38 R37 K31 ["LayoutOrder"]
      350 SETTABLEKS                       R9 R37 K67 ["InitialText"]
      352 GETTABLEKS                       R38 R0 K9 ["Size"]
      354 SETTABLEKS                       R38 R37 K9 ["Size"]
      356 CALL                             R35 2 1
      357 JUMP                             ; [+66]
      358 JUMPIFNOT                        R21 ; [+47]
      359 GETUPVAL                         R35 9
      360 GETTABLEKS                       R35 R35 K29 ["createElement"]
      362 GETUPVAL                         R36 14
      363 GETTABLEKS                       R36 R36 K72 ["Tooltip"]
      365 DUPTABLE                         R37 K75 [{"LayoutOrder", "title", "side"}]
      366 NAMECALL                         R38 R1 K52 ["getNextOrder"]
      368 CALL                             R38 1 1
      369 SETTABLEKS                       R38 R37 K31 ["LayoutOrder"]
      371 SETTABLEKS                       R9 R37 K73 ["title"]
      373 GETUPVAL                         R38 14
      374 GETTABLEKS                       R38 R38 K76 ["Enums"]
      376 GETTABLEKS                       R38 R38 K77 ["PopoverSide"]
      378 GETTABLEKS                       R38 R38 K78 ["Bottom"]
      380 SETTABLEKS                       R38 R37 K74 ["side"]
      382 NEWTABLE                         R38 0 1
      384 GETUPVAL                         R39 9
      385 GETTABLEKS                       R39 R39 K29 ["createElement"]
      387 GETUPVAL                         R40 14
      388 GETTABLEKS                       R40 R40 K79 ["Text"]
      390 DUPTABLE                         R41 K80 [{"LayoutOrder", "Text", "tag"}]
      391 NAMECALL                         R42 R1 K52 ["getNextOrder"]
      393 CALL                             R42 1 1
      394 SETTABLEKS                       R42 R41 K31 ["LayoutOrder"]
      396 SETTABLEKS                       R9 R41 K79 ["Text"]
      398 LOADK                            R42 K81 ["text-body-small text-align-left text-truncate-end auto-xy size-0 content-emphasis"]
      399 SETTABLEKS                       R42 R41 K34 ["tag"]
      401 CALL                             R39 2 -1
      402 SETLIST                          R38 R39 -1 [1]
      404 CALL                             R35 3 1
      405 JUMP                             ; [+18]
      406 GETUPVAL                         R35 9
      407 GETTABLEKS                       R35 R35 K29 ["createElement"]
      409 GETUPVAL                         R36 14
      410 GETTABLEKS                       R36 R36 K79 ["Text"]
      412 DUPTABLE                         R37 K80 [{"LayoutOrder", "Text", "tag"}]
      413 NAMECALL                         R38 R1 K52 ["getNextOrder"]
      415 CALL                             R38 1 1
      416 SETTABLEKS                       R38 R37 K31 ["LayoutOrder"]
      418 SETTABLEKS                       R9 R37 K79 ["Text"]
      420 LOADK                            R38 K81 ["text-body-small text-align-left text-truncate-end auto-xy size-0 content-emphasis"]
      421 SETTABLEKS                       R38 R37 K34 ["tag"]
      423 CALL                             R35 2 1
      424 SETTABLEKS                       R35 R34 K64 ["NameTag"]
      426 GETUPVAL                         R35 9
      427 GETTABLEKS                       R35 R35 K29 ["createElement"]
      429 GETUPVAL                         R36 14
      430 GETTABLEKS                       R36 R36 K79 ["Text"]
      432 DUPTABLE                         R37 K80 [{"LayoutOrder", "Text", "tag"}]
      433 NAMECALL                         R38 R1 K52 ["getNextOrder"]
      435 CALL                             R38 1 1
      436 SETTABLEKS                       R38 R37 K31 ["LayoutOrder"]
      438 LOADK                            R40 K3 ["AssetType"]
      439 MOVE                             R41 R8
      440 NAMECALL                         R38 R2 K82 ["getText"]
      442 CALL                             R38 3 1
      443 SETTABLEKS                       R38 R37 K79 ["Text"]
      445 LOADK                            R38 K83 ["text-caption-small text-truncate-end auto-xy size-0 padding content-default"]
      446 SETTABLEKS                       R38 R37 K34 ["tag"]
      448 CALL                             R35 2 1
      449 SETTABLEKS                       R35 R34 K65 ["TypeTag"]
      451 CALL                             R31 3 1
      452 SETTABLEKS                       R31 R30 K49 ["CellData"]
      454 CALL                             R27 3 1
      455 SETTABLEKS                       R27 R26 K39 ["InputHandler"]
      457 CALL                             R23 3 -1
      458 RETURN                           R23 -1

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
       40 GETTABLEKS                       R7 R7 K15 ["EditNameInput"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["Shared"]
       51 GETTABLEKS                       R8 R8 K16 ["EditNameInput_DEPRECATED"]
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
      132 GETTABLEKS                       R17 R17 K21 ["Hooks"]
      134 GETTABLEKS                       R17 R17 K27 ["useRenamePlaceId_DEPRECATED"]
      136 CALL                             R16 1 1
      137 GETIMPORT                        R17 K5 [require]
      139 GETTABLEKS                       R18 R0 K12 ["Src"]
      141 GETTABLEKS                       R18 R18 K28 ["Types"]
      143 CALL                             R17 1 1
      144 GETTABLEKS                       R18 R3 K29 ["Util"]
      146 GETTABLEKS                       R18 R18 K30 ["LayoutOrderIterator"]
      148 GETTABLEKS                       R19 R3 K29 ["Util"]
      150 GETTABLEKS                       R19 R19 K31 ["GetTextSize"]
      152 GETIMPORT                        R20 K5 [require]
      154 GETTABLEKS                       R21 R0 K12 ["Src"]
      156 GETTABLEKS                       R21 R21 K32 ["Resources"]
      158 GETTABLEKS                       R21 R21 K33 ["PluginStyles"]
      160 CALL                             R20 1 1
      161 GETIMPORT                        R21 K5 [require]
      163 GETTABLEKS                       R22 R0 K12 ["Src"]
      165 GETTABLEKS                       R22 R22 K34 ["Flags"]
      167 GETTABLEKS                       R22 R22 K35 ["getFFlagAmrOrganizationFoundation"]
      169 CALL                             R21 1 1
      170 GETIMPORT                        R22 K5 [require]
      172 GETTABLEKS                       R23 R0 K12 ["Src"]
      174 GETTABLEKS                       R23 R23 K34 ["Flags"]
      176 GETTABLEKS                       R23 R23 K36 ["getFFlagAmrRefactorEditNameInput"]
      178 CALL                             R22 1 1
      179 DUPCLOSURE                       R23 K37 [PROTO_3]
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R16
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R19
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R7
      200 RETURN                           R23 1
