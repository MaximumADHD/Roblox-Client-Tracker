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
       22 LOADN                            R7 0
       23 GETUPVAL                         R10 6
       24 GETTABLEKS                       R9 R10 K3 ["AssetType"]
       26 GETTABLEKS                       R8 R9 K4 ["Model"]
       28 LOADK                            R9 K5 [""]
       29 LOADNIL                          R10
       30 NAMECALL                         R11 R4 K6 ["getItemsCache"]
       32 CALL                             R11 1 1
       33 GETTABLEKS                       R12 R0 K2 ["Cell"]
       35 GETTABLEKS                       R13 R0 K7 ["ParentScope"]
       37 GETTABLEKS                       R16 R13 K8 ["Uid"]
       39 MOVE                             R17 R12
       40 GETUPVAL                         R20 6
       41 GETTABLEKS                       R19 R20 K9 ["AssetInfoField"]
       43 GETTABLEKS                       R18 R19 K3 ["AssetType"]
       45 NAMECALL                         R14 R11 K10 ["getItemField"]
       47 CALL                             R14 4 1
       48 MOVE                             R8 R14
       49 GETTABLEKS                       R16 R13 K8 ["Uid"]
       51 MOVE                             R17 R12
       52 GETUPVAL                         R20 6
       53 GETTABLEKS                       R19 R20 K9 ["AssetInfoField"]
       55 GETTABLEKS                       R18 R19 K11 ["DisplayName"]
       57 NAMECALL                         R14 R11 K10 ["getItemField"]
       59 CALL                             R14 4 1
       60 MOVE                             R9 R14
       61 GETTABLEKS                       R16 R13 K8 ["Uid"]
       63 MOVE                             R17 R12
       64 GETUPVAL                         R20 6
       65 GETTABLEKS                       R19 R20 K9 ["AssetInfoField"]
       67 GETTABLEKS                       R18 R19 K12 ["AssetId"]
       69 NAMECALL                         R14 R11 K10 ["getItemField"]
       71 CALL                             R14 4 1
       72 MOVE                             R7 R14
       73 GETTABLEKS                       R16 R13 K8 ["Uid"]
       75 MOVE                             R17 R12
       76 GETUPVAL                         R20 6
       77 GETTABLEKS                       R19 R20 K9 ["AssetInfoField"]
       79 GETTABLEKS                       R18 R19 K13 ["IsPackage"]
       81 NAMECALL                         R14 R11 K10 ["getItemField"]
       83 CALL                             R14 4 1
       84 MOVE                             R10 R14
       85 GETUPVAL                         R14 7
       86 CALL                             R14 0 1
       87 LOADK                            R15 K5 [""]
       88 GETTABLEKS                       R17 R0 K2 ["Cell"]
       90 GETTABLE                         R16 R14 R17
       91 JUMPIFNOT                        R16 ; [+2]
       92 LOADK                            R15 K14 ["bg-shift-200"]
       93 JUMP                             ; [+1]
       94 LOADK                            R15 K15 ["bg-paper am-hover"]
       95 GETTABLEKS                       R19 R0 K16 ["Size"]
       97 GETTABLEKS                       R18 R19 K17 ["X"]
       99 GETTABLEKS                       R17 R18 K18 ["Offset"]
      101 GETUPVAL                         R19 8
      102 LOADK                            R21 K20 ["CellTagPadding"]
      103 NAMECALL                         R19 R19 K21 ["GetAttribute"]
      105 CALL                             R19 2 1
      106 MULK                             R18 R19 K19 [2]
      107 SUB                              R16 R17 R18
      108 GETUPVAL                         R19 9
      109 MOVE                             R20 R9
      110 CALL                             R19 1 1
      111 GETTABLEKS                       R18 R19 K17 ["X"]
      113 JUMPIFLT                         R16 R18 ; [+2]
      115 LOADB                            R17 0 +1
      116 LOADB                            R17 1
      117 GETUPVAL                         R19 10
      118 GETTABLEKS                       R18 R19 K22 ["useRef"]
      120 LOADNIL                          R19
      121 CALL                             R18 1 1
      122 GETUPVAL                         R19 11
      123 MOVE                             R20 R18
      124 GETTABLEKS                       R21 R0 K2 ["Cell"]
      126 CALL                             R19 2 1
      127 GETUPVAL                         R20 12
      128 GETUPVAL                         R23 6
      129 GETTABLEKS                       R22 R23 K23 ["MenuContext"]
      131 GETTABLEKS                       R21 R22 K24 ["Asset"]
      133 DUPTABLE                         R22 K27 [{"Path", "Index"}]
      134 GETTABLEKS                       R23 R0 K2 ["Cell"]
      136 SETTABLEKS                       R23 R22 K25 ["Path"]
      138 GETTABLEKS                       R23 R0 K28 ["Key"]
      140 SETTABLEKS                       R23 R22 K26 ["Index"]
      142 CALL                             R20 2 1
      143 GETUPVAL                         R22 10
      144 GETTABLEKS                       R21 R22 K29 ["createElement"]
      146 GETUPVAL                         R23 13
      147 GETTABLEKS                       R22 R23 K30 ["View"]
      149 DUPTABLE                         R23 K35 [{"LayoutOrder", "Size", "Position", "ref", "tag"}]
      150 GETTABLEKS                       R24 R0 K28 ["Key"]
      152 SETTABLEKS                       R24 R23 K31 ["LayoutOrder"]
      154 GETTABLEKS                       R24 R0 K16 ["Size"]
      156 SETTABLEKS                       R24 R23 K16 ["Size"]
      158 GETTABLEKS                       R24 R0 K32 ["Position"]
      160 SETTABLEKS                       R24 R23 K32 ["Position"]
      162 SETTABLEKS                       R18 R23 K33 ["ref"]
      164 NEWTABLE                         R24 4 0
      166 LOADB                            R25 1
      167 SETTABLEKS                       R25 R24 K36 ["align-y-top align-x-center padding-xsmall radius-medium"]
      169 GETTABLEKS                       R26 R0 K2 ["Cell"]
      171 GETTABLE                         R25 R14 R26
      172 SETTABLEKS                       R25 R24 K37 ["bg-action-soft-emphasis"]
      174 GETUPVAL                         R26 14
      175 CALL                             R26 0 1
      176 AND                              R25 R26 R19
      177 SETTABLEKS                       R25 R24 K38 ["stroke-system-emphasis stroke-standard stroke-position-inner"]
      179 SETTABLEKS                       R24 R23 K34 ["tag"]
      181 DUPTABLE                         R24 K40 [{"InputHandler"}]
      182 GETUPVAL                         R26 10
      183 GETTABLEKS                       R25 R26 K29 ["createElement"]
      185 LOADK                            R26 K41 ["ImageButton"]
      186 NEWTABLE                         R27 4 0
      188 GETUPVAL                         R30 10
      189 GETTABLEKS                       R29 R30 K42 ["Event"]
      191 GETTABLEKS                       R28 R29 K43 ["MouseButton2Click"]
      193 NEWCLOSURE                       R29 P0
      194 CAPTURE                          UPVAL U15
      195 CAPTURE                          VAL R3
      196 CAPTURE                          UPVAL U6
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R20
      199 CAPTURE                          VAL R2
      200 SETTABLE                         R29 R27 R28
      201 GETUPVAL                         R30 10
      202 GETTABLEKS                       R29 R30 K42 ["Event"]
      204 GETTABLEKS                       R28 R29 K44 ["MouseButton1Down"]
      206 NEWCLOSURE                       R29 P1
      207 CAPTURE                          VAL R3
      208 CAPTURE                          UPVAL U6
      209 CAPTURE                          VAL R0
      210 SETTABLE                         R29 R27 R28
      211 GETUPVAL                         R30 10
      212 GETTABLEKS                       R29 R30 K42 ["Event"]
      214 GETTABLEKS                       R28 R29 K45 ["MouseButton1Up"]
      216 NEWCLOSURE                       R29 P2
      217 CAPTURE                          VAL R3
      218 CAPTURE                          UPVAL U6
      219 CAPTURE                          VAL R0
      220 SETTABLE                         R29 R27 R28
      221 GETUPVAL                         R29 10
      222 GETTABLEKS                       R28 R29 K46 ["Tag"]
      224 LOADK                            R29 K47 ["gui-object-defaults size-full col gap-xsmall data-testid=item-cell-input"]
      225 SETTABLE                         R29 R27 R28
      226 DUPTABLE                         R28 K50 [{"ThumbnailContainer", "CellData"}]
      227 GETUPVAL                         R30 10
      228 GETTABLEKS                       R29 R30 K29 ["createElement"]
      230 GETUPVAL                         R31 13
      231 GETTABLEKS                       R30 R31 K30 ["View"]
      233 DUPTABLE                         R31 K51 [{"LayoutOrder", "tag"}]
      234 NAMECALL                         R32 R1 K52 ["getNextOrder"]
      236 CALL                             R32 1 1
      237 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      239 LOADK                            R33 K53 ["size-full fill radius-small %*"]
      240 MOVE                             R35 R15
      241 NAMECALL                         R33 R33 K54 ["format"]
      243 CALL                             R33 2 1
      244 MOVE                             R32 R33
      245 SETTABLEKS                       R32 R31 K34 ["tag"]
      247 DUPTABLE                         R32 K57 [{"Thumbnail", "PackageLinkIcon"}]
      248 GETUPVAL                         R34 10
      249 GETTABLEKS                       R33 R34 K29 ["createElement"]
      251 GETUPVAL                         R34 16
      252 DUPTABLE                         R35 K58 [{"AssetId", "AssetType"}]
      253 SETTABLEKS                       R7 R35 K12 ["AssetId"]
      255 SETTABLEKS                       R8 R35 K3 ["AssetType"]
      257 CALL                             R33 2 1
      258 SETTABLEKS                       R33 R32 K55 ["Thumbnail"]
      260 MOVE                             R33 R10
      261 JUMPIFNOT                        R33 ; [+14]
      262 GETUPVAL                         R34 10
      263 GETTABLEKS                       R33 R34 K29 ["createElement"]
      265 GETUPVAL                         R35 13
      266 GETTABLEKS                       R34 R35 K59 ["Image"]
      268 DUPTABLE                         R35 K61 [{"ZIndex", "tag"}]
      269 LOADN                            R36 2
      270 SETTABLEKS                       R36 R35 K60 ["ZIndex"]
      272 LOADK                            R36 K62 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      273 SETTABLEKS                       R36 R35 K34 ["tag"]
      275 CALL                             R33 2 1
      276 SETTABLEKS                       R33 R32 K56 ["PackageLinkIcon"]
      278 CALL                             R29 3 1
      279 SETTABLEKS                       R29 R28 K48 ["ThumbnailContainer"]
      281 GETUPVAL                         R30 10
      282 GETTABLEKS                       R29 R30 K29 ["createElement"]
      284 GETUPVAL                         R31 13
      285 GETTABLEKS                       R30 R31 K30 ["View"]
      287 DUPTABLE                         R31 K51 [{"LayoutOrder", "tag"}]
      288 NAMECALL                         R32 R1 K52 ["getNextOrder"]
      290 CALL                             R32 1 1
      291 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      293 LOADK                            R32 K63 ["am-size-full-celldata col align-x-left align-y-middle"]
      294 SETTABLEKS                       R32 R31 K34 ["tag"]
      296 DUPTABLE                         R32 K66 [{"NameTag", "TypeTag"}]
      297 GETUPVAL                         R34 17
      298 CALL                             R34 0 1
      299 JUMPIFNOT                        R34 ; [+25]
      300 JUMPIFNOT                        R6 ; [+24]
      301 GETUPVAL                         R34 10
      302 GETTABLEKS                       R33 R34 K29 ["createElement"]
      304 GETUPVAL                         R34 18
      305 DUPTABLE                         R35 K70 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      306 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      308 CALL                             R36 1 1
      309 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      311 SETTABLEKS                       R9 R35 K67 ["InitialText"]
      313 SETTABLEKS                       R8 R35 K68 ["ItemType"]
      315 GETTABLEKS                       R36 R0 K2 ["Cell"]
      317 SETTABLEKS                       R36 R35 K69 ["ItemPath"]
      319 GETTABLEKS                       R36 R0 K16 ["Size"]
      321 SETTABLEKS                       R36 R35 K16 ["Size"]
      323 CALL                             R33 2 1
      324 JUMP                             ; [+86]
      325 JUMPIFNOTEQ                      R7 R5 ; [+19]
      327 GETUPVAL                         R34 10
      328 GETTABLEKS                       R33 R34 K29 ["createElement"]
      330 GETUPVAL                         R34 19
      331 DUPTABLE                         R35 K71 [{"LayoutOrder", "InitialText", "Size"}]
      332 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      334 CALL                             R36 1 1
      335 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      337 SETTABLEKS                       R9 R35 K67 ["InitialText"]
      339 GETTABLEKS                       R36 R0 K16 ["Size"]
      341 SETTABLEKS                       R36 R35 K16 ["Size"]
      343 CALL                             R33 2 1
      344 JUMP                             ; [+66]
      345 JUMPIFNOT                        R17 ; [+47]
      346 GETUPVAL                         R34 10
      347 GETTABLEKS                       R33 R34 K29 ["createElement"]
      349 GETUPVAL                         R35 13
      350 GETTABLEKS                       R34 R35 K72 ["Tooltip"]
      352 DUPTABLE                         R35 K75 [{"LayoutOrder", "title", "side"}]
      353 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      355 CALL                             R36 1 1
      356 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      358 SETTABLEKS                       R9 R35 K73 ["title"]
      360 GETUPVAL                         R39 13
      361 GETTABLEKS                       R38 R39 K76 ["Enums"]
      363 GETTABLEKS                       R37 R38 K77 ["PopoverSide"]
      365 GETTABLEKS                       R36 R37 K78 ["Bottom"]
      367 SETTABLEKS                       R36 R35 K74 ["side"]
      369 NEWTABLE                         R36 0 1
      371 GETUPVAL                         R38 10
      372 GETTABLEKS                       R37 R38 K29 ["createElement"]
      374 GETUPVAL                         R39 13
      375 GETTABLEKS                       R38 R39 K79 ["Text"]
      377 DUPTABLE                         R39 K80 [{"LayoutOrder", "Text", "tag"}]
      378 NAMECALL                         R40 R1 K52 ["getNextOrder"]
      380 CALL                             R40 1 1
      381 SETTABLEKS                       R40 R39 K31 ["LayoutOrder"]
      383 SETTABLEKS                       R9 R39 K79 ["Text"]
      385 LOADK                            R40 K81 ["text-body-small text-align-left text-truncate-end auto-xy size-0 content-emphasis"]
      386 SETTABLEKS                       R40 R39 K34 ["tag"]
      388 CALL                             R37 2 -1
      389 SETLIST                          R36 R37 -1 [1]
      391 CALL                             R33 3 1
      392 JUMP                             ; [+18]
      393 GETUPVAL                         R34 10
      394 GETTABLEKS                       R33 R34 K29 ["createElement"]
      396 GETUPVAL                         R35 13
      397 GETTABLEKS                       R34 R35 K79 ["Text"]
      399 DUPTABLE                         R35 K80 [{"LayoutOrder", "Text", "tag"}]
      400 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      402 CALL                             R36 1 1
      403 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      405 SETTABLEKS                       R9 R35 K79 ["Text"]
      407 LOADK                            R36 K81 ["text-body-small text-align-left text-truncate-end auto-xy size-0 content-emphasis"]
      408 SETTABLEKS                       R36 R35 K34 ["tag"]
      410 CALL                             R33 2 1
      411 SETTABLEKS                       R33 R32 K64 ["NameTag"]
      413 GETUPVAL                         R34 10
      414 GETTABLEKS                       R33 R34 K29 ["createElement"]
      416 GETUPVAL                         R35 13
      417 GETTABLEKS                       R34 R35 K79 ["Text"]
      419 DUPTABLE                         R35 K80 [{"LayoutOrder", "Text", "tag"}]
      420 NAMECALL                         R36 R1 K52 ["getNextOrder"]
      422 CALL                             R36 1 1
      423 SETTABLEKS                       R36 R35 K31 ["LayoutOrder"]
      425 LOADK                            R38 K3 ["AssetType"]
      426 MOVE                             R39 R8
      427 NAMECALL                         R36 R2 K82 ["getText"]
      429 CALL                             R36 3 1
      430 SETTABLEKS                       R36 R35 K79 ["Text"]
      432 LOADK                            R36 K83 ["text-caption-small text-truncate-end auto-xy size-0 padding content-default"]
      433 SETTABLEKS                       R36 R35 K34 ["tag"]
      435 CALL                             R33 2 1
      436 SETTABLEKS                       R33 R32 K65 ["TypeTag"]
      438 CALL                             R29 3 1
      439 SETTABLEKS                       R29 R28 K49 ["CellData"]
      441 CALL                             R25 3 1
      442 SETTABLEKS                       R25 R24 K39 ["InputHandler"]
      444 CALL                             R21 3 -1
      445 RETURN                           R21 -1

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
      107 GETTABLEKS                       R14 R15 K24 ["useItemDragHovered"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R17 R0 K12 ["Src"]
      114 GETTABLEKS                       R16 R17 K21 ["Hooks"]
      116 GETTABLEKS                       R15 R16 K25 ["useItemSelection"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R18 R0 K12 ["Src"]
      123 GETTABLEKS                       R17 R18 K21 ["Hooks"]
      125 GETTABLEKS                       R16 R17 K26 ["useRenamePlaceId_DEPRECATED"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R18 R0 K12 ["Src"]
      132 GETTABLEKS                       R17 R18 K27 ["Types"]
      134 CALL                             R16 1 1
      135 GETTABLEKS                       R18 R3 K28 ["Util"]
      137 GETTABLEKS                       R17 R18 K29 ["LayoutOrderIterator"]
      139 GETTABLEKS                       R19 R3 K28 ["Util"]
      141 GETTABLEKS                       R18 R19 K30 ["GetTextSize"]
      143 GETIMPORT                        R19 K5 [require]
      145 GETTABLEKS                       R22 R0 K12 ["Src"]
      147 GETTABLEKS                       R21 R22 K31 ["Resources"]
      149 GETTABLEKS                       R20 R21 K32 ["PluginStyles"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K5 [require]
      154 GETTABLEKS                       R23 R0 K12 ["Src"]
      156 GETTABLEKS                       R22 R23 K33 ["Flags"]
      158 GETTABLEKS                       R21 R22 K34 ["getFFlagAmrContextMenuRefactor"]
      160 CALL                             R20 1 1
      161 GETIMPORT                        R21 K5 [require]
      163 GETTABLEKS                       R24 R0 K12 ["Src"]
      165 GETTABLEKS                       R23 R24 K33 ["Flags"]
      167 GETTABLEKS                       R22 R23 K35 ["getFFlagAmrOrganizationFoundation"]
      169 CALL                             R21 1 1
      170 GETIMPORT                        R22 K5 [require]
      172 GETTABLEKS                       R25 R0 K12 ["Src"]
      174 GETTABLEKS                       R24 R25 K33 ["Flags"]
      176 GETTABLEKS                       R23 R24 K36 ["getFFlagAmrRefactorEditNameInput"]
      178 CALL                             R22 1 1
      179 DUPCLOSURE                       R23 K37 [PROTO_3]
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R20
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R7
      200 RETURN                           R23 1
