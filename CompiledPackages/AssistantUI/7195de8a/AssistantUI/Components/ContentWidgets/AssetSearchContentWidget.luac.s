PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 GETUPVAL                         R6 1
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_1:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R6 R5
        6 GETUPVAL                         R7 0
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 ; [-4]
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+17]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["sessionId"]
        6 JUMPIFNOTEQ                      R1 R0 ; [+12]
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 MOVE                             R6 R5
       15 GETUPVAL                         R7 0
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-4]
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 JUMPIFNOTEQ                      R4 R5 ; [+7]
        7 GETIMPORT                        R5 K2 [table.remove]
        9 GETUPVAL                         R6 0
       10 MOVE                             R7 R3
       11 CALL                             R5 2 0
       12 RETURN                           R0 0
       13 FORGLOOP                         R0 2 ; [-10]
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 ADDK                             R0 R1 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R1 0
        4 FASTCALL1                        TOSTRING R1 ; [+2]
        5 GETIMPORT                        R0 K2 [tostring]
        7 CALL                             R0 1 1
        8 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R3 R0 K1 ["GuiState"]
        9 GETIMPORT                        R4 K4 [Enum.GuiState.Hover]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 LOADK                            R3 K1 ["GuiState"]
        8 NAMECALL                         R1 R0 K2 ["GetPropertyChangedSignal"]
       10 CALL                             R1 2 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 NAMECALL                         R1 R1 K3 ["Connect"]
       16 CALL                             R1 2 1
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          VAL R1
       19 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useEffect"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NEWTABLE                         R4 0 1
        8 MOVE                             R5 R0
        9 SETLIST                          R4 R5 1 [1]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["stopPreview"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["onItemClicked"]
       10 JUMPIFNOT                        R0 ; [+5]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K1 ["onItemClicked"]
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onItemDetailsClicked"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onItemDetailsClicked"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["togglePreview"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETTABLEKS                       R2 R0 K1 ["padding"]
        4 GETTABLEKS                       R3 R0 K2 ["isInserting"]
        6 GETTABLEKS                       R4 R0 K3 ["isAudio"]
        8 GETTABLEKS                       R5 R0 K4 ["isPackage"]
       10 GETTABLEKS                       R6 R0 K5 ["isPlayingThis"]
       12 GETTABLEKS                       R7 R0 K6 ["priceLabel"]
       14 GETTABLEKS                       R8 R0 K7 ["ownerLabel"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["Hooks"]
       19 GETTABLEKS                       R9 R9 K9 ["useTokens"]
       21 CALL                             R9 0 1
       22 GETUPVAL                         R10 1
       23 LOADK                            R11 K10 ["PackageLink"]
       24 CALL                             R10 1 1
       25 GETUPVAL                         R11 2
       26 CALL                             R11 0 1
       27 GETTABLEKS                       R13 R1 K12 ["assetId"]
       29 ORK                              R12 R13 K11 [""]
       30 GETTABLEKS                       R14 R1 K13 ["name"]
       32 ORK                              R13 R14 K11 [""]
       33 GETUPVAL                         R14 3
       34 GETTABLEKS                       R14 R14 K14 ["useRef"]
       36 LOADNIL                          R15
       37 CALL                             R14 1 1
       38 GETUPVAL                         R15 3
       39 GETTABLEKS                       R15 R15 K14 ["useRef"]
       41 LOADNIL                          R16
       42 CALL                             R15 1 1
       43 GETUPVAL                         R16 3
       44 GETTABLEKS                       R16 R16 K15 ["useState"]
       46 LOADB                            R17 0
       47 CALL                             R16 1 2
       48 GETUPVAL                         R18 3
       49 GETTABLEKS                       R18 R18 K15 ["useState"]
       51 LOADB                            R19 0
       52 CALL                             R18 1 2
       53 DUPCLOSURE                       R20 K16 [PROTO_9]
       54 CAPTURE                          UPVAL U3
       55 GETUPVAL                         R21 3
       56 GETTABLEKS                       R21 R21 K17 ["useEffect"]
       58 NEWCLOSURE                       R22 P1
       59 CAPTURE                          VAL R14
       60 CAPTURE                          VAL R17
       61 NEWTABLE                         R23 0 1
       63 MOVE                             R24 R14
       64 SETLIST                          R23 R24 1 [1]
       66 CALL                             R21 2 0
       67 GETUPVAL                         R21 3
       68 GETTABLEKS                       R21 R21 K17 ["useEffect"]
       70 NEWCLOSURE                       R22 P1
       71 CAPTURE                          VAL R15
       72 CAPTURE                          VAL R19
       73 NEWTABLE                         R23 0 1
       75 MOVE                             R24 R15
       76 SETLIST                          R23 R24 1 [1]
       78 CALL                             R21 2 0
       79 NEWCLOSURE                       R21 P2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R1
       83 NEWCLOSURE                       R22 P3
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R1
       86 NEWCLOSURE                       R23 P4
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R12
       89 GETUPVAL                         R24 4
       90 GETUPVAL                         R25 5
       91 DUPTABLE                         R26 K22 [{["tag"] = "col auto-y align-x-center gap-xxsmall", ["Size"], ["LayoutOrder"]}]
       92 GETIMPORT                        R27 K25 [UDim2.fromOffset]
       94 LOADN                            R28 80
       95 LOADN                            R29 0
       96 CALL                             R27 2 1
       97 SETTABLEKS                       R27 R26 K20 ["Size"]
       99 GETTABLEKS                       R27 R0 K26 ["layoutOrder"]
      101 SETTABLEKS                       R27 R26 K21 ["LayoutOrder"]
      103 DUPTABLE                         R27 K31 [{"Tile", "Name", "Price", "Owner"}]
      104 GETUPVAL                         R28 4
      105 GETUPVAL                         R29 5
      106 DUPTABLE                         R30 K36 [{["tag"] = "padding-xxsmall radius-small bg-shift-300", ["Size"], ["onActivated"], ["ref"], ["LayoutOrder"], ["testId"]}]
      107 GETIMPORT                        R31 K25 [UDim2.fromOffset]
      109 LOADN                            R32 80
      110 LOADN                            R33 80
      111 CALL                             R31 2 1
      112 SETTABLEKS                       R31 R30 K20 ["Size"]
      114 SETTABLEKS                       R21 R30 K33 ["onActivated"]
      116 SETTABLEKS                       R14 R30 K34 ["ref"]
      118 MOVE                             R31 R11
      119 CALL                             R31 0 1
      120 SETTABLEKS                       R31 R30 K21 ["LayoutOrder"]
      122 GETUPVAL                         R31 6
      123 GETTABLEKS                       R31 R31 K37 ["AssetSearch"]
      125 GETTABLEKS                       R31 R31 K27 ["Tile"]
      127 SETTABLEKS                       R31 R30 K35 ["testId"]
      129 DUPTABLE                         R31 K43 [{"Image", "DetailsButton", "PackageBadge", "PlayButton", "InsertingOverlay"}]
      130 GETUPVAL                         R32 4
      131 GETUPVAL                         R33 7
      132 DUPTABLE                         R34 K45 [{["tag"] = "size-full-full radius-small anchor-center-center position-center-center", ["Image"]}]
      133 LOADK                            R36 K46 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
      134 MOVE                             R38 R12
      135 NAMECALL                         R36 R36 K47 ["format"]
      137 CALL                             R36 2 1
      138 MOVE                             R35 R36
      139 SETTABLEKS                       R35 R34 K38 ["Image"]
      141 CALL                             R32 2 1
      142 SETTABLEKS                       R32 R31 K38 ["Image"]
      144 GETUPVAL                         R32 4
      145 LOADK                            R33 K48 ["ImageButton"]
      146 NEWTABLE                         R34 16 0
      148 LOADK                            R35 K49 ["rbxasset://textures/StudioToolbox/AssetPreview/MAGNIFIER_PH.png"]
      149 SETTABLEKS                       R35 R34 K38 ["Image"]
      151 JUMPIFNOT                        R16 ; [+2]
      152 LOADN                            R35 0
      153 JUMP                             ; [+1]
      154 LOADN                            R35 1
      155 SETTABLEKS                       R35 R34 K50 ["ImageTransparency"]
      157 LOADN                            R35 1
      158 SETTABLEKS                       R35 R34 K51 ["BackgroundTransparency"]
      160 SETTABLEKS                       R16 R34 K52 ["Active"]
      162 JUMPIFNOT                        R18 ; [+6]
      163 GETIMPORT                        R35 K25 [UDim2.fromOffset]
      165 LOADN                            R36 32
      166 LOADN                            R37 32
      167 CALL                             R35 2 1
      168 JUMP                             ; [+5]
      169 GETIMPORT                        R35 K25 [UDim2.fromOffset]
      171 LOADN                            R36 28
      172 LOADN                            R37 28
      173 CALL                             R35 2 1
      174 SETTABLEKS                       R35 R34 K20 ["Size"]
      176 GETIMPORT                        R35 K55 [Vector2.new]
      178 LOADN                            R36 1
      179 LOADN                            R37 0
      180 CALL                             R35 2 1
      181 SETTABLEKS                       R35 R34 K56 ["AnchorPoint"]
      183 GETIMPORT                        R35 K57 [UDim2.new]
      185 LOADN                            R36 1
      186 MOVE                             R37 R2
      187 LOADN                            R38 0
      188 MINUS                            R39 R2
      189 CALL                             R35 4 1
      190 SETTABLEKS                       R35 R34 K58 ["Position"]
      192 LOADN                            R35 3
      193 SETTABLEKS                       R35 R34 K59 ["ZIndex"]
      195 SETTABLEKS                       R15 R34 K34 ["ref"]
      197 GETUPVAL                         R35 3
      198 GETTABLEKS                       R35 R35 K60 ["Event"]
      200 GETTABLEKS                       R35 R35 K61 ["Activated"]
      202 SETTABLE                         R22 R34 R35
      203 GETUPVAL                         R35 3
      204 GETTABLEKS                       R35 R35 K62 ["Tag"]
      206 LOADK                            R37 K63 ["data-testid=AssetSearchTile.%*.Details"]
      207 MOVE                             R39 R12
      208 NAMECALL                         R37 R37 K47 ["format"]
      210 CALL                             R37 2 1
      211 MOVE                             R36 R37
      212 SETTABLE                         R36 R34 R35
      213 CALL                             R32 2 1
      214 SETTABLEKS                       R32 R31 K39 ["DetailsButton"]
      216 MOVE                             R32 R5
      217 JUMPIFNOT                        R32 ; [+98]
      218 GETUPVAL                         R32 4
      219 LOADK                            R33 K64 ["Frame"]
      220 NEWTABLE                         R34 8 0
      222 GETIMPORT                        R35 K55 [Vector2.new]
      224 LOADN                            R36 1
      225 LOADN                            R37 1
      226 CALL                             R35 2 1
      227 SETTABLEKS                       R35 R34 K56 ["AnchorPoint"]
      229 GETIMPORT                        R35 K57 [UDim2.new]
      231 LOADN                            R36 1
      232 MINUS                            R37 R2
      233 LOADN                            R38 1
      234 MINUS                            R39 R2
      235 CALL                             R35 4 1
      236 SETTABLEKS                       R35 R34 K58 ["Position"]
      238 GETIMPORT                        R35 K25 [UDim2.fromOffset]
      240 GETTABLEKS                       R36 R9 K20 ["Size"]
      242 GETTABLEKS                       R36 R36 K65 ["Size_300"]
      244 GETTABLEKS                       R37 R9 K20 ["Size"]
      246 GETTABLEKS                       R37 R37 K65 ["Size_300"]
      248 CALL                             R35 2 1
      249 SETTABLEKS                       R35 R34 K20 ["Size"]
      251 GETTABLEKS                       R35 R9 K66 ["Color"]
      253 GETTABLEKS                       R35 R35 K67 ["Surface"]
      255 GETTABLEKS                       R35 R35 K68 ["Surface_300"]
      257 GETTABLEKS                       R35 R35 K69 ["Color3"]
      259 SETTABLEKS                       R35 R34 K70 ["BackgroundColor3"]
      261 LOADK                            R35 K71 [0.15]
      262 SETTABLEKS                       R35 R34 K51 ["BackgroundTransparency"]
      264 LOADN                            R35 0
      265 SETTABLEKS                       R35 R34 K72 ["BorderSizePixel"]
      267 LOADN                            R35 3
      268 SETTABLEKS                       R35 R34 K59 ["ZIndex"]
      270 GETUPVAL                         R35 3
      271 GETTABLEKS                       R35 R35 K62 ["Tag"]
      273 LOADK                            R37 K73 ["data-testid=AssetSearchTile.%*.PackageBadge"]
      274 MOVE                             R39 R12
      275 NAMECALL                         R37 R37 K47 ["format"]
      277 CALL                             R37 2 1
      278 MOVE                             R36 R37
      279 SETTABLE                         R36 R34 R35
      280 DUPTABLE                         R35 K76 [{"Corner", "Icon"}]
      281 GETUPVAL                         R36 4
      282 LOADK                            R37 K77 ["UICorner"]
      283 DUPTABLE                         R38 K79 [{"CornerRadius"}]
      284 GETIMPORT                        R39 K81 [UDim.new]
      286 LOADN                            R40 0
      287 GETTABLEKS                       R41 R9 K82 ["Radius"]
      289 GETTABLEKS                       R41 R41 K83 ["Small"]
      291 CALL                             R39 2 1
      292 SETTABLEKS                       R39 R38 K78 ["CornerRadius"]
      294 CALL                             R36 2 1
      295 SETTABLEKS                       R36 R35 K74 ["Corner"]
      297 GETUPVAL                         R36 4
      298 GETUPVAL                         R37 7
      299 DUPTABLE                         R38 K88 [{["Image"], ["ImageRectOffset"], ["ImageRectSize"], ["tag"] = "position-center-center anchor-center-center size-200-200", ["BackgroundTransparency"] = 1}]
      300 GETTABLEKS                       R39 R10 K38 ["Image"]
      302 SETTABLEKS                       R39 R38 K38 ["Image"]
      304 GETTABLEKS                       R39 R10 K84 ["ImageRectOffset"]
      306 SETTABLEKS                       R39 R38 K84 ["ImageRectOffset"]
      308 GETTABLEKS                       R39 R10 K85 ["ImageRectSize"]
      310 SETTABLEKS                       R39 R38 K85 ["ImageRectSize"]
      312 CALL                             R36 2 1
      313 SETTABLEKS                       R36 R35 K75 ["Icon"]
      315 CALL                             R32 3 1
      316 SETTABLEKS                       R32 R31 K40 ["PackageBadge"]
      318 MOVE                             R32 R4
      319 JUMPIFNOT                        R32 ; [+66]
      320 GETUPVAL                         R32 4
      321 GETUPVAL                         R33 8
      322 DUPTABLE                         R34 K95 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 3, ["testId"]}]
      323 JUMPIFNOT                        R6 ; [+8]
      324 GETUPVAL                         R35 0
      325 GETTABLEKS                       R35 R35 K96 ["Enums"]
      327 GETTABLEKS                       R35 R35 K97 ["IconName"]
      329 GETTABLEKS                       R35 R35 K98 ["PauseSmall"]
      331 JUMP                             ; [+7]
      332 GETUPVAL                         R35 0
      333 GETTABLEKS                       R35 R35 K96 ["Enums"]
      335 GETTABLEKS                       R35 R35 K97 ["IconName"]
      337 GETTABLEKS                       R35 R35 K99 ["PlaySmall"]
      339 SETTABLEKS                       R35 R34 K89 ["icon"]
      341 GETUPVAL                         R35 0
      342 GETTABLEKS                       R35 R35 K96 ["Enums"]
      344 GETTABLEKS                       R35 R35 K100 ["InputSize"]
      346 GETTABLEKS                       R35 R35 K101 ["XSmall"]
      348 SETTABLEKS                       R35 R34 K90 ["size"]
      350 GETUPVAL                         R35 0
      351 GETTABLEKS                       R35 R35 K96 ["Enums"]
      353 GETTABLEKS                       R35 R35 K102 ["ButtonVariant"]
      355 GETTABLEKS                       R35 R35 K103 ["OverMedia"]
      357 SETTABLEKS                       R35 R34 K91 ["variant"]
      359 SETTABLEKS                       R23 R34 K33 ["onActivated"]
      361 GETIMPORT                        R35 K55 [Vector2.new]
      363 LOADN                            R36 1
      364 LOADN                            R37 1
      365 CALL                             R35 2 1
      366 SETTABLEKS                       R35 R34 K56 ["AnchorPoint"]
      368 GETIMPORT                        R35 K57 [UDim2.new]
      370 LOADN                            R36 1
      371 MINUS                            R37 R2
      372 LOADN                            R38 1
      373 MINUS                            R39 R2
      374 CALL                             R35 4 1
      375 SETTABLEKS                       R35 R34 K58 ["Position"]
      377 LOADK                            R36 K104 ["AssetSearchTile.%*.Play"]
      378 MOVE                             R38 R12
      379 NAMECALL                         R36 R36 K47 ["format"]
      381 CALL                             R36 2 1
      382 MOVE                             R35 R36
      383 SETTABLEKS                       R35 R34 K35 ["testId"]
      385 CALL                             R32 2 1
      386 SETTABLEKS                       R32 R31 K41 ["PlayButton"]
      388 MOVE                             R32 R3
      389 JUMPIFNOT                        R32 ; [+17]
      390 GETUPVAL                         R32 4
      391 GETUPVAL                         R33 5
      392 DUPTABLE                         R34 K108 [{["tag"] = "bg-shift-300 radius-small anchor-center-center position-center-center", ["Size"], ["BackgroundTransparency"] = 0.4, ["ZIndex"] = 2}]
      393 GETIMPORT                        R35 K110 [UDim2.fromScale]
      395 LOADN                            R36 1
      396 LOADN                            R37 1
      397 CALL                             R35 2 1
      398 SETTABLEKS                       R35 R34 K20 ["Size"]
      400 DUPTABLE                         R35 K112 [{"Shimmer"}]
      401 GETUPVAL                         R36 4
      402 GETUPVAL                         R37 9
      403 CALL                             R36 1 1
      404 SETTABLEKS                       R36 R35 K111 ["Shimmer"]
      406 CALL                             R32 3 1
      407 SETTABLEKS                       R32 R31 K42 ["InsertingOverlay"]
      409 CALL                             R28 3 1
      410 SETTABLEKS                       R28 R27 K27 ["Tile"]
      412 LOADB                            R28 0
      413 JUMPIFEQKS                       R13 K11 [""] ; [+7]
      415 GETUPVAL                         R28 4
      416 GETUPVAL                         R29 10
      417 DUPTABLE                         R30 K115 [{["tag"] = "size-full-0 auto-y text-label-small content-default text-truncate-end text-align-x-center", ["Text"], ["LayoutOrder"] = 2}]
      418 SETTABLEKS                       R13 R30 K114 ["Text"]
      420 CALL                             R28 2 1
      421 SETTABLEKS                       R28 R27 K28 ["Name"]
      423 LOADB                            R28 0
      424 JUMPIFEQKS                       R7 K11 [""] ; [+7]
      426 GETUPVAL                         R28 4
      427 GETUPVAL                         R29 10
      428 DUPTABLE                         R30 K117 [{["tag"] = "size-full-0 auto-y text-body-small content-muted text-truncate-end text-align-x-center", ["Text"], ["LayoutOrder"] = 3}]
      429 SETTABLEKS                       R7 R30 K114 ["Text"]
      431 CALL                             R28 2 1
      432 SETTABLEKS                       R28 R27 K29 ["Price"]
      434 LOADB                            R28 0
      435 JUMPIFEQKS                       R8 K11 [""] ; [+7]
      437 GETUPVAL                         R28 4
      438 GETUPVAL                         R29 10
      439 DUPTABLE                         R30 K119 [{["tag"] = "size-full-0 auto-y text-body-small content-muted text-truncate-end text-align-x-center", ["Text"], ["LayoutOrder"] = 4}]
      440 SETTABLEKS                       R8 R30 K114 ["Text"]
      442 CALL                             R28 2 1
      443 SETTABLEKS                       R28 R27 K30 ["Owner"]
      445 CALL                             R24 3 -1
      446 RETURN                           R24 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetSearch"]
        2 LOADK                            R3 K1 ["Searching"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 1
        6 GETUPVAL                         R1 1
        7 JUMPIFEQKS                       R1 K3 [""] ; [+12]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K0 ["AssetSearch"]
       11 LOADK                            R4 K4 ["SearchingWithQuery"]
       12 DUPTABLE                         R5 K6 [{"query"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K5 ["query"]
       16 NAMECALL                         R1 R1 K2 ["getText"]
       18 CALL                             R1 4 1
       19 MOVE                             R0 R1
       20 DUPTABLE                         R1 K10 [{"FailedToSearch", "Preparing", "Searching", "ToolCallRejected"}]
       21 GETUPVAL                         R2 0
       22 LOADK                            R4 K0 ["AssetSearch"]
       23 LOADK                            R5 K7 ["FailedToSearch"]
       24 NAMECALL                         R2 R2 K2 ["getText"]
       26 CALL                             R2 3 1
       27 SETTABLEKS                       R2 R1 K7 ["FailedToSearch"]
       29 GETUPVAL                         R2 0
       30 LOADK                            R4 K0 ["AssetSearch"]
       31 LOADK                            R5 K8 ["Preparing"]
       32 NAMECALL                         R2 R2 K2 ["getText"]
       34 CALL                             R2 3 1
       35 SETTABLEKS                       R2 R1 K8 ["Preparing"]
       37 SETTABLEKS                       R0 R1 K1 ["Searching"]
       39 GETUPVAL                         R2 0
       40 LOADK                            R4 K11 ["ToolConfirmation"]
       41 LOADK                            R5 K9 ["ToolCallRejected"]
       42 DUPTABLE                         R6 K13 [{"toolName"}]
       43 GETUPVAL                         R7 2
       44 SETTABLEKS                       R7 R6 K12 ["toolName"]
       46 NAMECALL                         R2 R2 K2 ["getText"]
       48 CALL                             R2 4 1
       49 SETTABLEKS                       R2 R1 K9 ["ToolCallRejected"]
       51 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["name"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADK                            R3 K3 [""]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R4 R1 K4 ["input"]
       12 JUMPIF                           R4 ; [+1]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R6 R4 K5 ["query"]
       16 ORK                              R5 R6 K3 [""]
       17 GETTABLEKS                       R6 R4 K6 ["assetType"]
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R7 R2 K7 ["structuredContent"]
       22 JUMPIF                           R7 ; [+1]
       23 LOADNIL                          R7
       24 JUMPIFNOT                        R6 ; [+3]
       25 GETUPVAL                         R9 1
       26 GETTABLE                         R8 R9 R6
       27 JUMP                             ; [+1]
       28 LOADNIL                          R8
       29 GETUPVAL                         R9 2
       30 MOVE                             R10 R8
       31 CALL                             R9 1 1
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R3
       39 NEWTABLE                         R12 0 3
       41 GETUPVAL                         R13 4
       42 GETTABLEKS                       R13 R13 K9 ["locale"]
       44 MOVE                             R14 R5
       45 MOVE                             R15 R3
       46 SETLIST                          R12 R13 3 [1]
       48 CALL                             R10 2 1
       49 LOADB                            R11 1
       50 LOADNIL                          R12
       51 JUMPIFNOT                        R2 ; [+19]
       52 LOADB                            R11 0
       53 JUMPIFNOT                        R7 ; [+6]
       54 GETTABLEKS                       R13 R7 K10 ["rejected"]
       56 JUMPIFNOT                        R13 ; [+3]
       57 GETTABLEKS                       R12 R10 K11 ["ToolCallRejected"]
       59 JUMP                             ; [+17]
       60 JUMPIFNOT                        R7 ; [+7]
       61 GETTABLEKS                       R13 R7 K12 ["pending"]
       63 JUMPIFNOT                        R13 ; [+4]
       64 LOADB                            R11 1
       65 GETTABLEKS                       R12 R10 K13 ["Searching"]
       67 JUMP                             ; [+9]
       68 GETTABLEKS                       R12 R10 K14 ["FailedToSearch"]
       70 JUMP                             ; [+6]
       71 JUMPIFNOT                        R1 ; [+3]
       72 GETTABLEKS                       R12 R10 K13 ["Searching"]
       74 JUMP                             ; [+2]
       75 GETTABLEKS                       R12 R10 K15 ["Preparing"]
       77 GETUPVAL                         R13 5
       78 CALL                             R13 0 1
       79 GETUPVAL                         R14 6
       80 GETUPVAL                         R15 7
       81 GETTABLEKS                       R15 R15 K16 ["Root"]
       83 DUPTABLE                         R16 K22 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
       84 GETTABLEKS                       R17 R0 K17 ["LayoutOrder"]
       86 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
       88 GETTABLEKS                       R17 R0 K20 ["contentId"]
       90 SETTABLEKS                       R17 R16 K20 ["contentId"]
       92 GETTABLEKS                       R17 R0 K21 ["editThisContent"]
       94 SETTABLEKS                       R17 R16 K21 ["editThisContent"]
       96 DUPTABLE                         R17 K24 [{"Header"}]
       97 GETUPVAL                         R18 6
       98 GETUPVAL                         R19 7
       99 GETTABLEKS                       R19 R19 K23 ["Header"]
      101 DUPTABLE                         R20 K28 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
      102 MOVE                             R21 R13
      103 CALL                             R21 0 1
      104 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      106 GETUPVAL                         R21 8
      107 GETTABLEKS                       R21 R21 K29 ["AssetSearch"]
      109 GETTABLEKS                       R21 R21 K30 ["Expand"]
      111 SETTABLEKS                       R21 R20 K27 ["testId"]
      113 DUPTABLE                         R21 K33 [{"TypeIcon", "Text"}]
      114 LOADB                            R22 0
      115 GETTABLEKS                       R23 R9 K34 ["Image"]
      117 JUMPIFEQKS                       R23 K3 [""] ; [+21]
      119 GETUPVAL                         R22 6
      120 GETUPVAL                         R23 9
      121 DUPTABLE                         R24 K39 [{["tag"] = "size-400-400 radius-small", ["Image"], ["ImageRectOffset"], ["ImageRectSize"], ["LayoutOrder"]}]
      122 GETTABLEKS                       R25 R9 K34 ["Image"]
      124 SETTABLEKS                       R25 R24 K34 ["Image"]
      126 GETTABLEKS                       R25 R9 K37 ["ImageRectOffset"]
      128 SETTABLEKS                       R25 R24 K37 ["ImageRectOffset"]
      130 GETTABLEKS                       R25 R9 K38 ["ImageRectSize"]
      132 SETTABLEKS                       R25 R24 K38 ["ImageRectSize"]
      134 MOVE                             R25 R13
      135 CALL                             R25 0 1
      136 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      138 CALL                             R22 2 1
      139 SETTABLEKS                       R22 R21 K31 ["TypeIcon"]
      141 GETUPVAL                         R22 6
      142 GETUPVAL                         R23 10
      143 DUPTABLE                         R24 K41 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      144 SETTABLEKS                       R12 R24 K32 ["Text"]
      146 MOVE                             R25 R13
      147 CALL                             R25 0 1
      148 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      150 DUPTABLE                         R25 K43 [{"Shimmer"}]
      151 JUMPIFNOT                        R11 ; [+4]
      152 GETUPVAL                         R26 6
      153 GETUPVAL                         R27 11
      154 CALL                             R26 1 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R26
      157 SETTABLEKS                       R26 R25 K42 ["Shimmer"]
      159 CALL                             R22 3 1
      160 SETTABLEKS                       R22 R21 K32 ["Text"]
      162 CALL                             R18 3 1
      163 SETTABLEKS                       R18 R17 K23 ["Header"]
      165 CALL                             R14 3 -1
      166 RETURN                           R14 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssetAsync"]
        3 DUPTABLE                         R1 K4 [{"assetId", "assetName", "assetType"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["assetId"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K5 ["name"]
       10 SETTABLEKS                       R2 R1 K2 ["assetName"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["assetType"]
       15 SETTABLEKS                       R2 R1 K3 ["assetType"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 LOADNIL                          R3
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R1 1

PROTO_19:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["isFree"]
        2 JUMPIFNOTEQKB                    R1 FALSE ; [+44]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["get"]
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+37]
        9 GETTABLEKS                       R2 R1 K2 ["http"]
       11 JUMPIFNOT                        R2 ; [+34]
       12 GETTABLEKS                       R2 R1 K2 ["http"]
       14 GETTABLEKS                       R2 R2 K3 ["openUrl"]
       16 JUMPIFNOT                        R2 ; [+29]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
       20 JUMPIFNOT                        R2 ; [+13]
       21 GETTABLEKS                       R2 R1 K2 ["http"]
       23 GETTABLEKS                       R2 R2 K3 ["openUrl"]
       25 LOADK                            R4 K5 ["https://create.roblox.com/store/asset/%*?utm_source=StudioAssistant"]
       26 GETTABLEKS                       R6 R0 K6 ["assetId"]
       28 NAMECALL                         R4 R4 K7 ["format"]
       30 CALL                             R4 2 1
       31 MOVE                             R3 R4
       32 CALL                             R2 1 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R2 R1 K2 ["http"]
       36 GETTABLEKS                       R2 R2 K3 ["openUrl"]
       38 LOADK                            R4 K8 ["https://create.roblox.com/store/asset/%*"]
       39 GETTABLEKS                       R6 R0 K6 ["assetId"]
       41 NAMECALL                         R4 R4 K7 ["format"]
       43 CALL                             R4 2 1
       44 MOVE                             R3 R4
       45 CALL                             R2 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R1 2
       48 JUMPIF                           R1 ; [+1]
       49 RETURN                           R0 0
       50 GETTABLEKS                       R1 R0 K6 ["assetId"]
       52 JUMPIF                           R1 ; [+1]
       53 RETURN                           R0 0
       54 GETUPVAL                         R2 1
       55 GETTABLEKS                       R2 R2 K9 ["FFlagAssistantAssetSearchDirectInsert"]
       57 JUMPIFNOT                        R2 ; [+13]
       58 GETUPVAL                         R2 3
       59 NEWCLOSURE                       R3 P0
       60 CAPTURE                          VAL R1
       61 CALL                             R2 1 0
       62 GETIMPORT                        R2 K12 [task.spawn]
       64 NEWCLOSURE                       R3 P1
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U3
       69 CALL                             R2 1 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R2 4
       72 GETTABLEKS                       R2 R2 K13 ["sendMessage"]
       74 DUPTABLE                         R3 K17 [{["text"], ["hidden"] = True}]
       75 LOADK                            R5 K18 ["Please insert asset %* (\"%*\") using insert_asset. Asset type: %*."]
       76 GETTABLEKS                       R7 R0 K6 ["assetId"]
       78 GETTABLEKS                       R8 R0 K19 ["name"]
       80 GETTABLEKS                       R9 R0 K20 ["assetType"]
       82 NAMECALL                         R5 R5 K7 ["format"]
       84 CALL                             R5 4 1
       85 MOVE                             R4 R5
       86 SETTABLEKS                       R4 R3 K14 ["text"]
       88 CALL                             R2 1 0
       89 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKN                    R1 K0 [1] ; [+12]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["AssetSearch"]
        5 LOADK                            R3 K2 ["FoundSingularWithQuery"]
        6 DUPTABLE                         R4 K4 [{"query"}]
        7 GETUPVAL                         R5 2
        8 SETTABLEKS                       R5 R4 K3 ["query"]
       10 NAMECALL                         R0 R0 K5 ["getText"]
       12 CALL                             R0 4 1
       13 JUMP                             ; [+13]
       14 GETUPVAL                         R0 1
       15 LOADK                            R2 K1 ["AssetSearch"]
       16 LOADK                            R3 K6 ["FoundWithQuery"]
       17 DUPTABLE                         R4 K8 [{"count", "query"}]
       18 GETUPVAL                         R5 0
       19 SETTABLEKS                       R5 R4 K7 ["count"]
       21 GETUPVAL                         R5 2
       22 SETTABLEKS                       R5 R4 K3 ["query"]
       24 NAMECALL                         R0 R0 K5 ["getText"]
       26 CALL                             R0 4 1
       27 DUPTABLE                         R1 K20 [{"Found", "SourceMine", "SourceGroup", "SourceGame", "SourceFolder", "SourceInventory", "SourceStore", "SourceFree", "NoResults", "ClickToInsertOrPurchase", "ClickToInsert"}]
       28 SETTABLEKS                       R0 R1 K9 ["Found"]
       30 GETUPVAL                         R2 1
       31 LOADK                            R4 K1 ["AssetSearch"]
       32 LOADK                            R5 K10 ["SourceMine"]
       33 NAMECALL                         R2 R2 K5 ["getText"]
       35 CALL                             R2 3 1
       36 SETTABLEKS                       R2 R1 K10 ["SourceMine"]
       38 GETUPVAL                         R2 1
       39 LOADK                            R4 K1 ["AssetSearch"]
       40 LOADK                            R5 K11 ["SourceGroup"]
       41 NAMECALL                         R2 R2 K5 ["getText"]
       43 CALL                             R2 3 1
       44 SETTABLEKS                       R2 R1 K11 ["SourceGroup"]
       46 GETUPVAL                         R2 1
       47 LOADK                            R4 K1 ["AssetSearch"]
       48 LOADK                            R5 K12 ["SourceGame"]
       49 NAMECALL                         R2 R2 K5 ["getText"]
       51 CALL                             R2 3 1
       52 SETTABLEKS                       R2 R1 K12 ["SourceGame"]
       54 GETUPVAL                         R2 1
       55 LOADK                            R4 K1 ["AssetSearch"]
       56 LOADK                            R5 K13 ["SourceFolder"]
       57 NAMECALL                         R2 R2 K5 ["getText"]
       59 CALL                             R2 3 1
       60 SETTABLEKS                       R2 R1 K13 ["SourceFolder"]
       62 GETUPVAL                         R2 1
       63 LOADK                            R4 K1 ["AssetSearch"]
       64 LOADK                            R5 K14 ["SourceInventory"]
       65 NAMECALL                         R2 R2 K5 ["getText"]
       67 CALL                             R2 3 1
       68 SETTABLEKS                       R2 R1 K14 ["SourceInventory"]
       70 GETUPVAL                         R2 1
       71 LOADK                            R4 K1 ["AssetSearch"]
       72 LOADK                            R5 K15 ["SourceStore"]
       73 NAMECALL                         R2 R2 K5 ["getText"]
       75 CALL                             R2 3 1
       76 SETTABLEKS                       R2 R1 K15 ["SourceStore"]
       78 GETUPVAL                         R2 1
       79 LOADK                            R4 K1 ["AssetSearch"]
       80 LOADK                            R5 K16 ["SourceFree"]
       81 NAMECALL                         R2 R2 K5 ["getText"]
       83 CALL                             R2 3 1
       84 SETTABLEKS                       R2 R1 K16 ["SourceFree"]
       86 GETUPVAL                         R2 1
       87 LOADK                            R4 K1 ["AssetSearch"]
       88 LOADK                            R5 K17 ["NoResults"]
       89 NAMECALL                         R2 R2 K5 ["getText"]
       91 CALL                             R2 3 1
       92 SETTABLEKS                       R2 R1 K17 ["NoResults"]
       94 GETUPVAL                         R2 1
       95 LOADK                            R4 K1 ["AssetSearch"]
       96 LOADK                            R5 K18 ["ClickToInsertOrPurchase"]
       97 NAMECALL                         R2 R2 K5 ["getText"]
       99 CALL                             R2 3 1
      100 SETTABLEKS                       R2 R1 K18 ["ClickToInsertOrPurchase"]
      102 GETUPVAL                         R2 1
      103 LOADK                            R4 K1 ["AssetSearch"]
      104 LOADK                            R5 K19 ["ClickToInsert"]
      105 NAMECALL                         R2 R2 K5 ["getText"]
      107 CALL                             R2 3 1
      108 SETTABLEKS                       R2 R1 K19 ["ClickToInsert"]
      110 RETURN                           R1 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Inventory"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+60]
        7 GETTABLEKS                       R1 R0 K2 ["location"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["User"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+5]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K4 ["SourceMine"]
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K2 ["location"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K5 ["Group"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+16]
       25 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       27 JUMPIFEQKNIL                     R1 ; [+8]
       29 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       31 JUMPIFEQKS                       R1 K7 [""] ; [+4]
       33 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       35 RETURN                           R1 1
       36 GETUPVAL                         R1 2
       37 GETTABLEKS                       R1 R1 K8 ["SourceGroup"]
       39 RETURN                           R1 1
       40 GETTABLEKS                       R1 R0 K2 ["location"]
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K9 ["Universe"]
       45 JUMPIFNOTEQ                      R1 R2 ; [+5]
       47 GETUPVAL                         R1 2
       48 GETTABLEKS                       R1 R1 K10 ["SourceGame"]
       50 RETURN                           R1 1
       51 GETTABLEKS                       R1 R0 K2 ["location"]
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K11 ["Folder"]
       56 JUMPIFNOTEQ                      R1 R2 ; [+5]
       58 GETUPVAL                         R1 2
       59 GETTABLEKS                       R1 R1 K12 ["SourceFolder"]
       61 RETURN                           R1 1
       62 GETUPVAL                         R1 2
       63 GETTABLEKS                       R1 R1 K13 ["SourceInventory"]
       65 RETURN                           R1 1
       66 GETTABLEKS                       R1 R0 K0 ["source"]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K14 ["CreatorStore"]
       71 JUMPIFNOTEQ                      R1 R2 ; [+18]
       73 GETTABLEKS                       R1 R0 K15 ["priceLabel"]
       75 JUMPIFNOT                        R1 ; [+3]
       76 GETTABLEKS                       R1 R0 K15 ["priceLabel"]
       78 RETURN                           R1 1
       79 GETTABLEKS                       R1 R0 K16 ["isFree"]
       81 JUMPIFNOT                        R1 ; [+4]
       82 GETUPVAL                         R1 2
       83 GETTABLEKS                       R1 R1 K17 ["SourceFree"]
       85 RETURN                           R1 1
       86 GETUPVAL                         R1 2
       87 GETTABLEKS                       R1 R1 K18 ["SourceStore"]
       89 RETURN                           R1 1
       90 LOADK                            R1 K7 [""]
       91 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R5
        8 CALL                             R6 1 1
        9 GETTABLEKS                       R8 R5 K1 ["assetId"]
       11 ORK                              R7 R8 K0 [""]
       12 GETUPVAL                         R10 2
       13 GETTABLE                         R9 R10 R7
       14 JUMPIFEQKB                       R9 TRUE ; [+2]
       16 LOADB                            R8 0 +1
       17 LOADB                            R8 1
       18 LOADK                            R10 K2 ["Item-%*"]
       19 MOVE                             R12 R4
       20 NAMECALL                         R10 R10 K3 ["format"]
       22 CALL                             R10 2 1
       23 MOVE                             R9 R10
       24 GETUPVAL                         R10 3
       25 GETUPVAL                         R11 4
       26 DUPTABLE                         R12 K8 [{["tag"] = "col align-x-center gap-xxsmall auto-y", ["Size"], ["LayoutOrder"]}]
       27 GETIMPORT                        R13 K11 [UDim2.fromOffset]
       29 LOADN                            R14 70
       30 LOADN                            R15 0
       31 CALL                             R13 2 1
       32 SETTABLEKS                       R13 R12 K6 ["Size"]
       34 SETTABLEKS                       R4 R12 K7 ["LayoutOrder"]
       36 DUPTABLE                         R13 K14 [{"Tile", "Label"}]
       37 GETUPVAL                         R14 3
       38 GETUPVAL                         R15 4
       39 DUPTABLE                         R16 K18 [{["tag"] = "radius-small bg-shift-300 padding-xxsmall", ["Size"], ["onActivated"], ["testId"]}]
       40 GETIMPORT                        R17 K11 [UDim2.fromOffset]
       42 LOADN                            R18 70
       43 LOADN                            R19 70
       44 CALL                             R17 2 1
       45 SETTABLEKS                       R17 R16 K6 ["Size"]
       47 NEWCLOSURE                       R17 P0
       48 CAPTURE                          VAL R8
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R17 R16 K16 ["onActivated"]
       53 GETUPVAL                         R17 6
       54 GETTABLEKS                       R17 R17 K19 ["AssetSearch"]
       56 GETTABLEKS                       R17 R17 K12 ["Tile"]
       58 SETTABLEKS                       R17 R16 K17 ["testId"]
       60 DUPTABLE                         R17 K22 [{"Image", "InsertingOverlay"}]
       61 GETUPVAL                         R18 3
       62 GETUPVAL                         R19 7
       63 DUPTABLE                         R20 K24 [{["tag"] = "position-center-center anchor-center-center size-full-full radius-small", ["Image"]}]
       64 LOADK                            R22 K25 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
       65 MOVE                             R24 R7
       66 NAMECALL                         R22 R22 K3 ["format"]
       68 CALL                             R22 2 1
       69 MOVE                             R21 R22
       70 SETTABLEKS                       R21 R20 K20 ["Image"]
       72 CALL                             R18 2 1
       73 SETTABLEKS                       R18 R17 K20 ["Image"]
       75 MOVE                             R18 R8
       76 JUMPIFNOT                        R18 ; [+10]
       77 GETUPVAL                         R18 3
       78 GETUPVAL                         R19 4
       79 DUPTABLE                         R20 K31 [{["tag"] = "size-full-full position-center-center anchor-center-center radius-small bg-shift-300", ["BackgroundTransparency"] = 0.4, ["ZIndex"] = 2}]
       80 DUPTABLE                         R21 K33 [{"Shimmer"}]
       81 GETUPVAL                         R22 3
       82 GETUPVAL                         R23 8
       83 CALL                             R22 1 1
       84 SETTABLEKS                       R22 R21 K32 ["Shimmer"]
       86 CALL                             R18 3 1
       87 SETTABLEKS                       R18 R17 K21 ["InsertingOverlay"]
       89 CALL                             R14 3 1
       90 SETTABLEKS                       R14 R13 K12 ["Tile"]
       92 LOADB                            R14 0
       93 JUMPIFEQKS                       R6 K0 [""] ; [+7]
       95 GETUPVAL                         R14 3
       96 GETUPVAL                         R15 9
       97 DUPTABLE                         R16 K36 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-center text-truncate-end content-muted", ["Text"]}]
       98 SETTABLEKS                       R6 R16 K35 ["Text"]
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K13 ["Label"]
      103 CALL                             R10 3 1
      104 SETTABLE                         R10 R0 R9
      105 FORGLOOP                         R1 2 ; [-100]
      107 RETURN                           R0 1

PROTO_25:
        0 DUPTABLE                         R0 K9 [{[1], ["AutomaticSize"], ["CanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = True, ["HorizontalScrollBarInset"], ["VerticalScrollBarInset"], ["scrollBarVisibility"]}]
        1 GETIMPORT                        R1 K12 [Enum.AutomaticSize.X]
        3 SETTABLEKS                       R1 R0 K0 ["AutomaticCanvasSize"]
        5 GETIMPORT                        R1 K14 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R1 R0 K1 ["AutomaticSize"]
        9 GETIMPORT                        R1 K17 [UDim2.fromOffset]
       11 LOADN                            R2 0
       12 LOADN                            R3 70
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K2 ["CanvasSize"]
       16 GETIMPORT                        R1 K18 [Enum.ScrollingDirection.X]
       18 SETTABLEKS                       R1 R0 K3 ["ScrollingDirection"]
       20 GETIMPORT                        R1 K21 [Enum.ScrollBarInset.ScrollBar]
       22 SETTABLEKS                       R1 R0 K6 ["HorizontalScrollBarInset"]
       24 GETIMPORT                        R1 K23 [Enum.ScrollBarInset.None]
       26 SETTABLEKS                       R1 R0 K7 ["VerticalScrollBarInset"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K24 ["Enums"]
       31 GETTABLEKS                       R1 R1 K25 ["Visibility"]
       33 GETTABLEKS                       R1 R1 K26 ["Auto"]
       35 SETTABLEKS                       R1 R0 K8 ["scrollBarVisibility"]
       37 RETURN                           R0 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["input"]
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R5 R3 K4 ["query"]
       11 ORK                              R4 R5 K3 [""]
       12 GETTABLEKS                       R5 R3 K5 ["assetType"]
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R6 R2 K6 ["structuredContent"]
       17 JUMPIF                           R6 ; [+1]
       18 LOADNIL                          R6
       19 JUMPIFNOT                        R6 ; [+3]
       20 GETTABLEKS                       R7 R6 K7 ["results"]
       22 JUMPIF                           R7 ; [+2]
       23 NEWTABLE                         R7 0 0
       25 JUMPIFNOT                        R6 ; [+3]
       26 GETTABLEKS                       R8 R6 K8 ["resultCount"]
       28 JUMPIF                           R8 ; [+1]
       29 LENGTH                           R8 R7
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K9 ["useContext"]
       33 GETUPVAL                         R10 2
       34 GETTABLEKS                       R10 R10 K10 ["Context"]
       36 CALL                             R9 1 1
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K11 ["useState"]
       40 NEWTABLE                         R11 0 0
       42 CALL                             R10 1 2
       43 GETUPVAL                         R12 1
       44 GETTABLEKS                       R12 R12 K12 ["useCallback"]
       46 NEWCLOSURE                       R13 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R11
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R14 0 2
       54 MOVE                             R15 R9
       55 GETTABLEKS                       R16 R0 K13 ["sendMessage"]
       57 SETLIST                          R14 R15 2 [1]
       59 CALL                             R12 2 1
       60 GETUPVAL                         R13 1
       61 GETTABLEKS                       R13 R13 K14 ["useMemo"]
       63 NEWCLOSURE                       R14 P1
       64 CAPTURE                          VAL R8
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R4
       67 NEWTABLE                         R15 0 3
       69 GETUPVAL                         R16 5
       70 GETTABLEKS                       R16 R16 K15 ["locale"]
       72 MOVE                             R17 R8
       73 MOVE                             R18 R4
       74 SETLIST                          R15 R16 3 [1]
       76 CALL                             R13 2 1
       77 NEWCLOSURE                       R14 P2
       78 CAPTURE                          UPVAL U6
       79 CAPTURE                          UPVAL U7
       80 CAPTURE                          VAL R13
       81 LOADB                            R15 0
       82 MOVE                             R16 R7
       83 LOADNIL                          R17
       84 LOADNIL                          R18
       85 FORGPREP                         R16
       86 GETTABLEKS                       R21 R20 K16 ["isFree"]
       88 JUMPIFNOTEQKB                    R21 FALSE ; [+3]
       90 LOADB                            R15 1
       91 JUMP                             ; [+2]
       92 FORGLOOP                         R16 2 ; [-7]
       94 LENGTH                           R17 R7
       95 LOADN                            R18 0
       96 JUMPIFLT                         R18 R17 ; [+2]
       98 LOADB                            R16 0 +1
       99 LOADB                            R16 1
      100 GETUPVAL                         R17 1
      101 GETTABLEKS                       R17 R17 K14 ["useMemo"]
      103 NEWCLOSURE                       R18 P3
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R10
      107 CAPTURE                          UPVAL U8
      108 CAPTURE                          UPVAL U9
      109 CAPTURE                          VAL R12
      110 CAPTURE                          UPVAL U10
      111 CAPTURE                          UPVAL U11
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          UPVAL U13
      114 NEWTABLE                         R19 0 3
      116 MOVE                             R20 R7
      117 MOVE                             R21 R12
      118 MOVE                             R22 R10
      119 SETLIST                          R19 R20 3 [1]
      121 CALL                             R17 2 1
      122 GETUPVAL                         R18 1
      123 GETTABLEKS                       R18 R18 K14 ["useMemo"]
      125 DUPCLOSURE                       R19 K17 [PROTO_25]
      126 CAPTURE                          UPVAL U14
      127 NEWTABLE                         R20 0 0
      129 CALL                             R18 2 1
      130 JUMPIFNOT                        R5 ; [+3]
      131 GETUPVAL                         R20 15
      132 GETTABLE                         R19 R20 R5
      133 JUMP                             ; [+1]
      134 LOADNIL                          R19
      135 GETUPVAL                         R20 16
      136 MOVE                             R21 R19
      137 CALL                             R20 1 1
      138 GETUPVAL                         R21 17
      139 CALL                             R21 0 1
      140 GETUPVAL                         R22 8
      141 GETUPVAL                         R23 18
      142 GETTABLEKS                       R23 R23 K18 ["Root"]
      144 DUPTABLE                         R24 K23 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      145 GETTABLEKS                       R25 R0 K19 ["LayoutOrder"]
      147 SETTABLEKS                       R25 R24 K19 ["LayoutOrder"]
      149 GETTABLEKS                       R26 R0 K20 ["expanded"]
      151 JUMPIFEQKNIL                     R26 ; [+4]
      153 GETTABLEKS                       R25 R0 K20 ["expanded"]
      155 JUMP                             ; [+1]
      156 LOADB                            R25 1
      157 SETTABLEKS                       R25 R24 K20 ["expanded"]
      159 GETTABLEKS                       R25 R0 K21 ["contentId"]
      161 SETTABLEKS                       R25 R24 K21 ["contentId"]
      163 GETTABLEKS                       R25 R0 K22 ["editThisContent"]
      165 SETTABLEKS                       R25 R24 K22 ["editThisContent"]
      167 DUPTABLE                         R25 K26 [{"Header", "Content"}]
      168 GETUPVAL                         R26 8
      169 GETUPVAL                         R27 18
      170 GETTABLEKS                       R27 R27 K24 ["Header"]
      172 DUPTABLE                         R28 K28 [{"LayoutOrder", "testId"}]
      173 MOVE                             R29 R21
      174 CALL                             R29 0 1
      175 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      177 GETUPVAL                         R29 10
      178 GETTABLEKS                       R29 R29 K29 ["AssetSearch"]
      180 GETTABLEKS                       R29 R29 K30 ["Expand"]
      182 SETTABLEKS                       R29 R28 K27 ["testId"]
      184 DUPTABLE                         R29 K33 [{"TypeIcon", "Text"}]
      185 LOADB                            R30 0
      186 GETTABLEKS                       R31 R20 K34 ["Image"]
      188 JUMPIFEQKS                       R31 K3 [""] ; [+21]
      190 GETUPVAL                         R30 8
      191 GETUPVAL                         R31 11
      192 DUPTABLE                         R32 K39 [{["tag"] = "size-400-400 radius-small", ["Image"], ["ImageRectOffset"], ["ImageRectSize"], ["LayoutOrder"]}]
      193 GETTABLEKS                       R33 R20 K34 ["Image"]
      195 SETTABLEKS                       R33 R32 K34 ["Image"]
      197 GETTABLEKS                       R33 R20 K37 ["ImageRectOffset"]
      199 SETTABLEKS                       R33 R32 K37 ["ImageRectOffset"]
      201 GETTABLEKS                       R33 R20 K38 ["ImageRectSize"]
      203 SETTABLEKS                       R33 R32 K38 ["ImageRectSize"]
      205 MOVE                             R33 R21
      206 CALL                             R33 0 1
      207 SETTABLEKS                       R33 R32 K19 ["LayoutOrder"]
      209 CALL                             R30 2 1
      210 SETTABLEKS                       R30 R29 K31 ["TypeIcon"]
      212 GETUPVAL                         R30 8
      213 GETUPVAL                         R31 13
      214 DUPTABLE                         R32 K41 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      215 GETTABLEKS                       R33 R13 K42 ["Found"]
      217 SETTABLEKS                       R33 R32 K32 ["Text"]
      219 MOVE                             R33 R21
      220 CALL                             R33 0 1
      221 SETTABLEKS                       R33 R32 K19 ["LayoutOrder"]
      223 CALL                             R30 2 1
      224 SETTABLEKS                       R30 R29 K32 ["Text"]
      226 CALL                             R26 3 1
      227 SETTABLEKS                       R26 R25 K24 ["Header"]
      229 GETUPVAL                         R26 8
      230 GETUPVAL                         R27 18
      231 GETTABLEKS                       R27 R27 K25 ["Content"]
      233 DUPTABLE                         R28 K44 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      234 MOVE                             R29 R21
      235 CALL                             R29 0 1
      236 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      238 DUPTABLE                         R29 K48 [{"MainCarousel", "NoResults", "ClickHint"}]
      239 MOVE                             R30 R16
      240 JUMPIFNOT                        R30 ; [+32]
      241 GETUPVAL                         R30 8
      242 GETUPVAL                         R31 19
      243 DUPTABLE                         R32 K51 [{["tag"] = "size-full-0 auto-y", ["testId"], ["scroll"], ["LayoutOrder"]}]
      244 GETUPVAL                         R33 10
      245 GETTABLEKS                       R33 R33 K52 ["Carousel"]
      247 GETTABLEKS                       R33 R33 K18 ["Root"]
      249 SETTABLEKS                       R33 R32 K27 ["testId"]
      251 SETTABLEKS                       R18 R32 K50 ["scroll"]
      253 MOVE                             R33 R21
      254 CALL                             R33 0 1
      255 SETTABLEKS                       R33 R32 K19 ["LayoutOrder"]
      257 DUPTABLE                         R33 K54 [{"Container"}]
      258 GETUPVAL                         R34 8
      259 GETUPVAL                         R35 9
      260 DUPTABLE                         R36 K56 [{["tag"] = "row gap-small auto-xy padding-bottom-xsmall", ["testId"]}]
      261 GETUPVAL                         R37 10
      262 GETTABLEKS                       R37 R37 K52 ["Carousel"]
      264 GETTABLEKS                       R37 R37 K53 ["Container"]
      266 SETTABLEKS                       R37 R36 K27 ["testId"]
      268 MOVE                             R37 R17
      269 CALL                             R34 3 1
      270 SETTABLEKS                       R34 R33 K53 ["Container"]
      272 CALL                             R30 3 1
      273 SETTABLEKS                       R30 R29 K45 ["MainCarousel"]
      275 NOT                              R30 R16
      276 JUMPIFNOT                        R30 ; [+12]
      277 GETUPVAL                         R30 8
      278 GETUPVAL                         R31 13
      279 DUPTABLE                         R32 K58 [{["tag"] = "size-0-0 auto-xy text-body-small content-muted", ["Text"], ["LayoutOrder"]}]
      280 GETTABLEKS                       R33 R13 K46 ["NoResults"]
      282 SETTABLEKS                       R33 R32 K32 ["Text"]
      284 MOVE                             R33 R21
      285 CALL                             R33 0 1
      286 SETTABLEKS                       R33 R32 K19 ["LayoutOrder"]
      288 CALL                             R30 2 1
      289 SETTABLEKS                       R30 R29 K46 ["NoResults"]
      291 MOVE                             R30 R16
      292 JUMPIFNOT                        R30 ; [+16]
      293 GETUPVAL                         R30 8
      294 GETUPVAL                         R31 13
      295 DUPTABLE                         R32 K58 [{["tag"] = "size-0-0 auto-xy text-body-small content-muted", ["Text"], ["LayoutOrder"]}]
      296 JUMPIFNOT                        R15 ; [+3]
      297 GETTABLEKS                       R33 R13 K59 ["ClickToInsertOrPurchase"]
      299 JUMP                             ; [+2]
      300 GETTABLEKS                       R33 R13 K60 ["ClickToInsert"]
      302 SETTABLEKS                       R33 R32 K32 ["Text"]
      304 MOVE                             R33 R21
      305 CALL                             R33 0 1
      306 SETTABLEKS                       R33 R32 K19 ["LayoutOrder"]
      308 CALL                             R30 2 1
      309 SETTABLEKS                       R30 R29 K47 ["ClickHint"]
      311 CALL                             R26 3 1
      312 SETTABLEKS                       R26 R25 K25 ["Content"]
      314 CALL                             R22 3 -1
      315 RETURN                           R22 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_28:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R3 1
        3 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        5 MOVE                             R4 R1
        6 GETIMPORT                        R2 K2 [table.insert]
        8 CALL                             R2 2 0
        9 NEWCLOSURE                       R0 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQKNIL                     R1 ; [+17]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["sessionId"]
        7 JUMPIFNOTEQ                      R1 R0 ; [+12]
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 1
       11 GETUPVAL                         R1 2
       12 LOADNIL                          R2
       13 LOADNIL                          R3
       14 FORGPREP                         R1
       15 MOVE                             R6 R5
       16 GETUPVAL                         R7 1
       17 CALL                             R6 1 0
       18 FORGLOOP                         R1 2 ; [-4]
       20 RETURN                           R0 0

PROTO_30:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+39]
        5 GETTABLEKS                       R2 R1 K1 ["http"]
        7 JUMPIFNOT                        R2 ; [+36]
        8 GETTABLEKS                       R2 R1 K1 ["http"]
       10 GETTABLEKS                       R2 R2 K2 ["openUrl"]
       12 JUMPIFNOT                        R2 ; [+31]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["FFlagAssistantAssetSearchCreatorStoreUtm"]
       16 JUMPIFNOT                        R2 ; [+14]
       17 GETTABLEKS                       R2 R1 K1 ["http"]
       19 GETTABLEKS                       R2 R2 K2 ["openUrl"]
       21 LOADK                            R4 K4 ["https://create.roblox.com/store/asset/%*?utm_source=StudioAssistant"]
       22 GETTABLEKS                       R7 R0 K6 ["assetId"]
       24 ORK                              R6 R7 K5 [""]
       25 NAMECALL                         R4 R4 K7 ["format"]
       27 CALL                             R4 2 1
       28 MOVE                             R3 R4
       29 CALL                             R2 1 0
       30 RETURN                           R0 0
       31 GETTABLEKS                       R2 R1 K1 ["http"]
       33 GETTABLEKS                       R2 R2 K2 ["openUrl"]
       35 LOADK                            R4 K8 ["https://create.roblox.com/store/asset/%*"]
       36 GETTABLEKS                       R7 R0 K6 ["assetId"]
       38 ORK                              R6 R7 K5 [""]
       39 NAMECALL                         R4 R4 K7 ["format"]
       41 CALL                             R4 2 1
       42 MOVE                             R3 R4
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssetAsync"]
        3 DUPTABLE                         R1 K4 [{"assetId", "assetName", "assetType"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["assetId"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K5 ["name"]
       10 SETTABLEKS                       R2 R1 K2 ["assetName"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["assetType"]
       15 SETTABLEKS                       R2 R1 K3 ["assetType"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 LOADNIL                          R3
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R1 1

PROTO_35:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_36:
        0 LOADNIL                          R1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R6 R5
        7 GETUPVAL                         R7 0
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 GETTABLEKS                       R1 R0 K0 ["isFree"]
       13 JUMPIFNOTEQKB                    R1 FALSE ; [+5]
       15 GETUPVAL                         R1 2
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 3
       20 JUMPIF                           R1 ; [+1]
       21 RETURN                           R0 0
       22 GETTABLEKS                       R1 R0 K1 ["assetId"]
       24 JUMPIF                           R1 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K2 ["FFlagAssistantAssetSearchDirectInsert"]
       29 JUMPIFNOT                        R2 ; [+13]
       30 GETUPVAL                         R2 5
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          VAL R1
       33 CALL                             R2 1 0
       34 GETIMPORT                        R2 K5 [task.spawn]
       36 NEWCLOSURE                       R3 P1
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U5
       41 CALL                             R2 1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R2 6
       44 GETTABLEKS                       R2 R2 K6 ["sendMessage"]
       46 DUPTABLE                         R3 K10 [{["text"], ["hidden"] = True}]
       47 LOADK                            R5 K11 ["Please insert asset %* (\"%*\") using insert_asset. Asset type: %*."]
       48 MOVE                             R7 R1
       49 GETTABLEKS                       R9 R0 K13 ["name"]
       51 ORK                              R8 R9 K12 [""]
       52 GETTABLEKS                       R10 R0 K14 ["assetType"]
       54 ORK                              R9 R10 K12 [""]
       55 NAMECALL                         R5 R5 K15 ["format"]
       57 CALL                             R5 4 1
       58 MOVE                             R4 R5
       59 SETTABLEKS                       R4 R3 K7 ["text"]
       61 CALL                             R2 1 0
       62 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+22]
        3 GETTABLEKS                       R2 R1 K0 ["assetId"]
        5 JUMPIFNOTEQ                      R2 R0 ; [+18]
        7 GETTABLEKS                       R2 R1 K1 ["sessionId"]
        9 GETUPVAL                         R3 1
       10 JUMPIFNOTEQ                      R2 R3 ; [+13]
       12 LOADNIL                          R2
       13 SETUPVAL                         R2 0
       14 GETUPVAL                         R2 2
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 MOVE                             R7 R6
       19 GETUPVAL                         R8 0
       20 CALL                             R7 1 0
       21 FORGLOOP                         R2 2 ; [-4]
       23 RETURN                           R0 0
       24 DUPTABLE                         R2 K2 [{"assetId", "sessionId"}]
       25 SETTABLEKS                       R0 R2 K0 ["assetId"]
       27 GETUPVAL                         R3 1
       28 SETTABLEKS                       R3 R2 K1 ["sessionId"]
       30 SETUPVAL                         R2 0
       31 GETUPVAL                         R3 2
       32 LOADNIL                          R4
       33 LOADNIL                          R5
       34 FORGPREP                         R3
       35 MOVE                             R8 R7
       36 GETUPVAL                         R9 0
       37 CALL                             R8 1 0
       38 FORGLOOP                         R3 2 ; [-4]
       40 RETURN                           R0 0

PROTO_38:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R4
        7 GETUPVAL                         R6 0
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQKNIL                     R1 ; [+17]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["sessionId"]
        7 JUMPIFNOTEQ                      R1 R0 ; [+12]
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 1
       11 GETUPVAL                         R1 2
       12 LOADNIL                          R2
       13 LOADNIL                          R3
       14 FORGPREP                         R1
       15 MOVE                             R6 R5
       16 GETUPVAL                         R7 1
       17 CALL                             R6 1 0
       18 FORGLOOP                         R1 2 ; [-4]
       20 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 JUMPIFNOTEQKNIL                  R0 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R1 R0 K1 ["IsLoaded"]
       11 JUMPIF                           R1 ; [+2]
       12 GETUPVAL                         R1 2
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_41:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 LOADB                            R0 0
        6 GETIMPORT                        R1 K2 [task.delay]
        8 LOADN                            R2 10
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          REF R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CALL                             R1 2 0
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          REF R0
       16 CLOSEUPVALS                      R0
       17 RETURN                           R1 1

PROTO_43:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOTEQKS                    R1 K0 [""] ; [+13]
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["AssetSearch"]
        6 LOADK                            R4 K2 ["Found"]
        7 DUPTABLE                         R5 K4 [{"count"}]
        8 GETUPVAL                         R6 2
        9 SETTABLEKS                       R6 R5 K3 ["count"]
       11 NAMECALL                         R1 R1 K5 ["getText"]
       13 CALL                             R1 4 1
       14 MOVE                             R0 R1
       15 JUMP                             ; [+29]
       16 GETUPVAL                         R1 2
       17 JUMPIFNOTEQKN                    R1 K6 [1] ; [+13]
       19 GETUPVAL                         R1 1
       20 LOADK                            R3 K1 ["AssetSearch"]
       21 LOADK                            R4 K7 ["FoundSingularWithQuery"]
       22 DUPTABLE                         R5 K9 [{"query"}]
       23 GETUPVAL                         R6 0
       24 SETTABLEKS                       R6 R5 K8 ["query"]
       26 NAMECALL                         R1 R1 K5 ["getText"]
       28 CALL                             R1 4 1
       29 MOVE                             R0 R1
       30 JUMP                             ; [+14]
       31 GETUPVAL                         R1 1
       32 LOADK                            R3 K1 ["AssetSearch"]
       33 LOADK                            R4 K10 ["FoundWithQuery"]
       34 DUPTABLE                         R5 K11 [{"count", "query"}]
       35 GETUPVAL                         R6 2
       36 SETTABLEKS                       R6 R5 K3 ["count"]
       38 GETUPVAL                         R6 0
       39 SETTABLEKS                       R6 R5 K8 ["query"]
       41 NAMECALL                         R1 R1 K5 ["getText"]
       43 CALL                             R1 4 1
       44 MOVE                             R0 R1
       45 DUPTABLE                         R1 K22 [{"Found", "SourceMine", "SourceGroup", "SourceGame", "SourceFolder", "SourceInventory", "SourceStore", "SourceFree", "NoResults", "ClickToInsertOrPurchase", "ClickToInsert"}]
       46 SETTABLEKS                       R0 R1 K2 ["Found"]
       48 GETUPVAL                         R2 1
       49 LOADK                            R4 K1 ["AssetSearch"]
       50 LOADK                            R5 K12 ["SourceMine"]
       51 NAMECALL                         R2 R2 K5 ["getText"]
       53 CALL                             R2 3 1
       54 SETTABLEKS                       R2 R1 K12 ["SourceMine"]
       56 GETUPVAL                         R2 1
       57 LOADK                            R4 K1 ["AssetSearch"]
       58 LOADK                            R5 K13 ["SourceGroup"]
       59 NAMECALL                         R2 R2 K5 ["getText"]
       61 CALL                             R2 3 1
       62 SETTABLEKS                       R2 R1 K13 ["SourceGroup"]
       64 GETUPVAL                         R2 1
       65 LOADK                            R4 K1 ["AssetSearch"]
       66 LOADK                            R5 K14 ["SourceGame"]
       67 NAMECALL                         R2 R2 K5 ["getText"]
       69 CALL                             R2 3 1
       70 SETTABLEKS                       R2 R1 K14 ["SourceGame"]
       72 GETUPVAL                         R2 1
       73 LOADK                            R4 K1 ["AssetSearch"]
       74 LOADK                            R5 K15 ["SourceFolder"]
       75 NAMECALL                         R2 R2 K5 ["getText"]
       77 CALL                             R2 3 1
       78 SETTABLEKS                       R2 R1 K15 ["SourceFolder"]
       80 GETUPVAL                         R2 1
       81 LOADK                            R4 K1 ["AssetSearch"]
       82 LOADK                            R5 K16 ["SourceInventory"]
       83 NAMECALL                         R2 R2 K5 ["getText"]
       85 CALL                             R2 3 1
       86 SETTABLEKS                       R2 R1 K16 ["SourceInventory"]
       88 GETUPVAL                         R2 1
       89 LOADK                            R4 K1 ["AssetSearch"]
       90 LOADK                            R5 K17 ["SourceStore"]
       91 NAMECALL                         R2 R2 K5 ["getText"]
       93 CALL                             R2 3 1
       94 SETTABLEKS                       R2 R1 K17 ["SourceStore"]
       96 GETUPVAL                         R2 1
       97 LOADK                            R4 K1 ["AssetSearch"]
       98 LOADK                            R5 K18 ["SourceFree"]
       99 NAMECALL                         R2 R2 K5 ["getText"]
      101 CALL                             R2 3 1
      102 SETTABLEKS                       R2 R1 K18 ["SourceFree"]
      104 GETUPVAL                         R2 1
      105 LOADK                            R4 K1 ["AssetSearch"]
      106 LOADK                            R5 K19 ["NoResults"]
      107 NAMECALL                         R2 R2 K5 ["getText"]
      109 CALL                             R2 3 1
      110 SETTABLEKS                       R2 R1 K19 ["NoResults"]
      112 GETUPVAL                         R2 1
      113 LOADK                            R4 K1 ["AssetSearch"]
      114 LOADK                            R5 K20 ["ClickToInsertOrPurchase"]
      115 NAMECALL                         R2 R2 K5 ["getText"]
      117 CALL                             R2 3 1
      118 SETTABLEKS                       R2 R1 K20 ["ClickToInsertOrPurchase"]
      120 GETUPVAL                         R2 1
      121 LOADK                            R4 K1 ["AssetSearch"]
      122 LOADK                            R5 K21 ["ClickToInsert"]
      123 NAMECALL                         R2 R2 K5 ["getText"]
      125 CALL                             R2 3 1
      126 SETTABLEKS                       R2 R1 K21 ["ClickToInsert"]
      128 RETURN                           R1 1

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["CreatorStore"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+18]
        7 GETTABLEKS                       R1 R0 K2 ["priceLabel"]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R1 R0 K2 ["priceLabel"]
       12 RETURN                           R1 1
       13 GETTABLEKS                       R1 R0 K3 ["isFree"]
       15 JUMPIFNOT                        R1 ; [+4]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K4 ["SourceFree"]
       19 RETURN                           R1 1
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K5 ["SourceStore"]
       23 RETURN                           R1 1
       24 LOADK                            R1 K6 [""]
       25 RETURN                           R1 1

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Inventory"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+60]
        7 GETTABLEKS                       R1 R0 K2 ["location"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["User"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+5]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K4 ["SourceMine"]
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K2 ["location"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K5 ["Group"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+16]
       25 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       27 JUMPIFEQKNIL                     R1 ; [+8]
       29 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       31 JUMPIFEQKS                       R1 K7 [""] ; [+4]
       33 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       35 RETURN                           R1 1
       36 GETUPVAL                         R1 2
       37 GETTABLEKS                       R1 R1 K8 ["SourceGroup"]
       39 RETURN                           R1 1
       40 GETTABLEKS                       R1 R0 K2 ["location"]
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K9 ["Universe"]
       45 JUMPIFNOTEQ                      R1 R2 ; [+5]
       47 GETUPVAL                         R1 2
       48 GETTABLEKS                       R1 R1 K10 ["SourceGame"]
       50 RETURN                           R1 1
       51 GETTABLEKS                       R1 R0 K2 ["location"]
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K11 ["Folder"]
       56 JUMPIFNOTEQ                      R1 R2 ; [+5]
       58 GETUPVAL                         R1 2
       59 GETTABLEKS                       R1 R1 K12 ["SourceFolder"]
       61 RETURN                           R1 1
       62 GETUPVAL                         R1 2
       63 GETTABLEKS                       R1 R1 K13 ["SourceInventory"]
       65 RETURN                           R1 1
       66 GETTABLEKS                       R1 R0 K0 ["source"]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K14 ["CreatorStore"]
       71 JUMPIFNOTEQ                      R1 R2 ; [+12]
       73 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       75 JUMPIFEQKNIL                     R1 ; [+8]
       77 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       79 JUMPIFEQKS                       R1 K7 [""] ; [+4]
       81 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       83 RETURN                           R1 1
       84 LOADK                            R1 K7 [""]
       85 RETURN                           R1 1

PROTO_46:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R7 R5 K1 ["assetId"]
        8 ORK                              R6 R7 K0 [""]
        9 GETUPVAL                         R9 1
       10 GETTABLE                         R8 R9 R6
       11 JUMPIFEQKB                       R8 TRUE ; [+2]
       13 LOADB                            R7 0 +1
       14 LOADB                            R7 1
       15 GETTABLEKS                       R9 R5 K2 ["assetType"]
       17 JUMPIFEQKS                       R9 K3 ["Audio"] ; [+2]
       19 LOADB                            R8 0 +1
       20 LOADB                            R8 1
       21 GETTABLEKS                       R10 R5 K2 ["assetType"]
       23 JUMPIFEQKS                       R10 K4 ["Package"] ; [+2]
       25 LOADB                            R9 0 +1
       26 LOADB                            R9 1
       27 MOVE                             R10 R8
       28 JUMPIFNOT                        R10 ; [+12]
       29 LOADB                            R10 0
       30 GETTABLEKS                       R11 R5 K1 ["assetId"]
       32 JUMPIFEQKNIL                     R11 ; [+8]
       34 GETUPVAL                         R11 2
       35 GETTABLEKS                       R12 R5 K1 ["assetId"]
       37 JUMPIFEQ                         R11 R12 ; [+2]
       39 LOADB                            R10 0 +1
       40 LOADB                            R10 1
       41 LOADK                            R12 K5 ["Item-%*"]
       42 MOVE                             R14 R4
       43 NAMECALL                         R12 R12 K6 ["format"]
       45 CALL                             R12 2 1
       46 MOVE                             R11 R12
       47 GETUPVAL                         R12 3
       48 GETUPVAL                         R13 4
       49 DUPTABLE                         R14 K20 [{"item", "layoutOrder", "padding", "isInserting", "isAudio", "isPackage", "isPlayingThis", "priceLabel", "ownerLabel", "onItemClicked", "onItemDetailsClicked", "togglePreview", "stopPreview"}]
       50 SETTABLEKS                       R5 R14 K7 ["item"]
       52 SETTABLEKS                       R4 R14 K8 ["layoutOrder"]
       54 GETUPVAL                         R15 5
       55 SETTABLEKS                       R15 R14 K9 ["padding"]
       57 SETTABLEKS                       R7 R14 K10 ["isInserting"]
       59 SETTABLEKS                       R8 R14 K11 ["isAudio"]
       61 SETTABLEKS                       R9 R14 K12 ["isPackage"]
       63 SETTABLEKS                       R10 R14 K13 ["isPlayingThis"]
       65 GETTABLEKS                       R16 R5 K21 ["source"]
       67 GETUPVAL                         R17 6
       68 GETTABLEKS                       R17 R17 K22 ["CreatorStore"]
       70 JUMPIFNOTEQ                      R16 R17 ; [+18]
       72 GETTABLEKS                       R16 R5 K14 ["priceLabel"]
       74 JUMPIFNOT                        R16 ; [+3]
       75 GETTABLEKS                       R15 R5 K14 ["priceLabel"]
       77 JUMP                             ; [+12]
       78 GETTABLEKS                       R16 R5 K23 ["isFree"]
       80 JUMPIFNOT                        R16 ; [+4]
       81 GETUPVAL                         R15 7
       82 GETTABLEKS                       R15 R15 K24 ["SourceFree"]
       84 JUMP                             ; [+5]
       85 GETUPVAL                         R15 7
       86 GETTABLEKS                       R15 R15 K25 ["SourceStore"]
       88 JUMP                             ; [+1]
       89 LOADK                            R15 K0 [""]
       90 SETTABLEKS                       R15 R14 K14 ["priceLabel"]
       92 GETUPVAL                         R15 8
       93 MOVE                             R16 R5
       94 CALL                             R15 1 1
       95 SETTABLEKS                       R15 R14 K15 ["ownerLabel"]
       97 GETUPVAL                         R15 9
       98 SETTABLEKS                       R15 R14 K16 ["onItemClicked"]
      100 GETUPVAL                         R15 10
      101 SETTABLEKS                       R15 R14 K17 ["onItemDetailsClicked"]
      103 GETUPVAL                         R15 11
      104 SETTABLEKS                       R15 R14 K18 ["togglePreview"]
      106 GETUPVAL                         R15 12
      107 SETTABLEKS                       R15 R14 K19 ["stopPreview"]
      109 CALL                             R12 2 1
      110 SETTABLE                         R12 R0 R11
      111 FORGLOOP                         R1 2 ; [-106]
      113 RETURN                           R0 1

PROTO_47:
        0 DUPTABLE                         R0 K9 [{[1], ["AutomaticSize"], ["CanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = True, ["HorizontalScrollBarInset"], ["VerticalScrollBarInset"], ["scrollBarVisibility"]}]
        1 GETIMPORT                        R1 K12 [Enum.AutomaticSize.X]
        3 SETTABLEKS                       R1 R0 K0 ["AutomaticCanvasSize"]
        5 GETIMPORT                        R1 K14 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R1 R0 K1 ["AutomaticSize"]
        9 GETIMPORT                        R1 K17 [UDim2.fromOffset]
       11 LOADN                            R2 0
       12 LOADN                            R3 80
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K2 ["CanvasSize"]
       16 GETIMPORT                        R1 K18 [Enum.ScrollingDirection.X]
       18 SETTABLEKS                       R1 R0 K3 ["ScrollingDirection"]
       20 GETIMPORT                        R1 K21 [Enum.ScrollBarInset.ScrollBar]
       22 SETTABLEKS                       R1 R0 K6 ["HorizontalScrollBarInset"]
       24 GETIMPORT                        R1 K23 [Enum.ScrollBarInset.None]
       26 SETTABLEKS                       R1 R0 K7 ["VerticalScrollBarInset"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K24 ["Enums"]
       31 GETTABLEKS                       R1 R1 K25 ["Visibility"]
       33 GETTABLEKS                       R1 R1 K26 ["Auto"]
       35 SETTABLEKS                       R1 R0 K8 ["scrollBarVisibility"]
       37 RETURN                           R0 1

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["input"]
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R5 R3 K4 ["query"]
       11 ORK                              R4 R5 K3 [""]
       12 GETTABLEKS                       R5 R3 K5 ["assetType"]
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R6 R2 K6 ["structuredContent"]
       17 JUMPIF                           R6 ; [+1]
       18 LOADNIL                          R6
       19 JUMPIFNOT                        R6 ; [+3]
       20 GETTABLEKS                       R7 R6 K7 ["results"]
       22 JUMPIF                           R7 ; [+2]
       23 NEWTABLE                         R7 0 0
       25 JUMPIFNOT                        R6 ; [+3]
       26 GETTABLEKS                       R8 R6 K8 ["resultCount"]
       28 JUMPIF                           R8 ; [+1]
       29 LENGTH                           R8 R7
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K9 ["useContext"]
       33 GETUPVAL                         R10 2
       34 GETTABLEKS                       R10 R10 K10 ["Context"]
       36 CALL                             R9 1 1
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K11 ["useState"]
       40 NEWTABLE                         R11 0 0
       42 CALL                             R10 1 2
       43 GETUPVAL                         R12 3
       44 GETTABLEKS                       R12 R12 K12 ["Hooks"]
       46 GETTABLEKS                       R12 R12 K13 ["useTokens"]
       48 CALL                             R12 0 1
       49 GETTABLEKS                       R13 R12 K14 ["Padding"]
       51 GETTABLEKS                       R13 R13 K15 ["XXSmall"]
       53 GETUPVAL                         R14 1
       54 GETTABLEKS                       R14 R14 K16 ["useRef"]
       56 LOADNIL                          R15
       57 CALL                             R14 1 1
       58 GETTABLEKS                       R15 R14 K17 ["current"]
       60 JUMPIFNOTEQKNIL                  R15 ; [+11]
       62 GETUPVAL                         R17 4
       63 ADDK                             R16 R17 K18 [1]
       64 SETUPVAL                         R16 4
       65 GETUPVAL                         R16 4
       66 FASTCALL1                        TOSTRING R16 ; [+2]
       67 GETIMPORT                        R15 K20 [tostring]
       69 CALL                             R15 1 1
       70 SETTABLEKS                       R15 R14 K17 ["current"]
       72 GETTABLEKS                       R15 R14 K17 ["current"]
       74 GETUPVAL                         R16 1
       75 GETTABLEKS                       R16 R16 K11 ["useState"]
       77 GETUPVAL                         R17 5
       78 CALL                             R16 1 2
       79 GETUPVAL                         R18 1
       80 GETTABLEKS                       R18 R18 K21 ["useEffect"]
       82 NEWCLOSURE                       R19 P0
       83 CAPTURE                          VAL R17
       84 CAPTURE                          UPVAL U6
       85 NEWTABLE                         R20 0 0
       87 CALL                             R18 2 0
       88 GETUPVAL                         R18 1
       89 GETTABLEKS                       R18 R18 K21 ["useEffect"]
       91 NEWCLOSURE                       R19 P1
       92 CAPTURE                          VAL R15
       93 CAPTURE                          UPVAL U5
       94 CAPTURE                          UPVAL U6
       95 NEWTABLE                         R20 0 1
       97 MOVE                             R21 R15
       98 SETLIST                          R20 R21 1 [1]
      100 CALL                             R18 2 0
      101 JUMPIFEQKNIL                     R16 ; [+8]
      103 GETTABLEKS                       R19 R16 K22 ["sessionId"]
      105 JUMPIFNOTEQ                      R19 R15 ; [+4]
      107 GETTABLEKS                       R18 R16 K23 ["assetId"]
      109 JUMP                             ; [+1]
      110 LOADNIL                          R18
      111 GETUPVAL                         R19 1
      112 GETTABLEKS                       R19 R19 K24 ["useCallback"]
      114 DUPCLOSURE                       R20 K25 [PROTO_31]
      115 CAPTURE                          UPVAL U7
      116 CAPTURE                          UPVAL U8
      117 NEWTABLE                         R21 0 0
      119 CALL                             R19 2 1
      120 GETUPVAL                         R20 1
      121 GETTABLEKS                       R20 R20 K24 ["useCallback"]
      123 NEWCLOSURE                       R21 P3
      124 CAPTURE                          UPVAL U5
      125 CAPTURE                          UPVAL U6
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R9
      128 CAPTURE                          UPVAL U8
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R0
      131 NEWTABLE                         R22 0 2
      133 MOVE                             R23 R9
      134 GETTABLEKS                       R24 R0 K26 ["sendMessage"]
      136 SETLIST                          R22 R23 2 [1]
      138 CALL                             R20 2 1
      139 GETUPVAL                         R21 1
      140 GETTABLEKS                       R21 R21 K24 ["useCallback"]
      142 NEWCLOSURE                       R22 P4
      143 CAPTURE                          UPVAL U5
      144 CAPTURE                          VAL R15
      145 CAPTURE                          UPVAL U6
      146 NEWTABLE                         R23 0 1
      148 MOVE                             R24 R15
      149 SETLIST                          R23 R24 1 [1]
      151 CALL                             R21 2 1
      152 GETUPVAL                         R22 1
      153 GETTABLEKS                       R22 R22 K24 ["useCallback"]
      155 NEWCLOSURE                       R23 P5
      156 CAPTURE                          UPVAL U5
      157 CAPTURE                          UPVAL U6
      158 NEWTABLE                         R24 0 0
      160 CALL                             R22 2 1
      161 GETUPVAL                         R23 1
      162 GETTABLEKS                       R23 R23 K24 ["useCallback"]
      164 NEWCLOSURE                       R24 P6
      165 CAPTURE                          VAL R15
      166 CAPTURE                          UPVAL U5
      167 CAPTURE                          UPVAL U6
      168 NEWTABLE                         R25 0 1
      170 MOVE                             R26 R15
      171 SETLIST                          R25 R26 1 [1]
      173 CALL                             R23 2 1
      174 GETUPVAL                         R24 1
      175 GETTABLEKS                       R24 R24 K16 ["useRef"]
      177 LOADNIL                          R25
      178 CALL                             R24 1 1
      179 GETUPVAL                         R25 1
      180 GETTABLEKS                       R25 R25 K21 ["useEffect"]
      182 NEWCLOSURE                       R26 P7
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R23
      186 NEWTABLE                         R27 0 2
      188 MOVE                             R28 R18
      189 MOVE                             R29 R23
      190 SETLIST                          R27 R28 2 [1]
      192 CALL                             R25 2 0
      193 LOADB                            R25 0
      194 MOVE                             R26 R7
      195 LOADNIL                          R27
      196 LOADNIL                          R28
      197 FORGPREP                         R26
      198 GETTABLEKS                       R31 R30 K27 ["isFree"]
      200 JUMPIFNOTEQKB                    R31 FALSE ; [+3]
      202 LOADB                            R25 1
      203 JUMP                             ; [+2]
      204 FORGLOOP                         R26 2 ; [-7]
      206 LENGTH                           R27 R7
      207 LOADN                            R28 0
      208 JUMPIFLT                         R28 R27 ; [+2]
      210 LOADB                            R26 0 +1
      211 LOADB                            R26 1
      212 GETUPVAL                         R27 1
      213 GETTABLEKS                       R27 R27 K28 ["useMemo"]
      215 NEWCLOSURE                       R28 P8
      216 CAPTURE                          VAL R4
      217 CAPTURE                          UPVAL U9
      218 CAPTURE                          VAL R8
      219 NEWTABLE                         R29 0 3
      221 GETUPVAL                         R30 9
      222 GETTABLEKS                       R30 R30 K29 ["locale"]
      224 MOVE                             R31 R8
      225 MOVE                             R32 R4
      226 SETLIST                          R29 R30 3 [1]
      228 CALL                             R27 2 1
      229 NEWCLOSURE                       R28 P9
      230 CAPTURE                          UPVAL U10
      231 CAPTURE                          VAL R27
      232 NEWCLOSURE                       R29 P10
      233 CAPTURE                          UPVAL U10
      234 CAPTURE                          UPVAL U11
      235 CAPTURE                          VAL R27
      236 GETUPVAL                         R30 1
      237 GETTABLEKS                       R30 R30 K28 ["useMemo"]
      239 NEWCLOSURE                       R31 P11
      240 CAPTURE                          VAL R7
      241 CAPTURE                          VAL R10
      242 CAPTURE                          VAL R18
      243 CAPTURE                          UPVAL U12
      244 CAPTURE                          UPVAL U13
      245 CAPTURE                          VAL R13
      246 CAPTURE                          UPVAL U10
      247 CAPTURE                          VAL R27
      248 CAPTURE                          VAL R29
      249 CAPTURE                          VAL R20
      250 CAPTURE                          VAL R19
      251 CAPTURE                          VAL R21
      252 CAPTURE                          VAL R22
      253 NEWTABLE                         R32 0 9
      255 MOVE                             R33 R7
      256 MOVE                             R34 R20
      257 MOVE                             R35 R19
      258 MOVE                             R36 R10
      259 MOVE                             R37 R13
      260 MOVE                             R38 R18
      261 MOVE                             R39 R21
      262 MOVE                             R40 R22
      263 MOVE                             R41 R27
      264 SETLIST                          R32 R33 9 [1]
      266 CALL                             R30 2 1
      267 GETUPVAL                         R31 1
      268 GETTABLEKS                       R31 R31 K28 ["useMemo"]
      270 DUPCLOSURE                       R32 K30 [PROTO_47]
      271 CAPTURE                          UPVAL U3
      272 NEWTABLE                         R33 0 0
      274 CALL                             R31 2 1
      275 JUMPIFNOT                        R5 ; [+3]
      276 GETUPVAL                         R33 14
      277 GETTABLE                         R32 R33 R5
      278 JUMP                             ; [+1]
      279 LOADNIL                          R32
      280 GETUPVAL                         R33 15
      281 MOVE                             R34 R32
      282 CALL                             R33 1 1
      283 GETUPVAL                         R34 16
      284 CALL                             R34 0 1
      285 GETUPVAL                         R35 12
      286 GETUPVAL                         R36 17
      287 GETTABLEKS                       R36 R36 K31 ["Root"]
      289 DUPTABLE                         R37 K36 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      290 GETTABLEKS                       R38 R0 K32 ["LayoutOrder"]
      292 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      294 GETTABLEKS                       R39 R0 K33 ["expanded"]
      296 JUMPIFEQKNIL                     R39 ; [+4]
      298 GETTABLEKS                       R38 R0 K33 ["expanded"]
      300 JUMP                             ; [+1]
      301 LOADB                            R38 1
      302 SETTABLEKS                       R38 R37 K33 ["expanded"]
      304 GETTABLEKS                       R38 R0 K34 ["contentId"]
      306 SETTABLEKS                       R38 R37 K34 ["contentId"]
      308 GETTABLEKS                       R38 R0 K35 ["editThisContent"]
      310 SETTABLEKS                       R38 R37 K35 ["editThisContent"]
      312 DUPTABLE                         R38 K39 [{"Header", "Content"}]
      313 GETUPVAL                         R39 12
      314 GETUPVAL                         R40 17
      315 GETTABLEKS                       R40 R40 K37 ["Header"]
      317 DUPTABLE                         R41 K41 [{"LayoutOrder", "testId"}]
      318 MOVE                             R42 R34
      319 CALL                             R42 0 1
      320 SETTABLEKS                       R42 R41 K32 ["LayoutOrder"]
      322 GETUPVAL                         R42 18
      323 GETTABLEKS                       R42 R42 K42 ["AssetSearch"]
      325 GETTABLEKS                       R42 R42 K43 ["Expand"]
      327 SETTABLEKS                       R42 R41 K40 ["testId"]
      329 DUPTABLE                         R42 K46 [{"TypeIcon", "Text"}]
      330 LOADB                            R43 0
      331 GETTABLEKS                       R44 R33 K47 ["Image"]
      333 JUMPIFEQKS                       R44 K3 [""] ; [+21]
      335 GETUPVAL                         R43 12
      336 GETUPVAL                         R44 19
      337 DUPTABLE                         R45 K52 [{["tag"] = "size-400-400 radius-small", ["Image"], ["ImageRectOffset"], ["ImageRectSize"], ["LayoutOrder"]}]
      338 GETTABLEKS                       R46 R33 K47 ["Image"]
      340 SETTABLEKS                       R46 R45 K47 ["Image"]
      342 GETTABLEKS                       R46 R33 K50 ["ImageRectOffset"]
      344 SETTABLEKS                       R46 R45 K50 ["ImageRectOffset"]
      346 GETTABLEKS                       R46 R33 K51 ["ImageRectSize"]
      348 SETTABLEKS                       R46 R45 K51 ["ImageRectSize"]
      350 MOVE                             R46 R34
      351 CALL                             R46 0 1
      352 SETTABLEKS                       R46 R45 K32 ["LayoutOrder"]
      354 CALL                             R43 2 1
      355 SETTABLEKS                       R43 R42 K44 ["TypeIcon"]
      357 GETUPVAL                         R43 12
      358 GETUPVAL                         R44 20
      359 DUPTABLE                         R45 K54 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      360 GETTABLEKS                       R46 R27 K55 ["Found"]
      362 SETTABLEKS                       R46 R45 K45 ["Text"]
      364 MOVE                             R46 R34
      365 CALL                             R46 0 1
      366 SETTABLEKS                       R46 R45 K32 ["LayoutOrder"]
      368 CALL                             R43 2 1
      369 SETTABLEKS                       R43 R42 K45 ["Text"]
      371 CALL                             R39 3 1
      372 SETTABLEKS                       R39 R38 K37 ["Header"]
      374 GETUPVAL                         R39 12
      375 GETUPVAL                         R40 17
      376 GETTABLEKS                       R40 R40 K38 ["Content"]
      378 DUPTABLE                         R41 K57 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      379 MOVE                             R42 R34
      380 CALL                             R42 0 1
      381 SETTABLEKS                       R42 R41 K32 ["LayoutOrder"]
      383 DUPTABLE                         R42 K62 [{"MainCarousel", "NoResults", "ClickHint", "PreviewSound"}]
      384 MOVE                             R43 R26
      385 JUMPIFNOT                        R43 ; [+32]
      386 GETUPVAL                         R43 12
      387 GETUPVAL                         R44 21
      388 DUPTABLE                         R45 K65 [{["tag"] = "size-full-0 auto-y", ["testId"], ["scroll"], ["LayoutOrder"]}]
      389 GETUPVAL                         R46 18
      390 GETTABLEKS                       R46 R46 K66 ["Carousel"]
      392 GETTABLEKS                       R46 R46 K31 ["Root"]
      394 SETTABLEKS                       R46 R45 K40 ["testId"]
      396 SETTABLEKS                       R31 R45 K64 ["scroll"]
      398 MOVE                             R46 R34
      399 CALL                             R46 0 1
      400 SETTABLEKS                       R46 R45 K32 ["LayoutOrder"]
      402 DUPTABLE                         R46 K68 [{"Container"}]
      403 GETUPVAL                         R47 12
      404 GETUPVAL                         R48 22
      405 DUPTABLE                         R49 K70 [{["tag"] = "row gap-small auto-xy padding-bottom-xsmall", ["testId"]}]
      406 GETUPVAL                         R50 18
      407 GETTABLEKS                       R50 R50 K66 ["Carousel"]
      409 GETTABLEKS                       R50 R50 K67 ["Container"]
      411 SETTABLEKS                       R50 R49 K40 ["testId"]
      413 MOVE                             R50 R30
      414 CALL                             R47 3 1
      415 SETTABLEKS                       R47 R46 K67 ["Container"]
      417 CALL                             R43 3 1
      418 SETTABLEKS                       R43 R42 K58 ["MainCarousel"]
      420 NOT                              R43 R26
      421 JUMPIFNOT                        R43 ; [+12]
      422 GETUPVAL                         R43 12
      423 GETUPVAL                         R44 20
      424 DUPTABLE                         R45 K72 [{["tag"] = "size-0-0 auto-xy text-body-small content-muted", ["Text"], ["LayoutOrder"]}]
      425 GETTABLEKS                       R46 R27 K59 ["NoResults"]
      427 SETTABLEKS                       R46 R45 K45 ["Text"]
      429 MOVE                             R46 R34
      430 CALL                             R46 0 1
      431 SETTABLEKS                       R46 R45 K32 ["LayoutOrder"]
      433 CALL                             R43 2 1
      434 SETTABLEKS                       R43 R42 K59 ["NoResults"]
      436 MOVE                             R43 R26
      437 JUMPIFNOT                        R43 ; [+16]
      438 GETUPVAL                         R43 12
      439 GETUPVAL                         R44 20
      440 DUPTABLE                         R45 K72 [{["tag"] = "size-0-0 auto-xy text-body-small content-muted", ["Text"], ["LayoutOrder"]}]
      441 JUMPIFNOT                        R25 ; [+3]
      442 GETTABLEKS                       R46 R27 K73 ["ClickToInsertOrPurchase"]
      444 JUMP                             ; [+2]
      445 GETTABLEKS                       R46 R27 K74 ["ClickToInsert"]
      447 SETTABLEKS                       R46 R45 K45 ["Text"]
      449 MOVE                             R46 R34
      450 CALL                             R46 0 1
      451 SETTABLEKS                       R46 R45 K32 ["LayoutOrder"]
      453 CALL                             R43 2 1
      454 SETTABLEKS                       R43 R42 K60 ["ClickHint"]
      456 LOADB                            R43 0
      457 JUMPIFEQKNIL                     R18 ; [+32]
      459 GETUPVAL                         R43 12
      460 GETUPVAL                         R44 23
      461 NEWTABLE                         R45 8 0
      463 LOADK                            R47 K75 ["rbxassetid://%*"]
      464 MOVE                             R49 R18
      465 NAMECALL                         R47 R47 K76 ["format"]
      467 CALL                             R47 2 1
      468 MOVE                             R46 R47
      469 SETTABLEKS                       R46 R45 K77 ["SoundId"]
      471 LOADB                            R46 1
      472 SETTABLEKS                       R46 R45 K78 ["Playing"]
      474 LOADB                            R46 0
      475 SETTABLEKS                       R46 R45 K79 ["Looped"]
      477 GETIMPORT                        R46 K83 [Enum.UsageContext.Preview]
      479 SETTABLEKS                       R46 R45 K84 ["UsageContextPermission"]
      481 SETTABLEKS                       R24 R45 K85 ["ref"]
      483 GETUPVAL                         R46 1
      484 GETTABLEKS                       R46 R46 K86 ["Event"]
      486 GETTABLEKS                       R46 R46 K87 ["Ended"]
      488 SETTABLE                         R23 R45 R46
      489 CALL                             R43 2 1
      490 SETTABLEKS                       R43 R42 K61 ["PreviewSound"]
      492 CALL                             R39 3 1
      493 SETTABLEKS                       R39 R38 K38 ["Content"]
      495 CALL                             R35 3 -1
      496 RETURN                           R35 -1

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["structuredContent"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 MOVE                             R3 R1
        8 JUMPIFNOT                        R3 ; [+14]
        9 GETTABLEKS                       R4 R1 K2 ["isError"]
       11 NOT                              R3 R4
       12 JUMPIFNOT                        R3 ; [+10]
       13 LOADB                            R3 0
       14 JUMPIFEQKNIL                     R2 ; [+8]
       16 GETTABLEKS                       R4 R2 K3 ["pending"]
       18 NOT                              R3 R4
       19 JUMPIFNOT                        R3 ; [+3]
       20 GETTABLEKS                       R4 R2 K4 ["rejected"]
       22 NOT                              R3 R4
       23 JUMPIFNOT                        R3 ; [+35]
       24 GETTABLEKS                       R5 R0 K5 ["toolUse"]
       26 JUMPIFNOT                        R5 ; [+5]
       27 GETTABLEKS                       R4 R0 K5 ["toolUse"]
       29 GETTABLEKS                       R4 R4 K6 ["input"]
       31 JUMPIF                           R4 ; [+1]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R6 R4 K8 ["query"]
       35 ORK                              R5 R6 K7 [""]
       36 JUMPIFNOT                        R2 ; [+3]
       37 GETTABLEKS                       R6 R2 K9 ["resultCount"]
       39 JUMPIF                           R6 ; [+1]
       40 LOADN                            R6 0
       41 JUMPIFNOTEQKS                    R5 K7 [""] ; [+5]
       43 JUMPIFNOTEQKN                    R6 K10 [0] ; [+3]
       45 LOADNIL                          R7
       46 RETURN                           R7 1
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K11 ["FFlagAssistantAssetTileNamePreview"]
       50 JUMPIFNOT                        R8 ; [+2]
       51 GETUPVAL                         R7 2
       52 JUMP                             ; [+1]
       53 GETUPVAL                         R7 3
       54 GETUPVAL                         R8 4
       55 MOVE                             R9 R7
       56 MOVE                             R10 R0
       57 CALL                             R8 2 -1
       58 RETURN                           R8 -1
       59 GETUPVAL                         R4 4
       60 GETUPVAL                         R5 5
       61 MOVE                             R6 R0
       62 CALL                             R4 2 -1
       63 RETURN                           R4 -1

PROTO_50:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K9 ["Actions"]
       22 GETTABLEKS                       R3 R3 K10 ["AssetInsertActionsContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["AssetManagement"]
       31 GETTABLEKS                       R4 R4 K13 ["AssetManagementConstants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K14 ["Guest"]
       38 GETTABLEKS                       R5 R5 K15 ["Environment"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K16 ["Flags"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K17 ["Parent"]
       50 GETTABLEKS                       R7 R7 K18 ["Foundation"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K17 ["Parent"]
       57 GETTABLEKS                       R8 R8 K19 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K17 ["Parent"]
       64 GETTABLEKS                       R9 R9 K20 ["ReactUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Components"]
       71 GETTABLEKS                       R10 R10 K21 ["ShimmerGradient"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K11 ["Util"]
       78 GETTABLEKS                       R11 R11 K22 ["TestIds"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K23 ["Resources"]
       85 GETTABLEKS                       R12 R12 K24 ["Localization"]
       87 GETTABLEKS                       R12 R12 K25 ["Translator"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K26 ["Types"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K27 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K28 ["useClassIcon"]
      101 CALL                             R13 1 1
      102 GETTABLEKS                       R14 R3 K29 ["ASSET_TYPE_TO_CLASS_NAME"]
      104 GETTABLEKS                       R15 R3 K30 ["Location"]
      106 GETTABLEKS                       R16 R3 K31 ["SearchSource"]
      108 GETTABLEKS                       R17 R6 K32 ["IconButton"]
      110 GETTABLEKS                       R18 R6 K33 ["Image"]
      112 GETTABLEKS                       R19 R6 K34 ["ScrollView"]
      114 GETTABLEKS                       R20 R6 K35 ["Text"]
      116 GETTABLEKS                       R21 R6 K36 ["View"]
      118 GETTABLEKS                       R22 R8 K37 ["createNextOrder"]
      120 GETTABLEKS                       R23 R7 K38 ["createElement"]
      122 LOADK                            R24 K39 ["Sound"]
      123 LOADNIL                          R25
      124 NEWTABLE                         R26 0 0
      126 NEWCLOSURE                       R27 P0
      127 CAPTURE                          VAL R26
      128 CAPTURE                          REF R25
      129 NEWCLOSURE                       R28 P1
      130 CAPTURE                          REF R25
      131 CAPTURE                          VAL R26
      132 NEWCLOSURE                       R29 P2
      133 CAPTURE                          REF R25
      134 CAPTURE                          VAL R26
      135 DUPCLOSURE                       R30 K40 [PROTO_4]
      136 CAPTURE                          VAL R26
      137 LOADN                            R31 0
      138 NEWCLOSURE                       R32 P4
      139 CAPTURE                          REF R31
      140 NEWTABLE                         R33 0 0
      142 DUPCLOSURE                       R34 K41 [PROTO_13]
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R22
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R23
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R20
      154 DUPCLOSURE                       R35 K42 [PROTO_15]
      155 CAPTURE                          VAL R33
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R23
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R9
      167 DUPCLOSURE                       R36 K43 [PROTO_26]
      168 CAPTURE                          VAL R33
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R23
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R19
      188 NEWCLOSURE                       R37 P8
      189 CAPTURE                          VAL R33
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R6
      193 CAPTURE                          REF R31
      194 CAPTURE                          REF R25
      195 CAPTURE                          VAL R26
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R16
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R23
      202 CAPTURE                          VAL R34
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R21
      212 CAPTURE                          REF R24
      213 DUPCLOSURE                       R38 K44 [PROTO_49]
      214 CAPTURE                          VAL R33
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R37
      217 CAPTURE                          VAL R36
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R35
      220 DUPTABLE                         R39 K49 [{["Type"] = "AssetSearch", ["ContentWidget"], ["_testing"]}]
      221 GETTABLEKS                       R40 R7 K50 ["memo"]
      223 MOVE                             R41 R38
      224 CALL                             R40 1 1
      225 SETTABLEKS                       R40 R39 K47 ["ContentWidget"]
      227 DUPTABLE                         R40 K53 [{"setPreviewSoundElement", "getPreviewSoundElement"}]
      228 NEWCLOSURE                       R41 P10
      229 CAPTURE                          REF R24
      230 SETTABLEKS                       R41 R40 K51 ["setPreviewSoundElement"]
      232 NEWCLOSURE                       R41 P11
      233 CAPTURE                          REF R24
      234 SETTABLEKS                       R41 R40 K52 ["getPreviewSoundElement"]
      236 SETTABLEKS                       R40 R39 K48 ["_testing"]
      238 CLOSEUPVALS                      R24
      239 RETURN                           R39 1
