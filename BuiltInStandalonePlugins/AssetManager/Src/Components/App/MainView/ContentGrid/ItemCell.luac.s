PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETUPVAL                         R7 3
        8 GETUPVAL                         R9 4
        9 GETTABLEKS                       R8 R9 K2 ["Key"]
       11 NAMECALL                         R3 R3 K3 ["handleMouse2Click"]
       13 CALL                             R3 5 0
       14 RETURN                           R0 0

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
       94 LOADK                            R6 K15 ["am-hover"]
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
      128 LOADK                            R6 K22 ["bg-paper am-hover"]
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
      182 GETTABLEKS                       R13 R14 K23 ["createElement"]
      184 GETUPVAL                         R15 11
      185 GETTABLEKS                       R14 R15 K24 ["View"]
      187 DUPTABLE                         R15 K28 [{"LayoutOrder", "Size", "Position", "tag"}]
      188 GETTABLEKS                       R16 R0 K29 ["Key"]
      190 SETTABLEKS                       R16 R15 K25 ["LayoutOrder"]
      192 GETTABLEKS                       R16 R0 K16 ["Size"]
      194 SETTABLEKS                       R16 R15 K16 ["Size"]
      196 GETTABLEKS                       R16 R0 K26 ["Position"]
      198 SETTABLEKS                       R16 R15 K26 ["Position"]
      200 LOADK                            R16 K30 ["align-y-top align-x-center"]
      201 SETTABLEKS                       R16 R15 K27 ["tag"]
      203 DUPTABLE                         R16 K32 [{"InputHandler"}]
      204 GETUPVAL                         R18 10
      205 GETTABLEKS                       R17 R18 K23 ["createElement"]
      207 LOADK                            R18 K33 ["ImageButton"]
      208 NEWTABLE                         R19 8 0
      210 LOADN                            R20 1
      211 SETTABLEKS                       R20 R19 K34 ["BackgroundTransparency"]
      213 GETUPVAL                         R22 10
      214 GETTABLEKS                       R21 R22 K35 ["Event"]
      216 GETTABLEKS                       R20 R21 K36 ["MouseButton2Click"]
      218 NEWCLOSURE                       R21 P0
      219 CAPTURE                          VAL R3
      220 CAPTURE                          UPVAL U5
      221 CAPTURE                          VAL R2
      222 CAPTURE                          REF R8
      223 CAPTURE                          VAL R0
      224 SETTABLE                         R21 R19 R20
      225 GETUPVAL                         R22 10
      226 GETTABLEKS                       R21 R22 K35 ["Event"]
      228 GETTABLEKS                       R20 R21 K37 ["MouseButton1Down"]
      230 NEWCLOSURE                       R21 P1
      231 CAPTURE                          VAL R3
      232 CAPTURE                          UPVAL U5
      233 CAPTURE                          VAL R0
      234 SETTABLE                         R21 R19 R20
      235 GETUPVAL                         R22 10
      236 GETTABLEKS                       R21 R22 K35 ["Event"]
      238 GETTABLEKS                       R20 R21 K38 ["MouseButton1Up"]
      240 NEWCLOSURE                       R21 P2
      241 CAPTURE                          VAL R3
      242 CAPTURE                          UPVAL U5
      243 CAPTURE                          VAL R0
      244 SETTABLE                         R21 R19 R20
      245 GETUPVAL                         R21 10
      246 GETTABLEKS                       R20 R21 K39 ["Tag"]
      248 LOADK                            R21 K40 ["size-full col data-testid=item-cell-input"]
      249 SETTABLE                         R21 R19 R20
      250 DUPTABLE                         R20 K43 [{"ThumbnailContainer", "CellData"}]
      251 GETUPVAL                         R22 10
      252 GETTABLEKS                       R21 R22 K23 ["createElement"]
      254 GETUPVAL                         R23 11
      255 GETTABLEKS                       R22 R23 K24 ["View"]
      257 DUPTABLE                         R23 K44 [{"LayoutOrder", "tag"}]
      258 NAMECALL                         R24 R1 K45 ["getNextOrder"]
      260 CALL                             R24 1 1
      261 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      263 LOADK                            R25 K46 ["size-full fill radius-small padding-xsmall %*"]
      264 MOVE                             R27 R6
      265 NAMECALL                         R25 R25 K47 ["format"]
      267 CALL                             R25 2 1
      268 MOVE                             R24 R25
      269 SETTABLEKS                       R24 R23 K27 ["tag"]
      271 DUPTABLE                         R24 K50 [{"Thumbnail", "PackageLinkIcon"}]
      272 GETUPVAL                         R26 10
      273 GETTABLEKS                       R25 R26 K23 ["createElement"]
      275 GETUPVAL                         R26 12
      276 DUPTABLE                         R27 K51 [{"AssetId", "AssetType"}]
      277 SETTABLEKS                       R8 R27 K12 ["AssetId"]
      279 SETTABLEKS                       R9 R27 K3 ["AssetType"]
      281 CALL                             R25 2 1
      282 SETTABLEKS                       R25 R24 K48 ["Thumbnail"]
      284 MOVE                             R25 R11
      285 JUMPIFNOT                        R25 ; [+14]
      286 GETUPVAL                         R26 10
      287 GETTABLEKS                       R25 R26 K23 ["createElement"]
      289 GETUPVAL                         R27 11
      290 GETTABLEKS                       R26 R27 K52 ["Image"]
      292 DUPTABLE                         R27 K54 [{"ZIndex", "tag"}]
      293 LOADN                            R28 2
      294 SETTABLEKS                       R28 R27 K53 ["ZIndex"]
      296 LOADK                            R28 K55 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      297 SETTABLEKS                       R28 R27 K27 ["tag"]
      299 CALL                             R25 2 1
      300 SETTABLEKS                       R25 R24 K49 ["PackageLinkIcon"]
      302 CALL                             R21 3 1
      303 SETTABLEKS                       R21 R20 K41 ["ThumbnailContainer"]
      305 GETUPVAL                         R22 10
      306 GETTABLEKS                       R21 R22 K23 ["createElement"]
      308 GETUPVAL                         R23 11
      309 GETTABLEKS                       R22 R23 K24 ["View"]
      311 DUPTABLE                         R23 K44 [{"LayoutOrder", "tag"}]
      312 NAMECALL                         R24 R1 K45 ["getNextOrder"]
      314 CALL                             R24 1 1
      315 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      317 LOADK                            R24 K56 ["am-padding-celldata am-size-full-celldata col align-x-left align-y-middle"]
      318 SETTABLEKS                       R24 R23 K27 ["tag"]
      320 DUPTABLE                         R24 K59 [{"NameTag", "TypeTag"}]
      321 JUMPIFNOTEQ                      R8 R5 ; [+19]
      323 GETUPVAL                         R26 10
      324 GETTABLEKS                       R25 R26 K23 ["createElement"]
      326 GETUPVAL                         R26 13
      327 DUPTABLE                         R27 K61 [{"LayoutOrder", "InitialText", "Size"}]
      328 NAMECALL                         R28 R1 K45 ["getNextOrder"]
      330 CALL                             R28 1 1
      331 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      333 SETTABLEKS                       R10 R27 K60 ["InitialText"]
      335 GETTABLEKS                       R28 R0 K16 ["Size"]
      337 SETTABLEKS                       R28 R27 K16 ["Size"]
      339 CALL                             R25 2 1
      340 JUMP                             ; [+66]
      341 JUMPIFNOT                        R7 ; [+47]
      342 GETUPVAL                         R26 10
      343 GETTABLEKS                       R25 R26 K23 ["createElement"]
      345 GETUPVAL                         R27 11
      346 GETTABLEKS                       R26 R27 K62 ["Tooltip"]
      348 DUPTABLE                         R27 K65 [{"LayoutOrder", "title", "side"}]
      349 NAMECALL                         R28 R1 K45 ["getNextOrder"]
      351 CALL                             R28 1 1
      352 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      354 SETTABLEKS                       R10 R27 K63 ["title"]
      356 GETUPVAL                         R31 11
      357 GETTABLEKS                       R30 R31 K66 ["Enums"]
      359 GETTABLEKS                       R29 R30 K67 ["PopoverSide"]
      361 GETTABLEKS                       R28 R29 K68 ["Bottom"]
      363 SETTABLEKS                       R28 R27 K64 ["side"]
      365 NEWTABLE                         R28 0 1
      367 GETUPVAL                         R30 10
      368 GETTABLEKS                       R29 R30 K23 ["createElement"]
      370 GETUPVAL                         R31 11
      371 GETTABLEKS                       R30 R31 K69 ["Text"]
      373 DUPTABLE                         R31 K70 [{"LayoutOrder", "Text", "tag"}]
      374 NAMECALL                         R32 R1 K45 ["getNextOrder"]
      376 CALL                             R32 1 1
      377 SETTABLEKS                       R32 R31 K25 ["LayoutOrder"]
      379 SETTABLEKS                       R10 R31 K69 ["Text"]
      381 LOADK                            R32 K71 ["text-body-small text-align-left text-truncate-end auto-xy size-0"]
      382 SETTABLEKS                       R32 R31 K27 ["tag"]
      384 CALL                             R29 2 -1
      385 SETLIST                          R28 R29 -1 [1]
      387 CALL                             R25 3 1
      388 JUMP                             ; [+18]
      389 GETUPVAL                         R26 10
      390 GETTABLEKS                       R25 R26 K23 ["createElement"]
      392 GETUPVAL                         R27 11
      393 GETTABLEKS                       R26 R27 K69 ["Text"]
      395 DUPTABLE                         R27 K70 [{"LayoutOrder", "Text", "tag"}]
      396 NAMECALL                         R28 R1 K45 ["getNextOrder"]
      398 CALL                             R28 1 1
      399 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      401 SETTABLEKS                       R10 R27 K69 ["Text"]
      403 LOADK                            R28 K71 ["text-body-small text-align-left text-truncate-end auto-xy size-0"]
      404 SETTABLEKS                       R28 R27 K27 ["tag"]
      406 CALL                             R25 2 1
      407 SETTABLEKS                       R25 R24 K57 ["NameTag"]
      409 GETUPVAL                         R26 10
      410 GETTABLEKS                       R25 R26 K23 ["createElement"]
      412 GETUPVAL                         R27 11
      413 GETTABLEKS                       R26 R27 K69 ["Text"]
      415 DUPTABLE                         R27 K70 [{"LayoutOrder", "Text", "tag"}]
      416 NAMECALL                         R28 R1 K45 ["getNextOrder"]
      418 CALL                             R28 1 1
      419 SETTABLEKS                       R28 R27 K25 ["LayoutOrder"]
      421 LOADK                            R30 K3 ["AssetType"]
      422 MOVE                             R31 R9
      423 NAMECALL                         R28 R2 K72 ["getText"]
      425 CALL                             R28 3 1
      426 SETTABLEKS                       R28 R27 K69 ["Text"]
      428 LOADK                            R28 K73 ["text-caption-small text-truncate-end auto-xy size-0 content-inverse-muted"]
      429 SETTABLEKS                       R28 R27 K27 ["tag"]
      431 CALL                             R25 2 1
      432 SETTABLEKS                       R25 R24 K58 ["TypeTag"]
      434 CALL                             R21 3 1
      435 SETTABLEKS                       R21 R20 K42 ["CellData"]
      437 CALL                             R17 3 1
      438 SETTABLEKS                       R17 R16 K31 ["InputHandler"]
      440 CALL                             R13 3 -1
      441 CLOSEUPVALS                      R8
      442 RETURN                           R13 -1

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
