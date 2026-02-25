PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Icon"]
        6 DUPTABLE                         R3 K4 [{"name", "tag"}]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K5 ["Enums"]
       10 GETTABLEKS                       R5 R6 K6 ["IconName"]
       12 GETTABLEKS                       R4 R5 K7 ["DiamondSimplified"]
       14 SETTABLEKS                       R4 R3 K2 ["name"]
       16 LOADK                            R4 K8 ["bg-action-subtle"]
       17 SETTABLEKS                       R4 R3 K3 ["tag"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R3 K1 ["Browser"]
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R6 4
        9 GETTABLEKS                       R5 R6 K2 ["Key"]
       11 NAMECALL                         R0 R0 K3 ["handleMouse2Click"]
       13 CALL                             R0 5 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R6 K1 ["Browser"]
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["renamePlace"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_5:
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
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K1 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 CALL                             R6 0 1
       22 LOADK                            R7 K2 [""]
       23 LOADB                            R8 0
       24 LOADN                            R9 0
       25 GETUPVAL                         R12 6
       26 GETTABLEKS                       R11 R12 K3 ["AssetType"]
       28 GETTABLEKS                       R10 R11 K4 ["Model"]
       30 LOADK                            R11 K2 [""]
       31 LOADNIL                          R12
       32 GETUPVAL                         R13 7
       33 CALL                             R13 0 1
       34 JUMPIFNOT                        R13 ; [+122]
       35 NAMECALL                         R13 R4 K5 ["getItemsCache"]
       37 CALL                             R13 1 1
       38 GETTABLEKS                       R14 R0 K6 ["Cell"]
       40 GETTABLEKS                       R15 R0 K7 ["ParentScope"]
       42 GETTABLEKS                       R18 R15 K8 ["Uid"]
       44 MOVE                             R19 R14
       45 GETUPVAL                         R22 6
       46 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       48 GETTABLEKS                       R20 R21 K3 ["AssetType"]
       50 NAMECALL                         R16 R13 K10 ["getItemField"]
       52 CALL                             R16 4 1
       53 MOVE                             R10 R16
       54 GETTABLEKS                       R18 R15 K8 ["Uid"]
       56 MOVE                             R19 R14
       57 GETUPVAL                         R22 6
       58 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       60 GETTABLEKS                       R20 R21 K11 ["DisplayName"]
       62 NAMECALL                         R16 R13 K10 ["getItemField"]
       64 CALL                             R16 4 1
       65 MOVE                             R11 R16
       66 GETTABLEKS                       R18 R15 K8 ["Uid"]
       68 MOVE                             R19 R14
       69 GETUPVAL                         R22 6
       70 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       72 GETTABLEKS                       R20 R21 K12 ["AssetId"]
       74 NAMECALL                         R16 R13 K10 ["getItemField"]
       76 CALL                             R16 4 1
       77 MOVE                             R9 R16
       78 GETTABLEKS                       R18 R15 K8 ["Uid"]
       80 MOVE                             R19 R14
       81 GETUPVAL                         R22 6
       82 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       84 GETTABLEKS                       R20 R21 K13 ["IsPackage"]
       86 NAMECALL                         R16 R13 K10 ["getItemField"]
       88 CALL                             R16 4 1
       89 MOVE                             R12 R16
       90 GETUPVAL                         R16 8
       91 CALL                             R16 0 1
       92 GETUPVAL                         R17 9
       93 CALL                             R17 0 1
       94 JUMPIFNOT                        R17 ; [+20]
       95 GETTABLEKS                       R18 R0 K6 ["Cell"]
       97 GETTABLE                         R17 R16 R18
       98 JUMPIFNOT                        R17 ; [+2]
       99 LOADK                            R7 K14 ["bg-action-selected"]
      100 JUMP                             ; [+33]
      101 LOADK                            R17 K15 ["am-hover %*"]
      102 GETTABLEKS                       R21 R0 K17 ["Key"]
      104 MODK                             R20 R21 K16 [2]
      105 JUMPIFNOTEQKN                    R20 K18 [0] ; [+3]
      107 LOADK                            R19 K19 ["bg-paper"]
      108 JUMP                             ; [+1]
      109 LOADK                            R19 K2 [""]
      110 NAMECALL                         R17 R17 K20 ["format"]
      112 CALL                             R17 2 1
      113 MOVE                             R7 R17
      114 JUMP                             ; [+19]
      115 GETTABLEKS                       R18 R0 K6 ["Cell"]
      117 GETTABLE                         R17 R16 R18
      118 JUMPIFNOT                        R17 ; [+2]
      119 LOADK                            R7 K14 ["bg-action-selected"]
      120 JUMP                             ; [+13]
      121 LOADK                            R17 K15 ["am-hover %*"]
      122 GETTABLEKS                       R21 R0 K17 ["Key"]
      124 MODK                             R20 R21 K16 [2]
      125 JUMPIFNOTEQKN                    R20 K18 [0] ; [+3]
      127 LOADK                            R19 K19 ["bg-paper"]
      128 JUMP                             ; [+1]
      129 LOADK                            R19 K2 [""]
      130 NAMECALL                         R17 R17 K20 ["format"]
      132 CALL                             R17 2 1
      133 MOVE                             R7 R17
      134 GETTABLEKS                       R20 R0 K21 ["Size"]
      136 GETTABLEKS                       R19 R20 K22 ["X"]
      138 GETTABLEKS                       R18 R19 K23 ["Offset"]
      140 GETUPVAL                         R20 10
      141 LOADK                            R22 K24 ["CellTagPadding"]
      142 NAMECALL                         R20 R20 K25 ["GetAttribute"]
      144 CALL                             R20 2 1
      145 MULK                             R19 R20 K16 [2]
      146 SUB                              R17 R18 R19
      147 GETUPVAL                         R19 11
      148 MOVE                             R20 R11
      149 CALL                             R19 1 1
      150 GETTABLEKS                       R18 R19 K22 ["X"]
      152 JUMPIFLT                         R17 R18 ; [+2]
      154 LOADB                            R8 0 +1
      155 LOADB                            R8 1
      156 JUMP                             ; [+39]
      157 GETTABLEKS                       R13 R0 K6 ["Cell"]
      159 GETUPVAL                         R14 8
      160 CALL                             R14 0 1
      161 GETTABLEKS                       R16 R13 K12 ["AssetId"]
      163 GETTABLE                         R15 R14 R16
      164 JUMPIFNOT                        R15 ; [+1]
      165 LOADK                            R7 K14 ["bg-action-selected"]
      166 GETUPVAL                         R16 11
      167 GETTABLEKS                       R17 R13 K11 ["DisplayName"]
      169 CALL                             R16 1 1
      170 GETTABLEKS                       R15 R16 K22 ["X"]
      172 GETTABLEKS                       R18 R0 K21 ["Size"]
      174 GETTABLEKS                       R17 R18 K22 ["X"]
      176 GETTABLEKS                       R16 R17 K23 ["Offset"]
      178 GETUPVAL                         R19 10
      179 LOADK                            R21 K24 ["CellTagPadding"]
      180 NAMECALL                         R19 R19 K25 ["GetAttribute"]
      182 CALL                             R19 2 1
      183 MULK                             R18 R19 K16 [2]
      184 SUB                              R17 R16 R18
      185 JUMPIFNOTLT                      R17 R15 ; [+2]
      187 LOADB                            R8 1
      188 GETTABLEKS                       R9 R13 K12 ["AssetId"]
      190 GETTABLEKS                       R10 R13 K3 ["AssetType"]
      192 GETTABLEKS                       R11 R13 K11 ["DisplayName"]
      194 GETTABLEKS                       R12 R13 K13 ["IsPackage"]
      196 GETUPVAL                         R14 12
      197 GETTABLEKS                       R13 R14 K26 ["createElement"]
      199 GETUPVAL                         R14 13
      200 NEWTABLE                         R15 8 0
      202 GETTABLEKS                       R16 R0 K17 ["Key"]
      204 SETTABLEKS                       R16 R15 K27 ["LayoutOrder"]
      206 GETTABLEKS                       R16 R0 K21 ["Size"]
      208 SETTABLEKS                       R16 R15 K21 ["Size"]
      210 GETTABLEKS                       R16 R0 K28 ["Position"]
      212 SETTABLEKS                       R16 R15 K28 ["Position"]
      214 NEWCLOSURE                       R16 P0
      215 CAPTURE                          VAL R3
      216 CAPTURE                          UPVAL U6
      217 CAPTURE                          VAL R2
      218 CAPTURE                          REF R9
      219 CAPTURE                          VAL R0
      220 SETTABLEKS                       R16 R15 K29 ["OnRightClick"]
      222 GETUPVAL                         R18 12
      223 GETTABLEKS                       R17 R18 K30 ["Event"]
      225 GETTABLEKS                       R16 R17 K31 ["MouseButton1Down"]
      227 NEWCLOSURE                       R17 P1
      228 CAPTURE                          VAL R3
      229 CAPTURE                          UPVAL U6
      230 CAPTURE                          VAL R0
      231 SETTABLE                         R17 R15 R16
      232 GETUPVAL                         R18 12
      233 GETTABLEKS                       R17 R18 K30 ["Event"]
      235 GETTABLEKS                       R16 R17 K32 ["MouseButton1Up"]
      237 NEWCLOSURE                       R17 P2
      238 CAPTURE                          VAL R3
      239 CAPTURE                          UPVAL U6
      240 CAPTURE                          VAL R0
      241 SETTABLE                         R17 R15 R16
      242 GETUPVAL                         R17 12
      243 GETTABLEKS                       R16 R17 K33 ["Tag"]
      245 LOADK                            R17 K34 ["ItemCell X-Top X-Center X-ColumnS"]
      246 SETTABLE                         R17 R15 R16
      247 DUPTABLE                         R16 K37 [{"ThumbnailContainer", "CellData"}]
      248 GETUPVAL                         R18 12
      249 GETTABLEKS                       R17 R18 K26 ["createElement"]
      251 GETUPVAL                         R18 13
      252 NEWTABLE                         R19 1 0
      254 GETUPVAL                         R21 12
      255 GETTABLEKS                       R20 R21 K33 ["Tag"]
      257 LOADK                            R22 K38 ["CellThumbnailContainer Secondary X-Corner X-PadS %*"]
      258 MOVE                             R24 R7
      259 NAMECALL                         R22 R22 K20 ["format"]
      261 CALL                             R22 2 1
      262 MOVE                             R21 R22
      263 SETTABLE                         R21 R19 R20
      264 DUPTABLE                         R20 K41 [{"Thumbnail", "PackageLinkIcon"}]
      265 GETUPVAL                         R22 9
      266 CALL                             R22 0 1
      267 JUMPIFNOT                        R22 ; [+15]
      268 GETUPVAL                         R24 6
      269 GETTABLEKS                       R23 R24 K3 ["AssetType"]
      271 GETTABLEKS                       R22 R23 K42 ["Folder"]
      273 JUMPIFNOTEQ                      R10 R22 ; [+9]
      275 GETUPVAL                         R22 12
      276 GETTABLEKS                       R21 R22 K26 ["createElement"]
      278 GETUPVAL                         R22 14
      279 NEWTABLE                         R23 0 0
      281 CALL                             R21 2 1
      282 JUMP                             ; [+10]
      283 GETUPVAL                         R22 12
      284 GETTABLEKS                       R21 R22 K26 ["createElement"]
      286 GETUPVAL                         R22 15
      287 DUPTABLE                         R23 K43 [{"AssetId", "AssetType"}]
      288 SETTABLEKS                       R9 R23 K12 ["AssetId"]
      290 SETTABLEKS                       R10 R23 K3 ["AssetType"]
      292 CALL                             R21 2 1
      293 SETTABLEKS                       R21 R20 K39 ["Thumbnail"]
      295 JUMPIFNOT                        R12 ; [+15]
      296 GETUPVAL                         R22 12
      297 GETTABLEKS                       R21 R22 K26 ["createElement"]
      299 GETUPVAL                         R23 16
      300 GETTABLEKS                       R22 R23 K44 ["Image"]
      302 DUPTABLE                         R23 K47 [{"ZIndex", "tag"}]
      303 LOADN                            R24 2
      304 SETTABLEKS                       R24 R23 K45 ["ZIndex"]
      306 LOADK                            R24 K48 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      307 SETTABLEKS                       R24 R23 K46 ["tag"]
      309 CALL                             R21 2 1
      310 JUMP                             ; [+1]
      311 LOADNIL                          R21
      312 SETTABLEKS                       R21 R20 K40 ["PackageLinkIcon"]
      314 CALL                             R17 3 1
      315 SETTABLEKS                       R17 R16 K35 ["ThumbnailContainer"]
      317 GETUPVAL                         R18 12
      318 GETTABLEKS                       R17 R18 K26 ["createElement"]
      320 GETUPVAL                         R18 13
      321 NEWTABLE                         R19 2 0
      323 NAMECALL                         R20 R1 K49 ["getNextOrder"]
      325 CALL                             R20 1 1
      326 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      328 GETUPVAL                         R21 12
      329 GETTABLEKS                       R20 R21 K33 ["Tag"]
      331 LOADK                            R21 K50 ["am-padding-celldata am-size-full-celldata X-Column X-Left X-Middle"]
      332 SETTABLE                         R21 R19 R20
      333 DUPTABLE                         R20 K53 [{"NameTag", "TypeTag"}]
      334 JUMPIFNOTEQ                      R9 R6 ; [+28]
      336 GETUPVAL                         R22 12
      337 GETTABLEKS                       R21 R22 K26 ["createElement"]
      339 GETUPVAL                         R22 17
      340 NEWTABLE                         R23 8 0
      342 NAMECALL                         R24 R1 K49 ["getNextOrder"]
      344 CALL                             R24 1 1
      345 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      347 SETTABLEKS                       R11 R23 K54 ["Text"]
      349 LOADB                            R24 1
      350 SETTABLEKS                       R24 R23 K55 ["ShouldFocus"]
      352 NEWCLOSURE                       R24 P3
      353 CAPTURE                          VAL R5
      354 SETTABLEKS                       R24 R23 K56 ["OnFocusLost"]
      356 GETUPVAL                         R25 12
      357 GETTABLEKS                       R24 R25 K33 ["Tag"]
      359 LOADK                            R25 K57 ["Left"]
      360 SETTABLE                         R25 R23 R24
      361 CALL                             R21 2 1
      362 JUMP                             ; [+37]
      363 GETUPVAL                         R22 12
      364 GETTABLEKS                       R21 R22 K26 ["createElement"]
      366 GETUPVAL                         R22 18
      367 NEWTABLE                         R23 4 0
      369 NAMECALL                         R24 R1 K49 ["getNextOrder"]
      371 CALL                             R24 1 1
      372 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      374 SETTABLEKS                       R11 R23 K54 ["Text"]
      376 GETIMPORT                        R24 K61 [Enum.TextTruncate.AtEnd]
      378 SETTABLEKS                       R24 R23 K59 ["TextTruncate"]
      380 GETUPVAL                         R25 12
      381 GETTABLEKS                       R24 R25 K33 ["Tag"]
      383 LOADK                            R25 K57 ["Left"]
      384 SETTABLE                         R25 R23 R24
      385 DUPTABLE                         R24 K63 [{"Tooltip"}]
      386 JUMPIFNOT                        R8 ; [+9]
      387 GETUPVAL                         R26 12
      388 GETTABLEKS                       R25 R26 K26 ["createElement"]
      390 GETUPVAL                         R26 19
      391 DUPTABLE                         R27 K64 [{"Text"}]
      392 SETTABLEKS                       R11 R27 K54 ["Text"]
      394 CALL                             R25 2 1
      395 JUMP                             ; [+1]
      396 LOADNIL                          R25
      397 SETTABLEKS                       R25 R24 K62 ["Tooltip"]
      399 CALL                             R21 3 1
      400 SETTABLEKS                       R21 R20 K51 ["NameTag"]
      402 GETUPVAL                         R22 12
      403 GETTABLEKS                       R21 R22 K26 ["createElement"]
      405 GETUPVAL                         R22 18
      406 NEWTABLE                         R23 8 0
      408 GETIMPORT                        R24 K67 [Enum.AutomaticSize.XY]
      410 SETTABLEKS                       R24 R23 K65 ["AutomaticSize"]
      412 NAMECALL                         R24 R1 K49 ["getNextOrder"]
      414 CALL                             R24 1 1
      415 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      417 LOADK                            R26 K3 ["AssetType"]
      418 MOVE                             R27 R10
      419 NAMECALL                         R24 R2 K68 ["getText"]
      421 CALL                             R24 3 1
      422 SETTABLEKS                       R24 R23 K54 ["Text"]
      424 GETIMPORT                        R24 K61 [Enum.TextTruncate.AtEnd]
      426 SETTABLEKS                       R24 R23 K59 ["TextTruncate"]
      428 GETUPVAL                         R25 12
      429 GETTABLEKS                       R24 R25 K33 ["Tag"]
      431 LOADK                            R25 K69 ["Body"]
      432 SETTABLE                         R25 R23 R24
      433 CALL                             R21 2 1
      434 SETTABLEKS                       R21 R20 K52 ["TypeTag"]
      436 CALL                             R17 3 1
      437 SETTABLEKS                       R17 R16 K36 ["CellData"]
      439 CALL                             R13 3 -1
      440 CLOSEUPVALS                      R9
      441 RETURN                           R13 -1

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
       32 GETTABLEKS                       R6 R3 K12 ["UI"]
       34 GETTABLEKS                       R7 R6 K13 ["Pane"]
       36 GETTABLEKS                       R8 R6 K14 ["TextInput"]
       38 GETTABLEKS                       R9 R6 K15 ["TextLabel"]
       40 GETTABLEKS                       R10 R6 K16 ["Tooltip"]
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R15 R0 K17 ["Src"]
       46 GETTABLEKS                       R14 R15 K18 ["Components"]
       48 GETTABLEKS                       R13 R14 K19 ["Shared"]
       50 GETTABLEKS                       R12 R13 K20 ["AssetThumbnail"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K5 [require]
       55 GETTABLEKS                       R15 R0 K17 ["Src"]
       57 GETTABLEKS                       R14 R15 K21 ["Controllers"]
       59 GETTABLEKS                       R13 R14 K22 ["Input"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R16 R0 K17 ["Src"]
       66 GETTABLEKS                       R15 R16 K21 ["Controllers"]
       68 GETTABLEKS                       R14 R15 K23 ["ItemsController"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R17 R0 K17 ["Src"]
       75 GETTABLEKS                       R16 R17 K21 ["Controllers"]
       77 GETTABLEKS                       R15 R16 K24 ["PluginController"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R18 R0 K17 ["Src"]
       84 GETTABLEKS                       R17 R18 K25 ["Hooks"]
       86 GETTABLEKS                       R16 R17 K26 ["useItemSelection"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R19 R0 K17 ["Src"]
       93 GETTABLEKS                       R18 R19 K25 ["Hooks"]
       95 GETTABLEKS                       R17 R18 K27 ["useRenamePlaceId"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K5 [require]
      100 GETTABLEKS                       R19 R0 K17 ["Src"]
      102 GETTABLEKS                       R18 R19 K28 ["Types"]
      104 CALL                             R17 1 1
      105 GETTABLEKS                       R19 R3 K29 ["Util"]
      107 GETTABLEKS                       R18 R19 K30 ["LayoutOrderIterator"]
      109 GETTABLEKS                       R20 R3 K29 ["Util"]
      111 GETTABLEKS                       R19 R20 K31 ["GetTextSize"]
      113 GETIMPORT                        R20 K5 [require]
      115 GETTABLEKS                       R23 R0 K17 ["Src"]
      117 GETTABLEKS                       R22 R23 K32 ["Resources"]
      119 GETTABLEKS                       R21 R22 K33 ["PluginStyles"]
      121 CALL                             R20 1 1
      122 GETIMPORT                        R21 K5 [require]
      124 GETTABLEKS                       R24 R0 K17 ["Src"]
      126 GETTABLEKS                       R23 R24 K34 ["Flags"]
      128 GETTABLEKS                       R22 R23 K35 ["getFFlagAmrOrganizationFoundation"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K5 [require]
      133 GETTABLEKS                       R25 R0 K17 ["Src"]
      135 GETTABLEKS                       R24 R25 K34 ["Flags"]
      137 GETTABLEKS                       R23 R24 K36 ["getFFlagAmrUpdatedItemsCache"]
      139 CALL                             R22 1 1
      140 DUPCLOSURE                       R23 K37 [PROTO_0]
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R2
      143 DUPCLOSURE                       R24 K38 [PROTO_5]
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R23
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R10
      164 RETURN                           R24 1
