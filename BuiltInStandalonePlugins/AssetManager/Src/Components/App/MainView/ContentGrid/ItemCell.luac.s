PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Text"]
        6 DUPTABLE                         R3 K12 [{["LayoutOrder"], ["Text"], ["TextTruncate"], ["TextWrapped"], ["AutomaticSize"], ["ref"], ["sizeConstraint"], ["fontStyle"], ["tag"], ["testId"] = "grid-asset-name"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 GETTABLEKS                       R4 R0 K13 ["Name"]
       13 SETTABLEKS                       R4 R3 K1 ["Text"]
       15 GETIMPORT                        R4 K16 [Enum.TextTruncate.AtEnd]
       17 SETTABLEKS                       R4 R3 K3 ["TextTruncate"]
       19 GETUPVAL                         R4 2
       20 CALL                             R4 0 1
       21 SETTABLEKS                       R4 R3 K4 ["TextWrapped"]
       23 GETUPVAL                         R5 2
       24 CALL                             R5 0 1
       25 JUMPIFNOT                        R5 ; [+3]
       26 GETIMPORT                        R4 K18 [Enum.AutomaticSize.Y]
       28 JUMP                             ; [+2]
       29 GETIMPORT                        R4 K20 [Enum.AutomaticSize.XY]
       31 SETTABLEKS                       R4 R3 K5 ["AutomaticSize"]
       33 GETTABLEKS                       R4 R0 K21 ["SetAnchorInstance"]
       35 SETTABLEKS                       R4 R3 K6 ["ref"]
       37 GETUPVAL                         R5 2
       38 CALL                             R5 0 1
       39 JUMPIFNOT                        R5 ; [+10]
       40 DUPTABLE                         R4 K23 [{"MaxSize"}]
       41 GETIMPORT                        R5 K26 [Vector2.new]
       43 LOADK                            R6 K27 [Infinity]
       44 GETTABLEKS                       R7 R0 K28 ["NameLabelHeight"]
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K22 ["MaxSize"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R3 K7 ["sizeConstraint"]
       53 DUPTABLE                         R4 K33 [{["Font"], ["FontSize"], ["LineHeight"] = 1}]
       54 GETTABLEKS                       R5 R0 K29 ["Font"]
       56 SETTABLEKS                       R5 R4 K29 ["Font"]
       58 GETTABLEKS                       R5 R0 K30 ["FontSize"]
       60 SETTABLEKS                       R5 R4 K30 ["FontSize"]
       62 SETTABLEKS                       R4 R3 K8 ["fontStyle"]
       64 GETUPVAL                         R5 2
       65 CALL                             R5 0 1
       66 JUMPIFNOT                        R5 ; [+2]
       67 LOADK                            R4 K34 ["size-full-0 auto-y text-align-x-left text-align-y-top text-wrap text-truncate-end content-emphasis"]
       68 JUMP                             ; [+1]
       69 LOADK                            R4 K35 ["size-0 auto-xy text-body-small text-truncate-end content-emphasis"]
       70 SETTABLEKS                       R4 R3 K9 ["tag"]
       72 CALL                             R1 2 -1
       73 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Tooltip"]
        6 DUPTABLE                         R3 K5 [{"LayoutOrder", "title", "side"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 GETTABLEKS                       R4 R0 K6 ["Name"]
       13 SETTABLEKS                       R4 R3 K3 ["title"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K7 ["Enums"]
       18 GETTABLEKS                       R4 R4 K8 ["PopoverSide"]
       20 GETTABLEKS                       R4 R4 K9 ["Bottom"]
       22 SETTABLEKS                       R4 R3 K4 ["side"]
       24 DUPTABLE                         R4 K11 [{"NameContainer"}]
       25 GETUPVAL                         R6 2
       26 CALL                             R6 0 1
       27 JUMPIFNOT                        R6 ; [+43]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["createElement"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K12 ["View"]
       34 DUPTABLE                         R7 K18 [{["Size"], ["tag"] = "auto-y", ["testId"] = "grid-asset-name-container"}]
       35 GETIMPORT                        R8 K21 [UDim2.fromOffset]
       37 GETTABLEKS                       R9 R0 K22 ["TextHorizontalSize"]
       39 LOADN                            R10 0
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K13 ["Size"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K0 ["createElement"]
       46 GETUPVAL                         R9 3
       47 DUPTABLE                         R10 K27 [{"Name", "NameLabelHeight", "Font", "FontSize", "SetAnchorInstance"}]
       48 GETTABLEKS                       R11 R0 K6 ["Name"]
       50 SETTABLEKS                       R11 R10 K6 ["Name"]
       52 GETTABLEKS                       R11 R0 K23 ["NameLabelHeight"]
       54 SETTABLEKS                       R11 R10 K23 ["NameLabelHeight"]
       56 GETTABLEKS                       R11 R0 K24 ["Font"]
       58 SETTABLEKS                       R11 R10 K24 ["Font"]
       60 GETTABLEKS                       R11 R0 K25 ["FontSize"]
       62 SETTABLEKS                       R11 R10 K25 ["FontSize"]
       64 GETTABLEKS                       R11 R0 K26 ["SetAnchorInstance"]
       66 SETTABLEKS                       R11 R10 K26 ["SetAnchorInstance"]
       68 CALL                             R8 2 -1
       69 CALL                             R5 -1 1
       70 JUMP                             ; [+26]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R5 R5 K0 ["createElement"]
       74 GETUPVAL                         R6 3
       75 DUPTABLE                         R7 K27 [{"Name", "NameLabelHeight", "Font", "FontSize", "SetAnchorInstance"}]
       76 GETTABLEKS                       R8 R0 K6 ["Name"]
       78 SETTABLEKS                       R8 R7 K6 ["Name"]
       80 GETTABLEKS                       R8 R0 K23 ["NameLabelHeight"]
       82 SETTABLEKS                       R8 R7 K23 ["NameLabelHeight"]
       84 GETTABLEKS                       R8 R0 K24 ["Font"]
       86 SETTABLEKS                       R8 R7 K24 ["Font"]
       88 GETTABLEKS                       R8 R0 K25 ["FontSize"]
       90 SETTABLEKS                       R8 R7 K25 ["FontSize"]
       92 GETTABLEKS                       R8 R0 K26 ["SetAnchorInstance"]
       94 SETTABLEKS                       R8 R7 K26 ["SetAnchorInstance"]
       96 CALL                             R5 2 1
       97 SETTABLEKS                       R5 R4 K10 ["NameContainer"]
       99 CALL                             R1 3 -1
      100 RETURN                           R1 -1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["Hooks"]
       11 GETTABLEKS                       R3 R3 K3 ["useTokens"]
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K1 ["use"]
       17 CALL                             R4 0 1
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R5 K1 ["use"]
       21 CALL                             R5 0 1
       22 GETUPVAL                         R6 5
       23 GETTABLEKS                       R7 R0 K4 ["Cell"]
       25 CALL                             R6 1 1
       26 LOADN                            R7 0
       27 GETUPVAL                         R8 6
       28 GETTABLEKS                       R8 R8 K5 ["AssetType"]
       30 GETTABLEKS                       R8 R8 K6 ["Model"]
       32 LOADK                            R9 K7 [""]
       33 LOADNIL                          R10
       34 GETUPVAL                         R11 6
       35 GETTABLEKS                       R11 R11 K8 ["ModerationStatus"]
       37 GETTABLEKS                       R11 R11 K9 ["Placeholder"]
       39 GETUPVAL                         R12 6
       40 GETTABLEKS                       R12 R12 K10 ["DraftStatus"]
       42 GETTABLEKS                       R12 R12 K11 ["Unspecified"]
       44 NAMECALL                         R13 R5 K12 ["getItemsCache"]
       46 CALL                             R13 1 1
       47 GETTABLEKS                       R14 R0 K4 ["Cell"]
       49 GETUPVAL                         R15 7
       50 CALL                             R15 0 1
       51 LOADK                            R16 K7 [""]
       52 GETTABLEKS                       R18 R0 K4 ["Cell"]
       54 GETTABLE                         R17 R15 R18
       55 JUMPIFNOT                        R17 ; [+2]
       56 LOADK                            R16 K13 ["bg-shift-200"]
       57 JUMP                             ; [+1]
       58 LOADK                            R16 K14 ["bg-paper"]
       59 GETTABLEKS                       R18 R0 K15 ["Size"]
       61 GETTABLEKS                       R18 R18 K16 ["X"]
       63 GETTABLEKS                       R18 R18 K17 ["Offset"]
       65 GETUPVAL                         R20 8
       66 LOADK                            R22 K19 ["CellTagPadding"]
       67 NAMECALL                         R20 R20 K20 ["GetAttribute"]
       69 CALL                             R20 2 1
       70 MULK                             R19 R20 K18 [2]
       71 SUB                              R17 R18 R19
       72 GETUPVAL                         R18 9
       73 GETTABLEKS                       R18 R18 K21 ["useRef"]
       75 LOADNIL                          R19
       76 CALL                             R18 1 1
       77 GETUPVAL                         R19 9
       78 GETTABLEKS                       R19 R19 K21 ["useRef"]
       80 LOADNIL                          R20
       81 CALL                             R19 1 1
       82 GETUPVAL                         R20 9
       83 GETTABLEKS                       R20 R20 K22 ["useState"]
       85 LOADNIL                          R21
       86 CALL                             R20 1 2
       87 GETUPVAL                         R22 10
       88 MOVE                             R23 R18
       89 CALL                             R22 1 1
       90 GETUPVAL                         R23 10
       91 MOVE                             R24 R19
       92 CALL                             R23 1 1
       93 GETUPVAL                         R24 11
       94 MOVE                             R25 R22
       95 GETTABLEKS                       R26 R0 K4 ["Cell"]
       97 CALL                             R24 2 1
       98 GETUPVAL                         R25 12
       99 GETUPVAL                         R26 6
      100 GETTABLEKS                       R26 R26 K23 ["MenuContext"]
      102 GETTABLEKS                       R26 R26 K24 ["Asset"]
      104 DUPTABLE                         R27 K27 [{"Path", "Index"}]
      105 GETTABLEKS                       R28 R0 K4 ["Cell"]
      107 SETTABLEKS                       R28 R27 K25 ["Path"]
      109 GETTABLEKS                       R28 R0 K28 ["Key"]
      111 SETTABLEKS                       R28 R27 K26 ["Index"]
      113 CALL                             R25 2 1
      114 GETTABLEKS                       R26 R0 K29 ["ParentScope"]
      116 GETTABLEKS                       R29 R26 K30 ["Uid"]
      118 MOVE                             R30 R14
      119 GETUPVAL                         R31 6
      120 GETTABLEKS                       R31 R31 K31 ["AssetInfoField"]
      122 GETTABLEKS                       R31 R31 K5 ["AssetType"]
      124 NAMECALL                         R27 R13 K32 ["getItemField"]
      126 CALL                             R27 4 1
      127 MOVE                             R8 R27
      128 GETTABLEKS                       R29 R26 K30 ["Uid"]
      130 MOVE                             R30 R14
      131 GETUPVAL                         R31 6
      132 GETTABLEKS                       R31 R31 K31 ["AssetInfoField"]
      134 GETTABLEKS                       R31 R31 K33 ["DisplayName"]
      136 NAMECALL                         R27 R13 K32 ["getItemField"]
      138 CALL                             R27 4 1
      139 MOVE                             R9 R27
      140 GETTABLEKS                       R29 R26 K30 ["Uid"]
      142 MOVE                             R30 R14
      143 GETUPVAL                         R31 6
      144 GETTABLEKS                       R31 R31 K31 ["AssetInfoField"]
      146 GETTABLEKS                       R31 R31 K34 ["AssetId"]
      148 NAMECALL                         R27 R13 K32 ["getItemField"]
      150 CALL                             R27 4 1
      151 MOVE                             R7 R27
      152 JUMPIFNOT                        R7 ; [+2]
      153 JUMPIFNOT                        R8 ; [+1]
      154 JUMPIF                           R9 ; [+2]
      155 LOADNIL                          R27
      156 RETURN                           R27 1
      157 GETTABLEKS                       R29 R26 K30 ["Uid"]
      159 MOVE                             R30 R14
      160 GETUPVAL                         R31 6
      161 GETTABLEKS                       R31 R31 K31 ["AssetInfoField"]
      163 GETTABLEKS                       R31 R31 K35 ["IsPackage"]
      165 NAMECALL                         R27 R13 K32 ["getItemField"]
      167 CALL                             R27 4 1
      168 MOVE                             R10 R27
      169 GETTABLEKS                       R29 R26 K30 ["Uid"]
      171 MOVE                             R30 R14
      172 GETUPVAL                         R31 6
      173 GETTABLEKS                       R31 R31 K31 ["AssetInfoField"]
      175 GETTABLEKS                       R31 R31 K8 ["ModerationStatus"]
      177 NAMECALL                         R27 R13 K32 ["getItemField"]
      179 CALL                             R27 4 1
      180 MOVE                             R11 R27
      181 GETUPVAL                         R27 13
      182 CALL                             R27 0 1
      183 JUMPIFNOT                        R27 ; [+12]
      184 GETTABLEKS                       R29 R26 K30 ["Uid"]
      186 MOVE                             R30 R14
      187 GETUPVAL                         R31 6
      188 GETTABLEKS                       R31 R31 K31 ["AssetInfoField"]
      190 GETTABLEKS                       R31 R31 K10 ["DraftStatus"]
      192 NAMECALL                         R27 R13 K32 ["getItemField"]
      194 CALL                             R27 4 1
      195 MOVE                             R12 R27
      196 GETUPVAL                         R28 6
      197 GETTABLEKS                       R28 R28 K8 ["ModerationStatus"]
      199 GETTABLEKS                       R28 R28 K36 ["Rejected"]
      201 JUMPIFEQ                         R11 R28 ; [+2]
      203 LOADB                            R27 0 +1
      204 LOADB                            R27 1
      205 GETUPVAL                         R29 6
      206 GETTABLEKS                       R29 R29 K10 ["DraftStatus"]
      208 GETTABLEKS                       R29 R29 K37 ["Draft"]
      210 JUMPIFEQ                         R12 R29 ; [+2]
      212 LOADB                            R28 0 +1
      213 LOADB                            R28 1
      214 GETUPVAL                         R30 14
      215 MOVE                             R31 R9
      216 CALL                             R30 1 1
      217 GETTABLEKS                       R30 R30 K16 ["X"]
      219 JUMPIFLT                         R17 R30 ; [+2]
      221 LOADB                            R29 0 +1
      222 LOADB                            R29 1
      223 GETTABLEKS                       R31 R0 K4 ["Cell"]
      225 GETTABLE                         R30 R15 R31
      226 NEWCLOSURE                       R31 P0
      227 CAPTURE                          VAL R4
      228 CAPTURE                          UPVAL U6
      229 CAPTURE                          VAL R0
      230 CAPTURE                          VAL R25
      231 GETTABLEKS                       R34 R3 K38 ["Typography"]
      233 GETTABLEKS                       R34 R34 K39 ["BodySmall"]
      235 GETTABLEKS                       R34 R34 K40 ["FontSize"]
      237 GETTABLEKS                       R35 R3 K38 ["Typography"]
      239 GETTABLEKS                       R35 R35 K39 ["BodySmall"]
      241 GETTABLEKS                       R35 R35 K41 ["LineHeight"]
      243 MUL                              R33 R34 R35
      244 MULK                             R32 R33 K18 [2]
      245 GETUPVAL                         R33 9
      246 GETTABLEKS                       R33 R33 K42 ["createElement"]
      248 GETUPVAL                         R34 2
      249 GETTABLEKS                       R34 R34 K43 ["View"]
      251 DUPTABLE                         R35 K48 [{"LayoutOrder", "Size", "Position", "ref", "tag"}]
      252 GETTABLEKS                       R36 R0 K28 ["Key"]
      254 SETTABLEKS                       R36 R35 K44 ["LayoutOrder"]
      256 GETTABLEKS                       R36 R0 K15 ["Size"]
      258 SETTABLEKS                       R36 R35 K15 ["Size"]
      260 GETTABLEKS                       R36 R0 K45 ["Position"]
      262 SETTABLEKS                       R36 R35 K45 ["Position"]
      264 SETTABLEKS                       R18 R35 K46 ["ref"]
      266 NEWTABLE                         R36 4 0
      268 LOADB                            R37 1
      269 SETTABLEKS                       R37 R36 K49 ["align-x-center align-y-top padding-xsmall radius-medium"]
      271 SETTABLEKS                       R30 R36 K50 ["bg-action-soft-emphasis"]
      273 NOT                              R38 R30
      274 AND                              R37 R38 R22
      275 SETTABLEKS                       R37 R36 K13 ["bg-shift-200"]
      277 SETTABLEKS                       R24 R36 K51 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      279 SETTABLEKS                       R36 R35 K47 ["tag"]
      281 DUPTABLE                         R36 K54 [{"InputHandler", "InsertOrImportTutorialTooltip"}]
      282 GETUPVAL                         R37 9
      283 GETTABLEKS                       R37 R37 K42 ["createElement"]
      285 LOADK                            R38 K55 ["ImageButton"]
      286 NEWTABLE                         R39 4 0
      288 GETUPVAL                         R40 9
      289 GETTABLEKS                       R40 R40 K56 ["Event"]
      291 GETTABLEKS                       R40 R40 K57 ["MouseButton2Click"]
      293 SETTABLE                         R31 R39 R40
      294 GETUPVAL                         R40 9
      295 GETTABLEKS                       R40 R40 K56 ["Event"]
      297 GETTABLEKS                       R40 R40 K58 ["MouseButton1Down"]
      299 NEWCLOSURE                       R41 P1
      300 CAPTURE                          VAL R4
      301 CAPTURE                          UPVAL U6
      302 CAPTURE                          VAL R0
      303 SETTABLE                         R41 R39 R40
      304 GETUPVAL                         R40 9
      305 GETTABLEKS                       R40 R40 K56 ["Event"]
      307 GETTABLEKS                       R40 R40 K59 ["MouseButton1Up"]
      309 NEWCLOSURE                       R41 P2
      310 CAPTURE                          VAL R4
      311 CAPTURE                          UPVAL U6
      312 CAPTURE                          VAL R0
      313 SETTABLE                         R41 R39 R40
      314 GETUPVAL                         R40 9
      315 GETTABLEKS                       R40 R40 K60 ["Tag"]
      317 LOADK                            R41 K61 ["gui-object-defaults size-full col gap-xsmall data-testid=item-cell-input"]
      318 SETTABLE                         R41 R39 R40
      319 DUPTABLE                         R40 K64 [{"ThumbnailContainer", "CellData"}]
      320 GETUPVAL                         R41 9
      321 GETTABLEKS                       R41 R41 K42 ["createElement"]
      323 GETUPVAL                         R42 2
      324 GETTABLEKS                       R42 R42 K43 ["View"]
      326 DUPTABLE                         R43 K65 [{"LayoutOrder", "ref", "tag"}]
      327 NAMECALL                         R44 R1 K66 ["getNextOrder"]
      329 CALL                             R44 1 1
      330 SETTABLEKS                       R44 R43 K44 ["LayoutOrder"]
      332 SETTABLEKS                       R19 R43 K46 ["ref"]
      334 LOADK                            R44 K67 ["fill size-full radius-small %*"]
      335 MOVE                             R46 R16
      336 NAMECALL                         R44 R44 K68 ["format"]
      338 CALL                             R44 2 1
      339 SETTABLEKS                       R44 R43 K47 ["tag"]
      341 DUPTABLE                         R44 K73 [{"Thumbnail", "PackageLinkIcon", "AssetStatus", "AudioOverlay"}]
      342 GETUPVAL                         R45 9
      343 GETTABLEKS                       R45 R45 K42 ["createElement"]
      345 GETUPVAL                         R46 15
      346 DUPTABLE                         R47 K74 [{"AssetId", "AssetType"}]
      347 SETTABLEKS                       R7 R47 K34 ["AssetId"]
      349 SETTABLEKS                       R8 R47 K5 ["AssetType"]
      351 CALL                             R45 2 1
      352 SETTABLEKS                       R45 R44 K69 ["Thumbnail"]
      354 JUMPIFNOT                        R10 ; [+7]
      355 GETUPVAL                         R45 9
      356 GETTABLEKS                       R45 R45 K42 ["createElement"]
      358 GETUPVAL                         R46 16
      359 DUPTABLE                         R47 K77 [{["IsGrid"] = True}]
      360 CALL                             R45 2 1
      361 JUMP                             ; [+1]
      362 LOADNIL                          R45
      363 SETTABLEKS                       R45 R44 K70 ["PackageLinkIcon"]
      365 JUMPIF                           R27 ; [+1]
      366 JUMPIFNOT                        R28 ; [+15]
      367 GETUPVAL                         R45 9
      368 GETTABLEKS                       R45 R45 K42 ["createElement"]
      370 GETUPVAL                         R46 17
      371 DUPTABLE                         R47 K81 [{["AssetId"], ["AssetPath"], ["IsModerated"], ["IsDraft"], ["IsGrid"] = True}]
      372 SETTABLEKS                       R7 R47 K34 ["AssetId"]
      374 SETTABLEKS                       R14 R47 K78 ["AssetPath"]
      376 SETTABLEKS                       R27 R47 K79 ["IsModerated"]
      378 SETTABLEKS                       R28 R47 K80 ["IsDraft"]
      380 CALL                             R45 2 1
      381 JUMP                             ; [+1]
      382 LOADNIL                          R45
      383 SETTABLEKS                       R45 R44 K71 ["AssetStatus"]
      385 GETUPVAL                         R46 18
      386 MOVE                             R47 R8
      387 MOVE                             R48 R11
      388 CALL                             R46 2 1
      389 JUMPIFNOT                        R46 ; [+13]
      390 GETUPVAL                         R45 9
      391 GETTABLEKS                       R45 R45 K42 ["createElement"]
      393 GETUPVAL                         R46 19
      394 DUPTABLE                         R47 K84 [{"AssetId", "IsHovered", "OnRightClick"}]
      395 SETTABLEKS                       R7 R47 K34 ["AssetId"]
      397 SETTABLEKS                       R23 R47 K82 ["IsHovered"]
      399 SETTABLEKS                       R31 R47 K83 ["OnRightClick"]
      401 CALL                             R45 2 1
      402 JUMP                             ; [+1]
      403 LOADNIL                          R45
      404 SETTABLEKS                       R45 R44 K72 ["AudioOverlay"]
      406 CALL                             R41 3 1
      407 SETTABLEKS                       R41 R40 K62 ["ThumbnailContainer"]
      409 GETUPVAL                         R41 9
      410 GETTABLEKS                       R41 R41 K42 ["createElement"]
      412 GETUPVAL                         R42 2
      413 GETTABLEKS                       R42 R42 K43 ["View"]
      415 DUPTABLE                         R43 K85 [{"LayoutOrder", "Size", "tag"}]
      416 NAMECALL                         R44 R1 K66 ["getNextOrder"]
      418 CALL                             R44 1 1
      419 SETTABLEKS                       R44 R43 K44 ["LayoutOrder"]
      421 GETUPVAL                         R45 20
      422 CALL                             R45 0 1
      423 JUMPIFNOT                        R45 ; [+14]
      424 GETIMPORT                        R44 K87 [UDim2.new]
      426 LOADN                            R45 1
      427 LOADN                            R46 0
      428 LOADN                            R47 0
      429 GETTABLEKS                       R49 R3 K38 ["Typography"]
      431 GETTABLEKS                       R49 R49 K88 ["CaptionSmall"]
      433 GETTABLEKS                       R49 R49 K40 ["FontSize"]
      435 ADD                              R48 R32 R49
      436 CALL                             R44 4 1
      437 JUMP                             ; [+1]
      438 LOADNIL                          R44
      439 SETTABLEKS                       R44 R43 K15 ["Size"]
      441 GETUPVAL                         R45 20
      442 CALL                             R45 0 1
      443 JUMPIFNOT                        R45 ; [+2]
      444 LOADK                            R44 K89 ["col align-x-left"]
      445 JUMP                             ; [+1]
      446 LOADK                            R44 K90 ["am-size-full-celldata col align-x-left"]
      447 SETTABLEKS                       R44 R43 K47 ["tag"]
      449 DUPTABLE                         R44 K93 [{"NameTag", "TypeTag"}]
      450 JUMPIFNOT                        R6 ; [+24]
      451 GETUPVAL                         R45 9
      452 GETTABLEKS                       R45 R45 K42 ["createElement"]
      454 GETUPVAL                         R46 21
      455 DUPTABLE                         R47 K97 [{"LayoutOrder", "InitialText", "ItemType", "ItemPath", "Size"}]
      456 NAMECALL                         R48 R1 K66 ["getNextOrder"]
      458 CALL                             R48 1 1
      459 SETTABLEKS                       R48 R47 K44 ["LayoutOrder"]
      461 SETTABLEKS                       R9 R47 K94 ["InitialText"]
      463 SETTABLEKS                       R8 R47 K95 ["ItemType"]
      465 GETTABLEKS                       R48 R0 K4 ["Cell"]
      467 SETTABLEKS                       R48 R47 K96 ["ItemPath"]
      469 GETTABLEKS                       R48 R0 K15 ["Size"]
      471 SETTABLEKS                       R48 R47 K15 ["Size"]
      473 CALL                             R45 2 1
      474 JUMP                             ; [+70]
      475 JUMPIFNOT                        R29 ; [+36]
      476 GETUPVAL                         R45 9
      477 GETTABLEKS                       R45 R45 K42 ["createElement"]
      479 GETUPVAL                         R46 22
      480 DUPTABLE                         R47 K103 [{"LayoutOrder", "Name", "NameLabelHeight", "Font", "FontSize", "SetAnchorInstance", "TextHorizontalSize"}]
      481 NAMECALL                         R48 R1 K66 ["getNextOrder"]
      483 CALL                             R48 1 1
      484 SETTABLEKS                       R48 R47 K44 ["LayoutOrder"]
      486 SETTABLEKS                       R9 R47 K98 ["Name"]
      488 SETTABLEKS                       R32 R47 K99 ["NameLabelHeight"]
      490 GETTABLEKS                       R48 R3 K38 ["Typography"]
      492 GETTABLEKS                       R48 R48 K39 ["BodySmall"]
      494 GETTABLEKS                       R48 R48 K100 ["Font"]
      496 SETTABLEKS                       R48 R47 K100 ["Font"]
      498 GETTABLEKS                       R48 R3 K38 ["Typography"]
      500 GETTABLEKS                       R48 R48 K39 ["BodySmall"]
      502 GETTABLEKS                       R48 R48 K40 ["FontSize"]
      504 SETTABLEKS                       R48 R47 K40 ["FontSize"]
      506 SETTABLEKS                       R21 R47 K101 ["SetAnchorInstance"]
      508 SETTABLEKS                       R17 R47 K102 ["TextHorizontalSize"]
      510 CALL                             R45 2 1
      511 JUMP                             ; [+33]
      512 GETUPVAL                         R45 9
      513 GETTABLEKS                       R45 R45 K42 ["createElement"]
      515 GETUPVAL                         R46 23
      516 DUPTABLE                         R47 K104 [{"LayoutOrder", "Name", "NameLabelHeight", "Font", "FontSize", "SetAnchorInstance"}]
      517 NAMECALL                         R48 R1 K66 ["getNextOrder"]
      519 CALL                             R48 1 1
      520 SETTABLEKS                       R48 R47 K44 ["LayoutOrder"]
      522 SETTABLEKS                       R9 R47 K98 ["Name"]
      524 SETTABLEKS                       R32 R47 K99 ["NameLabelHeight"]
      526 GETTABLEKS                       R48 R3 K38 ["Typography"]
      528 GETTABLEKS                       R48 R48 K39 ["BodySmall"]
      530 GETTABLEKS                       R48 R48 K100 ["Font"]
      532 SETTABLEKS                       R48 R47 K100 ["Font"]
      534 GETTABLEKS                       R48 R3 K38 ["Typography"]
      536 GETTABLEKS                       R48 R48 K39 ["BodySmall"]
      538 GETTABLEKS                       R48 R48 K40 ["FontSize"]
      540 SETTABLEKS                       R48 R47 K40 ["FontSize"]
      542 SETTABLEKS                       R21 R47 K101 ["SetAnchorInstance"]
      544 CALL                             R45 2 1
      545 SETTABLEKS                       R45 R44 K91 ["NameTag"]
      547 GETUPVAL                         R45 9
      548 GETTABLEKS                       R45 R45 K42 ["createElement"]
      550 GETUPVAL                         R46 2
      551 GETTABLEKS                       R46 R46 K105 ["Text"]
      553 DUPTABLE                         R47 K106 [{"LayoutOrder", "Text", "tag"}]
      554 NAMECALL                         R48 R1 K66 ["getNextOrder"]
      556 CALL                             R48 1 1
      557 SETTABLEKS                       R48 R47 K44 ["LayoutOrder"]
      559 LOADK                            R50 K5 ["AssetType"]
      560 MOVE                             R51 R8
      561 NAMECALL                         R48 R2 K107 ["getText"]
      563 CALL                             R48 3 1
      564 SETTABLEKS                       R48 R47 K105 ["Text"]
      566 GETUPVAL                         R49 20
      567 CALL                             R49 0 1
      568 JUMPIFNOT                        R49 ; [+2]
      569 LOADK                            R48 K108 ["size-0 auto-xy text-caption-small text-truncate-end content-muted"]
      570 JUMP                             ; [+1]
      571 LOADK                            R48 K109 ["size-0 auto-xy text-caption-small text-truncate-end content-default"]
      572 SETTABLEKS                       R48 R47 K47 ["tag"]
      574 CALL                             R45 2 1
      575 SETTABLEKS                       R45 R44 K92 ["TypeTag"]
      577 CALL                             R41 3 1
      578 SETTABLEKS                       R41 R40 K63 ["CellData"]
      580 CALL                             R37 3 1
      581 SETTABLEKS                       R37 R36 K52 ["InputHandler"]
      583 GETTABLEKS                       R38 R0 K28 ["Key"]
      585 JUMPIFNOTEQKN                    R38 K110 [1] ; [+42]
      587 GETUPVAL                         R37 9
      588 GETTABLEKS                       R37 R37 K42 ["createElement"]
      590 GETUPVAL                         R38 24
      591 DUPTABLE                         R39 K116 [{"tutorialId", "stepId", "anchorInstance", "side", "align"}]
      592 GETUPVAL                         R40 6
      593 GETTABLEKS                       R40 R40 K117 ["TutorialId"]
      595 GETTABLEKS                       R40 R40 K118 ["Intro"]
      597 SETTABLEKS                       R40 R39 K111 ["tutorialId"]
      599 GETUPVAL                         R40 6
      600 GETTABLEKS                       R40 R40 K119 ["TutorialStepId"]
      602 GETTABLEKS                       R40 R40 K120 ["InsertOrImport"]
      604 SETTABLEKS                       R40 R39 K112 ["stepId"]
      606 SETTABLEKS                       R20 R39 K113 ["anchorInstance"]
      608 GETUPVAL                         R40 2
      609 GETTABLEKS                       R40 R40 K121 ["Enums"]
      611 GETTABLEKS                       R40 R40 K122 ["PopoverSide"]
      613 GETTABLEKS                       R40 R40 K123 ["Bottom"]
      615 SETTABLEKS                       R40 R39 K114 ["side"]
      617 GETUPVAL                         R40 2
      618 GETTABLEKS                       R40 R40 K121 ["Enums"]
      620 GETTABLEKS                       R40 R40 K124 ["PopoverAlign"]
      622 GETTABLEKS                       R40 R40 K125 ["Center"]
      624 SETTABLEKS                       R40 R39 K115 ["align"]
      626 CALL                             R37 2 1
      627 JUMP                             ; [+1]
      628 LOADNIL                          R37
      629 SETTABLEKS                       R37 R36 K53 ["InsertOrImportTutorialTooltip"]
      631 CALL                             R33 3 -1
      632 RETURN                           R33 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Components"]
       38 GETTABLEKS                       R7 R7 K14 ["Shared"]
       40 GETTABLEKS                       R7 R7 K15 ["AssetStatus"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["Shared"]
       51 GETTABLEKS                       R8 R8 K16 ["AudioPreviewOverlay"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K13 ["Components"]
       60 GETTABLEKS                       R9 R9 K14 ["Shared"]
       62 GETTABLEKS                       R9 R9 K17 ["EditNameInput"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K12 ["Src"]
       69 GETTABLEKS                       R10 R10 K13 ["Components"]
       71 GETTABLEKS                       R10 R10 K14 ["Shared"]
       73 GETTABLEKS                       R10 R10 K18 ["ItemThumbnail"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K12 ["Src"]
       80 GETTABLEKS                       R11 R11 K13 ["Components"]
       82 GETTABLEKS                       R11 R11 K14 ["Shared"]
       84 GETTABLEKS                       R11 R11 K19 ["PackageLinkIcon"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K12 ["Src"]
       91 GETTABLEKS                       R12 R12 K13 ["Components"]
       93 GETTABLEKS                       R12 R12 K14 ["Shared"]
       95 GETTABLEKS                       R12 R12 K20 ["TutorialTooltip"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K12 ["Src"]
      102 GETTABLEKS                       R13 R13 K21 ["Controllers"]
      104 GETTABLEKS                       R13 R13 K22 ["Input"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K12 ["Src"]
      111 GETTABLEKS                       R14 R14 K21 ["Controllers"]
      113 GETTABLEKS                       R14 R14 K23 ["ItemsController"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K12 ["Src"]
      120 GETTABLEKS                       R15 R15 K24 ["Hooks"]
      122 GETTABLEKS                       R15 R15 K25 ["useContextMenu"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K12 ["Src"]
      129 GETTABLEKS                       R16 R16 K24 ["Hooks"]
      131 GETTABLEKS                       R16 R16 K26 ["useIsEditItem"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K12 ["Src"]
      138 GETTABLEKS                       R17 R17 K24 ["Hooks"]
      140 GETTABLEKS                       R17 R17 K27 ["useItemDragHovered"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R18 R0 K12 ["Src"]
      147 GETTABLEKS                       R18 R18 K24 ["Hooks"]
      149 GETTABLEKS                       R18 R18 K28 ["useItemHovered"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R19 R0 K12 ["Src"]
      156 GETTABLEKS                       R19 R19 K24 ["Hooks"]
      158 GETTABLEKS                       R19 R19 K29 ["useItemSelection"]
      160 CALL                             R18 1 1
      161 GETIMPORT                        R19 K5 [require]
      163 GETTABLEKS                       R20 R0 K12 ["Src"]
      165 GETTABLEKS                       R20 R20 K30 ["Types"]
      167 CALL                             R19 1 1
      168 GETIMPORT                        R20 K5 [require]
      170 GETTABLEKS                       R21 R0 K12 ["Src"]
      172 GETTABLEKS                       R21 R21 K31 ["Util"]
      174 GETTABLEKS                       R21 R21 K32 ["isAudioPreviewable"]
      176 CALL                             R20 1 1
      177 GETTABLEKS                       R21 R2 K31 ["Util"]
      179 GETTABLEKS                       R21 R21 K33 ["LayoutOrderIterator"]
      181 GETTABLEKS                       R22 R2 K31 ["Util"]
      183 GETTABLEKS                       R22 R22 K34 ["GetTextSize"]
      185 GETIMPORT                        R23 K5 [require]
      187 GETTABLEKS                       R24 R0 K12 ["Src"]
      189 GETTABLEKS                       R24 R24 K35 ["Resources"]
      191 GETTABLEKS                       R24 R24 K36 ["PluginStyles"]
      193 CALL                             R23 1 1
      194 GETIMPORT                        R24 K5 [require]
      196 GETTABLEKS                       R25 R0 K12 ["Src"]
      198 GETTABLEKS                       R25 R25 K37 ["Flags"]
      200 GETTABLEKS                       R25 R25 K38 ["getFFlagAmrEnableDraftStatus"]
      202 CALL                             R24 1 1
      203 GETIMPORT                        R25 K5 [require]
      205 GETTABLEKS                       R26 R0 K12 ["Src"]
      207 GETTABLEKS                       R26 R26 K37 ["Flags"]
      209 GETTABLEKS                       R26 R26 K39 ["getFFlagAmrGridAssetNameTwoLine"]
      211 CALL                             R25 1 1
      212 DUPCLOSURE                       R26 K40 [PROTO_0]
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R25
      216 DUPCLOSURE                       R27 K41 [PROTO_1]
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R1
      219 CAPTURE                          VAL R25
      220 CAPTURE                          VAL R26
      221 DUPCLOSURE                       R28 K42 [PROTO_5]
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R1
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R13
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R3
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R16
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R24
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R9
      238 CAPTURE                          VAL R10
      239 CAPTURE                          VAL R6
      240 CAPTURE                          VAL R20
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R25
      243 CAPTURE                          VAL R8
      244 CAPTURE                          VAL R27
      245 CAPTURE                          VAL R26
      246 CAPTURE                          VAL R11
      247 RETURN                           R28 1
