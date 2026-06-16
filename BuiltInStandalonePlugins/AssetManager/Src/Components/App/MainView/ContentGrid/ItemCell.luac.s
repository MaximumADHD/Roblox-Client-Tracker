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
       61 GETUPVAL                         R16 9
       62 MOVE                             R17 R15
       63 CALL                             R16 1 1
       64 GETUPVAL                         R17 10
       65 MOVE                             R18 R16
       66 GETTABLEKS                       R19 R0 K2 ["Cell"]
       68 CALL                             R17 2 1
       69 GETUPVAL                         R18 11
       70 GETUPVAL                         R19 5
       71 GETTABLEKS                       R19 R19 K16 ["MenuContext"]
       73 GETTABLEKS                       R19 R19 K17 ["Asset"]
       75 DUPTABLE                         R20 K20 [{"Path", "Index"}]
       76 GETTABLEKS                       R21 R0 K2 ["Cell"]
       78 SETTABLEKS                       R21 R20 K18 ["Path"]
       80 GETTABLEKS                       R21 R0 K21 ["Key"]
       82 SETTABLEKS                       R21 R20 K19 ["Index"]
       84 CALL                             R18 2 1
       85 GETTABLEKS                       R19 R0 K22 ["ParentScope"]
       87 GETTABLEKS                       R22 R19 K23 ["Uid"]
       89 MOVE                             R23 R11
       90 GETUPVAL                         R24 5
       91 GETTABLEKS                       R24 R24 K24 ["AssetInfoField"]
       93 GETTABLEKS                       R24 R24 K3 ["AssetType"]
       95 NAMECALL                         R20 R10 K25 ["getItemField"]
       97 CALL                             R20 4 1
       98 MOVE                             R7 R20
       99 GETTABLEKS                       R22 R19 K23 ["Uid"]
      101 MOVE                             R23 R11
      102 GETUPVAL                         R24 5
      103 GETTABLEKS                       R24 R24 K24 ["AssetInfoField"]
      105 GETTABLEKS                       R24 R24 K26 ["DisplayName"]
      107 NAMECALL                         R20 R10 K25 ["getItemField"]
      109 CALL                             R20 4 1
      110 MOVE                             R8 R20
      111 GETTABLEKS                       R22 R19 K23 ["Uid"]
      113 MOVE                             R23 R11
      114 GETUPVAL                         R24 5
      115 GETTABLEKS                       R24 R24 K24 ["AssetInfoField"]
      117 GETTABLEKS                       R24 R24 K27 ["AssetId"]
      119 NAMECALL                         R20 R10 K25 ["getItemField"]
      121 CALL                             R20 4 1
      122 MOVE                             R6 R20
      123 GETTABLEKS                       R22 R19 K23 ["Uid"]
      125 MOVE                             R23 R11
      126 GETUPVAL                         R24 5
      127 GETTABLEKS                       R24 R24 K24 ["AssetInfoField"]
      129 GETTABLEKS                       R24 R24 K28 ["IsPackage"]
      131 NAMECALL                         R20 R10 K25 ["getItemField"]
      133 CALL                             R20 4 1
      134 MOVE                             R9 R20
      135 JUMPIFNOT                        R6 ; [+2]
      136 JUMPIFNOT                        R7 ; [+1]
      137 JUMPIF                           R8 ; [+2]
      138 LOADNIL                          R20
      139 RETURN                           R20 1
      140 GETUPVAL                         R21 12
      141 MOVE                             R22 R8
      142 CALL                             R21 1 1
      143 GETTABLEKS                       R21 R21 K10 ["X"]
      145 JUMPIFLT                         R14 R21 ; [+2]
      147 LOADB                            R20 0 +1
      148 LOADB                            R20 1
      149 GETTABLEKS                       R22 R0 K2 ["Cell"]
      151 GETTABLE                         R21 R12 R22
      152 GETUPVAL                         R22 8
      153 GETTABLEKS                       R22 R22 K29 ["createElement"]
      155 GETUPVAL                         R23 13
      156 GETTABLEKS                       R23 R23 K30 ["View"]
      158 DUPTABLE                         R24 K35 [{"LayoutOrder", "Size", "Position", "ref", "tag"}]
      159 GETTABLEKS                       R25 R0 K21 ["Key"]
      161 SETTABLEKS                       R25 R24 K31 ["LayoutOrder"]
      163 GETTABLEKS                       R25 R0 K9 ["Size"]
      165 SETTABLEKS                       R25 R24 K9 ["Size"]
      167 GETTABLEKS                       R25 R0 K32 ["Position"]
      169 SETTABLEKS                       R25 R24 K32 ["Position"]
      171 SETTABLEKS                       R15 R24 K33 ["ref"]
      173 NEWTABLE                         R25 4 0
      175 LOADB                            R26 1
      176 SETTABLEKS                       R26 R25 K36 ["align-y-top align-x-center padding-xsmall radius-medium"]
      178 SETTABLEKS                       R21 R25 K37 ["bg-action-soft-emphasis"]
      180 NOT                              R27 R21
      181 AND                              R26 R27 R16
      182 SETTABLEKS                       R26 R25 K7 ["bg-shift-200"]
      184 GETUPVAL                         R27 14
      185 CALL                             R27 0 1
      186 AND                              R26 R27 R17
      187 SETTABLEKS                       R26 R25 K38 ["stroke-system-emphasis stroke-standard stroke-position-inner"]
      189 SETTABLEKS                       R25 R24 K34 ["tag"]
      191 DUPTABLE                         R25 K40 [{"InputHandler"}]
      192 GETUPVAL                         R26 8
      193 GETTABLEKS                       R26 R26 K29 ["createElement"]
      195 LOADK                            R27 K41 ["ImageButton"]
      196 NEWTABLE                         R28 4 0
      198 GETUPVAL                         R29 8
      199 GETTABLEKS                       R29 R29 K42 ["Event"]
      201 GETTABLEKS                       R29 R29 K43 ["MouseButton2Click"]
      203 NEWCLOSURE                       R30 P0
      204 CAPTURE                          VAL R3
      205 CAPTURE                          UPVAL U5
      206 CAPTURE                          VAL R0
      207 CAPTURE                          VAL R18
      208 SETTABLE                         R30 R28 R29
      209 GETUPVAL                         R29 8
      210 GETTABLEKS                       R29 R29 K42 ["Event"]
      212 GETTABLEKS                       R29 R29 K44 ["MouseButton1Down"]
      214 NEWCLOSURE                       R30 P1
      215 CAPTURE                          VAL R3
      216 CAPTURE                          UPVAL U5
      217 CAPTURE                          VAL R0
      218 SETTABLE                         R30 R28 R29
      219 GETUPVAL                         R29 8
      220 GETTABLEKS                       R29 R29 K42 ["Event"]
      222 GETTABLEKS                       R29 R29 K45 ["MouseButton1Up"]
      224 NEWCLOSURE                       R30 P2
      225 CAPTURE                          VAL R3
      226 CAPTURE                          UPVAL U5
      227 CAPTURE                          VAL R0
      228 SETTABLE                         R30 R28 R29
      229 GETUPVAL                         R29 8
      230 GETTABLEKS                       R29 R29 K46 ["Tag"]
      232 LOADK                            R30 K47 ["gui-object-defaults size-full col gap-xsmall data-testid=item-cell-input"]
      233 SETTABLE                         R30 R28 R29
      234 DUPTABLE                         R29 K50 [{"ThumbnailContainer", "CellData"}]
      235 GETUPVAL                         R30 8
      236 GETTABLEKS                       R30 R30 K29 ["createElement"]
      238 GETUPVAL                         R31 13
      239 GETTABLEKS                       R31 R31 K30 ["View"]
      241 DUPTABLE                         R32 K51 [{"LayoutOrder", "tag"}]
      242 NAMECALL                         R33 R1 K52 ["getNextOrder"]
      244 CALL                             R33 1 1
      245 SETTABLEKS                       R33 R32 K31 ["LayoutOrder"]
      247 LOADK                            R34 K53 ["size-full fill radius-small %*"]
      248 MOVE                             R36 R13
      249 NAMECALL                         R34 R34 K54 ["format"]
      251 CALL                             R34 2 1
      252 MOVE                             R33 R34
      253 SETTABLEKS                       R33 R32 K34 ["tag"]
      255 DUPTABLE                         R33 K57 [{"Thumbnail", "PackageLinkIcon"}]
      256 GETUPVAL                         R34 8
      257 GETTABLEKS                       R34 R34 K29 ["createElement"]
      259 GETUPVAL                         R35 15
      260 DUPTABLE                         R36 K58 [{"AssetId", "AssetType"}]
      261 SETTABLEKS                       R6 R36 K27 ["AssetId"]
      263 SETTABLEKS                       R7 R36 K3 ["AssetType"]
      265 CALL                             R34 2 1
      266 SETTABLEKS                       R34 R33 K55 ["Thumbnail"]
      268 MOVE                             R34 R9
      269 JUMPIFNOT                        R34 ; [+17]
      270 GETUPVAL                         R34 8
      271 GETTABLEKS                       R34 R34 K29 ["createElement"]
      273 GETUPVAL                         R35 13
      274 GETTABLEKS                       R35 R35 K59 ["Image"]
      276 DUPTABLE                         R36 K62 [{"ZIndex", "tag", "testId"}]
      277 LOADN                            R37 2
      278 SETTABLEKS                       R37 R36 K60 ["ZIndex"]
      280 LOADK                            R37 K63 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small"]
      281 SETTABLEKS                       R37 R36 K34 ["tag"]
      283 LOADK                            R37 K64 ["package-link-icon"]
      284 SETTABLEKS                       R37 R36 K61 ["testId"]
      286 CALL                             R34 2 1
      287 SETTABLEKS                       R34 R33 K56 ["PackageLinkIcon"]
      289 CALL                             R30 3 1
      290 SETTABLEKS                       R30 R29 K48 ["ThumbnailContainer"]
      292 GETUPVAL                         R30 8
      293 GETTABLEKS                       R30 R30 K29 ["createElement"]
      295 GETUPVAL                         R31 13
      296 GETTABLEKS                       R31 R31 K30 ["View"]
      298 DUPTABLE                         R32 K51 [{"LayoutOrder", "tag"}]
      299 NAMECALL                         R33 R1 K52 ["getNextOrder"]
      301 CALL                             R33 1 1
      302 SETTABLEKS                       R33 R32 K31 ["LayoutOrder"]
      304 LOADK                            R33 K65 ["am-size-full-celldata col align-x-left align-y-middle"]
      305 SETTABLEKS                       R33 R32 K34 ["tag"]
      307 DUPTABLE                         R33 K68 [{"NameTag", "TypeTag"}]
      308 JUMPIFNOT                        R5 ; [+24]
      309 GETUPVAL                         R34 8
      310 GETTABLEKS                       R34 R34 K29 ["createElement"]
      312 GETUPVAL                         R35 16
      313 DUPTABLE                         R36 K72 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      314 NAMECALL                         R37 R1 K52 ["getNextOrder"]
      316 CALL                             R37 1 1
      317 SETTABLEKS                       R37 R36 K31 ["LayoutOrder"]
      319 SETTABLEKS                       R8 R36 K69 ["InitialText"]
      321 SETTABLEKS                       R7 R36 K70 ["ItemType"]
      323 GETTABLEKS                       R37 R0 K2 ["Cell"]
      325 SETTABLEKS                       R37 R36 K71 ["ItemPath"]
      327 GETTABLEKS                       R37 R0 K9 ["Size"]
      329 SETTABLEKS                       R37 R36 K9 ["Size"]
      331 CALL                             R34 2 1
      332 JUMP                             ; [+66]
      333 JUMPIFNOT                        R20 ; [+47]
      334 GETUPVAL                         R34 8
      335 GETTABLEKS                       R34 R34 K29 ["createElement"]
      337 GETUPVAL                         R35 13
      338 GETTABLEKS                       R35 R35 K73 ["Tooltip"]
      340 DUPTABLE                         R36 K76 [{"LayoutOrder", "title", "side"}]
      341 NAMECALL                         R37 R1 K52 ["getNextOrder"]
      343 CALL                             R37 1 1
      344 SETTABLEKS                       R37 R36 K31 ["LayoutOrder"]
      346 SETTABLEKS                       R8 R36 K74 ["title"]
      348 GETUPVAL                         R37 13
      349 GETTABLEKS                       R37 R37 K77 ["Enums"]
      351 GETTABLEKS                       R37 R37 K78 ["PopoverSide"]
      353 GETTABLEKS                       R37 R37 K79 ["Bottom"]
      355 SETTABLEKS                       R37 R36 K75 ["side"]
      357 NEWTABLE                         R37 0 1
      359 GETUPVAL                         R38 8
      360 GETTABLEKS                       R38 R38 K29 ["createElement"]
      362 GETUPVAL                         R39 13
      363 GETTABLEKS                       R39 R39 K80 ["Text"]
      365 DUPTABLE                         R40 K81 [{"LayoutOrder", "Text", "tag"}]
      366 NAMECALL                         R41 R1 K52 ["getNextOrder"]
      368 CALL                             R41 1 1
      369 SETTABLEKS                       R41 R40 K31 ["LayoutOrder"]
      371 SETTABLEKS                       R8 R40 K80 ["Text"]
      373 LOADK                            R41 K82 ["text-body-small text-align-left text-truncate-end auto-xy size-0 content-emphasis"]
      374 SETTABLEKS                       R41 R40 K34 ["tag"]
      376 CALL                             R38 2 -1
      377 SETLIST                          R37 R38 -1 [1]
      379 CALL                             R34 3 1
      380 JUMP                             ; [+18]
      381 GETUPVAL                         R34 8
      382 GETTABLEKS                       R34 R34 K29 ["createElement"]
      384 GETUPVAL                         R35 13
      385 GETTABLEKS                       R35 R35 K80 ["Text"]
      387 DUPTABLE                         R36 K81 [{"LayoutOrder", "Text", "tag"}]
      388 NAMECALL                         R37 R1 K52 ["getNextOrder"]
      390 CALL                             R37 1 1
      391 SETTABLEKS                       R37 R36 K31 ["LayoutOrder"]
      393 SETTABLEKS                       R8 R36 K80 ["Text"]
      395 LOADK                            R37 K82 ["text-body-small text-align-left text-truncate-end auto-xy size-0 content-emphasis"]
      396 SETTABLEKS                       R37 R36 K34 ["tag"]
      398 CALL                             R34 2 1
      399 SETTABLEKS                       R34 R33 K66 ["NameTag"]
      401 GETUPVAL                         R34 8
      402 GETTABLEKS                       R34 R34 K29 ["createElement"]
      404 GETUPVAL                         R35 13
      405 GETTABLEKS                       R35 R35 K80 ["Text"]
      407 DUPTABLE                         R36 K81 [{"LayoutOrder", "Text", "tag"}]
      408 NAMECALL                         R37 R1 K52 ["getNextOrder"]
      410 CALL                             R37 1 1
      411 SETTABLEKS                       R37 R36 K31 ["LayoutOrder"]
      413 LOADK                            R39 K3 ["AssetType"]
      414 MOVE                             R40 R7
      415 NAMECALL                         R37 R2 K83 ["getText"]
      417 CALL                             R37 3 1
      418 SETTABLEKS                       R37 R36 K80 ["Text"]
      420 LOADK                            R37 K84 ["text-caption-small text-truncate-end auto-xy size-0 padding content-default"]
      421 SETTABLEKS                       R37 R36 K34 ["tag"]
      423 CALL                             R34 2 1
      424 SETTABLEKS                       R34 R33 K67 ["TypeTag"]
      426 CALL                             R30 3 1
      427 SETTABLEKS                       R30 R29 K49 ["CellData"]
      429 CALL                             R26 3 1
      430 SETTABLEKS                       R26 R25 K39 ["InputHandler"]
      432 CALL                             R22 3 -1
      433 RETURN                           R22 -1

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
       51 GETTABLEKS                       R8 R8 K16 ["ItemThumbnail"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K17 ["Controllers"]
       60 GETTABLEKS                       R9 R9 K18 ["Input"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K12 ["Src"]
       67 GETTABLEKS                       R10 R10 K17 ["Controllers"]
       69 GETTABLEKS                       R10 R10 K19 ["ItemsController"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K12 ["Src"]
       76 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       78 GETTABLEKS                       R11 R11 K21 ["useContextMenu"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K12 ["Src"]
       85 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       87 GETTABLEKS                       R12 R12 K22 ["useIsEditItem"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K12 ["Src"]
       94 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       96 GETTABLEKS                       R13 R13 K23 ["useItemHovered"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K12 ["Src"]
      103 GETTABLEKS                       R14 R14 K20 ["Hooks"]
      105 GETTABLEKS                       R14 R14 K24 ["useItemDragHovered"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K12 ["Src"]
      112 GETTABLEKS                       R15 R15 K20 ["Hooks"]
      114 GETTABLEKS                       R15 R15 K25 ["useItemSelection"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K12 ["Src"]
      121 GETTABLEKS                       R16 R16 K26 ["Types"]
      123 CALL                             R15 1 1
      124 GETTABLEKS                       R16 R3 K27 ["Util"]
      126 GETTABLEKS                       R16 R16 K28 ["LayoutOrderIterator"]
      128 GETTABLEKS                       R17 R3 K27 ["Util"]
      130 GETTABLEKS                       R17 R17 K29 ["GetTextSize"]
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K12 ["Src"]
      136 GETTABLEKS                       R19 R19 K30 ["Resources"]
      138 GETTABLEKS                       R19 R19 K31 ["PluginStyles"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K5 [require]
      143 GETTABLEKS                       R20 R0 K12 ["Src"]
      145 GETTABLEKS                       R20 R20 K32 ["Flags"]
      147 GETTABLEKS                       R20 R20 K33 ["getFFlagAmrOrganizationFoundation"]
      149 CALL                             R19 1 1
      150 DUPCLOSURE                       R20 K34 [PROTO_3]
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R6
      168 RETURN                           R20 1
