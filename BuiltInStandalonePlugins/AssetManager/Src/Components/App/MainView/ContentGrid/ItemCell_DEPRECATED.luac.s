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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+37]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["Cell"]
        6 GETUPVAL                         R1 2
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+16]
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R5 4
       11 GETTABLEKS                       R4 R5 K1 ["UiZone"]
       13 GETTABLEKS                       R3 R4 K2 ["Browser"]
       15 LOADNIL                          R4
       16 MOVE                             R5 R0
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K3 ["Key"]
       20 GETUPVAL                         R7 5
       21 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       23 CALL                             R1 6 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 3
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R4 R5 K1 ["UiZone"]
       29 GETTABLEKS                       R3 R4 K2 ["Browser"]
       31 GETUPVAL                         R4 6
       32 MOVE                             R5 R0
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R6 R7 K3 ["Key"]
       36 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       38 CALL                             R1 5 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R0 2
       41 CALL                             R0 0 1
       42 JUMPIFNOT                        R0 ; [+16]
       43 GETUPVAL                         R0 3
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R3 R4 K1 ["UiZone"]
       47 GETTABLEKS                       R2 R3 K2 ["Browser"]
       49 LOADNIL                          R3
       50 GETUPVAL                         R4 7
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R5 R6 K3 ["Key"]
       54 GETUPVAL                         R6 5
       55 NAMECALL                         R0 R0 K4 ["handleMouse2Click"]
       57 CALL                             R0 6 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R0 3
       60 GETUPVAL                         R4 4
       61 GETTABLEKS                       R3 R4 K1 ["UiZone"]
       63 GETTABLEKS                       R2 R3 K2 ["Browser"]
       65 GETUPVAL                         R3 6
       66 GETUPVAL                         R4 7
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R5 R6 K3 ["Key"]
       70 NAMECALL                         R0 R0 K4 ["handleMouse2Click"]
       72 CALL                             R0 5 0
       73 RETURN                           R0 0

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
       34 JUMPIFNOT                        R13 ; [+85]
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
       92 GETTABLEKS                       R18 R0 K6 ["Cell"]
       94 GETTABLE                         R17 R16 R18
       95 JUMPIFNOT                        R17 ; [+1]
       96 LOADK                            R7 K14 ["bg-action-selected"]
       97 GETTABLEKS                       R20 R0 K15 ["Size"]
       99 GETTABLEKS                       R19 R20 K16 ["X"]
      101 GETTABLEKS                       R18 R19 K17 ["Offset"]
      103 GETUPVAL                         R20 9
      104 LOADK                            R22 K19 ["CellTagPadding"]
      105 NAMECALL                         R20 R20 K20 ["GetAttribute"]
      107 CALL                             R20 2 1
      108 MULK                             R19 R20 K18 [2]
      109 SUB                              R17 R18 R19
      110 GETUPVAL                         R19 10
      111 MOVE                             R20 R11
      112 CALL                             R19 1 1
      113 GETTABLEKS                       R18 R19 K16 ["X"]
      115 JUMPIFLT                         R17 R18 ; [+2]
      117 LOADB                            R8 0 +1
      118 LOADB                            R8 1
      119 JUMP                             ; [+39]
      120 GETTABLEKS                       R13 R0 K6 ["Cell"]
      122 GETUPVAL                         R14 8
      123 CALL                             R14 0 1
      124 GETTABLEKS                       R16 R13 K12 ["AssetId"]
      126 GETTABLE                         R15 R14 R16
      127 JUMPIFNOT                        R15 ; [+1]
      128 LOADK                            R7 K14 ["bg-action-selected"]
      129 GETUPVAL                         R16 10
      130 GETTABLEKS                       R17 R13 K11 ["DisplayName"]
      132 CALL                             R16 1 1
      133 GETTABLEKS                       R15 R16 K16 ["X"]
      135 GETTABLEKS                       R18 R0 K15 ["Size"]
      137 GETTABLEKS                       R17 R18 K16 ["X"]
      139 GETTABLEKS                       R16 R17 K17 ["Offset"]
      141 GETUPVAL                         R19 9
      142 LOADK                            R21 K19 ["CellTagPadding"]
      143 NAMECALL                         R19 R19 K20 ["GetAttribute"]
      145 CALL                             R19 2 1
      146 MULK                             R18 R19 K18 [2]
      147 SUB                              R17 R16 R18
      148 JUMPIFNOTLT                      R17 R15 ; [+2]
      150 LOADB                            R8 1
      151 GETTABLEKS                       R9 R13 K12 ["AssetId"]
      153 GETTABLEKS                       R10 R13 K3 ["AssetType"]
      155 GETTABLEKS                       R11 R13 K11 ["DisplayName"]
      157 GETTABLEKS                       R12 R13 K13 ["IsPackage"]
      159 GETUPVAL                         R13 11
      160 GETUPVAL                         R16 6
      161 GETTABLEKS                       R15 R16 K21 ["MenuContext"]
      163 GETTABLEKS                       R14 R15 K22 ["Asset"]
      165 DUPTABLE                         R15 K25 [{"Path", "Index"}]
      166 GETUPVAL                         R17 7
      167 CALL                             R17 0 1
      168 JUMPIFNOT                        R17 ; [+3]
      169 GETTABLEKS                       R16 R0 K6 ["Cell"]
      171 JUMP                             ; [+1]
      172 MOVE                             R16 R9
      173 SETTABLEKS                       R16 R15 K23 ["Path"]
      175 GETTABLEKS                       R16 R0 K26 ["Key"]
      177 SETTABLEKS                       R16 R15 K24 ["Index"]
      179 CALL                             R13 2 1
      180 GETUPVAL                         R15 12
      181 GETTABLEKS                       R14 R15 K27 ["createElement"]
      183 GETUPVAL                         R15 13
      184 NEWTABLE                         R16 8 0
      186 GETTABLEKS                       R17 R0 K26 ["Key"]
      188 SETTABLEKS                       R17 R16 K28 ["LayoutOrder"]
      190 GETTABLEKS                       R17 R0 K15 ["Size"]
      192 SETTABLEKS                       R17 R16 K15 ["Size"]
      194 GETTABLEKS                       R17 R0 K29 ["Position"]
      196 SETTABLEKS                       R17 R16 K29 ["Position"]
      198 NEWCLOSURE                       R17 P0
      199 CAPTURE                          UPVAL U7
      200 CAPTURE                          VAL R0
      201 CAPTURE                          UPVAL U14
      202 CAPTURE                          VAL R3
      203 CAPTURE                          UPVAL U6
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R2
      206 CAPTURE                          REF R9
      207 SETTABLEKS                       R17 R16 K30 ["OnRightClick"]
      209 GETUPVAL                         R19 12
      210 GETTABLEKS                       R18 R19 K31 ["Event"]
      212 GETTABLEKS                       R17 R18 K32 ["MouseButton1Down"]
      214 NEWCLOSURE                       R18 P1
      215 CAPTURE                          VAL R3
      216 CAPTURE                          UPVAL U6
      217 CAPTURE                          VAL R0
      218 SETTABLE                         R18 R16 R17
      219 GETUPVAL                         R19 12
      220 GETTABLEKS                       R18 R19 K31 ["Event"]
      222 GETTABLEKS                       R17 R18 K33 ["MouseButton1Up"]
      224 NEWCLOSURE                       R18 P2
      225 CAPTURE                          VAL R3
      226 CAPTURE                          UPVAL U6
      227 CAPTURE                          VAL R0
      228 SETTABLE                         R18 R16 R17
      229 GETUPVAL                         R18 12
      230 GETTABLEKS                       R17 R18 K34 ["Tag"]
      232 LOADK                            R18 K35 ["ItemCell X-Top X-Center X-ColumnS"]
      233 SETTABLE                         R18 R16 R17
      234 DUPTABLE                         R17 K38 [{"ThumbnailContainer", "CellData"}]
      235 GETUPVAL                         R19 12
      236 GETTABLEKS                       R18 R19 K27 ["createElement"]
      238 GETUPVAL                         R19 13
      239 NEWTABLE                         R20 1 0
      241 GETUPVAL                         R22 12
      242 GETTABLEKS                       R21 R22 K34 ["Tag"]
      244 LOADK                            R23 K39 ["CellThumbnailContainer Secondary X-Corner X-PadS %*"]
      245 MOVE                             R25 R7
      246 NAMECALL                         R23 R23 K40 ["format"]
      248 CALL                             R23 2 1
      249 MOVE                             R22 R23
      250 SETTABLE                         R22 R20 R21
      251 DUPTABLE                         R21 K43 [{"Thumbnail", "PackageLinkIcon"}]
      252 GETUPVAL                         R23 15
      253 CALL                             R23 0 1
      254 JUMPIFNOT                        R23 ; [+15]
      255 GETUPVAL                         R25 6
      256 GETTABLEKS                       R24 R25 K3 ["AssetType"]
      258 GETTABLEKS                       R23 R24 K44 ["Folder"]
      260 JUMPIFNOTEQ                      R10 R23 ; [+9]
      262 GETUPVAL                         R23 12
      263 GETTABLEKS                       R22 R23 K27 ["createElement"]
      265 GETUPVAL                         R23 16
      266 NEWTABLE                         R24 0 0
      268 CALL                             R22 2 1
      269 JUMP                             ; [+10]
      270 GETUPVAL                         R23 12
      271 GETTABLEKS                       R22 R23 K27 ["createElement"]
      273 GETUPVAL                         R23 17
      274 DUPTABLE                         R24 K45 [{"AssetId", "AssetType"}]
      275 SETTABLEKS                       R9 R24 K12 ["AssetId"]
      277 SETTABLEKS                       R10 R24 K3 ["AssetType"]
      279 CALL                             R22 2 1
      280 SETTABLEKS                       R22 R21 K41 ["Thumbnail"]
      282 JUMPIFNOT                        R12 ; [+15]
      283 GETUPVAL                         R23 12
      284 GETTABLEKS                       R22 R23 K27 ["createElement"]
      286 GETUPVAL                         R24 18
      287 GETTABLEKS                       R23 R24 K46 ["Image"]
      289 DUPTABLE                         R24 K49 [{"ZIndex", "tag"}]
      290 LOADN                            R25 2
      291 SETTABLEKS                       R25 R24 K47 ["ZIndex"]
      293 LOADK                            R25 K50 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      294 SETTABLEKS                       R25 R24 K48 ["tag"]
      296 CALL                             R22 2 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R22
      299 SETTABLEKS                       R22 R21 K42 ["PackageLinkIcon"]
      301 CALL                             R18 3 1
      302 SETTABLEKS                       R18 R17 K36 ["ThumbnailContainer"]
      304 GETUPVAL                         R19 12
      305 GETTABLEKS                       R18 R19 K27 ["createElement"]
      307 GETUPVAL                         R19 13
      308 NEWTABLE                         R20 2 0
      310 NAMECALL                         R21 R1 K51 ["getNextOrder"]
      312 CALL                             R21 1 1
      313 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      315 GETUPVAL                         R22 12
      316 GETTABLEKS                       R21 R22 K34 ["Tag"]
      318 LOADK                            R22 K52 ["am-padding-celldata am-size-full-celldata X-Column X-Left X-Middle"]
      319 SETTABLE                         R22 R20 R21
      320 DUPTABLE                         R21 K55 [{"NameTag", "TypeTag"}]
      321 JUMPIFNOTEQ                      R9 R6 ; [+28]
      323 GETUPVAL                         R23 12
      324 GETTABLEKS                       R22 R23 K27 ["createElement"]
      326 GETUPVAL                         R23 19
      327 NEWTABLE                         R24 8 0
      329 NAMECALL                         R25 R1 K51 ["getNextOrder"]
      331 CALL                             R25 1 1
      332 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      334 SETTABLEKS                       R11 R24 K56 ["Text"]
      336 LOADB                            R25 1
      337 SETTABLEKS                       R25 R24 K57 ["ShouldFocus"]
      339 NEWCLOSURE                       R25 P3
      340 CAPTURE                          VAL R5
      341 SETTABLEKS                       R25 R24 K58 ["OnFocusLost"]
      343 GETUPVAL                         R26 12
      344 GETTABLEKS                       R25 R26 K34 ["Tag"]
      346 LOADK                            R26 K59 ["Left"]
      347 SETTABLE                         R26 R24 R25
      348 CALL                             R22 2 1
      349 JUMP                             ; [+37]
      350 GETUPVAL                         R23 12
      351 GETTABLEKS                       R22 R23 K27 ["createElement"]
      353 GETUPVAL                         R23 20
      354 NEWTABLE                         R24 4 0
      356 NAMECALL                         R25 R1 K51 ["getNextOrder"]
      358 CALL                             R25 1 1
      359 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      361 SETTABLEKS                       R11 R24 K56 ["Text"]
      363 GETIMPORT                        R25 K63 [Enum.TextTruncate.AtEnd]
      365 SETTABLEKS                       R25 R24 K61 ["TextTruncate"]
      367 GETUPVAL                         R26 12
      368 GETTABLEKS                       R25 R26 K34 ["Tag"]
      370 LOADK                            R26 K59 ["Left"]
      371 SETTABLE                         R26 R24 R25
      372 DUPTABLE                         R25 K65 [{"Tooltip"}]
      373 JUMPIFNOT                        R8 ; [+9]
      374 GETUPVAL                         R27 12
      375 GETTABLEKS                       R26 R27 K27 ["createElement"]
      377 GETUPVAL                         R27 21
      378 DUPTABLE                         R28 K66 [{"Text"}]
      379 SETTABLEKS                       R11 R28 K56 ["Text"]
      381 CALL                             R26 2 1
      382 JUMP                             ; [+1]
      383 LOADNIL                          R26
      384 SETTABLEKS                       R26 R25 K64 ["Tooltip"]
      386 CALL                             R22 3 1
      387 SETTABLEKS                       R22 R21 K53 ["NameTag"]
      389 GETUPVAL                         R23 12
      390 GETTABLEKS                       R22 R23 K27 ["createElement"]
      392 GETUPVAL                         R23 20
      393 NEWTABLE                         R24 8 0
      395 GETIMPORT                        R25 K69 [Enum.AutomaticSize.XY]
      397 SETTABLEKS                       R25 R24 K67 ["AutomaticSize"]
      399 NAMECALL                         R25 R1 K51 ["getNextOrder"]
      401 CALL                             R25 1 1
      402 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      404 LOADK                            R27 K3 ["AssetType"]
      405 MOVE                             R28 R10
      406 NAMECALL                         R25 R2 K70 ["getText"]
      408 CALL                             R25 3 1
      409 SETTABLEKS                       R25 R24 K56 ["Text"]
      411 GETIMPORT                        R25 K63 [Enum.TextTruncate.AtEnd]
      413 SETTABLEKS                       R25 R24 K61 ["TextTruncate"]
      415 GETUPVAL                         R26 12
      416 GETTABLEKS                       R25 R26 K34 ["Tag"]
      418 LOADK                            R26 K71 ["Body"]
      419 SETTABLE                         R26 R24 R25
      420 CALL                             R22 2 1
      421 SETTABLEKS                       R22 R21 K54 ["TypeTag"]
      423 CALL                             R18 3 1
      424 SETTABLEKS                       R18 R17 K37 ["CellData"]
      426 CALL                             R14 3 -1
      427 CLOSEUPVALS                      R9
      428 RETURN                           R14 -1

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
       86 GETTABLEKS                       R16 R17 K26 ["useContextMenu"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R19 R0 K17 ["Src"]
       93 GETTABLEKS                       R18 R19 K25 ["Hooks"]
       95 GETTABLEKS                       R17 R18 K27 ["useItemSelection"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K5 [require]
      100 GETTABLEKS                       R20 R0 K17 ["Src"]
      102 GETTABLEKS                       R19 R20 K25 ["Hooks"]
      104 GETTABLEKS                       R18 R19 K28 ["useRenamePlaceId_DEPRECATED"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K5 [require]
      109 GETTABLEKS                       R20 R0 K17 ["Src"]
      111 GETTABLEKS                       R19 R20 K29 ["Types"]
      113 CALL                             R18 1 1
      114 GETTABLEKS                       R20 R3 K30 ["Util"]
      116 GETTABLEKS                       R19 R20 K31 ["LayoutOrderIterator"]
      118 GETTABLEKS                       R21 R3 K30 ["Util"]
      120 GETTABLEKS                       R20 R21 K32 ["GetTextSize"]
      122 GETIMPORT                        R21 K5 [require]
      124 GETTABLEKS                       R24 R0 K17 ["Src"]
      126 GETTABLEKS                       R23 R24 K33 ["Resources"]
      128 GETTABLEKS                       R22 R23 K34 ["PluginStyles"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K5 [require]
      133 GETTABLEKS                       R25 R0 K17 ["Src"]
      135 GETTABLEKS                       R24 R25 K35 ["Flags"]
      137 GETTABLEKS                       R23 R24 K36 ["getFFlagAmrContextMenuRefactor"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K5 [require]
      142 GETTABLEKS                       R26 R0 K17 ["Src"]
      144 GETTABLEKS                       R25 R26 K35 ["Flags"]
      146 GETTABLEKS                       R24 R25 K37 ["getFFlagAmrOrganizationFoundation"]
      148 CALL                             R23 1 1
      149 GETIMPORT                        R24 K5 [require]
      151 GETTABLEKS                       R27 R0 K17 ["Src"]
      153 GETTABLEKS                       R26 R27 K35 ["Flags"]
      155 GETTABLEKS                       R25 R26 K38 ["getFFlagAmrUpdatedItemsCache"]
      157 CALL                             R24 1 1
      158 DUPCLOSURE                       R25 K39 [PROTO_0]
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R2
      161 DUPCLOSURE                       R26 K40 [PROTO_5]
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R24
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R21
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R22
      177 CAPTURE                          VAL R23
      178 CAPTURE                          VAL R25
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R10
      184 RETURN                           R26 1
