PROTO_0:
        0 MOVE                             R6 R5
        1 JUMPIF                           R6 ; [+3]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K0 ["DialogMainButton"]
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
       58 GETUPVAL                         R10 2
       59 GETTABLEKS                       R9 R10 K23 ["Hover"]
       61 DUPTABLE                         R10 K24 [{"ForegroundStyle"}]
       62 GETUPVAL                         R13 3
       63 GETTABLEKS                       R12 R13 K25 ["Dictionary"]
       65 GETTABLEKS                       R11 R12 K26 ["join"]
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
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K0 ["Dictionary"]
        8 GETTABLEKS                       R3 R4 K1 ["join"]
       10 GETUPVAL                         R4 2
       11 NEWTABLE                         R5 128 0
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K2 ["Toolbox_PublishAssetBackground"]
       16 GETUPVAL                         R8 4
       17 GETTABLEKS                       R7 R8 K3 ["Slate"]
       19 SETTABLE                         R7 R5 R6
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K4 ["Toolbox_AssetOutlineBackground"]
       23 GETIMPORT                        R7 K7 [Color3.fromHex]
       25 LOADK                            R8 K8 ["#3B3B3B"]
       26 CALL                             R7 1 1
       27 SETTABLE                         R7 R5 R6
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R6 R7 K9 ["Toolbox_AssetOutlineBoarderColor"]
       31 GETIMPORT                        R7 K7 [Color3.fromHex]
       33 LOADK                            R8 K10 ["#121212"]
       34 CALL                             R7 1 1
       35 SETTABLE                         R7 R5 R6
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R6 R7 K11 ["Toolbox_AssetOutlineTransparency"]
       39 LOADN                            R7 0
       40 SETTABLE                         R7 R5 R6
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R6 R7 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
       44 GETIMPORT                        R7 K14 [Color3.fromRGB]
       46 LOADN                            R8 12
       47 LOADN                            R9 43
       48 LOADN                            R10 89
       49 CALL                             R7 3 1
       50 SETTABLE                         R7 R5 R6
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R6 R7 K15 ["Toolbox_AssetDropdownSize"]
       54 LOADN                            R7 8
       55 SETTABLE                         R7 R5 R6
       56 GETUPVAL                         R7 3
       57 GETTABLEKS                       R6 R7 K16 ["Toolbox_AssetBorderSize"]
       59 LOADN                            R7 0
       60 SETTABLE                         R7 R5 R6
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R6 R7 K17 ["Toolbox_AssetBackgroundColor"]
       64 GETIMPORT                        R7 K14 [Color3.fromRGB]
       66 LOADN                            R8 41
       67 LOADN                            R9 41
       68 LOADN                            R10 41
       69 CALL                             R7 3 1
       70 SETTABLE                         R7 R5 R6
       71 GETUPVAL                         R7 3
       72 GETTABLEKS                       R6 R7 K18 ["Toolbox_AssetBackgroundImage"]
       74 LOADK                            R7 K19 [""]
       75 SETTABLE                         R7 R5 R6
       76 GETUPVAL                         R7 3
       77 GETTABLEKS                       R6 R7 K20 ["Toolbox_AssetNameColor"]
       79 GETIMPORT                        R7 K14 [Color3.fromRGB]
       81 LOADN                            R8 60
       82 LOADN                            R9 180
       83 LOADN                            R10 255
       84 CALL                             R7 3 1
       85 SETTABLE                         R7 R5 R6
       86 GETUPVAL                         R7 3
       87 GETTABLEKS                       R6 R7 K21 ["Toolbox_AssetIconColor"]
       89 GETIMPORT                        R7 K14 [Color3.fromRGB]
       91 LOADN                            R8 178
       92 LOADN                            R9 178
       93 LOADN                            R10 178
       94 CALL                             R7 3 1
       95 SETTABLE                         R7 R5 R6
       96 GETUPVAL                         R7 3
       97 GETTABLEKS                       R6 R7 K22 ["Toolbox_AssetWarningIcon"]
       99 GETIMPORT                        R7 K7 [Color3.fromHex]
      101 LOADK                            R8 K23 ["#F8A544"]
      102 CALL                             R7 1 1
      103 SETTABLE                         R7 R5 R6
      104 GETUPVAL                         R7 3
      105 GETTABLEKS                       R6 R7 K24 ["Toolbox_CreatorLabelTextColor"]
      107 GETUPVAL                         R8 5
      108 CALL                             R8 0 1
      109 JUMPIFNOT                        R8 ; [+5]
      110 GETIMPORT                        R7 K7 [Color3.fromHex]
      112 LOADK                            R8 K25 ["#FAFAFA"]
      113 CALL                             R7 1 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R7
      116 SETTABLE                         R7 R5 R6
      117 GETUPVAL                         R7 3
      118 GETTABLEKS                       R6 R7 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
      120 GETUPVAL                         R8 5
      121 CALL                             R8 0 1
      122 JUMPIFNOT                        R8 ; [+5]
      123 GETIMPORT                        R7 K7 [Color3.fromHex]
      125 LOADK                            R8 K27 ["#D9D9D9"]
      126 CALL                             R7 1 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R7
      129 SETTABLE                         R7 R5 R6
      130 GETUPVAL                         R7 3
      131 GETTABLEKS                       R6 R7 K28 ["Toolbox_CreatorPillBackgroundColor"]
      133 GETUPVAL                         R8 5
      134 CALL                             R8 0 1
      135 JUMPIFNOT                        R8 ; [+5]
      136 GETIMPORT                        R7 K7 [Color3.fromHex]
      138 LOADK                            R8 K8 ["#3B3B3B"]
      139 CALL                             R7 1 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R7
      142 SETTABLE                         R7 R5 R6
      143 GETUPVAL                         R7 3
      144 GETTABLEKS                       R6 R7 K29 ["Toolbox_DialogErrorIcon"]
      146 LOADK                            R7 K30 ["rbxasset://studio_svg_textures/Lua/Toolbox/Dark/Large/DialogError.png"]
      147 SETTABLE                         R7 R5 R6
      148 GETUPVAL                         R7 3
      149 GETTABLEKS                       R6 R7 K31 ["Toolbox_AlertIcon"]
      151 LOADK                            R7 K32 ["rbxasset://studio_svg_textures/Lua/Toolbox/Dark/Large/Alert.png"]
      152 SETTABLE                         R7 R5 R6
      153 GETUPVAL                         R7 3
      154 GETTABLEKS                       R6 R7 K33 ["Toolbox_ItemRowBackgroundColorEven"]
      156 GETIMPORT                        R7 K7 [Color3.fromHex]
      158 LOADK                            R8 K34 ["#222222"]
      159 CALL                             R7 1 1
      160 SETTABLE                         R7 R5 R6
      161 GETUPVAL                         R7 3
      162 GETTABLEKS                       R6 R7 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
      164 GETIMPORT                        R7 K7 [Color3.fromHex]
      166 LOADK                            R8 K36 ["#2C2C2C"]
      167 CALL                             R7 1 1
      168 SETTABLE                         R7 R5 R6
      169 GETUPVAL                         R7 3
      170 GETTABLEKS                       R6 R7 K37 ["Toolbox_ItemRowBorderColor"]
      172 GETIMPORT                        R7 K7 [Color3.fromHex]
      174 LOADK                            R8 K38 ["#024897"]
      175 CALL                             R7 1 1
      176 SETTABLE                         R7 R5 R6
      177 GETUPVAL                         R7 3
      178 GETTABLEKS                       R6 R7 K39 ["Toolbox_ItemRowHeaderTextColor"]
      180 GETIMPORT                        R7 K7 [Color3.fromHex]
      182 LOADK                            R8 K40 ["#989898"]
      183 CALL                             R7 1 1
      184 SETTABLE                         R7 R5 R6
      185 GETUPVAL                         R7 3
      186 GETTABLEKS                       R6 R7 K41 ["Toolbox_ItemRowTitleTextColor"]
      188 GETIMPORT                        R7 K7 [Color3.fromHex]
      190 LOADK                            R8 K42 ["#52ADF4"]
      191 CALL                             R7 1 1
      192 SETTABLE                         R7 R5 R6
      193 GETUPVAL                         R7 3
      194 GETTABLEKS                       R6 R7 K43 ["Toolbox_ItemRowTextColor"]
      196 GETUPVAL                         R8 4
      197 GETTABLEKS                       R7 R8 K44 ["White"]
      199 SETTABLE                         R7 R5 R6
      200 GETUPVAL                         R7 3
      201 GETTABLEKS                       R6 R7 K45 ["Toolbox_AudioPlayerBackgroundColor"]
      203 GETIMPORT                        R7 K7 [Color3.fromHex]
      205 LOADK                            R8 K46 ["#171717"]
      206 CALL                             R7 1 1
      207 SETTABLE                         R7 R5 R6
      208 GETUPVAL                         R7 3
      209 GETTABLEKS                       R6 R7 K47 ["Toolbox_AudioPlayerProgressBarColor"]
      211 GETIMPORT                        R7 K7 [Color3.fromHex]
      213 LOADK                            R8 K48 ["#0077D6"]
      214 CALL                             R7 1 1
      215 SETTABLE                         R7 R5 R6
      216 GETUPVAL                         R7 3
      217 GETTABLEKS                       R6 R7 K49 ["Toolbox_AudioPlayerIndicatorColor"]
      219 GETIMPORT                        R7 K7 [Color3.fromHex]
      221 LOADK                            R8 K50 ["#555555"]
      222 CALL                             R7 1 1
      223 SETTABLE                         R7 R5 R6
      224 GETUPVAL                         R7 3
      225 GETTABLEKS                       R6 R7 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
      227 GETIMPORT                        R7 K7 [Color3.fromHex]
      229 LOADK                            R8 K50 ["#555555"]
      230 CALL                             R7 1 1
      231 SETTABLE                         R7 R5 R6
      232 GETUPVAL                         R7 3
      233 GETTABLEKS                       R6 R7 K52 ["Toolbox_AudioTabSelectedTextColor"]
      235 GETUPVAL                         R8 4
      236 GETTABLEKS                       R7 R8 K44 ["White"]
      238 SETTABLE                         R7 R5 R6
      239 GETUPVAL                         R7 3
      240 GETTABLEKS                       R6 R7 K53 ["Toolbox_DeleteIconColor"]
      242 GETIMPORT                        R7 K14 [Color3.fromRGB]
      244 LOADN                            R8 136
      245 LOADN                            R9 136
      246 LOADN                            R10 136
      247 CALL                             R7 3 1
      248 SETTABLE                         R7 R5 R6
      249 GETUPVAL                         R7 3
      250 GETTABLEKS                       R6 R7 K54 ["Toolbox_DropdownItemSelectedColor"]
      252 GETUPVAL                         R8 4
      253 GETTABLEKS                       R7 R8 K55 ["Blue_Dark"]
      255 SETTABLE                         R7 R5 R6
      256 GETUPVAL                         R7 3
      257 GETTABLEKS                       R6 R7 K56 ["Toolbox_DropdownIconColor"]
      259 GETUPVAL                         R8 4
      260 GETTABLEKS                       R7 R8 K44 ["White"]
      262 SETTABLE                         R7 R5 R6
      263 GETUPVAL                         R7 3
      264 GETTABLEKS                       R6 R7 K57 ["Toolbox_FontTileBackgroundColor"]
      266 GETIMPORT                        R7 K7 [Color3.fromHex]
      268 LOADK                            R8 K58 ["#292929"]
      269 CALL                             R7 1 1
      270 SETTABLE                         R7 R5 R6
      271 GETUPVAL                         R7 3
      272 GETTABLEKS                       R6 R7 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
      274 GETIMPORT                        R7 K7 [Color3.fromHex]
      276 LOADK                            R8 K8 ["#3B3B3B"]
      277 CALL                             R7 1 1
      278 SETTABLE                         R7 R5 R6
      279 GETUPVAL                         R7 3
      280 GETTABLEKS                       R6 R7 K60 ["Toolbox_FontTileTextFillColor"]
      282 GETIMPORT                        R7 K7 [Color3.fromHex]
      284 LOADK                            R8 K61 ["#FFFFFF"]
      285 CALL                             R7 1 1
      286 SETTABLE                         R7 R5 R6
      287 GETUPVAL                         R7 3
      288 GETTABLEKS                       R6 R7 K62 ["Toolbox_HorizontalLineColor"]
      290 GETIMPORT                        R7 K14 [Color3.fromRGB]
      292 LOADN                            R8 34
      293 LOADN                            R9 34
      294 LOADN                            R10 34
      295 CALL                             R7 3 1
      296 SETTABLE                         R7 R5 R6
      297 GETUPVAL                         R7 3
      298 GETTABLEKS                       R6 R7 K63 ["Toolbox_NavigationLinkTextColor"]
      300 GETUPVAL                         R8 4
      301 GETTABLEKS                       R7 R8 K44 ["White"]
      303 SETTABLE                         R7 R5 R6
      304 GETUPVAL                         R7 3
      305 GETTABLEKS                       R6 R7 K64 ["Toolbox_NavigationLinkTextColorHover"]
      307 GETIMPORT                        R7 K7 [Color3.fromHex]
      309 LOADK                            R8 K65 ["#AAAAAA"]
      310 CALL                             R7 1 1
      311 SETTABLE                         R7 R5 R6
      312 GETUPVAL                         R7 3
      313 GETTABLEKS                       R6 R7 K66 ["Toolbox_PackageBackgroundColor"]
      315 GETUPVAL                         R8 4
      316 GETTABLEKS                       R7 R8 K67 ["Black"]
      318 SETTABLE                         R7 R5 R6
      319 GETUPVAL                         R7 3
      320 GETTABLEKS                       R6 R7 K68 ["Toolbox_PackageBackgroundTransparency"]
      322 LOADK                            R7 K69 [0.5]
      323 SETTABLE                         R7 R5 R6
      324 GETUPVAL                         R7 3
      325 GETTABLEKS                       R6 R7 K70 ["Toolbox_PackageImage"]
      327 GETUPVAL                         R8 6
      328 GETTABLEKS                       R7 R8 K71 ["PACKAGE_DARK"]
      330 SETTABLE                         R7 R5 R6
      331 GETUPVAL                         R7 3
      332 GETTABLEKS                       R6 R7 K72 ["ScrollingFrameBackgroundColor"]
      334 GETIMPORT                        R7 K14 [Color3.fromRGB]
      336 LOADN                            R8 41
      337 LOADN                            R9 41
      338 LOADN                            R10 41
      339 CALL                             R7 3 1
      340 SETTABLE                         R7 R5 R6
      341 GETUPVAL                         R7 3
      342 GETTABLEKS                       R6 R7 K73 ["ScrollingFrameImageColor"]
      344 GETIMPORT                        R7 K14 [Color3.fromRGB]
      346 LOADN                            R8 85
      347 LOADN                            R9 85
      348 LOADN                            R10 85
      349 CALL                             R7 3 1
      350 SETTABLE                         R7 R5 R6
      351 GETUPVAL                         R7 3
      352 GETTABLEKS                       R6 R7 K74 ["Toolbox_SearchTagBackgroundColor"]
      354 GETIMPORT                        R7 K14 [Color3.fromRGB]
      356 LOADN                            R8 56
      357 LOADN                            R9 56
      358 LOADN                            R10 56
      359 CALL                             R7 3 1
      360 SETTABLE                         R7 R5 R6
      361 GETUPVAL                         R7 3
      362 GETTABLEKS                       R6 R7 K75 ["Toolbox_SearchPillTextColor"]
      364 GETIMPORT                        R7 K7 [Color3.fromHex]
      366 LOADK                            R8 K25 ["#FAFAFA"]
      367 CALL                             R7 1 1
      368 SETTABLE                         R7 R5 R6
      369 GETUPVAL                         R7 3
      370 GETTABLEKS                       R6 R7 K76 ["Toolbox_SearchPillBackgroundColor"]
      372 GETIMPORT                        R7 K7 [Color3.fromHex]
      374 LOADK                            R8 K8 ["#3B3B3B"]
      375 CALL                             R7 1 1
      376 SETTABLE                         R7 R5 R6
      377 GETUPVAL                         R7 3
      378 GETTABLEKS                       R6 R7 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
      380 GETIMPORT                        R7 K7 [Color3.fromHex]
      382 LOADK                            R8 K78 ["#565656"]
      383 CALL                             R7 1 1
      384 SETTABLE                         R7 R5 R6
      385 GETUPVAL                         R7 3
      386 GETTABLEKS                       R6 R7 K79 ["Toolbox_TabTopBorderColor"]
      388 GETUPVAL                         R8 4
      389 GETTABLEKS                       R7 R8 K80 ["Blue"]
      391 SETTABLE                         R7 R5 R6
      392 GETUPVAL                         R7 3
      393 GETTABLEKS                       R6 R7 K81 ["Toolbox_TabSelectedColor"]
      395 GETUPVAL                         R8 4
      396 GETTABLEKS                       R7 R8 K44 ["White"]
      398 SETTABLE                         R7 R5 R6
      399 GETUPVAL                         R7 3
      400 GETTABLEKS                       R6 R7 K82 ["Toolbox_IconTileGradientColor"]
      402 GETUPVAL                         R8 4
      403 GETTABLEKS                       R7 R8 K67 ["Black"]
      405 SETTABLE                         R7 R5 R6
      406 GETUPVAL                         R7 3
      407 GETTABLEKS                       R6 R7 K83 ["Toolbox_HomeviewBackgroundColor"]
      409 GETUPVAL                         R8 4
      410 GETTABLEKS                       R7 R8 K3 ["Slate"]
      412 SETTABLE                         R7 R5 R6
      413 GETUPVAL                         R7 3
      414 GETTABLEKS                       R6 R7 K84 ["Toolbox_SearchOptionButtonHover"]
      416 GETUPVAL                         R8 4
      417 GETTABLEKS                       R7 R8 K44 ["White"]
      419 SETTABLE                         R7 R5 R6
      420 GETUPVAL                         R7 3
      421 GETTABLEKS                       R6 R7 K85 ["Toolbox_RateTextColor"]
      423 GETIMPORT                        R7 K7 [Color3.fromHex]
      425 LOADK                            R8 K86 ["#BDBEBE"]
      426 CALL                             R7 1 1
      427 SETTABLE                         R7 R5 R6
      428 GETUPVAL                         R7 3
      429 GETTABLEKS                       R6 R7 K87 ["Toolbox_VoteCountColor"]
      431 GETIMPORT                        R7 K7 [Color3.fromHex]
      433 LOADK                            R8 K65 ["#AAAAAA"]
      434 CALL                             R7 1 1
      435 SETTABLE                         R7 R5 R6
      436 GETUPVAL                         R7 3
      437 GETTABLEKS                       R6 R7 K88 ["Toolbox_LowConfidencePercentageColor"]
      439 GETIMPORT                        R7 K7 [Color3.fromHex]
      441 LOADK                            R8 K89 ["#CCCCCC"]
      442 CALL                             R7 1 1
      443 SETTABLE                         R7 R5 R6
      444 GETUPVAL                         R7 3
      445 GETTABLEKS                       R6 R7 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
      447 GETIMPORT                        R7 K7 [Color3.fromHex]
      449 LOADK                            R8 K61 ["#FFFFFF"]
      450 CALL                             R7 1 1
      451 SETTABLE                         R7 R5 R6
      452 GETUPVAL                         R7 3
      453 GETTABLEKS                       R6 R7 K91 ["Toolbox_VotingButtonImage"]
      455 GETUPVAL                         R8 6
      456 GETTABLEKS                       R7 R8 K92 ["THUMB_UP_WHITE"]
      458 SETTABLE                         R7 R5 R6
      459 GETUPVAL                         R7 3
      460 GETTABLEKS                       R6 R7 K93 ["Toolbox_SearchIconColor"]
      462 GETIMPORT                        R7 K14 [Color3.fromRGB]
      464 LOADN                            R8 225
      465 LOADN                            R9 225
      466 LOADN                            R10 225
      467 CALL                             R7 3 1
      468 SETTABLE                         R7 R5 R6
      469 GETUPVAL                         R7 3
      470 GETTABLEKS                       R6 R7 K94 ["Toolbox_ClearButtonColor"]
      472 GETUPVAL                         R9 3
      473 GETTABLEKS                       R8 R9 K95 ["SecondaryMain"]
      475 GETTABLEKS                       R7 R8 K96 ["Dark"]
      477 SETTABLE                         R7 R5 R6
      478 GETUPVAL                         R7 3
      479 GETTABLEKS                       R6 R7 K97 ["AssetConfig_DividerHorizontalLineColor"]
      481 GETUPVAL                         R8 4
      482 GETTABLEKS                       R7 R8 K98 ["Carbon"]
      484 SETTABLE                         R7 R5 R6
      485 GETUPVAL                         R7 3
      486 GETTABLEKS                       R6 R7 K99 ["AssetConfig_PreviewSelectedColor"]
      488 GETUPVAL                         R8 4
      489 GETTABLEKS                       R7 R8 K44 ["White"]
      491 SETTABLE                         R7 R5 R6
      492 GETUPVAL                         R7 3
      493 GETTABLEKS                       R6 R7 K100 ["AssetConfig_SidetabSelectedBarColor"]
      495 GETIMPORT                        R7 K14 [Color3.fromRGB]
      497 LOADN                            R8 11
      498 LOADN                            R9 90
      499 LOADN                            R10 175
      500 CALL                             R7 3 1
      501 SETTABLE                         R7 R5 R6
      502 GETUPVAL                         R7 3
      503 GETTABLEKS                       R6 R7 K101 ["AssetConfig_SidetabSelectedBarTransparency"]
      505 LOADN                            R7 0
      506 SETTABLE                         R7 R5 R6
      507 GETUPVAL                         R7 3
      508 GETTABLEKS                       R6 R7 K102 ["AssetConfig_SidetabSelectedBarZIndex"]
      510 LOADN                            R7 255
      511 SETTABLE                         R7 R5 R6
      512 GETUPVAL                         R7 3
      513 GETTABLEKS                       R6 R7 K103 ["AssetConfig_SidetabSelectedIndicatorZindex"]
      515 LOADN                            R7 1
      516 SETTABLE                         R7 R5 R6
      517 GETUPVAL                         R7 3
      518 GETTABLEKS                       R6 R7 K104 ["AssetConfig_UploadResultButtonColor"]
      520 GETIMPORT                        R7 K14 [Color3.fromRGB]
      522 LOADN                            R8 136
      523 LOADN                            R9 136
      524 LOADN                            R10 136
      525 CALL                             R7 3 1
      526 SETTABLE                         R7 R5 R6
      527 GETUPVAL                         R7 3
      528 GETTABLEKS                       R6 R7 K105 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
      530 GETIMPORT                        R7 K14 [Color3.fromRGB]
      532 LOADN                            R8 102
      533 LOADN                            R9 102
      534 LOADN                            R10 102
      535 CALL                             R7 3 1
      536 SETTABLE                         R7 R5 R6
      537 GETUPVAL                         R7 3
      538 GETTABLEKS                       R6 R7 K106 ["AssetConfig_DistributionQuotaTextColor"]
      540 GETUPVAL                         R8 4
      541 GETTABLEKS                       R7 R8 K44 ["White"]
      543 SETTABLE                         R7 R5 R6
      544 CALL                             R3 2 1
      545 GETUPVAL                         R6 1
      546 GETTABLEKS                       R5 R6 K0 ["Dictionary"]
      548 GETTABLEKS                       R4 R5 K1 ["join"]
      550 GETUPVAL                         R5 7
      551 NEWTABLE                         R6 128 0
      553 GETUPVAL                         R8 3
      554 GETTABLEKS                       R7 R8 K2 ["Toolbox_PublishAssetBackground"]
      556 GETUPVAL                         R9 4
      557 GETTABLEKS                       R8 R9 K3 ["Slate"]
      559 SETTABLE                         R8 R6 R7
      560 GETUPVAL                         R8 3
      561 GETTABLEKS                       R7 R8 K4 ["Toolbox_AssetOutlineBackground"]
      563 GETUPVAL                         R9 4
      564 GETTABLEKS                       R8 R9 K44 ["White"]
      566 SETTABLE                         R8 R6 R7
      567 GETUPVAL                         R8 3
      568 GETTABLEKS                       R7 R8 K9 ["Toolbox_AssetOutlineBoarderColor"]
      570 GETIMPORT                        R8 K7 [Color3.fromHex]
      572 LOADK                            R9 K40 ["#989898"]
      573 CALL                             R8 1 1
      574 SETTABLE                         R8 R6 R7
      575 GETUPVAL                         R8 3
      576 GETTABLEKS                       R7 R8 K11 ["Toolbox_AssetOutlineTransparency"]
      578 LOADK                            R8 K107 [0.08]
      579 SETTABLE                         R8 R6 R7
      580 GETUPVAL                         R8 3
      581 GETTABLEKS                       R7 R8 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
      583 GETIMPORT                        R8 K14 [Color3.fromRGB]
      585 LOADN                            R9 229
      586 LOADN                            R10 243
      587 LOADN                            R11 255
      588 CALL                             R8 3 1
      589 SETTABLE                         R8 R6 R7
      590 GETUPVAL                         R8 3
      591 GETTABLEKS                       R7 R8 K15 ["Toolbox_AssetDropdownSize"]
      593 LOADN                            R8 0
      594 SETTABLE                         R8 R6 R7
      595 GETUPVAL                         R8 3
      596 GETTABLEKS                       R7 R8 K16 ["Toolbox_AssetBorderSize"]
      598 LOADN                            R8 0
      599 SETTABLE                         R8 R6 R7
      600 GETUPVAL                         R8 3
      601 GETTABLEKS                       R7 R8 K17 ["Toolbox_AssetBackgroundColor"]
      603 GETIMPORT                        R8 K14 [Color3.fromRGB]
      605 LOADN                            R9 225
      606 LOADN                            R10 225
      607 LOADN                            R11 225
      608 CALL                             R8 3 1
      609 SETTABLE                         R8 R6 R7
      610 GETUPVAL                         R8 3
      611 GETTABLEKS                       R7 R8 K18 ["Toolbox_AssetBackgroundImage"]
      613 GETUPVAL                         R9 6
      614 GETTABLEKS                       R8 R9 K108 ["NO_BACKGROUND_ICON"]
      616 SETTABLE                         R8 R6 R7
      617 GETUPVAL                         R8 3
      618 GETTABLEKS                       R7 R8 K20 ["Toolbox_AssetNameColor"]
      620 GETIMPORT                        R8 K7 [Color3.fromHex]
      622 LOADK                            R9 K109 ["#0B5AAF"]
      623 CALL                             R8 1 1
      624 SETTABLE                         R8 R6 R7
      625 GETUPVAL                         R8 3
      626 GETTABLEKS                       R7 R8 K21 ["Toolbox_AssetIconColor"]
      628 GETIMPORT                        R8 K14 [Color3.fromRGB]
      630 LOADN                            R9 170
      631 LOADN                            R10 170
      632 LOADN                            R11 170
      633 CALL                             R8 3 1
      634 SETTABLE                         R8 R6 R7
      635 GETUPVAL                         R8 3
      636 GETTABLEKS                       R7 R8 K22 ["Toolbox_AssetWarningIcon"]
      638 GETIMPORT                        R8 K7 [Color3.fromHex]
      640 LOADK                            R9 K110 ["#BC6600"]
      641 CALL                             R8 1 1
      642 SETTABLE                         R8 R6 R7
      643 GETUPVAL                         R8 3
      644 GETTABLEKS                       R7 R8 K45 ["Toolbox_AudioPlayerBackgroundColor"]
      646 GETIMPORT                        R8 K7 [Color3.fromHex]
      648 LOADK                            R9 K111 ["#E1E1E1"]
      649 CALL                             R8 1 1
      650 SETTABLE                         R8 R6 R7
      651 GETUPVAL                         R8 3
      652 GETTABLEKS                       R7 R8 K47 ["Toolbox_AudioPlayerProgressBarColor"]
      654 GETIMPORT                        R8 K7 [Color3.fromHex]
      656 LOADK                            R9 K48 ["#0077D6"]
      657 CALL                             R8 1 1
      658 SETTABLE                         R8 R6 R7
      659 GETUPVAL                         R8 3
      660 GETTABLEKS                       R7 R8 K49 ["Toolbox_AudioPlayerIndicatorColor"]
      662 GETIMPORT                        R8 K7 [Color3.fromHex]
      664 LOADK                            R9 K112 ["#CBCBCB"]
      665 CALL                             R8 1 1
      666 SETTABLE                         R8 R6 R7
      667 GETUPVAL                         R8 3
      668 GETTABLEKS                       R7 R8 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
      670 GETIMPORT                        R8 K7 [Color3.fromHex]
      672 LOADK                            R9 K34 ["#222222"]
      673 CALL                             R8 1 1
      674 SETTABLE                         R8 R6 R7
      675 GETUPVAL                         R8 3
      676 GETTABLEKS                       R7 R8 K29 ["Toolbox_DialogErrorIcon"]
      678 LOADK                            R8 K113 ["rbxasset://studio_svg_textures/Lua/Toolbox/Light/Large/DialogError.png"]
      679 SETTABLE                         R8 R6 R7
      680 GETUPVAL                         R8 3
      681 GETTABLEKS                       R7 R8 K31 ["Toolbox_AlertIcon"]
      683 LOADK                            R8 K114 ["rbxasset://studio_svg_textures/Lua/Toolbox/Light/Large/Alert.png"]
      684 SETTABLE                         R8 R6 R7
      685 GETUPVAL                         R8 3
      686 GETTABLEKS                       R7 R8 K24 ["Toolbox_CreatorLabelTextColor"]
      688 GETUPVAL                         R9 5
      689 CALL                             R9 0 1
      690 JUMPIFNOT                        R9 ; [+5]
      691 GETIMPORT                        R8 K7 [Color3.fromHex]
      693 LOADK                            R9 K115 ["#191919"]
      694 CALL                             R8 1 1
      695 JUMP                             ; [+1]
      696 LOADNIL                          R8
      697 SETTABLE                         R8 R6 R7
      698 GETUPVAL                         R8 3
      699 GETTABLEKS                       R7 R8 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
      701 GETUPVAL                         R9 5
      702 CALL                             R9 0 1
      703 JUMPIFNOT                        R9 ; [+5]
      704 GETIMPORT                        R8 K7 [Color3.fromHex]
      706 LOADK                            R9 K112 ["#CBCBCB"]
      707 CALL                             R8 1 1
      708 JUMP                             ; [+1]
      709 LOADNIL                          R8
      710 SETTABLE                         R8 R6 R7
      711 GETUPVAL                         R8 3
      712 GETTABLEKS                       R7 R8 K28 ["Toolbox_CreatorPillBackgroundColor"]
      714 GETUPVAL                         R9 5
      715 CALL                             R9 0 1
      716 JUMPIFNOT                        R9 ; [+5]
      717 GETIMPORT                        R8 K7 [Color3.fromHex]
      719 LOADK                            R9 K111 ["#E1E1E1"]
      720 CALL                             R8 1 1
      721 JUMP                             ; [+1]
      722 LOADNIL                          R8
      723 SETTABLE                         R8 R6 R7
      724 GETUPVAL                         R8 3
      725 GETTABLEKS                       R7 R8 K33 ["Toolbox_ItemRowBackgroundColorEven"]
      727 GETIMPORT                        R8 K7 [Color3.fromHex]
      729 LOADK                            R9 K116 ["#EDEDED"]
      730 CALL                             R8 1 1
      731 SETTABLE                         R8 R6 R7
      732 GETUPVAL                         R8 3
      733 GETTABLEKS                       R7 R8 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
      735 GETIMPORT                        R8 K7 [Color3.fromHex]
      737 LOADK                            R9 K25 ["#FAFAFA"]
      738 CALL                             R8 1 1
      739 SETTABLE                         R8 R6 R7
      740 GETUPVAL                         R8 3
      741 GETTABLEKS                       R7 R8 K37 ["Toolbox_ItemRowBorderColor"]
      743 GETIMPORT                        R8 K7 [Color3.fromHex]
      745 LOADK                            R9 K117 ["#3DB3FF"]
      746 CALL                             R8 1 1
      747 SETTABLE                         R8 R6 R7
      748 GETUPVAL                         R8 3
      749 GETTABLEKS                       R7 R8 K39 ["Toolbox_ItemRowHeaderTextColor"]
      751 GETIMPORT                        R8 K7 [Color3.fromHex]
      753 LOADK                            R9 K8 ["#3B3B3B"]
      754 CALL                             R8 1 1
      755 SETTABLE                         R8 R6 R7
      756 GETUPVAL                         R8 3
      757 GETTABLEKS                       R7 R8 K41 ["Toolbox_ItemRowTitleTextColor"]
      759 GETIMPORT                        R8 K7 [Color3.fromHex]
      761 LOADK                            R9 K118 ["#0055AC"]
      762 CALL                             R8 1 1
      763 SETTABLE                         R8 R6 R7
      764 GETUPVAL                         R8 3
      765 GETTABLEKS                       R7 R8 K43 ["Toolbox_ItemRowTextColor"]
      767 GETIMPORT                        R8 K7 [Color3.fromHex]
      769 LOADK                            R9 K46 ["#171717"]
      770 CALL                             R8 1 1
      771 SETTABLE                         R8 R6 R7
      772 GETUPVAL                         R8 3
      773 GETTABLEKS                       R7 R8 K52 ["Toolbox_AudioTabSelectedTextColor"]
      775 GETIMPORT                        R8 K7 [Color3.fromHex]
      777 LOADK                            R9 K25 ["#FAFAFA"]
      778 CALL                             R8 1 1
      779 SETTABLE                         R8 R6 R7
      780 GETUPVAL                         R8 3
      781 GETTABLEKS                       R7 R8 K53 ["Toolbox_DeleteIconColor"]
      783 GETIMPORT                        R8 K14 [Color3.fromRGB]
      785 LOADN                            R9 184
      786 LOADN                            R10 184
      787 LOADN                            R11 184
      788 CALL                             R8 3 1
      789 SETTABLE                         R8 R6 R7
      790 GETUPVAL                         R8 3
      791 GETTABLEKS                       R7 R8 K54 ["Toolbox_DropdownItemSelectedColor"]
      793 GETUPVAL                         R9 4
      794 GETTABLEKS                       R8 R9 K119 ["Blue_Light"]
      796 SETTABLE                         R8 R6 R7
      797 GETUPVAL                         R8 3
      798 GETTABLEKS                       R7 R8 K56 ["Toolbox_DropdownIconColor"]
      800 GETIMPORT                        R8 K14 [Color3.fromRGB]
      802 LOADN                            R9 25
      803 LOADN                            R10 25
      804 LOADN                            R11 25
      805 CALL                             R8 3 1
      806 SETTABLE                         R8 R6 R7
      807 GETUPVAL                         R8 3
      808 GETTABLEKS                       R7 R8 K57 ["Toolbox_FontTileBackgroundColor"]
      810 GETIMPORT                        R8 K7 [Color3.fromHex]
      812 LOADK                            R9 K61 ["#FFFFFF"]
      813 CALL                             R8 1 1
      814 SETTABLE                         R8 R6 R7
      815 GETUPVAL                         R8 3
      816 GETTABLEKS                       R7 R8 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
      818 GETIMPORT                        R8 K7 [Color3.fromHex]
      820 LOADK                            R9 K120 ["#E3F0FB"]
      821 CALL                             R8 1 1
      822 SETTABLE                         R8 R6 R7
      823 GETUPVAL                         R8 3
      824 GETTABLEKS                       R7 R8 K60 ["Toolbox_FontTileTextFillColor"]
      826 GETIMPORT                        R8 K7 [Color3.fromHex]
      828 LOADK                            R9 K121 ["#393B3D"]
      829 CALL                             R8 1 1
      830 SETTABLE                         R8 R6 R7
      831 GETUPVAL                         R8 3
      832 GETTABLEKS                       R7 R8 K62 ["Toolbox_HorizontalLineColor"]
      834 GETIMPORT                        R8 K14 [Color3.fromRGB]
      836 LOADN                            R9 227
      837 LOADN                            R10 227
      838 LOADN                            R11 227
      839 CALL                             R8 3 1
      840 SETTABLE                         R8 R6 R7
      841 GETUPVAL                         R8 3
      842 GETTABLEKS                       R7 R8 K63 ["Toolbox_NavigationLinkTextColor"]
      844 GETIMPORT                        R8 K7 [Color3.fromHex]
      846 LOADK                            R9 K10 ["#121212"]
      847 CALL                             R8 1 1
      848 SETTABLE                         R8 R6 R7
      849 GETUPVAL                         R8 3
      850 GETTABLEKS                       R7 R8 K64 ["Toolbox_NavigationLinkTextColorHover"]
      852 GETIMPORT                        R8 K7 [Color3.fromHex]
      854 LOADK                            R9 K122 ["#666666"]
      855 CALL                             R8 1 1
      856 SETTABLE                         R8 R6 R7
      857 GETUPVAL                         R8 3
      858 GETTABLEKS                       R7 R8 K66 ["Toolbox_PackageBackgroundColor"]
      860 GETUPVAL                         R9 4
      861 GETTABLEKS                       R8 R9 K44 ["White"]
      863 SETTABLE                         R8 R6 R7
      864 GETUPVAL                         R8 3
      865 GETTABLEKS                       R7 R8 K68 ["Toolbox_PackageBackgroundTransparency"]
      867 LOADK                            R8 K123 [0.25]
      868 SETTABLE                         R8 R6 R7
      869 GETUPVAL                         R8 3
      870 GETTABLEKS                       R7 R8 K70 ["Toolbox_PackageImage"]
      872 GETUPVAL                         R9 6
      873 GETTABLEKS                       R8 R9 K124 ["PACKAGE_LIGHT"]
      875 SETTABLE                         R8 R6 R7
      876 GETUPVAL                         R8 3
      877 GETTABLEKS                       R7 R8 K72 ["ScrollingFrameBackgroundColor"]
      879 GETIMPORT                        R8 K14 [Color3.fromRGB]
      881 LOADN                            R9 245
      882 LOADN                            R10 245
      883 LOADN                            R11 245
      884 CALL                             R8 3 1
      885 SETTABLE                         R8 R6 R7
      886 GETUPVAL                         R8 3
      887 GETTABLEKS                       R7 R8 K73 ["ScrollingFrameImageColor"]
      889 GETIMPORT                        R8 K14 [Color3.fromRGB]
      891 LOADN                            R9 245
      892 LOADN                            R10 245
      893 LOADN                            R11 245
      894 CALL                             R8 3 1
      895 SETTABLE                         R8 R6 R7
      896 GETUPVAL                         R8 3
      897 GETTABLEKS                       R7 R8 K74 ["Toolbox_SearchTagBackgroundColor"]
      899 GETUPVAL                         R9 4
      900 GETTABLEKS                       R8 R9 K125 ["Gray_Lighter"]
      902 SETTABLE                         R8 R6 R7
      903 GETUPVAL                         R8 3
      904 GETTABLEKS                       R7 R8 K75 ["Toolbox_SearchPillTextColor"]
      906 GETIMPORT                        R8 K7 [Color3.fromHex]
      908 LOADK                            R9 K115 ["#191919"]
      909 CALL                             R8 1 1
      910 SETTABLE                         R8 R6 R7
      911 GETUPVAL                         R8 3
      912 GETTABLEKS                       R7 R8 K76 ["Toolbox_SearchPillBackgroundColor"]
      914 GETIMPORT                        R8 K7 [Color3.fromHex]
      916 LOADK                            R9 K111 ["#E1E1E1"]
      917 CALL                             R8 1 1
      918 SETTABLE                         R8 R6 R7
      919 GETUPVAL                         R8 3
      920 GETTABLEKS                       R7 R8 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
      922 GETIMPORT                        R8 K7 [Color3.fromHex]
      924 LOADK                            R9 K112 ["#CBCBCB"]
      925 CALL                             R8 1 1
      926 SETTABLE                         R8 R6 R7
      927 GETUPVAL                         R8 3
      928 GETTABLEKS                       R7 R8 K79 ["Toolbox_TabTopBorderColor"]
      930 GETIMPORT                        R8 K14 [Color3.fromRGB]
      932 LOADN                            R9 182
      933 LOADN                            R10 182
      934 LOADN                            R11 182
      935 CALL                             R8 3 1
      936 SETTABLE                         R8 R6 R7
      937 GETUPVAL                         R8 3
      938 GETTABLEKS                       R7 R8 K81 ["Toolbox_TabSelectedColor"]
      940 GETUPVAL                         R9 4
      941 GETTABLEKS                       R8 R9 K80 ["Blue"]
      943 SETTABLE                         R8 R6 R7
      944 GETUPVAL                         R8 3
      945 GETTABLEKS                       R7 R8 K82 ["Toolbox_IconTileGradientColor"]
      947 GETUPVAL                         R9 4
      948 GETTABLEKS                       R8 R9 K126 ["Gray_Light"]
      950 SETTABLE                         R8 R6 R7
      951 GETUPVAL                         R8 3
      952 GETTABLEKS                       R7 R8 K83 ["Toolbox_HomeviewBackgroundColor"]
      954 GETUPVAL                         R9 4
      955 GETTABLEKS                       R8 R9 K44 ["White"]
      957 SETTABLE                         R8 R6 R7
      958 GETUPVAL                         R8 3
      959 GETTABLEKS                       R7 R8 K84 ["Toolbox_SearchOptionButtonHover"]
      961 GETUPVAL                         R9 4
      962 GETTABLEKS                       R8 R9 K67 ["Black"]
      964 SETTABLE                         R8 R6 R7
      965 GETUPVAL                         R8 3
      966 GETTABLEKS                       R7 R8 K85 ["Toolbox_RateTextColor"]
      968 GETIMPORT                        R8 K7 [Color3.fromHex]
      970 LOADK                            R9 K8 ["#3B3B3B"]
      971 CALL                             R8 1 1
      972 SETTABLE                         R8 R6 R7
      973 GETUPVAL                         R8 3
      974 GETTABLEKS                       R7 R8 K87 ["Toolbox_VoteCountColor"]
      976 GETIMPORT                        R8 K7 [Color3.fromHex]
      978 LOADK                            R9 K122 ["#666666"]
      979 CALL                             R8 1 1
      980 SETTABLE                         R8 R6 R7
      981 GETUPVAL                         R8 3
      982 GETTABLEKS                       R7 R8 K88 ["Toolbox_LowConfidencePercentageColor"]
      984 GETIMPORT                        R8 K7 [Color3.fromHex]
      986 LOADK                            R9 K122 ["#666666"]
      987 CALL                             R8 1 1
      988 SETTABLE                         R8 R6 R7
      989 GETUPVAL                         R8 3
      990 GETTABLEKS                       R7 R8 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
      992 GETIMPORT                        R8 K7 [Color3.fromHex]
      994 LOADK                            R9 K127 ["#000000"]
      995 CALL                             R8 1 1
      996 SETTABLE                         R8 R6 R7
      997 GETUPVAL                         R8 3
      998 GETTABLEKS                       R7 R8 K91 ["Toolbox_VotingButtonImage"]
     1000 GETUPVAL                         R9 6
     1001 GETTABLEKS                       R8 R9 K128 ["THUMB_UP_DARK_GRAY"]
     1003 SETTABLE                         R8 R6 R7
     1004 GETUPVAL                         R8 3
     1005 GETTABLEKS                       R7 R8 K93 ["Toolbox_SearchIconColor"]
     1007 GETIMPORT                        R8 K14 [Color3.fromRGB]
     1009 LOADN                            R9 94
     1010 LOADN                            R10 94
     1011 LOADN                            R11 94
     1012 CALL                             R8 3 1
     1013 SETTABLE                         R8 R6 R7
     1014 GETUPVAL                         R8 3
     1015 GETTABLEKS                       R7 R8 K94 ["Toolbox_ClearButtonColor"]
     1017 GETUPVAL                         R10 3
     1018 GETTABLEKS                       R9 R10 K95 ["SecondaryMain"]
     1020 GETTABLEKS                       R8 R9 K129 ["Light"]
     1022 SETTABLE                         R8 R6 R7
     1023 GETUPVAL                         R8 3
     1024 GETTABLEKS                       R7 R8 K97 ["AssetConfig_DividerHorizontalLineColor"]
     1026 GETIMPORT                        R8 K14 [Color3.fromRGB]
     1028 LOADN                            R9 227
     1029 LOADN                            R10 227
     1030 LOADN                            R11 227
     1031 CALL                             R8 3 1
     1032 SETTABLE                         R8 R6 R7
     1033 GETUPVAL                         R8 3
     1034 GETTABLEKS                       R7 R8 K99 ["AssetConfig_PreviewSelectedColor"]
     1036 GETUPVAL                         R9 4
     1037 GETTABLEKS                       R8 R9 K80 ["Blue"]
     1039 SETTABLE                         R8 R6 R7
     1040 GETUPVAL                         R8 3
     1041 GETTABLEKS                       R7 R8 K100 ["AssetConfig_SidetabSelectedBarColor"]
     1043 GETUPVAL                         R9 8
     1044 GETTABLEKS                       R8 R9 K130 ["GRAY_1"]
     1046 SETTABLE                         R8 R6 R7
     1047 GETUPVAL                         R8 3
     1048 GETTABLEKS                       R7 R8 K101 ["AssetConfig_SidetabSelectedBarTransparency"]
     1050 LOADK                            R8 K131 [0.9]
     1051 SETTABLE                         R8 R6 R7
     1052 GETUPVAL                         R8 3
     1053 GETTABLEKS                       R7 R8 K102 ["AssetConfig_SidetabSelectedBarZIndex"]
     1055 LOADN                            R8 0
     1056 SETTABLE                         R8 R6 R7
     1057 GETUPVAL                         R8 3
     1058 GETTABLEKS                       R7 R8 K103 ["AssetConfig_SidetabSelectedIndicatorZindex"]
     1060 LOADN                            R8 0
     1061 SETTABLE                         R8 R6 R7
     1062 GETUPVAL                         R8 3
     1063 GETTABLEKS                       R7 R8 K104 ["AssetConfig_UploadResultButtonColor"]
     1065 GETUPVAL                         R9 4
     1066 GETTABLEKS                       R8 R9 K67 ["Black"]
     1068 SETTABLE                         R8 R6 R7
     1069 GETUPVAL                         R8 3
     1070 GETTABLEKS                       R7 R8 K105 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
     1072 GETIMPORT                        R8 K14 [Color3.fromRGB]
     1074 LOADN                            R9 151
     1075 LOADN                            R10 151
     1076 LOADN                            R11 151
     1077 CALL                             R8 3 1
     1078 SETTABLE                         R8 R6 R7
     1079 GETUPVAL                         R8 3
     1080 GETTABLEKS                       R7 R8 K106 ["AssetConfig_DistributionQuotaTextColor"]
     1082 GETUPVAL                         R9 4
     1083 GETTABLEKS                       R8 R9 K67 ["Black"]
     1085 SETTABLE                         R8 R6 R7
     1086 CALL                             R4 2 1
     1087 GETUPVAL                         R5 9
     1088 CALL                             R5 0 1
     1089 JUMPIFNOT                        R5 ; [+8]
     1090 GETUPVAL                         R6 0
     1091 GETTABLEKS                       R5 R6 K132 ["mock"]
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
     1104 GETUPVAL                         R6 3
     1105 GETTABLEKS                       R5 R6 K22 ["Toolbox_AssetWarningIcon"]
     1107 NEWTABLE                         R8 64 0
     1109 GETUPVAL                         R10 3
     1110 GETTABLEKS                       R9 R10 K134 ["InputFieldBackground"]
     1112 SETTABLEKS                       R9 R8 K135 ["backgroundColor"]
     1114 GETUPVAL                         R10 8
     1115 GETTABLEKS                       R9 R10 K136 ["BLUE_PRIMARY"]
     1117 SETTABLEKS                       R9 R8 K137 ["progressBarColor"]
     1119 GETUPVAL                         R10 3
     1120 GETTABLEKS                       R9 R10 K62 ["Toolbox_HorizontalLineColor"]
     1122 SETTABLEKS                       R9 R8 K138 ["horizontalLineColor"]
     1124 GETUPVAL                         R10 3
     1125 GETTABLEKS                       R9 R10 K139 ["LinkText"]
     1127 SETTABLEKS                       R9 R8 K140 ["link"]
     1129 GETIMPORT                        R9 K14 [Color3.fromRGB]
     1131 LOADN                            R10 255
     1132 LOADN                            R11 68
     1133 LOADN                            R12 68
     1134 CALL                             R9 3 1
     1135 SETTABLEKS                       R9 R8 K141 ["redText"]
     1137 LOADN                            R9 10
     1138 SETTABLEKS                       R9 R8 K142 ["spacingUnit"]
     1140 DUPTABLE                         R9 K148 [{"backgroundColor", "closeIconColor", "descriptionColor", "headerTextColor", "overlayColor", "overlayTransparency"}]
     1141 GETUPVAL                         R11 3
     1142 GETTABLEKS                       R10 R11 K149 ["MainBackground"]
     1144 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1146 GETUPVAL                         R11 4
     1147 GETTABLEKS                       R10 R11 K44 ["White"]
     1149 SETTABLEKS                       R10 R9 K143 ["closeIconColor"]
     1151 GETUPVAL                         R11 3
     1152 GETTABLEKS                       R10 R11 K150 ["TextPrimary"]
     1154 SETTABLEKS                       R10 R9 K144 ["descriptionColor"]
     1156 GETUPVAL                         R11 3
     1157 GETTABLEKS                       R10 R11 K151 ["BrightText"]
     1159 SETTABLEKS                       R10 R9 K145 ["headerTextColor"]
     1161 GETUPVAL                         R11 4
     1162 GETTABLEKS                       R10 R11 K67 ["Black"]
     1164 SETTABLEKS                       R10 R9 K146 ["overlayColor"]
     1166 LOADK                            R10 K152 [0.4]
     1167 SETTABLEKS                       R10 R9 K147 ["overlayTransparency"]
     1169 SETTABLEKS                       R9 R8 K153 ["announcementDialog"]
     1171 DUPTABLE                         R9 K164 [{"assetName", "background", "dropShadowSize", "icon", "outline", "textColor", "strokeThickness", "strokeColor", "voting", "packages"}]
     1172 DUPTABLE                         R10 K165 [{"textColor"}]
     1173 GETUPVAL                         R12 3
     1174 GETTABLEKS                       R11 R12 K20 ["Toolbox_AssetNameColor"]
     1176 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1178 SETTABLEKS                       R10 R9 K154 ["assetName"]
     1180 DUPTABLE                         R10 K169 [{"color", "borderSize", "image"}]
     1181 GETUPVAL                         R12 3
     1182 GETTABLEKS                       R11 R12 K17 ["Toolbox_AssetBackgroundColor"]
     1184 SETTABLEKS                       R11 R10 K166 ["color"]
     1186 GETUPVAL                         R12 3
     1187 GETTABLEKS                       R11 R12 K16 ["Toolbox_AssetBorderSize"]
     1189 SETTABLEKS                       R11 R10 K167 ["borderSize"]
     1191 GETUPVAL                         R12 3
     1192 GETTABLEKS                       R11 R12 K18 ["Toolbox_AssetBackgroundImage"]
     1194 SETTABLEKS                       R11 R10 K168 ["image"]
     1196 SETTABLEKS                       R10 R9 K155 ["background"]
     1198 GETUPVAL                         R11 3
     1199 GETTABLEKS                       R10 R11 K15 ["Toolbox_AssetDropdownSize"]
     1201 SETTABLEKS                       R10 R9 K156 ["dropShadowSize"]
     1203 DUPTABLE                         R10 K173 [{"borderColor", "buttonColor", "warningColor"}]
     1204 GETUPVAL                         R12 3
     1205 GETTABLEKS                       R11 R12 K174 ["ItemHovered"]
     1207 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1209 GETUPVAL                         R12 3
     1210 GETTABLEKS                       R11 R12 K21 ["Toolbox_AssetIconColor"]
     1212 SETTABLEKS                       R11 R10 K171 ["buttonColor"]
     1214 GETUPVAL                         R12 3
     1215 GETTABLEKS                       R11 R12 K22 ["Toolbox_AssetWarningIcon"]
     1217 SETTABLEKS                       R11 R10 K172 ["warningColor"]
     1219 SETTABLEKS                       R10 R9 K157 ["icon"]
     1221 DUPTABLE                         R10 K177 [{"backgroundColor", "verifiedBackgroundColor", "borderColor", "transparency"}]
     1222 GETUPVAL                         R12 3
     1223 GETTABLEKS                       R11 R12 K4 ["Toolbox_AssetOutlineBackground"]
     1225 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1227 GETUPVAL                         R12 3
     1228 GETTABLEKS                       R11 R12 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
     1230 SETTABLEKS                       R11 R10 K175 ["verifiedBackgroundColor"]
     1232 GETUPVAL                         R12 3
     1233 GETTABLEKS                       R11 R12 K9 ["Toolbox_AssetOutlineBoarderColor"]
     1235 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1237 GETUPVAL                         R12 3
     1238 GETTABLEKS                       R11 R12 K11 ["Toolbox_AssetOutlineTransparency"]
     1240 SETTABLEKS                       R11 R10 K176 ["transparency"]
     1242 SETTABLEKS                       R10 R9 K158 ["outline"]
     1244 GETUPVAL                         R11 3
     1245 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1247 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1249 LOADN                            R10 3
     1250 SETTABLEKS                       R10 R9 K160 ["strokeThickness"]
     1252 GETUPVAL                         R11 8
     1253 GETTABLEKS                       R10 R11 K136 ["BLUE_PRIMARY"]
     1255 SETTABLEKS                       R10 R9 K161 ["strokeColor"]
     1257 DUPTABLE                         R10 K189 [{"downVotes", "upVotes", "textColor", "votedDownThumb", "votedUpThumb", "voteThumb", "rateTextColor", "voteCountColor", "lowConfidencePercentageColor", "votingButtonsBackgroundBoxColor", "votingButtonImage"}]
     1258 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1260 LOADN                            R12 206
     1261 LOADN                            R13 100
     1262 LOADN                            R14 91
     1263 CALL                             R11 3 1
     1264 SETTABLEKS                       R11 R10 K179 ["downVotes"]
     1266 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1268 LOADN                            R12 82
     1269 LOADN                            R13 168
     1270 LOADN                            R14 70
     1271 CALL                             R11 3 1
     1272 SETTABLEKS                       R11 R10 K180 ["upVotes"]
     1274 GETUPVAL                         R12 3
     1275 GETTABLEKS                       R11 R12 K190 ["SubText"]
     1277 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1279 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1281 LOADN                            R12 216
     1282 LOADN                            R13 104
     1283 LOADN                            R14 104
     1284 CALL                             R11 3 1
     1285 SETTABLEKS                       R11 R10 K181 ["votedDownThumb"]
     1287 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1289 LOADN                            R12 0
     1290 LOADN                            R13 178
     1291 LOADN                            R14 89
     1292 CALL                             R11 3 1
     1293 SETTABLEKS                       R11 R10 K182 ["votedUpThumb"]
     1295 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1297 LOADN                            R12 117
     1298 LOADN                            R13 117
     1299 LOADN                            R14 117
     1300 CALL                             R11 3 1
     1301 SETTABLEKS                       R11 R10 K183 ["voteThumb"]
     1303 GETUPVAL                         R12 3
     1304 GETTABLEKS                       R11 R12 K85 ["Toolbox_RateTextColor"]
     1306 SETTABLEKS                       R11 R10 K184 ["rateTextColor"]
     1308 GETUPVAL                         R12 3
     1309 GETTABLEKS                       R11 R12 K87 ["Toolbox_VoteCountColor"]
     1311 SETTABLEKS                       R11 R10 K185 ["voteCountColor"]
     1313 GETUPVAL                         R12 3
     1314 GETTABLEKS                       R11 R12 K88 ["Toolbox_LowConfidencePercentageColor"]
     1316 SETTABLEKS                       R11 R10 K186 ["lowConfidencePercentageColor"]
     1318 GETUPVAL                         R12 3
     1319 GETTABLEKS                       R11 R12 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
     1321 SETTABLEKS                       R11 R10 K187 ["votingButtonsBackgroundBoxColor"]
     1323 GETUPVAL                         R12 3
     1324 GETTABLEKS                       R11 R12 K91 ["Toolbox_VotingButtonImage"]
     1326 SETTABLEKS                       R11 R10 K188 ["votingButtonImage"]
     1328 SETTABLEKS                       R10 R9 K162 ["voting"]
     1330 DUPTABLE                         R10 K193 [{"backgroundColor", "backgroundTransparency", "packageImage"}]
     1331 GETUPVAL                         R12 3
     1332 GETTABLEKS                       R11 R12 K66 ["Toolbox_PackageBackgroundColor"]
     1334 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1336 GETUPVAL                         R12 3
     1337 GETTABLEKS                       R11 R12 K68 ["Toolbox_PackageBackgroundTransparency"]
     1339 SETTABLEKS                       R11 R10 K191 ["backgroundTransparency"]
     1341 GETUPVAL                         R12 3
     1342 GETTABLEKS                       R11 R12 K70 ["Toolbox_PackageImage"]
     1344 SETTABLEKS                       R11 R10 K192 ["packageImage"]
     1346 SETTABLEKS                       R10 R9 K163 ["packages"]
     1348 SETTABLEKS                       R9 R8 K194 ["asset"]
     1350 DUPTABLE                         R9 K196 [{"labelTextColor"}]
     1351 GETUPVAL                         R11 3
     1352 GETTABLEKS                       R10 R11 K197 ["DimmedText"]
     1354 SETTABLEKS                       R10 R9 K195 ["labelTextColor"]
     1356 SETTABLEKS                       R9 R8 K198 ["assetConfig"]
     1358 DUPTABLE                         R9 K201 [{"backgroundColor", "progressBarColor", "indicatorColor", "indicatorBorderColor"}]
     1359 GETUPVAL                         R11 3
     1360 GETTABLEKS                       R10 R11 K45 ["Toolbox_AudioPlayerBackgroundColor"]
     1362 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1364 GETUPVAL                         R11 3
     1365 GETTABLEKS                       R10 R11 K47 ["Toolbox_AudioPlayerProgressBarColor"]
     1367 SETTABLEKS                       R10 R9 K137 ["progressBarColor"]
     1369 GETUPVAL                         R11 3
     1370 GETTABLEKS                       R10 R11 K49 ["Toolbox_AudioPlayerIndicatorColor"]
     1372 SETTABLEKS                       R10 R9 K199 ["indicatorColor"]
     1374 GETUPVAL                         R11 3
     1375 GETTABLEKS                       R10 R11 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
     1377 SETTABLEKS                       R10 R9 K200 ["indicatorBorderColor"]
     1379 SETTABLEKS                       R9 R8 K202 ["audioPlayer"]
     1381 DUPTABLE                         R9 K206 [{"backgroundButtonColor", "selectedButtonColor", "selectedTextColor", "textColor"}]
     1382 GETUPVAL                         R11 3
     1383 GETTABLEKS                       R10 R11 K45 ["Toolbox_AudioPlayerBackgroundColor"]
     1385 SETTABLEKS                       R10 R9 K203 ["backgroundButtonColor"]
     1387 GETIMPORT                        R10 K7 [Color3.fromHex]
     1389 LOADK                            R11 K48 ["#0077D6"]
     1390 CALL                             R10 1 1
     1391 SETTABLEKS                       R10 R9 K204 ["selectedButtonColor"]
     1393 GETUPVAL                         R11 3
     1394 GETTABLEKS                       R10 R11 K52 ["Toolbox_AudioTabSelectedTextColor"]
     1396 SETTABLEKS                       R10 R9 K205 ["selectedTextColor"]
     1398 GETUPVAL                         R11 3
     1399 GETTABLEKS                       R10 R11 K207 ["TextSecondary"]
     1401 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1403 SETTABLEKS                       R9 R8 K208 ["audioTabs"]
     1405 GETUPVAL                         R10 5
     1406 CALL                             R10 0 1
     1407 JUMPIFNOT                        R10 ; [+22]
     1408 DUPTABLE                         R9 K212 [{"spacingUnit", "textSize", "font", "thumbnailBackgroundColor", "textColor"}]
     1409 LOADN                            R10 10
     1410 SETTABLEKS                       R10 R9 K142 ["spacingUnit"]
     1412 LOADN                            R10 18
     1413 SETTABLEKS                       R10 R9 K209 ["textSize"]
     1415 GETIMPORT                        R10 K216 [Enum.Font.SourceSans]
     1417 SETTABLEKS                       R10 R9 K210 ["font"]
     1419 GETUPVAL                         R11 3
     1420 GETTABLEKS                       R10 R11 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
     1422 SETTABLEKS                       R10 R9 K211 ["thumbnailBackgroundColor"]
     1424 GETUPVAL                         R11 3
     1425 GETTABLEKS                       R10 R11 K24 ["Toolbox_CreatorLabelTextColor"]
     1427 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1429 JUMP                             ; [+1]
     1430 LOADNIL                          R9
     1431 SETTABLEKS                       R9 R8 K217 ["creatorLabel"]
     1433 GETUPVAL                         R10 5
     1434 CALL                             R10 0 1
     1435 JUMPIFNOT                        R10 ; [+10]
     1436 DUPTABLE                         R9 K218 [{"spacingUnit", "backgroundColor"}]
     1437 LOADN                            R10 10
     1438 SETTABLEKS                       R10 R9 K142 ["spacingUnit"]
     1440 GETUPVAL                         R11 3
     1441 GETTABLEKS                       R10 R11 K28 ["Toolbox_CreatorPillBackgroundColor"]
     1443 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1445 JUMP                             ; [+1]
     1446 LOADNIL                          R9
     1447 SETTABLEKS                       R9 R8 K219 ["creatorPill"]
     1449 DUPTABLE                         R9 K165 [{"textColor"}]
     1450 GETUPVAL                         R11 3
     1451 GETTABLEKS                       R10 R11 K190 ["SubText"]
     1453 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1455 SETTABLEKS                       R9 R8 K220 ["creatorName"]
     1457 DUPTABLE                         R9 K223 [{"errorIcon", "alertIcon"}]
     1458 GETUPVAL                         R11 3
     1459 GETTABLEKS                       R10 R11 K29 ["Toolbox_DialogErrorIcon"]
     1461 SETTABLEKS                       R10 R9 K221 ["errorIcon"]
     1463 GETUPVAL                         R11 3
     1464 GETTABLEKS                       R10 R11 K31 ["Toolbox_AlertIcon"]
     1466 SETTABLEKS                       R10 R9 K222 ["alertIcon"]
     1468 SETTABLEKS                       R9 R8 K224 ["dialog"]
     1470 DUPTABLE                         R9 K229 [{"dropdownIconColor", "currentSelection", "item", "dropdownFrame"}]
     1471 GETUPVAL                         R11 3
     1472 GETTABLEKS                       R10 R11 K56 ["Toolbox_DropdownIconColor"]
     1474 SETTABLEKS                       R10 R9 K225 ["dropdownIconColor"]
     1476 DUPTABLE                         R10 K234 [{"backgroundColor", "backgroundSelectedColor", "backgroundDisabledColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor"}]
     1477 GETUPVAL                         R12 3
     1478 GETTABLEKS                       R11 R12 K235 ["Dropdown"]
     1480 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1482 GETUPVAL                         R12 3
     1483 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1485 SETTABLEKS                       R11 R10 K230 ["backgroundSelectedColor"]
     1487 GETUPVAL                         R12 3
     1488 GETTABLEKS                       R11 R12 K237 ["Border"]
     1490 SETTABLEKS                       R11 R10 K231 ["backgroundDisabledColor"]
     1492 GETUPVAL                         R12 3
     1493 GETTABLEKS                       R11 R12 K237 ["Border"]
     1495 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1497 GETUPVAL                         R12 3
     1498 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1500 SETTABLEKS                       R11 R10 K232 ["borderSelectedColor"]
     1502 GETUPVAL                         R12 3
     1503 GETTABLEKS                       R11 R12 K178 ["MainText"]
     1505 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1507 GETUPVAL                         R12 3
     1508 GETTABLEKS                       R11 R12 K238 ["MainTextSelected"]
     1510 SETTABLEKS                       R11 R10 K233 ["textSelectedColor"]
     1512 SETTABLEKS                       R10 R9 K226 ["currentSelection"]
     1514 DUPTABLE                         R10 K240 [{"backgroundColor", "backgroundSelectedColor", "selectedBarColor", "textColor", "labelTextColor"}]
     1515 GETUPVAL                         R12 3
     1516 GETTABLEKS                       R11 R12 K241 ["Item"]
     1518 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1520 GETUPVAL                         R12 3
     1521 GETTABLEKS                       R11 R12 K54 ["Toolbox_DropdownItemSelectedColor"]
     1523 SETTABLEKS                       R11 R10 K230 ["backgroundSelectedColor"]
     1525 GETUPVAL                         R12 3
     1526 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1528 SETTABLEKS                       R11 R10 K239 ["selectedBarColor"]
     1530 GETUPVAL                         R12 3
     1531 GETTABLEKS                       R11 R12 K178 ["MainText"]
     1533 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1535 GETUPVAL                         R12 3
     1536 GETTABLEKS                       R11 R12 K197 ["DimmedText"]
     1538 SETTABLEKS                       R11 R10 K195 ["labelTextColor"]
     1540 SETTABLEKS                       R10 R9 K227 ["item"]
     1542 DUPTABLE                         R10 K242 [{"borderColor"}]
     1543 GETUPVAL                         R12 3
     1544 GETTABLEKS                       R11 R12 K237 ["Border"]
     1546 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1548 SETTABLEKS                       R10 R9 K228 ["dropdownFrame"]
     1550 SETTABLEKS                       R9 R8 K243 ["dropdownMenu"]
     1552 DUPTABLE                         R9 K246 [{"backgroundColor", "hoveredBackgroundColor", "textFillColor"}]
     1553 GETUPVAL                         R11 3
     1554 GETTABLEKS                       R10 R11 K57 ["Toolbox_FontTileBackgroundColor"]
     1556 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1558 GETUPVAL                         R11 3
     1559 GETTABLEKS                       R10 R11 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
     1561 SETTABLEKS                       R10 R9 K244 ["hoveredBackgroundColor"]
     1563 GETUPVAL                         R11 3
     1564 GETTABLEKS                       R10 R11 K60 ["Toolbox_FontTileTextFillColor"]
     1566 SETTABLEKS                       R10 R9 K245 ["textFillColor"]
     1568 SETTABLEKS                       R9 R8 K247 ["fontTile"]
     1570 DUPTABLE                         R9 K249 [{"backgroundColor", "borderColor", "labelTextColor", "button"}]
     1571 GETUPVAL                         R11 3
     1572 GETTABLEKS                       R10 R11 K250 ["Titlebar"]
     1574 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1576 GETUPVAL                         R11 3
     1577 GETTABLEKS                       R10 R11 K237 ["Border"]
     1579 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     1581 GETUPVAL                         R11 3
     1582 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1584 SETTABLEKS                       R10 R9 K195 ["labelTextColor"]
     1586 DUPTABLE                         R10 K251 [{"backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor"}]
     1587 GETUPVAL                         R12 3
     1588 GETTABLEKS                       R11 R12 K235 ["Dropdown"]
     1590 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1592 GETUPVAL                         R12 3
     1593 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1595 SETTABLEKS                       R11 R10 K230 ["backgroundSelectedColor"]
     1597 GETUPVAL                         R12 3
     1598 GETTABLEKS                       R11 R12 K237 ["Border"]
     1600 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1602 GETUPVAL                         R12 3
     1603 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1605 SETTABLEKS                       R11 R10 K232 ["borderSelectedColor"]
     1607 GETUPVAL                         R12 3
     1608 GETTABLEKS                       R11 R12 K178 ["MainText"]
     1610 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1612 GETUPVAL                         R12 3
     1613 GETTABLEKS                       R11 R12 K238 ["MainTextSelected"]
     1615 SETTABLEKS                       R11 R10 K233 ["textSelectedColor"]
     1617 SETTABLEKS                       R10 R9 K248 ["button"]
     1619 SETTABLEKS                       R9 R8 K252 ["footer"]
     1621 DUPTABLE                         R9 K254 [{"backgroundColor", "borderColor", "iconColor"}]
     1622 GETUPVAL                         R11 3
     1623 GETTABLEKS                       R10 R11 K250 ["Titlebar"]
     1625 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1627 GETUPVAL                         R11 3
     1628 GETTABLEKS                       R10 R11 K237 ["Border"]
     1630 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     1632 GETUPVAL                         R11 10
     1633 CALL                             R11 0 1
     1634 JUMPIFNOT                        R11 ; [+4]
     1635 GETUPVAL                         R11 8
     1636 GETTABLEKS                       R10 R11 K255 ["GRAY_2"]
     1638 JUMP                             ; [+1]
     1639 LOADNIL                          R10
     1640 SETTABLEKS                       R10 R9 K253 ["iconColor"]
     1642 SETTABLEKS                       R9 R8 K256 ["header"]
     1644 DUPTABLE                         R9 K257 [{"backgroundColor"}]
     1645 GETUPVAL                         R11 3
     1646 GETTABLEKS                       R10 R11 K83 ["Toolbox_HomeviewBackgroundColor"]
     1648 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1650 SETTABLEKS                       R9 R8 K258 ["homeView"]
     1652 DUPTABLE                         R9 K263 [{"font", "gradientColor", "overlayColor", "overlayTransparency", "padding", "spacing", "textColor", "textColorHovered", "textSize"}]
     1653 GETIMPORT                        R10 K265 [Enum.Font.SourceSansBold]
     1655 SETTABLEKS                       R10 R9 K210 ["font"]
     1657 GETUPVAL                         R11 3
     1658 GETTABLEKS                       R10 R11 K82 ["Toolbox_IconTileGradientColor"]
     1660 SETTABLEKS                       R10 R9 K259 ["gradientColor"]
     1662 GETIMPORT                        R10 K7 [Color3.fromHex]
     1664 LOADK                            R11 K10 ["#121212"]
     1665 CALL                             R10 1 1
     1666 SETTABLEKS                       R10 R9 K146 ["overlayColor"]
     1668 LOADK                            R10 K11 ["Toolbox_AssetOutlineTransparency"]
     1669 SETTABLEKS                       R10 R9 K147 ["overlayTransparency"]
     1671 LOADN                            R10 8
     1672 SETTABLEKS                       R10 R9 K260 ["padding"]
     1674 LOADN                            R10 16
     1675 SETTABLEKS                       R10 R9 K261 ["spacing"]
     1677 GETIMPORT                        R10 K7 [Color3.fromHex]
     1679 LOADK                            R11 K111 ["#E1E1E1"]
     1680 CALL                             R10 1 1
     1681 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1683 LOADNIL                          R10
     1684 SETTABLEKS                       R10 R9 K262 ["textColorHovered"]
     1686 LOADN                            R10 16
     1687 SETTABLEKS                       R10 R9 K209 ["textSize"]
     1689 SETTABLEKS                       R9 R8 K268 ["iconTile"]
     1691 DUPTABLE                         R9 K269 [{"backgroundColor", "textColor"}]
     1692 GETUPVAL                         R11 3
     1693 GETTABLEKS                       R10 R11 K250 ["Titlebar"]
     1695 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1697 GETUPVAL                         R11 3
     1698 GETTABLEKS                       R10 R11 K190 ["SubText"]
     1700 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1702 SETTABLEKS                       R9 R8 K270 ["infoBanner"]
     1704 DUPTABLE                         R9 K279 [{"backgroundColorEven", "backgroundColorOdd", "borderColor", "headerTextColor", "titleTextColor", "primaryIconColor", "textColor", "textSize", "playButtonColor", "pauseButtonColor", "insertButtonColor", "insertButtonTextColor"}]
     1705 GETUPVAL                         R11 3
     1706 GETTABLEKS                       R10 R11 K33 ["Toolbox_ItemRowBackgroundColorEven"]
     1708 SETTABLEKS                       R10 R9 K271 ["backgroundColorEven"]
     1710 GETUPVAL                         R11 3
     1711 GETTABLEKS                       R10 R11 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
     1713 SETTABLEKS                       R10 R9 K272 ["backgroundColorOdd"]
     1715 GETUPVAL                         R11 3
     1716 GETTABLEKS                       R10 R11 K37 ["Toolbox_ItemRowBorderColor"]
     1718 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     1720 GETUPVAL                         R11 3
     1721 GETTABLEKS                       R10 R11 K39 ["Toolbox_ItemRowHeaderTextColor"]
     1723 SETTABLEKS                       R10 R9 K145 ["headerTextColor"]
     1725 GETUPVAL                         R11 3
     1726 GETTABLEKS                       R10 R11 K41 ["Toolbox_ItemRowTitleTextColor"]
     1728 SETTABLEKS                       R10 R9 K273 ["titleTextColor"]
     1730 GETIMPORT                        R10 K7 [Color3.fromHex]
     1732 LOADK                            R11 K24 ["Toolbox_CreatorLabelTextColor"]
     1733 CALL                             R10 1 1
     1734 SETTABLEKS                       R10 R9 K274 ["primaryIconColor"]
     1736 GETUPVAL                         R11 3
     1737 GETTABLEKS                       R10 R11 K190 ["SubText"]
     1739 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1741 LOADN                            R10 16
     1742 SETTABLEKS                       R10 R9 K209 ["textSize"]
     1744 GETUPVAL                         R11 8
     1745 GETTABLEKS                       R10 R11 K281 ["BLACK"]
     1747 SETTABLEKS                       R10 R9 K275 ["playButtonColor"]
     1749 GETUPVAL                         R11 8
     1750 GETTABLEKS                       R10 R11 K136 ["BLUE_PRIMARY"]
     1752 SETTABLEKS                       R10 R9 K276 ["pauseButtonColor"]
     1754 GETIMPORT                        R10 K7 [Color3.fromHex]
     1756 LOADK                            R11 K48 ["#0077D6"]
     1757 CALL                             R10 1 1
     1758 SETTABLEKS                       R10 R9 K277 ["insertButtonColor"]
     1760 GETUPVAL                         R11 8
     1761 GETTABLEKS                       R10 R11 K282 ["WHITE"]
     1763 SETTABLEKS                       R10 R9 K278 ["insertButtonTextColor"]
     1765 SETTABLEKS                       R9 R8 K283 ["itemRow"]
     1767 DUPTABLE                         R9 K165 [{"textColor"}]
     1768 GETIMPORT                        R10 K14 [Color3.fromRGB]
     1770 LOADN                            R11 0
     1771 LOADN                            R12 162
     1772 LOADN                            R13 255
     1773 CALL                             R10 3 1
     1774 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1776 SETTABLEKS                       R9 R8 K284 ["linkButton"]
     1778 DUPTABLE                         R9 K286 [{"backgroundColor", "textColor", "informativeTextColor", "button"}]
     1779 GETUPVAL                         R11 3
     1780 GETTABLEKS                       R10 R11 K149 ["MainBackground"]
     1782 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1784 GETUPVAL                         R11 3
     1785 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1787 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1789 GETUPVAL                         R11 3
     1790 GETTABLEKS                       R10 R11 K190 ["SubText"]
     1792 SETTABLEKS                       R10 R9 K285 ["informativeTextColor"]
     1794 DUPTABLE                         R10 K287 [{"textColor", "textSelectedColor", "backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor"}]
     1795 GETUPVAL                         R12 3
     1796 GETTABLEKS                       R11 R12 K178 ["MainText"]
     1798 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1800 GETUPVAL                         R12 3
     1801 GETTABLEKS                       R11 R12 K238 ["MainTextSelected"]
     1803 SETTABLEKS                       R11 R10 K233 ["textSelectedColor"]
     1805 GETUPVAL                         R12 3
     1806 GETTABLEKS                       R11 R12 K149 ["MainBackground"]
     1808 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1810 GETUPVAL                         R12 3
     1811 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1813 SETTABLEKS                       R11 R10 K230 ["backgroundSelectedColor"]
     1815 GETUPVAL                         R12 3
     1816 GETTABLEKS                       R11 R12 K237 ["Border"]
     1818 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1820 GETUPVAL                         R12 3
     1821 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1823 SETTABLEKS                       R11 R10 K232 ["borderSelectedColor"]
     1825 SETTABLEKS                       R10 R9 K248 ["button"]
     1827 SETTABLEKS                       R9 R8 K288 ["messageBox"]
     1829 DUPTABLE                         R9 K291 [{"promptText", "balanceText"}]
     1830 GETUPVAL                         R11 3
     1831 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1833 SETTABLEKS                       R10 R9 K289 ["promptText"]
     1835 GETUPVAL                         R11 3
     1836 GETTABLEKS                       R10 R11 K197 ["DimmedText"]
     1838 SETTABLEKS                       R10 R9 K290 ["balanceText"]
     1840 SETTABLEKS                       R9 R8 K292 ["purchaseDialog"]
     1842 DUPTABLE                         R9 K298 [{"backgroundColor", "distributionQuotaTextColor", "titleTextColor", "textColor", "quotaTextColor", "verifyTextColor", "warningIconColor", "additionalImagesThumbnailSize"}]
     1843 GETUPVAL                         R11 3
     1844 GETTABLEKS                       R10 R11 K2 ["Toolbox_PublishAssetBackground"]
     1846 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1848 GETUPVAL                         R11 3
     1849 GETTABLEKS                       R10 R11 K106 ["AssetConfig_DistributionQuotaTextColor"]
     1851 SETTABLEKS                       R10 R9 K293 ["distributionQuotaTextColor"]
     1853 GETUPVAL                         R11 3
     1854 GETTABLEKS                       R10 R11 K190 ["SubText"]
     1856 SETTABLEKS                       R10 R9 K273 ["titleTextColor"]
     1858 GETUPVAL                         R11 3
     1859 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1861 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1863 GETUPVAL                         R11 3
     1864 GETTABLEKS                       R10 R11 K151 ["BrightText"]
     1866 SETTABLEKS                       R10 R9 K294 ["quotaTextColor"]
     1868 GETUPVAL                         R11 3
     1869 GETTABLEKS                       R10 R11 K207 ["TextSecondary"]
     1871 SETTABLEKS                       R10 R9 K295 ["verifyTextColor"]
     1873 GETIMPORT                        R10 K7 [Color3.fromHex]
     1875 LOADK                            R11 K43 ["Toolbox_ItemRowTextColor"]
     1876 CALL                             R10 1 1
     1877 SETTABLEKS                       R10 R9 K296 ["warningIconColor"]
     1879 GETIMPORT                        R10 K301 [UDim2.new]
     1881 LOADN                            R11 0
     1882 LOADN                            R12 185
     1883 LOADN                            R13 0
     1884 LOADN                            R14 104
     1885 CALL                             R10 4 1
     1886 SETTABLEKS                       R10 R9 K297 ["additionalImagesThumbnailSize"]
     1888 SETTABLEKS                       R9 R8 K302 ["publishAsset"]
     1890 DUPTABLE                         R9 K309 [{"backgroundColor", "liveBackgroundColor", "borderColor", "borderHoveredColor", "borderSelectedColor", "textColor", "placeholderTextColor", "divideLineColor", "searchButton", "clearButton"}]
     1891 GETUPVAL                         R11 3
     1892 GETTABLEKS                       R10 R11 K235 ["Dropdown"]
     1894 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1896 GETUPVAL                         R11 3
     1897 GETTABLEKS                       R10 R11 K134 ["InputFieldBackground"]
     1899 SETTABLEKS                       R10 R9 K303 ["liveBackgroundColor"]
     1901 GETUPVAL                         R11 3
     1902 GETTABLEKS                       R10 R11 K237 ["Border"]
     1904 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     1906 GETUPVAL                         R11 3
     1907 GETTABLEKS                       R10 R11 K236 ["CurrentMarker"]
     1909 SETTABLEKS                       R10 R9 K304 ["borderHoveredColor"]
     1911 GETUPVAL                         R11 8
     1912 GETTABLEKS                       R10 R11 K136 ["BLUE_PRIMARY"]
     1914 SETTABLEKS                       R10 R9 K232 ["borderSelectedColor"]
     1916 GETUPVAL                         R11 3
     1917 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1919 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1921 GETUPVAL                         R11 3
     1922 GETTABLEKS                       R10 R11 K197 ["DimmedText"]
     1924 SETTABLEKS                       R10 R9 K305 ["placeholderTextColor"]
     1926 GETUPVAL                         R11 3
     1927 GETTABLEKS                       R10 R11 K237 ["Border"]
     1929 SETTABLEKS                       R10 R9 K306 ["divideLineColor"]
     1931 DUPTABLE                         R10 K312 [{"imageColor", "imageSelectedColor"}]
     1932 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1934 LOADN                            R12 184
     1935 LOADN                            R13 184
     1936 LOADN                            R14 184
     1937 CALL                             R11 3 1
     1938 SETTABLEKS                       R11 R10 K310 ["imageColor"]
     1940 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1942 LOADN                            R12 0
     1943 LOADN                            R13 162
     1944 LOADN                            R14 255
     1945 CALL                             R11 3 1
     1946 SETTABLEKS                       R11 R10 K311 ["imageSelectedColor"]
     1948 SETTABLEKS                       R10 R9 K307 ["searchButton"]
     1950 DUPTABLE                         R10 K312 [{"imageColor", "imageSelectedColor"}]
     1951 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1953 LOADN                            R12 184
     1954 LOADN                            R13 184
     1955 LOADN                            R14 184
     1956 CALL                             R11 3 1
     1957 SETTABLEKS                       R11 R10 K310 ["imageColor"]
     1959 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1961 LOADN                            R12 0
     1962 LOADN                            R13 162
     1963 LOADN                            R14 255
     1964 CALL                             R11 3 1
     1965 SETTABLEKS                       R11 R10 K311 ["imageSelectedColor"]
     1967 SETTABLEKS                       R10 R9 K308 ["clearButton"]
     1969 SETTABLEKS                       R9 R8 K313 ["searchBar"]
     1971 DUPTABLE                         R9 K316 [{"scrollbarBackgroundColor", "scrollbarImageColor"}]
     1972 GETUPVAL                         R11 3
     1973 GETTABLEKS                       R10 R11 K72 ["ScrollingFrameBackgroundColor"]
     1975 SETTABLEKS                       R10 R9 K314 ["scrollbarBackgroundColor"]
     1977 GETUPVAL                         R11 3
     1978 GETTABLEKS                       R10 R11 K73 ["ScrollingFrameImageColor"]
     1980 SETTABLEKS                       R10 R9 K315 ["scrollbarImageColor"]
     1982 SETTABLEKS                       R9 R8 K317 ["scrollingFrame"]
     1984 DUPTABLE                         R9 K320 [{"labelTextColor", "textColor", "textHoveredColor", "underlineColor"}]
     1985 GETUPVAL                         R11 3
     1986 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1988 SETTABLEKS                       R10 R9 K195 ["labelTextColor"]
     1990 GETUPVAL                         R11 3
     1991 GETTABLEKS                       R10 R11 K190 ["SubText"]
     1993 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1995 GETUPVAL                         R11 3
     1996 GETTABLEKS                       R10 R11 K139 ["LinkText"]
     1998 SETTABLEKS                       R10 R9 K318 ["textHoveredColor"]
     2000 GETUPVAL                         R11 3
     2001 GETTABLEKS                       R10 R11 K139 ["LinkText"]
     2003 SETTABLEKS                       R10 R9 K319 ["underlineColor"]
     2005 SETTABLEKS                       R9 R8 K321 ["suggestionsComponent"]
     2007 DUPTABLE                         R9 K328 [{"background", "border", "headerTextColor", "imageColor", "imageHoveredColor", "imageSelectedColor", "warningIconColor", "audioSearch", "timeTextBox", "applyButton", "cancelButton"}]
     2008 GETUPVAL                         R11 3
     2009 GETTABLEKS                       R10 R11 K149 ["MainBackground"]
     2011 SETTABLEKS                       R10 R9 K155 ["background"]
     2013 GETUPVAL                         R11 3
     2014 GETTABLEKS                       R10 R11 K237 ["Border"]
     2016 SETTABLEKS                       R10 R9 K322 ["border"]
     2018 GETUPVAL                         R11 3
     2019 GETTABLEKS                       R10 R11 K178 ["MainText"]
     2021 SETTABLEKS                       R10 R9 K145 ["headerTextColor"]
     2023 GETUPVAL                         R11 8
     2024 GETTABLEKS                       R10 R11 K255 ["GRAY_2"]
     2026 SETTABLEKS                       R10 R9 K310 ["imageColor"]
     2028 GETUPVAL                         R11 3
     2029 GETTABLEKS                       R10 R11 K84 ["Toolbox_SearchOptionButtonHover"]
     2031 SETTABLEKS                       R10 R9 K323 ["imageHoveredColor"]
     2033 GETUPVAL                         R11 8
     2034 GETTABLEKS                       R10 R11 K136 ["BLUE_PRIMARY"]
     2036 SETTABLEKS                       R10 R9 K311 ["imageSelectedColor"]
     2038 SETTABLEKS                       R5 R9 K296 ["warningIconColor"]
     2040 DUPTABLE                         R10 K165 [{"textColor"}]
     2041 GETUPVAL                         R12 3
     2042 GETTABLEKS                       R11 R12 K178 ["MainText"]
     2044 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2046 SETTABLEKS                       R10 R9 K324 ["audioSearch"]
     2048 DUPTABLE                         R10 K330 [{"borderColor", "backgroundColor", "selectedBorderColor", "textColor", "placeholderTextColor"}]
     2049 GETUPVAL                         R12 3
     2050 GETTABLEKS                       R11 R12 K237 ["Border"]
     2052 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     2054 GETUPVAL                         R12 3
     2055 GETTABLEKS                       R11 R12 K134 ["InputFieldBackground"]
     2057 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     2059 GETUPVAL                         R12 8
     2060 GETTABLEKS                       R11 R12 K136 ["BLUE_PRIMARY"]
     2062 SETTABLEKS                       R11 R10 K329 ["selectedBorderColor"]
     2064 GETUPVAL                         R12 3
     2065 GETTABLEKS                       R11 R12 K178 ["MainText"]
     2067 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2069 GETUPVAL                         R12 3
     2070 GETTABLEKS                       R11 R12 K197 ["DimmedText"]
     2072 SETTABLEKS                       R11 R10 K305 ["placeholderTextColor"]
     2074 SETTABLEKS                       R10 R9 K325 ["timeTextBox"]
     2076 GETUPVAL                         R11 11
     2077 CALL                             R11 0 1
     2078 JUMPIF                           R11 ; [+17]
     2079 DUPTABLE                         R10 K331 [{"textColor", "backgroundColor", "borderColor"}]
     2080 GETUPVAL                         R12 8
     2081 GETTABLEKS                       R11 R12 K282 ["WHITE"]
     2083 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2085 GETUPVAL                         R12 8
     2086 GETTABLEKS                       R11 R12 K136 ["BLUE_PRIMARY"]
     2088 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     2090 GETUPVAL                         R12 3
     2091 GETTABLEKS                       R11 R12 K149 ["MainBackground"]
     2093 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     2095 JUMP                             ; [+1]
     2096 LOADNIL                          R10
     2097 SETTABLEKS                       R10 R9 K326 ["applyButton"]
     2099 GETUPVAL                         R11 11
     2100 CALL                             R11 0 1
     2101 JUMPIF                           R11 ; [+17]
     2102 DUPTABLE                         R10 K331 [{"textColor", "backgroundColor", "borderColor"}]
     2103 GETUPVAL                         R12 3
     2104 GETTABLEKS                       R11 R12 K178 ["MainText"]
     2106 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2108 GETUPVAL                         R12 3
     2109 GETTABLEKS                       R11 R12 K332 ["Button"]
     2111 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     2113 GETUPVAL                         R12 3
     2114 GETTABLEKS                       R11 R12 K237 ["Border"]
     2116 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     2118 JUMP                             ; [+1]
     2119 LOADNIL                          R10
     2120 SETTABLEKS                       R10 R9 K327 ["cancelButton"]
     2122 SETTABLEKS                       R9 R8 K333 ["searchOptions"]
     2124 DUPTABLE                         R9 K335 [{"buttonSpacing"}]
     2125 LOADN                            R10 3
     2126 SETTABLEKS                       R10 R9 K334 ["buttonSpacing"]
     2128 SETTABLEKS                       R9 R8 K336 ["searchList"]
     2130 DUPTABLE                         R9 K338 [{"backgroundColor", "backgroundColorHovered", "font", "padding", "textSize", "textColor"}]
     2131 GETUPVAL                         R11 3
     2132 GETTABLEKS                       R10 R11 K76 ["Toolbox_SearchPillBackgroundColor"]
     2134 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2136 GETUPVAL                         R11 3
     2137 GETTABLEKS                       R10 R11 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
     2139 SETTABLEKS                       R10 R9 K337 ["backgroundColorHovered"]
     2141 GETIMPORT                        R10 K216 [Enum.Font.SourceSans]
     2143 SETTABLEKS                       R10 R9 K210 ["font"]
     2145 DUPTABLE                         R10 K343 [{"top", "bottom", "left", "right"}]
     2146 LOADN                            R11 4
     2147 SETTABLEKS                       R11 R10 K339 ["top"]
     2149 LOADN                            R11 6
     2150 SETTABLEKS                       R11 R10 K340 ["bottom"]
     2152 LOADN                            R11 10
     2153 SETTABLEKS                       R11 R10 K341 ["left"]
     2155 LOADN                            R11 10
     2156 SETTABLEKS                       R11 R10 K342 ["right"]
     2158 SETTABLEKS                       R10 R9 K260 ["padding"]
     2160 LOADN                            R10 18
     2161 SETTABLEKS                       R10 R9 K209 ["textSize"]
     2163 GETUPVAL                         R11 3
     2164 GETTABLEKS                       R10 R11 K75 ["Toolbox_SearchPillTextColor"]
     2166 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2168 SETTABLEKS                       R9 R8 K344 ["searchPill"]
     2170 DUPTABLE                         R9 K346 [{"backgroundColor", "borderColor", "textColor", "clearAllText"}]
     2171 GETUPVAL                         R11 3
     2172 GETTABLEKS                       R10 R11 K74 ["Toolbox_SearchTagBackgroundColor"]
     2174 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2176 GETUPVAL                         R11 3
     2177 GETTABLEKS                       R10 R11 K237 ["Border"]
     2179 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     2181 GETUPVAL                         R11 3
     2182 GETTABLEKS                       R10 R11 K151 ["BrightText"]
     2184 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2186 GETUPVAL                         R11 3
     2187 GETTABLEKS                       R10 R11 K139 ["LinkText"]
     2189 SETTABLEKS                       R10 R9 K345 ["clearAllText"]
     2191 SETTABLEKS                       R9 R8 K347 ["searchTag"]
     2193 DUPTABLE                         R9 K348 [{"textColor", "font", "textSize"}]
     2194 GETUPVAL                         R11 3
     2195 GETTABLEKS                       R10 R11 K63 ["Toolbox_NavigationLinkTextColor"]
     2197 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2199 GETIMPORT                        R10 K265 [Enum.Font.SourceSansBold]
     2201 SETTABLEKS                       R10 R9 K210 ["font"]
     2203 LOADN                            R10 18
     2204 SETTABLEKS                       R10 R9 K209 ["textSize"]
     2206 SETTABLEKS                       R9 R8 K349 ["sectionHeader"]
     2208 DUPTABLE                         R9 K351 [{"textColor", "hoverTextColor", "font", "textSize"}]
     2209 GETUPVAL                         R11 3
     2210 GETTABLEKS                       R10 R11 K63 ["Toolbox_NavigationLinkTextColor"]
     2212 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2214 GETUPVAL                         R11 3
     2215 GETTABLEKS                       R10 R11 K64 ["Toolbox_NavigationLinkTextColorHover"]
     2217 SETTABLEKS                       R10 R9 K350 ["hoverTextColor"]
     2219 GETIMPORT                        R10 K216 [Enum.Font.SourceSans]
     2221 SETTABLEKS                       R10 R9 K210 ["font"]
     2223 LOADN                            R10 16
     2224 SETTABLEKS                       R10 R9 K209 ["textSize"]
     2226 SETTABLEKS                       R9 R8 K352 ["sectionHeaderNavLink"]
     2228 DUPTABLE                         R9 K358 [{"backgroundColor", "borderColor", "topBorderColor", "tabBackground", "disabledColor", "contentColor", "selectedColor"}]
     2229 GETUPVAL                         R11 3
     2230 GETTABLEKS                       R10 R11 K149 ["MainBackground"]
     2232 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2234 GETUPVAL                         R11 3
     2235 GETTABLEKS                       R10 R11 K237 ["Border"]
     2237 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     2239 GETUPVAL                         R11 3
     2240 GETTABLEKS                       R10 R11 K79 ["Toolbox_TabTopBorderColor"]
     2242 SETTABLEKS                       R10 R9 K353 ["topBorderColor"]
     2244 GETUPVAL                         R11 3
     2245 GETTABLEKS                       R10 R11 K250 ["Titlebar"]
     2247 SETTABLEKS                       R10 R9 K354 ["tabBackground"]
     2249 GETUPVAL                         R11 3
     2250 GETTABLEKS                       R10 R11 K237 ["Border"]
     2252 SETTABLEKS                       R10 R9 K355 ["disabledColor"]
     2254 GETUPVAL                         R11 3
     2255 GETTABLEKS                       R10 R11 K359 ["TitlebarText"]
     2257 SETTABLEKS                       R10 R9 K356 ["contentColor"]
     2259 GETUPVAL                         R11 3
     2260 GETTABLEKS                       R10 R11 K81 ["Toolbox_TabSelectedColor"]
     2262 SETTABLEKS                       R10 R9 K357 ["selectedColor"]
     2264 SETTABLEKS                       R9 R8 K360 ["tabSet"]
     2266 DUPTABLE                         R9 K365 [{"buttonHeight", "buttonWidth", "verticalTextSpacing", "verticalListPadding"}]
     2267 LOADN                            R10 24
     2268 SETTABLEKS                       R10 R9 K361 ["buttonHeight"]
     2270 LOADN                            R10 40
     2271 SETTABLEKS                       R10 R9 K362 ["buttonWidth"]
     2273 LOADN                            R10 4
     2274 SETTABLEKS                       R10 R9 K363 ["verticalTextSpacing"]
     2276 LOADN                            R10 16
     2277 SETTABLEKS                       R10 R9 K364 ["verticalListPadding"]
     2279 SETTABLEKS                       R9 R8 K366 ["toggle"]
     2281 GETUPVAL                         R10 12
     2282 GETTABLEKS                       R9 R10 K139 ["LinkText"]
     2284 GETUPVAL                         R11 13
     2285 GETTABLEKS                       R10 R11 K1 ["join"]
     2287 GETUPVAL                         R11 14
     2288 LOADK                            R12 K139 ["LinkText"]
     2289 CALL                             R11 1 1
     2290 NEWTABLE                         R12 4 0
     2292 DUPTABLE                         R13 K370 [{"TextSize", "TextColor", "ShowUnderline"}]
     2293 LOADN                            R14 16
     2294 SETTABLEKS                       R14 R13 K367 ["TextSize"]
     2296 GETUPVAL                         R15 3
     2297 GETTABLEKS                       R14 R15 K190 ["SubText"]
     2299 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2301 LOADB                            R14 1
     2302 SETTABLEKS                       R14 R13 K369 ["ShowUnderline"]
     2304 SETTABLEKS                       R13 R12 K371 ["&ToolboxItemRowLink"]
     2306 DUPTABLE                         R13 K372 [{"TextColor", "ShowUnderline"}]
     2307 GETUPVAL                         R15 3
     2308 GETTABLEKS                       R14 R15 K43 ["Toolbox_ItemRowTextColor"]
     2310 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2312 LOADB                            R14 1
     2313 SETTABLEKS                       R14 R13 K369 ["ShowUnderline"]
     2315 SETTABLEKS                       R13 R12 K373 ["&ToolboxItemRowInnerLink"]
     2317 DUPTABLE                         R13 K370 [{"TextSize", "TextColor", "ShowUnderline"}]
     2318 LOADN                            R14 16
     2319 SETTABLEKS                       R14 R13 K367 ["TextSize"]
     2321 GETUPVAL                         R15 3
     2322 GETTABLEKS                       R14 R15 K41 ["Toolbox_ItemRowTitleTextColor"]
     2324 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2326 LOADB                            R14 1
     2327 SETTABLEKS                       R14 R13 K369 ["ShowUnderline"]
     2329 SETTABLEKS                       R13 R12 K374 ["&ToolboxItemRowTitle"]
     2331 CALL                             R10 2 1
     2332 SETTABLE                         R10 R8 R9
     2333 GETUPVAL                         R10 12
     2334 GETTABLEKS                       R9 R10 K375 ["SearchBar"]
     2336 GETUPVAL                         R12 1
     2337 GETTABLEKS                       R11 R12 K0 ["Dictionary"]
     2339 GETTABLEKS                       R10 R11 K1 ["join"]
     2341 GETUPVAL                         R11 14
     2342 LOADK                            R12 K119 ["Blue_Light"]
     2343 CALL                             R11 1 1
     2344 NEWTABLE                         R12 1 0
     2346 DUPTABLE                         R13 K382 [{"Padding", "SearchIcon", "IconColor", "IconWidth", "IconOffset", "Buttons"}]
     2347 DUPTABLE                         R14 K387 [{"Top", "Left", "Bottom", "Right"}]
     2348 LOADN                            R15 255
     2349 SETTABLEKS                       R15 R14 K383 ["Top"]
     2351 LOADN                            R15 0
     2352 SETTABLEKS                       R15 R14 K384 ["Left"]
     2354 LOADN                            R15 0
     2355 SETTABLEKS                       R15 R14 K385 ["Bottom"]
     2357 LOADN                            R15 0
     2358 SETTABLEKS                       R15 R14 K386 ["Right"]
     2360 SETTABLEKS                       R14 R13 K376 ["Padding"]
     2362 LOADK                            R14 K132 ["mock"]
     2363 SETTABLEKS                       R14 R13 K377 ["SearchIcon"]
     2365 GETUPVAL                         R15 3
     2366 GETTABLEKS                       R14 R15 K93 ["Toolbox_SearchIconColor"]
     2368 SETTABLEKS                       R14 R13 K378 ["IconColor"]
     2370 LOADN                            R14 16
     2371 SETTABLEKS                       R14 R13 K379 ["IconWidth"]
     2373 LOADN                            R14 8
     2374 SETTABLEKS                       R14 R13 K380 ["IconOffset"]
     2376 DUPTABLE                         R14 K392 [{"Clear", "Filter", "FilterHighlighted"}]
     2377 GETUPVAL                         R15 15
     2378 LOADK                            R16 K137 ["progressBarColor"]
     2379 LOADK                            R17 K138 ["horizontalLineColor"]
     2380 GETUPVAL                         R19 3
     2381 GETTABLEKS                       R18 R19 K95 ["SecondaryMain"]
     2383 GETIMPORT                        R19 K396 [UDim2.fromOffset]
     2385 LOADN                            R20 11
     2386 LOADN                            R21 11
     2387 CALL                             R19 2 1
     2388 LOADNIL                          R20
     2389 GETUPVAL                         R22 3
     2390 GETTABLEKS                       R21 R22 K397 ["SecondaryContrast"]
     2392 CALL                             R15 6 1
     2393 SETTABLEKS                       R15 R14 K389 ["Clear"]
     2395 GETUPVAL                         R15 15
     2396 LOADK                            R16 K142 ["spacingUnit"]
     2397 LOADNIL                          R17
     2398 GETUPVAL                         R19 3
     2399 GETTABLEKS                       R18 R19 K93 ["Toolbox_SearchIconColor"]
     2401 GETIMPORT                        R19 K396 [UDim2.fromOffset]
     2403 LOADN                            R20 16
     2404 LOADN                            R21 16
     2405 CALL                             R19 2 -1
     2406 CALL                             R15 -1 1
     2407 SETTABLEKS                       R15 R14 K390 ["Filter"]
     2409 GETUPVAL                         R15 15
     2410 LOADK                            R16 K142 ["spacingUnit"]
     2411 LOADNIL                          R17
     2412 GETIMPORT                        R18 K14 [Color3.fromRGB]
     2414 LOADN                            R19 0
     2415 LOADN                            R20 162
     2416 LOADN                            R21 255
     2417 CALL                             R18 3 1
     2418 GETIMPORT                        R19 K396 [UDim2.fromOffset]
     2420 LOADN                            R20 16
     2421 LOADN                            R21 16
     2422 CALL                             R19 2 -1
     2423 CALL                             R15 -1 1
     2424 SETTABLEKS                       R15 R14 K391 ["FilterHighlighted"]
     2426 SETTABLEKS                       R14 R13 K381 ["Buttons"]
     2428 SETTABLEKS                       R13 R12 K399 ["&ToolboxSearchBar"]
     2430 CALL                             R10 2 1
     2431 SETTABLE                         R10 R8 R9
     2432 DUPTABLE                         R9 K401 [{"backgroundColor", "hoverColor"}]
     2433 GETUPVAL                         R11 3
     2434 GETTABLEKS                       R10 R11 K95 ["SecondaryMain"]
     2436 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2438 GETUPVAL                         R11 3
     2439 GETTABLEKS                       R10 R11 K397 ["SecondaryContrast"]
     2441 SETTABLEKS                       R10 R9 K400 ["hoverColor"]
     2443 SETTABLEKS                       R9 R8 K402 ["recentSearchesCloseButton"]
     2445 DUPTABLE                         R9 K403 [{"Top", "Bottom", "Right", "Left"}]
     2446 LOADN                            R10 8
     2447 SETTABLEKS                       R10 R9 K383 ["Top"]
     2449 LOADN                            R10 0
     2450 SETTABLEKS                       R10 R9 K385 ["Bottom"]
     2452 LOADN                            R10 8
     2453 SETTABLEKS                       R10 R9 K386 ["Right"]
     2455 LOADN                            R10 8
     2456 SETTABLEKS                       R10 R9 K384 ["Left"]
     2458 SETTABLEKS                       R9 R8 K404 ["wideIconButtonPadding"]
     2460 GETUPVAL                         R10 12
     2461 GETTABLEKS                       R9 R10 K332 ["Button"]
     2463 GETUPVAL                         R12 1
     2464 GETTABLEKS                       R11 R12 K0 ["Dictionary"]
     2466 GETTABLEKS                       R10 R11 K1 ["join"]
     2468 GETUPVAL                         R11 14
     2469 LOADK                            R12 K76 ["Toolbox_SearchPillBackgroundColor"]
     2470 CALL                             R11 1 1
     2471 NEWTABLE                         R12 1 0
     2473 NEWTABLE                         R13 2 0
     2475 DUPTABLE                         R14 K406 [{"Color"}]
     2476 GETUPVAL                         R16 3
     2477 GETTABLEKS                       R15 R16 K407 ["ForegroundMain"]
     2479 SETTABLEKS                       R15 R14 K405 ["Color"]
     2481 SETTABLEKS                       R14 R13 K408 ["BackgroundStyle"]
     2483 GETUPVAL                         R15 16
     2484 GETTABLEKS                       R14 R15 K409 ["Hover"]
     2486 DUPTABLE                         R15 K410 [{"BackgroundStyle"}]
     2487 DUPTABLE                         R16 K406 [{"Color"}]
     2488 GETUPVAL                         R18 3
     2489 GETTABLEKS                       R17 R18 K411 ["ActionHover"]
     2491 SETTABLEKS                       R17 R16 K405 ["Color"]
     2493 SETTABLEKS                       R16 R15 K408 ["BackgroundStyle"]
     2495 SETTABLE                         R15 R13 R14
     2496 SETTABLEKS                       R13 R12 K412 ["&ToolboxRecentSearchesButton"]
     2498 CALL                             R10 2 1
     2499 SETTABLE                         R10 R8 R9
     2500 GETUPVAL                         R10 12
     2501 GETTABLEKS                       R9 R10 K413 ["TextLabel"]
     2503 GETUPVAL                         R11 13
     2504 GETTABLEKS                       R10 R11 K1 ["join"]
     2506 GETUPVAL                         R11 14
     2507 LOADK                            R12 K157 ["icon"]
     2508 CALL                             R11 1 1
     2509 NEWTABLE                         R12 2 0
     2511 DUPTABLE                         R13 K414 [{"TextColor", "TextSize"}]
     2512 GETUPVAL                         R15 3
     2513 GETTABLEKS                       R14 R15 K190 ["SubText"]
     2515 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2517 LOADN                            R14 16
     2518 SETTABLEKS                       R14 R13 K367 ["TextSize"]
     2520 SETTABLEKS                       R13 R12 K415 ["&ToolboxItemRowText"]
     2522 DUPTABLE                         R13 K414 [{"TextColor", "TextSize"}]
     2523 GETUPVAL                         R15 3
     2524 GETTABLEKS                       R14 R15 K39 ["Toolbox_ItemRowHeaderTextColor"]
     2526 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2528 LOADN                            R14 14
     2529 SETTABLEKS                       R14 R13 K367 ["TextSize"]
     2531 SETTABLEKS                       R13 R12 K416 ["&ToolboxItemRowHeader"]
     2533 CALL                             R10 2 1
     2534 SETTABLE                         R10 R8 R9
     2535 GETUPVAL                         R10 12
     2536 GETTABLEKS                       R9 R10 K417 ["TextLabelWithRobloxLinks"]
     2538 GETUPVAL                         R11 13
     2539 GETTABLEKS                       R10 R11 K1 ["join"]
     2541 GETUPVAL                         R11 14
     2542 LOADK                            R12 K161 ["strokeColor"]
     2543 CALL                             R11 1 1
     2544 NEWTABLE                         R12 1 0
     2546 DUPTABLE                         R13 K418 [{"TextColor"}]
     2547 GETUPVAL                         R15 3
     2548 GETTABLEKS                       R14 R15 K43 ["Toolbox_ItemRowTextColor"]
     2550 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2552 SETTABLEKS                       R13 R12 K419 ["&ToolboxItemRowInnerText"]
     2554 CALL                             R10 2 1
     2555 SETTABLE                         R10 R8 R9
     2556 NAMECALL                         R6 R2 K420 ["extend"]
     2558 CALL                             R6 2 0
     2559 JUMPIFNOT                        R0 ; [+4]
     2560 MOVE                             R8 R0
     2561 NAMECALL                         R6 R2 K420 ["extend"]
     2563 CALL                             R6 2 0
     2564 NEWTABLE                         R8 1 0
     2566 GETUPVAL                         R10 12
     2567 GETTABLEKS                       R9 R10 K421 ["DropdownMenu"]
     2569 GETUPVAL                         R12 1
     2570 GETTABLEKS                       R11 R12 K0 ["Dictionary"]
     2572 GETTABLEKS                       R10 R11 K1 ["join"]
     2574 GETUPVAL                         R11 14
     2575 LOADK                            R12 K165 [{"textColor"}]
     2576 CALL                             R11 1 1
     2577 NEWTABLE                         R12 1 0
     2579 DUPTABLE                         R13 K423 [{"Offset"}]
     2580 GETIMPORT                        R14 K425 [Vector2.new]
     2582 LOADN                            R15 0
     2583 LOADN                            R16 4
     2584 CALL                             R14 2 1
     2585 SETTABLEKS                       R14 R13 K422 ["Offset"]
     2587 SETTABLEKS                       R13 R12 K426 ["&ToolboxSearchBarDropdown"]
     2589 CALL                             R10 2 1
     2590 SETTABLE                         R10 R8 R9
     2591 NAMECALL                         R6 R2 K420 ["extend"]
     2593 CALL                             R6 2 0
     2594 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R6 R0 K4 ["Src"]
       15 GETTABLEKS                       R5 R6 K5 ["Util"]
       17 GETTABLEKS                       R4 R5 K8 ["SharedFlags"]
       19 GETTABLEKS                       R3 R4 K9 ["getFFlagToolboxEnableAssetRows"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K7 [require]
       24 GETTABLEKS                       R7 R0 K4 ["Src"]
       26 GETTABLEKS                       R6 R7 K5 ["Util"]
       28 GETTABLEKS                       R5 R6 K8 ["SharedFlags"]
       30 GETTABLEKS                       R4 R5 K10 ["getFFlagToolboxPillsForCreators"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K7 [require]
       35 GETTABLEKS                       R8 R0 K4 ["Src"]
       37 GETTABLEKS                       R7 R8 K5 ["Util"]
       39 GETTABLEKS                       R6 R7 K8 ["SharedFlags"]
       41 GETTABLEKS                       R5 R6 K11 ["getFFlagToolboxEnableSearchOptionsRefactor"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K7 [require]
       46 GETTABLEKS                       R8 R0 K4 ["Src"]
       48 GETTABLEKS                       R7 R8 K5 ["Util"]
       50 GETTABLEKS                       R6 R7 K12 ["Images"]
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
       80 GETTABLEKS                       R14 R7 K19 ["Style"]
       82 GETTABLEKS                       R13 R14 K20 ["Themes"]
       84 GETTABLEKS                       R12 R13 K21 ["DarkTheme"]
       86 GETTABLEKS                       R14 R7 K19 ["Style"]
       88 GETTABLEKS                       R13 R14 K22 ["getRawComponentStyle"]
       90 GETTABLEKS                       R16 R7 K19 ["Style"]
       92 GETTABLEKS                       R15 R16 K20 ["Themes"]
       94 GETTABLEKS                       R14 R15 K23 ["LightTheme"]
       96 GETTABLEKS                       R17 R7 K19 ["Style"]
       98 GETTABLEKS                       R16 R17 K20 ["Themes"]
      100 GETTABLEKS                       R15 R16 K24 ["StudioTheme"]
      102 GETTABLEKS                       R17 R7 K19 ["Style"]
      104 GETTABLEKS                       R16 R17 K17 ["Colors"]
      106 GETTABLEKS                       R18 R7 K19 ["Style"]
      108 GETTABLEKS                       R17 R18 K25 ["StyleKey"]
      110 GETTABLEKS                       R19 R7 K19 ["Style"]
      112 GETTABLEKS                       R18 R19 K26 ["ComponentSymbols"]
      114 GETTABLEKS                       R20 R7 K5 ["Util"]
      116 GETTABLEKS                       R19 R20 K27 ["StyleModifier"]
      118 GETTABLEKS                       R21 R7 K28 ["UI"]
      120 GETTABLEKS                       R20 R21 K29 ["Image"]
      122 DUPCLOSURE                       R21 K30 [PROTO_0]
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R20
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R8
      127 GETTABLEKS                       R23 R7 K5 ["Util"]
      129 GETTABLEKS                       R22 R23 K27 ["StyleModifier"]
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
