PROTO_0:
        0 MOVE                             R6 R5
        1 JUMPIF                           R6 ; [+3]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K0 ["DialogMainButton"]
        5 DUPTABLE                         R7 K7 [{"AnchorPoint", "Position", "Color", "Image", "Size", "ScaleType"}]
        6 GETIMPORT                        R8 K10 [Vector2.new]
        8 LOADK                            R9 K11 [0.5]
        9 LOADK                            R10 K11 [0.5]
       10 CALL                             R8 2 1
       11 SETTABLEKS                       R8 R7 K1 ["AnchorPoint"]
       13 MOVE                             R8 R4
       14 JUMPIF                           R8 ; [+7]
       15 GETIMPORT                        R8 K13 [UDim2.new]
       17 LOADK                            R9 K11 [0.5]
       18 LOADN                            R10 0
       19 LOADK                            R11 K11 [0.5]
       20 LOADN                            R12 0
       21 CALL                             R8 4 1
       22 SETTABLEKS                       R8 R7 K2 ["Position"]
       24 MOVE                             R8 R2
       25 JUMPIF                           R8 ; [+6]
       26 GETIMPORT                        R8 K16 [Color3.fromRGB]
       28 LOADN                            R9 184
       29 LOADN                            R10 184
       30 LOADN                            R11 184
       31 CALL                             R8 3 1
       32 SETTABLEKS                       R8 R7 K3 ["Color"]
       34 SETTABLEKS                       R0 R7 K4 ["Image"]
       36 MOVE                             R8 R3
       37 JUMPIF                           R8 ; [+7]
       38 GETIMPORT                        R8 K13 [UDim2.new]
       40 LOADK                            R9 K17 [0.6]
       41 LOADN                            R10 0
       42 LOADK                            R11 K17 [0.6]
       43 LOADN                            R12 0
       44 CALL                             R8 4 1
       45 SETTABLEKS                       R8 R7 K5 ["Size"]
       47 GETIMPORT                        R8 K20 [Enum.ScaleType.Fit]
       49 SETTABLEKS                       R8 R7 K6 ["ScaleType"]
       51 NEWTABLE                         R8 4 0
       53 GETUPVAL                         R9 1
       54 SETTABLEKS                       R9 R8 K21 ["Foreground"]
       56 SETTABLEKS                       R7 R8 K22 ["ForegroundStyle"]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R9 R9 K23 ["Hover"]
       61 DUPTABLE                         R10 K24 [{"ForegroundStyle"}]
       62 GETUPVAL                         R11 3
       63 GETTABLEKS                       R11 R11 K25 ["Dictionary"]
       65 GETTABLEKS                       R11 R11 K26 ["join"]
       67 MOVE                             R12 R7
       68 DUPTABLE                         R13 K27 [{"Image", "Color"}]
       69 SETTABLEKS                       R1 R13 K4 ["Image"]
       71 SETTABLEKS                       R6 R13 K3 ["Color"]
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K22 ["ForegroundStyle"]
       76 SETTABLE                         R10 R8 R9
       77 RETURN                           R8 1

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 MOVE                             R1 R2
        4 LOADNIL                          R2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
        8 GETTABLEKS                       R3 R3 K1 ["join"]
       10 GETUPVAL                         R4 2
       11 NEWTABLE                         R5 128 0
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K2 ["Toolbox_PublishAssetBackground"]
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R7 R7 K3 ["Slate"]
       19 SETTABLE                         R7 R5 R6
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K4 ["Toolbox_AssetOutlineBackground"]
       23 GETIMPORT                        R7 K7 [Color3.fromHex]
       25 LOADK                            R8 K8 ["#3B3B3B"]
       26 CALL                             R7 1 1
       27 SETTABLE                         R7 R5 R6
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K9 ["Toolbox_AssetOutlineBoarderColor"]
       31 GETIMPORT                        R7 K7 [Color3.fromHex]
       33 LOADK                            R8 K10 ["#121212"]
       34 CALL                             R7 1 1
       35 SETTABLE                         R7 R5 R6
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K11 ["Toolbox_AssetOutlineTransparency"]
       39 LOADN                            R7 0
       40 SETTABLE                         R7 R5 R6
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
       44 GETIMPORT                        R7 K14 [Color3.fromRGB]
       46 LOADN                            R8 12
       47 LOADN                            R9 43
       48 LOADN                            R10 89
       49 CALL                             R7 3 1
       50 SETTABLE                         R7 R5 R6
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R6 R6 K15 ["Toolbox_AssetDropdownSize"]
       54 LOADN                            R7 8
       55 SETTABLE                         R7 R5 R6
       56 GETUPVAL                         R6 3
       57 GETTABLEKS                       R6 R6 K16 ["Toolbox_AssetBorderSize"]
       59 LOADN                            R7 0
       60 SETTABLE                         R7 R5 R6
       61 GETUPVAL                         R6 3
       62 GETTABLEKS                       R6 R6 K17 ["Toolbox_AssetBackgroundColor"]
       64 GETIMPORT                        R7 K14 [Color3.fromRGB]
       66 LOADN                            R8 41
       67 LOADN                            R9 41
       68 LOADN                            R10 41
       69 CALL                             R7 3 1
       70 SETTABLE                         R7 R5 R6
       71 GETUPVAL                         R6 3
       72 GETTABLEKS                       R6 R6 K18 ["Toolbox_AssetBackgroundImage"]
       74 LOADK                            R7 K19 [""]
       75 SETTABLE                         R7 R5 R6
       76 GETUPVAL                         R6 3
       77 GETTABLEKS                       R6 R6 K20 ["Toolbox_AssetNameColor"]
       79 GETIMPORT                        R7 K14 [Color3.fromRGB]
       81 LOADN                            R8 60
       82 LOADN                            R9 180
       83 LOADN                            R10 255
       84 CALL                             R7 3 1
       85 SETTABLE                         R7 R5 R6
       86 GETUPVAL                         R6 3
       87 GETTABLEKS                       R6 R6 K21 ["Toolbox_AssetIconColor"]
       89 GETIMPORT                        R7 K14 [Color3.fromRGB]
       91 LOADN                            R8 178
       92 LOADN                            R9 178
       93 LOADN                            R10 178
       94 CALL                             R7 3 1
       95 SETTABLE                         R7 R5 R6
       96 GETUPVAL                         R6 3
       97 GETTABLEKS                       R6 R6 K22 ["Toolbox_AssetWarningIcon"]
       99 GETIMPORT                        R7 K7 [Color3.fromHex]
      101 LOADK                            R8 K23 ["#F8A544"]
      102 CALL                             R7 1 1
      103 SETTABLE                         R7 R5 R6
      104 GETUPVAL                         R6 3
      105 GETTABLEKS                       R6 R6 K24 ["Toolbox_CreatorLabelTextColor"]
      107 GETUPVAL                         R8 5
      108 CALL                             R8 0 1
      109 JUMPIFNOT                        R8 ; [+5]
      110 GETIMPORT                        R7 K7 [Color3.fromHex]
      112 LOADK                            R8 K25 ["#FAFAFA"]
      113 CALL                             R7 1 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R7
      116 SETTABLE                         R7 R5 R6
      117 GETUPVAL                         R6 3
      118 GETTABLEKS                       R6 R6 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
      120 GETUPVAL                         R8 5
      121 CALL                             R8 0 1
      122 JUMPIFNOT                        R8 ; [+5]
      123 GETIMPORT                        R7 K7 [Color3.fromHex]
      125 LOADK                            R8 K27 ["#D9D9D9"]
      126 CALL                             R7 1 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R7
      129 SETTABLE                         R7 R5 R6
      130 GETUPVAL                         R6 3
      131 GETTABLEKS                       R6 R6 K28 ["Toolbox_CreatorPillBackgroundColor"]
      133 GETUPVAL                         R8 5
      134 CALL                             R8 0 1
      135 JUMPIFNOT                        R8 ; [+5]
      136 GETIMPORT                        R7 K7 [Color3.fromHex]
      138 LOADK                            R8 K8 ["#3B3B3B"]
      139 CALL                             R7 1 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R7
      142 SETTABLE                         R7 R5 R6
      143 GETUPVAL                         R6 3
      144 GETTABLEKS                       R6 R6 K29 ["Toolbox_DialogErrorIcon"]
      146 LOADK                            R7 K30 ["rbxasset://studio_svg_textures/Lua/Toolbox/Dark/Large/DialogError.png"]
      147 SETTABLE                         R7 R5 R6
      148 GETUPVAL                         R6 3
      149 GETTABLEKS                       R6 R6 K31 ["Toolbox_AlertIcon"]
      151 LOADK                            R7 K32 ["rbxasset://studio_svg_textures/Lua/Toolbox/Dark/Large/Alert.png"]
      152 SETTABLE                         R7 R5 R6
      153 GETUPVAL                         R6 3
      154 GETTABLEKS                       R6 R6 K33 ["Toolbox_ItemRowBackgroundColorEven"]
      156 GETIMPORT                        R7 K7 [Color3.fromHex]
      158 LOADK                            R8 K34 ["#222222"]
      159 CALL                             R7 1 1
      160 SETTABLE                         R7 R5 R6
      161 GETUPVAL                         R6 3
      162 GETTABLEKS                       R6 R6 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
      164 GETIMPORT                        R7 K7 [Color3.fromHex]
      166 LOADK                            R8 K36 ["#2C2C2C"]
      167 CALL                             R7 1 1
      168 SETTABLE                         R7 R5 R6
      169 GETUPVAL                         R6 3
      170 GETTABLEKS                       R6 R6 K37 ["Toolbox_ItemRowBorderColor"]
      172 GETIMPORT                        R7 K7 [Color3.fromHex]
      174 LOADK                            R8 K38 ["#024897"]
      175 CALL                             R7 1 1
      176 SETTABLE                         R7 R5 R6
      177 GETUPVAL                         R6 3
      178 GETTABLEKS                       R6 R6 K39 ["Toolbox_ItemRowHeaderTextColor"]
      180 GETIMPORT                        R7 K7 [Color3.fromHex]
      182 LOADK                            R8 K40 ["#989898"]
      183 CALL                             R7 1 1
      184 SETTABLE                         R7 R5 R6
      185 GETUPVAL                         R6 3
      186 GETTABLEKS                       R6 R6 K41 ["Toolbox_ItemRowTitleTextColor"]
      188 GETIMPORT                        R7 K7 [Color3.fromHex]
      190 LOADK                            R8 K42 ["#52ADF4"]
      191 CALL                             R7 1 1
      192 SETTABLE                         R7 R5 R6
      193 GETUPVAL                         R6 3
      194 GETTABLEKS                       R6 R6 K43 ["Toolbox_ItemRowTextColor"]
      196 GETUPVAL                         R7 4
      197 GETTABLEKS                       R7 R7 K44 ["White"]
      199 SETTABLE                         R7 R5 R6
      200 GETUPVAL                         R6 3
      201 GETTABLEKS                       R6 R6 K45 ["Toolbox_AudioPlayerBackgroundColor"]
      203 GETIMPORT                        R7 K7 [Color3.fromHex]
      205 LOADK                            R8 K46 ["#171717"]
      206 CALL                             R7 1 1
      207 SETTABLE                         R7 R5 R6
      208 GETUPVAL                         R6 3
      209 GETTABLEKS                       R6 R6 K47 ["Toolbox_AudioPlayerProgressBarColor"]
      211 GETIMPORT                        R7 K7 [Color3.fromHex]
      213 LOADK                            R8 K48 ["#0077D6"]
      214 CALL                             R7 1 1
      215 SETTABLE                         R7 R5 R6
      216 GETUPVAL                         R6 3
      217 GETTABLEKS                       R6 R6 K49 ["Toolbox_AudioPlayerIndicatorColor"]
      219 GETIMPORT                        R7 K7 [Color3.fromHex]
      221 LOADK                            R8 K50 ["#555555"]
      222 CALL                             R7 1 1
      223 SETTABLE                         R7 R5 R6
      224 GETUPVAL                         R6 3
      225 GETTABLEKS                       R6 R6 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
      227 GETIMPORT                        R7 K7 [Color3.fromHex]
      229 LOADK                            R8 K50 ["#555555"]
      230 CALL                             R7 1 1
      231 SETTABLE                         R7 R5 R6
      232 GETUPVAL                         R6 3
      233 GETTABLEKS                       R6 R6 K52 ["Toolbox_AudioTabSelectedTextColor"]
      235 GETUPVAL                         R7 4
      236 GETTABLEKS                       R7 R7 K44 ["White"]
      238 SETTABLE                         R7 R5 R6
      239 GETUPVAL                         R6 3
      240 GETTABLEKS                       R6 R6 K53 ["Toolbox_DeleteIconColor"]
      242 GETIMPORT                        R7 K14 [Color3.fromRGB]
      244 LOADN                            R8 136
      245 LOADN                            R9 136
      246 LOADN                            R10 136
      247 CALL                             R7 3 1
      248 SETTABLE                         R7 R5 R6
      249 GETUPVAL                         R6 3
      250 GETTABLEKS                       R6 R6 K54 ["Toolbox_DropdownItemSelectedColor"]
      252 GETUPVAL                         R7 4
      253 GETTABLEKS                       R7 R7 K55 ["Blue_Dark"]
      255 SETTABLE                         R7 R5 R6
      256 GETUPVAL                         R6 3
      257 GETTABLEKS                       R6 R6 K56 ["Toolbox_DropdownIconColor"]
      259 GETUPVAL                         R7 4
      260 GETTABLEKS                       R7 R7 K44 ["White"]
      262 SETTABLE                         R7 R5 R6
      263 GETUPVAL                         R6 3
      264 GETTABLEKS                       R6 R6 K57 ["Toolbox_FontTileBackgroundColor"]
      266 GETIMPORT                        R7 K7 [Color3.fromHex]
      268 LOADK                            R8 K58 ["#292929"]
      269 CALL                             R7 1 1
      270 SETTABLE                         R7 R5 R6
      271 GETUPVAL                         R6 3
      272 GETTABLEKS                       R6 R6 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
      274 GETIMPORT                        R7 K7 [Color3.fromHex]
      276 LOADK                            R8 K8 ["#3B3B3B"]
      277 CALL                             R7 1 1
      278 SETTABLE                         R7 R5 R6
      279 GETUPVAL                         R6 3
      280 GETTABLEKS                       R6 R6 K60 ["Toolbox_FontTileTextFillColor"]
      282 GETIMPORT                        R7 K7 [Color3.fromHex]
      284 LOADK                            R8 K61 ["#FFFFFF"]
      285 CALL                             R7 1 1
      286 SETTABLE                         R7 R5 R6
      287 GETUPVAL                         R6 3
      288 GETTABLEKS                       R6 R6 K62 ["Toolbox_HorizontalLineColor"]
      290 GETIMPORT                        R7 K14 [Color3.fromRGB]
      292 LOADN                            R8 34
      293 LOADN                            R9 34
      294 LOADN                            R10 34
      295 CALL                             R7 3 1
      296 SETTABLE                         R7 R5 R6
      297 GETUPVAL                         R6 3
      298 GETTABLEKS                       R6 R6 K63 ["Toolbox_NavigationLinkTextColor"]
      300 GETUPVAL                         R7 4
      301 GETTABLEKS                       R7 R7 K44 ["White"]
      303 SETTABLE                         R7 R5 R6
      304 GETUPVAL                         R6 3
      305 GETTABLEKS                       R6 R6 K64 ["Toolbox_NavigationLinkTextColorHover"]
      307 GETIMPORT                        R7 K7 [Color3.fromHex]
      309 LOADK                            R8 K65 ["#AAAAAA"]
      310 CALL                             R7 1 1
      311 SETTABLE                         R7 R5 R6
      312 GETUPVAL                         R6 3
      313 GETTABLEKS                       R6 R6 K66 ["Toolbox_PackageBackgroundColor"]
      315 GETUPVAL                         R7 4
      316 GETTABLEKS                       R7 R7 K67 ["Black"]
      318 SETTABLE                         R7 R5 R6
      319 GETUPVAL                         R6 3
      320 GETTABLEKS                       R6 R6 K68 ["Toolbox_PackageBackgroundTransparency"]
      322 LOADK                            R7 K69 [0.5]
      323 SETTABLE                         R7 R5 R6
      324 GETUPVAL                         R6 3
      325 GETTABLEKS                       R6 R6 K70 ["Toolbox_PackageImage"]
      327 GETUPVAL                         R7 6
      328 GETTABLEKS                       R7 R7 K71 ["PACKAGE_DARK"]
      330 SETTABLE                         R7 R5 R6
      331 GETUPVAL                         R6 3
      332 GETTABLEKS                       R6 R6 K72 ["ScrollingFrameBackgroundColor"]
      334 GETIMPORT                        R7 K14 [Color3.fromRGB]
      336 LOADN                            R8 41
      337 LOADN                            R9 41
      338 LOADN                            R10 41
      339 CALL                             R7 3 1
      340 SETTABLE                         R7 R5 R6
      341 GETUPVAL                         R6 3
      342 GETTABLEKS                       R6 R6 K73 ["ScrollingFrameImageColor"]
      344 GETIMPORT                        R7 K14 [Color3.fromRGB]
      346 LOADN                            R8 85
      347 LOADN                            R9 85
      348 LOADN                            R10 85
      349 CALL                             R7 3 1
      350 SETTABLE                         R7 R5 R6
      351 GETUPVAL                         R6 3
      352 GETTABLEKS                       R6 R6 K74 ["Toolbox_SearchTagBackgroundColor"]
      354 GETIMPORT                        R7 K14 [Color3.fromRGB]
      356 LOADN                            R8 56
      357 LOADN                            R9 56
      358 LOADN                            R10 56
      359 CALL                             R7 3 1
      360 SETTABLE                         R7 R5 R6
      361 GETUPVAL                         R6 3
      362 GETTABLEKS                       R6 R6 K75 ["Toolbox_SearchPillTextColor"]
      364 GETIMPORT                        R7 K7 [Color3.fromHex]
      366 LOADK                            R8 K25 ["#FAFAFA"]
      367 CALL                             R7 1 1
      368 SETTABLE                         R7 R5 R6
      369 GETUPVAL                         R6 3
      370 GETTABLEKS                       R6 R6 K76 ["Toolbox_SearchPillBackgroundColor"]
      372 GETIMPORT                        R7 K7 [Color3.fromHex]
      374 LOADK                            R8 K8 ["#3B3B3B"]
      375 CALL                             R7 1 1
      376 SETTABLE                         R7 R5 R6
      377 GETUPVAL                         R6 3
      378 GETTABLEKS                       R6 R6 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
      380 GETIMPORT                        R7 K7 [Color3.fromHex]
      382 LOADK                            R8 K78 ["#565656"]
      383 CALL                             R7 1 1
      384 SETTABLE                         R7 R5 R6
      385 GETUPVAL                         R6 3
      386 GETTABLEKS                       R6 R6 K79 ["Toolbox_TabTopBorderColor"]
      388 GETUPVAL                         R7 4
      389 GETTABLEKS                       R7 R7 K80 ["Blue"]
      391 SETTABLE                         R7 R5 R6
      392 GETUPVAL                         R6 3
      393 GETTABLEKS                       R6 R6 K81 ["Toolbox_TabSelectedColor"]
      395 GETUPVAL                         R7 4
      396 GETTABLEKS                       R7 R7 K44 ["White"]
      398 SETTABLE                         R7 R5 R6
      399 GETUPVAL                         R6 3
      400 GETTABLEKS                       R6 R6 K82 ["Toolbox_IconTileGradientColor"]
      402 GETUPVAL                         R7 4
      403 GETTABLEKS                       R7 R7 K67 ["Black"]
      405 SETTABLE                         R7 R5 R6
      406 GETUPVAL                         R6 3
      407 GETTABLEKS                       R6 R6 K83 ["Toolbox_HomeviewBackgroundColor"]
      409 GETUPVAL                         R7 4
      410 GETTABLEKS                       R7 R7 K3 ["Slate"]
      412 SETTABLE                         R7 R5 R6
      413 GETUPVAL                         R6 3
      414 GETTABLEKS                       R6 R6 K84 ["Toolbox_SearchOptionButtonHover"]
      416 GETUPVAL                         R7 4
      417 GETTABLEKS                       R7 R7 K44 ["White"]
      419 SETTABLE                         R7 R5 R6
      420 GETUPVAL                         R6 3
      421 GETTABLEKS                       R6 R6 K85 ["Toolbox_RateTextColor"]
      423 GETIMPORT                        R7 K7 [Color3.fromHex]
      425 LOADK                            R8 K86 ["#BDBEBE"]
      426 CALL                             R7 1 1
      427 SETTABLE                         R7 R5 R6
      428 GETUPVAL                         R6 3
      429 GETTABLEKS                       R6 R6 K87 ["Toolbox_VoteCountColor"]
      431 GETIMPORT                        R7 K7 [Color3.fromHex]
      433 LOADK                            R8 K65 ["#AAAAAA"]
      434 CALL                             R7 1 1
      435 SETTABLE                         R7 R5 R6
      436 GETUPVAL                         R6 3
      437 GETTABLEKS                       R6 R6 K88 ["Toolbox_LowConfidencePercentageColor"]
      439 GETIMPORT                        R7 K7 [Color3.fromHex]
      441 LOADK                            R8 K89 ["#CCCCCC"]
      442 CALL                             R7 1 1
      443 SETTABLE                         R7 R5 R6
      444 GETUPVAL                         R6 3
      445 GETTABLEKS                       R6 R6 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
      447 GETIMPORT                        R7 K7 [Color3.fromHex]
      449 LOADK                            R8 K61 ["#FFFFFF"]
      450 CALL                             R7 1 1
      451 SETTABLE                         R7 R5 R6
      452 GETUPVAL                         R6 3
      453 GETTABLEKS                       R6 R6 K91 ["Toolbox_VotingButtonImage"]
      455 GETUPVAL                         R7 6
      456 GETTABLEKS                       R7 R7 K92 ["THUMB_UP_WHITE"]
      458 SETTABLE                         R7 R5 R6
      459 GETUPVAL                         R6 3
      460 GETTABLEKS                       R6 R6 K93 ["Toolbox_SearchIconColor"]
      462 GETIMPORT                        R7 K14 [Color3.fromRGB]
      464 LOADN                            R8 225
      465 LOADN                            R9 225
      466 LOADN                            R10 225
      467 CALL                             R7 3 1
      468 SETTABLE                         R7 R5 R6
      469 GETUPVAL                         R6 3
      470 GETTABLEKS                       R6 R6 K94 ["Toolbox_ClearButtonColor"]
      472 GETUPVAL                         R7 3
      473 GETTABLEKS                       R7 R7 K95 ["SecondaryMain"]
      475 GETTABLEKS                       R7 R7 K96 ["Dark"]
      477 SETTABLE                         R7 R5 R6
      478 GETUPVAL                         R6 3
      479 GETTABLEKS                       R6 R6 K97 ["AssetConfig_DividerHorizontalLineColor"]
      481 GETUPVAL                         R7 4
      482 GETTABLEKS                       R7 R7 K98 ["Carbon"]
      484 SETTABLE                         R7 R5 R6
      485 GETUPVAL                         R6 3
      486 GETTABLEKS                       R6 R6 K99 ["AssetConfig_PreviewSelectedColor"]
      488 GETUPVAL                         R7 4
      489 GETTABLEKS                       R7 R7 K44 ["White"]
      491 SETTABLE                         R7 R5 R6
      492 GETUPVAL                         R6 3
      493 GETTABLEKS                       R6 R6 K100 ["AssetConfig_SidetabSelectedBarColor"]
      495 GETIMPORT                        R7 K14 [Color3.fromRGB]
      497 LOADN                            R8 11
      498 LOADN                            R9 90
      499 LOADN                            R10 175
      500 CALL                             R7 3 1
      501 SETTABLE                         R7 R5 R6
      502 GETUPVAL                         R6 3
      503 GETTABLEKS                       R6 R6 K101 ["AssetConfig_SidetabSelectedBarTransparency"]
      505 LOADN                            R7 0
      506 SETTABLE                         R7 R5 R6
      507 GETUPVAL                         R6 3
      508 GETTABLEKS                       R6 R6 K102 ["AssetConfig_SidetabSelectedBarZIndex"]
      510 LOADN                            R7 -1
      511 SETTABLE                         R7 R5 R6
      512 GETUPVAL                         R6 3
      513 GETTABLEKS                       R6 R6 K103 ["AssetConfig_SidetabSelectedIndicatorZindex"]
      515 LOADN                            R7 1
      516 SETTABLE                         R7 R5 R6
      517 GETUPVAL                         R6 3
      518 GETTABLEKS                       R6 R6 K104 ["AssetConfig_UploadResultButtonColor"]
      520 GETIMPORT                        R7 K14 [Color3.fromRGB]
      522 LOADN                            R8 136
      523 LOADN                            R9 136
      524 LOADN                            R10 136
      525 CALL                             R7 3 1
      526 SETTABLE                         R7 R5 R6
      527 GETUPVAL                         R6 3
      528 GETTABLEKS                       R6 R6 K105 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
      530 GETIMPORT                        R7 K14 [Color3.fromRGB]
      532 LOADN                            R8 102
      533 LOADN                            R9 102
      534 LOADN                            R10 102
      535 CALL                             R7 3 1
      536 SETTABLE                         R7 R5 R6
      537 GETUPVAL                         R6 3
      538 GETTABLEKS                       R6 R6 K106 ["AssetConfig_DistributionQuotaTextColor"]
      540 GETUPVAL                         R7 4
      541 GETTABLEKS                       R7 R7 K44 ["White"]
      543 SETTABLE                         R7 R5 R6
      544 CALL                             R3 2 1
      545 GETUPVAL                         R4 1
      546 GETTABLEKS                       R4 R4 K0 ["Dictionary"]
      548 GETTABLEKS                       R4 R4 K1 ["join"]
      550 GETUPVAL                         R5 7
      551 NEWTABLE                         R6 128 0
      553 GETUPVAL                         R7 3
      554 GETTABLEKS                       R7 R7 K2 ["Toolbox_PublishAssetBackground"]
      556 GETUPVAL                         R8 4
      557 GETTABLEKS                       R8 R8 K3 ["Slate"]
      559 SETTABLE                         R8 R6 R7
      560 GETUPVAL                         R7 3
      561 GETTABLEKS                       R7 R7 K4 ["Toolbox_AssetOutlineBackground"]
      563 GETUPVAL                         R8 4
      564 GETTABLEKS                       R8 R8 K44 ["White"]
      566 SETTABLE                         R8 R6 R7
      567 GETUPVAL                         R7 3
      568 GETTABLEKS                       R7 R7 K9 ["Toolbox_AssetOutlineBoarderColor"]
      570 GETIMPORT                        R8 K7 [Color3.fromHex]
      572 LOADK                            R9 K40 ["#989898"]
      573 CALL                             R8 1 1
      574 SETTABLE                         R8 R6 R7
      575 GETUPVAL                         R7 3
      576 GETTABLEKS                       R7 R7 K11 ["Toolbox_AssetOutlineTransparency"]
      578 LOADK                            R8 K107 [0.08]
      579 SETTABLE                         R8 R6 R7
      580 GETUPVAL                         R7 3
      581 GETTABLEKS                       R7 R7 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
      583 GETIMPORT                        R8 K14 [Color3.fromRGB]
      585 LOADN                            R9 229
      586 LOADN                            R10 243
      587 LOADN                            R11 255
      588 CALL                             R8 3 1
      589 SETTABLE                         R8 R6 R7
      590 GETUPVAL                         R7 3
      591 GETTABLEKS                       R7 R7 K15 ["Toolbox_AssetDropdownSize"]
      593 LOADN                            R8 0
      594 SETTABLE                         R8 R6 R7
      595 GETUPVAL                         R7 3
      596 GETTABLEKS                       R7 R7 K16 ["Toolbox_AssetBorderSize"]
      598 LOADN                            R8 0
      599 SETTABLE                         R8 R6 R7
      600 GETUPVAL                         R7 3
      601 GETTABLEKS                       R7 R7 K17 ["Toolbox_AssetBackgroundColor"]
      603 GETIMPORT                        R8 K14 [Color3.fromRGB]
      605 LOADN                            R9 225
      606 LOADN                            R10 225
      607 LOADN                            R11 225
      608 CALL                             R8 3 1
      609 SETTABLE                         R8 R6 R7
      610 GETUPVAL                         R7 3
      611 GETTABLEKS                       R7 R7 K18 ["Toolbox_AssetBackgroundImage"]
      613 GETUPVAL                         R8 6
      614 GETTABLEKS                       R8 R8 K108 ["NO_BACKGROUND_ICON"]
      616 SETTABLE                         R8 R6 R7
      617 GETUPVAL                         R7 3
      618 GETTABLEKS                       R7 R7 K20 ["Toolbox_AssetNameColor"]
      620 GETIMPORT                        R8 K7 [Color3.fromHex]
      622 LOADK                            R9 K109 ["#0B5AAF"]
      623 CALL                             R8 1 1
      624 SETTABLE                         R8 R6 R7
      625 GETUPVAL                         R7 3
      626 GETTABLEKS                       R7 R7 K21 ["Toolbox_AssetIconColor"]
      628 GETIMPORT                        R8 K14 [Color3.fromRGB]
      630 LOADN                            R9 170
      631 LOADN                            R10 170
      632 LOADN                            R11 170
      633 CALL                             R8 3 1
      634 SETTABLE                         R8 R6 R7
      635 GETUPVAL                         R7 3
      636 GETTABLEKS                       R7 R7 K22 ["Toolbox_AssetWarningIcon"]
      638 GETIMPORT                        R8 K7 [Color3.fromHex]
      640 LOADK                            R9 K110 ["#BC6600"]
      641 CALL                             R8 1 1
      642 SETTABLE                         R8 R6 R7
      643 GETUPVAL                         R7 3
      644 GETTABLEKS                       R7 R7 K45 ["Toolbox_AudioPlayerBackgroundColor"]
      646 GETIMPORT                        R8 K7 [Color3.fromHex]
      648 LOADK                            R9 K111 ["#E1E1E1"]
      649 CALL                             R8 1 1
      650 SETTABLE                         R8 R6 R7
      651 GETUPVAL                         R7 3
      652 GETTABLEKS                       R7 R7 K47 ["Toolbox_AudioPlayerProgressBarColor"]
      654 GETIMPORT                        R8 K7 [Color3.fromHex]
      656 LOADK                            R9 K48 ["#0077D6"]
      657 CALL                             R8 1 1
      658 SETTABLE                         R8 R6 R7
      659 GETUPVAL                         R7 3
      660 GETTABLEKS                       R7 R7 K49 ["Toolbox_AudioPlayerIndicatorColor"]
      662 GETIMPORT                        R8 K7 [Color3.fromHex]
      664 LOADK                            R9 K112 ["#CBCBCB"]
      665 CALL                             R8 1 1
      666 SETTABLE                         R8 R6 R7
      667 GETUPVAL                         R7 3
      668 GETTABLEKS                       R7 R7 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
      670 GETIMPORT                        R8 K7 [Color3.fromHex]
      672 LOADK                            R9 K34 ["#222222"]
      673 CALL                             R8 1 1
      674 SETTABLE                         R8 R6 R7
      675 GETUPVAL                         R7 3
      676 GETTABLEKS                       R7 R7 K29 ["Toolbox_DialogErrorIcon"]
      678 LOADK                            R8 K113 ["rbxasset://studio_svg_textures/Lua/Toolbox/Light/Large/DialogError.png"]
      679 SETTABLE                         R8 R6 R7
      680 GETUPVAL                         R7 3
      681 GETTABLEKS                       R7 R7 K31 ["Toolbox_AlertIcon"]
      683 LOADK                            R8 K114 ["rbxasset://studio_svg_textures/Lua/Toolbox/Light/Large/Alert.png"]
      684 SETTABLE                         R8 R6 R7
      685 GETUPVAL                         R7 3
      686 GETTABLEKS                       R7 R7 K24 ["Toolbox_CreatorLabelTextColor"]
      688 GETUPVAL                         R9 5
      689 CALL                             R9 0 1
      690 JUMPIFNOT                        R9 ; [+5]
      691 GETIMPORT                        R8 K7 [Color3.fromHex]
      693 LOADK                            R9 K115 ["#191919"]
      694 CALL                             R8 1 1
      695 JUMP                             ; [+1]
      696 LOADNIL                          R8
      697 SETTABLE                         R8 R6 R7
      698 GETUPVAL                         R7 3
      699 GETTABLEKS                       R7 R7 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
      701 GETUPVAL                         R9 5
      702 CALL                             R9 0 1
      703 JUMPIFNOT                        R9 ; [+5]
      704 GETIMPORT                        R8 K7 [Color3.fromHex]
      706 LOADK                            R9 K112 ["#CBCBCB"]
      707 CALL                             R8 1 1
      708 JUMP                             ; [+1]
      709 LOADNIL                          R8
      710 SETTABLE                         R8 R6 R7
      711 GETUPVAL                         R7 3
      712 GETTABLEKS                       R7 R7 K28 ["Toolbox_CreatorPillBackgroundColor"]
      714 GETUPVAL                         R9 5
      715 CALL                             R9 0 1
      716 JUMPIFNOT                        R9 ; [+5]
      717 GETIMPORT                        R8 K7 [Color3.fromHex]
      719 LOADK                            R9 K111 ["#E1E1E1"]
      720 CALL                             R8 1 1
      721 JUMP                             ; [+1]
      722 LOADNIL                          R8
      723 SETTABLE                         R8 R6 R7
      724 GETUPVAL                         R7 3
      725 GETTABLEKS                       R7 R7 K33 ["Toolbox_ItemRowBackgroundColorEven"]
      727 GETIMPORT                        R8 K7 [Color3.fromHex]
      729 LOADK                            R9 K116 ["#EDEDED"]
      730 CALL                             R8 1 1
      731 SETTABLE                         R8 R6 R7
      732 GETUPVAL                         R7 3
      733 GETTABLEKS                       R7 R7 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
      735 GETIMPORT                        R8 K7 [Color3.fromHex]
      737 LOADK                            R9 K25 ["#FAFAFA"]
      738 CALL                             R8 1 1
      739 SETTABLE                         R8 R6 R7
      740 GETUPVAL                         R7 3
      741 GETTABLEKS                       R7 R7 K37 ["Toolbox_ItemRowBorderColor"]
      743 GETIMPORT                        R8 K7 [Color3.fromHex]
      745 LOADK                            R9 K117 ["#3DB3FF"]
      746 CALL                             R8 1 1
      747 SETTABLE                         R8 R6 R7
      748 GETUPVAL                         R7 3
      749 GETTABLEKS                       R7 R7 K39 ["Toolbox_ItemRowHeaderTextColor"]
      751 GETIMPORT                        R8 K7 [Color3.fromHex]
      753 LOADK                            R9 K8 ["#3B3B3B"]
      754 CALL                             R8 1 1
      755 SETTABLE                         R8 R6 R7
      756 GETUPVAL                         R7 3
      757 GETTABLEKS                       R7 R7 K41 ["Toolbox_ItemRowTitleTextColor"]
      759 GETIMPORT                        R8 K7 [Color3.fromHex]
      761 LOADK                            R9 K118 ["#0055AC"]
      762 CALL                             R8 1 1
      763 SETTABLE                         R8 R6 R7
      764 GETUPVAL                         R7 3
      765 GETTABLEKS                       R7 R7 K43 ["Toolbox_ItemRowTextColor"]
      767 GETIMPORT                        R8 K7 [Color3.fromHex]
      769 LOADK                            R9 K46 ["#171717"]
      770 CALL                             R8 1 1
      771 SETTABLE                         R8 R6 R7
      772 GETUPVAL                         R7 3
      773 GETTABLEKS                       R7 R7 K52 ["Toolbox_AudioTabSelectedTextColor"]
      775 GETIMPORT                        R8 K7 [Color3.fromHex]
      777 LOADK                            R9 K25 ["#FAFAFA"]
      778 CALL                             R8 1 1
      779 SETTABLE                         R8 R6 R7
      780 GETUPVAL                         R7 3
      781 GETTABLEKS                       R7 R7 K53 ["Toolbox_DeleteIconColor"]
      783 GETIMPORT                        R8 K14 [Color3.fromRGB]
      785 LOADN                            R9 184
      786 LOADN                            R10 184
      787 LOADN                            R11 184
      788 CALL                             R8 3 1
      789 SETTABLE                         R8 R6 R7
      790 GETUPVAL                         R7 3
      791 GETTABLEKS                       R7 R7 K54 ["Toolbox_DropdownItemSelectedColor"]
      793 GETUPVAL                         R8 4
      794 GETTABLEKS                       R8 R8 K119 ["Blue_Light"]
      796 SETTABLE                         R8 R6 R7
      797 GETUPVAL                         R7 3
      798 GETTABLEKS                       R7 R7 K56 ["Toolbox_DropdownIconColor"]
      800 GETIMPORT                        R8 K14 [Color3.fromRGB]
      802 LOADN                            R9 25
      803 LOADN                            R10 25
      804 LOADN                            R11 25
      805 CALL                             R8 3 1
      806 SETTABLE                         R8 R6 R7
      807 GETUPVAL                         R7 3
      808 GETTABLEKS                       R7 R7 K57 ["Toolbox_FontTileBackgroundColor"]
      810 GETIMPORT                        R8 K7 [Color3.fromHex]
      812 LOADK                            R9 K61 ["#FFFFFF"]
      813 CALL                             R8 1 1
      814 SETTABLE                         R8 R6 R7
      815 GETUPVAL                         R7 3
      816 GETTABLEKS                       R7 R7 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
      818 GETIMPORT                        R8 K7 [Color3.fromHex]
      820 LOADK                            R9 K120 ["#E3F0FB"]
      821 CALL                             R8 1 1
      822 SETTABLE                         R8 R6 R7
      823 GETUPVAL                         R7 3
      824 GETTABLEKS                       R7 R7 K60 ["Toolbox_FontTileTextFillColor"]
      826 GETIMPORT                        R8 K7 [Color3.fromHex]
      828 LOADK                            R9 K121 ["#393B3D"]
      829 CALL                             R8 1 1
      830 SETTABLE                         R8 R6 R7
      831 GETUPVAL                         R7 3
      832 GETTABLEKS                       R7 R7 K62 ["Toolbox_HorizontalLineColor"]
      834 GETIMPORT                        R8 K14 [Color3.fromRGB]
      836 LOADN                            R9 227
      837 LOADN                            R10 227
      838 LOADN                            R11 227
      839 CALL                             R8 3 1
      840 SETTABLE                         R8 R6 R7
      841 GETUPVAL                         R7 3
      842 GETTABLEKS                       R7 R7 K63 ["Toolbox_NavigationLinkTextColor"]
      844 GETIMPORT                        R8 K7 [Color3.fromHex]
      846 LOADK                            R9 K10 ["#121212"]
      847 CALL                             R8 1 1
      848 SETTABLE                         R8 R6 R7
      849 GETUPVAL                         R7 3
      850 GETTABLEKS                       R7 R7 K64 ["Toolbox_NavigationLinkTextColorHover"]
      852 GETIMPORT                        R8 K7 [Color3.fromHex]
      854 LOADK                            R9 K122 ["#666666"]
      855 CALL                             R8 1 1
      856 SETTABLE                         R8 R6 R7
      857 GETUPVAL                         R7 3
      858 GETTABLEKS                       R7 R7 K66 ["Toolbox_PackageBackgroundColor"]
      860 GETUPVAL                         R8 4
      861 GETTABLEKS                       R8 R8 K44 ["White"]
      863 SETTABLE                         R8 R6 R7
      864 GETUPVAL                         R7 3
      865 GETTABLEKS                       R7 R7 K68 ["Toolbox_PackageBackgroundTransparency"]
      867 LOADK                            R8 K123 [0.25]
      868 SETTABLE                         R8 R6 R7
      869 GETUPVAL                         R7 3
      870 GETTABLEKS                       R7 R7 K70 ["Toolbox_PackageImage"]
      872 GETUPVAL                         R8 6
      873 GETTABLEKS                       R8 R8 K124 ["PACKAGE_LIGHT"]
      875 SETTABLE                         R8 R6 R7
      876 GETUPVAL                         R7 3
      877 GETTABLEKS                       R7 R7 K72 ["ScrollingFrameBackgroundColor"]
      879 GETIMPORT                        R8 K14 [Color3.fromRGB]
      881 LOADN                            R9 245
      882 LOADN                            R10 245
      883 LOADN                            R11 245
      884 CALL                             R8 3 1
      885 SETTABLE                         R8 R6 R7
      886 GETUPVAL                         R7 3
      887 GETTABLEKS                       R7 R7 K73 ["ScrollingFrameImageColor"]
      889 GETIMPORT                        R8 K14 [Color3.fromRGB]
      891 LOADN                            R9 245
      892 LOADN                            R10 245
      893 LOADN                            R11 245
      894 CALL                             R8 3 1
      895 SETTABLE                         R8 R6 R7
      896 GETUPVAL                         R7 3
      897 GETTABLEKS                       R7 R7 K74 ["Toolbox_SearchTagBackgroundColor"]
      899 GETUPVAL                         R8 4
      900 GETTABLEKS                       R8 R8 K125 ["Gray_Lighter"]
      902 SETTABLE                         R8 R6 R7
      903 GETUPVAL                         R7 3
      904 GETTABLEKS                       R7 R7 K75 ["Toolbox_SearchPillTextColor"]
      906 GETIMPORT                        R8 K7 [Color3.fromHex]
      908 LOADK                            R9 K115 ["#191919"]
      909 CALL                             R8 1 1
      910 SETTABLE                         R8 R6 R7
      911 GETUPVAL                         R7 3
      912 GETTABLEKS                       R7 R7 K76 ["Toolbox_SearchPillBackgroundColor"]
      914 GETIMPORT                        R8 K7 [Color3.fromHex]
      916 LOADK                            R9 K111 ["#E1E1E1"]
      917 CALL                             R8 1 1
      918 SETTABLE                         R8 R6 R7
      919 GETUPVAL                         R7 3
      920 GETTABLEKS                       R7 R7 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
      922 GETIMPORT                        R8 K7 [Color3.fromHex]
      924 LOADK                            R9 K112 ["#CBCBCB"]
      925 CALL                             R8 1 1
      926 SETTABLE                         R8 R6 R7
      927 GETUPVAL                         R7 3
      928 GETTABLEKS                       R7 R7 K79 ["Toolbox_TabTopBorderColor"]
      930 GETIMPORT                        R8 K14 [Color3.fromRGB]
      932 LOADN                            R9 182
      933 LOADN                            R10 182
      934 LOADN                            R11 182
      935 CALL                             R8 3 1
      936 SETTABLE                         R8 R6 R7
      937 GETUPVAL                         R7 3
      938 GETTABLEKS                       R7 R7 K81 ["Toolbox_TabSelectedColor"]
      940 GETUPVAL                         R8 4
      941 GETTABLEKS                       R8 R8 K80 ["Blue"]
      943 SETTABLE                         R8 R6 R7
      944 GETUPVAL                         R7 3
      945 GETTABLEKS                       R7 R7 K82 ["Toolbox_IconTileGradientColor"]
      947 GETUPVAL                         R8 4
      948 GETTABLEKS                       R8 R8 K126 ["Gray_Light"]
      950 SETTABLE                         R8 R6 R7
      951 GETUPVAL                         R7 3
      952 GETTABLEKS                       R7 R7 K83 ["Toolbox_HomeviewBackgroundColor"]
      954 GETUPVAL                         R8 4
      955 GETTABLEKS                       R8 R8 K44 ["White"]
      957 SETTABLE                         R8 R6 R7
      958 GETUPVAL                         R7 3
      959 GETTABLEKS                       R7 R7 K84 ["Toolbox_SearchOptionButtonHover"]
      961 GETUPVAL                         R8 4
      962 GETTABLEKS                       R8 R8 K67 ["Black"]
      964 SETTABLE                         R8 R6 R7
      965 GETUPVAL                         R7 3
      966 GETTABLEKS                       R7 R7 K85 ["Toolbox_RateTextColor"]
      968 GETIMPORT                        R8 K7 [Color3.fromHex]
      970 LOADK                            R9 K8 ["#3B3B3B"]
      971 CALL                             R8 1 1
      972 SETTABLE                         R8 R6 R7
      973 GETUPVAL                         R7 3
      974 GETTABLEKS                       R7 R7 K87 ["Toolbox_VoteCountColor"]
      976 GETIMPORT                        R8 K7 [Color3.fromHex]
      978 LOADK                            R9 K122 ["#666666"]
      979 CALL                             R8 1 1
      980 SETTABLE                         R8 R6 R7
      981 GETUPVAL                         R7 3
      982 GETTABLEKS                       R7 R7 K88 ["Toolbox_LowConfidencePercentageColor"]
      984 GETIMPORT                        R8 K7 [Color3.fromHex]
      986 LOADK                            R9 K122 ["#666666"]
      987 CALL                             R8 1 1
      988 SETTABLE                         R8 R6 R7
      989 GETUPVAL                         R7 3
      990 GETTABLEKS                       R7 R7 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
      992 GETIMPORT                        R8 K7 [Color3.fromHex]
      994 LOADK                            R9 K127 ["#000000"]
      995 CALL                             R8 1 1
      996 SETTABLE                         R8 R6 R7
      997 GETUPVAL                         R7 3
      998 GETTABLEKS                       R7 R7 K91 ["Toolbox_VotingButtonImage"]
     1000 GETUPVAL                         R8 6
     1001 GETTABLEKS                       R8 R8 K128 ["THUMB_UP_DARK_GRAY"]
     1003 SETTABLE                         R8 R6 R7
     1004 GETUPVAL                         R7 3
     1005 GETTABLEKS                       R7 R7 K93 ["Toolbox_SearchIconColor"]
     1007 GETIMPORT                        R8 K14 [Color3.fromRGB]
     1009 LOADN                            R9 94
     1010 LOADN                            R10 94
     1011 LOADN                            R11 94
     1012 CALL                             R8 3 1
     1013 SETTABLE                         R8 R6 R7
     1014 GETUPVAL                         R7 3
     1015 GETTABLEKS                       R7 R7 K94 ["Toolbox_ClearButtonColor"]
     1017 GETUPVAL                         R8 3
     1018 GETTABLEKS                       R8 R8 K95 ["SecondaryMain"]
     1020 GETTABLEKS                       R8 R8 K129 ["Light"]
     1022 SETTABLE                         R8 R6 R7
     1023 GETUPVAL                         R7 3
     1024 GETTABLEKS                       R7 R7 K97 ["AssetConfig_DividerHorizontalLineColor"]
     1026 GETIMPORT                        R8 K14 [Color3.fromRGB]
     1028 LOADN                            R9 227
     1029 LOADN                            R10 227
     1030 LOADN                            R11 227
     1031 CALL                             R8 3 1
     1032 SETTABLE                         R8 R6 R7
     1033 GETUPVAL                         R7 3
     1034 GETTABLEKS                       R7 R7 K99 ["AssetConfig_PreviewSelectedColor"]
     1036 GETUPVAL                         R8 4
     1037 GETTABLEKS                       R8 R8 K80 ["Blue"]
     1039 SETTABLE                         R8 R6 R7
     1040 GETUPVAL                         R7 3
     1041 GETTABLEKS                       R7 R7 K100 ["AssetConfig_SidetabSelectedBarColor"]
     1043 GETUPVAL                         R8 8
     1044 GETTABLEKS                       R8 R8 K130 ["GRAY_1"]
     1046 SETTABLE                         R8 R6 R7
     1047 GETUPVAL                         R7 3
     1048 GETTABLEKS                       R7 R7 K101 ["AssetConfig_SidetabSelectedBarTransparency"]
     1050 LOADK                            R8 K131 [0.9]
     1051 SETTABLE                         R8 R6 R7
     1052 GETUPVAL                         R7 3
     1053 GETTABLEKS                       R7 R7 K102 ["AssetConfig_SidetabSelectedBarZIndex"]
     1055 LOADN                            R8 0
     1056 SETTABLE                         R8 R6 R7
     1057 GETUPVAL                         R7 3
     1058 GETTABLEKS                       R7 R7 K103 ["AssetConfig_SidetabSelectedIndicatorZindex"]
     1060 LOADN                            R8 0
     1061 SETTABLE                         R8 R6 R7
     1062 GETUPVAL                         R7 3
     1063 GETTABLEKS                       R7 R7 K104 ["AssetConfig_UploadResultButtonColor"]
     1065 GETUPVAL                         R8 4
     1066 GETTABLEKS                       R8 R8 K67 ["Black"]
     1068 SETTABLE                         R8 R6 R7
     1069 GETUPVAL                         R7 3
     1070 GETTABLEKS                       R7 R7 K105 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
     1072 GETIMPORT                        R8 K14 [Color3.fromRGB]
     1074 LOADN                            R9 151
     1075 LOADN                            R10 151
     1076 LOADN                            R11 151
     1077 CALL                             R8 3 1
     1078 SETTABLE                         R8 R6 R7
     1079 GETUPVAL                         R7 3
     1080 GETTABLEKS                       R7 R7 K106 ["AssetConfig_DistributionQuotaTextColor"]
     1082 GETUPVAL                         R8 4
     1083 GETTABLEKS                       R8 R8 K67 ["Black"]
     1085 SETTABLE                         R8 R6 R7
     1086 CALL                             R4 2 1
     1087 GETUPVAL                         R5 9
     1088 CALL                             R5 0 1
     1089 JUMPIFNOT                        R5 ; [+8]
     1090 GETUPVAL                         R5 0
     1091 GETTABLEKS                       R5 R5 K132 ["mock"]
     1093 MOVE                             R6 R3
     1094 MOVE                             R7 R4
     1095 CALL                             R5 2 1
     1096 MOVE                             R2 R5
     1097 JUMP                             ; [+6]
     1098 GETTABLEKS                       R5 R1 K133 ["new"]
     1100 MOVE                             R6 R3
     1101 MOVE                             R7 R4
     1102 CALL                             R5 2 1
     1103 MOVE                             R2 R5
     1104 GETUPVAL                         R5 3
     1105 GETTABLEKS                       R5 R5 K22 ["Toolbox_AssetWarningIcon"]
     1107 NEWTABLE                         R8 64 0
     1109 GETUPVAL                         R9 3
     1110 GETTABLEKS                       R9 R9 K134 ["InputFieldBackground"]
     1112 SETTABLEKS                       R9 R8 K135 ["backgroundColor"]
     1114 GETUPVAL                         R9 8
     1115 GETTABLEKS                       R9 R9 K136 ["BLUE_PRIMARY"]
     1117 SETTABLEKS                       R9 R8 K137 ["progressBarColor"]
     1119 GETUPVAL                         R9 3
     1120 GETTABLEKS                       R9 R9 K62 ["Toolbox_HorizontalLineColor"]
     1122 SETTABLEKS                       R9 R8 K138 ["horizontalLineColor"]
     1124 GETUPVAL                         R9 3
     1125 GETTABLEKS                       R9 R9 K139 ["LinkText"]
     1127 SETTABLEKS                       R9 R8 K140 ["link"]
     1129 GETIMPORT                        R9 K14 [Color3.fromRGB]
     1131 LOADN                            R10 255
     1132 LOADN                            R11 68
     1133 LOADN                            R12 68
     1134 CALL                             R9 3 1
     1135 SETTABLEKS                       R9 R8 K141 ["redText"]
     1137 LOADN                            R9 10
     1138 SETTABLEKS                       R9 R8 K142 ["spacingUnit"]
     1140 DUPTABLE                         R9 K149 [{["backgroundColor"], ["closeIconColor"], ["descriptionColor"], ["headerTextColor"], ["overlayColor"], ["overlayTransparency"] = 0.4}]
     1141 GETUPVAL                         R10 3
     1142 GETTABLEKS                       R10 R10 K150 ["MainBackground"]
     1144 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1146 GETUPVAL                         R10 4
     1147 GETTABLEKS                       R10 R10 K44 ["White"]
     1149 SETTABLEKS                       R10 R9 K143 ["closeIconColor"]
     1151 GETUPVAL                         R10 3
     1152 GETTABLEKS                       R10 R10 K151 ["TextPrimary"]
     1154 SETTABLEKS                       R10 R9 K144 ["descriptionColor"]
     1156 GETUPVAL                         R10 3
     1157 GETTABLEKS                       R10 R10 K152 ["BrightText"]
     1159 SETTABLEKS                       R10 R9 K145 ["headerTextColor"]
     1161 GETUPVAL                         R10 4
     1162 GETTABLEKS                       R10 R10 K67 ["Black"]
     1164 SETTABLEKS                       R10 R9 K146 ["overlayColor"]
     1166 SETTABLEKS                       R9 R8 K153 ["announcementDialog"]
     1168 DUPTABLE                         R9 K165 [{["assetName"], ["background"], ["dropShadowSize"], ["icon"], ["outline"], ["textColor"], ["strokeThickness"] = 3, ["strokeColor"], ["voting"], ["packages"]}]
     1169 DUPTABLE                         R10 K166 [{"textColor"}]
     1170 GETUPVAL                         R11 3
     1171 GETTABLEKS                       R11 R11 K20 ["Toolbox_AssetNameColor"]
     1173 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1175 SETTABLEKS                       R10 R9 K154 ["assetName"]
     1177 DUPTABLE                         R10 K170 [{"color", "borderSize", "image"}]
     1178 GETUPVAL                         R11 3
     1179 GETTABLEKS                       R11 R11 K17 ["Toolbox_AssetBackgroundColor"]
     1181 SETTABLEKS                       R11 R10 K167 ["color"]
     1183 GETUPVAL                         R11 3
     1184 GETTABLEKS                       R11 R11 K16 ["Toolbox_AssetBorderSize"]
     1186 SETTABLEKS                       R11 R10 K168 ["borderSize"]
     1188 GETUPVAL                         R11 3
     1189 GETTABLEKS                       R11 R11 K18 ["Toolbox_AssetBackgroundImage"]
     1191 SETTABLEKS                       R11 R10 K169 ["image"]
     1193 SETTABLEKS                       R10 R9 K155 ["background"]
     1195 GETUPVAL                         R10 3
     1196 GETTABLEKS                       R10 R10 K15 ["Toolbox_AssetDropdownSize"]
     1198 SETTABLEKS                       R10 R9 K156 ["dropShadowSize"]
     1200 DUPTABLE                         R10 K174 [{"borderColor", "buttonColor", "warningColor"}]
     1201 GETUPVAL                         R11 3
     1202 GETTABLEKS                       R11 R11 K175 ["ItemHovered"]
     1204 SETTABLEKS                       R11 R10 K171 ["borderColor"]
     1206 GETUPVAL                         R11 3
     1207 GETTABLEKS                       R11 R11 K21 ["Toolbox_AssetIconColor"]
     1209 SETTABLEKS                       R11 R10 K172 ["buttonColor"]
     1211 GETUPVAL                         R11 3
     1212 GETTABLEKS                       R11 R11 K22 ["Toolbox_AssetWarningIcon"]
     1214 SETTABLEKS                       R11 R10 K173 ["warningColor"]
     1216 SETTABLEKS                       R10 R9 K157 ["icon"]
     1218 DUPTABLE                         R10 K178 [{"backgroundColor", "verifiedBackgroundColor", "borderColor", "transparency"}]
     1219 GETUPVAL                         R11 3
     1220 GETTABLEKS                       R11 R11 K4 ["Toolbox_AssetOutlineBackground"]
     1222 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1224 GETUPVAL                         R11 3
     1225 GETTABLEKS                       R11 R11 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
     1227 SETTABLEKS                       R11 R10 K176 ["verifiedBackgroundColor"]
     1229 GETUPVAL                         R11 3
     1230 GETTABLEKS                       R11 R11 K9 ["Toolbox_AssetOutlineBoarderColor"]
     1232 SETTABLEKS                       R11 R10 K171 ["borderColor"]
     1234 GETUPVAL                         R11 3
     1235 GETTABLEKS                       R11 R11 K11 ["Toolbox_AssetOutlineTransparency"]
     1237 SETTABLEKS                       R11 R10 K177 ["transparency"]
     1239 SETTABLEKS                       R10 R9 K158 ["outline"]
     1241 GETUPVAL                         R10 3
     1242 GETTABLEKS                       R10 R10 K179 ["MainText"]
     1244 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1246 GETUPVAL                         R10 8
     1247 GETTABLEKS                       R10 R10 K136 ["BLUE_PRIMARY"]
     1249 SETTABLEKS                       R10 R9 K162 ["strokeColor"]
     1251 DUPTABLE                         R10 K190 [{"downVotes", "upVotes", "textColor", "votedDownThumb", "votedUpThumb", "voteThumb", "rateTextColor", "voteCountColor", "lowConfidencePercentageColor", "votingButtonsBackgroundBoxColor", "votingButtonImage"}]
     1252 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1254 LOADN                            R12 206
     1255 LOADN                            R13 100
     1256 LOADN                            R14 91
     1257 CALL                             R11 3 1
     1258 SETTABLEKS                       R11 R10 K180 ["downVotes"]
     1260 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1262 LOADN                            R12 82
     1263 LOADN                            R13 168
     1264 LOADN                            R14 70
     1265 CALL                             R11 3 1
     1266 SETTABLEKS                       R11 R10 K181 ["upVotes"]
     1268 GETUPVAL                         R11 3
     1269 GETTABLEKS                       R11 R11 K191 ["SubText"]
     1271 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1273 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1275 LOADN                            R12 216
     1276 LOADN                            R13 104
     1277 LOADN                            R14 104
     1278 CALL                             R11 3 1
     1279 SETTABLEKS                       R11 R10 K182 ["votedDownThumb"]
     1281 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1283 LOADN                            R12 0
     1284 LOADN                            R13 178
     1285 LOADN                            R14 89
     1286 CALL                             R11 3 1
     1287 SETTABLEKS                       R11 R10 K183 ["votedUpThumb"]
     1289 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1291 LOADN                            R12 117
     1292 LOADN                            R13 117
     1293 LOADN                            R14 117
     1294 CALL                             R11 3 1
     1295 SETTABLEKS                       R11 R10 K184 ["voteThumb"]
     1297 GETUPVAL                         R11 3
     1298 GETTABLEKS                       R11 R11 K85 ["Toolbox_RateTextColor"]
     1300 SETTABLEKS                       R11 R10 K185 ["rateTextColor"]
     1302 GETUPVAL                         R11 3
     1303 GETTABLEKS                       R11 R11 K87 ["Toolbox_VoteCountColor"]
     1305 SETTABLEKS                       R11 R10 K186 ["voteCountColor"]
     1307 GETUPVAL                         R11 3
     1308 GETTABLEKS                       R11 R11 K88 ["Toolbox_LowConfidencePercentageColor"]
     1310 SETTABLEKS                       R11 R10 K187 ["lowConfidencePercentageColor"]
     1312 GETUPVAL                         R11 3
     1313 GETTABLEKS                       R11 R11 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
     1315 SETTABLEKS                       R11 R10 K188 ["votingButtonsBackgroundBoxColor"]
     1317 GETUPVAL                         R11 3
     1318 GETTABLEKS                       R11 R11 K91 ["Toolbox_VotingButtonImage"]
     1320 SETTABLEKS                       R11 R10 K189 ["votingButtonImage"]
     1322 SETTABLEKS                       R10 R9 K163 ["voting"]
     1324 DUPTABLE                         R10 K194 [{"backgroundColor", "backgroundTransparency", "packageImage"}]
     1325 GETUPVAL                         R11 3
     1326 GETTABLEKS                       R11 R11 K66 ["Toolbox_PackageBackgroundColor"]
     1328 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1330 GETUPVAL                         R11 3
     1331 GETTABLEKS                       R11 R11 K68 ["Toolbox_PackageBackgroundTransparency"]
     1333 SETTABLEKS                       R11 R10 K192 ["backgroundTransparency"]
     1335 GETUPVAL                         R11 3
     1336 GETTABLEKS                       R11 R11 K70 ["Toolbox_PackageImage"]
     1338 SETTABLEKS                       R11 R10 K193 ["packageImage"]
     1340 SETTABLEKS                       R10 R9 K164 ["packages"]
     1342 SETTABLEKS                       R9 R8 K195 ["asset"]
     1344 DUPTABLE                         R9 K197 [{"labelTextColor"}]
     1345 GETUPVAL                         R10 3
     1346 GETTABLEKS                       R10 R10 K198 ["DimmedText"]
     1348 SETTABLEKS                       R10 R9 K196 ["labelTextColor"]
     1350 SETTABLEKS                       R9 R8 K199 ["assetConfig"]
     1352 DUPTABLE                         R9 K202 [{"backgroundColor", "progressBarColor", "indicatorColor", "indicatorBorderColor"}]
     1353 GETUPVAL                         R10 3
     1354 GETTABLEKS                       R10 R10 K45 ["Toolbox_AudioPlayerBackgroundColor"]
     1356 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1358 GETUPVAL                         R10 3
     1359 GETTABLEKS                       R10 R10 K47 ["Toolbox_AudioPlayerProgressBarColor"]
     1361 SETTABLEKS                       R10 R9 K137 ["progressBarColor"]
     1363 GETUPVAL                         R10 3
     1364 GETTABLEKS                       R10 R10 K49 ["Toolbox_AudioPlayerIndicatorColor"]
     1366 SETTABLEKS                       R10 R9 K200 ["indicatorColor"]
     1368 GETUPVAL                         R10 3
     1369 GETTABLEKS                       R10 R10 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
     1371 SETTABLEKS                       R10 R9 K201 ["indicatorBorderColor"]
     1373 SETTABLEKS                       R9 R8 K203 ["audioPlayer"]
     1375 DUPTABLE                         R9 K207 [{"backgroundButtonColor", "selectedButtonColor", "selectedTextColor", "textColor"}]
     1376 GETUPVAL                         R10 3
     1377 GETTABLEKS                       R10 R10 K45 ["Toolbox_AudioPlayerBackgroundColor"]
     1379 SETTABLEKS                       R10 R9 K204 ["backgroundButtonColor"]
     1381 GETIMPORT                        R10 K7 [Color3.fromHex]
     1383 LOADK                            R11 K48 ["#0077D6"]
     1384 CALL                             R10 1 1
     1385 SETTABLEKS                       R10 R9 K205 ["selectedButtonColor"]
     1387 GETUPVAL                         R10 3
     1388 GETTABLEKS                       R10 R10 K52 ["Toolbox_AudioTabSelectedTextColor"]
     1390 SETTABLEKS                       R10 R9 K206 ["selectedTextColor"]
     1392 GETUPVAL                         R10 3
     1393 GETTABLEKS                       R10 R10 K208 ["TextSecondary"]
     1395 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1397 SETTABLEKS                       R9 R8 K209 ["audioTabs"]
     1399 GETUPVAL                         R10 5
     1400 CALL                             R10 0 1
     1401 JUMPIFNOT                        R10 ; [+16]
     1402 DUPTABLE                         R9 K215 [{["spacingUnit"] = 10, ["textSize"] = 18, ["font"], ["thumbnailBackgroundColor"], ["textColor"]}]
     1403 GETIMPORT                        R10 K219 [Enum.Font.SourceSans]
     1405 SETTABLEKS                       R10 R9 K213 ["font"]
     1407 GETUPVAL                         R10 3
     1408 GETTABLEKS                       R10 R10 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
     1410 SETTABLEKS                       R10 R9 K214 ["thumbnailBackgroundColor"]
     1412 GETUPVAL                         R10 3
     1413 GETTABLEKS                       R10 R10 K24 ["Toolbox_CreatorLabelTextColor"]
     1415 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1417 JUMP                             ; [+1]
     1418 LOADNIL                          R9
     1419 SETTABLEKS                       R9 R8 K220 ["creatorLabel"]
     1421 GETUPVAL                         R10 5
     1422 CALL                             R10 0 1
     1423 JUMPIFNOT                        R10 ; [+7]
     1424 DUPTABLE                         R9 K221 [{["spacingUnit"] = 10, ["backgroundColor"]}]
     1425 GETUPVAL                         R10 3
     1426 GETTABLEKS                       R10 R10 K28 ["Toolbox_CreatorPillBackgroundColor"]
     1428 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1430 JUMP                             ; [+1]
     1431 LOADNIL                          R9
     1432 SETTABLEKS                       R9 R8 K222 ["creatorPill"]
     1434 DUPTABLE                         R9 K166 [{"textColor"}]
     1435 GETUPVAL                         R10 3
     1436 GETTABLEKS                       R10 R10 K191 ["SubText"]
     1438 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1440 SETTABLEKS                       R9 R8 K223 ["creatorName"]
     1442 DUPTABLE                         R9 K226 [{"errorIcon", "alertIcon"}]
     1443 GETUPVAL                         R10 3
     1444 GETTABLEKS                       R10 R10 K29 ["Toolbox_DialogErrorIcon"]
     1446 SETTABLEKS                       R10 R9 K224 ["errorIcon"]
     1448 GETUPVAL                         R10 3
     1449 GETTABLEKS                       R10 R10 K31 ["Toolbox_AlertIcon"]
     1451 SETTABLEKS                       R10 R9 K225 ["alertIcon"]
     1453 SETTABLEKS                       R9 R8 K227 ["dialog"]
     1455 DUPTABLE                         R9 K232 [{"dropdownIconColor", "currentSelection", "item", "dropdownFrame"}]
     1456 GETUPVAL                         R10 3
     1457 GETTABLEKS                       R10 R10 K56 ["Toolbox_DropdownIconColor"]
     1459 SETTABLEKS                       R10 R9 K228 ["dropdownIconColor"]
     1461 DUPTABLE                         R10 K237 [{"backgroundColor", "backgroundSelectedColor", "backgroundDisabledColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor"}]
     1462 GETUPVAL                         R11 3
     1463 GETTABLEKS                       R11 R11 K238 ["Dropdown"]
     1465 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1467 GETUPVAL                         R11 3
     1468 GETTABLEKS                       R11 R11 K239 ["CurrentMarker"]
     1470 SETTABLEKS                       R11 R10 K233 ["backgroundSelectedColor"]
     1472 GETUPVAL                         R11 3
     1473 GETTABLEKS                       R11 R11 K240 ["Border"]
     1475 SETTABLEKS                       R11 R10 K234 ["backgroundDisabledColor"]
     1477 GETUPVAL                         R11 3
     1478 GETTABLEKS                       R11 R11 K240 ["Border"]
     1480 SETTABLEKS                       R11 R10 K171 ["borderColor"]
     1482 GETUPVAL                         R11 3
     1483 GETTABLEKS                       R11 R11 K239 ["CurrentMarker"]
     1485 SETTABLEKS                       R11 R10 K235 ["borderSelectedColor"]
     1487 GETUPVAL                         R11 3
     1488 GETTABLEKS                       R11 R11 K179 ["MainText"]
     1490 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1492 GETUPVAL                         R11 3
     1493 GETTABLEKS                       R11 R11 K241 ["MainTextSelected"]
     1495 SETTABLEKS                       R11 R10 K236 ["textSelectedColor"]
     1497 SETTABLEKS                       R10 R9 K229 ["currentSelection"]
     1499 DUPTABLE                         R10 K243 [{"backgroundColor", "backgroundSelectedColor", "selectedBarColor", "textColor", "labelTextColor"}]
     1500 GETUPVAL                         R11 3
     1501 GETTABLEKS                       R11 R11 K244 ["Item"]
     1503 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1505 GETUPVAL                         R11 3
     1506 GETTABLEKS                       R11 R11 K54 ["Toolbox_DropdownItemSelectedColor"]
     1508 SETTABLEKS                       R11 R10 K233 ["backgroundSelectedColor"]
     1510 GETUPVAL                         R11 3
     1511 GETTABLEKS                       R11 R11 K239 ["CurrentMarker"]
     1513 SETTABLEKS                       R11 R10 K242 ["selectedBarColor"]
     1515 GETUPVAL                         R11 3
     1516 GETTABLEKS                       R11 R11 K179 ["MainText"]
     1518 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1520 GETUPVAL                         R11 3
     1521 GETTABLEKS                       R11 R11 K198 ["DimmedText"]
     1523 SETTABLEKS                       R11 R10 K196 ["labelTextColor"]
     1525 SETTABLEKS                       R10 R9 K230 ["item"]
     1527 DUPTABLE                         R10 K245 [{"borderColor"}]
     1528 GETUPVAL                         R11 3
     1529 GETTABLEKS                       R11 R11 K240 ["Border"]
     1531 SETTABLEKS                       R11 R10 K171 ["borderColor"]
     1533 SETTABLEKS                       R10 R9 K231 ["dropdownFrame"]
     1535 SETTABLEKS                       R9 R8 K246 ["dropdownMenu"]
     1537 DUPTABLE                         R9 K249 [{"backgroundColor", "hoveredBackgroundColor", "textFillColor"}]
     1538 GETUPVAL                         R10 3
     1539 GETTABLEKS                       R10 R10 K57 ["Toolbox_FontTileBackgroundColor"]
     1541 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1543 GETUPVAL                         R10 3
     1544 GETTABLEKS                       R10 R10 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
     1546 SETTABLEKS                       R10 R9 K247 ["hoveredBackgroundColor"]
     1548 GETUPVAL                         R10 3
     1549 GETTABLEKS                       R10 R10 K60 ["Toolbox_FontTileTextFillColor"]
     1551 SETTABLEKS                       R10 R9 K248 ["textFillColor"]
     1553 SETTABLEKS                       R9 R8 K250 ["fontTile"]
     1555 DUPTABLE                         R9 K252 [{"backgroundColor", "borderColor", "labelTextColor", "button"}]
     1556 GETUPVAL                         R10 3
     1557 GETTABLEKS                       R10 R10 K253 ["Titlebar"]
     1559 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1561 GETUPVAL                         R10 3
     1562 GETTABLEKS                       R10 R10 K240 ["Border"]
     1564 SETTABLEKS                       R10 R9 K171 ["borderColor"]
     1566 GETUPVAL                         R10 3
     1567 GETTABLEKS                       R10 R10 K179 ["MainText"]
     1569 SETTABLEKS                       R10 R9 K196 ["labelTextColor"]
     1571 DUPTABLE                         R10 K254 [{"backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor"}]
     1572 GETUPVAL                         R11 3
     1573 GETTABLEKS                       R11 R11 K238 ["Dropdown"]
     1575 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1577 GETUPVAL                         R11 3
     1578 GETTABLEKS                       R11 R11 K239 ["CurrentMarker"]
     1580 SETTABLEKS                       R11 R10 K233 ["backgroundSelectedColor"]
     1582 GETUPVAL                         R11 3
     1583 GETTABLEKS                       R11 R11 K240 ["Border"]
     1585 SETTABLEKS                       R11 R10 K171 ["borderColor"]
     1587 GETUPVAL                         R11 3
     1588 GETTABLEKS                       R11 R11 K239 ["CurrentMarker"]
     1590 SETTABLEKS                       R11 R10 K235 ["borderSelectedColor"]
     1592 GETUPVAL                         R11 3
     1593 GETTABLEKS                       R11 R11 K179 ["MainText"]
     1595 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1597 GETUPVAL                         R11 3
     1598 GETTABLEKS                       R11 R11 K241 ["MainTextSelected"]
     1600 SETTABLEKS                       R11 R10 K236 ["textSelectedColor"]
     1602 SETTABLEKS                       R10 R9 K251 ["button"]
     1604 SETTABLEKS                       R9 R8 K255 ["footer"]
     1606 DUPTABLE                         R9 K257 [{"backgroundColor", "borderColor", "iconColor"}]
     1607 GETUPVAL                         R10 3
     1608 GETTABLEKS                       R10 R10 K253 ["Titlebar"]
     1610 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1612 GETUPVAL                         R10 3
     1613 GETTABLEKS                       R10 R10 K240 ["Border"]
     1615 SETTABLEKS                       R10 R9 K171 ["borderColor"]
     1617 GETUPVAL                         R11 10
     1618 CALL                             R11 0 1
     1619 JUMPIFNOT                        R11 ; [+4]
     1620 GETUPVAL                         R10 8
     1621 GETTABLEKS                       R10 R10 K258 ["GRAY_2"]
     1623 JUMP                             ; [+1]
     1624 LOADNIL                          R10
     1625 SETTABLEKS                       R10 R9 K256 ["iconColor"]
     1627 SETTABLEKS                       R9 R8 K259 ["header"]
     1629 DUPTABLE                         R9 K260 [{"backgroundColor"}]
     1630 GETUPVAL                         R10 3
     1631 GETTABLEKS                       R10 R10 K83 ["Toolbox_HomeviewBackgroundColor"]
     1633 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1635 SETTABLEKS                       R9 R8 K261 ["homeView"]
     1637 DUPTABLE                         R9 K270 [{["font"], ["gradientColor"], ["overlayColor"], ["overlayTransparency"] = 0.88, ["padding"] = 8, ["spacing"] = 16, ["textColor"], ["textColorHovered"] = , ["textSize"] = 16}]
     1638 GETIMPORT                        R10 K272 [Enum.Font.SourceSansBold]
     1640 SETTABLEKS                       R10 R9 K213 ["font"]
     1642 GETUPVAL                         R10 3
     1643 GETTABLEKS                       R10 R10 K82 ["Toolbox_IconTileGradientColor"]
     1645 SETTABLEKS                       R10 R9 K262 ["gradientColor"]
     1647 GETIMPORT                        R10 K7 [Color3.fromHex]
     1649 LOADK                            R11 K273 ["#000"]
     1650 CALL                             R10 1 1
     1651 SETTABLEKS                       R10 R9 K146 ["overlayColor"]
     1653 GETIMPORT                        R10 K7 [Color3.fromHex]
     1655 LOADK                            R11 K111 ["#E1E1E1"]
     1656 CALL                             R10 1 1
     1657 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1659 SETTABLEKS                       R9 R8 K274 ["iconTile"]
     1661 DUPTABLE                         R9 K275 [{"backgroundColor", "textColor"}]
     1662 GETUPVAL                         R10 3
     1663 GETTABLEKS                       R10 R10 K253 ["Titlebar"]
     1665 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1667 GETUPVAL                         R10 3
     1668 GETTABLEKS                       R10 R10 K191 ["SubText"]
     1670 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1672 SETTABLEKS                       R9 R8 K276 ["infoBanner"]
     1674 DUPTABLE                         R9 K285 [{["backgroundColorEven"], ["backgroundColorOdd"], ["borderColor"], ["headerTextColor"], ["titleTextColor"], ["primaryIconColor"], ["textColor"], ["textSize"] = 16, ["playButtonColor"], ["pauseButtonColor"], ["insertButtonColor"], ["insertButtonTextColor"]}]
     1675 GETUPVAL                         R10 3
     1676 GETTABLEKS                       R10 R10 K33 ["Toolbox_ItemRowBackgroundColorEven"]
     1678 SETTABLEKS                       R10 R9 K277 ["backgroundColorEven"]
     1680 GETUPVAL                         R10 3
     1681 GETTABLEKS                       R10 R10 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
     1683 SETTABLEKS                       R10 R9 K278 ["backgroundColorOdd"]
     1685 GETUPVAL                         R10 3
     1686 GETTABLEKS                       R10 R10 K37 ["Toolbox_ItemRowBorderColor"]
     1688 SETTABLEKS                       R10 R9 K171 ["borderColor"]
     1690 GETUPVAL                         R10 3
     1691 GETTABLEKS                       R10 R10 K39 ["Toolbox_ItemRowHeaderTextColor"]
     1693 SETTABLEKS                       R10 R9 K145 ["headerTextColor"]
     1695 GETUPVAL                         R10 3
     1696 GETTABLEKS                       R10 R10 K41 ["Toolbox_ItemRowTitleTextColor"]
     1698 SETTABLEKS                       R10 R9 K279 ["titleTextColor"]
     1700 GETIMPORT                        R10 K7 [Color3.fromHex]
     1702 LOADK                            R11 K286 ["#DF9251"]
     1703 CALL                             R10 1 1
     1704 SETTABLEKS                       R10 R9 K280 ["primaryIconColor"]
     1706 GETUPVAL                         R10 3
     1707 GETTABLEKS                       R10 R10 K191 ["SubText"]
     1709 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1711 GETUPVAL                         R10 8
     1712 GETTABLEKS                       R10 R10 K287 ["BLACK"]
     1714 SETTABLEKS                       R10 R9 K281 ["playButtonColor"]
     1716 GETUPVAL                         R10 8
     1717 GETTABLEKS                       R10 R10 K136 ["BLUE_PRIMARY"]
     1719 SETTABLEKS                       R10 R9 K282 ["pauseButtonColor"]
     1721 GETIMPORT                        R10 K7 [Color3.fromHex]
     1723 LOADK                            R11 K48 ["#0077D6"]
     1724 CALL                             R10 1 1
     1725 SETTABLEKS                       R10 R9 K283 ["insertButtonColor"]
     1727 GETUPVAL                         R10 8
     1728 GETTABLEKS                       R10 R10 K288 ["WHITE"]
     1730 SETTABLEKS                       R10 R9 K284 ["insertButtonTextColor"]
     1732 SETTABLEKS                       R9 R8 K289 ["itemRow"]
     1734 DUPTABLE                         R9 K166 [{"textColor"}]
     1735 GETIMPORT                        R10 K14 [Color3.fromRGB]
     1737 LOADN                            R11 0
     1738 LOADN                            R12 162
     1739 LOADN                            R13 255
     1740 CALL                             R10 3 1
     1741 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1743 SETTABLEKS                       R9 R8 K290 ["linkButton"]
     1745 DUPTABLE                         R9 K292 [{"backgroundColor", "textColor", "informativeTextColor", "button"}]
     1746 GETUPVAL                         R10 3
     1747 GETTABLEKS                       R10 R10 K150 ["MainBackground"]
     1749 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1751 GETUPVAL                         R10 3
     1752 GETTABLEKS                       R10 R10 K179 ["MainText"]
     1754 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1756 GETUPVAL                         R10 3
     1757 GETTABLEKS                       R10 R10 K191 ["SubText"]
     1759 SETTABLEKS                       R10 R9 K291 ["informativeTextColor"]
     1761 DUPTABLE                         R10 K293 [{"textColor", "textSelectedColor", "backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor"}]
     1762 GETUPVAL                         R11 3
     1763 GETTABLEKS                       R11 R11 K179 ["MainText"]
     1765 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1767 GETUPVAL                         R11 3
     1768 GETTABLEKS                       R11 R11 K241 ["MainTextSelected"]
     1770 SETTABLEKS                       R11 R10 K236 ["textSelectedColor"]
     1772 GETUPVAL                         R11 3
     1773 GETTABLEKS                       R11 R11 K150 ["MainBackground"]
     1775 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1777 GETUPVAL                         R11 3
     1778 GETTABLEKS                       R11 R11 K239 ["CurrentMarker"]
     1780 SETTABLEKS                       R11 R10 K233 ["backgroundSelectedColor"]
     1782 GETUPVAL                         R11 3
     1783 GETTABLEKS                       R11 R11 K240 ["Border"]
     1785 SETTABLEKS                       R11 R10 K171 ["borderColor"]
     1787 GETUPVAL                         R11 3
     1788 GETTABLEKS                       R11 R11 K239 ["CurrentMarker"]
     1790 SETTABLEKS                       R11 R10 K235 ["borderSelectedColor"]
     1792 SETTABLEKS                       R10 R9 K251 ["button"]
     1794 SETTABLEKS                       R9 R8 K294 ["messageBox"]
     1796 DUPTABLE                         R9 K297 [{"promptText", "balanceText"}]
     1797 GETUPVAL                         R10 3
     1798 GETTABLEKS                       R10 R10 K179 ["MainText"]
     1800 SETTABLEKS                       R10 R9 K295 ["promptText"]
     1802 GETUPVAL                         R10 3
     1803 GETTABLEKS                       R10 R10 K198 ["DimmedText"]
     1805 SETTABLEKS                       R10 R9 K296 ["balanceText"]
     1807 SETTABLEKS                       R9 R8 K298 ["purchaseDialog"]
     1809 DUPTABLE                         R9 K304 [{"backgroundColor", "distributionQuotaTextColor", "titleTextColor", "textColor", "quotaTextColor", "verifyTextColor", "warningIconColor", "additionalImagesThumbnailSize"}]
     1810 GETUPVAL                         R10 3
     1811 GETTABLEKS                       R10 R10 K2 ["Toolbox_PublishAssetBackground"]
     1813 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1815 GETUPVAL                         R10 3
     1816 GETTABLEKS                       R10 R10 K106 ["AssetConfig_DistributionQuotaTextColor"]
     1818 SETTABLEKS                       R10 R9 K299 ["distributionQuotaTextColor"]
     1820 GETUPVAL                         R10 3
     1821 GETTABLEKS                       R10 R10 K191 ["SubText"]
     1823 SETTABLEKS                       R10 R9 K279 ["titleTextColor"]
     1825 GETUPVAL                         R10 3
     1826 GETTABLEKS                       R10 R10 K179 ["MainText"]
     1828 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1830 GETUPVAL                         R10 3
     1831 GETTABLEKS                       R10 R10 K152 ["BrightText"]
     1833 SETTABLEKS                       R10 R9 K300 ["quotaTextColor"]
     1835 GETUPVAL                         R10 3
     1836 GETTABLEKS                       R10 R10 K208 ["TextSecondary"]
     1838 SETTABLEKS                       R10 R9 K301 ["verifyTextColor"]
     1840 GETIMPORT                        R10 K7 [Color3.fromHex]
     1842 LOADK                            R11 K305 ["#FFAA21"]
     1843 CALL                             R10 1 1
     1844 SETTABLEKS                       R10 R9 K302 ["warningIconColor"]
     1846 GETIMPORT                        R10 K307 [UDim2.new]
     1848 LOADN                            R11 0
     1849 LOADN                            R12 185
     1850 LOADN                            R13 0
     1851 LOADN                            R14 104
     1852 CALL                             R10 4 1
     1853 SETTABLEKS                       R10 R9 K303 ["additionalImagesThumbnailSize"]
     1855 SETTABLEKS                       R9 R8 K308 ["publishAsset"]
     1857 DUPTABLE                         R9 K315 [{"backgroundColor", "liveBackgroundColor", "borderColor", "borderHoveredColor", "borderSelectedColor", "textColor", "placeholderTextColor", "divideLineColor", "searchButton", "clearButton"}]
     1858 GETUPVAL                         R10 3
     1859 GETTABLEKS                       R10 R10 K238 ["Dropdown"]
     1861 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1863 GETUPVAL                         R10 3
     1864 GETTABLEKS                       R10 R10 K134 ["InputFieldBackground"]
     1866 SETTABLEKS                       R10 R9 K309 ["liveBackgroundColor"]
     1868 GETUPVAL                         R10 3
     1869 GETTABLEKS                       R10 R10 K240 ["Border"]
     1871 SETTABLEKS                       R10 R9 K171 ["borderColor"]
     1873 GETUPVAL                         R10 3
     1874 GETTABLEKS                       R10 R10 K239 ["CurrentMarker"]
     1876 SETTABLEKS                       R10 R9 K310 ["borderHoveredColor"]
     1878 GETUPVAL                         R10 8
     1879 GETTABLEKS                       R10 R10 K136 ["BLUE_PRIMARY"]
     1881 SETTABLEKS                       R10 R9 K235 ["borderSelectedColor"]
     1883 GETUPVAL                         R10 3
     1884 GETTABLEKS                       R10 R10 K179 ["MainText"]
     1886 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1888 GETUPVAL                         R10 3
     1889 GETTABLEKS                       R10 R10 K198 ["DimmedText"]
     1891 SETTABLEKS                       R10 R9 K311 ["placeholderTextColor"]
     1893 GETUPVAL                         R10 3
     1894 GETTABLEKS                       R10 R10 K240 ["Border"]
     1896 SETTABLEKS                       R10 R9 K312 ["divideLineColor"]
     1898 DUPTABLE                         R10 K318 [{"imageColor", "imageSelectedColor"}]
     1899 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1901 LOADN                            R12 184
     1902 LOADN                            R13 184
     1903 LOADN                            R14 184
     1904 CALL                             R11 3 1
     1905 SETTABLEKS                       R11 R10 K316 ["imageColor"]
     1907 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1909 LOADN                            R12 0
     1910 LOADN                            R13 162
     1911 LOADN                            R14 255
     1912 CALL                             R11 3 1
     1913 SETTABLEKS                       R11 R10 K317 ["imageSelectedColor"]
     1915 SETTABLEKS                       R10 R9 K313 ["searchButton"]
     1917 DUPTABLE                         R10 K318 [{"imageColor", "imageSelectedColor"}]
     1918 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1920 LOADN                            R12 184
     1921 LOADN                            R13 184
     1922 LOADN                            R14 184
     1923 CALL                             R11 3 1
     1924 SETTABLEKS                       R11 R10 K316 ["imageColor"]
     1926 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1928 LOADN                            R12 0
     1929 LOADN                            R13 162
     1930 LOADN                            R14 255
     1931 CALL                             R11 3 1
     1932 SETTABLEKS                       R11 R10 K317 ["imageSelectedColor"]
     1934 SETTABLEKS                       R10 R9 K314 ["clearButton"]
     1936 SETTABLEKS                       R9 R8 K319 ["searchBar"]
     1938 DUPTABLE                         R9 K322 [{"scrollbarBackgroundColor", "scrollbarImageColor"}]
     1939 GETUPVAL                         R10 3
     1940 GETTABLEKS                       R10 R10 K72 ["ScrollingFrameBackgroundColor"]
     1942 SETTABLEKS                       R10 R9 K320 ["scrollbarBackgroundColor"]
     1944 GETUPVAL                         R10 3
     1945 GETTABLEKS                       R10 R10 K73 ["ScrollingFrameImageColor"]
     1947 SETTABLEKS                       R10 R9 K321 ["scrollbarImageColor"]
     1949 SETTABLEKS                       R9 R8 K323 ["scrollingFrame"]
     1951 DUPTABLE                         R9 K326 [{"labelTextColor", "textColor", "textHoveredColor", "underlineColor"}]
     1952 GETUPVAL                         R10 3
     1953 GETTABLEKS                       R10 R10 K179 ["MainText"]
     1955 SETTABLEKS                       R10 R9 K196 ["labelTextColor"]
     1957 GETUPVAL                         R10 3
     1958 GETTABLEKS                       R10 R10 K191 ["SubText"]
     1960 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1962 GETUPVAL                         R10 3
     1963 GETTABLEKS                       R10 R10 K139 ["LinkText"]
     1965 SETTABLEKS                       R10 R9 K324 ["textHoveredColor"]
     1967 GETUPVAL                         R10 3
     1968 GETTABLEKS                       R10 R10 K139 ["LinkText"]
     1970 SETTABLEKS                       R10 R9 K325 ["underlineColor"]
     1972 SETTABLEKS                       R9 R8 K327 ["suggestionsComponent"]
     1974 DUPTABLE                         R9 K334 [{"background", "border", "headerTextColor", "imageColor", "imageHoveredColor", "imageSelectedColor", "warningIconColor", "audioSearch", "timeTextBox", "applyButton", "cancelButton"}]
     1975 GETUPVAL                         R10 3
     1976 GETTABLEKS                       R10 R10 K150 ["MainBackground"]
     1978 SETTABLEKS                       R10 R9 K155 ["background"]
     1980 GETUPVAL                         R10 3
     1981 GETTABLEKS                       R10 R10 K240 ["Border"]
     1983 SETTABLEKS                       R10 R9 K328 ["border"]
     1985 GETUPVAL                         R10 3
     1986 GETTABLEKS                       R10 R10 K179 ["MainText"]
     1988 SETTABLEKS                       R10 R9 K145 ["headerTextColor"]
     1990 GETUPVAL                         R10 8
     1991 GETTABLEKS                       R10 R10 K258 ["GRAY_2"]
     1993 SETTABLEKS                       R10 R9 K316 ["imageColor"]
     1995 GETUPVAL                         R10 3
     1996 GETTABLEKS                       R10 R10 K84 ["Toolbox_SearchOptionButtonHover"]
     1998 SETTABLEKS                       R10 R9 K329 ["imageHoveredColor"]
     2000 GETUPVAL                         R10 8
     2001 GETTABLEKS                       R10 R10 K136 ["BLUE_PRIMARY"]
     2003 SETTABLEKS                       R10 R9 K317 ["imageSelectedColor"]
     2005 SETTABLEKS                       R5 R9 K302 ["warningIconColor"]
     2007 DUPTABLE                         R10 K166 [{"textColor"}]
     2008 GETUPVAL                         R11 3
     2009 GETTABLEKS                       R11 R11 K179 ["MainText"]
     2011 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2013 SETTABLEKS                       R10 R9 K330 ["audioSearch"]
     2015 DUPTABLE                         R10 K336 [{"borderColor", "backgroundColor", "selectedBorderColor", "textColor", "placeholderTextColor"}]
     2016 GETUPVAL                         R11 3
     2017 GETTABLEKS                       R11 R11 K240 ["Border"]
     2019 SETTABLEKS                       R11 R10 K171 ["borderColor"]
     2021 GETUPVAL                         R11 3
     2022 GETTABLEKS                       R11 R11 K134 ["InputFieldBackground"]
     2024 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     2026 GETUPVAL                         R11 8
     2027 GETTABLEKS                       R11 R11 K136 ["BLUE_PRIMARY"]
     2029 SETTABLEKS                       R11 R10 K335 ["selectedBorderColor"]
     2031 GETUPVAL                         R11 3
     2032 GETTABLEKS                       R11 R11 K179 ["MainText"]
     2034 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2036 GETUPVAL                         R11 3
     2037 GETTABLEKS                       R11 R11 K198 ["DimmedText"]
     2039 SETTABLEKS                       R11 R10 K311 ["placeholderTextColor"]
     2041 SETTABLEKS                       R10 R9 K331 ["timeTextBox"]
     2043 GETUPVAL                         R11 11
     2044 CALL                             R11 0 1
     2045 JUMPIF                           R11 ; [+17]
     2046 DUPTABLE                         R10 K337 [{"textColor", "backgroundColor", "borderColor"}]
     2047 GETUPVAL                         R11 8
     2048 GETTABLEKS                       R11 R11 K288 ["WHITE"]
     2050 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2052 GETUPVAL                         R11 8
     2053 GETTABLEKS                       R11 R11 K136 ["BLUE_PRIMARY"]
     2055 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     2057 GETUPVAL                         R11 3
     2058 GETTABLEKS                       R11 R11 K150 ["MainBackground"]
     2060 SETTABLEKS                       R11 R10 K171 ["borderColor"]
     2062 JUMP                             ; [+1]
     2063 LOADNIL                          R10
     2064 SETTABLEKS                       R10 R9 K332 ["applyButton"]
     2066 GETUPVAL                         R11 11
     2067 CALL                             R11 0 1
     2068 JUMPIF                           R11 ; [+17]
     2069 DUPTABLE                         R10 K337 [{"textColor", "backgroundColor", "borderColor"}]
     2070 GETUPVAL                         R11 3
     2071 GETTABLEKS                       R11 R11 K179 ["MainText"]
     2073 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2075 GETUPVAL                         R11 3
     2076 GETTABLEKS                       R11 R11 K338 ["Button"]
     2078 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     2080 GETUPVAL                         R11 3
     2081 GETTABLEKS                       R11 R11 K240 ["Border"]
     2083 SETTABLEKS                       R11 R10 K171 ["borderColor"]
     2085 JUMP                             ; [+1]
     2086 LOADNIL                          R10
     2087 SETTABLEKS                       R10 R9 K333 ["cancelButton"]
     2089 SETTABLEKS                       R9 R8 K339 ["searchOptions"]
     2091 DUPTABLE                         R9 K341 [{["buttonSpacing"] = 3}]
     2092 SETTABLEKS                       R9 R8 K342 ["searchList"]
     2094 DUPTABLE                         R9 K344 [{["backgroundColor"], ["backgroundColorHovered"], ["font"], ["padding"], ["textSize"] = 18, ["textColor"]}]
     2095 GETUPVAL                         R10 3
     2096 GETTABLEKS                       R10 R10 K76 ["Toolbox_SearchPillBackgroundColor"]
     2098 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2100 GETUPVAL                         R10 3
     2101 GETTABLEKS                       R10 R10 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
     2103 SETTABLEKS                       R10 R9 K343 ["backgroundColorHovered"]
     2105 GETIMPORT                        R10 K219 [Enum.Font.SourceSans]
     2107 SETTABLEKS                       R10 R9 K213 ["font"]
     2109 DUPTABLE                         R10 K351 [{["top"] = 4, ["bottom"] = 6, ["left"] = 10, ["right"] = 10}]
     2110 SETTABLEKS                       R10 R9 K264 ["padding"]
     2112 GETUPVAL                         R10 3
     2113 GETTABLEKS                       R10 R10 K75 ["Toolbox_SearchPillTextColor"]
     2115 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2117 SETTABLEKS                       R9 R8 K352 ["searchPill"]
     2119 DUPTABLE                         R9 K354 [{"backgroundColor", "borderColor", "textColor", "clearAllText"}]
     2120 GETUPVAL                         R10 3
     2121 GETTABLEKS                       R10 R10 K74 ["Toolbox_SearchTagBackgroundColor"]
     2123 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2125 GETUPVAL                         R10 3
     2126 GETTABLEKS                       R10 R10 K240 ["Border"]
     2128 SETTABLEKS                       R10 R9 K171 ["borderColor"]
     2130 GETUPVAL                         R10 3
     2131 GETTABLEKS                       R10 R10 K152 ["BrightText"]
     2133 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2135 GETUPVAL                         R10 3
     2136 GETTABLEKS                       R10 R10 K139 ["LinkText"]
     2138 SETTABLEKS                       R10 R9 K353 ["clearAllText"]
     2140 SETTABLEKS                       R9 R8 K355 ["searchTag"]
     2142 DUPTABLE                         R9 K356 [{["textColor"], ["font"], ["textSize"] = 18}]
     2143 GETUPVAL                         R10 3
     2144 GETTABLEKS                       R10 R10 K63 ["Toolbox_NavigationLinkTextColor"]
     2146 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2148 GETIMPORT                        R10 K272 [Enum.Font.SourceSansBold]
     2150 SETTABLEKS                       R10 R9 K213 ["font"]
     2152 SETTABLEKS                       R9 R8 K357 ["sectionHeader"]
     2154 DUPTABLE                         R9 K359 [{["textColor"], ["hoverTextColor"], ["font"], ["textSize"] = 16}]
     2155 GETUPVAL                         R10 3
     2156 GETTABLEKS                       R10 R10 K63 ["Toolbox_NavigationLinkTextColor"]
     2158 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2160 GETUPVAL                         R10 3
     2161 GETTABLEKS                       R10 R10 K64 ["Toolbox_NavigationLinkTextColorHover"]
     2163 SETTABLEKS                       R10 R9 K358 ["hoverTextColor"]
     2165 GETIMPORT                        R10 K219 [Enum.Font.SourceSans]
     2167 SETTABLEKS                       R10 R9 K213 ["font"]
     2169 SETTABLEKS                       R9 R8 K360 ["sectionHeaderNavLink"]
     2171 DUPTABLE                         R9 K366 [{"backgroundColor", "borderColor", "topBorderColor", "tabBackground", "disabledColor", "contentColor", "selectedColor"}]
     2172 GETUPVAL                         R10 3
     2173 GETTABLEKS                       R10 R10 K150 ["MainBackground"]
     2175 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2177 GETUPVAL                         R10 3
     2178 GETTABLEKS                       R10 R10 K240 ["Border"]
     2180 SETTABLEKS                       R10 R9 K171 ["borderColor"]
     2182 GETUPVAL                         R10 3
     2183 GETTABLEKS                       R10 R10 K79 ["Toolbox_TabTopBorderColor"]
     2185 SETTABLEKS                       R10 R9 K361 ["topBorderColor"]
     2187 GETUPVAL                         R10 3
     2188 GETTABLEKS                       R10 R10 K253 ["Titlebar"]
     2190 SETTABLEKS                       R10 R9 K362 ["tabBackground"]
     2192 GETUPVAL                         R10 3
     2193 GETTABLEKS                       R10 R10 K240 ["Border"]
     2195 SETTABLEKS                       R10 R9 K363 ["disabledColor"]
     2197 GETUPVAL                         R10 3
     2198 GETTABLEKS                       R10 R10 K367 ["TitlebarText"]
     2200 SETTABLEKS                       R10 R9 K364 ["contentColor"]
     2202 GETUPVAL                         R10 3
     2203 GETTABLEKS                       R10 R10 K81 ["Toolbox_TabSelectedColor"]
     2205 SETTABLEKS                       R10 R9 K365 ["selectedColor"]
     2207 SETTABLEKS                       R9 R8 K368 ["tabSet"]
     2209 DUPTABLE                         R9 K375 [{["buttonHeight"] = 24, ["buttonWidth"] = 40, ["verticalTextSpacing"] = 4, ["verticalListPadding"] = 16}]
     2210 SETTABLEKS                       R9 R8 K376 ["toggle"]
     2212 GETUPVAL                         R9 12
     2213 GETTABLEKS                       R9 R9 K139 ["LinkText"]
     2215 GETUPVAL                         R10 13
     2216 GETTABLEKS                       R10 R10 K1 ["join"]
     2218 GETUPVAL                         R11 14
     2219 LOADK                            R12 K139 ["LinkText"]
     2220 CALL                             R11 1 1
     2221 NEWTABLE                         R12 4 0
     2223 DUPTABLE                         R13 K381 [{["TextSize"] = 16, ["TextColor"], ["ShowUnderline"] = True}]
     2224 GETUPVAL                         R14 3
     2225 GETTABLEKS                       R14 R14 K191 ["SubText"]
     2227 SETTABLEKS                       R14 R13 K378 ["TextColor"]
     2229 SETTABLEKS                       R13 R12 K382 ["&ToolboxItemRowLink"]
     2231 DUPTABLE                         R13 K383 [{["TextColor"], ["ShowUnderline"] = True}]
     2232 GETUPVAL                         R14 3
     2233 GETTABLEKS                       R14 R14 K43 ["Toolbox_ItemRowTextColor"]
     2235 SETTABLEKS                       R14 R13 K378 ["TextColor"]
     2237 SETTABLEKS                       R13 R12 K384 ["&ToolboxItemRowInnerLink"]
     2239 DUPTABLE                         R13 K381 [{["TextSize"] = 16, ["TextColor"], ["ShowUnderline"] = True}]
     2240 GETUPVAL                         R14 3
     2241 GETTABLEKS                       R14 R14 K41 ["Toolbox_ItemRowTitleTextColor"]
     2243 SETTABLEKS                       R14 R13 K378 ["TextColor"]
     2245 SETTABLEKS                       R13 R12 K385 ["&ToolboxItemRowTitle"]
     2247 CALL                             R10 2 1
     2248 SETTABLE                         R10 R8 R9
     2249 GETUPVAL                         R9 12
     2250 GETTABLEKS                       R9 R9 K386 ["SearchBar"]
     2252 GETUPVAL                         R10 1
     2253 GETTABLEKS                       R10 R10 K0 ["Dictionary"]
     2255 GETTABLEKS                       R10 R10 K1 ["join"]
     2257 GETUPVAL                         R11 14
     2258 LOADK                            R12 K386 ["SearchBar"]
     2259 CALL                             R11 1 1
     2260 NEWTABLE                         R12 1 0
     2262 DUPTABLE                         R13 K394 [{["Padding"], ["SearchIcon"] = "rbxasset://textures/StudioSharedUI/search-v2.png", ["IconColor"], ["IconWidth"] = 16, ["IconOffset"] = 8, ["Buttons"]}]
     2263 DUPTABLE                         R14 K401 [{["Top"] = -1, ["Left"] = 0, ["Bottom"] = 0, ["Right"] = 0}]
     2264 SETTABLEKS                       R14 R13 K387 ["Padding"]
     2266 GETUPVAL                         R14 3
     2267 GETTABLEKS                       R14 R14 K93 ["Toolbox_SearchIconColor"]
     2269 SETTABLEKS                       R14 R13 K390 ["IconColor"]
     2271 DUPTABLE                         R14 K405 [{"Clear", "Filter", "FilterHighlighted"}]
     2272 GETUPVAL                         R15 15
     2273 LOADK                            R16 K406 ["rbxasset://textures/StudioSharedUI/clear.png"]
     2274 LOADK                            R17 K407 ["rbxasset://textures/StudioSharedUI/clear-hover.png"]
     2275 GETUPVAL                         R18 3
     2276 GETTABLEKS                       R18 R18 K95 ["SecondaryMain"]
     2278 GETIMPORT                        R19 K409 [UDim2.fromOffset]
     2280 LOADN                            R20 11
     2281 LOADN                            R21 11
     2282 CALL                             R19 2 1
     2283 LOADNIL                          R20
     2284 GETUPVAL                         R21 3
     2285 GETTABLEKS                       R21 R21 K410 ["SecondaryContrast"]
     2287 CALL                             R15 6 1
     2288 SETTABLEKS                       R15 R14 K402 ["Clear"]
     2290 GETUPVAL                         R15 15
     2291 LOADK                            R16 K411 ["rbxasset://textures/StudioSharedUI/Filter.png"]
     2292 LOADNIL                          R17
     2293 GETUPVAL                         R18 3
     2294 GETTABLEKS                       R18 R18 K93 ["Toolbox_SearchIconColor"]
     2296 GETIMPORT                        R19 K409 [UDim2.fromOffset]
     2298 LOADN                            R20 16
     2299 LOADN                            R21 16
     2300 CALL                             R19 2 -1
     2301 CALL                             R15 -1 1
     2302 SETTABLEKS                       R15 R14 K403 ["Filter"]
     2304 GETUPVAL                         R15 15
     2305 LOADK                            R16 K411 ["rbxasset://textures/StudioSharedUI/Filter.png"]
     2306 LOADNIL                          R17
     2307 GETIMPORT                        R18 K14 [Color3.fromRGB]
     2309 LOADN                            R19 0
     2310 LOADN                            R20 162
     2311 LOADN                            R21 255
     2312 CALL                             R18 3 1
     2313 GETIMPORT                        R19 K409 [UDim2.fromOffset]
     2315 LOADN                            R20 16
     2316 LOADN                            R21 16
     2317 CALL                             R19 2 -1
     2318 CALL                             R15 -1 1
     2319 SETTABLEKS                       R15 R14 K404 ["FilterHighlighted"]
     2321 SETTABLEKS                       R14 R13 K393 ["Buttons"]
     2323 SETTABLEKS                       R13 R12 K412 ["&ToolboxSearchBar"]
     2325 CALL                             R10 2 1
     2326 SETTABLE                         R10 R8 R9
     2327 DUPTABLE                         R9 K414 [{"backgroundColor", "hoverColor"}]
     2328 GETUPVAL                         R10 3
     2329 GETTABLEKS                       R10 R10 K95 ["SecondaryMain"]
     2331 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2333 GETUPVAL                         R10 3
     2334 GETTABLEKS                       R10 R10 K410 ["SecondaryContrast"]
     2336 SETTABLEKS                       R10 R9 K413 ["hoverColor"]
     2338 SETTABLEKS                       R9 R8 K415 ["recentSearchesCloseButton"]
     2340 DUPTABLE                         R9 K416 [{["Top"] = 8, ["Bottom"] = 0, ["Right"] = 8, ["Left"] = 8}]
     2341 SETTABLEKS                       R9 R8 K417 ["wideIconButtonPadding"]
     2343 GETUPVAL                         R9 12
     2344 GETTABLEKS                       R9 R9 K338 ["Button"]
     2346 GETUPVAL                         R10 1
     2347 GETTABLEKS                       R10 R10 K0 ["Dictionary"]
     2349 GETTABLEKS                       R10 R10 K1 ["join"]
     2351 GETUPVAL                         R11 14
     2352 LOADK                            R12 K338 ["Button"]
     2353 CALL                             R11 1 1
     2354 NEWTABLE                         R12 1 0
     2356 NEWTABLE                         R13 2 0
     2358 DUPTABLE                         R14 K419 [{"Color"}]
     2359 GETUPVAL                         R15 3
     2360 GETTABLEKS                       R15 R15 K420 ["ForegroundMain"]
     2362 SETTABLEKS                       R15 R14 K418 ["Color"]
     2364 SETTABLEKS                       R14 R13 K421 ["BackgroundStyle"]
     2366 GETUPVAL                         R14 16
     2367 GETTABLEKS                       R14 R14 K422 ["Hover"]
     2369 DUPTABLE                         R15 K423 [{"BackgroundStyle"}]
     2370 DUPTABLE                         R16 K419 [{"Color"}]
     2371 GETUPVAL                         R17 3
     2372 GETTABLEKS                       R17 R17 K424 ["ActionHover"]
     2374 SETTABLEKS                       R17 R16 K418 ["Color"]
     2376 SETTABLEKS                       R16 R15 K421 ["BackgroundStyle"]
     2378 SETTABLE                         R15 R13 R14
     2379 SETTABLEKS                       R13 R12 K425 ["&ToolboxRecentSearchesButton"]
     2381 CALL                             R10 2 1
     2382 SETTABLE                         R10 R8 R9
     2383 GETUPVAL                         R9 12
     2384 GETTABLEKS                       R9 R9 K426 ["TextLabel"]
     2386 GETUPVAL                         R10 13
     2387 GETTABLEKS                       R10 R10 K1 ["join"]
     2389 GETUPVAL                         R11 14
     2390 LOADK                            R12 K426 ["TextLabel"]
     2391 CALL                             R11 1 1
     2392 NEWTABLE                         R12 2 0
     2394 DUPTABLE                         R13 K427 [{["TextColor"], ["TextSize"] = 16}]
     2395 GETUPVAL                         R14 3
     2396 GETTABLEKS                       R14 R14 K191 ["SubText"]
     2398 SETTABLEKS                       R14 R13 K378 ["TextColor"]
     2400 SETTABLEKS                       R13 R12 K428 ["&ToolboxItemRowText"]
     2402 DUPTABLE                         R13 K430 [{["TextColor"], ["TextSize"] = 14}]
     2403 GETUPVAL                         R14 3
     2404 GETTABLEKS                       R14 R14 K39 ["Toolbox_ItemRowHeaderTextColor"]
     2406 SETTABLEKS                       R14 R13 K378 ["TextColor"]
     2408 SETTABLEKS                       R13 R12 K431 ["&ToolboxItemRowHeader"]
     2410 CALL                             R10 2 1
     2411 SETTABLE                         R10 R8 R9
     2412 GETUPVAL                         R9 12
     2413 GETTABLEKS                       R9 R9 K432 ["TextLabelWithRobloxLinks"]
     2415 GETUPVAL                         R10 13
     2416 GETTABLEKS                       R10 R10 K1 ["join"]
     2418 GETUPVAL                         R11 14
     2419 LOADK                            R12 K432 ["TextLabelWithRobloxLinks"]
     2420 CALL                             R11 1 1
     2421 NEWTABLE                         R12 1 0
     2423 DUPTABLE                         R13 K433 [{"TextColor"}]
     2424 GETUPVAL                         R14 3
     2425 GETTABLEKS                       R14 R14 K43 ["Toolbox_ItemRowTextColor"]
     2427 SETTABLEKS                       R14 R13 K378 ["TextColor"]
     2429 SETTABLEKS                       R13 R12 K434 ["&ToolboxItemRowInnerText"]
     2431 CALL                             R10 2 1
     2432 SETTABLE                         R10 R8 R9
     2433 NAMECALL                         R6 R2 K435 ["extend"]
     2435 CALL                             R6 2 0
     2436 JUMPIFNOT                        R0 ; [+4]
     2437 MOVE                             R8 R0
     2438 NAMECALL                         R6 R2 K435 ["extend"]
     2440 CALL                             R6 2 0
     2441 NEWTABLE                         R8 1 0
     2443 GETUPVAL                         R9 12
     2444 GETTABLEKS                       R9 R9 K436 ["DropdownMenu"]
     2446 GETUPVAL                         R10 1
     2447 GETTABLEKS                       R10 R10 K0 ["Dictionary"]
     2449 GETTABLEKS                       R10 R10 K1 ["join"]
     2451 GETUPVAL                         R11 14
     2452 LOADK                            R12 K436 ["DropdownMenu"]
     2453 CALL                             R11 1 1
     2454 NEWTABLE                         R12 1 0
     2456 DUPTABLE                         R13 K438 [{"Offset"}]
     2457 GETIMPORT                        R14 K440 [Vector2.new]
     2459 LOADN                            R15 0
     2460 LOADN                            R16 4
     2461 CALL                             R14 2 1
     2462 SETTABLEKS                       R14 R13 K437 ["Offset"]
     2464 SETTABLEKS                       R13 R12 K441 ["&ToolboxSearchBarDropdown"]
     2466 CALL                             R10 2 1
     2467 SETTABLE                         R10 R8 R9
     2468 NAMECALL                         R6 R2 K435 ["extend"]
     2470 CALL                             R6 2 0
     2471 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R0 K4 ["Src"]
       15 GETTABLEKS                       R3 R3 K5 ["Util"]
       17 GETTABLEKS                       R3 R3 K8 ["SharedFlags"]
       19 GETTABLEKS                       R3 R3 K9 ["getFFlagToolboxEnableAssetRows"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K7 [require]
       24 GETTABLEKS                       R4 R0 K4 ["Src"]
       26 GETTABLEKS                       R4 R4 K5 ["Util"]
       28 GETTABLEKS                       R4 R4 K8 ["SharedFlags"]
       30 GETTABLEKS                       R4 R4 K10 ["getFFlagToolboxPillsForCreators"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K7 [require]
       35 GETTABLEKS                       R5 R0 K4 ["Src"]
       37 GETTABLEKS                       R5 R5 K5 ["Util"]
       39 GETTABLEKS                       R5 R5 K8 ["SharedFlags"]
       41 GETTABLEKS                       R5 R5 K11 ["getFFlagToolboxEnableSearchOptionsRefactor"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K7 [require]
       46 GETTABLEKS                       R6 R0 K4 ["Src"]
       48 GETTABLEKS                       R6 R6 K5 ["Util"]
       50 GETTABLEKS                       R6 R6 K12 ["Images"]
       52 CALL                             R5 1 1
       53 GETTABLEKS                       R6 R0 K13 ["Packages"]
       55 GETIMPORT                        R7 K7 [require]
       57 GETTABLEKS                       R8 R6 K14 ["Framework"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K7 [require]
       62 GETTABLEKS                       R9 R6 K15 ["Cryo"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K7 [require]
       67 GETTABLEKS                       R10 R6 K16 ["Dash"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K7 [require]
       72 GETTABLEKS                       R11 R1 K17 ["Colors"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K7 [require]
       77 GETTABLEKS                       R12 R1 K18 ["isCli"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R7 K19 ["Style"]
       82 GETTABLEKS                       R12 R12 K20 ["Themes"]
       84 GETTABLEKS                       R12 R12 K21 ["DarkTheme"]
       86 GETTABLEKS                       R13 R7 K19 ["Style"]
       88 GETTABLEKS                       R13 R13 K22 ["getRawComponentStyle"]
       90 GETTABLEKS                       R14 R7 K19 ["Style"]
       92 GETTABLEKS                       R14 R14 K20 ["Themes"]
       94 GETTABLEKS                       R14 R14 K23 ["LightTheme"]
       96 GETTABLEKS                       R15 R7 K19 ["Style"]
       98 GETTABLEKS                       R15 R15 K20 ["Themes"]
      100 GETTABLEKS                       R15 R15 K24 ["StudioTheme"]
      102 GETTABLEKS                       R16 R7 K19 ["Style"]
      104 GETTABLEKS                       R16 R16 K17 ["Colors"]
      106 GETTABLEKS                       R17 R7 K19 ["Style"]
      108 GETTABLEKS                       R17 R17 K25 ["StyleKey"]
      110 GETTABLEKS                       R18 R7 K19 ["Style"]
      112 GETTABLEKS                       R18 R18 K26 ["ComponentSymbols"]
      114 GETTABLEKS                       R19 R7 K5 ["Util"]
      116 GETTABLEKS                       R19 R19 K27 ["StyleModifier"]
      118 GETTABLEKS                       R20 R7 K28 ["UI"]
      120 GETTABLEKS                       R20 R20 K29 ["Image"]
      122 DUPCLOSURE                       R21 K30 [PROTO_0]
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R20
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R8
      127 GETTABLEKS                       R22 R7 K5 ["Util"]
      129 GETTABLEKS                       R22 R22 K27 ["StyleModifier"]
      131 DUPCLOSURE                       R23 K31 [PROTO_1]
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R22
      149 RETURN                           R23 1
