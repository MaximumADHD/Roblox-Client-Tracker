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
      159 GETUPVAL                         R14 11
      160 GETTABLEKS                       R13 R14 K21 ["createElement"]
      162 GETUPVAL                         R14 12
      163 NEWTABLE                         R15 8 0
      165 GETTABLEKS                       R16 R0 K22 ["Key"]
      167 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      169 GETTABLEKS                       R16 R0 K15 ["Size"]
      171 SETTABLEKS                       R16 R15 K15 ["Size"]
      173 GETTABLEKS                       R16 R0 K24 ["Position"]
      175 SETTABLEKS                       R16 R15 K24 ["Position"]
      177 NEWCLOSURE                       R16 P0
      178 CAPTURE                          VAL R3
      179 CAPTURE                          UPVAL U6
      180 CAPTURE                          VAL R2
      181 CAPTURE                          REF R9
      182 CAPTURE                          VAL R0
      183 SETTABLEKS                       R16 R15 K25 ["OnRightClick"]
      185 GETUPVAL                         R18 11
      186 GETTABLEKS                       R17 R18 K26 ["Event"]
      188 GETTABLEKS                       R16 R17 K27 ["MouseButton1Down"]
      190 NEWCLOSURE                       R17 P1
      191 CAPTURE                          VAL R3
      192 CAPTURE                          UPVAL U6
      193 CAPTURE                          VAL R0
      194 SETTABLE                         R17 R15 R16
      195 GETUPVAL                         R18 11
      196 GETTABLEKS                       R17 R18 K26 ["Event"]
      198 GETTABLEKS                       R16 R17 K28 ["MouseButton1Up"]
      200 NEWCLOSURE                       R17 P2
      201 CAPTURE                          VAL R3
      202 CAPTURE                          UPVAL U6
      203 CAPTURE                          VAL R0
      204 SETTABLE                         R17 R15 R16
      205 GETUPVAL                         R17 11
      206 GETTABLEKS                       R16 R17 K29 ["Tag"]
      208 LOADK                            R17 K30 ["ItemCell X-Top X-Center X-ColumnS"]
      209 SETTABLE                         R17 R15 R16
      210 DUPTABLE                         R16 K33 [{"ThumbnailContainer", "CellData"}]
      211 GETUPVAL                         R18 11
      212 GETTABLEKS                       R17 R18 K21 ["createElement"]
      214 GETUPVAL                         R18 12
      215 NEWTABLE                         R19 1 0
      217 GETUPVAL                         R21 11
      218 GETTABLEKS                       R20 R21 K29 ["Tag"]
      220 LOADK                            R22 K34 ["CellThumbnailContainer Secondary X-Corner X-PadS %*"]
      221 MOVE                             R24 R7
      222 NAMECALL                         R22 R22 K35 ["format"]
      224 CALL                             R22 2 1
      225 MOVE                             R21 R22
      226 SETTABLE                         R21 R19 R20
      227 DUPTABLE                         R20 K38 [{"Thumbnail", "PackageLinkIcon"}]
      228 GETUPVAL                         R22 13
      229 CALL                             R22 0 1
      230 JUMPIFNOT                        R22 ; [+15]
      231 GETUPVAL                         R24 6
      232 GETTABLEKS                       R23 R24 K3 ["AssetType"]
      234 GETTABLEKS                       R22 R23 K39 ["Folder"]
      236 JUMPIFNOTEQ                      R10 R22 ; [+9]
      238 GETUPVAL                         R22 11
      239 GETTABLEKS                       R21 R22 K21 ["createElement"]
      241 GETUPVAL                         R22 14
      242 NEWTABLE                         R23 0 0
      244 CALL                             R21 2 1
      245 JUMP                             ; [+10]
      246 GETUPVAL                         R22 11
      247 GETTABLEKS                       R21 R22 K21 ["createElement"]
      249 GETUPVAL                         R22 15
      250 DUPTABLE                         R23 K40 [{"AssetId", "AssetType"}]
      251 SETTABLEKS                       R9 R23 K12 ["AssetId"]
      253 SETTABLEKS                       R10 R23 K3 ["AssetType"]
      255 CALL                             R21 2 1
      256 SETTABLEKS                       R21 R20 K36 ["Thumbnail"]
      258 JUMPIFNOT                        R12 ; [+15]
      259 GETUPVAL                         R22 11
      260 GETTABLEKS                       R21 R22 K21 ["createElement"]
      262 GETUPVAL                         R23 16
      263 GETTABLEKS                       R22 R23 K41 ["Image"]
      265 DUPTABLE                         R23 K44 [{"ZIndex", "tag"}]
      266 LOADN                            R24 2
      267 SETTABLEKS                       R24 R23 K42 ["ZIndex"]
      269 LOADK                            R24 K45 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      270 SETTABLEKS                       R24 R23 K43 ["tag"]
      272 CALL                             R21 2 1
      273 JUMP                             ; [+1]
      274 LOADNIL                          R21
      275 SETTABLEKS                       R21 R20 K37 ["PackageLinkIcon"]
      277 CALL                             R17 3 1
      278 SETTABLEKS                       R17 R16 K31 ["ThumbnailContainer"]
      280 GETUPVAL                         R18 11
      281 GETTABLEKS                       R17 R18 K21 ["createElement"]
      283 GETUPVAL                         R18 12
      284 NEWTABLE                         R19 2 0
      286 NAMECALL                         R20 R1 K46 ["getNextOrder"]
      288 CALL                             R20 1 1
      289 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      291 GETUPVAL                         R21 11
      292 GETTABLEKS                       R20 R21 K29 ["Tag"]
      294 LOADK                            R21 K47 ["am-padding-celldata am-size-full-celldata X-Column X-Left X-Middle"]
      295 SETTABLE                         R21 R19 R20
      296 DUPTABLE                         R20 K50 [{"NameTag", "TypeTag"}]
      297 JUMPIFNOTEQ                      R9 R6 ; [+28]
      299 GETUPVAL                         R22 11
      300 GETTABLEKS                       R21 R22 K21 ["createElement"]
      302 GETUPVAL                         R22 17
      303 NEWTABLE                         R23 8 0
      305 NAMECALL                         R24 R1 K46 ["getNextOrder"]
      307 CALL                             R24 1 1
      308 SETTABLEKS                       R24 R23 K23 ["LayoutOrder"]
      310 SETTABLEKS                       R11 R23 K51 ["Text"]
      312 LOADB                            R24 1
      313 SETTABLEKS                       R24 R23 K52 ["ShouldFocus"]
      315 NEWCLOSURE                       R24 P3
      316 CAPTURE                          VAL R5
      317 SETTABLEKS                       R24 R23 K53 ["OnFocusLost"]
      319 GETUPVAL                         R25 11
      320 GETTABLEKS                       R24 R25 K29 ["Tag"]
      322 LOADK                            R25 K54 ["Left"]
      323 SETTABLE                         R25 R23 R24
      324 CALL                             R21 2 1
      325 JUMP                             ; [+37]
      326 GETUPVAL                         R22 11
      327 GETTABLEKS                       R21 R22 K21 ["createElement"]
      329 GETUPVAL                         R22 18
      330 NEWTABLE                         R23 4 0
      332 NAMECALL                         R24 R1 K46 ["getNextOrder"]
      334 CALL                             R24 1 1
      335 SETTABLEKS                       R24 R23 K23 ["LayoutOrder"]
      337 SETTABLEKS                       R11 R23 K51 ["Text"]
      339 GETIMPORT                        R24 K58 [Enum.TextTruncate.AtEnd]
      341 SETTABLEKS                       R24 R23 K56 ["TextTruncate"]
      343 GETUPVAL                         R25 11
      344 GETTABLEKS                       R24 R25 K29 ["Tag"]
      346 LOADK                            R25 K54 ["Left"]
      347 SETTABLE                         R25 R23 R24
      348 DUPTABLE                         R24 K60 [{"Tooltip"}]
      349 JUMPIFNOT                        R8 ; [+9]
      350 GETUPVAL                         R26 11
      351 GETTABLEKS                       R25 R26 K21 ["createElement"]
      353 GETUPVAL                         R26 19
      354 DUPTABLE                         R27 K61 [{"Text"}]
      355 SETTABLEKS                       R11 R27 K51 ["Text"]
      357 CALL                             R25 2 1
      358 JUMP                             ; [+1]
      359 LOADNIL                          R25
      360 SETTABLEKS                       R25 R24 K59 ["Tooltip"]
      362 CALL                             R21 3 1
      363 SETTABLEKS                       R21 R20 K48 ["NameTag"]
      365 GETUPVAL                         R22 11
      366 GETTABLEKS                       R21 R22 K21 ["createElement"]
      368 GETUPVAL                         R22 18
      369 NEWTABLE                         R23 8 0
      371 GETIMPORT                        R24 K64 [Enum.AutomaticSize.XY]
      373 SETTABLEKS                       R24 R23 K62 ["AutomaticSize"]
      375 NAMECALL                         R24 R1 K46 ["getNextOrder"]
      377 CALL                             R24 1 1
      378 SETTABLEKS                       R24 R23 K23 ["LayoutOrder"]
      380 LOADK                            R26 K3 ["AssetType"]
      381 MOVE                             R27 R10
      382 NAMECALL                         R24 R2 K65 ["getText"]
      384 CALL                             R24 3 1
      385 SETTABLEKS                       R24 R23 K51 ["Text"]
      387 GETIMPORT                        R24 K58 [Enum.TextTruncate.AtEnd]
      389 SETTABLEKS                       R24 R23 K56 ["TextTruncate"]
      391 GETUPVAL                         R25 11
      392 GETTABLEKS                       R24 R25 K29 ["Tag"]
      394 LOADK                            R25 K66 ["Body"]
      395 SETTABLE                         R25 R23 R24
      396 CALL                             R21 2 1
      397 SETTABLEKS                       R21 R20 K49 ["TypeTag"]
      399 CALL                             R17 3 1
      400 SETTABLEKS                       R17 R16 K32 ["CellData"]
      402 CALL                             R13 3 -1
      403 CLOSEUPVALS                      R9
      404 RETURN                           R13 -1

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
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R23
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R10
      164 RETURN                           R24 1
