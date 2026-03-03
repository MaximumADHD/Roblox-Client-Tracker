PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+18]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["Cell"]
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R8 3
        8 GETTABLEKS                       R7 R8 K1 ["UiZone"]
       10 GETTABLEKS                       R6 R7 K2 ["Browser"]
       12 GETUPVAL                         R7 4
       13 MOVE                             R8 R3
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R9 R10 K3 ["Key"]
       17 NAMECALL                         R4 R4 K4 ["handleMouse2Click"]
       19 CALL                             R4 5 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 2
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R6 R7 K1 ["UiZone"]
       25 GETTABLEKS                       R5 R6 K2 ["Browser"]
       27 GETUPVAL                         R6 4
       28 GETUPVAL                         R7 5
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R8 R9 K3 ["Key"]
       32 NAMECALL                         R3 R3 K4 ["handleMouse2Click"]
       34 CALL                             R3 5 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 LOADK                            R6 K2 [""]
       19 LOADB                            R7 0
       20 LOADN                            R8 0
       21 GETUPVAL                         R11 5
       22 GETTABLEKS                       R10 R11 K3 ["AssetType"]
       24 GETTABLEKS                       R9 R10 K4 ["Model"]
       26 LOADK                            R10 K2 [""]
       27 LOADNIL                          R11
       28 GETUPVAL                         R12 6
       29 CALL                             R12 0 1
       30 JUMPIFNOT                        R12 ; [+87]
       31 NAMECALL                         R12 R4 K5 ["getItemsCache"]
       33 CALL                             R12 1 1
       34 GETTABLEKS                       R13 R0 K6 ["Cell"]
       36 GETTABLEKS                       R14 R0 K7 ["ParentScope"]
       38 GETTABLEKS                       R17 R14 K8 ["Uid"]
       40 MOVE                             R18 R13
       41 GETUPVAL                         R21 5
       42 GETTABLEKS                       R20 R21 K9 ["AssetInfoField"]
       44 GETTABLEKS                       R19 R20 K3 ["AssetType"]
       46 NAMECALL                         R15 R12 K10 ["getItemField"]
       48 CALL                             R15 4 1
       49 MOVE                             R9 R15
       50 GETTABLEKS                       R17 R14 K8 ["Uid"]
       52 MOVE                             R18 R13
       53 GETUPVAL                         R21 5
       54 GETTABLEKS                       R20 R21 K9 ["AssetInfoField"]
       56 GETTABLEKS                       R19 R20 K11 ["DisplayName"]
       58 NAMECALL                         R15 R12 K10 ["getItemField"]
       60 CALL                             R15 4 1
       61 MOVE                             R10 R15
       62 GETTABLEKS                       R17 R14 K8 ["Uid"]
       64 MOVE                             R18 R13
       65 GETUPVAL                         R21 5
       66 GETTABLEKS                       R20 R21 K9 ["AssetInfoField"]
       68 GETTABLEKS                       R19 R20 K12 ["AssetId"]
       70 NAMECALL                         R15 R12 K10 ["getItemField"]
       72 CALL                             R15 4 1
       73 MOVE                             R8 R15
       74 GETTABLEKS                       R17 R14 K8 ["Uid"]
       76 MOVE                             R18 R13
       77 GETUPVAL                         R21 5
       78 GETTABLEKS                       R20 R21 K9 ["AssetInfoField"]
       80 GETTABLEKS                       R19 R20 K13 ["IsPackage"]
       82 NAMECALL                         R15 R12 K10 ["getItemField"]
       84 CALL                             R15 4 1
       85 MOVE                             R11 R15
       86 GETUPVAL                         R15 7
       87 CALL                             R15 0 1
       88 GETTABLEKS                       R17 R0 K6 ["Cell"]
       90 GETTABLE                         R16 R15 R17
       91 JUMPIFNOT                        R16 ; [+2]
       92 LOADK                            R6 K14 ["bg-action-selected"]
       93 JUMP                             ; [+1]
       94 LOADK                            R6 K15 ["bg-paper am-hover"]
       95 GETTABLEKS                       R19 R0 K16 ["Size"]
       97 GETTABLEKS                       R18 R19 K17 ["X"]
       99 GETTABLEKS                       R17 R18 K18 ["Offset"]
      101 GETUPVAL                         R19 8
      102 LOADK                            R21 K20 ["CellTagPadding"]
      103 NAMECALL                         R19 R19 K21 ["GetAttribute"]
      105 CALL                             R19 2 1
      106 MULK                             R18 R19 K19 [2]
      107 SUB                              R16 R17 R18
      108 GETUPVAL                         R18 9
      109 MOVE                             R19 R10
      110 CALL                             R18 1 1
      111 GETTABLEKS                       R17 R18 K17 ["X"]
      113 JUMPIFLT                         R16 R17 ; [+2]
      115 LOADB                            R7 0 +1
      116 LOADB                            R7 1
      117 JUMP                             ; [+41]
      118 GETTABLEKS                       R12 R0 K6 ["Cell"]
      120 GETUPVAL                         R13 7
      121 CALL                             R13 0 1
      122 GETTABLEKS                       R15 R12 K12 ["AssetId"]
      124 GETTABLE                         R14 R13 R15
      125 JUMPIFNOT                        R14 ; [+2]
      126 LOADK                            R6 K14 ["bg-action-selected"]
      127 JUMP                             ; [+1]
      128 LOADK                            R6 K15 ["bg-paper am-hover"]
      129 GETUPVAL                         R15 9
      130 GETTABLEKS                       R16 R12 K11 ["DisplayName"]
      132 CALL                             R15 1 1
      133 GETTABLEKS                       R14 R15 K17 ["X"]
      135 GETTABLEKS                       R17 R0 K16 ["Size"]
      137 GETTABLEKS                       R16 R17 K17 ["X"]
      139 GETTABLEKS                       R15 R16 K18 ["Offset"]
      141 GETUPVAL                         R18 8
      142 LOADK                            R20 K20 ["CellTagPadding"]
      143 NAMECALL                         R18 R18 K21 ["GetAttribute"]
      145 CALL                             R18 2 1
      146 MULK                             R17 R18 K19 [2]
      147 SUB                              R16 R15 R17
      148 JUMPIFNOTLT                      R16 R14 ; [+2]
      150 LOADB                            R7 1
      151 GETTABLEKS                       R8 R12 K12 ["AssetId"]
      153 GETTABLEKS                       R9 R12 K3 ["AssetType"]
      155 GETTABLEKS                       R10 R12 K11 ["DisplayName"]
      157 GETTABLEKS                       R11 R12 K13 ["IsPackage"]
      159 GETTABLEKS                       R15 R0 K16 ["Size"]
      161 GETTABLEKS                       R14 R15 K17 ["X"]
      163 GETTABLEKS                       R13 R14 K18 ["Offset"]
      165 GETUPVAL                         R15 8
      166 LOADK                            R17 K20 ["CellTagPadding"]
      167 NAMECALL                         R15 R15 K21 ["GetAttribute"]
      169 CALL                             R15 2 1
      170 MULK                             R14 R15 K19 [2]
      171 SUB                              R12 R13 R14
      172 GETUPVAL                         R14 9
      173 MOVE                             R15 R10
      174 CALL                             R14 1 1
      175 GETTABLEKS                       R13 R14 K17 ["X"]
      177 JUMPIFLT                         R12 R13 ; [+2]
      179 LOADB                            R7 0 +1
      180 LOADB                            R7 1
      181 GETUPVAL                         R14 10
      182 GETTABLEKS                       R13 R14 K22 ["createElement"]
      184 GETUPVAL                         R15 11
      185 GETTABLEKS                       R14 R15 K23 ["View"]
      187 DUPTABLE                         R15 K27 [{"LayoutOrder", "Size", "Position", "tag"}]
      188 GETTABLEKS                       R16 R0 K28 ["Key"]
      190 SETTABLEKS                       R16 R15 K24 ["LayoutOrder"]
      192 GETTABLEKS                       R16 R0 K16 ["Size"]
      194 SETTABLEKS                       R16 R15 K16 ["Size"]
      196 GETTABLEKS                       R16 R0 K25 ["Position"]
      198 SETTABLEKS                       R16 R15 K25 ["Position"]
      200 LOADK                            R16 K29 ["align-y-top align-x-center"]
      201 SETTABLEKS                       R16 R15 K26 ["tag"]
      203 DUPTABLE                         R16 K31 [{"InputHandler"}]
      204 GETUPVAL                         R18 10
      205 GETTABLEKS                       R17 R18 K22 ["createElement"]
      207 LOADK                            R18 K32 ["ImageButton"]
      208 NEWTABLE                         R19 8 0
      210 LOADN                            R20 1
      211 SETTABLEKS                       R20 R19 K33 ["BackgroundTransparency"]
      213 GETUPVAL                         R22 10
      214 GETTABLEKS                       R21 R22 K34 ["Event"]
      216 GETTABLEKS                       R20 R21 K35 ["MouseButton2Click"]
      218 NEWCLOSURE                       R21 P0
      219 CAPTURE                          UPVAL U6
      220 CAPTURE                          VAL R0
      221 CAPTURE                          VAL R3
      222 CAPTURE                          UPVAL U5
      223 CAPTURE                          VAL R2
      224 CAPTURE                          REF R8
      225 SETTABLE                         R21 R19 R20
      226 GETUPVAL                         R22 10
      227 GETTABLEKS                       R21 R22 K34 ["Event"]
      229 GETTABLEKS                       R20 R21 K36 ["MouseButton1Down"]
      231 NEWCLOSURE                       R21 P1
      232 CAPTURE                          VAL R3
      233 CAPTURE                          UPVAL U5
      234 CAPTURE                          VAL R0
      235 SETTABLE                         R21 R19 R20
      236 GETUPVAL                         R22 10
      237 GETTABLEKS                       R21 R22 K34 ["Event"]
      239 GETTABLEKS                       R20 R21 K37 ["MouseButton1Up"]
      241 NEWCLOSURE                       R21 P2
      242 CAPTURE                          VAL R3
      243 CAPTURE                          UPVAL U5
      244 CAPTURE                          VAL R0
      245 SETTABLE                         R21 R19 R20
      246 GETUPVAL                         R21 10
      247 GETTABLEKS                       R20 R21 K38 ["Tag"]
      249 LOADK                            R21 K39 ["size-full col data-testid=item-cell-input"]
      250 SETTABLE                         R21 R19 R20
      251 DUPTABLE                         R20 K42 [{"ThumbnailContainer", "CellData"}]
      252 GETUPVAL                         R22 10
      253 GETTABLEKS                       R21 R22 K22 ["createElement"]
      255 GETUPVAL                         R23 11
      256 GETTABLEKS                       R22 R23 K23 ["View"]
      258 DUPTABLE                         R23 K43 [{"LayoutOrder", "tag"}]
      259 NAMECALL                         R24 R1 K44 ["getNextOrder"]
      261 CALL                             R24 1 1
      262 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      264 LOADK                            R25 K45 ["size-full fill radius-small padding-xsmall %*"]
      265 MOVE                             R27 R6
      266 NAMECALL                         R25 R25 K46 ["format"]
      268 CALL                             R25 2 1
      269 MOVE                             R24 R25
      270 SETTABLEKS                       R24 R23 K26 ["tag"]
      272 DUPTABLE                         R24 K49 [{"Thumbnail", "PackageLinkIcon"}]
      273 GETUPVAL                         R26 10
      274 GETTABLEKS                       R25 R26 K22 ["createElement"]
      276 GETUPVAL                         R26 12
      277 DUPTABLE                         R27 K50 [{"AssetId", "AssetType"}]
      278 SETTABLEKS                       R8 R27 K12 ["AssetId"]
      280 SETTABLEKS                       R9 R27 K3 ["AssetType"]
      282 CALL                             R25 2 1
      283 SETTABLEKS                       R25 R24 K47 ["Thumbnail"]
      285 MOVE                             R25 R11
      286 JUMPIFNOT                        R25 ; [+14]
      287 GETUPVAL                         R26 10
      288 GETTABLEKS                       R25 R26 K22 ["createElement"]
      290 GETUPVAL                         R27 11
      291 GETTABLEKS                       R26 R27 K51 ["Image"]
      293 DUPTABLE                         R27 K53 [{"ZIndex", "tag"}]
      294 LOADN                            R28 2
      295 SETTABLEKS                       R28 R27 K52 ["ZIndex"]
      297 LOADK                            R28 K54 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      298 SETTABLEKS                       R28 R27 K26 ["tag"]
      300 CALL                             R25 2 1
      301 SETTABLEKS                       R25 R24 K48 ["PackageLinkIcon"]
      303 CALL                             R21 3 1
      304 SETTABLEKS                       R21 R20 K40 ["ThumbnailContainer"]
      306 GETUPVAL                         R22 10
      307 GETTABLEKS                       R21 R22 K22 ["createElement"]
      309 GETUPVAL                         R23 11
      310 GETTABLEKS                       R22 R23 K23 ["View"]
      312 DUPTABLE                         R23 K43 [{"LayoutOrder", "tag"}]
      313 NAMECALL                         R24 R1 K44 ["getNextOrder"]
      315 CALL                             R24 1 1
      316 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      318 LOADK                            R24 K55 ["am-padding-celldata am-size-full-celldata col align-x-left align-y-middle"]
      319 SETTABLEKS                       R24 R23 K26 ["tag"]
      321 DUPTABLE                         R24 K58 [{"NameTag", "TypeTag"}]
      322 JUMPIFNOTEQ                      R8 R5 ; [+19]
      324 GETUPVAL                         R26 10
      325 GETTABLEKS                       R25 R26 K22 ["createElement"]
      327 GETUPVAL                         R26 13
      328 DUPTABLE                         R27 K60 [{"LayoutOrder", "InitialText", "Size"}]
      329 NAMECALL                         R28 R1 K44 ["getNextOrder"]
      331 CALL                             R28 1 1
      332 SETTABLEKS                       R28 R27 K24 ["LayoutOrder"]
      334 SETTABLEKS                       R10 R27 K59 ["InitialText"]
      336 GETTABLEKS                       R28 R0 K16 ["Size"]
      338 SETTABLEKS                       R28 R27 K16 ["Size"]
      340 CALL                             R25 2 1
      341 JUMP                             ; [+66]
      342 JUMPIFNOT                        R7 ; [+47]
      343 GETUPVAL                         R26 10
      344 GETTABLEKS                       R25 R26 K22 ["createElement"]
      346 GETUPVAL                         R27 11
      347 GETTABLEKS                       R26 R27 K61 ["Tooltip"]
      349 DUPTABLE                         R27 K64 [{"LayoutOrder", "title", "side"}]
      350 NAMECALL                         R28 R1 K44 ["getNextOrder"]
      352 CALL                             R28 1 1
      353 SETTABLEKS                       R28 R27 K24 ["LayoutOrder"]
      355 SETTABLEKS                       R10 R27 K62 ["title"]
      357 GETUPVAL                         R31 11
      358 GETTABLEKS                       R30 R31 K65 ["Enums"]
      360 GETTABLEKS                       R29 R30 K66 ["PopoverSide"]
      362 GETTABLEKS                       R28 R29 K67 ["Bottom"]
      364 SETTABLEKS                       R28 R27 K63 ["side"]
      366 NEWTABLE                         R28 0 1
      368 GETUPVAL                         R30 10
      369 GETTABLEKS                       R29 R30 K22 ["createElement"]
      371 GETUPVAL                         R31 11
      372 GETTABLEKS                       R30 R31 K68 ["Text"]
      374 DUPTABLE                         R31 K69 [{"LayoutOrder", "Text", "tag"}]
      375 NAMECALL                         R32 R1 K44 ["getNextOrder"]
      377 CALL                             R32 1 1
      378 SETTABLEKS                       R32 R31 K24 ["LayoutOrder"]
      380 SETTABLEKS                       R10 R31 K68 ["Text"]
      382 LOADK                            R32 K70 ["text-body-small text-align-left text-truncate-end auto-xy size-0"]
      383 SETTABLEKS                       R32 R31 K26 ["tag"]
      385 CALL                             R29 2 -1
      386 SETLIST                          R28 R29 -1 [1]
      388 CALL                             R25 3 1
      389 JUMP                             ; [+18]
      390 GETUPVAL                         R26 10
      391 GETTABLEKS                       R25 R26 K22 ["createElement"]
      393 GETUPVAL                         R27 11
      394 GETTABLEKS                       R26 R27 K68 ["Text"]
      396 DUPTABLE                         R27 K69 [{"LayoutOrder", "Text", "tag"}]
      397 NAMECALL                         R28 R1 K44 ["getNextOrder"]
      399 CALL                             R28 1 1
      400 SETTABLEKS                       R28 R27 K24 ["LayoutOrder"]
      402 SETTABLEKS                       R10 R27 K68 ["Text"]
      404 LOADK                            R28 K70 ["text-body-small text-align-left text-truncate-end auto-xy size-0"]
      405 SETTABLEKS                       R28 R27 K26 ["tag"]
      407 CALL                             R25 2 1
      408 SETTABLEKS                       R25 R24 K56 ["NameTag"]
      410 GETUPVAL                         R26 10
      411 GETTABLEKS                       R25 R26 K22 ["createElement"]
      413 GETUPVAL                         R27 11
      414 GETTABLEKS                       R26 R27 K68 ["Text"]
      416 DUPTABLE                         R27 K69 [{"LayoutOrder", "Text", "tag"}]
      417 NAMECALL                         R28 R1 K44 ["getNextOrder"]
      419 CALL                             R28 1 1
      420 SETTABLEKS                       R28 R27 K24 ["LayoutOrder"]
      422 LOADK                            R30 K3 ["AssetType"]
      423 MOVE                             R31 R9
      424 NAMECALL                         R28 R2 K71 ["getText"]
      426 CALL                             R28 3 1
      427 SETTABLEKS                       R28 R27 K68 ["Text"]
      429 LOADK                            R28 K72 ["text-caption-small text-truncate-end auto-xy size-0 content-inverse-muted"]
      430 SETTABLEKS                       R28 R27 K26 ["tag"]
      432 CALL                             R25 2 1
      433 SETTABLEKS                       R25 R24 K57 ["TypeTag"]
      435 CALL                             R21 3 1
      436 SETTABLEKS                       R21 R20 K41 ["CellData"]
      438 CALL                             R17 3 1
      439 SETTABLEKS                       R17 R16 K30 ["InputHandler"]
      441 CALL                             R13 3 -1
      442 CLOSEUPVALS                      R8
      443 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R10 R0 K12 ["Src"]
       36 GETTABLEKS                       R9 R10 K13 ["Components"]
       38 GETTABLEKS                       R8 R9 K14 ["Shared"]
       40 GETTABLEKS                       R7 R8 K15 ["EditNameInput"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R11 R0 K12 ["Src"]
       47 GETTABLEKS                       R10 R11 K13 ["Components"]
       49 GETTABLEKS                       R9 R10 K14 ["Shared"]
       51 GETTABLEKS                       R8 R9 K16 ["ItemThumbnail"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R11 R0 K12 ["Src"]
       58 GETTABLEKS                       R10 R11 K17 ["Controllers"]
       60 GETTABLEKS                       R9 R10 K18 ["Input"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R12 R0 K12 ["Src"]
       67 GETTABLEKS                       R11 R12 K17 ["Controllers"]
       69 GETTABLEKS                       R10 R11 K19 ["ItemsController"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R13 R0 K12 ["Src"]
       76 GETTABLEKS                       R12 R13 K20 ["Hooks"]
       78 GETTABLEKS                       R11 R12 K21 ["useItemSelection"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R14 R0 K12 ["Src"]
       85 GETTABLEKS                       R13 R14 K20 ["Hooks"]
       87 GETTABLEKS                       R12 R13 K22 ["useRenamePlaceId"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R14 R0 K12 ["Src"]
       94 GETTABLEKS                       R13 R14 K23 ["Types"]
       96 CALL                             R12 1 1
       97 GETTABLEKS                       R14 R3 K24 ["Util"]
       99 GETTABLEKS                       R13 R14 K25 ["LayoutOrderIterator"]
      101 GETTABLEKS                       R15 R3 K24 ["Util"]
      103 GETTABLEKS                       R14 R15 K26 ["GetTextSize"]
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R18 R0 K12 ["Src"]
      109 GETTABLEKS                       R17 R18 K27 ["Resources"]
      111 GETTABLEKS                       R16 R17 K28 ["PluginStyles"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R19 R0 K12 ["Src"]
      118 GETTABLEKS                       R18 R19 K29 ["Flags"]
      120 GETTABLEKS                       R17 R18 K30 ["getFFlagAmrUpdatedItemsCache"]
      122 CALL                             R16 1 1
      123 DUPCLOSURE                       R17 K31 [PROTO_3]
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R6
      138 RETURN                           R17 1
