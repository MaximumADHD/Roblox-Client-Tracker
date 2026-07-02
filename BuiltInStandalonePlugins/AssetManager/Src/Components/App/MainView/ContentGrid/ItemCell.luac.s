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
      176 SETTABLEKS                       R26 R25 K36 ["align-x-center align-y-top padding-xsmall radius-medium"]
      178 SETTABLEKS                       R21 R25 K37 ["bg-action-soft-emphasis"]
      180 NOT                              R27 R21
      181 AND                              R26 R27 R16
      182 SETTABLEKS                       R26 R25 K7 ["bg-shift-200"]
      184 SETTABLEKS                       R17 R25 K38 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      186 SETTABLEKS                       R25 R24 K34 ["tag"]
      188 DUPTABLE                         R25 K40 [{"InputHandler"}]
      189 GETUPVAL                         R26 8
      190 GETTABLEKS                       R26 R26 K29 ["createElement"]
      192 LOADK                            R27 K41 ["ImageButton"]
      193 NEWTABLE                         R28 4 0
      195 GETUPVAL                         R29 8
      196 GETTABLEKS                       R29 R29 K42 ["Event"]
      198 GETTABLEKS                       R29 R29 K43 ["MouseButton2Click"]
      200 NEWCLOSURE                       R30 P0
      201 CAPTURE                          VAL R3
      202 CAPTURE                          UPVAL U5
      203 CAPTURE                          VAL R0
      204 CAPTURE                          VAL R18
      205 SETTABLE                         R30 R28 R29
      206 GETUPVAL                         R29 8
      207 GETTABLEKS                       R29 R29 K42 ["Event"]
      209 GETTABLEKS                       R29 R29 K44 ["MouseButton1Down"]
      211 NEWCLOSURE                       R30 P1
      212 CAPTURE                          VAL R3
      213 CAPTURE                          UPVAL U5
      214 CAPTURE                          VAL R0
      215 SETTABLE                         R30 R28 R29
      216 GETUPVAL                         R29 8
      217 GETTABLEKS                       R29 R29 K42 ["Event"]
      219 GETTABLEKS                       R29 R29 K45 ["MouseButton1Up"]
      221 NEWCLOSURE                       R30 P2
      222 CAPTURE                          VAL R3
      223 CAPTURE                          UPVAL U5
      224 CAPTURE                          VAL R0
      225 SETTABLE                         R30 R28 R29
      226 GETUPVAL                         R29 8
      227 GETTABLEKS                       R29 R29 K46 ["Tag"]
      229 LOADK                            R30 K47 ["gui-object-defaults size-full col gap-xsmall data-testid=item-cell-input"]
      230 SETTABLE                         R30 R28 R29
      231 DUPTABLE                         R29 K50 [{"ThumbnailContainer", "CellData"}]
      232 GETUPVAL                         R30 8
      233 GETTABLEKS                       R30 R30 K29 ["createElement"]
      235 GETUPVAL                         R31 13
      236 GETTABLEKS                       R31 R31 K30 ["View"]
      238 DUPTABLE                         R32 K51 [{"LayoutOrder", "tag"}]
      239 NAMECALL                         R33 R1 K52 ["getNextOrder"]
      241 CALL                             R33 1 1
      242 SETTABLEKS                       R33 R32 K31 ["LayoutOrder"]
      244 LOADK                            R34 K53 ["fill size-full radius-small %*"]
      245 MOVE                             R36 R13
      246 NAMECALL                         R34 R34 K54 ["format"]
      248 CALL                             R34 2 1
      249 MOVE                             R33 R34
      250 SETTABLEKS                       R33 R32 K34 ["tag"]
      252 DUPTABLE                         R33 K57 [{"Thumbnail", "PackageLinkIcon"}]
      253 GETUPVAL                         R34 8
      254 GETTABLEKS                       R34 R34 K29 ["createElement"]
      256 GETUPVAL                         R35 14
      257 DUPTABLE                         R36 K58 [{"AssetId", "AssetType"}]
      258 SETTABLEKS                       R6 R36 K27 ["AssetId"]
      260 SETTABLEKS                       R7 R36 K3 ["AssetType"]
      262 CALL                             R34 2 1
      263 SETTABLEKS                       R34 R33 K55 ["Thumbnail"]
      265 MOVE                             R34 R9
      266 JUMPIFNOT                        R34 ; [+8]
      267 GETUPVAL                         R34 8
      268 GETTABLEKS                       R34 R34 K29 ["createElement"]
      270 GETUPVAL                         R35 13
      271 GETTABLEKS                       R35 R35 K59 ["Image"]
      273 DUPTABLE                         R36 K64 [{["ZIndex"] = 2, ["tag"] = "am-size-icon icon-packageLink anchor-bottom-right radius-small bg-over-media-0", ["testId"] = "package-link-icon"}]
      274 CALL                             R34 2 1
      275 SETTABLEKS                       R34 R33 K56 ["PackageLinkIcon"]
      277 CALL                             R30 3 1
      278 SETTABLEKS                       R30 R29 K48 ["ThumbnailContainer"]
      280 GETUPVAL                         R30 8
      281 GETTABLEKS                       R30 R30 K29 ["createElement"]
      283 GETUPVAL                         R31 13
      284 GETTABLEKS                       R31 R31 K30 ["View"]
      286 DUPTABLE                         R32 K66 [{["LayoutOrder"], ["tag"] = "align-y-middle am-size-full-celldata col align-x-left"}]
      287 NAMECALL                         R33 R1 K52 ["getNextOrder"]
      289 CALL                             R33 1 1
      290 SETTABLEKS                       R33 R32 K31 ["LayoutOrder"]
      292 DUPTABLE                         R33 K69 [{"NameTag", "TypeTag"}]
      293 JUMPIFNOT                        R5 ; [+24]
      294 GETUPVAL                         R34 8
      295 GETTABLEKS                       R34 R34 K29 ["createElement"]
      297 GETUPVAL                         R35 15
      298 DUPTABLE                         R36 K73 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      299 NAMECALL                         R37 R1 K52 ["getNextOrder"]
      301 CALL                             R37 1 1
      302 SETTABLEKS                       R37 R36 K31 ["LayoutOrder"]
      304 SETTABLEKS                       R8 R36 K70 ["InitialText"]
      306 SETTABLEKS                       R7 R36 K71 ["ItemType"]
      308 GETTABLEKS                       R37 R0 K2 ["Cell"]
      310 SETTABLEKS                       R37 R36 K72 ["ItemPath"]
      312 GETTABLEKS                       R37 R0 K9 ["Size"]
      314 SETTABLEKS                       R37 R36 K9 ["Size"]
      316 CALL                             R34 2 1
      317 JUMP                             ; [+60]
      318 JUMPIFNOT                        R20 ; [+44]
      319 GETUPVAL                         R34 8
      320 GETTABLEKS                       R34 R34 K29 ["createElement"]
      322 GETUPVAL                         R35 13
      323 GETTABLEKS                       R35 R35 K74 ["Tooltip"]
      325 DUPTABLE                         R36 K77 [{"LayoutOrder", "title", "side"}]
      326 NAMECALL                         R37 R1 K52 ["getNextOrder"]
      328 CALL                             R37 1 1
      329 SETTABLEKS                       R37 R36 K31 ["LayoutOrder"]
      331 SETTABLEKS                       R8 R36 K75 ["title"]
      333 GETUPVAL                         R37 13
      334 GETTABLEKS                       R37 R37 K78 ["Enums"]
      336 GETTABLEKS                       R37 R37 K79 ["PopoverSide"]
      338 GETTABLEKS                       R37 R37 K80 ["Bottom"]
      340 SETTABLEKS                       R37 R36 K76 ["side"]
      342 NEWTABLE                         R37 0 1
      344 GETUPVAL                         R38 8
      345 GETTABLEKS                       R38 R38 K29 ["createElement"]
      347 GETUPVAL                         R39 13
      348 GETTABLEKS                       R39 R39 K81 ["Text"]
      350 DUPTABLE                         R40 K83 [{["LayoutOrder"], ["Text"], ["tag"] = "text-align-left size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
      351 NAMECALL                         R41 R1 K52 ["getNextOrder"]
      353 CALL                             R41 1 1
      354 SETTABLEKS                       R41 R40 K31 ["LayoutOrder"]
      356 SETTABLEKS                       R8 R40 K81 ["Text"]
      358 CALL                             R38 2 -1
      359 SETLIST                          R37 R38 -1 [1]
      361 CALL                             R34 3 1
      362 JUMP                             ; [+15]
      363 GETUPVAL                         R34 8
      364 GETTABLEKS                       R34 R34 K29 ["createElement"]
      366 GETUPVAL                         R35 13
      367 GETTABLEKS                       R35 R35 K81 ["Text"]
      369 DUPTABLE                         R36 K83 [{["LayoutOrder"], ["Text"], ["tag"] = "text-align-left size-0 auto-xy text-body-small text-truncate-end content-emphasis"}]
      370 NAMECALL                         R37 R1 K52 ["getNextOrder"]
      372 CALL                             R37 1 1
      373 SETTABLEKS                       R37 R36 K31 ["LayoutOrder"]
      375 SETTABLEKS                       R8 R36 K81 ["Text"]
      377 CALL                             R34 2 1
      378 SETTABLEKS                       R34 R33 K67 ["NameTag"]
      380 GETUPVAL                         R34 8
      381 GETTABLEKS                       R34 R34 K29 ["createElement"]
      383 GETUPVAL                         R35 13
      384 GETTABLEKS                       R35 R35 K81 ["Text"]
      386 DUPTABLE                         R36 K85 [{["LayoutOrder"], ["Text"], ["tag"] = "padding size-0 auto-xy text-caption-small text-truncate-end content-default"}]
      387 NAMECALL                         R37 R1 K52 ["getNextOrder"]
      389 CALL                             R37 1 1
      390 SETTABLEKS                       R37 R36 K31 ["LayoutOrder"]
      392 LOADK                            R39 K3 ["AssetType"]
      393 MOVE                             R40 R7
      394 NAMECALL                         R37 R2 K86 ["getText"]
      396 CALL                             R37 3 1
      397 SETTABLEKS                       R37 R36 K81 ["Text"]
      399 CALL                             R34 2 1
      400 SETTABLEKS                       R34 R33 K68 ["TypeTag"]
      402 CALL                             R30 3 1
      403 SETTABLEKS                       R30 R29 K49 ["CellData"]
      405 CALL                             R26 3 1
      406 SETTABLEKS                       R26 R25 K39 ["InputHandler"]
      408 CALL                             R22 3 -1
      409 RETURN                           R22 -1

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
      141 DUPCLOSURE                       R19 K32 [PROTO_3]
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R6
      158 RETURN                           R19 1
