PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        2 LOADK                            R4 K1 ["JointInstance"]
        3 NAMECALL                         R2 R0 K2 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 JUMPIFEQKS                       R1 K3 ["ManualWeld"] ; [+3]
        9 JUMPIFNOTEQKS                    R1 K4 ["ManualGlue"] ; [+7]
       11 GETUPVAL                         R2 0
       12 LOADK                            R4 K1 ["JointInstance"]
       13 NAMECALL                         R2 R2 K5 ["GetClassIcon"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1
       17 GETUPVAL                         R2 0
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R2 K5 ["GetClassIcon"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       17 GETTABLEKS                       R2 R2 K8 ["getFFlagToolboxEnableAssetRows"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       28 GETTABLEKS                       R3 R3 K9 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R4 R0 K5 ["Src"]
       35 GETTABLEKS                       R4 R4 K6 ["Util"]
       37 GETTABLEKS                       R4 R4 K10 ["wrapStrictTable"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K4 [require]
       42 GETTABLEKS                       R5 R0 K5 ["Src"]
       44 GETTABLEKS                       R5 R5 K6 ["Util"]
       46 GETTABLEKS                       R5 R5 K11 ["ToolboxUtilities"]
       48 CALL                             R4 1 1
       49 GETTABLEKS                       R4 R4 K12 ["showRobloxCreatedAssets"]
       51 GETIMPORT                        R5 K4 [require]
       53 GETTABLEKS                       R6 R0 K5 ["Src"]
       55 GETTABLEKS                       R6 R6 K6 ["Util"]
       57 GETTABLEKS                       R6 R6 K11 ["ToolboxUtilities"]
       59 CALL                             R5 1 1
       60 GETTABLEKS                       R5 R5 K13 ["getMaxAudioLength"]
       62 GETIMPORT                        R6 K15 [game]
       64 LOADK                            R8 K16 ["StudioService"]
       65 NAMECALL                         R6 R6 K17 ["GetService"]
       67 CALL                             R6 2 1
       68 GETIMPORT                        R7 K4 [require]
       70 GETTABLEKS                       R8 R0 K5 ["Src"]
       72 GETTABLEKS                       R8 R8 K18 ["Types"]
       74 GETTABLEKS                       R8 R8 K19 ["Category"]
       76 CALL                             R7 1 1
       77 NEWTABLE                         R8 256 0
       79 LOADK                            R9 K20 ["{creatorDashboardLink}"]
       80 SETTABLEKS                       R9 R8 K21 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
       82 LOADK                            R9 K22 [1.3]
       83 SETTABLEKS                       R9 R8 K23 ["TOOLTIP_LINE_HEIGHT"]
       85 LOADN                            R9 3
       86 SETTABLEKS                       R9 R8 K24 ["TOOLTIP_PADDING"]
       88 LOADN                            R9 12
       89 SETTABLEKS                       R9 R8 K25 ["TOOLTIP_TEXT_SIZE"]
       91 GETIMPORT                        R9 K29 [Enum.Font.SourceSans]
       93 SETTABLEKS                       R9 R8 K30 ["FONT"]
       95 GETIMPORT                        R9 K32 [Enum.Font.SourceSansBold]
       97 SETTABLEKS                       R9 R8 K33 ["FONT_BOLD"]
       99 LOADN                            R9 14
      100 SETTABLEKS                       R9 R8 K34 ["FONT_SIZE_SMALL"]
      102 LOADN                            R9 16
      103 SETTABLEKS                       R9 R8 K35 ["FONT_SIZE_MEDIUM"]
      105 LOADN                            R9 18
      106 SETTABLEKS                       R9 R8 K36 ["FONT_SIZE_LARGE"]
      108 LOADN                            R9 22
      109 SETTABLEKS                       R9 R8 K37 ["FONT_SIZE_TITLE"]
      111 LOADN                            R9 20
      112 SETTABLEKS                       R9 R8 K38 ["FONT_SIZE_ASSET_CONFIG_INPUT"]
      114 LOADN                            R9 90
      115 SETTABLEKS                       R9 R8 K39 ["FONT_TILE_HEIGHT"]
      117 DUPTABLE                         R9 K48 [{["HOME"] = "Home", ["SUBCATEGORY"] = "Subcategory", ["ALL_SUBCATEGORIES"] = "All_Subcategories", ["RESULTS"] = "Results"}]
      118 SETTABLEKS                       R9 R8 K49 ["NAVIGATION"]
      120 LOADK                            R9 K19 ["Category"]
      121 SETTABLEKS                       R9 R8 K50 ["HOMEVIEW_SEARCH_CATEGORY"]
      123 DUPCLOSURE                       R9 K51 [PROTO_0]
      124 CAPTURE                          VAL R6
      125 SETTABLEKS                       R9 R8 K52 ["getClassIcon"]
      127 GETIMPORT                        R9 K55 [Rect.new]
      129 LOADN                            R10 3
      130 LOADN                            R11 3
      131 LOADN                            R12 13
      132 LOADN                            R13 13
      133 CALL                             R9 4 1
      134 SETTABLEKS                       R9 R8 K56 ["ROUNDED_FRAME_SLICE"]
      136 LOADN                            R9 8
      137 SETTABLEKS                       R9 R8 K57 ["SCROLLBAR_THICKNESS"]
      139 LOADN                            R9 2
      140 SETTABLEKS                       R9 R8 K58 ["SCROLLBAR_PADDING"]
      142 GETTABLEKS                       R10 R8 K57 ["SCROLLBAR_THICKNESS"]
      144 LOADN                            R12 2
      145 GETTABLEKS                       R13 R8 K58 ["SCROLLBAR_PADDING"]
      147 MUL                              R11 R12 R13
      148 ADD                              R9 R10 R11
      149 SETTABLEKS                       R9 R8 K59 ["SCROLLBAR_BACKGROUND_THICKNESS"]
      151 LOADK                            R9 K60 ["scenesuggestions"]
      152 SETTABLEKS                       R9 R8 K61 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
      154 LOADN                            R9 15
      155 SETTABLEKS                       R9 R8 K62 ["CONTEXTUAL_RECOMMENDATIONS_POLLING_FREQUENCY_DEFAULT"]
      157 LOADN                            R9 1
      158 SETTABLEKS                       R9 R8 K63 ["THUMB_ICON_PADDING"]
      160 LOADN                            R9 13
      161 SETTABLEKS                       R9 R8 K64 ["SMALL_THUMB_ICON_HEIGHT"]
      163 LOADN                            R9 10
      164 SETTABLEKS                       R9 R8 K65 ["SMALL_THUMB_ICON_WIDTH"]
      166 LOADN                            R9 18
      167 SETTABLEKS                       R9 R8 K66 ["THUMB_ICON_HEIGHT"]
      169 LOADN                            R9 15
      170 SETTABLEKS                       R9 R8 K67 ["THUMB_ICON_WIDTH"]
      172 LOADN                            R9 16
      173 SETTABLEKS                       R9 R8 K68 ["DROP_SHADOW_IMAGE_SIZE"]
      175 LOADN                            R9 8
      176 SETTABLEKS                       R9 R8 K69 ["DROP_SHADOW_IMAGE_SLICE_0"]
      178 GETTABLEKS                       R10 R8 K68 ["DROP_SHADOW_IMAGE_SIZE"]
      180 GETTABLEKS                       R11 R8 K69 ["DROP_SHADOW_IMAGE_SLICE_0"]
      182 SUB                              R9 R10 R11
      183 SETTABLEKS                       R9 R8 K70 ["DROP_SHADOW_IMAGE_SLICE_1"]
      185 GETIMPORT                        R9 K55 [Rect.new]
      187 GETTABLEKS                       R10 R8 K69 ["DROP_SHADOW_IMAGE_SLICE_0"]
      189 GETTABLEKS                       R11 R8 K69 ["DROP_SHADOW_IMAGE_SLICE_0"]
      191 GETTABLEKS                       R12 R8 K70 ["DROP_SHADOW_IMAGE_SLICE_1"]
      193 GETTABLEKS                       R13 R8 K70 ["DROP_SHADOW_IMAGE_SLICE_1"]
      195 CALL                             R9 4 1
      196 SETTABLEKS                       R9 R8 K71 ["DROP_SHADOW_SLICE_CENTER"]
      198 LOADK                            R9 K72 [0.8]
      199 SETTABLEKS                       R9 R8 K73 ["DROP_SHADOW_TRANSPARENCY"]
      201 GETIMPORT                        R9 K76 [Color3.fromRGB]
      203 LOADN                            R10 0
      204 LOADN                            R11 0
      205 LOADN                            R12 0
      206 CALL                             R9 3 1
      207 SETTABLEKS                       R9 R8 K77 ["DROP_SHADOW_COLOR"]
      209 LOADN                            R9 8
      210 SETTABLEKS                       R9 R8 K78 ["DEFAULT_PADDING"]
      212 LOADN                            R9 80
      213 SETTABLEKS                       R9 R8 K79 ["DROPDOWN_WIDTH"]
      215 LOADN                            R9 120
      216 SETTABLEKS                       R9 R8 K80 ["DROPDOWN_ITEM_WIDTH"]
      218 LOADN                            R9 25
      219 SETTABLEKS                       R9 R8 K81 ["DROPDOWN_HEIGHT"]
      221 LOADN                            R9 5
      222 SETTABLEKS                       R9 R8 K82 ["DROPDOWN_SELECTED_BAR"]
      224 LOADN                            R9 3
      225 SETTABLEKS                       R9 R8 K83 ["DROPDOWN_TEXT_INSET"]
      227 LOADN                            R9 12
      228 SETTABLEKS                       R9 R8 K84 ["DROPDOWN_ICON_SIZE"]
      230 LOADN                            R9 4
      231 SETTABLEKS                       R9 R8 K85 ["DROPDOWN_ICON_FROM_RIGHT"]
      233 LOADN                            R9 43
      234 SETTABLEKS                       R9 R8 K86 ["HEADER_HEIGHT"]
      236 GETTABLEKS                       R11 R8 K86 ["HEADER_HEIGHT"]
      238 GETTABLEKS                       R12 R8 K81 ["DROPDOWN_HEIGHT"]
      240 SUB                              R10 R11 R12
      241 DIVK                             R9 R10 K87 [2]
      242 SETTABLEKS                       R9 R8 K88 ["HEADER_OUTER_PADDING"]
      244 LOADN                            R9 7
      245 SETTABLEKS                       R9 R8 K89 ["HEADER_INNER_PADDING"]
      247 GETTABLEKS                       R9 R8 K79 ["DROPDOWN_WIDTH"]
      249 SETTABLEKS                       R9 R8 K90 ["HEADER_DROPDOWN_MIN_WIDTH"]
      251 LOADN                            R9 125
      252 SETTABLEKS                       R9 R8 K91 ["HEADER_DROPDOWN_MAX_WIDTH"]
      254 LOADN                            R9 35
      255 SETTABLEKS                       R9 R8 K92 ["FOOTER_HEIGHT"]
      257 LOADN                            R9 10
      258 SETTABLEKS                       R9 R8 K93 ["BACKGROUND_BUTTON_ICON_SIZE"]
      260 GETTABLEKS                       R9 R8 K34 ["FONT_SIZE_SMALL"]
      262 SETTABLEKS                       R9 R8 K94 ["BACKGROUND_BUTTON_FONT_SIZE"]
      264 LOADN                            R9 10
      265 SETTABLEKS                       R9 R8 K95 ["MAIN_VIEW_PADDING"]
      267 LOADN                            R9 6
      268 SETTABLEKS                       R9 R8 K96 ["SUGGESTIONS_INNER_PADDING"]
      270 LOADN                            R9 6
      271 SETTABLEKS                       R9 R8 K97 ["SUGGESTIONS_OUTER_PADDING"]
      273 GETTABLEKS                       R9 R8 K35 ["FONT_SIZE_MEDIUM"]
      275 SETTABLEKS                       R9 R8 K98 ["SUGGESTIONS_FONT_SIZE"]
      277 GETTABLEKS                       R10 R8 K98 ["SUGGESTIONS_FONT_SIZE"]
      279 ADDK                             R9 R10 K99 [4]
      280 SETTABLEKS                       R9 R8 K100 ["SUGGESTIONS_ROW_HEIGHT"]
      282 LOADN                            R9 2
      283 SETTABLEKS                       R9 R8 K101 ["SUGGESTIONS_ROW_PADDING"]
      285 GETTABLEKS                       R9 R8 K95 ["MAIN_VIEW_PADDING"]
      287 SETTABLEKS                       R9 R8 K102 ["MAIN_VIEW_VERTICAL_PADDING"]
      289 LOADN                            R9 4
      290 SETTABLEKS                       R9 R8 K103 ["MAIN_VIEW_NO_HEADER_HEIGHT"]
      292 LOADK                            R9 K104 [0.3]
      293 SETTABLEKS                       R9 R8 K105 ["TIME_BETWEEN_ASSET_INSERTION"]
      295 LOADN                            R9 75
      296 SETTABLEKS                       R9 R8 K106 ["ASSET_WIDTH_NO_PADDING"]
      298 LOADN                            R9 4
      299 SETTABLEKS                       R9 R8 K107 ["ASSET_INNER_PADDING"]
      301 GETTABLEKS                       R9 R8 K106 ["ASSET_WIDTH_NO_PADDING"]
      303 SETTABLEKS                       R9 R8 K108 ["ASSET_THUMBNAIL_SIZE"]
      305 LOADN                            R9 150
      306 SETTABLEKS                       R9 R8 K109 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
      308 LOADN                            R9 420
      309 SETTABLEKS                       R9 R8 K110 ["THUMBNAIL_SIZE_LARGE"]
      311 LOADN                            R9 20
      312 SETTABLEKS                       R9 R8 K111 ["ASSET_ENDORSED_BADGE_ICON_SIZE"]
      314 DUPTABLE                         R9 K115 [{["MORE_FROM"] = "MORE_FROM", ["BROWSE"] = "BROWSE", ["ASSET_PREVIEW"] = "ASSET_PREVIEW"}]
      315 SETTABLEKS                       R9 R8 K116 ["ASSET_TILE_LOCATION"]
      317 LOADN                            R9 1000
      318 SETTABLEKS                       R9 R8 K117 ["ASSET_TILE_IMAGE_CAROUSEL_AUTO_ADVANCE_TIMER"]
      320 LOADN                            R9 7500
      321 SETTABLEKS                       R9 R8 K118 ["ASSET_PREVIEW_IMAGE_CAROUSEL_AUTO_ADVANCE_TIMER"]
      323 LOADK                            R9 K119 [0.85]
      324 SETTABLEKS                       R9 R8 K120 ["IMAGE_CAROUSEL_ON_IMAGE_CHANGE_TRANSPARENCY_THRESHOLD"]
      326 DUPTABLE                         R9 K129 [{["ON_HOVER_MORE_FROM"] = "onHoverMoreFrom", ["ON_HOVER_BROWSE"] = "onHoverBrowse", ["IMAGE_PREVIEW_PASSIVE"] = "ImagePreviewPassive", ["IMAGE_PREVIEW_ACTIVE"] = "ImagePreviewActive"}]
      327 SETTABLEKS                       R9 R8 K130 ["ASSET_MEDIA_IMPRESSION_SOURCE"]
      329 LOADN                            R9 28
      330 SETTABLEKS                       R9 R8 K131 ["ASSET_PLAY_AUDIO_ICON_SIZE"]
      332 GETTABLEKS                       R9 R8 K35 ["FONT_SIZE_MEDIUM"]
      334 SETTABLEKS                       R9 R8 K132 ["ASSET_NAME_FONT_SIZE"]
      336 GETTABLEKS                       R9 R8 K132 ["ASSET_NAME_FONT_SIZE"]
      338 SETTABLEKS                       R9 R8 K133 ["ASSET_NAME_ONE_LINE_HEIGHT"]
      340 GETTABLEKS                       R10 R8 K133 ["ASSET_NAME_ONE_LINE_HEIGHT"]
      342 MULK                             R9 R10 K87 [2]
      343 SETTABLEKS                       R9 R8 K134 ["ASSET_NAME_HEIGHT"]
      345 GETTABLEKS                       R9 R8 K34 ["FONT_SIZE_SMALL"]
      347 SETTABLEKS                       R9 R8 K135 ["ASSET_CREATOR_NAME_FONT_SIZE"]
      349 GETTABLEKS                       R9 R8 K135 ["ASSET_CREATOR_NAME_FONT_SIZE"]
      351 SETTABLEKS                       R9 R8 K136 ["ASSET_CREATOR_NAME_HEIGHT"]
      353 GETTABLEKS                       R9 R8 K34 ["FONT_SIZE_SMALL"]
      355 SETTABLEKS                       R9 R8 K137 ["STATUS_NAME_FONT_SIZE"]
      357 GETTABLEKS                       R9 R8 K137 ["STATUS_NAME_FONT_SIZE"]
      359 SETTABLEKS                       R9 R8 K138 ["STATUS_NAME_HEIGHT"]
      361 GETTABLEKS                       R9 R8 K35 ["FONT_SIZE_MEDIUM"]
      363 SETTABLEKS                       R9 R8 K139 ["PRICE_FONT_SIZE"]
      365 GETTABLEKS                       R9 R8 K139 ["PRICE_FONT_SIZE"]
      367 SETTABLEKS                       R9 R8 K140 ["PRICE_HEIGHT"]
      369 GETTABLEKS                       R9 R8 K35 ["FONT_SIZE_MEDIUM"]
      371 SETTABLEKS                       R9 R8 K141 ["AUDIO_LENGTH_HEIGHT"]
      373 LOADN                            R9 5
      374 SETTABLEKS                       R9 R8 K142 ["ASSET_VOTE_BAR_HEIGHT"]
      376 LOADN                            R9 0
      377 SETTABLEKS                       R9 R8 K143 ["ASSET_VOTE_BAR_OUTER_HEIGHT"]
      379 GETTABLEKS                       R9 R8 K34 ["FONT_SIZE_SMALL"]
      381 SETTABLEKS                       R9 R8 K144 ["ASSET_VOTE_COUNT_FONT_SIZE"]
      383 GETTABLEKS                       R10 R8 K144 ["ASSET_VOTE_COUNT_FONT_SIZE"]
      385 GETTABLEKS                       R11 R8 K63 ["THUMB_ICON_PADDING"]
      387 ADD                              R9 R10 R11
      388 SETTABLEKS                       R9 R8 K145 ["ASSET_VOTE_COUNT_HEIGHT"]
      390 GETTABLEKS                       R10 R8 K143 ["ASSET_VOTE_BAR_OUTER_HEIGHT"]
      392 GETTABLEKS                       R11 R8 K145 ["ASSET_VOTE_COUNT_HEIGHT"]
      394 ADD                              R9 R10 R11
      395 SETTABLEKS                       R9 R8 K146 ["ASSET_VOTING_HEIGHT"]
      397 LOADN                            R9 3
      398 SETTABLEKS                       R9 R8 K147 ["ASSET_VOTE_COUNT_HORIZONTAL_PADDING"]
      400 LOADN                            R9 2
      401 SETTABLEKS                       R9 R8 K148 ["ASSET_VOTING_BUTTONS_BACKGROUND_BOX_PADDING"]
      403 LOADN                            R9 3
      404 SETTABLEKS                       R9 R8 K149 ["ASSET_VOTING_BUTTONS_BACKGROUND_BOX_CORNER_RADIUS"]
      406 GETTABLEKS                       R10 R8 K66 ["THUMB_ICON_HEIGHT"]
      408 GETTABLEKS                       R12 R8 K148 ["ASSET_VOTING_BUTTONS_BACKGROUND_BOX_PADDING"]
      410 MULK                             R11 R12 K87 [2]
      411 ADD                              R9 R10 R11
      412 SETTABLEKS                       R9 R8 K150 ["ASSET_VOTING_BUTTONS_HEIGHT"]
      414 LOADN                            R9 4
      415 SETTABLEKS                       R9 R8 K151 ["ASSET_VOTE_BUTTONS_TEXT_PADDING"]
      417 LOADN                            R9 1
      418 SETTABLEKS                       R9 R8 K152 ["ASSET_VOTE_BUTTONS_HORIZONTAL_PADDING"]
      420 LOADN                            R9 3
      421 SETTABLEKS                       R9 R8 K153 ["ASSET_VOTE_BUTTONS_SCRIPT_PADDING"]
      423 GETIMPORT                        R9 K155 [UDim2.new]
      425 LOADN                            R10 0
      426 LOADN                            R11 16
      427 LOADN                            R12 0
      428 LOADN                            R13 16
      429 CALL                             R9 4 1
      430 SETTABLEKS                       R9 R8 K156 ["PACKAGE_BACKGROUND_SIZE"]
      432 GETIMPORT                        R9 K158 [UDim2.fromOffset]
      434 LOADN                            R10 12
      435 LOADN                            R11 12
      436 CALL                             R9 2 1
      437 SETTABLEKS                       R9 R8 K159 ["PACKAGE_DETAIL_SIZE"]
      439 LOADN                            R9 3
      440 SETTABLEKS                       R9 R8 K160 ["PACKAGE_BACKGROUND_CORNER_RADIUS"]
      442 LOADN                            R9 5
      443 SETTABLEKS                       R9 R8 K161 ["ASSET_CORNER_RADIUS"]
      445 GETTABLEKS                       R11 R8 K108 ["ASSET_THUMBNAIL_SIZE"]
      447 GETTABLEKS                       R12 R8 K107 ["ASSET_INNER_PADDING"]
      449 ADD                              R10 R11 R12
      450 GETTABLEKS                       R11 R8 K134 ["ASSET_NAME_HEIGHT"]
      452 ADD                              R9 R10 R11
      453 SETTABLEKS                       R9 R8 K162 ["ASSET_HEIGHT"]
      455 LOADN                            R9 8
      456 SETTABLEKS                       R9 R8 K163 ["ASSET_OUTLINE_PADDING"]
      458 GETTABLEKS                       R11 R8 K136 ["ASSET_CREATOR_NAME_HEIGHT"]
      460 GETTABLEKS                       R12 R8 K107 ["ASSET_INNER_PADDING"]
      462 ADD                              R10 R11 R12
      463 LOADN                            R12 2
      464 GETTABLEKS                       R13 R8 K163 ["ASSET_OUTLINE_PADDING"]
      466 MUL                              R11 R12 R13
      467 ADD                              R9 R10 R11
      468 SETTABLEKS                       R9 R8 K164 ["ASSET_OUTLINE_EXTRA_HEIGHT"]
      470 GETTABLEKS                       R11 R8 K164 ["ASSET_OUTLINE_EXTRA_HEIGHT"]
      472 GETTABLEKS                       R12 R8 K146 ["ASSET_VOTING_HEIGHT"]
      474 ADD                              R10 R11 R12
      475 GETTABLEKS                       R11 R8 K107 ["ASSET_INNER_PADDING"]
      477 ADD                              R9 R10 R11
      478 SETTABLEKS                       R9 R8 K165 ["ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING"]
      480 GETTABLEKS                       R11 R8 K164 ["ASSET_OUTLINE_EXTRA_HEIGHT"]
      482 GETTABLEKS                       R12 R8 K146 ["ASSET_VOTING_HEIGHT"]
      484 ADD                              R10 R11 R12
      485 GETTABLEKS                       R11 R8 K107 ["ASSET_INNER_PADDING"]
      487 ADD                              R9 R10 R11
      488 SETTABLEKS                       R9 R8 K166 ["ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING_COUNT"]
      490 GETTABLEKS                       R11 R8 K164 ["ASSET_OUTLINE_EXTRA_HEIGHT"]
      492 GETTABLEKS                       R12 R8 K150 ["ASSET_VOTING_BUTTONS_HEIGHT"]
      494 ADD                              R10 R11 R12
      495 GETTABLEKS                       R11 R8 K63 ["THUMB_ICON_PADDING"]
      497 ADD                              R9 R10 R11
      498 SETTABLEKS                       R9 R8 K167 ["ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTE_BUTTONS_HOVERED"]
      500 LOADN                            R9 8
      501 SETTABLEKS                       R9 R8 K168 ["BETWEEN_ASSETS_HORIZONTAL_PADDING"]
      503 LOADN                            R9 16
      504 SETTABLEKS                       R9 R8 K169 ["BETWEEN_ASSETS_VERTICAL_PADDING"]
      506 LOADN                            R9 3
      507 SETTABLEKS                       R9 R8 K170 ["MIN_ASSETS_PER_ROW"]
      509 GETTABLEKS                       R13 R8 K95 ["MAIN_VIEW_PADDING"]
      511 MULK                             R12 R13 K87 [2]
      512 GETTABLEKS                       R13 R8 K168 ["BETWEEN_ASSETS_HORIZONTAL_PADDING"]
      514 SUB                              R11 R12 R13
      515 GETTABLEKS                       R12 R8 K59 ["SCROLLBAR_BACKGROUND_THICKNESS"]
      517 ADD                              R10 R11 R12
      518 GETTABLEKS                       R11 R8 K58 ["SCROLLBAR_PADDING"]
      520 ADD                              R9 R10 R11
      521 GETTABLEKS                       R11 R8 K106 ["ASSET_WIDTH_NO_PADDING"]
      523 GETTABLEKS                       R12 R8 K168 ["BETWEEN_ASSETS_HORIZONTAL_PADDING"]
      525 ADD                              R10 R11 R12
      526 GETTABLEKS                       R13 R8 K170 ["MIN_ASSETS_PER_ROW"]
      528 MUL                              R12 R10 R13
      529 ADD                              R11 R9 R12
      530 FASTCALL2K                       MATH_MAX R11 K171 ; [+5]
      532 MOVE                             R13 R11
      533 LOADK                            R14 K171 [270]
      534 GETIMPORT                        R12 K174 [math.max]
      536 CALL                             R12 2 1
      537 SETTABLEKS                       R12 R8 K175 ["TOOLBOX_MIN_WIDTH"]
      539 GETTABLEKS                       R13 R8 K175 ["TOOLBOX_MIN_WIDTH"]
      541 GETTABLEKS                       R15 R8 K95 ["MAIN_VIEW_PADDING"]
      543 MULK                             R14 R15 K87 [2]
      544 SUB                              R12 R13 R14
      545 SETTABLEKS                       R12 R8 K176 ["SEARCH_BAR_WIDTH"]
      547 LOADN                            R12 16
      548 SETTABLEKS                       R12 R8 K177 ["TAB_ICON_SIZE"]
      550 LOADN                            R12 3
      551 SETTABLEKS                       R12 R8 K178 ["TAB_INNER_PADDING"]
      553 LOADN                            R12 8
      554 SETTABLEKS                       R12 R8 K179 ["TAB_OUTER_PADDING"]
      556 LOADN                            R12 380
      557 SETTABLEKS                       R12 R8 K180 ["TOOLBOX_MIN_HEIGHT"]
      559 GETTABLEKS                       R13 R8 K162 ["ASSET_HEIGHT"]
      561 MULK                             R12 R13 K181 [1.2]
      562 SETTABLEKS                       R12 R8 K182 ["DIST_FROM_BOTTOM_BEFORE_NEXT_PAGE"]
      564 LOADN                            R12 100
      565 SETTABLEKS                       R12 R8 K183 ["DEFAULT_TOOLTIP_WIDTH"]
      567 LOADN                            R12 16
      568 SETTABLEKS                       R12 R8 K184 ["SCROLLING_FRAME_VIEW_PADDING"]
      570 LOADN                            R12 30
      571 SETTABLEKS                       R12 R8 K185 ["GET_ITEMS_PAGE_SIZE"]
      573 LOADN                            R12 25
      574 SETTABLEKS                       R12 R8 K186 ["GET_ITEMS_DETAILS_PAGE_SIZE_LIMIT"]
      576 LOADN                            R12 30
      577 SETTABLEKS                       R12 R8 K187 ["GET_ITEMS_BY_CREATOR_PAGE_SIZE_LIMIT"]
      579 LOADN                            R12 50
      580 SETTABLEKS                       R12 R8 K188 ["GET_ASSET_CREATIONS_DETAILS_LIMIT"]
      582 GETIMPORT                        R12 K15 [game]
      584 LOADK                            R14 K189 ["ToolboxCreatorInventoryMaxPageSize"]
      585 LOADN                            R15 25
      586 NAMECALL                         R12 R12 K190 ["DefineFastInt"]
      588 CALL                             R12 3 1
      589 SETTABLEKS                       R12 R8 K191 ["CREATOR_INVENTORY_MAX_PAGE_SIZE"]
      591 LOADN                            R12 14
      592 SETTABLEKS                       R12 R8 K192 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
      594 LOADN                            R12 28
      595 SETTABLEKS                       R12 R8 K193 ["SEARCH_BAR_BUTTON_WIDTH"]
      597 LOADN                            R12 2
      598 SETTABLEKS                       R12 R8 K194 ["SEARCH_BAR_BUTTON_INSET"]
      600 LOADN                            R12 12
      601 SETTABLEKS                       R12 R8 K195 ["INFO_BANNER_PADDING"]
      603 DUPTABLE                         R12 K202 [{["ASSET_ICON"] = 1, ["ASSET_NAME"] = 2, ["CREATOR_NAME"] = 3, ["HIGH_QUALITY_BADGE"] = 4}]
      604 SETTABLEKS                       R12 R8 K203 ["TOOLTIP_TYPE"]
      606 LOADN                            R12 72
      607 SETTABLEKS                       R12 R8 K204 ["MESSAGE_BOX_BUTTON_WIDTH"]
      609 LOADN                            R12 16
      610 SETTABLEKS                       R12 R8 K205 ["TREE_ITEM_HEIGHT"]
      612 LOADN                            R12 20
      613 SETTABLEKS                       R12 R8 K206 ["TREE_VIEW_INDENT"]
      615 LOADN                            R12 20
      616 SETTABLEKS                       R12 R8 K207 ["SEARCH_TAG_HEIGHT"]
      618 LOADN                            R12 25
      619 SETTABLEKS                       R12 R8 K208 ["CAPSULE_SLICE"]
      621 GETIMPORT                        R12 K55 [Rect.new]
      623 GETTABLEKS                       R13 R8 K208 ["CAPSULE_SLICE"]
      625 GETTABLEKS                       R14 R8 K208 ["CAPSULE_SLICE"]
      627 GETTABLEKS                       R15 R8 K208 ["CAPSULE_SLICE"]
      629 GETTABLEKS                       R16 R8 K208 ["CAPSULE_SLICE"]
      631 CALL                             R12 4 1
      632 SETTABLEKS                       R12 R8 K209 ["CAPSULE_SLICE_CENTER"]
      634 GETIMPORT                        R12 K76 [Color3.fromRGB]
      636 LOADN                            R13 216
      637 LOADN                            R14 216
      638 LOADN                            R15 216
      639 CALL                             R12 3 1
      640 SETTABLEKS                       R12 R8 K210 ["MODEL_PREVIEW_BG_COLOR"]
      642 LOADN                            R12 16
      643 SETTABLEKS                       R12 R8 K211 ["HEADER_OPTIONSBUTTON_WIDTH"]
      645 LOADN                            R12 25
      646 SETTABLEKS                       R12 R8 K212 ["HEADER_OPTIONSBUTTON_HEIGHT"]
      648 LOADN                            R12 35
      649 SETTABLEKS                       R12 R8 K213 ["SEARCH_ENTRY_HEIGHT"]
      651 LOADN                            R12 50
      652 SETTABLEKS                       R12 R8 K214 ["SEARCH_TERMS_HEIGHT"]
      654 LOADN                            R12 24
      655 SETTABLEKS                       R12 R8 K215 ["FOOTER_BUTTON_HEIGHT"]
      657 LOADN                            R12 640
      658 SETTABLEKS                       R12 R8 K216 ["ASSET_PREVIEW_MAX_WIDTH"]
      660 LOADN                            R12 800
      661 SETTABLEKS                       R12 R8 K217 ["ASSET_PREVIEW_MAX_Height"]
      663 LOADN                            R12 12
      664 SETTABLEKS                       R12 R8 K218 ["ASSET_PREVIEW_PADDING"]
      666 LOADN                            R12 28
      667 SETTABLEKS                       R12 R8 K219 ["ASSET_DESCRIPTION_HEIGHT"]
      669 LOADN                            R12 100
      670 SETTABLEKS                       R12 R8 K220 ["MINIMAL_PREVIEW_WIDTH"]
      672 LOADN                            R12 200
      673 SETTABLEKS                       R12 R8 K221 ["MINIMAL_PREVIEW_HEIGHT"]
      675 LOADN                            R12 28
      676 SETTABLEKS                       R12 R8 K222 ["MAINVIEW_BUTTON_WIDTH"]
      678 LOADN                            R12 28
      679 SETTABLEKS                       R12 R8 K223 ["MAINVIEW_BUTTON_HEIGHT"]
      681 LOADN                            R12 36
      682 SETTABLEKS                       R12 R8 K224 ["TAB_WIDGET_HEIGHT"]
      684 LOADN                            R12 18
      685 SETTABLEKS                       R12 R8 K225 ["PERMISSIONS_TAB_LIST_PADDING"]
      687 LOADN                            R12 24
      688 SETTABLEKS                       R12 R8 K226 ["PERMISSIONS_UI_EDGE_PADDING"]
      690 LOADN                            R12 30
      691 SETTABLEKS                       R12 R8 K227 ["VERSIONS_TITLE_HEIGHT"]
      693 LOADN                            R12 80
      694 SETTABLEKS                       R12 R8 K228 ["VERSIONS_ITEM_HEIGHT"]
      696 LOADN                            R12 60
      697 SETTABLEKS                       R12 R8 K229 ["VERSIONS_ROW_HEIGHT"]
      699 LOADN                            R12 95
      700 SETTABLEKS                       R12 R8 K230 ["VERSIONS_CHARS_PER_LINE"]
      702 LOADN                            R12 20
      703 SETTABLEKS                       R12 R8 K231 ["VERSIONS_LINE_HEIGHT"]
      705 LOADN                            R12 200
      706 SETTABLEKS                       R12 R8 K232 ["VERSIONS_INPUT_ROW_HEIGHT"]
      708 LOADN                            R12 10
      709 SETTABLEKS                       R12 R8 K233 ["VERSIONS_ROWS_PER_PAGE"]
      711 DUPTABLE                         R12 K248 [{["SIZE"], ["BUTTON_SIZE"], ["BUTTON_PADDING"] = 20, ["IMAGE_SIZE"], ["PROMPT_SIZE"], ["HEADER_SIZE"], ["DETAILS_SIZE"], ["DETAILS_POSITION"], ["BALANCE_SIZE"], ["BALANCE_POSITION"], ["BALANCE_PADDING"], ["ROBUX_SIZE"], ["SCRIPT_SIZE"]}]
      712 GETIMPORT                        R13 K250 [Vector2.new]
      714 LOADN                            R14 400
      715 LOADN                            R15 186
      716 CALL                             R13 2 1
      717 SETTABLEKS                       R13 R12 K234 ["SIZE"]
      719 GETIMPORT                        R13 K250 [Vector2.new]
      721 LOADN                            R14 120
      722 LOADN                            R15 32
      723 CALL                             R13 2 1
      724 SETTABLEKS                       R13 R12 K235 ["BUTTON_SIZE"]
      726 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      728 LOADN                            R14 40
      729 LOADN                            R15 40
      730 CALL                             R13 2 1
      731 SETTABLEKS                       R13 R12 K238 ["IMAGE_SIZE"]
      733 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      735 LOADN                            R14 260
      736 LOADN                            R15 40
      737 CALL                             R13 2 1
      738 SETTABLEKS                       R13 R12 K239 ["PROMPT_SIZE"]
      740 GETIMPORT                        R13 K155 [UDim2.new]
      742 LOADN                            R14 1
      743 LOADN                            R15 0
      744 LOADN                            R16 0
      745 LOADN                            R17 18
      746 CALL                             R13 4 1
      747 SETTABLEKS                       R13 R12 K240 ["HEADER_SIZE"]
      749 GETIMPORT                        R13 K155 [UDim2.new]
      751 LOADN                            R14 1
      752 LOADN                            R15 0
      753 LOADN                            R16 0
      754 LOADN                            R17 40
      755 CALL                             R13 4 1
      756 SETTABLEKS                       R13 R12 K241 ["DETAILS_SIZE"]
      758 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      760 LOADN                            R14 0
      761 LOADN                            R15 56
      762 CALL                             R13 2 1
      763 SETTABLEKS                       R13 R12 K242 ["DETAILS_POSITION"]
      765 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      767 LOADN                            R14 260
      768 LOADN                            R15 18
      769 CALL                             R13 2 1
      770 SETTABLEKS                       R13 R12 K243 ["BALANCE_SIZE"]
      772 GETIMPORT                        R13 K155 [UDim2.new]
      774 LOADN                            R14 1
      775 LOADN                            R15 0
      776 LOADN                            R16 0
      777 LOADN                            R17 64
      778 CALL                             R13 4 1
      779 SETTABLEKS                       R13 R12 K244 ["BALANCE_POSITION"]
      781 GETIMPORT                        R13 K252 [UDim.new]
      783 LOADN                            R14 0
      784 LOADN                            R15 3
      785 CALL                             R13 2 1
      786 SETTABLEKS                       R13 R12 K245 ["BALANCE_PADDING"]
      788 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      790 LOADN                            R14 16
      791 LOADN                            R15 16
      792 CALL                             R13 2 1
      793 SETTABLEKS                       R13 R12 K246 ["ROBUX_SIZE"]
      795 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      797 LOADN                            R14 12
      798 LOADN                            R15 12
      799 CALL                             R13 2 1
      800 SETTABLEKS                       R13 R12 K247 ["SCRIPT_SIZE"]
      802 SETTABLEKS                       R12 R8 K253 ["Dialog"]
      804 LOADN                            R12 0
      805 SETTABLEKS                       R12 R8 K254 ["MIN_AUDIO_SEARCH_DURATION"]
      807 LOADN                            R12 420
      808 SETTABLEKS                       R12 R8 K255 ["MAX_AUDIO_SEARCH_DURATION"]
      810 DUPTABLE                         R12 K260 [{["KEYWORD"] = "keyword", ["CATEGORY"] = "category"}]
      811 SETTABLEKS                       R12 R8 K261 ["SEARCH_SOURCE"]
      813 MOVE                             R12 R4
      814 CALL                             R12 0 1
      815 JUMPIFNOT                        R12 ; [+4]
      816 MOVE                             R12 R5
      817 CALL                             R12 0 1
      818 SETTABLEKS                       R12 R8 K255 ["MAX_AUDIO_SEARCH_DURATION"]
      820 LOADN                            R12 30
      821 SETTABLEKS                       R12 R8 K262 ["TOOLBOX_ITEM_SEARCH_LIMIT"]
      823 LOADK                            R12 K263 ["https://www.roblox.com/develop/library?CatalogContext=2&SortAggregation=5&LegendExpanded=true&Category=7"]
      824 SETTABLEKS                       R12 R8 K264 ["PLUGIN_LIBRARY_URL"]
      826 LOADN                            R12 30
      827 SETTABLEKS                       R12 R8 K265 ["AUDIO_TABS_HEIGHT"]
      829 LOADN                            R12 40
      830 SETTABLEKS                       R12 R8 K266 ["AUDIO_CATEGORY_HEIGHT"]
      832 LOADN                            R12 11
      833 SETTABLEKS                       R12 R8 K267 ["LOAD_SCROLL_PADDING"]
      835 LOADK                            R12 K268 ["OpenToolboxMarketplaceView"]
      836 SETTABLEKS                       R12 R8 K269 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
      838 DUPTABLE                         R12 K280 [{["COLUMNS"], ["ICON_SIZE"] = 18, ["ROW_HEIGHT"] = 30, ["EXPANDED_ROW_HEIGHT"] = 121, ["LEFT_RIGHT_PADDING"], ["TOP_BUTTON_PADDING"], ["BORDER_SIZE"]}]
      839 DUPTABLE                         R13 K287 [{["ICON"] = 0, ["TITLE"] = 1, ["CREATOR"] = 2, ["TAGS"] = 3, ["LENGTH"] = 4}]
      840 SETTABLEKS                       R13 R12 K270 ["COLUMNS"]
      842 MOVE                             R14 R2
      843 CALL                             R14 0 1
      844 JUMPIFNOT                        R14 ; [+2]
      845 LOADNIL                          R13
      846 JUMP                             ; [+1]
      847 LOADN                            R13 10
      848 SETTABLEKS                       R13 R12 K277 ["LEFT_RIGHT_PADDING"]
      850 MOVE                             R14 R2
      851 CALL                             R14 0 1
      852 JUMPIFNOT                        R14 ; [+2]
      853 LOADNIL                          R13
      854 JUMP                             ; [+1]
      855 LOADN                            R13 6
      856 SETTABLEKS                       R13 R12 K278 ["TOP_BUTTON_PADDING"]
      858 MOVE                             R14 R2
      859 CALL                             R14 0 1
      860 JUMPIFNOT                        R14 ; [+2]
      861 LOADNIL                          R13
      862 JUMP                             ; [+1]
      863 LOADN                            R13 2
      864 SETTABLEKS                       R13 R12 K279 ["BORDER_SIZE"]
      866 SETTABLEKS                       R12 R8 K288 ["AUDIO_ROW"]
      868 MOVE                             R12 R1
      869 CALL                             R12 0 1
      870 JUMPIFNOT                        R12 ; [+6]
      871 DUPTABLE                         R12 K292 [{["ICON_SIZE"] = 14, ["LEFT_MOST_PADDING"] = 5}]
      872 SETTABLEKS                       R12 R8 K293 ["ASSET_ROW"]
      874 DUPTABLE                         R12 K297 [{["ICON"] = "ICON", ["NAME"] = "NAME", ["CREATOR"] = "CREATOR", ["DATE_CREATED"] = "DATE_CREATED", ["DATE_UPDATED"] = "DATE_UPDATED"}]
      875 SETTABLEKS                       R12 R8 K298 ["ASSET_ROW_COLUMNS"]
      877 MOVE                             R12 R1
      878 CALL                             R12 0 1
      879 JUMPIF                           R12 ; [+3]
      880 MOVE                             R12 R2
      881 CALL                             R12 0 1
      882 JUMPIFNOT                        R12 ; [+3]
      883 DUPTABLE                         R12 K301 [{["BORDER_SIZE"] = 2, ["LEFT_RIGHT_PADDING"] = 10, ["TOP_BUTTON_PADDING"] = 6}]
      884 SETTABLEKS                       R12 R8 K302 ["ITEM_ROW"]
      886 DUPTABLE                         R12 K313 [{["ARTIST"] = "artist", ["CATEGORIES"] = "categories", ["GENRE"] = "genre", ["ALBUM"] = "album", ["AUDIO_TYPE"] = "audioType"}]
      887 SETTABLEKS                       R12 R8 K314 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
      889 DUPTABLE                         R12 K316 [{["RobloxGlobal"] = "RobloxGlobal"}]
      890 SETTABLEKS                       R12 R8 K317 ["DataSharingLicenseTypes"]
      892 LOADK                            R12 K318 ["discoverNewAudio"]
      893 SETTABLEKS                       R12 R8 K319 ["DISCOVER_NEW_AUDIO_SWIMLANE_NAME"]
      895 NEWTABLE                         R12 0 4
      897 LOADK                            R13 K320 ["todays-new-music"]
      898 LOADK                            R14 K321 ["trending-music"]
      899 LOADK                            R15 K322 ["trending-sfx"]
      900 LOADK                            R16 K323 ["distrokid-hits"]
      901 SETLIST                          R12 R13 4 [1]
      903 SETTABLEKS                       R12 R8 K324 ["DISCOVER_NEW_AUDIO_SWIMLANE_TILES"]
      905 DUPTABLE                         R12 K329 [{["Studio"] = "studio", ["WebView"] = "webview"}]
      906 SETTABLEKS                       R12 R8 K330 ["ANALYTICS_TARGET"]
      908 MOVE                             R12 R3
      909 MOVE                             R13 R8
      910 LOADK                            R14 K331 ["Constants"]
      911 CALL                             R12 2 -1
      912 RETURN                           R12 -1
