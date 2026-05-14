PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Icon"]
        6 DUPTABLE                         R3 K4 [{"name", "tag"}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K5 ["Enums"]
       10 GETTABLEKS                       R4 R4 K6 ["IconName"]
       12 GETTABLEKS                       R4 R4 K7 ["DiamondSimplified"]
       14 SETTABLEKS                       R4 R3 K2 ["name"]
       16 LOADK                            R4 K8 ["bg-action-subtle"]
       17 SETTABLEKS                       R4 R3 K3 ["tag"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["Browser"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["Cell"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["Key"]
       12 GETUPVAL                         R5 3
       13 NAMECALL                         R0 R0 K4 ["handleMouse2Click"]
       15 CALL                             R0 5 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
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
       17 GETTABLEKS                       R5 R5 K1 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 CALL                             R6 0 1
       22 LOADK                            R7 K2 [""]
       23 LOADB                            R8 0
       24 LOADN                            R9 0
       25 GETUPVAL                         R10 6
       26 GETTABLEKS                       R10 R10 K3 ["AssetType"]
       28 GETTABLEKS                       R10 R10 K4 ["Model"]
       30 LOADK                            R11 K2 [""]
       31 LOADNIL                          R12
       32 NAMECALL                         R13 R4 K5 ["getItemsCache"]
       34 CALL                             R13 1 1
       35 GETTABLEKS                       R14 R0 K6 ["Cell"]
       37 GETTABLEKS                       R15 R0 K7 ["ParentScope"]
       39 GETTABLEKS                       R18 R15 K8 ["Uid"]
       41 MOVE                             R19 R14
       42 GETUPVAL                         R20 6
       43 GETTABLEKS                       R20 R20 K9 ["AssetInfoField"]
       45 GETTABLEKS                       R20 R20 K3 ["AssetType"]
       47 NAMECALL                         R16 R13 K10 ["getItemField"]
       49 CALL                             R16 4 1
       50 MOVE                             R10 R16
       51 GETTABLEKS                       R18 R15 K8 ["Uid"]
       53 MOVE                             R19 R14
       54 GETUPVAL                         R20 6
       55 GETTABLEKS                       R20 R20 K9 ["AssetInfoField"]
       57 GETTABLEKS                       R20 R20 K11 ["DisplayName"]
       59 NAMECALL                         R16 R13 K10 ["getItemField"]
       61 CALL                             R16 4 1
       62 MOVE                             R11 R16
       63 GETTABLEKS                       R18 R15 K8 ["Uid"]
       65 MOVE                             R19 R14
       66 GETUPVAL                         R20 6
       67 GETTABLEKS                       R20 R20 K9 ["AssetInfoField"]
       69 GETTABLEKS                       R20 R20 K12 ["AssetId"]
       71 NAMECALL                         R16 R13 K10 ["getItemField"]
       73 CALL                             R16 4 1
       74 MOVE                             R9 R16
       75 GETTABLEKS                       R18 R15 K8 ["Uid"]
       77 MOVE                             R19 R14
       78 GETUPVAL                         R20 6
       79 GETTABLEKS                       R20 R20 K9 ["AssetInfoField"]
       81 GETTABLEKS                       R20 R20 K13 ["IsPackage"]
       83 NAMECALL                         R16 R13 K10 ["getItemField"]
       85 CALL                             R16 4 1
       86 MOVE                             R12 R16
       87 GETUPVAL                         R16 7
       88 CALL                             R16 0 1
       89 GETTABLEKS                       R18 R0 K6 ["Cell"]
       91 GETTABLE                         R17 R16 R18
       92 JUMPIFNOT                        R17 ; [+1]
       93 LOADK                            R7 K14 ["bg-action-selected"]
       94 GETTABLEKS                       R18 R0 K15 ["Size"]
       96 GETTABLEKS                       R18 R18 K16 ["X"]
       98 GETTABLEKS                       R18 R18 K17 ["Offset"]
      100 GETUPVAL                         R20 8
      101 LOADK                            R22 K19 ["CellTagPadding"]
      102 NAMECALL                         R20 R20 K20 ["GetAttribute"]
      104 CALL                             R20 2 1
      105 MULK                             R19 R20 K18 [2]
      106 SUB                              R17 R18 R19
      107 GETUPVAL                         R18 9
      108 MOVE                             R19 R11
      109 CALL                             R18 1 1
      110 GETTABLEKS                       R18 R18 K16 ["X"]
      112 JUMPIFLT                         R17 R18 ; [+2]
      114 LOADB                            R8 0 +1
      115 LOADB                            R8 1
      116 GETUPVAL                         R18 10
      117 GETUPVAL                         R19 6
      118 GETTABLEKS                       R19 R19 K21 ["MenuContext"]
      120 GETTABLEKS                       R19 R19 K22 ["Asset"]
      122 DUPTABLE                         R20 K25 [{"Path", "Index"}]
      123 GETTABLEKS                       R21 R0 K6 ["Cell"]
      125 SETTABLEKS                       R21 R20 K23 ["Path"]
      127 GETTABLEKS                       R21 R0 K26 ["Key"]
      129 SETTABLEKS                       R21 R20 K24 ["Index"]
      131 CALL                             R18 2 1
      132 GETUPVAL                         R19 11
      133 GETTABLEKS                       R19 R19 K27 ["createElement"]
      135 GETUPVAL                         R20 12
      136 NEWTABLE                         R21 8 0
      138 GETTABLEKS                       R22 R0 K26 ["Key"]
      140 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      142 GETTABLEKS                       R22 R0 K15 ["Size"]
      144 SETTABLEKS                       R22 R21 K15 ["Size"]
      146 GETTABLEKS                       R22 R0 K29 ["Position"]
      148 SETTABLEKS                       R22 R21 K29 ["Position"]
      150 NEWCLOSURE                       R22 P0
      151 CAPTURE                          VAL R3
      152 CAPTURE                          UPVAL U6
      153 CAPTURE                          VAL R0
      154 CAPTURE                          VAL R18
      155 SETTABLEKS                       R22 R21 K30 ["OnRightClick"]
      157 GETUPVAL                         R22 11
      158 GETTABLEKS                       R22 R22 K31 ["Event"]
      160 GETTABLEKS                       R22 R22 K32 ["MouseButton1Down"]
      162 NEWCLOSURE                       R23 P1
      163 CAPTURE                          VAL R3
      164 CAPTURE                          UPVAL U6
      165 CAPTURE                          VAL R0
      166 SETTABLE                         R23 R21 R22
      167 GETUPVAL                         R22 11
      168 GETTABLEKS                       R22 R22 K31 ["Event"]
      170 GETTABLEKS                       R22 R22 K33 ["MouseButton1Up"]
      172 NEWCLOSURE                       R23 P2
      173 CAPTURE                          VAL R3
      174 CAPTURE                          UPVAL U6
      175 CAPTURE                          VAL R0
      176 SETTABLE                         R23 R21 R22
      177 GETUPVAL                         R22 11
      178 GETTABLEKS                       R22 R22 K34 ["Tag"]
      180 LOADK                            R23 K35 ["ItemCell X-Top X-Center X-ColumnS"]
      181 SETTABLE                         R23 R21 R22
      182 DUPTABLE                         R22 K38 [{"ThumbnailContainer", "CellData"}]
      183 GETUPVAL                         R23 11
      184 GETTABLEKS                       R23 R23 K27 ["createElement"]
      186 GETUPVAL                         R24 12
      187 NEWTABLE                         R25 1 0
      189 GETUPVAL                         R26 11
      190 GETTABLEKS                       R26 R26 K34 ["Tag"]
      192 LOADK                            R28 K39 ["CellThumbnailContainer Secondary X-Corner X-PadS %*"]
      193 MOVE                             R30 R7
      194 NAMECALL                         R28 R28 K40 ["format"]
      196 CALL                             R28 2 1
      197 MOVE                             R27 R28
      198 SETTABLE                         R27 R25 R26
      199 DUPTABLE                         R26 K43 [{"Thumbnail", "PackageLinkIcon"}]
      200 GETUPVAL                         R28 13
      201 CALL                             R28 0 1
      202 JUMPIFNOT                        R28 ; [+15]
      203 GETUPVAL                         R28 6
      204 GETTABLEKS                       R28 R28 K3 ["AssetType"]
      206 GETTABLEKS                       R28 R28 K44 ["Folder"]
      208 JUMPIFNOTEQ                      R10 R28 ; [+9]
      210 GETUPVAL                         R27 11
      211 GETTABLEKS                       R27 R27 K27 ["createElement"]
      213 GETUPVAL                         R28 14
      214 NEWTABLE                         R29 0 0
      216 CALL                             R27 2 1
      217 JUMP                             ; [+10]
      218 GETUPVAL                         R27 11
      219 GETTABLEKS                       R27 R27 K27 ["createElement"]
      221 GETUPVAL                         R28 15
      222 DUPTABLE                         R29 K45 [{"AssetId", "AssetType"}]
      223 SETTABLEKS                       R9 R29 K12 ["AssetId"]
      225 SETTABLEKS                       R10 R29 K3 ["AssetType"]
      227 CALL                             R27 2 1
      228 SETTABLEKS                       R27 R26 K41 ["Thumbnail"]
      230 JUMPIFNOT                        R12 ; [+15]
      231 GETUPVAL                         R27 11
      232 GETTABLEKS                       R27 R27 K27 ["createElement"]
      234 GETUPVAL                         R28 16
      235 GETTABLEKS                       R28 R28 K46 ["Image"]
      237 DUPTABLE                         R29 K49 [{"ZIndex", "tag"}]
      238 LOADN                            R30 2
      239 SETTABLEKS                       R30 R29 K47 ["ZIndex"]
      241 LOADK                            R30 K50 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      242 SETTABLEKS                       R30 R29 K48 ["tag"]
      244 CALL                             R27 2 1
      245 JUMP                             ; [+1]
      246 LOADNIL                          R27
      247 SETTABLEKS                       R27 R26 K42 ["PackageLinkIcon"]
      249 CALL                             R23 3 1
      250 SETTABLEKS                       R23 R22 K36 ["ThumbnailContainer"]
      252 GETUPVAL                         R23 11
      253 GETTABLEKS                       R23 R23 K27 ["createElement"]
      255 GETUPVAL                         R24 12
      256 NEWTABLE                         R25 2 0
      258 NAMECALL                         R26 R1 K51 ["getNextOrder"]
      260 CALL                             R26 1 1
      261 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      263 GETUPVAL                         R26 11
      264 GETTABLEKS                       R26 R26 K34 ["Tag"]
      266 LOADK                            R27 K52 ["am-padding-celldata am-size-full-celldata X-Column X-Left X-Middle"]
      267 SETTABLE                         R27 R25 R26
      268 DUPTABLE                         R26 K55 [{"NameTag", "TypeTag"}]
      269 JUMPIFNOTEQ                      R9 R6 ; [+28]
      271 GETUPVAL                         R27 11
      272 GETTABLEKS                       R27 R27 K27 ["createElement"]
      274 GETUPVAL                         R28 17
      275 NEWTABLE                         R29 8 0
      277 NAMECALL                         R30 R1 K51 ["getNextOrder"]
      279 CALL                             R30 1 1
      280 SETTABLEKS                       R30 R29 K28 ["LayoutOrder"]
      282 SETTABLEKS                       R11 R29 K56 ["Text"]
      284 LOADB                            R30 1
      285 SETTABLEKS                       R30 R29 K57 ["ShouldFocus"]
      287 NEWCLOSURE                       R30 P3
      288 CAPTURE                          VAL R5
      289 SETTABLEKS                       R30 R29 K58 ["OnFocusLost"]
      291 GETUPVAL                         R30 11
      292 GETTABLEKS                       R30 R30 K34 ["Tag"]
      294 LOADK                            R31 K59 ["Left"]
      295 SETTABLE                         R31 R29 R30
      296 CALL                             R27 2 1
      297 JUMP                             ; [+37]
      298 GETUPVAL                         R27 11
      299 GETTABLEKS                       R27 R27 K27 ["createElement"]
      301 GETUPVAL                         R28 18
      302 NEWTABLE                         R29 4 0
      304 NAMECALL                         R30 R1 K51 ["getNextOrder"]
      306 CALL                             R30 1 1
      307 SETTABLEKS                       R30 R29 K28 ["LayoutOrder"]
      309 SETTABLEKS                       R11 R29 K56 ["Text"]
      311 GETIMPORT                        R30 K63 [Enum.TextTruncate.AtEnd]
      313 SETTABLEKS                       R30 R29 K61 ["TextTruncate"]
      315 GETUPVAL                         R30 11
      316 GETTABLEKS                       R30 R30 K34 ["Tag"]
      318 LOADK                            R31 K59 ["Left"]
      319 SETTABLE                         R31 R29 R30
      320 DUPTABLE                         R30 K65 [{"Tooltip"}]
      321 JUMPIFNOT                        R8 ; [+9]
      322 GETUPVAL                         R31 11
      323 GETTABLEKS                       R31 R31 K27 ["createElement"]
      325 GETUPVAL                         R32 19
      326 DUPTABLE                         R33 K66 [{"Text"}]
      327 SETTABLEKS                       R11 R33 K56 ["Text"]
      329 CALL                             R31 2 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R31
      332 SETTABLEKS                       R31 R30 K64 ["Tooltip"]
      334 CALL                             R27 3 1
      335 SETTABLEKS                       R27 R26 K53 ["NameTag"]
      337 GETUPVAL                         R27 11
      338 GETTABLEKS                       R27 R27 K27 ["createElement"]
      340 GETUPVAL                         R28 18
      341 NEWTABLE                         R29 8 0
      343 GETIMPORT                        R30 K69 [Enum.AutomaticSize.XY]
      345 SETTABLEKS                       R30 R29 K67 ["AutomaticSize"]
      347 NAMECALL                         R30 R1 K51 ["getNextOrder"]
      349 CALL                             R30 1 1
      350 SETTABLEKS                       R30 R29 K28 ["LayoutOrder"]
      352 LOADK                            R32 K3 ["AssetType"]
      353 MOVE                             R33 R10
      354 NAMECALL                         R30 R2 K70 ["getText"]
      356 CALL                             R30 3 1
      357 SETTABLEKS                       R30 R29 K56 ["Text"]
      359 GETIMPORT                        R30 K63 [Enum.TextTruncate.AtEnd]
      361 SETTABLEKS                       R30 R29 K61 ["TextTruncate"]
      363 GETUPVAL                         R30 11
      364 GETTABLEKS                       R30 R30 K34 ["Tag"]
      366 LOADK                            R31 K71 ["Body"]
      367 SETTABLE                         R31 R29 R30
      368 CALL                             R27 2 1
      369 SETTABLEKS                       R27 R26 K54 ["TypeTag"]
      371 CALL                             R23 3 1
      372 SETTABLEKS                       R23 R22 K37 ["CellData"]
      374 CALL                             R19 3 -1
      375 RETURN                           R19 -1

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
       32 GETTABLEKS                       R6 R3 K12 ["UI"]
       34 GETTABLEKS                       R7 R6 K13 ["Pane"]
       36 GETTABLEKS                       R8 R6 K14 ["TextInput"]
       38 GETTABLEKS                       R9 R6 K15 ["TextLabel"]
       40 GETTABLEKS                       R10 R6 K16 ["Tooltip"]
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R12 R0 K17 ["Src"]
       46 GETTABLEKS                       R12 R12 K18 ["Components"]
       48 GETTABLEKS                       R12 R12 K19 ["Shared"]
       50 GETTABLEKS                       R12 R12 K20 ["AssetThumbnail"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K5 [require]
       55 GETTABLEKS                       R13 R0 K17 ["Src"]
       57 GETTABLEKS                       R13 R13 K21 ["Controllers"]
       59 GETTABLEKS                       R13 R13 K22 ["Input"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R14 R0 K17 ["Src"]
       66 GETTABLEKS                       R14 R14 K21 ["Controllers"]
       68 GETTABLEKS                       R14 R14 K23 ["ItemsController"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R15 R0 K17 ["Src"]
       75 GETTABLEKS                       R15 R15 K21 ["Controllers"]
       77 GETTABLEKS                       R15 R15 K24 ["PluginController"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R16 R0 K17 ["Src"]
       84 GETTABLEKS                       R16 R16 K25 ["Hooks"]
       86 GETTABLEKS                       R16 R16 K26 ["useContextMenu"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R17 R0 K17 ["Src"]
       93 GETTABLEKS                       R17 R17 K25 ["Hooks"]
       95 GETTABLEKS                       R17 R17 K27 ["useItemSelection"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K5 [require]
      100 GETTABLEKS                       R18 R0 K17 ["Src"]
      102 GETTABLEKS                       R18 R18 K25 ["Hooks"]
      104 GETTABLEKS                       R18 R18 K28 ["useRenamePlaceId_DEPRECATED"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K5 [require]
      109 GETTABLEKS                       R19 R0 K17 ["Src"]
      111 GETTABLEKS                       R19 R19 K29 ["Types"]
      113 CALL                             R18 1 1
      114 GETTABLEKS                       R19 R3 K30 ["Util"]
      116 GETTABLEKS                       R19 R19 K31 ["LayoutOrderIterator"]
      118 GETTABLEKS                       R20 R3 K30 ["Util"]
      120 GETTABLEKS                       R20 R20 K32 ["GetTextSize"]
      122 GETIMPORT                        R21 K5 [require]
      124 GETTABLEKS                       R22 R0 K17 ["Src"]
      126 GETTABLEKS                       R22 R22 K33 ["Resources"]
      128 GETTABLEKS                       R22 R22 K34 ["PluginStyles"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K5 [require]
      133 GETTABLEKS                       R23 R0 K17 ["Src"]
      135 GETTABLEKS                       R23 R23 K35 ["Flags"]
      137 GETTABLEKS                       R23 R23 K36 ["getFFlagAmrOrganizationFoundation"]
      139 CALL                             R22 1 1
      140 DUPCLOSURE                       R23 K37 [PROTO_0]
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R2
      143 DUPCLOSURE                       R24 K38 [PROTO_5]
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R23
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R10
      164 RETURN                           R24 1
