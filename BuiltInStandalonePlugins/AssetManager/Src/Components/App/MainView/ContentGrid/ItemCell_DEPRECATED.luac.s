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
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["UiZone"]
        7 GETTABLEKS                       R2 R3 K1 ["Browser"]
        9 LOADNIL                          R3
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K2 ["Cell"]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R5 R6 K3 ["Key"]
       16 GETUPVAL                         R6 4
       17 NAMECALL                         R0 R0 K4 ["handleMouse2Click"]
       19 CALL                             R0 6 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 1
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K0 ["UiZone"]
       25 GETTABLEKS                       R2 R3 K1 ["Browser"]
       27 GETUPVAL                         R3 5
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R4 R5 K2 ["Cell"]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R5 R6 K3 ["Key"]
       34 NAMECALL                         R0 R0 K4 ["handleMouse2Click"]
       36 CALL                             R0 5 0
       37 RETURN                           R0 0

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
       32 NAMECALL                         R13 R4 K5 ["getItemsCache"]
       34 CALL                             R13 1 1
       35 GETTABLEKS                       R14 R0 K6 ["Cell"]
       37 GETTABLEKS                       R15 R0 K7 ["ParentScope"]
       39 GETTABLEKS                       R18 R15 K8 ["Uid"]
       41 MOVE                             R19 R14
       42 GETUPVAL                         R22 6
       43 GETTABLEKS                       R21 R22 K9 ["AssetInfoField"]
       45 GETTABLEKS                       R20 R21 K3 ["AssetType"]
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
       89 GETTABLEKS                       R18 R0 K6 ["Cell"]
       91 GETTABLE                         R17 R16 R18
       92 JUMPIFNOT                        R17 ; [+1]
       93 LOADK                            R7 K14 ["bg-action-selected"]
       94 GETTABLEKS                       R20 R0 K15 ["Size"]
       96 GETTABLEKS                       R19 R20 K16 ["X"]
       98 GETTABLEKS                       R18 R19 K17 ["Offset"]
      100 GETUPVAL                         R20 8
      101 LOADK                            R22 K19 ["CellTagPadding"]
      102 NAMECALL                         R20 R20 K20 ["GetAttribute"]
      104 CALL                             R20 2 1
      105 MULK                             R19 R20 K18 [2]
      106 SUB                              R17 R18 R19
      107 GETUPVAL                         R19 9
      108 MOVE                             R20 R11
      109 CALL                             R19 1 1
      110 GETTABLEKS                       R18 R19 K16 ["X"]
      112 JUMPIFLT                         R17 R18 ; [+2]
      114 LOADB                            R8 0 +1
      115 LOADB                            R8 1
      116 GETUPVAL                         R18 10
      117 GETUPVAL                         R21 6
      118 GETTABLEKS                       R20 R21 K21 ["MenuContext"]
      120 GETTABLEKS                       R19 R20 K22 ["Asset"]
      122 DUPTABLE                         R20 K25 [{"Path", "Index"}]
      123 GETTABLEKS                       R21 R0 K6 ["Cell"]
      125 SETTABLEKS                       R21 R20 K23 ["Path"]
      127 GETTABLEKS                       R21 R0 K26 ["Key"]
      129 SETTABLEKS                       R21 R20 K24 ["Index"]
      131 CALL                             R18 2 1
      132 GETUPVAL                         R20 11
      133 GETTABLEKS                       R19 R20 K27 ["createElement"]
      135 GETUPVAL                         R20 12
      136 NEWTABLE                         R21 8 0
      138 GETTABLEKS                       R22 R0 K26 ["Key"]
      140 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      142 GETTABLEKS                       R22 R0 K15 ["Size"]
      144 SETTABLEKS                       R22 R21 K15 ["Size"]
      146 GETTABLEKS                       R22 R0 K29 ["Position"]
      148 SETTABLEKS                       R22 R21 K29 ["Position"]
      150 NEWCLOSURE                       R22 P0
      151 CAPTURE                          UPVAL U13
      152 CAPTURE                          VAL R3
      153 CAPTURE                          UPVAL U6
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R2
      157 SETTABLEKS                       R22 R21 K30 ["OnRightClick"]
      159 GETUPVAL                         R24 11
      160 GETTABLEKS                       R23 R24 K31 ["Event"]
      162 GETTABLEKS                       R22 R23 K32 ["MouseButton1Down"]
      164 NEWCLOSURE                       R23 P1
      165 CAPTURE                          VAL R3
      166 CAPTURE                          UPVAL U6
      167 CAPTURE                          VAL R0
      168 SETTABLE                         R23 R21 R22
      169 GETUPVAL                         R24 11
      170 GETTABLEKS                       R23 R24 K31 ["Event"]
      172 GETTABLEKS                       R22 R23 K33 ["MouseButton1Up"]
      174 NEWCLOSURE                       R23 P2
      175 CAPTURE                          VAL R3
      176 CAPTURE                          UPVAL U6
      177 CAPTURE                          VAL R0
      178 SETTABLE                         R23 R21 R22
      179 GETUPVAL                         R23 11
      180 GETTABLEKS                       R22 R23 K34 ["Tag"]
      182 LOADK                            R23 K35 ["ItemCell X-Top X-Center X-ColumnS"]
      183 SETTABLE                         R23 R21 R22
      184 DUPTABLE                         R22 K38 [{"ThumbnailContainer", "CellData"}]
      185 GETUPVAL                         R24 11
      186 GETTABLEKS                       R23 R24 K27 ["createElement"]
      188 GETUPVAL                         R24 12
      189 NEWTABLE                         R25 1 0
      191 GETUPVAL                         R27 11
      192 GETTABLEKS                       R26 R27 K34 ["Tag"]
      194 LOADK                            R28 K39 ["CellThumbnailContainer Secondary X-Corner X-PadS %*"]
      195 MOVE                             R30 R7
      196 NAMECALL                         R28 R28 K40 ["format"]
      198 CALL                             R28 2 1
      199 MOVE                             R27 R28
      200 SETTABLE                         R27 R25 R26
      201 DUPTABLE                         R26 K43 [{"Thumbnail", "PackageLinkIcon"}]
      202 GETUPVAL                         R28 14
      203 CALL                             R28 0 1
      204 JUMPIFNOT                        R28 ; [+15]
      205 GETUPVAL                         R30 6
      206 GETTABLEKS                       R29 R30 K3 ["AssetType"]
      208 GETTABLEKS                       R28 R29 K44 ["Folder"]
      210 JUMPIFNOTEQ                      R10 R28 ; [+9]
      212 GETUPVAL                         R28 11
      213 GETTABLEKS                       R27 R28 K27 ["createElement"]
      215 GETUPVAL                         R28 15
      216 NEWTABLE                         R29 0 0
      218 CALL                             R27 2 1
      219 JUMP                             ; [+10]
      220 GETUPVAL                         R28 11
      221 GETTABLEKS                       R27 R28 K27 ["createElement"]
      223 GETUPVAL                         R28 16
      224 DUPTABLE                         R29 K45 [{"AssetId", "AssetType"}]
      225 SETTABLEKS                       R9 R29 K12 ["AssetId"]
      227 SETTABLEKS                       R10 R29 K3 ["AssetType"]
      229 CALL                             R27 2 1
      230 SETTABLEKS                       R27 R26 K41 ["Thumbnail"]
      232 JUMPIFNOT                        R12 ; [+15]
      233 GETUPVAL                         R28 11
      234 GETTABLEKS                       R27 R28 K27 ["createElement"]
      236 GETUPVAL                         R29 17
      237 GETTABLEKS                       R28 R29 K46 ["Image"]
      239 DUPTABLE                         R29 K49 [{"ZIndex", "tag"}]
      240 LOADN                            R30 2
      241 SETTABLEKS                       R30 R29 K47 ["ZIndex"]
      243 LOADK                            R30 K50 ["icon-packageLink anchor-bottom-right am-size-icon bg-over-media-0 radius-small data-testid=package-link-icon"]
      244 SETTABLEKS                       R30 R29 K48 ["tag"]
      246 CALL                             R27 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R27
      249 SETTABLEKS                       R27 R26 K42 ["PackageLinkIcon"]
      251 CALL                             R23 3 1
      252 SETTABLEKS                       R23 R22 K36 ["ThumbnailContainer"]
      254 GETUPVAL                         R24 11
      255 GETTABLEKS                       R23 R24 K27 ["createElement"]
      257 GETUPVAL                         R24 12
      258 NEWTABLE                         R25 2 0
      260 NAMECALL                         R26 R1 K51 ["getNextOrder"]
      262 CALL                             R26 1 1
      263 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      265 GETUPVAL                         R27 11
      266 GETTABLEKS                       R26 R27 K34 ["Tag"]
      268 LOADK                            R27 K52 ["am-padding-celldata am-size-full-celldata X-Column X-Left X-Middle"]
      269 SETTABLE                         R27 R25 R26
      270 DUPTABLE                         R26 K55 [{"NameTag", "TypeTag"}]
      271 JUMPIFNOTEQ                      R9 R6 ; [+28]
      273 GETUPVAL                         R28 11
      274 GETTABLEKS                       R27 R28 K27 ["createElement"]
      276 GETUPVAL                         R28 18
      277 NEWTABLE                         R29 8 0
      279 NAMECALL                         R30 R1 K51 ["getNextOrder"]
      281 CALL                             R30 1 1
      282 SETTABLEKS                       R30 R29 K28 ["LayoutOrder"]
      284 SETTABLEKS                       R11 R29 K56 ["Text"]
      286 LOADB                            R30 1
      287 SETTABLEKS                       R30 R29 K57 ["ShouldFocus"]
      289 NEWCLOSURE                       R30 P3
      290 CAPTURE                          VAL R5
      291 SETTABLEKS                       R30 R29 K58 ["OnFocusLost"]
      293 GETUPVAL                         R31 11
      294 GETTABLEKS                       R30 R31 K34 ["Tag"]
      296 LOADK                            R31 K59 ["Left"]
      297 SETTABLE                         R31 R29 R30
      298 CALL                             R27 2 1
      299 JUMP                             ; [+37]
      300 GETUPVAL                         R28 11
      301 GETTABLEKS                       R27 R28 K27 ["createElement"]
      303 GETUPVAL                         R28 19
      304 NEWTABLE                         R29 4 0
      306 NAMECALL                         R30 R1 K51 ["getNextOrder"]
      308 CALL                             R30 1 1
      309 SETTABLEKS                       R30 R29 K28 ["LayoutOrder"]
      311 SETTABLEKS                       R11 R29 K56 ["Text"]
      313 GETIMPORT                        R30 K63 [Enum.TextTruncate.AtEnd]
      315 SETTABLEKS                       R30 R29 K61 ["TextTruncate"]
      317 GETUPVAL                         R31 11
      318 GETTABLEKS                       R30 R31 K34 ["Tag"]
      320 LOADK                            R31 K59 ["Left"]
      321 SETTABLE                         R31 R29 R30
      322 DUPTABLE                         R30 K65 [{"Tooltip"}]
      323 JUMPIFNOT                        R8 ; [+9]
      324 GETUPVAL                         R32 11
      325 GETTABLEKS                       R31 R32 K27 ["createElement"]
      327 GETUPVAL                         R32 20
      328 DUPTABLE                         R33 K66 [{"Text"}]
      329 SETTABLEKS                       R11 R33 K56 ["Text"]
      331 CALL                             R31 2 1
      332 JUMP                             ; [+1]
      333 LOADNIL                          R31
      334 SETTABLEKS                       R31 R30 K64 ["Tooltip"]
      336 CALL                             R27 3 1
      337 SETTABLEKS                       R27 R26 K53 ["NameTag"]
      339 GETUPVAL                         R28 11
      340 GETTABLEKS                       R27 R28 K27 ["createElement"]
      342 GETUPVAL                         R28 19
      343 NEWTABLE                         R29 8 0
      345 GETIMPORT                        R30 K69 [Enum.AutomaticSize.XY]
      347 SETTABLEKS                       R30 R29 K67 ["AutomaticSize"]
      349 NAMECALL                         R30 R1 K51 ["getNextOrder"]
      351 CALL                             R30 1 1
      352 SETTABLEKS                       R30 R29 K28 ["LayoutOrder"]
      354 LOADK                            R32 K3 ["AssetType"]
      355 MOVE                             R33 R10
      356 NAMECALL                         R30 R2 K70 ["getText"]
      358 CALL                             R30 3 1
      359 SETTABLEKS                       R30 R29 K56 ["Text"]
      361 GETIMPORT                        R30 K63 [Enum.TextTruncate.AtEnd]
      363 SETTABLEKS                       R30 R29 K61 ["TextTruncate"]
      365 GETUPVAL                         R31 11
      366 GETTABLEKS                       R30 R31 K34 ["Tag"]
      368 LOADK                            R31 K71 ["Body"]
      369 SETTABLE                         R31 R29 R30
      370 CALL                             R27 2 1
      371 SETTABLEKS                       R27 R26 K54 ["TypeTag"]
      373 CALL                             R23 3 1
      374 SETTABLEKS                       R23 R22 K37 ["CellData"]
      376 CALL                             R19 3 -1
      377 RETURN                           R19 -1

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
      149 DUPCLOSURE                       R24 K38 [PROTO_0]
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R2
      152 DUPCLOSURE                       R25 K39 [PROTO_5]
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R22
      167 CAPTURE                          VAL R23
      168 CAPTURE                          VAL R24
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R10
      174 RETURN                           R25 1
