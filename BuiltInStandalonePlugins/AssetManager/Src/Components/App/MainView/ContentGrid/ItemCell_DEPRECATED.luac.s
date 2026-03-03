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
        2 JUMPIFNOT                        R0 ; [+18]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["Cell"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K1 ["UiZone"]
       10 GETTABLEKS                       R3 R4 K2 ["Browser"]
       12 GETUPVAL                         R4 4
       13 MOVE                             R5 R0
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K3 ["Key"]
       17 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       19 CALL                             R1 5 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 2
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R3 R4 K1 ["UiZone"]
       25 GETTABLEKS                       R2 R3 K2 ["Browser"]
       27 GETUPVAL                         R3 4
       28 GETUPVAL                         R4 5
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K3 ["Key"]
       32 NAMECALL                         R0 R0 K4 ["handleMouse2Click"]
       34 CALL                             R0 5 0
       35 RETURN                           R0 0

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
      178 CAPTURE                          UPVAL U7
      179 CAPTURE                          VAL R0
      180 CAPTURE                          VAL R3
      181 CAPTURE                          UPVAL U6
      182 CAPTURE                          VAL R2
      183 CAPTURE                          REF R9
      184 SETTABLEKS                       R16 R15 K25 ["OnRightClick"]
      186 GETUPVAL                         R18 11
      187 GETTABLEKS                       R17 R18 K26 ["Event"]
      189 GETTABLEKS                       R16 R17 K27 ["MouseButton1Down"]
      191 NEWCLOSURE                       R17 P1
      192 CAPTURE                          VAL R3
      193 CAPTURE                          UPVAL U6
      194 CAPTURE                          VAL R0
      195 SETTABLE                         R17 R15 R16
      196 GETUPVAL                         R18 11
      197 GETTABLEKS                       R17 R18 K26 ["Event"]
      199 GETTABLEKS                       R16 R17 K28 ["MouseButton1Up"]
      201 NEWCLOSURE                       R17 P2
      202 CAPTURE                          VAL R3
      203 CAPTURE                          UPVAL U6
      204 CAPTURE                          VAL R0
      205 SETTABLE                         R17 R15 R16
      206 GETUPVAL                         R17 11
      207 GETTABLEKS                       R16 R17 K29 ["Tag"]
      209 LOADK                            R17 K30 ["ItemCell X-Top X-Center X-ColumnS"]
      210 SETTABLE                         R17 R15 R16
      211 DUPTABLE                         R16 K33 [{"ThumbnailContainer", "CellData"}]
      212 GETUPVAL                         R18 11
      213 GETTABLEKS                       R17 R18 K21 ["createElement"]
      215 GETUPVAL                         R18 12
      216 NEWTABLE                         R19 1 0
      218 GETUPVAL                         R21 11
      219 GETTABLEKS                       R20 R21 K29 ["Tag"]
      221 LOADK                            R22 K34 ["CellThumbnailContainer Secondary X-Corner X-PadS %*"]
      222 MOVE                             R24 R7
      223 NAMECALL                         R22 R22 K35 ["format"]
      225 CALL                             R22 2 1
      226 MOVE                             R21 R22
      227 SETTABLE                         R21 R19 R20
      228 DUPTABLE                         R20 K38 [{"Thumbnail", "PackageLinkIcon"}]
      229 GETUPVAL                         R22 13
      230 CALL                             R22 0 1
      231 JUMPIFNOT                        R22 ; [+15]
      232 GETUPVAL                         R24 6
      233 GETTABLEKS                       R23 R24 K3 ["AssetType"]
      235 GETTABLEKS                       R22 R23 K39 ["Folder"]
      237 JUMPIFNOTEQ                      R10 R22 ; [+9]
      239 GETUPVAL                         R22 11
      240 GETTABLEKS                       R21 R22 K21 ["createElement"]
      242 GETUPVAL                         R22 14
      243 NEWTABLE                         R23 0 0
      245 CALL                             R21 2 1
      246 JUMP                             ; [+10]
      247 GETUPVAL                         R22 11
      248 GETTABLEKS                       R21 R22 K21 ["createElement"]
      250 GETUPVAL                         R22 15
      251 DUPTABLE                         R23 K40 [{"AssetId", "AssetType"}]
      252 SETTABLEKS                       R9 R23 K12 ["AssetId"]
      254 SETTABLEKS                       R10 R23 K3 ["AssetType"]
      256 CALL                             R21 2 1
      257 SETTABLEKS                       R21 R20 K36 ["Thumbnail"]
      259 JUMPIFNOT                        R12 ; [+15]
      260 GETUPVAL                         R22 11
      261 GETTABLEKS                       R21 R22 K21 ["createElement"]
      263 GETUPVAL                         R23 16
      264 GETTABLEKS                       R22 R23 K41 ["Image"]
      266 DUPTABLE                         R23 K44 [{"ZIndex", "tag"}]
      267 LOADN                            R24 2
      268 SETTABLEKS                       R24 R23 K42 ["ZIndex"]
      270 LOADK                            R24 K45 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      271 SETTABLEKS                       R24 R23 K43 ["tag"]
      273 CALL                             R21 2 1
      274 JUMP                             ; [+1]
      275 LOADNIL                          R21
      276 SETTABLEKS                       R21 R20 K37 ["PackageLinkIcon"]
      278 CALL                             R17 3 1
      279 SETTABLEKS                       R17 R16 K31 ["ThumbnailContainer"]
      281 GETUPVAL                         R18 11
      282 GETTABLEKS                       R17 R18 K21 ["createElement"]
      284 GETUPVAL                         R18 12
      285 NEWTABLE                         R19 2 0
      287 NAMECALL                         R20 R1 K46 ["getNextOrder"]
      289 CALL                             R20 1 1
      290 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      292 GETUPVAL                         R21 11
      293 GETTABLEKS                       R20 R21 K29 ["Tag"]
      295 LOADK                            R21 K47 ["am-padding-celldata am-size-full-celldata X-Column X-Left X-Middle"]
      296 SETTABLE                         R21 R19 R20
      297 DUPTABLE                         R20 K50 [{"NameTag", "TypeTag"}]
      298 JUMPIFNOTEQ                      R9 R6 ; [+28]
      300 GETUPVAL                         R22 11
      301 GETTABLEKS                       R21 R22 K21 ["createElement"]
      303 GETUPVAL                         R22 17
      304 NEWTABLE                         R23 8 0
      306 NAMECALL                         R24 R1 K46 ["getNextOrder"]
      308 CALL                             R24 1 1
      309 SETTABLEKS                       R24 R23 K23 ["LayoutOrder"]
      311 SETTABLEKS                       R11 R23 K51 ["Text"]
      313 LOADB                            R24 1
      314 SETTABLEKS                       R24 R23 K52 ["ShouldFocus"]
      316 NEWCLOSURE                       R24 P3
      317 CAPTURE                          VAL R5
      318 SETTABLEKS                       R24 R23 K53 ["OnFocusLost"]
      320 GETUPVAL                         R25 11
      321 GETTABLEKS                       R24 R25 K29 ["Tag"]
      323 LOADK                            R25 K54 ["Left"]
      324 SETTABLE                         R25 R23 R24
      325 CALL                             R21 2 1
      326 JUMP                             ; [+37]
      327 GETUPVAL                         R22 11
      328 GETTABLEKS                       R21 R22 K21 ["createElement"]
      330 GETUPVAL                         R22 18
      331 NEWTABLE                         R23 4 0
      333 NAMECALL                         R24 R1 K46 ["getNextOrder"]
      335 CALL                             R24 1 1
      336 SETTABLEKS                       R24 R23 K23 ["LayoutOrder"]
      338 SETTABLEKS                       R11 R23 K51 ["Text"]
      340 GETIMPORT                        R24 K58 [Enum.TextTruncate.AtEnd]
      342 SETTABLEKS                       R24 R23 K56 ["TextTruncate"]
      344 GETUPVAL                         R25 11
      345 GETTABLEKS                       R24 R25 K29 ["Tag"]
      347 LOADK                            R25 K54 ["Left"]
      348 SETTABLE                         R25 R23 R24
      349 DUPTABLE                         R24 K60 [{"Tooltip"}]
      350 JUMPIFNOT                        R8 ; [+9]
      351 GETUPVAL                         R26 11
      352 GETTABLEKS                       R25 R26 K21 ["createElement"]
      354 GETUPVAL                         R26 19
      355 DUPTABLE                         R27 K61 [{"Text"}]
      356 SETTABLEKS                       R11 R27 K51 ["Text"]
      358 CALL                             R25 2 1
      359 JUMP                             ; [+1]
      360 LOADNIL                          R25
      361 SETTABLEKS                       R25 R24 K59 ["Tooltip"]
      363 CALL                             R21 3 1
      364 SETTABLEKS                       R21 R20 K48 ["NameTag"]
      366 GETUPVAL                         R22 11
      367 GETTABLEKS                       R21 R22 K21 ["createElement"]
      369 GETUPVAL                         R22 18
      370 NEWTABLE                         R23 8 0
      372 GETIMPORT                        R24 K64 [Enum.AutomaticSize.XY]
      374 SETTABLEKS                       R24 R23 K62 ["AutomaticSize"]
      376 NAMECALL                         R24 R1 K46 ["getNextOrder"]
      378 CALL                             R24 1 1
      379 SETTABLEKS                       R24 R23 K23 ["LayoutOrder"]
      381 LOADK                            R26 K3 ["AssetType"]
      382 MOVE                             R27 R10
      383 NAMECALL                         R24 R2 K65 ["getText"]
      385 CALL                             R24 3 1
      386 SETTABLEKS                       R24 R23 K51 ["Text"]
      388 GETIMPORT                        R24 K58 [Enum.TextTruncate.AtEnd]
      390 SETTABLEKS                       R24 R23 K56 ["TextTruncate"]
      392 GETUPVAL                         R25 11
      393 GETTABLEKS                       R24 R25 K29 ["Tag"]
      395 LOADK                            R25 K66 ["Body"]
      396 SETTABLE                         R25 R23 R24
      397 CALL                             R21 2 1
      398 SETTABLEKS                       R21 R20 K49 ["TypeTag"]
      400 CALL                             R17 3 1
      401 SETTABLEKS                       R17 R16 K32 ["CellData"]
      403 CALL                             R13 3 -1
      404 CLOSEUPVALS                      R9
      405 RETURN                           R13 -1

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
