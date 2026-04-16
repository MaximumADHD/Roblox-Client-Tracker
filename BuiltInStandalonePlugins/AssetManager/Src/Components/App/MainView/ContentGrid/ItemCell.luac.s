PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+18]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R7 2
        5 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        7 GETTABLEKS                       R5 R6 K1 ["Browser"]
        9 LOADNIL                          R6
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R7 R8 K2 ["Cell"]
       13 GETUPVAL                         R9 3
       14 GETTABLEKS                       R8 R9 K3 ["Key"]
       16 GETUPVAL                         R9 4
       17 NAMECALL                         R3 R3 K4 ["handleMouse2Click"]
       19 CALL                             R3 6 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 1
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R6 R7 K0 ["UiZone"]
       25 GETTABLEKS                       R5 R6 K1 ["Browser"]
       27 GETUPVAL                         R6 5
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R7 R8 K2 ["Cell"]
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R8 R9 K3 ["Key"]
       34 NAMECALL                         R3 R3 K4 ["handleMouse2Click"]
       36 CALL                             R3 5 0
       37 RETURN                           R0 0

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
       18 GETUPVAL                         R6 5
       19 GETTABLEKS                       R7 R0 K2 ["Cell"]
       21 CALL                             R6 1 1
       22 LOADK                            R7 K3 [""]
       23 LOADB                            R8 0
       24 LOADN                            R9 0
       25 GETUPVAL                         R12 6
       26 GETTABLEKS                       R11 R12 K4 ["AssetType"]
       28 GETTABLEKS                       R10 R11 K5 ["Model"]
       30 LOADK                            R11 K3 [""]
       31 LOADNIL                          R12
       32 NAMECALL                         R13 R4 K6 ["getItemsCache"]
       34 CALL                             R13 1 1
       35 GETTABLEKS                       R14 R0 K2 ["Cell"]
       37 GETTABLEKS                       R15 R0 K7 ["ParentScope"]
       39 GETTABLEKS                       R18 R15 K8 ["Uid"]
       41 MOVE                             R19 R14
       42 GETUPVAL                         R22 6
       43 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       45 GETTABLEKS                       R20 R21 K4 ["AssetType"]
       47 NAMECALL                         R16 R13 K10 ["getItemField"]
       49 CALL                             R16 4 1
       50 MOVE                             R10 R16
       51 GETTABLEKS                       R18 R15 K8 ["Uid"]
       53 MOVE                             R19 R14
       54 GETUPVAL                         R22 6
       55 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       57 GETTABLEKS                       R20 R21 K11 ["DisplayName"]
       59 NAMECALL                         R16 R13 K10 ["getItemField"]
       61 CALL                             R16 4 1
       62 MOVE                             R11 R16
       63 GETTABLEKS                       R18 R15 K8 ["Uid"]
       65 MOVE                             R19 R14
       66 GETUPVAL                         R22 6
       67 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       69 GETTABLEKS                       R20 R21 K12 ["AssetId"]
       71 NAMECALL                         R16 R13 K10 ["getItemField"]
       73 CALL                             R16 4 1
       74 MOVE                             R9 R16
       75 GETTABLEKS                       R18 R15 K8 ["Uid"]
       77 MOVE                             R19 R14
       78 GETUPVAL                         R22 6
       79 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       81 GETTABLEKS                       R20 R21 K13 ["IsPackage"]
       83 NAMECALL                         R16 R13 K10 ["getItemField"]
       85 CALL                             R16 4 1
       86 MOVE                             R12 R16
       87 GETUPVAL                         R16 7
       88 CALL                             R16 0 1
       89 GETTABLEKS                       R18 R0 K2 ["Cell"]
       91 GETTABLE                         R17 R16 R18
       92 JUMPIFNOT                        R17 ; [+2]
       93 LOADK                            R7 K14 ["bg-action-selected"]
       94 JUMP                             ; [+1]
       95 LOADK                            R7 K15 ["bg-paper am-hover"]
       96 GETTABLEKS                       R20 R0 K16 ["Size"]
       98 GETTABLEKS                       R19 R20 K17 ["X"]
      100 GETTABLEKS                       R18 R19 K18 ["Offset"]
      102 GETUPVAL                         R20 8
      103 LOADK                            R22 K20 ["CellTagPadding"]
      104 NAMECALL                         R20 R20 K21 ["GetAttribute"]
      106 CALL                             R20 2 1
      107 MULK                             R19 R20 K19 [2]
      108 SUB                              R17 R18 R19
      109 GETUPVAL                         R19 9
      110 MOVE                             R20 R11
      111 CALL                             R19 1 1
      112 GETTABLEKS                       R18 R19 K17 ["X"]
      114 JUMPIFLT                         R17 R18 ; [+2]
      116 LOADB                            R8 0 +1
      117 LOADB                            R8 1
      118 GETUPVAL                         R18 10
      119 GETUPVAL                         R21 6
      120 GETTABLEKS                       R20 R21 K22 ["MenuContext"]
      122 GETTABLEKS                       R19 R20 K23 ["Asset"]
      124 DUPTABLE                         R20 K26 [{"Path", "Index"}]
      125 GETTABLEKS                       R21 R0 K2 ["Cell"]
      127 SETTABLEKS                       R21 R20 K24 ["Path"]
      129 GETTABLEKS                       R21 R0 K27 ["Key"]
      131 SETTABLEKS                       R21 R20 K25 ["Index"]
      133 CALL                             R18 2 1
      134 GETUPVAL                         R20 11
      135 GETTABLEKS                       R19 R20 K28 ["createElement"]
      137 GETUPVAL                         R21 12
      138 GETTABLEKS                       R20 R21 K29 ["View"]
      140 DUPTABLE                         R21 K33 [{"LayoutOrder", "Size", "Position", "tag"}]
      141 GETTABLEKS                       R22 R0 K27 ["Key"]
      143 SETTABLEKS                       R22 R21 K30 ["LayoutOrder"]
      145 GETTABLEKS                       R22 R0 K16 ["Size"]
      147 SETTABLEKS                       R22 R21 K16 ["Size"]
      149 GETTABLEKS                       R22 R0 K31 ["Position"]
      151 SETTABLEKS                       R22 R21 K31 ["Position"]
      153 LOADK                            R22 K34 ["align-y-top align-x-center"]
      154 SETTABLEKS                       R22 R21 K32 ["tag"]
      156 DUPTABLE                         R22 K36 [{"InputHandler"}]
      157 GETUPVAL                         R24 11
      158 GETTABLEKS                       R23 R24 K28 ["createElement"]
      160 LOADK                            R24 K37 ["ImageButton"]
      161 NEWTABLE                         R25 8 0
      163 LOADN                            R26 1
      164 SETTABLEKS                       R26 R25 K38 ["BackgroundTransparency"]
      166 GETUPVAL                         R28 11
      167 GETTABLEKS                       R27 R28 K39 ["Event"]
      169 GETTABLEKS                       R26 R27 K40 ["MouseButton2Click"]
      171 NEWCLOSURE                       R27 P0
      172 CAPTURE                          UPVAL U13
      173 CAPTURE                          VAL R3
      174 CAPTURE                          UPVAL U6
      175 CAPTURE                          VAL R0
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R2
      178 SETTABLE                         R27 R25 R26
      179 GETUPVAL                         R28 11
      180 GETTABLEKS                       R27 R28 K39 ["Event"]
      182 GETTABLEKS                       R26 R27 K41 ["MouseButton1Down"]
      184 NEWCLOSURE                       R27 P1
      185 CAPTURE                          VAL R3
      186 CAPTURE                          UPVAL U6
      187 CAPTURE                          VAL R0
      188 SETTABLE                         R27 R25 R26
      189 GETUPVAL                         R28 11
      190 GETTABLEKS                       R27 R28 K39 ["Event"]
      192 GETTABLEKS                       R26 R27 K42 ["MouseButton1Up"]
      194 NEWCLOSURE                       R27 P2
      195 CAPTURE                          VAL R3
      196 CAPTURE                          UPVAL U6
      197 CAPTURE                          VAL R0
      198 SETTABLE                         R27 R25 R26
      199 GETUPVAL                         R27 11
      200 GETTABLEKS                       R26 R27 K43 ["Tag"]
      202 LOADK                            R27 K44 ["size-full col data-testid=item-cell-input"]
      203 SETTABLE                         R27 R25 R26
      204 DUPTABLE                         R26 K47 [{"ThumbnailContainer", "CellData"}]
      205 GETUPVAL                         R28 11
      206 GETTABLEKS                       R27 R28 K28 ["createElement"]
      208 GETUPVAL                         R29 12
      209 GETTABLEKS                       R28 R29 K29 ["View"]
      211 DUPTABLE                         R29 K48 [{"LayoutOrder", "tag"}]
      212 NAMECALL                         R30 R1 K49 ["getNextOrder"]
      214 CALL                             R30 1 1
      215 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      217 LOADK                            R31 K50 ["size-full fill radius-small padding-xsmall %*"]
      218 MOVE                             R33 R7
      219 NAMECALL                         R31 R31 K51 ["format"]
      221 CALL                             R31 2 1
      222 MOVE                             R30 R31
      223 SETTABLEKS                       R30 R29 K32 ["tag"]
      225 DUPTABLE                         R30 K54 [{"Thumbnail", "PackageLinkIcon"}]
      226 GETUPVAL                         R32 11
      227 GETTABLEKS                       R31 R32 K28 ["createElement"]
      229 GETUPVAL                         R32 14
      230 DUPTABLE                         R33 K55 [{"AssetId", "AssetType"}]
      231 SETTABLEKS                       R9 R33 K12 ["AssetId"]
      233 SETTABLEKS                       R10 R33 K4 ["AssetType"]
      235 CALL                             R31 2 1
      236 SETTABLEKS                       R31 R30 K52 ["Thumbnail"]
      238 MOVE                             R31 R12
      239 JUMPIFNOT                        R31 ; [+14]
      240 GETUPVAL                         R32 11
      241 GETTABLEKS                       R31 R32 K28 ["createElement"]
      243 GETUPVAL                         R33 12
      244 GETTABLEKS                       R32 R33 K56 ["Image"]
      246 DUPTABLE                         R33 K58 [{"ZIndex", "tag"}]
      247 LOADN                            R34 2
      248 SETTABLEKS                       R34 R33 K57 ["ZIndex"]
      250 LOADK                            R34 K59 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      251 SETTABLEKS                       R34 R33 K32 ["tag"]
      253 CALL                             R31 2 1
      254 SETTABLEKS                       R31 R30 K53 ["PackageLinkIcon"]
      256 CALL                             R27 3 1
      257 SETTABLEKS                       R27 R26 K45 ["ThumbnailContainer"]
      259 GETUPVAL                         R28 11
      260 GETTABLEKS                       R27 R28 K28 ["createElement"]
      262 GETUPVAL                         R29 12
      263 GETTABLEKS                       R28 R29 K29 ["View"]
      265 DUPTABLE                         R29 K48 [{"LayoutOrder", "tag"}]
      266 NAMECALL                         R30 R1 K49 ["getNextOrder"]
      268 CALL                             R30 1 1
      269 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      271 LOADK                            R30 K60 ["am-padding-celldata am-size-full-celldata col align-x-left align-y-middle"]
      272 SETTABLEKS                       R30 R29 K32 ["tag"]
      274 DUPTABLE                         R30 K63 [{"NameTag", "TypeTag"}]
      275 GETUPVAL                         R32 15
      276 CALL                             R32 0 1
      277 JUMPIFNOT                        R32 ; [+25]
      278 JUMPIFNOT                        R6 ; [+24]
      279 GETUPVAL                         R32 11
      280 GETTABLEKS                       R31 R32 K28 ["createElement"]
      282 GETUPVAL                         R32 16
      283 DUPTABLE                         R33 K67 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      284 NAMECALL                         R34 R1 K49 ["getNextOrder"]
      286 CALL                             R34 1 1
      287 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      289 SETTABLEKS                       R11 R33 K64 ["InitialText"]
      291 SETTABLEKS                       R10 R33 K65 ["ItemType"]
      293 GETTABLEKS                       R34 R0 K2 ["Cell"]
      295 SETTABLEKS                       R34 R33 K66 ["ItemPath"]
      297 GETTABLEKS                       R34 R0 K16 ["Size"]
      299 SETTABLEKS                       R34 R33 K16 ["Size"]
      301 CALL                             R31 2 1
      302 JUMP                             ; [+86]
      303 JUMPIFNOTEQ                      R9 R5 ; [+19]
      305 GETUPVAL                         R32 11
      306 GETTABLEKS                       R31 R32 K28 ["createElement"]
      308 GETUPVAL                         R32 17
      309 DUPTABLE                         R33 K68 [{"LayoutOrder", "InitialText", "Size"}]
      310 NAMECALL                         R34 R1 K49 ["getNextOrder"]
      312 CALL                             R34 1 1
      313 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      315 SETTABLEKS                       R11 R33 K64 ["InitialText"]
      317 GETTABLEKS                       R34 R0 K16 ["Size"]
      319 SETTABLEKS                       R34 R33 K16 ["Size"]
      321 CALL                             R31 2 1
      322 JUMP                             ; [+66]
      323 JUMPIFNOT                        R8 ; [+47]
      324 GETUPVAL                         R32 11
      325 GETTABLEKS                       R31 R32 K28 ["createElement"]
      327 GETUPVAL                         R33 12
      328 GETTABLEKS                       R32 R33 K69 ["Tooltip"]
      330 DUPTABLE                         R33 K72 [{"LayoutOrder", "title", "side"}]
      331 NAMECALL                         R34 R1 K49 ["getNextOrder"]
      333 CALL                             R34 1 1
      334 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      336 SETTABLEKS                       R11 R33 K70 ["title"]
      338 GETUPVAL                         R37 12
      339 GETTABLEKS                       R36 R37 K73 ["Enums"]
      341 GETTABLEKS                       R35 R36 K74 ["PopoverSide"]
      343 GETTABLEKS                       R34 R35 K75 ["Bottom"]
      345 SETTABLEKS                       R34 R33 K71 ["side"]
      347 NEWTABLE                         R34 0 1
      349 GETUPVAL                         R36 11
      350 GETTABLEKS                       R35 R36 K28 ["createElement"]
      352 GETUPVAL                         R37 12
      353 GETTABLEKS                       R36 R37 K76 ["Text"]
      355 DUPTABLE                         R37 K77 [{"LayoutOrder", "Text", "tag"}]
      356 NAMECALL                         R38 R1 K49 ["getNextOrder"]
      358 CALL                             R38 1 1
      359 SETTABLEKS                       R38 R37 K30 ["LayoutOrder"]
      361 SETTABLEKS                       R11 R37 K76 ["Text"]
      363 LOADK                            R38 K78 ["text-body-small text-align-left text-truncate-end auto-xy size-0"]
      364 SETTABLEKS                       R38 R37 K32 ["tag"]
      366 CALL                             R35 2 -1
      367 SETLIST                          R34 R35 -1 [1]
      369 CALL                             R31 3 1
      370 JUMP                             ; [+18]
      371 GETUPVAL                         R32 11
      372 GETTABLEKS                       R31 R32 K28 ["createElement"]
      374 GETUPVAL                         R33 12
      375 GETTABLEKS                       R32 R33 K76 ["Text"]
      377 DUPTABLE                         R33 K77 [{"LayoutOrder", "Text", "tag"}]
      378 NAMECALL                         R34 R1 K49 ["getNextOrder"]
      380 CALL                             R34 1 1
      381 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      383 SETTABLEKS                       R11 R33 K76 ["Text"]
      385 LOADK                            R34 K78 ["text-body-small text-align-left text-truncate-end auto-xy size-0"]
      386 SETTABLEKS                       R34 R33 K32 ["tag"]
      388 CALL                             R31 2 1
      389 SETTABLEKS                       R31 R30 K61 ["NameTag"]
      391 GETUPVAL                         R32 11
      392 GETTABLEKS                       R31 R32 K28 ["createElement"]
      394 GETUPVAL                         R33 12
      395 GETTABLEKS                       R32 R33 K76 ["Text"]
      397 DUPTABLE                         R33 K77 [{"LayoutOrder", "Text", "tag"}]
      398 NAMECALL                         R34 R1 K49 ["getNextOrder"]
      400 CALL                             R34 1 1
      401 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      403 LOADK                            R36 K4 ["AssetType"]
      404 MOVE                             R37 R10
      405 NAMECALL                         R34 R2 K79 ["getText"]
      407 CALL                             R34 3 1
      408 SETTABLEKS                       R34 R33 K76 ["Text"]
      410 LOADK                            R34 K80 ["text-caption-small text-truncate-end auto-xy size-0 content-inverse-muted"]
      411 SETTABLEKS                       R34 R33 K32 ["tag"]
      413 CALL                             R31 2 1
      414 SETTABLEKS                       R31 R30 K62 ["TypeTag"]
      416 CALL                             R27 3 1
      417 SETTABLEKS                       R27 R26 K46 ["CellData"]
      419 CALL                             R23 3 1
      420 SETTABLEKS                       R23 R22 K35 ["InputHandler"]
      422 CALL                             R19 3 -1
      423 RETURN                           R19 -1

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
       51 GETTABLEKS                       R8 R9 K16 ["EditNameInput_DEPRECATED"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R12 R0 K12 ["Src"]
       58 GETTABLEKS                       R11 R12 K13 ["Components"]
       60 GETTABLEKS                       R10 R11 K14 ["Shared"]
       62 GETTABLEKS                       R9 R10 K17 ["ItemThumbnail"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R12 R0 K12 ["Src"]
       69 GETTABLEKS                       R11 R12 K18 ["Controllers"]
       71 GETTABLEKS                       R10 R11 K19 ["Input"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R13 R0 K12 ["Src"]
       78 GETTABLEKS                       R12 R13 K18 ["Controllers"]
       80 GETTABLEKS                       R11 R12 K20 ["ItemsController"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R14 R0 K12 ["Src"]
       87 GETTABLEKS                       R13 R14 K21 ["Hooks"]
       89 GETTABLEKS                       R12 R13 K22 ["useContextMenu"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R15 R0 K12 ["Src"]
       96 GETTABLEKS                       R14 R15 K21 ["Hooks"]
       98 GETTABLEKS                       R13 R14 K23 ["useIsEditItem"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R16 R0 K12 ["Src"]
      105 GETTABLEKS                       R15 R16 K21 ["Hooks"]
      107 GETTABLEKS                       R14 R15 K24 ["useItemSelection"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R17 R0 K12 ["Src"]
      114 GETTABLEKS                       R16 R17 K21 ["Hooks"]
      116 GETTABLEKS                       R15 R16 K25 ["useRenamePlaceId_DEPRECATED"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R17 R0 K12 ["Src"]
      123 GETTABLEKS                       R16 R17 K26 ["Types"]
      125 CALL                             R15 1 1
      126 GETTABLEKS                       R17 R3 K27 ["Util"]
      128 GETTABLEKS                       R16 R17 K28 ["LayoutOrderIterator"]
      130 GETTABLEKS                       R18 R3 K27 ["Util"]
      132 GETTABLEKS                       R17 R18 K29 ["GetTextSize"]
      134 GETIMPORT                        R18 K5 [require]
      136 GETTABLEKS                       R21 R0 K12 ["Src"]
      138 GETTABLEKS                       R20 R21 K30 ["Resources"]
      140 GETTABLEKS                       R19 R20 K31 ["PluginStyles"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K5 [require]
      145 GETTABLEKS                       R22 R0 K12 ["Src"]
      147 GETTABLEKS                       R21 R22 K32 ["Flags"]
      149 GETTABLEKS                       R20 R21 K33 ["getFFlagAmrContextMenuRefactor"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K5 [require]
      154 GETTABLEKS                       R23 R0 K12 ["Src"]
      156 GETTABLEKS                       R22 R23 K32 ["Flags"]
      158 GETTABLEKS                       R21 R22 K34 ["getFFlagAmrRefactorEditNameInput"]
      160 CALL                             R20 1 1
      161 DUPCLOSURE                       R21 K35 [PROTO_3]
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R7
      180 RETURN                           R21 1
