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
      151 GETUPVAL                         R8 6
      152 CALL                             R8 0 1
      153 JUMPIFNOT                        R8 ; [+2]
      154 LOADK                            R7 K32 ["rbxasset://studio_svg_textures/Lua/Toolbox/Dark/Large/Alert.png"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R7
      157 SETTABLE                         R7 R5 R6
      158 GETUPVAL                         R7 3
      159 GETTABLEKS                       R6 R7 K33 ["Toolbox_ItemRowBackgroundColorEven"]
      161 GETIMPORT                        R7 K7 [Color3.fromHex]
      163 LOADK                            R8 K34 ["#222222"]
      164 CALL                             R7 1 1
      165 SETTABLE                         R7 R5 R6
      166 GETUPVAL                         R7 3
      167 GETTABLEKS                       R6 R7 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
      169 GETIMPORT                        R7 K7 [Color3.fromHex]
      171 LOADK                            R8 K36 ["#2C2C2C"]
      172 CALL                             R7 1 1
      173 SETTABLE                         R7 R5 R6
      174 GETUPVAL                         R7 3
      175 GETTABLEKS                       R6 R7 K37 ["Toolbox_ItemRowBorderColor"]
      177 GETIMPORT                        R7 K7 [Color3.fromHex]
      179 LOADK                            R8 K38 ["#024897"]
      180 CALL                             R7 1 1
      181 SETTABLE                         R7 R5 R6
      182 GETUPVAL                         R7 3
      183 GETTABLEKS                       R6 R7 K39 ["Toolbox_ItemRowHeaderTextColor"]
      185 GETIMPORT                        R7 K7 [Color3.fromHex]
      187 LOADK                            R8 K40 ["#989898"]
      188 CALL                             R7 1 1
      189 SETTABLE                         R7 R5 R6
      190 GETUPVAL                         R7 3
      191 GETTABLEKS                       R6 R7 K41 ["Toolbox_ItemRowTitleTextColor"]
      193 GETIMPORT                        R7 K7 [Color3.fromHex]
      195 LOADK                            R8 K42 ["#52ADF4"]
      196 CALL                             R7 1 1
      197 SETTABLE                         R7 R5 R6
      198 GETUPVAL                         R7 3
      199 GETTABLEKS                       R6 R7 K43 ["Toolbox_ItemRowTextColor"]
      201 GETUPVAL                         R8 4
      202 GETTABLEKS                       R7 R8 K44 ["White"]
      204 SETTABLE                         R7 R5 R6
      205 GETUPVAL                         R7 3
      206 GETTABLEKS                       R6 R7 K45 ["Toolbox_AudioPlayerBackgroundColor"]
      208 GETIMPORT                        R7 K7 [Color3.fromHex]
      210 LOADK                            R8 K46 ["#171717"]
      211 CALL                             R7 1 1
      212 SETTABLE                         R7 R5 R6
      213 GETUPVAL                         R7 3
      214 GETTABLEKS                       R6 R7 K47 ["Toolbox_AudioPlayerProgressBarColor"]
      216 GETIMPORT                        R7 K7 [Color3.fromHex]
      218 LOADK                            R8 K48 ["#0077D6"]
      219 CALL                             R7 1 1
      220 SETTABLE                         R7 R5 R6
      221 GETUPVAL                         R7 3
      222 GETTABLEKS                       R6 R7 K49 ["Toolbox_AudioPlayerIndicatorColor"]
      224 GETIMPORT                        R7 K7 [Color3.fromHex]
      226 LOADK                            R8 K50 ["#555555"]
      227 CALL                             R7 1 1
      228 SETTABLE                         R7 R5 R6
      229 GETUPVAL                         R7 3
      230 GETTABLEKS                       R6 R7 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
      232 GETIMPORT                        R7 K7 [Color3.fromHex]
      234 LOADK                            R8 K50 ["#555555"]
      235 CALL                             R7 1 1
      236 SETTABLE                         R7 R5 R6
      237 GETUPVAL                         R7 3
      238 GETTABLEKS                       R6 R7 K52 ["Toolbox_AudioTabSelectedTextColor"]
      240 GETUPVAL                         R8 4
      241 GETTABLEKS                       R7 R8 K44 ["White"]
      243 SETTABLE                         R7 R5 R6
      244 GETUPVAL                         R7 3
      245 GETTABLEKS                       R6 R7 K53 ["Toolbox_DeleteIconColor"]
      247 GETIMPORT                        R7 K14 [Color3.fromRGB]
      249 LOADN                            R8 136
      250 LOADN                            R9 136
      251 LOADN                            R10 136
      252 CALL                             R7 3 1
      253 SETTABLE                         R7 R5 R6
      254 GETUPVAL                         R7 3
      255 GETTABLEKS                       R6 R7 K54 ["Toolbox_DropdownItemSelectedColor"]
      257 GETUPVAL                         R8 4
      258 GETTABLEKS                       R7 R8 K55 ["Blue_Dark"]
      260 SETTABLE                         R7 R5 R6
      261 GETUPVAL                         R7 3
      262 GETTABLEKS                       R6 R7 K56 ["Toolbox_DropdownIconColor"]
      264 GETUPVAL                         R8 4
      265 GETTABLEKS                       R7 R8 K44 ["White"]
      267 SETTABLE                         R7 R5 R6
      268 GETUPVAL                         R7 3
      269 GETTABLEKS                       R6 R7 K57 ["Toolbox_FontTileBackgroundColor"]
      271 GETIMPORT                        R7 K7 [Color3.fromHex]
      273 LOADK                            R8 K58 ["#292929"]
      274 CALL                             R7 1 1
      275 SETTABLE                         R7 R5 R6
      276 GETUPVAL                         R7 3
      277 GETTABLEKS                       R6 R7 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
      279 GETIMPORT                        R7 K7 [Color3.fromHex]
      281 LOADK                            R8 K8 ["#3B3B3B"]
      282 CALL                             R7 1 1
      283 SETTABLE                         R7 R5 R6
      284 GETUPVAL                         R7 3
      285 GETTABLEKS                       R6 R7 K60 ["Toolbox_FontTileTextFillColor"]
      287 GETIMPORT                        R7 K7 [Color3.fromHex]
      289 LOADK                            R8 K61 ["#FFFFFF"]
      290 CALL                             R7 1 1
      291 SETTABLE                         R7 R5 R6
      292 GETUPVAL                         R7 3
      293 GETTABLEKS                       R6 R7 K62 ["Toolbox_HorizontalLineColor"]
      295 GETIMPORT                        R7 K14 [Color3.fromRGB]
      297 LOADN                            R8 34
      298 LOADN                            R9 34
      299 LOADN                            R10 34
      300 CALL                             R7 3 1
      301 SETTABLE                         R7 R5 R6
      302 GETUPVAL                         R7 3
      303 GETTABLEKS                       R6 R7 K63 ["Toolbox_NavigationLinkTextColor"]
      305 GETUPVAL                         R8 4
      306 GETTABLEKS                       R7 R8 K44 ["White"]
      308 SETTABLE                         R7 R5 R6
      309 GETUPVAL                         R7 3
      310 GETTABLEKS                       R6 R7 K64 ["Toolbox_NavigationLinkTextColorHover"]
      312 GETIMPORT                        R7 K7 [Color3.fromHex]
      314 LOADK                            R8 K65 ["#AAAAAA"]
      315 CALL                             R7 1 1
      316 SETTABLE                         R7 R5 R6
      317 GETUPVAL                         R7 3
      318 GETTABLEKS                       R6 R7 K66 ["Toolbox_PackageBackgroundColor"]
      320 GETUPVAL                         R8 4
      321 GETTABLEKS                       R7 R8 K67 ["Black"]
      323 SETTABLE                         R7 R5 R6
      324 GETUPVAL                         R7 3
      325 GETTABLEKS                       R6 R7 K68 ["Toolbox_PackageBackgroundTransparency"]
      327 LOADK                            R7 K69 [0.5]
      328 SETTABLE                         R7 R5 R6
      329 GETUPVAL                         R7 3
      330 GETTABLEKS                       R6 R7 K70 ["Toolbox_PackageImage"]
      332 GETUPVAL                         R8 7
      333 GETTABLEKS                       R7 R8 K71 ["PACKAGE_DARK"]
      335 SETTABLE                         R7 R5 R6
      336 GETUPVAL                         R7 3
      337 GETTABLEKS                       R6 R7 K72 ["ScrollingFrameBackgroundColor"]
      339 GETIMPORT                        R7 K14 [Color3.fromRGB]
      341 LOADN                            R8 41
      342 LOADN                            R9 41
      343 LOADN                            R10 41
      344 CALL                             R7 3 1
      345 SETTABLE                         R7 R5 R6
      346 GETUPVAL                         R7 3
      347 GETTABLEKS                       R6 R7 K73 ["ScrollingFrameImageColor"]
      349 GETIMPORT                        R7 K14 [Color3.fromRGB]
      351 LOADN                            R8 85
      352 LOADN                            R9 85
      353 LOADN                            R10 85
      354 CALL                             R7 3 1
      355 SETTABLE                         R7 R5 R6
      356 GETUPVAL                         R7 3
      357 GETTABLEKS                       R6 R7 K74 ["Toolbox_SearchTagBackgroundColor"]
      359 GETIMPORT                        R7 K14 [Color3.fromRGB]
      361 LOADN                            R8 56
      362 LOADN                            R9 56
      363 LOADN                            R10 56
      364 CALL                             R7 3 1
      365 SETTABLE                         R7 R5 R6
      366 GETUPVAL                         R7 3
      367 GETTABLEKS                       R6 R7 K75 ["Toolbox_SearchPillTextColor"]
      369 GETIMPORT                        R7 K7 [Color3.fromHex]
      371 LOADK                            R8 K25 ["#FAFAFA"]
      372 CALL                             R7 1 1
      373 SETTABLE                         R7 R5 R6
      374 GETUPVAL                         R7 3
      375 GETTABLEKS                       R6 R7 K76 ["Toolbox_SearchPillBackgroundColor"]
      377 GETIMPORT                        R7 K7 [Color3.fromHex]
      379 LOADK                            R8 K8 ["#3B3B3B"]
      380 CALL                             R7 1 1
      381 SETTABLE                         R7 R5 R6
      382 GETUPVAL                         R7 3
      383 GETTABLEKS                       R6 R7 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
      385 GETIMPORT                        R7 K7 [Color3.fromHex]
      387 LOADK                            R8 K78 ["#565656"]
      388 CALL                             R7 1 1
      389 SETTABLE                         R7 R5 R6
      390 GETUPVAL                         R7 3
      391 GETTABLEKS                       R6 R7 K79 ["Toolbox_TabTopBorderColor"]
      393 GETUPVAL                         R8 4
      394 GETTABLEKS                       R7 R8 K80 ["Blue"]
      396 SETTABLE                         R7 R5 R6
      397 GETUPVAL                         R7 3
      398 GETTABLEKS                       R6 R7 K81 ["Toolbox_TabSelectedColor"]
      400 GETUPVAL                         R8 4
      401 GETTABLEKS                       R7 R8 K44 ["White"]
      403 SETTABLE                         R7 R5 R6
      404 GETUPVAL                         R7 3
      405 GETTABLEKS                       R6 R7 K82 ["Toolbox_IconTileGradientColor"]
      407 GETUPVAL                         R8 4
      408 GETTABLEKS                       R7 R8 K67 ["Black"]
      410 SETTABLE                         R7 R5 R6
      411 GETUPVAL                         R7 3
      412 GETTABLEKS                       R6 R7 K83 ["Toolbox_HomeviewBackgroundColor"]
      414 GETUPVAL                         R8 4
      415 GETTABLEKS                       R7 R8 K3 ["Slate"]
      417 SETTABLE                         R7 R5 R6
      418 GETUPVAL                         R7 3
      419 GETTABLEKS                       R6 R7 K84 ["Toolbox_SearchOptionButtonHover"]
      421 GETUPVAL                         R8 4
      422 GETTABLEKS                       R7 R8 K44 ["White"]
      424 SETTABLE                         R7 R5 R6
      425 GETUPVAL                         R7 3
      426 GETTABLEKS                       R6 R7 K85 ["Toolbox_RateTextColor"]
      428 GETIMPORT                        R7 K7 [Color3.fromHex]
      430 LOADK                            R8 K86 ["#BDBEBE"]
      431 CALL                             R7 1 1
      432 SETTABLE                         R7 R5 R6
      433 GETUPVAL                         R7 3
      434 GETTABLEKS                       R6 R7 K87 ["Toolbox_VoteCountColor"]
      436 GETIMPORT                        R7 K7 [Color3.fromHex]
      438 LOADK                            R8 K65 ["#AAAAAA"]
      439 CALL                             R7 1 1
      440 SETTABLE                         R7 R5 R6
      441 GETUPVAL                         R7 3
      442 GETTABLEKS                       R6 R7 K88 ["Toolbox_LowConfidencePercentageColor"]
      444 GETIMPORT                        R7 K7 [Color3.fromHex]
      446 LOADK                            R8 K89 ["#CCCCCC"]
      447 CALL                             R7 1 1
      448 SETTABLE                         R7 R5 R6
      449 GETUPVAL                         R7 3
      450 GETTABLEKS                       R6 R7 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
      452 GETIMPORT                        R7 K7 [Color3.fromHex]
      454 LOADK                            R8 K61 ["#FFFFFF"]
      455 CALL                             R7 1 1
      456 SETTABLE                         R7 R5 R6
      457 GETUPVAL                         R7 3
      458 GETTABLEKS                       R6 R7 K91 ["Toolbox_VotingButtonImage"]
      460 GETUPVAL                         R8 7
      461 GETTABLEKS                       R7 R8 K92 ["THUMB_UP_WHITE"]
      463 SETTABLE                         R7 R5 R6
      464 GETUPVAL                         R7 3
      465 GETTABLEKS                       R6 R7 K93 ["Toolbox_SearchIconColor"]
      467 GETIMPORT                        R7 K14 [Color3.fromRGB]
      469 LOADN                            R8 225
      470 LOADN                            R9 225
      471 LOADN                            R10 225
      472 CALL                             R7 3 1
      473 SETTABLE                         R7 R5 R6
      474 GETUPVAL                         R7 3
      475 GETTABLEKS                       R6 R7 K94 ["Toolbox_ClearButtonColor"]
      477 GETUPVAL                         R9 3
      478 GETTABLEKS                       R8 R9 K95 ["SecondaryMain"]
      480 GETTABLEKS                       R7 R8 K96 ["Dark"]
      482 SETTABLE                         R7 R5 R6
      483 GETUPVAL                         R7 3
      484 GETTABLEKS                       R6 R7 K97 ["AssetConfig_DividerHorizontalLineColor"]
      486 GETUPVAL                         R8 4
      487 GETTABLEKS                       R7 R8 K98 ["Carbon"]
      489 SETTABLE                         R7 R5 R6
      490 GETUPVAL                         R7 3
      491 GETTABLEKS                       R6 R7 K99 ["AssetConfig_PreviewSelectedColor"]
      493 GETUPVAL                         R8 4
      494 GETTABLEKS                       R7 R8 K44 ["White"]
      496 SETTABLE                         R7 R5 R6
      497 GETUPVAL                         R7 3
      498 GETTABLEKS                       R6 R7 K100 ["AssetConfig_SidetabSelectedBarColor"]
      500 GETIMPORT                        R7 K14 [Color3.fromRGB]
      502 LOADN                            R8 11
      503 LOADN                            R9 90
      504 LOADN                            R10 175
      505 CALL                             R7 3 1
      506 SETTABLE                         R7 R5 R6
      507 GETUPVAL                         R7 3
      508 GETTABLEKS                       R6 R7 K101 ["AssetConfig_SidetabSelectedBarTransparency"]
      510 LOADN                            R7 0
      511 SETTABLE                         R7 R5 R6
      512 GETUPVAL                         R7 3
      513 GETTABLEKS                       R6 R7 K102 ["AssetConfig_SidetabSelectedBarZIndex"]
      515 LOADN                            R7 255
      516 SETTABLE                         R7 R5 R6
      517 GETUPVAL                         R7 3
      518 GETTABLEKS                       R6 R7 K103 ["AssetConfig_SidetabSelectedIndicatorZindex"]
      520 LOADN                            R7 1
      521 SETTABLE                         R7 R5 R6
      522 GETUPVAL                         R7 3
      523 GETTABLEKS                       R6 R7 K104 ["AssetConfig_UploadResultButtonColor"]
      525 GETIMPORT                        R7 K14 [Color3.fromRGB]
      527 LOADN                            R8 136
      528 LOADN                            R9 136
      529 LOADN                            R10 136
      530 CALL                             R7 3 1
      531 SETTABLE                         R7 R5 R6
      532 GETUPVAL                         R7 3
      533 GETTABLEKS                       R6 R7 K105 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
      535 GETIMPORT                        R7 K14 [Color3.fromRGB]
      537 LOADN                            R8 102
      538 LOADN                            R9 102
      539 LOADN                            R10 102
      540 CALL                             R7 3 1
      541 SETTABLE                         R7 R5 R6
      542 GETUPVAL                         R7 3
      543 GETTABLEKS                       R6 R7 K106 ["AssetConfig_DistributionQuotaTextColor"]
      545 GETUPVAL                         R8 4
      546 GETTABLEKS                       R7 R8 K44 ["White"]
      548 SETTABLE                         R7 R5 R6
      549 CALL                             R3 2 1
      550 GETUPVAL                         R6 1
      551 GETTABLEKS                       R5 R6 K0 ["Dictionary"]
      553 GETTABLEKS                       R4 R5 K1 ["join"]
      555 GETUPVAL                         R5 8
      556 NEWTABLE                         R6 128 0
      558 GETUPVAL                         R8 3
      559 GETTABLEKS                       R7 R8 K2 ["Toolbox_PublishAssetBackground"]
      561 GETUPVAL                         R9 4
      562 GETTABLEKS                       R8 R9 K3 ["Slate"]
      564 SETTABLE                         R8 R6 R7
      565 GETUPVAL                         R8 3
      566 GETTABLEKS                       R7 R8 K4 ["Toolbox_AssetOutlineBackground"]
      568 GETUPVAL                         R9 4
      569 GETTABLEKS                       R8 R9 K44 ["White"]
      571 SETTABLE                         R8 R6 R7
      572 GETUPVAL                         R8 3
      573 GETTABLEKS                       R7 R8 K9 ["Toolbox_AssetOutlineBoarderColor"]
      575 GETIMPORT                        R8 K7 [Color3.fromHex]
      577 LOADK                            R9 K40 ["#989898"]
      578 CALL                             R8 1 1
      579 SETTABLE                         R8 R6 R7
      580 GETUPVAL                         R8 3
      581 GETTABLEKS                       R7 R8 K11 ["Toolbox_AssetOutlineTransparency"]
      583 LOADK                            R8 K107 [0.08]
      584 SETTABLE                         R8 R6 R7
      585 GETUPVAL                         R8 3
      586 GETTABLEKS                       R7 R8 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
      588 GETIMPORT                        R8 K14 [Color3.fromRGB]
      590 LOADN                            R9 229
      591 LOADN                            R10 243
      592 LOADN                            R11 255
      593 CALL                             R8 3 1
      594 SETTABLE                         R8 R6 R7
      595 GETUPVAL                         R8 3
      596 GETTABLEKS                       R7 R8 K15 ["Toolbox_AssetDropdownSize"]
      598 LOADN                            R8 0
      599 SETTABLE                         R8 R6 R7
      600 GETUPVAL                         R8 3
      601 GETTABLEKS                       R7 R8 K16 ["Toolbox_AssetBorderSize"]
      603 LOADN                            R8 0
      604 SETTABLE                         R8 R6 R7
      605 GETUPVAL                         R8 3
      606 GETTABLEKS                       R7 R8 K17 ["Toolbox_AssetBackgroundColor"]
      608 GETIMPORT                        R8 K14 [Color3.fromRGB]
      610 LOADN                            R9 225
      611 LOADN                            R10 225
      612 LOADN                            R11 225
      613 CALL                             R8 3 1
      614 SETTABLE                         R8 R6 R7
      615 GETUPVAL                         R8 3
      616 GETTABLEKS                       R7 R8 K18 ["Toolbox_AssetBackgroundImage"]
      618 GETUPVAL                         R9 7
      619 GETTABLEKS                       R8 R9 K108 ["NO_BACKGROUND_ICON"]
      621 SETTABLE                         R8 R6 R7
      622 GETUPVAL                         R8 3
      623 GETTABLEKS                       R7 R8 K20 ["Toolbox_AssetNameColor"]
      625 GETIMPORT                        R8 K7 [Color3.fromHex]
      627 LOADK                            R9 K109 ["#0B5AAF"]
      628 CALL                             R8 1 1
      629 SETTABLE                         R8 R6 R7
      630 GETUPVAL                         R8 3
      631 GETTABLEKS                       R7 R8 K21 ["Toolbox_AssetIconColor"]
      633 GETIMPORT                        R8 K14 [Color3.fromRGB]
      635 LOADN                            R9 170
      636 LOADN                            R10 170
      637 LOADN                            R11 170
      638 CALL                             R8 3 1
      639 SETTABLE                         R8 R6 R7
      640 GETUPVAL                         R8 3
      641 GETTABLEKS                       R7 R8 K22 ["Toolbox_AssetWarningIcon"]
      643 GETIMPORT                        R8 K7 [Color3.fromHex]
      645 LOADK                            R9 K110 ["#BC6600"]
      646 CALL                             R8 1 1
      647 SETTABLE                         R8 R6 R7
      648 GETUPVAL                         R8 3
      649 GETTABLEKS                       R7 R8 K45 ["Toolbox_AudioPlayerBackgroundColor"]
      651 GETIMPORT                        R8 K7 [Color3.fromHex]
      653 LOADK                            R9 K111 ["#E1E1E1"]
      654 CALL                             R8 1 1
      655 SETTABLE                         R8 R6 R7
      656 GETUPVAL                         R8 3
      657 GETTABLEKS                       R7 R8 K47 ["Toolbox_AudioPlayerProgressBarColor"]
      659 GETIMPORT                        R8 K7 [Color3.fromHex]
      661 LOADK                            R9 K48 ["#0077D6"]
      662 CALL                             R8 1 1
      663 SETTABLE                         R8 R6 R7
      664 GETUPVAL                         R8 3
      665 GETTABLEKS                       R7 R8 K49 ["Toolbox_AudioPlayerIndicatorColor"]
      667 GETIMPORT                        R8 K7 [Color3.fromHex]
      669 LOADK                            R9 K112 ["#CBCBCB"]
      670 CALL                             R8 1 1
      671 SETTABLE                         R8 R6 R7
      672 GETUPVAL                         R8 3
      673 GETTABLEKS                       R7 R8 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
      675 GETIMPORT                        R8 K7 [Color3.fromHex]
      677 LOADK                            R9 K34 ["#222222"]
      678 CALL                             R8 1 1
      679 SETTABLE                         R8 R6 R7
      680 GETUPVAL                         R8 3
      681 GETTABLEKS                       R7 R8 K29 ["Toolbox_DialogErrorIcon"]
      683 LOADK                            R8 K113 ["rbxasset://studio_svg_textures/Lua/Toolbox/Light/Large/DialogError.png"]
      684 SETTABLE                         R8 R6 R7
      685 GETUPVAL                         R8 3
      686 GETTABLEKS                       R7 R8 K31 ["Toolbox_AlertIcon"]
      688 GETUPVAL                         R9 6
      689 CALL                             R9 0 1
      690 JUMPIFNOT                        R9 ; [+2]
      691 LOADK                            R8 K114 ["rbxasset://studio_svg_textures/Lua/Toolbox/Light/Large/Alert.png"]
      692 JUMP                             ; [+1]
      693 LOADNIL                          R8
      694 SETTABLE                         R8 R6 R7
      695 GETUPVAL                         R8 3
      696 GETTABLEKS                       R7 R8 K24 ["Toolbox_CreatorLabelTextColor"]
      698 GETUPVAL                         R9 5
      699 CALL                             R9 0 1
      700 JUMPIFNOT                        R9 ; [+5]
      701 GETIMPORT                        R8 K7 [Color3.fromHex]
      703 LOADK                            R9 K115 ["#191919"]
      704 CALL                             R8 1 1
      705 JUMP                             ; [+1]
      706 LOADNIL                          R8
      707 SETTABLE                         R8 R6 R7
      708 GETUPVAL                         R8 3
      709 GETTABLEKS                       R7 R8 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
      711 GETUPVAL                         R9 5
      712 CALL                             R9 0 1
      713 JUMPIFNOT                        R9 ; [+5]
      714 GETIMPORT                        R8 K7 [Color3.fromHex]
      716 LOADK                            R9 K112 ["#CBCBCB"]
      717 CALL                             R8 1 1
      718 JUMP                             ; [+1]
      719 LOADNIL                          R8
      720 SETTABLE                         R8 R6 R7
      721 GETUPVAL                         R8 3
      722 GETTABLEKS                       R7 R8 K28 ["Toolbox_CreatorPillBackgroundColor"]
      724 GETUPVAL                         R9 5
      725 CALL                             R9 0 1
      726 JUMPIFNOT                        R9 ; [+5]
      727 GETIMPORT                        R8 K7 [Color3.fromHex]
      729 LOADK                            R9 K111 ["#E1E1E1"]
      730 CALL                             R8 1 1
      731 JUMP                             ; [+1]
      732 LOADNIL                          R8
      733 SETTABLE                         R8 R6 R7
      734 GETUPVAL                         R8 3
      735 GETTABLEKS                       R7 R8 K33 ["Toolbox_ItemRowBackgroundColorEven"]
      737 GETIMPORT                        R8 K7 [Color3.fromHex]
      739 LOADK                            R9 K116 ["#EDEDED"]
      740 CALL                             R8 1 1
      741 SETTABLE                         R8 R6 R7
      742 GETUPVAL                         R8 3
      743 GETTABLEKS                       R7 R8 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
      745 GETIMPORT                        R8 K7 [Color3.fromHex]
      747 LOADK                            R9 K25 ["#FAFAFA"]
      748 CALL                             R8 1 1
      749 SETTABLE                         R8 R6 R7
      750 GETUPVAL                         R8 3
      751 GETTABLEKS                       R7 R8 K37 ["Toolbox_ItemRowBorderColor"]
      753 GETIMPORT                        R8 K7 [Color3.fromHex]
      755 LOADK                            R9 K117 ["#3DB3FF"]
      756 CALL                             R8 1 1
      757 SETTABLE                         R8 R6 R7
      758 GETUPVAL                         R8 3
      759 GETTABLEKS                       R7 R8 K39 ["Toolbox_ItemRowHeaderTextColor"]
      761 GETIMPORT                        R8 K7 [Color3.fromHex]
      763 LOADK                            R9 K8 ["#3B3B3B"]
      764 CALL                             R8 1 1
      765 SETTABLE                         R8 R6 R7
      766 GETUPVAL                         R8 3
      767 GETTABLEKS                       R7 R8 K41 ["Toolbox_ItemRowTitleTextColor"]
      769 GETIMPORT                        R8 K7 [Color3.fromHex]
      771 LOADK                            R9 K118 ["#0055AC"]
      772 CALL                             R8 1 1
      773 SETTABLE                         R8 R6 R7
      774 GETUPVAL                         R8 3
      775 GETTABLEKS                       R7 R8 K43 ["Toolbox_ItemRowTextColor"]
      777 GETIMPORT                        R8 K7 [Color3.fromHex]
      779 LOADK                            R9 K46 ["#171717"]
      780 CALL                             R8 1 1
      781 SETTABLE                         R8 R6 R7
      782 GETUPVAL                         R8 3
      783 GETTABLEKS                       R7 R8 K52 ["Toolbox_AudioTabSelectedTextColor"]
      785 GETIMPORT                        R8 K7 [Color3.fromHex]
      787 LOADK                            R9 K25 ["#FAFAFA"]
      788 CALL                             R8 1 1
      789 SETTABLE                         R8 R6 R7
      790 GETUPVAL                         R8 3
      791 GETTABLEKS                       R7 R8 K53 ["Toolbox_DeleteIconColor"]
      793 GETIMPORT                        R8 K14 [Color3.fromRGB]
      795 LOADN                            R9 184
      796 LOADN                            R10 184
      797 LOADN                            R11 184
      798 CALL                             R8 3 1
      799 SETTABLE                         R8 R6 R7
      800 GETUPVAL                         R8 3
      801 GETTABLEKS                       R7 R8 K54 ["Toolbox_DropdownItemSelectedColor"]
      803 GETUPVAL                         R9 4
      804 GETTABLEKS                       R8 R9 K119 ["Blue_Light"]
      806 SETTABLE                         R8 R6 R7
      807 GETUPVAL                         R8 3
      808 GETTABLEKS                       R7 R8 K56 ["Toolbox_DropdownIconColor"]
      810 GETIMPORT                        R8 K14 [Color3.fromRGB]
      812 LOADN                            R9 25
      813 LOADN                            R10 25
      814 LOADN                            R11 25
      815 CALL                             R8 3 1
      816 SETTABLE                         R8 R6 R7
      817 GETUPVAL                         R8 3
      818 GETTABLEKS                       R7 R8 K57 ["Toolbox_FontTileBackgroundColor"]
      820 GETIMPORT                        R8 K7 [Color3.fromHex]
      822 LOADK                            R9 K61 ["#FFFFFF"]
      823 CALL                             R8 1 1
      824 SETTABLE                         R8 R6 R7
      825 GETUPVAL                         R8 3
      826 GETTABLEKS                       R7 R8 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
      828 GETIMPORT                        R8 K7 [Color3.fromHex]
      830 LOADK                            R9 K120 ["#E3F0FB"]
      831 CALL                             R8 1 1
      832 SETTABLE                         R8 R6 R7
      833 GETUPVAL                         R8 3
      834 GETTABLEKS                       R7 R8 K60 ["Toolbox_FontTileTextFillColor"]
      836 GETIMPORT                        R8 K7 [Color3.fromHex]
      838 LOADK                            R9 K121 ["#393B3D"]
      839 CALL                             R8 1 1
      840 SETTABLE                         R8 R6 R7
      841 GETUPVAL                         R8 3
      842 GETTABLEKS                       R7 R8 K62 ["Toolbox_HorizontalLineColor"]
      844 GETIMPORT                        R8 K14 [Color3.fromRGB]
      846 LOADN                            R9 227
      847 LOADN                            R10 227
      848 LOADN                            R11 227
      849 CALL                             R8 3 1
      850 SETTABLE                         R8 R6 R7
      851 GETUPVAL                         R8 3
      852 GETTABLEKS                       R7 R8 K63 ["Toolbox_NavigationLinkTextColor"]
      854 GETIMPORT                        R8 K7 [Color3.fromHex]
      856 LOADK                            R9 K10 ["#121212"]
      857 CALL                             R8 1 1
      858 SETTABLE                         R8 R6 R7
      859 GETUPVAL                         R8 3
      860 GETTABLEKS                       R7 R8 K64 ["Toolbox_NavigationLinkTextColorHover"]
      862 GETIMPORT                        R8 K7 [Color3.fromHex]
      864 LOADK                            R9 K122 ["#666666"]
      865 CALL                             R8 1 1
      866 SETTABLE                         R8 R6 R7
      867 GETUPVAL                         R8 3
      868 GETTABLEKS                       R7 R8 K66 ["Toolbox_PackageBackgroundColor"]
      870 GETUPVAL                         R9 4
      871 GETTABLEKS                       R8 R9 K44 ["White"]
      873 SETTABLE                         R8 R6 R7
      874 GETUPVAL                         R8 3
      875 GETTABLEKS                       R7 R8 K68 ["Toolbox_PackageBackgroundTransparency"]
      877 LOADK                            R8 K123 [0.25]
      878 SETTABLE                         R8 R6 R7
      879 GETUPVAL                         R8 3
      880 GETTABLEKS                       R7 R8 K70 ["Toolbox_PackageImage"]
      882 GETUPVAL                         R9 7
      883 GETTABLEKS                       R8 R9 K124 ["PACKAGE_LIGHT"]
      885 SETTABLE                         R8 R6 R7
      886 GETUPVAL                         R8 3
      887 GETTABLEKS                       R7 R8 K72 ["ScrollingFrameBackgroundColor"]
      889 GETIMPORT                        R8 K14 [Color3.fromRGB]
      891 LOADN                            R9 245
      892 LOADN                            R10 245
      893 LOADN                            R11 245
      894 CALL                             R8 3 1
      895 SETTABLE                         R8 R6 R7
      896 GETUPVAL                         R8 3
      897 GETTABLEKS                       R7 R8 K73 ["ScrollingFrameImageColor"]
      899 GETIMPORT                        R8 K14 [Color3.fromRGB]
      901 LOADN                            R9 245
      902 LOADN                            R10 245
      903 LOADN                            R11 245
      904 CALL                             R8 3 1
      905 SETTABLE                         R8 R6 R7
      906 GETUPVAL                         R8 3
      907 GETTABLEKS                       R7 R8 K74 ["Toolbox_SearchTagBackgroundColor"]
      909 GETUPVAL                         R9 4
      910 GETTABLEKS                       R8 R9 K125 ["Gray_Lighter"]
      912 SETTABLE                         R8 R6 R7
      913 GETUPVAL                         R8 3
      914 GETTABLEKS                       R7 R8 K75 ["Toolbox_SearchPillTextColor"]
      916 GETIMPORT                        R8 K7 [Color3.fromHex]
      918 LOADK                            R9 K115 ["#191919"]
      919 CALL                             R8 1 1
      920 SETTABLE                         R8 R6 R7
      921 GETUPVAL                         R8 3
      922 GETTABLEKS                       R7 R8 K76 ["Toolbox_SearchPillBackgroundColor"]
      924 GETIMPORT                        R8 K7 [Color3.fromHex]
      926 LOADK                            R9 K111 ["#E1E1E1"]
      927 CALL                             R8 1 1
      928 SETTABLE                         R8 R6 R7
      929 GETUPVAL                         R8 3
      930 GETTABLEKS                       R7 R8 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
      932 GETIMPORT                        R8 K7 [Color3.fromHex]
      934 LOADK                            R9 K112 ["#CBCBCB"]
      935 CALL                             R8 1 1
      936 SETTABLE                         R8 R6 R7
      937 GETUPVAL                         R8 3
      938 GETTABLEKS                       R7 R8 K79 ["Toolbox_TabTopBorderColor"]
      940 GETIMPORT                        R8 K14 [Color3.fromRGB]
      942 LOADN                            R9 182
      943 LOADN                            R10 182
      944 LOADN                            R11 182
      945 CALL                             R8 3 1
      946 SETTABLE                         R8 R6 R7
      947 GETUPVAL                         R8 3
      948 GETTABLEKS                       R7 R8 K81 ["Toolbox_TabSelectedColor"]
      950 GETUPVAL                         R9 4
      951 GETTABLEKS                       R8 R9 K80 ["Blue"]
      953 SETTABLE                         R8 R6 R7
      954 GETUPVAL                         R8 3
      955 GETTABLEKS                       R7 R8 K82 ["Toolbox_IconTileGradientColor"]
      957 GETUPVAL                         R9 4
      958 GETTABLEKS                       R8 R9 K126 ["Gray_Light"]
      960 SETTABLE                         R8 R6 R7
      961 GETUPVAL                         R8 3
      962 GETTABLEKS                       R7 R8 K83 ["Toolbox_HomeviewBackgroundColor"]
      964 GETUPVAL                         R9 4
      965 GETTABLEKS                       R8 R9 K44 ["White"]
      967 SETTABLE                         R8 R6 R7
      968 GETUPVAL                         R8 3
      969 GETTABLEKS                       R7 R8 K84 ["Toolbox_SearchOptionButtonHover"]
      971 GETUPVAL                         R9 4
      972 GETTABLEKS                       R8 R9 K67 ["Black"]
      974 SETTABLE                         R8 R6 R7
      975 GETUPVAL                         R8 3
      976 GETTABLEKS                       R7 R8 K85 ["Toolbox_RateTextColor"]
      978 GETIMPORT                        R8 K7 [Color3.fromHex]
      980 LOADK                            R9 K8 ["#3B3B3B"]
      981 CALL                             R8 1 1
      982 SETTABLE                         R8 R6 R7
      983 GETUPVAL                         R8 3
      984 GETTABLEKS                       R7 R8 K87 ["Toolbox_VoteCountColor"]
      986 GETIMPORT                        R8 K7 [Color3.fromHex]
      988 LOADK                            R9 K122 ["#666666"]
      989 CALL                             R8 1 1
      990 SETTABLE                         R8 R6 R7
      991 GETUPVAL                         R8 3
      992 GETTABLEKS                       R7 R8 K88 ["Toolbox_LowConfidencePercentageColor"]
      994 GETIMPORT                        R8 K7 [Color3.fromHex]
      996 LOADK                            R9 K122 ["#666666"]
      997 CALL                             R8 1 1
      998 SETTABLE                         R8 R6 R7
      999 GETUPVAL                         R8 3
     1000 GETTABLEKS                       R7 R8 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
     1002 GETIMPORT                        R8 K7 [Color3.fromHex]
     1004 LOADK                            R9 K127 ["#000000"]
     1005 CALL                             R8 1 1
     1006 SETTABLE                         R8 R6 R7
     1007 GETUPVAL                         R8 3
     1008 GETTABLEKS                       R7 R8 K91 ["Toolbox_VotingButtonImage"]
     1010 GETUPVAL                         R9 7
     1011 GETTABLEKS                       R8 R9 K128 ["THUMB_UP_DARK_GRAY"]
     1013 SETTABLE                         R8 R6 R7
     1014 GETUPVAL                         R8 3
     1015 GETTABLEKS                       R7 R8 K93 ["Toolbox_SearchIconColor"]
     1017 GETIMPORT                        R8 K14 [Color3.fromRGB]
     1019 LOADN                            R9 94
     1020 LOADN                            R10 94
     1021 LOADN                            R11 94
     1022 CALL                             R8 3 1
     1023 SETTABLE                         R8 R6 R7
     1024 GETUPVAL                         R8 3
     1025 GETTABLEKS                       R7 R8 K94 ["Toolbox_ClearButtonColor"]
     1027 GETUPVAL                         R10 3
     1028 GETTABLEKS                       R9 R10 K95 ["SecondaryMain"]
     1030 GETTABLEKS                       R8 R9 K129 ["Light"]
     1032 SETTABLE                         R8 R6 R7
     1033 GETUPVAL                         R8 3
     1034 GETTABLEKS                       R7 R8 K97 ["AssetConfig_DividerHorizontalLineColor"]
     1036 GETIMPORT                        R8 K14 [Color3.fromRGB]
     1038 LOADN                            R9 227
     1039 LOADN                            R10 227
     1040 LOADN                            R11 227
     1041 CALL                             R8 3 1
     1042 SETTABLE                         R8 R6 R7
     1043 GETUPVAL                         R8 3
     1044 GETTABLEKS                       R7 R8 K99 ["AssetConfig_PreviewSelectedColor"]
     1046 GETUPVAL                         R9 4
     1047 GETTABLEKS                       R8 R9 K80 ["Blue"]
     1049 SETTABLE                         R8 R6 R7
     1050 GETUPVAL                         R8 3
     1051 GETTABLEKS                       R7 R8 K100 ["AssetConfig_SidetabSelectedBarColor"]
     1053 GETUPVAL                         R9 9
     1054 GETTABLEKS                       R8 R9 K130 ["GRAY_1"]
     1056 SETTABLE                         R8 R6 R7
     1057 GETUPVAL                         R8 3
     1058 GETTABLEKS                       R7 R8 K101 ["AssetConfig_SidetabSelectedBarTransparency"]
     1060 LOADK                            R8 K131 [0.9]
     1061 SETTABLE                         R8 R6 R7
     1062 GETUPVAL                         R8 3
     1063 GETTABLEKS                       R7 R8 K102 ["AssetConfig_SidetabSelectedBarZIndex"]
     1065 LOADN                            R8 0
     1066 SETTABLE                         R8 R6 R7
     1067 GETUPVAL                         R8 3
     1068 GETTABLEKS                       R7 R8 K103 ["AssetConfig_SidetabSelectedIndicatorZindex"]
     1070 LOADN                            R8 0
     1071 SETTABLE                         R8 R6 R7
     1072 GETUPVAL                         R8 3
     1073 GETTABLEKS                       R7 R8 K104 ["AssetConfig_UploadResultButtonColor"]
     1075 GETUPVAL                         R9 4
     1076 GETTABLEKS                       R8 R9 K67 ["Black"]
     1078 SETTABLE                         R8 R6 R7
     1079 GETUPVAL                         R8 3
     1080 GETTABLEKS                       R7 R8 K105 ["AssetConfig_SubjectThumbnailDefaultImageColor"]
     1082 GETIMPORT                        R8 K14 [Color3.fromRGB]
     1084 LOADN                            R9 151
     1085 LOADN                            R10 151
     1086 LOADN                            R11 151
     1087 CALL                             R8 3 1
     1088 SETTABLE                         R8 R6 R7
     1089 GETUPVAL                         R8 3
     1090 GETTABLEKS                       R7 R8 K106 ["AssetConfig_DistributionQuotaTextColor"]
     1092 GETUPVAL                         R9 4
     1093 GETTABLEKS                       R8 R9 K67 ["Black"]
     1095 SETTABLE                         R8 R6 R7
     1096 CALL                             R4 2 1
     1097 GETUPVAL                         R5 10
     1098 CALL                             R5 0 1
     1099 JUMPIFNOT                        R5 ; [+8]
     1100 GETUPVAL                         R6 0
     1101 GETTABLEKS                       R5 R6 K132 ["mock"]
     1103 MOVE                             R6 R3
     1104 MOVE                             R7 R4
     1105 CALL                             R5 2 1
     1106 MOVE                             R2 R5
     1107 JUMP                             ; [+6]
     1108 GETTABLEKS                       R5 R1 K133 ["new"]
     1110 MOVE                             R6 R3
     1111 MOVE                             R7 R4
     1112 CALL                             R5 2 1
     1113 MOVE                             R2 R5
     1114 GETUPVAL                         R6 3
     1115 GETTABLEKS                       R5 R6 K22 ["Toolbox_AssetWarningIcon"]
     1117 NEWTABLE                         R8 64 0
     1119 GETUPVAL                         R10 3
     1120 GETTABLEKS                       R9 R10 K134 ["InputFieldBackground"]
     1122 SETTABLEKS                       R9 R8 K135 ["backgroundColor"]
     1124 GETUPVAL                         R10 9
     1125 GETTABLEKS                       R9 R10 K136 ["BLUE_PRIMARY"]
     1127 SETTABLEKS                       R9 R8 K137 ["progressBarColor"]
     1129 GETUPVAL                         R10 3
     1130 GETTABLEKS                       R9 R10 K62 ["Toolbox_HorizontalLineColor"]
     1132 SETTABLEKS                       R9 R8 K138 ["horizontalLineColor"]
     1134 GETUPVAL                         R10 3
     1135 GETTABLEKS                       R9 R10 K139 ["LinkText"]
     1137 SETTABLEKS                       R9 R8 K140 ["link"]
     1139 GETIMPORT                        R9 K14 [Color3.fromRGB]
     1141 LOADN                            R10 255
     1142 LOADN                            R11 68
     1143 LOADN                            R12 68
     1144 CALL                             R9 3 1
     1145 SETTABLEKS                       R9 R8 K141 ["redText"]
     1147 LOADN                            R9 10
     1148 SETTABLEKS                       R9 R8 K142 ["spacingUnit"]
     1150 DUPTABLE                         R9 K148 [{"backgroundColor", "closeIconColor", "descriptionColor", "headerTextColor", "overlayColor", "overlayTransparency"}]
     1151 GETUPVAL                         R11 3
     1152 GETTABLEKS                       R10 R11 K149 ["MainBackground"]
     1154 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1156 GETUPVAL                         R11 4
     1157 GETTABLEKS                       R10 R11 K44 ["White"]
     1159 SETTABLEKS                       R10 R9 K143 ["closeIconColor"]
     1161 GETUPVAL                         R11 3
     1162 GETTABLEKS                       R10 R11 K150 ["TextPrimary"]
     1164 SETTABLEKS                       R10 R9 K144 ["descriptionColor"]
     1166 GETUPVAL                         R11 3
     1167 GETTABLEKS                       R10 R11 K151 ["BrightText"]
     1169 SETTABLEKS                       R10 R9 K145 ["headerTextColor"]
     1171 GETUPVAL                         R11 4
     1172 GETTABLEKS                       R10 R11 K67 ["Black"]
     1174 SETTABLEKS                       R10 R9 K146 ["overlayColor"]
     1176 LOADK                            R10 K152 [0.4]
     1177 SETTABLEKS                       R10 R9 K147 ["overlayTransparency"]
     1179 SETTABLEKS                       R9 R8 K153 ["announcementDialog"]
     1181 DUPTABLE                         R9 K164 [{"assetName", "background", "dropShadowSize", "icon", "outline", "textColor", "strokeThickness", "strokeColor", "voting", "packages"}]
     1182 DUPTABLE                         R10 K165 [{"textColor"}]
     1183 GETUPVAL                         R12 3
     1184 GETTABLEKS                       R11 R12 K20 ["Toolbox_AssetNameColor"]
     1186 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1188 SETTABLEKS                       R10 R9 K154 ["assetName"]
     1190 DUPTABLE                         R10 K169 [{"color", "borderSize", "image"}]
     1191 GETUPVAL                         R12 3
     1192 GETTABLEKS                       R11 R12 K17 ["Toolbox_AssetBackgroundColor"]
     1194 SETTABLEKS                       R11 R10 K166 ["color"]
     1196 GETUPVAL                         R12 3
     1197 GETTABLEKS                       R11 R12 K16 ["Toolbox_AssetBorderSize"]
     1199 SETTABLEKS                       R11 R10 K167 ["borderSize"]
     1201 GETUPVAL                         R12 3
     1202 GETTABLEKS                       R11 R12 K18 ["Toolbox_AssetBackgroundImage"]
     1204 SETTABLEKS                       R11 R10 K168 ["image"]
     1206 SETTABLEKS                       R10 R9 K155 ["background"]
     1208 GETUPVAL                         R11 3
     1209 GETTABLEKS                       R10 R11 K15 ["Toolbox_AssetDropdownSize"]
     1211 SETTABLEKS                       R10 R9 K156 ["dropShadowSize"]
     1213 DUPTABLE                         R10 K173 [{"borderColor", "buttonColor", "warningColor"}]
     1214 GETUPVAL                         R12 3
     1215 GETTABLEKS                       R11 R12 K174 ["ItemHovered"]
     1217 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1219 GETUPVAL                         R12 3
     1220 GETTABLEKS                       R11 R12 K21 ["Toolbox_AssetIconColor"]
     1222 SETTABLEKS                       R11 R10 K171 ["buttonColor"]
     1224 GETUPVAL                         R12 3
     1225 GETTABLEKS                       R11 R12 K22 ["Toolbox_AssetWarningIcon"]
     1227 SETTABLEKS                       R11 R10 K172 ["warningColor"]
     1229 SETTABLEKS                       R10 R9 K157 ["icon"]
     1231 DUPTABLE                         R10 K177 [{"backgroundColor", "verifiedBackgroundColor", "borderColor", "transparency"}]
     1232 GETUPVAL                         R12 3
     1233 GETTABLEKS                       R11 R12 K4 ["Toolbox_AssetOutlineBackground"]
     1235 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1237 GETUPVAL                         R12 3
     1238 GETTABLEKS                       R11 R12 K12 ["Toolbox_AssetOutlineVerifiedBackground"]
     1240 SETTABLEKS                       R11 R10 K175 ["verifiedBackgroundColor"]
     1242 GETUPVAL                         R12 3
     1243 GETTABLEKS                       R11 R12 K9 ["Toolbox_AssetOutlineBoarderColor"]
     1245 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1247 GETUPVAL                         R12 3
     1248 GETTABLEKS                       R11 R12 K11 ["Toolbox_AssetOutlineTransparency"]
     1250 SETTABLEKS                       R11 R10 K176 ["transparency"]
     1252 SETTABLEKS                       R10 R9 K158 ["outline"]
     1254 GETUPVAL                         R11 3
     1255 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1257 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1259 LOADN                            R10 3
     1260 SETTABLEKS                       R10 R9 K160 ["strokeThickness"]
     1262 GETUPVAL                         R11 9
     1263 GETTABLEKS                       R10 R11 K136 ["BLUE_PRIMARY"]
     1265 SETTABLEKS                       R10 R9 K161 ["strokeColor"]
     1267 DUPTABLE                         R10 K189 [{"downVotes", "upVotes", "textColor", "votedDownThumb", "votedUpThumb", "voteThumb", "rateTextColor", "voteCountColor", "lowConfidencePercentageColor", "votingButtonsBackgroundBoxColor", "votingButtonImage"}]
     1268 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1270 LOADN                            R12 206
     1271 LOADN                            R13 100
     1272 LOADN                            R14 91
     1273 CALL                             R11 3 1
     1274 SETTABLEKS                       R11 R10 K179 ["downVotes"]
     1276 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1278 LOADN                            R12 82
     1279 LOADN                            R13 168
     1280 LOADN                            R14 70
     1281 CALL                             R11 3 1
     1282 SETTABLEKS                       R11 R10 K180 ["upVotes"]
     1284 GETUPVAL                         R12 3
     1285 GETTABLEKS                       R11 R12 K190 ["SubText"]
     1287 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1289 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1291 LOADN                            R12 216
     1292 LOADN                            R13 104
     1293 LOADN                            R14 104
     1294 CALL                             R11 3 1
     1295 SETTABLEKS                       R11 R10 K181 ["votedDownThumb"]
     1297 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1299 LOADN                            R12 0
     1300 LOADN                            R13 178
     1301 LOADN                            R14 89
     1302 CALL                             R11 3 1
     1303 SETTABLEKS                       R11 R10 K182 ["votedUpThumb"]
     1305 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1307 LOADN                            R12 117
     1308 LOADN                            R13 117
     1309 LOADN                            R14 117
     1310 CALL                             R11 3 1
     1311 SETTABLEKS                       R11 R10 K183 ["voteThumb"]
     1313 GETUPVAL                         R12 3
     1314 GETTABLEKS                       R11 R12 K85 ["Toolbox_RateTextColor"]
     1316 SETTABLEKS                       R11 R10 K184 ["rateTextColor"]
     1318 GETUPVAL                         R12 3
     1319 GETTABLEKS                       R11 R12 K87 ["Toolbox_VoteCountColor"]
     1321 SETTABLEKS                       R11 R10 K185 ["voteCountColor"]
     1323 GETUPVAL                         R12 3
     1324 GETTABLEKS                       R11 R12 K88 ["Toolbox_LowConfidencePercentageColor"]
     1326 SETTABLEKS                       R11 R10 K186 ["lowConfidencePercentageColor"]
     1328 GETUPVAL                         R12 3
     1329 GETTABLEKS                       R11 R12 K90 ["Toolbox_VotingButtonsBackgroundBoxColor"]
     1331 SETTABLEKS                       R11 R10 K187 ["votingButtonsBackgroundBoxColor"]
     1333 GETUPVAL                         R12 3
     1334 GETTABLEKS                       R11 R12 K91 ["Toolbox_VotingButtonImage"]
     1336 SETTABLEKS                       R11 R10 K188 ["votingButtonImage"]
     1338 SETTABLEKS                       R10 R9 K162 ["voting"]
     1340 DUPTABLE                         R10 K193 [{"backgroundColor", "backgroundTransparency", "packageImage"}]
     1341 GETUPVAL                         R12 3
     1342 GETTABLEKS                       R11 R12 K66 ["Toolbox_PackageBackgroundColor"]
     1344 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1346 GETUPVAL                         R12 3
     1347 GETTABLEKS                       R11 R12 K68 ["Toolbox_PackageBackgroundTransparency"]
     1349 SETTABLEKS                       R11 R10 K191 ["backgroundTransparency"]
     1351 GETUPVAL                         R12 3
     1352 GETTABLEKS                       R11 R12 K70 ["Toolbox_PackageImage"]
     1354 SETTABLEKS                       R11 R10 K192 ["packageImage"]
     1356 SETTABLEKS                       R10 R9 K163 ["packages"]
     1358 SETTABLEKS                       R9 R8 K194 ["asset"]
     1360 DUPTABLE                         R9 K196 [{"labelTextColor"}]
     1361 GETUPVAL                         R11 3
     1362 GETTABLEKS                       R10 R11 K197 ["DimmedText"]
     1364 SETTABLEKS                       R10 R9 K195 ["labelTextColor"]
     1366 SETTABLEKS                       R9 R8 K198 ["assetConfig"]
     1368 DUPTABLE                         R9 K201 [{"backgroundColor", "progressBarColor", "indicatorColor", "indicatorBorderColor"}]
     1369 GETUPVAL                         R11 3
     1370 GETTABLEKS                       R10 R11 K45 ["Toolbox_AudioPlayerBackgroundColor"]
     1372 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1374 GETUPVAL                         R11 3
     1375 GETTABLEKS                       R10 R11 K47 ["Toolbox_AudioPlayerProgressBarColor"]
     1377 SETTABLEKS                       R10 R9 K137 ["progressBarColor"]
     1379 GETUPVAL                         R11 3
     1380 GETTABLEKS                       R10 R11 K49 ["Toolbox_AudioPlayerIndicatorColor"]
     1382 SETTABLEKS                       R10 R9 K199 ["indicatorColor"]
     1384 GETUPVAL                         R11 3
     1385 GETTABLEKS                       R10 R11 K51 ["Toolbox_AudioPlayerIndicatorBorderColor"]
     1387 SETTABLEKS                       R10 R9 K200 ["indicatorBorderColor"]
     1389 SETTABLEKS                       R9 R8 K202 ["audioPlayer"]
     1391 DUPTABLE                         R9 K206 [{"backgroundButtonColor", "selectedButtonColor", "selectedTextColor", "textColor"}]
     1392 GETUPVAL                         R11 3
     1393 GETTABLEKS                       R10 R11 K45 ["Toolbox_AudioPlayerBackgroundColor"]
     1395 SETTABLEKS                       R10 R9 K203 ["backgroundButtonColor"]
     1397 GETIMPORT                        R10 K7 [Color3.fromHex]
     1399 LOADK                            R11 K48 ["#0077D6"]
     1400 CALL                             R10 1 1
     1401 SETTABLEKS                       R10 R9 K204 ["selectedButtonColor"]
     1403 GETUPVAL                         R11 3
     1404 GETTABLEKS                       R10 R11 K52 ["Toolbox_AudioTabSelectedTextColor"]
     1406 SETTABLEKS                       R10 R9 K205 ["selectedTextColor"]
     1408 GETUPVAL                         R11 3
     1409 GETTABLEKS                       R10 R11 K207 ["TextSecondary"]
     1411 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1413 SETTABLEKS                       R9 R8 K208 ["audioTabs"]
     1415 GETUPVAL                         R10 5
     1416 CALL                             R10 0 1
     1417 JUMPIFNOT                        R10 ; [+22]
     1418 DUPTABLE                         R9 K212 [{"spacingUnit", "textSize", "font", "thumbnailBackgroundColor", "textColor"}]
     1419 LOADN                            R10 10
     1420 SETTABLEKS                       R10 R9 K142 ["spacingUnit"]
     1422 LOADN                            R10 18
     1423 SETTABLEKS                       R10 R9 K209 ["textSize"]
     1425 GETIMPORT                        R10 K216 [Enum.Font.SourceSans]
     1427 SETTABLEKS                       R10 R9 K210 ["font"]
     1429 GETUPVAL                         R11 3
     1430 GETTABLEKS                       R10 R11 K26 ["Toolbox_CreatorLabelThumbnailBackgroundColor"]
     1432 SETTABLEKS                       R10 R9 K211 ["thumbnailBackgroundColor"]
     1434 GETUPVAL                         R11 3
     1435 GETTABLEKS                       R10 R11 K24 ["Toolbox_CreatorLabelTextColor"]
     1437 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1439 JUMP                             ; [+1]
     1440 LOADNIL                          R9
     1441 SETTABLEKS                       R9 R8 K217 ["creatorLabel"]
     1443 GETUPVAL                         R10 5
     1444 CALL                             R10 0 1
     1445 JUMPIFNOT                        R10 ; [+10]
     1446 DUPTABLE                         R9 K218 [{"spacingUnit", "backgroundColor"}]
     1447 LOADN                            R10 10
     1448 SETTABLEKS                       R10 R9 K142 ["spacingUnit"]
     1450 GETUPVAL                         R11 3
     1451 GETTABLEKS                       R10 R11 K28 ["Toolbox_CreatorPillBackgroundColor"]
     1453 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1455 JUMP                             ; [+1]
     1456 LOADNIL                          R9
     1457 SETTABLEKS                       R9 R8 K219 ["creatorPill"]
     1459 DUPTABLE                         R9 K165 [{"textColor"}]
     1460 GETUPVAL                         R11 3
     1461 GETTABLEKS                       R10 R11 K190 ["SubText"]
     1463 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1465 SETTABLEKS                       R9 R8 K220 ["creatorName"]
     1467 DUPTABLE                         R9 K223 [{"errorIcon", "alertIcon"}]
     1468 GETUPVAL                         R11 3
     1469 GETTABLEKS                       R10 R11 K29 ["Toolbox_DialogErrorIcon"]
     1471 SETTABLEKS                       R10 R9 K221 ["errorIcon"]
     1473 GETUPVAL                         R11 6
     1474 CALL                             R11 0 1
     1475 JUMPIFNOT                        R11 ; [+4]
     1476 GETUPVAL                         R11 3
     1477 GETTABLEKS                       R10 R11 K31 ["Toolbox_AlertIcon"]
     1479 JUMP                             ; [+1]
     1480 LOADNIL                          R10
     1481 SETTABLEKS                       R10 R9 K222 ["alertIcon"]
     1483 SETTABLEKS                       R9 R8 K224 ["dialog"]
     1485 DUPTABLE                         R9 K229 [{"dropdownIconColor", "currentSelection", "item", "dropdownFrame"}]
     1486 GETUPVAL                         R11 3
     1487 GETTABLEKS                       R10 R11 K56 ["Toolbox_DropdownIconColor"]
     1489 SETTABLEKS                       R10 R9 K225 ["dropdownIconColor"]
     1491 DUPTABLE                         R10 K234 [{"backgroundColor", "backgroundSelectedColor", "backgroundDisabledColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor"}]
     1492 GETUPVAL                         R12 3
     1493 GETTABLEKS                       R11 R12 K235 ["Dropdown"]
     1495 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1497 GETUPVAL                         R12 3
     1498 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1500 SETTABLEKS                       R11 R10 K230 ["backgroundSelectedColor"]
     1502 GETUPVAL                         R12 3
     1503 GETTABLEKS                       R11 R12 K237 ["Border"]
     1505 SETTABLEKS                       R11 R10 K231 ["backgroundDisabledColor"]
     1507 GETUPVAL                         R12 3
     1508 GETTABLEKS                       R11 R12 K237 ["Border"]
     1510 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1512 GETUPVAL                         R12 3
     1513 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1515 SETTABLEKS                       R11 R10 K232 ["borderSelectedColor"]
     1517 GETUPVAL                         R12 3
     1518 GETTABLEKS                       R11 R12 K178 ["MainText"]
     1520 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1522 GETUPVAL                         R12 3
     1523 GETTABLEKS                       R11 R12 K238 ["MainTextSelected"]
     1525 SETTABLEKS                       R11 R10 K233 ["textSelectedColor"]
     1527 SETTABLEKS                       R10 R9 K226 ["currentSelection"]
     1529 DUPTABLE                         R10 K240 [{"backgroundColor", "backgroundSelectedColor", "selectedBarColor", "textColor", "labelTextColor"}]
     1530 GETUPVAL                         R12 3
     1531 GETTABLEKS                       R11 R12 K241 ["Item"]
     1533 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1535 GETUPVAL                         R12 3
     1536 GETTABLEKS                       R11 R12 K54 ["Toolbox_DropdownItemSelectedColor"]
     1538 SETTABLEKS                       R11 R10 K230 ["backgroundSelectedColor"]
     1540 GETUPVAL                         R12 3
     1541 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1543 SETTABLEKS                       R11 R10 K239 ["selectedBarColor"]
     1545 GETUPVAL                         R12 3
     1546 GETTABLEKS                       R11 R12 K178 ["MainText"]
     1548 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1550 GETUPVAL                         R12 3
     1551 GETTABLEKS                       R11 R12 K197 ["DimmedText"]
     1553 SETTABLEKS                       R11 R10 K195 ["labelTextColor"]
     1555 SETTABLEKS                       R10 R9 K227 ["item"]
     1557 DUPTABLE                         R10 K242 [{"borderColor"}]
     1558 GETUPVAL                         R12 3
     1559 GETTABLEKS                       R11 R12 K237 ["Border"]
     1561 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1563 SETTABLEKS                       R10 R9 K228 ["dropdownFrame"]
     1565 SETTABLEKS                       R9 R8 K243 ["dropdownMenu"]
     1567 DUPTABLE                         R9 K246 [{"backgroundColor", "hoveredBackgroundColor", "textFillColor"}]
     1568 GETUPVAL                         R11 3
     1569 GETTABLEKS                       R10 R11 K57 ["Toolbox_FontTileBackgroundColor"]
     1571 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1573 GETUPVAL                         R11 3
     1574 GETTABLEKS                       R10 R11 K59 ["Toolbox_FontTileHoveredBackgroundColor"]
     1576 SETTABLEKS                       R10 R9 K244 ["hoveredBackgroundColor"]
     1578 GETUPVAL                         R11 3
     1579 GETTABLEKS                       R10 R11 K60 ["Toolbox_FontTileTextFillColor"]
     1581 SETTABLEKS                       R10 R9 K245 ["textFillColor"]
     1583 SETTABLEKS                       R9 R8 K247 ["fontTile"]
     1585 DUPTABLE                         R9 K249 [{"backgroundColor", "borderColor", "labelTextColor", "button"}]
     1586 GETUPVAL                         R11 3
     1587 GETTABLEKS                       R10 R11 K250 ["Titlebar"]
     1589 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1591 GETUPVAL                         R11 3
     1592 GETTABLEKS                       R10 R11 K237 ["Border"]
     1594 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     1596 GETUPVAL                         R11 3
     1597 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1599 SETTABLEKS                       R10 R9 K195 ["labelTextColor"]
     1601 DUPTABLE                         R10 K251 [{"backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor"}]
     1602 GETUPVAL                         R12 3
     1603 GETTABLEKS                       R11 R12 K235 ["Dropdown"]
     1605 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1607 GETUPVAL                         R12 3
     1608 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1610 SETTABLEKS                       R11 R10 K230 ["backgroundSelectedColor"]
     1612 GETUPVAL                         R12 3
     1613 GETTABLEKS                       R11 R12 K237 ["Border"]
     1615 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1617 GETUPVAL                         R12 3
     1618 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1620 SETTABLEKS                       R11 R10 K232 ["borderSelectedColor"]
     1622 GETUPVAL                         R12 3
     1623 GETTABLEKS                       R11 R12 K178 ["MainText"]
     1625 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1627 GETUPVAL                         R12 3
     1628 GETTABLEKS                       R11 R12 K238 ["MainTextSelected"]
     1630 SETTABLEKS                       R11 R10 K233 ["textSelectedColor"]
     1632 SETTABLEKS                       R10 R9 K248 ["button"]
     1634 SETTABLEKS                       R9 R8 K252 ["footer"]
     1636 DUPTABLE                         R9 K254 [{"backgroundColor", "borderColor", "iconColor"}]
     1637 GETUPVAL                         R11 3
     1638 GETTABLEKS                       R10 R11 K250 ["Titlebar"]
     1640 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1642 GETUPVAL                         R11 3
     1643 GETTABLEKS                       R10 R11 K237 ["Border"]
     1645 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     1647 GETUPVAL                         R11 11
     1648 CALL                             R11 0 1
     1649 JUMPIFNOT                        R11 ; [+4]
     1650 GETUPVAL                         R11 9
     1651 GETTABLEKS                       R10 R11 K255 ["GRAY_2"]
     1653 JUMP                             ; [+1]
     1654 LOADNIL                          R10
     1655 SETTABLEKS                       R10 R9 K253 ["iconColor"]
     1657 SETTABLEKS                       R9 R8 K256 ["header"]
     1659 DUPTABLE                         R9 K257 [{"backgroundColor"}]
     1660 GETUPVAL                         R11 3
     1661 GETTABLEKS                       R10 R11 K83 ["Toolbox_HomeviewBackgroundColor"]
     1663 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1665 SETTABLEKS                       R9 R8 K258 ["homeView"]
     1667 DUPTABLE                         R9 K263 [{"font", "gradientColor", "overlayColor", "overlayTransparency", "padding", "spacing", "textColor", "textColorHovered", "textSize"}]
     1668 GETIMPORT                        R10 K265 [Enum.Font.SourceSansBold]
     1670 SETTABLEKS                       R10 R9 K210 ["font"]
     1672 GETUPVAL                         R11 3
     1673 GETTABLEKS                       R10 R11 K82 ["Toolbox_IconTileGradientColor"]
     1675 SETTABLEKS                       R10 R9 K259 ["gradientColor"]
     1677 GETIMPORT                        R10 K7 [Color3.fromHex]
     1679 LOADK                            R11 K10 ["#121212"]
     1680 CALL                             R10 1 1
     1681 SETTABLEKS                       R10 R9 K146 ["overlayColor"]
     1683 LOADK                            R10 K11 ["Toolbox_AssetOutlineTransparency"]
     1684 SETTABLEKS                       R10 R9 K147 ["overlayTransparency"]
     1686 LOADN                            R10 8
     1687 SETTABLEKS                       R10 R9 K260 ["padding"]
     1689 LOADN                            R10 16
     1690 SETTABLEKS                       R10 R9 K261 ["spacing"]
     1692 GETIMPORT                        R10 K7 [Color3.fromHex]
     1694 LOADK                            R11 K111 ["#E1E1E1"]
     1695 CALL                             R10 1 1
     1696 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1698 LOADNIL                          R10
     1699 SETTABLEKS                       R10 R9 K262 ["textColorHovered"]
     1701 LOADN                            R10 16
     1702 SETTABLEKS                       R10 R9 K209 ["textSize"]
     1704 SETTABLEKS                       R9 R8 K268 ["iconTile"]
     1706 DUPTABLE                         R9 K269 [{"backgroundColor", "textColor"}]
     1707 GETUPVAL                         R11 3
     1708 GETTABLEKS                       R10 R11 K250 ["Titlebar"]
     1710 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1712 GETUPVAL                         R11 3
     1713 GETTABLEKS                       R10 R11 K190 ["SubText"]
     1715 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1717 SETTABLEKS                       R9 R8 K270 ["infoBanner"]
     1719 DUPTABLE                         R9 K279 [{"backgroundColorEven", "backgroundColorOdd", "borderColor", "headerTextColor", "titleTextColor", "primaryIconColor", "textColor", "textSize", "playButtonColor", "pauseButtonColor", "insertButtonColor", "insertButtonTextColor"}]
     1720 GETUPVAL                         R11 3
     1721 GETTABLEKS                       R10 R11 K33 ["Toolbox_ItemRowBackgroundColorEven"]
     1723 SETTABLEKS                       R10 R9 K271 ["backgroundColorEven"]
     1725 GETUPVAL                         R11 3
     1726 GETTABLEKS                       R10 R11 K35 ["Toolbox_ItemRowBackgroundColorOdd"]
     1728 SETTABLEKS                       R10 R9 K272 ["backgroundColorOdd"]
     1730 GETUPVAL                         R11 3
     1731 GETTABLEKS                       R10 R11 K37 ["Toolbox_ItemRowBorderColor"]
     1733 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     1735 GETUPVAL                         R11 3
     1736 GETTABLEKS                       R10 R11 K39 ["Toolbox_ItemRowHeaderTextColor"]
     1738 SETTABLEKS                       R10 R9 K145 ["headerTextColor"]
     1740 GETUPVAL                         R11 3
     1741 GETTABLEKS                       R10 R11 K41 ["Toolbox_ItemRowTitleTextColor"]
     1743 SETTABLEKS                       R10 R9 K273 ["titleTextColor"]
     1745 GETIMPORT                        R10 K7 [Color3.fromHex]
     1747 LOADK                            R11 K24 ["Toolbox_CreatorLabelTextColor"]
     1748 CALL                             R10 1 1
     1749 SETTABLEKS                       R10 R9 K274 ["primaryIconColor"]
     1751 GETUPVAL                         R11 3
     1752 GETTABLEKS                       R10 R11 K190 ["SubText"]
     1754 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1756 LOADN                            R10 16
     1757 SETTABLEKS                       R10 R9 K209 ["textSize"]
     1759 GETUPVAL                         R11 9
     1760 GETTABLEKS                       R10 R11 K281 ["BLACK"]
     1762 SETTABLEKS                       R10 R9 K275 ["playButtonColor"]
     1764 GETUPVAL                         R11 9
     1765 GETTABLEKS                       R10 R11 K136 ["BLUE_PRIMARY"]
     1767 SETTABLEKS                       R10 R9 K276 ["pauseButtonColor"]
     1769 GETIMPORT                        R10 K7 [Color3.fromHex]
     1771 LOADK                            R11 K48 ["#0077D6"]
     1772 CALL                             R10 1 1
     1773 SETTABLEKS                       R10 R9 K277 ["insertButtonColor"]
     1775 GETUPVAL                         R11 9
     1776 GETTABLEKS                       R10 R11 K282 ["WHITE"]
     1778 SETTABLEKS                       R10 R9 K278 ["insertButtonTextColor"]
     1780 SETTABLEKS                       R9 R8 K283 ["itemRow"]
     1782 DUPTABLE                         R9 K165 [{"textColor"}]
     1783 GETIMPORT                        R10 K14 [Color3.fromRGB]
     1785 LOADN                            R11 0
     1786 LOADN                            R12 162
     1787 LOADN                            R13 255
     1788 CALL                             R10 3 1
     1789 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1791 SETTABLEKS                       R9 R8 K284 ["linkButton"]
     1793 DUPTABLE                         R9 K286 [{"backgroundColor", "textColor", "informativeTextColor", "button"}]
     1794 GETUPVAL                         R11 3
     1795 GETTABLEKS                       R10 R11 K149 ["MainBackground"]
     1797 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1799 GETUPVAL                         R11 3
     1800 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1802 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1804 GETUPVAL                         R11 3
     1805 GETTABLEKS                       R10 R11 K190 ["SubText"]
     1807 SETTABLEKS                       R10 R9 K285 ["informativeTextColor"]
     1809 DUPTABLE                         R10 K287 [{"textColor", "textSelectedColor", "backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor"}]
     1810 GETUPVAL                         R12 3
     1811 GETTABLEKS                       R11 R12 K178 ["MainText"]
     1813 SETTABLEKS                       R11 R10 K159 ["textColor"]
     1815 GETUPVAL                         R12 3
     1816 GETTABLEKS                       R11 R12 K238 ["MainTextSelected"]
     1818 SETTABLEKS                       R11 R10 K233 ["textSelectedColor"]
     1820 GETUPVAL                         R12 3
     1821 GETTABLEKS                       R11 R12 K149 ["MainBackground"]
     1823 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     1825 GETUPVAL                         R12 3
     1826 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1828 SETTABLEKS                       R11 R10 K230 ["backgroundSelectedColor"]
     1830 GETUPVAL                         R12 3
     1831 GETTABLEKS                       R11 R12 K237 ["Border"]
     1833 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     1835 GETUPVAL                         R12 3
     1836 GETTABLEKS                       R11 R12 K236 ["CurrentMarker"]
     1838 SETTABLEKS                       R11 R10 K232 ["borderSelectedColor"]
     1840 SETTABLEKS                       R10 R9 K248 ["button"]
     1842 SETTABLEKS                       R9 R8 K288 ["messageBox"]
     1844 DUPTABLE                         R9 K291 [{"promptText", "balanceText"}]
     1845 GETUPVAL                         R11 3
     1846 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1848 SETTABLEKS                       R10 R9 K289 ["promptText"]
     1850 GETUPVAL                         R11 3
     1851 GETTABLEKS                       R10 R11 K197 ["DimmedText"]
     1853 SETTABLEKS                       R10 R9 K290 ["balanceText"]
     1855 SETTABLEKS                       R9 R8 K292 ["purchaseDialog"]
     1857 DUPTABLE                         R9 K298 [{"backgroundColor", "distributionQuotaTextColor", "titleTextColor", "textColor", "quotaTextColor", "verifyTextColor", "warningIconColor", "additionalImagesThumbnailSize"}]
     1858 GETUPVAL                         R11 3
     1859 GETTABLEKS                       R10 R11 K2 ["Toolbox_PublishAssetBackground"]
     1861 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1863 GETUPVAL                         R11 3
     1864 GETTABLEKS                       R10 R11 K106 ["AssetConfig_DistributionQuotaTextColor"]
     1866 SETTABLEKS                       R10 R9 K293 ["distributionQuotaTextColor"]
     1868 GETUPVAL                         R11 3
     1869 GETTABLEKS                       R10 R11 K190 ["SubText"]
     1871 SETTABLEKS                       R10 R9 K273 ["titleTextColor"]
     1873 GETUPVAL                         R11 3
     1874 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1876 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1878 GETUPVAL                         R11 3
     1879 GETTABLEKS                       R10 R11 K151 ["BrightText"]
     1881 SETTABLEKS                       R10 R9 K294 ["quotaTextColor"]
     1883 GETUPVAL                         R11 3
     1884 GETTABLEKS                       R10 R11 K207 ["TextSecondary"]
     1886 SETTABLEKS                       R10 R9 K295 ["verifyTextColor"]
     1888 GETIMPORT                        R10 K7 [Color3.fromHex]
     1890 LOADK                            R11 K43 ["Toolbox_ItemRowTextColor"]
     1891 CALL                             R10 1 1
     1892 SETTABLEKS                       R10 R9 K296 ["warningIconColor"]
     1894 GETIMPORT                        R10 K301 [UDim2.new]
     1896 LOADN                            R11 0
     1897 LOADN                            R12 185
     1898 LOADN                            R13 0
     1899 LOADN                            R14 104
     1900 CALL                             R10 4 1
     1901 SETTABLEKS                       R10 R9 K297 ["additionalImagesThumbnailSize"]
     1903 SETTABLEKS                       R9 R8 K302 ["publishAsset"]
     1905 DUPTABLE                         R9 K309 [{"backgroundColor", "liveBackgroundColor", "borderColor", "borderHoveredColor", "borderSelectedColor", "textColor", "placeholderTextColor", "divideLineColor", "searchButton", "clearButton"}]
     1906 GETUPVAL                         R11 3
     1907 GETTABLEKS                       R10 R11 K235 ["Dropdown"]
     1909 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     1911 GETUPVAL                         R11 3
     1912 GETTABLEKS                       R10 R11 K134 ["InputFieldBackground"]
     1914 SETTABLEKS                       R10 R9 K303 ["liveBackgroundColor"]
     1916 GETUPVAL                         R11 3
     1917 GETTABLEKS                       R10 R11 K237 ["Border"]
     1919 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     1921 GETUPVAL                         R11 3
     1922 GETTABLEKS                       R10 R11 K236 ["CurrentMarker"]
     1924 SETTABLEKS                       R10 R9 K304 ["borderHoveredColor"]
     1926 GETUPVAL                         R11 9
     1927 GETTABLEKS                       R10 R11 K136 ["BLUE_PRIMARY"]
     1929 SETTABLEKS                       R10 R9 K232 ["borderSelectedColor"]
     1931 GETUPVAL                         R11 3
     1932 GETTABLEKS                       R10 R11 K178 ["MainText"]
     1934 SETTABLEKS                       R10 R9 K159 ["textColor"]
     1936 GETUPVAL                         R11 3
     1937 GETTABLEKS                       R10 R11 K197 ["DimmedText"]
     1939 SETTABLEKS                       R10 R9 K305 ["placeholderTextColor"]
     1941 GETUPVAL                         R11 3
     1942 GETTABLEKS                       R10 R11 K237 ["Border"]
     1944 SETTABLEKS                       R10 R9 K306 ["divideLineColor"]
     1946 DUPTABLE                         R10 K312 [{"imageColor", "imageSelectedColor"}]
     1947 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1949 LOADN                            R12 184
     1950 LOADN                            R13 184
     1951 LOADN                            R14 184
     1952 CALL                             R11 3 1
     1953 SETTABLEKS                       R11 R10 K310 ["imageColor"]
     1955 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1957 LOADN                            R12 0
     1958 LOADN                            R13 162
     1959 LOADN                            R14 255
     1960 CALL                             R11 3 1
     1961 SETTABLEKS                       R11 R10 K311 ["imageSelectedColor"]
     1963 SETTABLEKS                       R10 R9 K307 ["searchButton"]
     1965 DUPTABLE                         R10 K312 [{"imageColor", "imageSelectedColor"}]
     1966 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1968 LOADN                            R12 184
     1969 LOADN                            R13 184
     1970 LOADN                            R14 184
     1971 CALL                             R11 3 1
     1972 SETTABLEKS                       R11 R10 K310 ["imageColor"]
     1974 GETIMPORT                        R11 K14 [Color3.fromRGB]
     1976 LOADN                            R12 0
     1977 LOADN                            R13 162
     1978 LOADN                            R14 255
     1979 CALL                             R11 3 1
     1980 SETTABLEKS                       R11 R10 K311 ["imageSelectedColor"]
     1982 SETTABLEKS                       R10 R9 K308 ["clearButton"]
     1984 SETTABLEKS                       R9 R8 K313 ["searchBar"]
     1986 DUPTABLE                         R9 K316 [{"scrollbarBackgroundColor", "scrollbarImageColor"}]
     1987 GETUPVAL                         R11 3
     1988 GETTABLEKS                       R10 R11 K72 ["ScrollingFrameBackgroundColor"]
     1990 SETTABLEKS                       R10 R9 K314 ["scrollbarBackgroundColor"]
     1992 GETUPVAL                         R11 3
     1993 GETTABLEKS                       R10 R11 K73 ["ScrollingFrameImageColor"]
     1995 SETTABLEKS                       R10 R9 K315 ["scrollbarImageColor"]
     1997 SETTABLEKS                       R9 R8 K317 ["scrollingFrame"]
     1999 DUPTABLE                         R9 K320 [{"labelTextColor", "textColor", "textHoveredColor", "underlineColor"}]
     2000 GETUPVAL                         R11 3
     2001 GETTABLEKS                       R10 R11 K178 ["MainText"]
     2003 SETTABLEKS                       R10 R9 K195 ["labelTextColor"]
     2005 GETUPVAL                         R11 3
     2006 GETTABLEKS                       R10 R11 K190 ["SubText"]
     2008 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2010 GETUPVAL                         R11 3
     2011 GETTABLEKS                       R10 R11 K139 ["LinkText"]
     2013 SETTABLEKS                       R10 R9 K318 ["textHoveredColor"]
     2015 GETUPVAL                         R11 3
     2016 GETTABLEKS                       R10 R11 K139 ["LinkText"]
     2018 SETTABLEKS                       R10 R9 K319 ["underlineColor"]
     2020 SETTABLEKS                       R9 R8 K321 ["suggestionsComponent"]
     2022 DUPTABLE                         R9 K328 [{"background", "border", "headerTextColor", "imageColor", "imageHoveredColor", "imageSelectedColor", "warningIconColor", "audioSearch", "timeTextBox", "applyButton", "cancelButton"}]
     2023 GETUPVAL                         R11 3
     2024 GETTABLEKS                       R10 R11 K149 ["MainBackground"]
     2026 SETTABLEKS                       R10 R9 K155 ["background"]
     2028 GETUPVAL                         R11 3
     2029 GETTABLEKS                       R10 R11 K237 ["Border"]
     2031 SETTABLEKS                       R10 R9 K322 ["border"]
     2033 GETUPVAL                         R11 3
     2034 GETTABLEKS                       R10 R11 K178 ["MainText"]
     2036 SETTABLEKS                       R10 R9 K145 ["headerTextColor"]
     2038 GETUPVAL                         R11 9
     2039 GETTABLEKS                       R10 R11 K255 ["GRAY_2"]
     2041 SETTABLEKS                       R10 R9 K310 ["imageColor"]
     2043 GETUPVAL                         R11 3
     2044 GETTABLEKS                       R10 R11 K84 ["Toolbox_SearchOptionButtonHover"]
     2046 SETTABLEKS                       R10 R9 K323 ["imageHoveredColor"]
     2048 GETUPVAL                         R11 9
     2049 GETTABLEKS                       R10 R11 K136 ["BLUE_PRIMARY"]
     2051 SETTABLEKS                       R10 R9 K311 ["imageSelectedColor"]
     2053 SETTABLEKS                       R5 R9 K296 ["warningIconColor"]
     2055 DUPTABLE                         R10 K165 [{"textColor"}]
     2056 GETUPVAL                         R12 3
     2057 GETTABLEKS                       R11 R12 K178 ["MainText"]
     2059 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2061 SETTABLEKS                       R10 R9 K324 ["audioSearch"]
     2063 DUPTABLE                         R10 K330 [{"borderColor", "backgroundColor", "selectedBorderColor", "textColor", "placeholderTextColor"}]
     2064 GETUPVAL                         R12 3
     2065 GETTABLEKS                       R11 R12 K237 ["Border"]
     2067 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     2069 GETUPVAL                         R12 3
     2070 GETTABLEKS                       R11 R12 K134 ["InputFieldBackground"]
     2072 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     2074 GETUPVAL                         R12 9
     2075 GETTABLEKS                       R11 R12 K136 ["BLUE_PRIMARY"]
     2077 SETTABLEKS                       R11 R10 K329 ["selectedBorderColor"]
     2079 GETUPVAL                         R12 3
     2080 GETTABLEKS                       R11 R12 K178 ["MainText"]
     2082 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2084 GETUPVAL                         R12 3
     2085 GETTABLEKS                       R11 R12 K197 ["DimmedText"]
     2087 SETTABLEKS                       R11 R10 K305 ["placeholderTextColor"]
     2089 SETTABLEKS                       R10 R9 K325 ["timeTextBox"]
     2091 GETUPVAL                         R11 12
     2092 CALL                             R11 0 1
     2093 JUMPIF                           R11 ; [+17]
     2094 DUPTABLE                         R10 K331 [{"textColor", "backgroundColor", "borderColor"}]
     2095 GETUPVAL                         R12 9
     2096 GETTABLEKS                       R11 R12 K282 ["WHITE"]
     2098 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2100 GETUPVAL                         R12 9
     2101 GETTABLEKS                       R11 R12 K136 ["BLUE_PRIMARY"]
     2103 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     2105 GETUPVAL                         R12 3
     2106 GETTABLEKS                       R11 R12 K149 ["MainBackground"]
     2108 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     2110 JUMP                             ; [+1]
     2111 LOADNIL                          R10
     2112 SETTABLEKS                       R10 R9 K326 ["applyButton"]
     2114 GETUPVAL                         R11 12
     2115 CALL                             R11 0 1
     2116 JUMPIF                           R11 ; [+17]
     2117 DUPTABLE                         R10 K331 [{"textColor", "backgroundColor", "borderColor"}]
     2118 GETUPVAL                         R12 3
     2119 GETTABLEKS                       R11 R12 K178 ["MainText"]
     2121 SETTABLEKS                       R11 R10 K159 ["textColor"]
     2123 GETUPVAL                         R12 3
     2124 GETTABLEKS                       R11 R12 K332 ["Button"]
     2126 SETTABLEKS                       R11 R10 K135 ["backgroundColor"]
     2128 GETUPVAL                         R12 3
     2129 GETTABLEKS                       R11 R12 K237 ["Border"]
     2131 SETTABLEKS                       R11 R10 K170 ["borderColor"]
     2133 JUMP                             ; [+1]
     2134 LOADNIL                          R10
     2135 SETTABLEKS                       R10 R9 K327 ["cancelButton"]
     2137 SETTABLEKS                       R9 R8 K333 ["searchOptions"]
     2139 DUPTABLE                         R9 K335 [{"buttonSpacing"}]
     2140 LOADN                            R10 3
     2141 SETTABLEKS                       R10 R9 K334 ["buttonSpacing"]
     2143 SETTABLEKS                       R9 R8 K336 ["searchList"]
     2145 DUPTABLE                         R9 K338 [{"backgroundColor", "backgroundColorHovered", "font", "padding", "textSize", "textColor"}]
     2146 GETUPVAL                         R11 3
     2147 GETTABLEKS                       R10 R11 K76 ["Toolbox_SearchPillBackgroundColor"]
     2149 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2151 GETUPVAL                         R11 3
     2152 GETTABLEKS                       R10 R11 K77 ["Toolbox_SearchPillBackgroundColorHovered"]
     2154 SETTABLEKS                       R10 R9 K337 ["backgroundColorHovered"]
     2156 GETIMPORT                        R10 K216 [Enum.Font.SourceSans]
     2158 SETTABLEKS                       R10 R9 K210 ["font"]
     2160 DUPTABLE                         R10 K343 [{"top", "bottom", "left", "right"}]
     2161 LOADN                            R11 4
     2162 SETTABLEKS                       R11 R10 K339 ["top"]
     2164 LOADN                            R11 6
     2165 SETTABLEKS                       R11 R10 K340 ["bottom"]
     2167 LOADN                            R11 10
     2168 SETTABLEKS                       R11 R10 K341 ["left"]
     2170 LOADN                            R11 10
     2171 SETTABLEKS                       R11 R10 K342 ["right"]
     2173 SETTABLEKS                       R10 R9 K260 ["padding"]
     2175 LOADN                            R10 18
     2176 SETTABLEKS                       R10 R9 K209 ["textSize"]
     2178 GETUPVAL                         R11 3
     2179 GETTABLEKS                       R10 R11 K75 ["Toolbox_SearchPillTextColor"]
     2181 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2183 SETTABLEKS                       R9 R8 K344 ["searchPill"]
     2185 DUPTABLE                         R9 K346 [{"backgroundColor", "borderColor", "textColor", "clearAllText"}]
     2186 GETUPVAL                         R11 3
     2187 GETTABLEKS                       R10 R11 K74 ["Toolbox_SearchTagBackgroundColor"]
     2189 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2191 GETUPVAL                         R11 3
     2192 GETTABLEKS                       R10 R11 K237 ["Border"]
     2194 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     2196 GETUPVAL                         R11 3
     2197 GETTABLEKS                       R10 R11 K151 ["BrightText"]
     2199 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2201 GETUPVAL                         R11 3
     2202 GETTABLEKS                       R10 R11 K139 ["LinkText"]
     2204 SETTABLEKS                       R10 R9 K345 ["clearAllText"]
     2206 SETTABLEKS                       R9 R8 K347 ["searchTag"]
     2208 DUPTABLE                         R9 K348 [{"textColor", "font", "textSize"}]
     2209 GETUPVAL                         R11 3
     2210 GETTABLEKS                       R10 R11 K63 ["Toolbox_NavigationLinkTextColor"]
     2212 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2214 GETIMPORT                        R10 K265 [Enum.Font.SourceSansBold]
     2216 SETTABLEKS                       R10 R9 K210 ["font"]
     2218 LOADN                            R10 18
     2219 SETTABLEKS                       R10 R9 K209 ["textSize"]
     2221 SETTABLEKS                       R9 R8 K349 ["sectionHeader"]
     2223 DUPTABLE                         R9 K351 [{"textColor", "hoverTextColor", "font", "textSize"}]
     2224 GETUPVAL                         R11 3
     2225 GETTABLEKS                       R10 R11 K63 ["Toolbox_NavigationLinkTextColor"]
     2227 SETTABLEKS                       R10 R9 K159 ["textColor"]
     2229 GETUPVAL                         R11 3
     2230 GETTABLEKS                       R10 R11 K64 ["Toolbox_NavigationLinkTextColorHover"]
     2232 SETTABLEKS                       R10 R9 K350 ["hoverTextColor"]
     2234 GETIMPORT                        R10 K216 [Enum.Font.SourceSans]
     2236 SETTABLEKS                       R10 R9 K210 ["font"]
     2238 LOADN                            R10 16
     2239 SETTABLEKS                       R10 R9 K209 ["textSize"]
     2241 SETTABLEKS                       R9 R8 K352 ["sectionHeaderNavLink"]
     2243 DUPTABLE                         R9 K358 [{"backgroundColor", "borderColor", "topBorderColor", "tabBackground", "disabledColor", "contentColor", "selectedColor"}]
     2244 GETUPVAL                         R11 3
     2245 GETTABLEKS                       R10 R11 K149 ["MainBackground"]
     2247 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2249 GETUPVAL                         R11 3
     2250 GETTABLEKS                       R10 R11 K237 ["Border"]
     2252 SETTABLEKS                       R10 R9 K170 ["borderColor"]
     2254 GETUPVAL                         R11 3
     2255 GETTABLEKS                       R10 R11 K79 ["Toolbox_TabTopBorderColor"]
     2257 SETTABLEKS                       R10 R9 K353 ["topBorderColor"]
     2259 GETUPVAL                         R11 3
     2260 GETTABLEKS                       R10 R11 K250 ["Titlebar"]
     2262 SETTABLEKS                       R10 R9 K354 ["tabBackground"]
     2264 GETUPVAL                         R11 3
     2265 GETTABLEKS                       R10 R11 K237 ["Border"]
     2267 SETTABLEKS                       R10 R9 K355 ["disabledColor"]
     2269 GETUPVAL                         R11 3
     2270 GETTABLEKS                       R10 R11 K359 ["TitlebarText"]
     2272 SETTABLEKS                       R10 R9 K356 ["contentColor"]
     2274 GETUPVAL                         R11 3
     2275 GETTABLEKS                       R10 R11 K81 ["Toolbox_TabSelectedColor"]
     2277 SETTABLEKS                       R10 R9 K357 ["selectedColor"]
     2279 SETTABLEKS                       R9 R8 K360 ["tabSet"]
     2281 DUPTABLE                         R9 K365 [{"buttonHeight", "buttonWidth", "verticalTextSpacing", "verticalListPadding"}]
     2282 LOADN                            R10 24
     2283 SETTABLEKS                       R10 R9 K361 ["buttonHeight"]
     2285 LOADN                            R10 40
     2286 SETTABLEKS                       R10 R9 K362 ["buttonWidth"]
     2288 LOADN                            R10 4
     2289 SETTABLEKS                       R10 R9 K363 ["verticalTextSpacing"]
     2291 LOADN                            R10 16
     2292 SETTABLEKS                       R10 R9 K364 ["verticalListPadding"]
     2294 SETTABLEKS                       R9 R8 K366 ["toggle"]
     2296 GETUPVAL                         R10 13
     2297 GETTABLEKS                       R9 R10 K139 ["LinkText"]
     2299 GETUPVAL                         R11 14
     2300 GETTABLEKS                       R10 R11 K1 ["join"]
     2302 GETUPVAL                         R11 15
     2303 LOADK                            R12 K139 ["LinkText"]
     2304 CALL                             R11 1 1
     2305 NEWTABLE                         R12 4 0
     2307 DUPTABLE                         R13 K370 [{"TextSize", "TextColor", "ShowUnderline"}]
     2308 LOADN                            R14 16
     2309 SETTABLEKS                       R14 R13 K367 ["TextSize"]
     2311 GETUPVAL                         R15 3
     2312 GETTABLEKS                       R14 R15 K190 ["SubText"]
     2314 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2316 LOADB                            R14 1
     2317 SETTABLEKS                       R14 R13 K369 ["ShowUnderline"]
     2319 SETTABLEKS                       R13 R12 K371 ["&ToolboxItemRowLink"]
     2321 DUPTABLE                         R13 K372 [{"TextColor", "ShowUnderline"}]
     2322 GETUPVAL                         R15 3
     2323 GETTABLEKS                       R14 R15 K43 ["Toolbox_ItemRowTextColor"]
     2325 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2327 LOADB                            R14 1
     2328 SETTABLEKS                       R14 R13 K369 ["ShowUnderline"]
     2330 SETTABLEKS                       R13 R12 K373 ["&ToolboxItemRowInnerLink"]
     2332 DUPTABLE                         R13 K370 [{"TextSize", "TextColor", "ShowUnderline"}]
     2333 LOADN                            R14 16
     2334 SETTABLEKS                       R14 R13 K367 ["TextSize"]
     2336 GETUPVAL                         R15 3
     2337 GETTABLEKS                       R14 R15 K41 ["Toolbox_ItemRowTitleTextColor"]
     2339 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2341 LOADB                            R14 1
     2342 SETTABLEKS                       R14 R13 K369 ["ShowUnderline"]
     2344 SETTABLEKS                       R13 R12 K374 ["&ToolboxItemRowTitle"]
     2346 CALL                             R10 2 1
     2347 SETTABLE                         R10 R8 R9
     2348 GETUPVAL                         R10 13
     2349 GETTABLEKS                       R9 R10 K375 ["SearchBar"]
     2351 GETUPVAL                         R12 1
     2352 GETTABLEKS                       R11 R12 K0 ["Dictionary"]
     2354 GETTABLEKS                       R10 R11 K1 ["join"]
     2356 GETUPVAL                         R11 15
     2357 LOADK                            R12 K119 ["Blue_Light"]
     2358 CALL                             R11 1 1
     2359 NEWTABLE                         R12 1 0
     2361 DUPTABLE                         R13 K382 [{"Padding", "SearchIcon", "IconColor", "IconWidth", "IconOffset", "Buttons"}]
     2362 DUPTABLE                         R14 K387 [{"Top", "Left", "Bottom", "Right"}]
     2363 LOADN                            R15 255
     2364 SETTABLEKS                       R15 R14 K383 ["Top"]
     2366 LOADN                            R15 0
     2367 SETTABLEKS                       R15 R14 K384 ["Left"]
     2369 LOADN                            R15 0
     2370 SETTABLEKS                       R15 R14 K385 ["Bottom"]
     2372 LOADN                            R15 0
     2373 SETTABLEKS                       R15 R14 K386 ["Right"]
     2375 SETTABLEKS                       R14 R13 K376 ["Padding"]
     2377 LOADK                            R14 K132 ["mock"]
     2378 SETTABLEKS                       R14 R13 K377 ["SearchIcon"]
     2380 GETUPVAL                         R15 3
     2381 GETTABLEKS                       R14 R15 K93 ["Toolbox_SearchIconColor"]
     2383 SETTABLEKS                       R14 R13 K378 ["IconColor"]
     2385 LOADN                            R14 16
     2386 SETTABLEKS                       R14 R13 K379 ["IconWidth"]
     2388 LOADN                            R14 8
     2389 SETTABLEKS                       R14 R13 K380 ["IconOffset"]
     2391 DUPTABLE                         R14 K392 [{"Clear", "Filter", "FilterHighlighted"}]
     2392 GETUPVAL                         R15 16
     2393 LOADK                            R16 K137 ["progressBarColor"]
     2394 LOADK                            R17 K138 ["horizontalLineColor"]
     2395 GETUPVAL                         R19 3
     2396 GETTABLEKS                       R18 R19 K95 ["SecondaryMain"]
     2398 GETIMPORT                        R19 K396 [UDim2.fromOffset]
     2400 LOADN                            R20 11
     2401 LOADN                            R21 11
     2402 CALL                             R19 2 1
     2403 LOADNIL                          R20
     2404 GETUPVAL                         R22 3
     2405 GETTABLEKS                       R21 R22 K397 ["SecondaryContrast"]
     2407 CALL                             R15 6 1
     2408 SETTABLEKS                       R15 R14 K389 ["Clear"]
     2410 GETUPVAL                         R15 16
     2411 LOADK                            R16 K142 ["spacingUnit"]
     2412 LOADNIL                          R17
     2413 GETUPVAL                         R19 3
     2414 GETTABLEKS                       R18 R19 K93 ["Toolbox_SearchIconColor"]
     2416 GETIMPORT                        R19 K396 [UDim2.fromOffset]
     2418 LOADN                            R20 16
     2419 LOADN                            R21 16
     2420 CALL                             R19 2 -1
     2421 CALL                             R15 -1 1
     2422 SETTABLEKS                       R15 R14 K390 ["Filter"]
     2424 GETUPVAL                         R15 16
     2425 LOADK                            R16 K142 ["spacingUnit"]
     2426 LOADNIL                          R17
     2427 GETIMPORT                        R18 K14 [Color3.fromRGB]
     2429 LOADN                            R19 0
     2430 LOADN                            R20 162
     2431 LOADN                            R21 255
     2432 CALL                             R18 3 1
     2433 GETIMPORT                        R19 K396 [UDim2.fromOffset]
     2435 LOADN                            R20 16
     2436 LOADN                            R21 16
     2437 CALL                             R19 2 -1
     2438 CALL                             R15 -1 1
     2439 SETTABLEKS                       R15 R14 K391 ["FilterHighlighted"]
     2441 SETTABLEKS                       R14 R13 K381 ["Buttons"]
     2443 SETTABLEKS                       R13 R12 K399 ["&ToolboxSearchBar"]
     2445 CALL                             R10 2 1
     2446 SETTABLE                         R10 R8 R9
     2447 DUPTABLE                         R9 K401 [{"backgroundColor", "hoverColor"}]
     2448 GETUPVAL                         R11 3
     2449 GETTABLEKS                       R10 R11 K95 ["SecondaryMain"]
     2451 SETTABLEKS                       R10 R9 K135 ["backgroundColor"]
     2453 GETUPVAL                         R11 3
     2454 GETTABLEKS                       R10 R11 K397 ["SecondaryContrast"]
     2456 SETTABLEKS                       R10 R9 K400 ["hoverColor"]
     2458 SETTABLEKS                       R9 R8 K402 ["recentSearchesCloseButton"]
     2460 DUPTABLE                         R9 K403 [{"Top", "Bottom", "Right", "Left"}]
     2461 LOADN                            R10 8
     2462 SETTABLEKS                       R10 R9 K383 ["Top"]
     2464 LOADN                            R10 0
     2465 SETTABLEKS                       R10 R9 K385 ["Bottom"]
     2467 LOADN                            R10 8
     2468 SETTABLEKS                       R10 R9 K386 ["Right"]
     2470 LOADN                            R10 8
     2471 SETTABLEKS                       R10 R9 K384 ["Left"]
     2473 SETTABLEKS                       R9 R8 K404 ["wideIconButtonPadding"]
     2475 GETUPVAL                         R10 13
     2476 GETTABLEKS                       R9 R10 K332 ["Button"]
     2478 GETUPVAL                         R12 1
     2479 GETTABLEKS                       R11 R12 K0 ["Dictionary"]
     2481 GETTABLEKS                       R10 R11 K1 ["join"]
     2483 GETUPVAL                         R11 15
     2484 LOADK                            R12 K76 ["Toolbox_SearchPillBackgroundColor"]
     2485 CALL                             R11 1 1
     2486 NEWTABLE                         R12 1 0
     2488 NEWTABLE                         R13 2 0
     2490 DUPTABLE                         R14 K406 [{"Color"}]
     2491 GETUPVAL                         R16 3
     2492 GETTABLEKS                       R15 R16 K407 ["ForegroundMain"]
     2494 SETTABLEKS                       R15 R14 K405 ["Color"]
     2496 SETTABLEKS                       R14 R13 K408 ["BackgroundStyle"]
     2498 GETUPVAL                         R15 17
     2499 GETTABLEKS                       R14 R15 K409 ["Hover"]
     2501 DUPTABLE                         R15 K410 [{"BackgroundStyle"}]
     2502 DUPTABLE                         R16 K406 [{"Color"}]
     2503 GETUPVAL                         R18 3
     2504 GETTABLEKS                       R17 R18 K411 ["ActionHover"]
     2506 SETTABLEKS                       R17 R16 K405 ["Color"]
     2508 SETTABLEKS                       R16 R15 K408 ["BackgroundStyle"]
     2510 SETTABLE                         R15 R13 R14
     2511 SETTABLEKS                       R13 R12 K412 ["&ToolboxRecentSearchesButton"]
     2513 CALL                             R10 2 1
     2514 SETTABLE                         R10 R8 R9
     2515 GETUPVAL                         R10 13
     2516 GETTABLEKS                       R9 R10 K413 ["TextLabel"]
     2518 GETUPVAL                         R11 14
     2519 GETTABLEKS                       R10 R11 K1 ["join"]
     2521 GETUPVAL                         R11 15
     2522 LOADK                            R12 K157 ["icon"]
     2523 CALL                             R11 1 1
     2524 NEWTABLE                         R12 2 0
     2526 DUPTABLE                         R13 K414 [{"TextColor", "TextSize"}]
     2527 GETUPVAL                         R15 3
     2528 GETTABLEKS                       R14 R15 K190 ["SubText"]
     2530 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2532 LOADN                            R14 16
     2533 SETTABLEKS                       R14 R13 K367 ["TextSize"]
     2535 SETTABLEKS                       R13 R12 K415 ["&ToolboxItemRowText"]
     2537 DUPTABLE                         R13 K414 [{"TextColor", "TextSize"}]
     2538 GETUPVAL                         R15 3
     2539 GETTABLEKS                       R14 R15 K39 ["Toolbox_ItemRowHeaderTextColor"]
     2541 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2543 LOADN                            R14 14
     2544 SETTABLEKS                       R14 R13 K367 ["TextSize"]
     2546 SETTABLEKS                       R13 R12 K416 ["&ToolboxItemRowHeader"]
     2548 CALL                             R10 2 1
     2549 SETTABLE                         R10 R8 R9
     2550 GETUPVAL                         R10 13
     2551 GETTABLEKS                       R9 R10 K417 ["TextLabelWithRobloxLinks"]
     2553 GETUPVAL                         R11 14
     2554 GETTABLEKS                       R10 R11 K1 ["join"]
     2556 GETUPVAL                         R11 15
     2557 LOADK                            R12 K161 ["strokeColor"]
     2558 CALL                             R11 1 1
     2559 NEWTABLE                         R12 1 0
     2561 DUPTABLE                         R13 K418 [{"TextColor"}]
     2562 GETUPVAL                         R15 3
     2563 GETTABLEKS                       R14 R15 K43 ["Toolbox_ItemRowTextColor"]
     2565 SETTABLEKS                       R14 R13 K368 ["TextColor"]
     2567 SETTABLEKS                       R13 R12 K419 ["&ToolboxItemRowInnerText"]
     2569 CALL                             R10 2 1
     2570 SETTABLE                         R10 R8 R9
     2571 NAMECALL                         R6 R2 K420 ["extend"]
     2573 CALL                             R6 2 0
     2574 JUMPIFNOT                        R0 ; [+4]
     2575 MOVE                             R8 R0
     2576 NAMECALL                         R6 R2 K420 ["extend"]
     2578 CALL                             R6 2 0
     2579 NEWTABLE                         R8 1 0
     2581 GETUPVAL                         R10 13
     2582 GETTABLEKS                       R9 R10 K421 ["DropdownMenu"]
     2584 GETUPVAL                         R12 1
     2585 GETTABLEKS                       R11 R12 K0 ["Dictionary"]
     2587 GETTABLEKS                       R10 R11 K1 ["join"]
     2589 GETUPVAL                         R11 15
     2590 LOADK                            R12 K165 [{"textColor"}]
     2591 CALL                             R11 1 1
     2592 NEWTABLE                         R12 1 0
     2594 DUPTABLE                         R13 K423 [{"Offset"}]
     2595 GETIMPORT                        R14 K425 [Vector2.new]
     2597 LOADN                            R15 0
     2598 LOADN                            R16 4
     2599 CALL                             R14 2 1
     2600 SETTABLEKS                       R14 R13 K422 ["Offset"]
     2602 SETTABLEKS                       R13 R12 K426 ["&ToolboxSearchBarDropdown"]
     2604 CALL                             R10 2 1
     2605 SETTABLE                         R10 R8 R9
     2606 NAMECALL                         R6 R2 K420 ["extend"]
     2608 CALL                             R6 2 0
     2609 RETURN                           R2 1

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
       48 GETTABLEKS                       R7 R8 K12 ["Flags"]
       50 GETTABLEKS                       R6 R7 K13 ["getFFlagUpdateAlertIcon"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K7 [require]
       55 GETTABLEKS                       R9 R0 K4 ["Src"]
       57 GETTABLEKS                       R8 R9 K5 ["Util"]
       59 GETTABLEKS                       R7 R8 K14 ["Images"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R0 K15 ["Packages"]
       64 GETIMPORT                        R8 K7 [require]
       66 GETTABLEKS                       R9 R7 K16 ["Framework"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K7 [require]
       71 GETTABLEKS                       R10 R7 K17 ["Cryo"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K7 [require]
       76 GETTABLEKS                       R11 R7 K18 ["Dash"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K7 [require]
       81 GETTABLEKS                       R12 R1 K19 ["Colors"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K7 [require]
       86 GETTABLEKS                       R13 R1 K20 ["isCli"]
       88 CALL                             R12 1 1
       89 GETTABLEKS                       R15 R8 K21 ["Style"]
       91 GETTABLEKS                       R14 R15 K22 ["Themes"]
       93 GETTABLEKS                       R13 R14 K23 ["DarkTheme"]
       95 GETTABLEKS                       R15 R8 K21 ["Style"]
       97 GETTABLEKS                       R14 R15 K24 ["getRawComponentStyle"]
       99 GETTABLEKS                       R17 R8 K21 ["Style"]
      101 GETTABLEKS                       R16 R17 K22 ["Themes"]
      103 GETTABLEKS                       R15 R16 K25 ["LightTheme"]
      105 GETTABLEKS                       R18 R8 K21 ["Style"]
      107 GETTABLEKS                       R17 R18 K22 ["Themes"]
      109 GETTABLEKS                       R16 R17 K26 ["StudioTheme"]
      111 GETTABLEKS                       R18 R8 K21 ["Style"]
      113 GETTABLEKS                       R17 R18 K19 ["Colors"]
      115 GETTABLEKS                       R19 R8 K21 ["Style"]
      117 GETTABLEKS                       R18 R19 K27 ["StyleKey"]
      119 GETTABLEKS                       R20 R8 K21 ["Style"]
      121 GETTABLEKS                       R19 R20 K28 ["ComponentSymbols"]
      123 GETTABLEKS                       R21 R8 K5 ["Util"]
      125 GETTABLEKS                       R20 R21 K29 ["StyleModifier"]
      127 GETTABLEKS                       R22 R8 K30 ["UI"]
      129 GETTABLEKS                       R21 R22 K31 ["Image"]
      131 DUPCLOSURE                       R22 K32 [PROTO_0]
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R21
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R9
      136 GETTABLEKS                       R24 R8 K5 ["Util"]
      138 GETTABLEKS                       R23 R24 K29 ["StyleModifier"]
      140 DUPCLOSURE                       R24 K33 [PROTO_1]
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R23
      159 RETURN                           R24 1
