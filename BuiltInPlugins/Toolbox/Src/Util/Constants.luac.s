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
      117 DUPTABLE                         R9 K44 [{"HOME", "SUBCATEGORY", "ALL_SUBCATEGORIES", "RESULTS"}]
      118 LOADK                            R10 K45 ["Home"]
      119 SETTABLEKS                       R10 R9 K40 ["HOME"]
      121 LOADK                            R10 K46 ["Subcategory"]
      122 SETTABLEKS                       R10 R9 K41 ["SUBCATEGORY"]
      124 LOADK                            R10 K47 ["All_Subcategories"]
      125 SETTABLEKS                       R10 R9 K42 ["ALL_SUBCATEGORIES"]
      127 LOADK                            R10 K48 ["Results"]
      128 SETTABLEKS                       R10 R9 K43 ["RESULTS"]
      130 SETTABLEKS                       R9 R8 K49 ["NAVIGATION"]
      132 LOADK                            R9 K19 ["Category"]
      133 SETTABLEKS                       R9 R8 K50 ["HOMEVIEW_SEARCH_CATEGORY"]
      135 DUPCLOSURE                       R9 K51 [PROTO_0]
      136 CAPTURE                          VAL R6
      137 SETTABLEKS                       R9 R8 K52 ["getClassIcon"]
      139 GETIMPORT                        R9 K55 [Rect.new]
      141 LOADN                            R10 3
      142 LOADN                            R11 3
      143 LOADN                            R12 13
      144 LOADN                            R13 13
      145 CALL                             R9 4 1
      146 SETTABLEKS                       R9 R8 K56 ["ROUNDED_FRAME_SLICE"]
      148 LOADN                            R9 8
      149 SETTABLEKS                       R9 R8 K57 ["SCROLLBAR_THICKNESS"]
      151 LOADN                            R9 2
      152 SETTABLEKS                       R9 R8 K58 ["SCROLLBAR_PADDING"]
      154 GETTABLEKS                       R10 R8 K57 ["SCROLLBAR_THICKNESS"]
      156 LOADN                            R12 2
      157 GETTABLEKS                       R13 R8 K58 ["SCROLLBAR_PADDING"]
      159 MUL                              R11 R12 R13
      160 ADD                              R9 R10 R11
      161 SETTABLEKS                       R9 R8 K59 ["SCROLLBAR_BACKGROUND_THICKNESS"]
      163 LOADK                            R9 K60 ["scenesuggestions"]
      164 SETTABLEKS                       R9 R8 K61 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
      166 LOADN                            R9 15
      167 SETTABLEKS                       R9 R8 K62 ["CONTEXTUAL_RECOMMENDATIONS_POLLING_FREQUENCY_DEFAULT"]
      169 LOADN                            R9 1
      170 SETTABLEKS                       R9 R8 K63 ["THUMB_ICON_PADDING"]
      172 LOADN                            R9 13
      173 SETTABLEKS                       R9 R8 K64 ["SMALL_THUMB_ICON_HEIGHT"]
      175 LOADN                            R9 10
      176 SETTABLEKS                       R9 R8 K65 ["SMALL_THUMB_ICON_WIDTH"]
      178 LOADN                            R9 18
      179 SETTABLEKS                       R9 R8 K66 ["THUMB_ICON_HEIGHT"]
      181 LOADN                            R9 15
      182 SETTABLEKS                       R9 R8 K67 ["THUMB_ICON_WIDTH"]
      184 LOADN                            R9 16
      185 SETTABLEKS                       R9 R8 K68 ["DROP_SHADOW_IMAGE_SIZE"]
      187 LOADN                            R9 8
      188 SETTABLEKS                       R9 R8 K69 ["DROP_SHADOW_IMAGE_SLICE_0"]
      190 GETTABLEKS                       R10 R8 K68 ["DROP_SHADOW_IMAGE_SIZE"]
      192 GETTABLEKS                       R11 R8 K69 ["DROP_SHADOW_IMAGE_SLICE_0"]
      194 SUB                              R9 R10 R11
      195 SETTABLEKS                       R9 R8 K70 ["DROP_SHADOW_IMAGE_SLICE_1"]
      197 GETIMPORT                        R9 K55 [Rect.new]
      199 GETTABLEKS                       R10 R8 K69 ["DROP_SHADOW_IMAGE_SLICE_0"]
      201 GETTABLEKS                       R11 R8 K69 ["DROP_SHADOW_IMAGE_SLICE_0"]
      203 GETTABLEKS                       R12 R8 K70 ["DROP_SHADOW_IMAGE_SLICE_1"]
      205 GETTABLEKS                       R13 R8 K70 ["DROP_SHADOW_IMAGE_SLICE_1"]
      207 CALL                             R9 4 1
      208 SETTABLEKS                       R9 R8 K71 ["DROP_SHADOW_SLICE_CENTER"]
      210 LOADK                            R9 K72 [0.8]
      211 SETTABLEKS                       R9 R8 K73 ["DROP_SHADOW_TRANSPARENCY"]
      213 GETIMPORT                        R9 K76 [Color3.fromRGB]
      215 LOADN                            R10 0
      216 LOADN                            R11 0
      217 LOADN                            R12 0
      218 CALL                             R9 3 1
      219 SETTABLEKS                       R9 R8 K77 ["DROP_SHADOW_COLOR"]
      221 LOADN                            R9 8
      222 SETTABLEKS                       R9 R8 K78 ["DEFAULT_PADDING"]
      224 LOADN                            R9 80
      225 SETTABLEKS                       R9 R8 K79 ["DROPDOWN_WIDTH"]
      227 LOADN                            R9 120
      228 SETTABLEKS                       R9 R8 K80 ["DROPDOWN_ITEM_WIDTH"]
      230 LOADN                            R9 25
      231 SETTABLEKS                       R9 R8 K81 ["DROPDOWN_HEIGHT"]
      233 LOADN                            R9 5
      234 SETTABLEKS                       R9 R8 K82 ["DROPDOWN_SELECTED_BAR"]
      236 LOADN                            R9 3
      237 SETTABLEKS                       R9 R8 K83 ["DROPDOWN_TEXT_INSET"]
      239 LOADN                            R9 12
      240 SETTABLEKS                       R9 R8 K84 ["DROPDOWN_ICON_SIZE"]
      242 LOADN                            R9 4
      243 SETTABLEKS                       R9 R8 K85 ["DROPDOWN_ICON_FROM_RIGHT"]
      245 LOADN                            R9 43
      246 SETTABLEKS                       R9 R8 K86 ["HEADER_HEIGHT"]
      248 GETTABLEKS                       R11 R8 K86 ["HEADER_HEIGHT"]
      250 GETTABLEKS                       R12 R8 K81 ["DROPDOWN_HEIGHT"]
      252 SUB                              R10 R11 R12
      253 DIVK                             R9 R10 K87 [2]
      254 SETTABLEKS                       R9 R8 K88 ["HEADER_OUTER_PADDING"]
      256 LOADN                            R9 7
      257 SETTABLEKS                       R9 R8 K89 ["HEADER_INNER_PADDING"]
      259 GETTABLEKS                       R9 R8 K79 ["DROPDOWN_WIDTH"]
      261 SETTABLEKS                       R9 R8 K90 ["HEADER_DROPDOWN_MIN_WIDTH"]
      263 LOADN                            R9 125
      264 SETTABLEKS                       R9 R8 K91 ["HEADER_DROPDOWN_MAX_WIDTH"]
      266 LOADN                            R9 35
      267 SETTABLEKS                       R9 R8 K92 ["FOOTER_HEIGHT"]
      269 LOADN                            R9 10
      270 SETTABLEKS                       R9 R8 K93 ["BACKGROUND_BUTTON_ICON_SIZE"]
      272 GETTABLEKS                       R9 R8 K34 ["FONT_SIZE_SMALL"]
      274 SETTABLEKS                       R9 R8 K94 ["BACKGROUND_BUTTON_FONT_SIZE"]
      276 LOADN                            R9 10
      277 SETTABLEKS                       R9 R8 K95 ["MAIN_VIEW_PADDING"]
      279 LOADN                            R9 6
      280 SETTABLEKS                       R9 R8 K96 ["SUGGESTIONS_INNER_PADDING"]
      282 LOADN                            R9 6
      283 SETTABLEKS                       R9 R8 K97 ["SUGGESTIONS_OUTER_PADDING"]
      285 GETTABLEKS                       R9 R8 K35 ["FONT_SIZE_MEDIUM"]
      287 SETTABLEKS                       R9 R8 K98 ["SUGGESTIONS_FONT_SIZE"]
      289 GETTABLEKS                       R10 R8 K98 ["SUGGESTIONS_FONT_SIZE"]
      291 ADDK                             R9 R10 K99 [4]
      292 SETTABLEKS                       R9 R8 K100 ["SUGGESTIONS_ROW_HEIGHT"]
      294 LOADN                            R9 2
      295 SETTABLEKS                       R9 R8 K101 ["SUGGESTIONS_ROW_PADDING"]
      297 GETTABLEKS                       R9 R8 K95 ["MAIN_VIEW_PADDING"]
      299 SETTABLEKS                       R9 R8 K102 ["MAIN_VIEW_VERTICAL_PADDING"]
      301 LOADN                            R9 4
      302 SETTABLEKS                       R9 R8 K103 ["MAIN_VIEW_NO_HEADER_HEIGHT"]
      304 LOADK                            R9 K104 [0.3]
      305 SETTABLEKS                       R9 R8 K105 ["TIME_BETWEEN_ASSET_INSERTION"]
      307 LOADN                            R9 75
      308 SETTABLEKS                       R9 R8 K106 ["ASSET_WIDTH_NO_PADDING"]
      310 LOADN                            R9 4
      311 SETTABLEKS                       R9 R8 K107 ["ASSET_INNER_PADDING"]
      313 GETTABLEKS                       R9 R8 K106 ["ASSET_WIDTH_NO_PADDING"]
      315 SETTABLEKS                       R9 R8 K108 ["ASSET_THUMBNAIL_SIZE"]
      317 LOADN                            R9 150
      318 SETTABLEKS                       R9 R8 K109 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
      320 LOADN                            R9 164
      321 SETTABLEKS                       R9 R8 K110 ["THUMBNAIL_SIZE_LARGE"]
      323 LOADN                            R9 20
      324 SETTABLEKS                       R9 R8 K111 ["ASSET_ENDORSED_BADGE_ICON_SIZE"]
      326 DUPTABLE                         R9 K115 [{"MORE_FROM", "BROWSE", "ASSET_PREVIEW"}]
      327 LOADK                            R10 K112 ["MORE_FROM"]
      328 SETTABLEKS                       R10 R9 K112 ["MORE_FROM"]
      330 LOADK                            R10 K113 ["BROWSE"]
      331 SETTABLEKS                       R10 R9 K113 ["BROWSE"]
      333 LOADK                            R10 K114 ["ASSET_PREVIEW"]
      334 SETTABLEKS                       R10 R9 K114 ["ASSET_PREVIEW"]
      336 SETTABLEKS                       R9 R8 K116 ["ASSET_TILE_LOCATION"]
      338 LOADN                            R9 232
      339 SETTABLEKS                       R9 R8 K117 ["ASSET_TILE_IMAGE_CAROUSEL_AUTO_ADVANCE_TIMER"]
      341 LOADN                            R9 76
      342 SETTABLEKS                       R9 R8 K118 ["ASSET_PREVIEW_IMAGE_CAROUSEL_AUTO_ADVANCE_TIMER"]
      344 LOADK                            R9 K119 [0.85]
      345 SETTABLEKS                       R9 R8 K120 ["IMAGE_CAROUSEL_ON_IMAGE_CHANGE_TRANSPARENCY_THRESHOLD"]
      347 DUPTABLE                         R9 K125 [{"ON_HOVER_MORE_FROM", "ON_HOVER_BROWSE", "IMAGE_PREVIEW_PASSIVE", "IMAGE_PREVIEW_ACTIVE"}]
      348 LOADK                            R10 K126 ["onHoverMoreFrom"]
      349 SETTABLEKS                       R10 R9 K121 ["ON_HOVER_MORE_FROM"]
      351 LOADK                            R10 K127 ["onHoverBrowse"]
      352 SETTABLEKS                       R10 R9 K122 ["ON_HOVER_BROWSE"]
      354 LOADK                            R10 K128 ["ImagePreviewPassive"]
      355 SETTABLEKS                       R10 R9 K123 ["IMAGE_PREVIEW_PASSIVE"]
      357 LOADK                            R10 K129 ["ImagePreviewActive"]
      358 SETTABLEKS                       R10 R9 K124 ["IMAGE_PREVIEW_ACTIVE"]
      360 SETTABLEKS                       R9 R8 K130 ["ASSET_MEDIA_IMPRESSION_SOURCE"]
      362 LOADN                            R9 28
      363 SETTABLEKS                       R9 R8 K131 ["ASSET_PLAY_AUDIO_ICON_SIZE"]
      365 GETTABLEKS                       R9 R8 K35 ["FONT_SIZE_MEDIUM"]
      367 SETTABLEKS                       R9 R8 K132 ["ASSET_NAME_FONT_SIZE"]
      369 GETTABLEKS                       R9 R8 K132 ["ASSET_NAME_FONT_SIZE"]
      371 SETTABLEKS                       R9 R8 K133 ["ASSET_NAME_ONE_LINE_HEIGHT"]
      373 GETTABLEKS                       R10 R8 K133 ["ASSET_NAME_ONE_LINE_HEIGHT"]
      375 MULK                             R9 R10 K87 [2]
      376 SETTABLEKS                       R9 R8 K134 ["ASSET_NAME_HEIGHT"]
      378 GETTABLEKS                       R9 R8 K34 ["FONT_SIZE_SMALL"]
      380 SETTABLEKS                       R9 R8 K135 ["ASSET_CREATOR_NAME_FONT_SIZE"]
      382 GETTABLEKS                       R9 R8 K135 ["ASSET_CREATOR_NAME_FONT_SIZE"]
      384 SETTABLEKS                       R9 R8 K136 ["ASSET_CREATOR_NAME_HEIGHT"]
      386 GETTABLEKS                       R9 R8 K34 ["FONT_SIZE_SMALL"]
      388 SETTABLEKS                       R9 R8 K137 ["STATUS_NAME_FONT_SIZE"]
      390 GETTABLEKS                       R9 R8 K137 ["STATUS_NAME_FONT_SIZE"]
      392 SETTABLEKS                       R9 R8 K138 ["STATUS_NAME_HEIGHT"]
      394 GETTABLEKS                       R9 R8 K35 ["FONT_SIZE_MEDIUM"]
      396 SETTABLEKS                       R9 R8 K139 ["PRICE_FONT_SIZE"]
      398 GETTABLEKS                       R9 R8 K139 ["PRICE_FONT_SIZE"]
      400 SETTABLEKS                       R9 R8 K140 ["PRICE_HEIGHT"]
      402 GETTABLEKS                       R9 R8 K35 ["FONT_SIZE_MEDIUM"]
      404 SETTABLEKS                       R9 R8 K141 ["AUDIO_LENGTH_HEIGHT"]
      406 LOADN                            R9 5
      407 SETTABLEKS                       R9 R8 K142 ["ASSET_VOTE_BAR_HEIGHT"]
      409 LOADN                            R9 0
      410 SETTABLEKS                       R9 R8 K143 ["ASSET_VOTE_BAR_OUTER_HEIGHT"]
      412 GETTABLEKS                       R9 R8 K34 ["FONT_SIZE_SMALL"]
      414 SETTABLEKS                       R9 R8 K144 ["ASSET_VOTE_COUNT_FONT_SIZE"]
      416 GETTABLEKS                       R10 R8 K144 ["ASSET_VOTE_COUNT_FONT_SIZE"]
      418 GETTABLEKS                       R11 R8 K63 ["THUMB_ICON_PADDING"]
      420 ADD                              R9 R10 R11
      421 SETTABLEKS                       R9 R8 K145 ["ASSET_VOTE_COUNT_HEIGHT"]
      423 GETTABLEKS                       R10 R8 K143 ["ASSET_VOTE_BAR_OUTER_HEIGHT"]
      425 GETTABLEKS                       R11 R8 K145 ["ASSET_VOTE_COUNT_HEIGHT"]
      427 ADD                              R9 R10 R11
      428 SETTABLEKS                       R9 R8 K146 ["ASSET_VOTING_HEIGHT"]
      430 LOADN                            R9 3
      431 SETTABLEKS                       R9 R8 K147 ["ASSET_VOTE_COUNT_HORIZONTAL_PADDING"]
      433 LOADN                            R9 2
      434 SETTABLEKS                       R9 R8 K148 ["ASSET_VOTING_BUTTONS_BACKGROUND_BOX_PADDING"]
      436 LOADN                            R9 3
      437 SETTABLEKS                       R9 R8 K149 ["ASSET_VOTING_BUTTONS_BACKGROUND_BOX_CORNER_RADIUS"]
      439 GETTABLEKS                       R10 R8 K66 ["THUMB_ICON_HEIGHT"]
      441 GETTABLEKS                       R12 R8 K148 ["ASSET_VOTING_BUTTONS_BACKGROUND_BOX_PADDING"]
      443 MULK                             R11 R12 K87 [2]
      444 ADD                              R9 R10 R11
      445 SETTABLEKS                       R9 R8 K150 ["ASSET_VOTING_BUTTONS_HEIGHT"]
      447 LOADN                            R9 4
      448 SETTABLEKS                       R9 R8 K151 ["ASSET_VOTE_BUTTONS_TEXT_PADDING"]
      450 LOADN                            R9 1
      451 SETTABLEKS                       R9 R8 K152 ["ASSET_VOTE_BUTTONS_HORIZONTAL_PADDING"]
      453 LOADN                            R9 3
      454 SETTABLEKS                       R9 R8 K153 ["ASSET_VOTE_BUTTONS_SCRIPT_PADDING"]
      456 GETIMPORT                        R9 K155 [UDim2.new]
      458 LOADN                            R10 0
      459 LOADN                            R11 16
      460 LOADN                            R12 0
      461 LOADN                            R13 16
      462 CALL                             R9 4 1
      463 SETTABLEKS                       R9 R8 K156 ["PACKAGE_BACKGROUND_SIZE"]
      465 GETIMPORT                        R9 K158 [UDim2.fromOffset]
      467 LOADN                            R10 12
      468 LOADN                            R11 12
      469 CALL                             R9 2 1
      470 SETTABLEKS                       R9 R8 K159 ["PACKAGE_DETAIL_SIZE"]
      472 LOADN                            R9 3
      473 SETTABLEKS                       R9 R8 K160 ["PACKAGE_BACKGROUND_CORNER_RADIUS"]
      475 LOADN                            R9 5
      476 SETTABLEKS                       R9 R8 K161 ["ASSET_CORNER_RADIUS"]
      478 GETTABLEKS                       R11 R8 K108 ["ASSET_THUMBNAIL_SIZE"]
      480 GETTABLEKS                       R12 R8 K107 ["ASSET_INNER_PADDING"]
      482 ADD                              R10 R11 R12
      483 GETTABLEKS                       R11 R8 K134 ["ASSET_NAME_HEIGHT"]
      485 ADD                              R9 R10 R11
      486 SETTABLEKS                       R9 R8 K162 ["ASSET_HEIGHT"]
      488 LOADN                            R9 8
      489 SETTABLEKS                       R9 R8 K163 ["ASSET_OUTLINE_PADDING"]
      491 GETTABLEKS                       R11 R8 K136 ["ASSET_CREATOR_NAME_HEIGHT"]
      493 GETTABLEKS                       R12 R8 K107 ["ASSET_INNER_PADDING"]
      495 ADD                              R10 R11 R12
      496 LOADN                            R12 2
      497 GETTABLEKS                       R13 R8 K163 ["ASSET_OUTLINE_PADDING"]
      499 MUL                              R11 R12 R13
      500 ADD                              R9 R10 R11
      501 SETTABLEKS                       R9 R8 K164 ["ASSET_OUTLINE_EXTRA_HEIGHT"]
      503 GETTABLEKS                       R11 R8 K164 ["ASSET_OUTLINE_EXTRA_HEIGHT"]
      505 GETTABLEKS                       R12 R8 K146 ["ASSET_VOTING_HEIGHT"]
      507 ADD                              R10 R11 R12
      508 GETTABLEKS                       R11 R8 K107 ["ASSET_INNER_PADDING"]
      510 ADD                              R9 R10 R11
      511 SETTABLEKS                       R9 R8 K165 ["ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING"]
      513 GETTABLEKS                       R11 R8 K164 ["ASSET_OUTLINE_EXTRA_HEIGHT"]
      515 GETTABLEKS                       R12 R8 K146 ["ASSET_VOTING_HEIGHT"]
      517 ADD                              R10 R11 R12
      518 GETTABLEKS                       R11 R8 K107 ["ASSET_INNER_PADDING"]
      520 ADD                              R9 R10 R11
      521 SETTABLEKS                       R9 R8 K166 ["ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING_COUNT"]
      523 GETTABLEKS                       R11 R8 K164 ["ASSET_OUTLINE_EXTRA_HEIGHT"]
      525 GETTABLEKS                       R12 R8 K150 ["ASSET_VOTING_BUTTONS_HEIGHT"]
      527 ADD                              R10 R11 R12
      528 GETTABLEKS                       R11 R8 K63 ["THUMB_ICON_PADDING"]
      530 ADD                              R9 R10 R11
      531 SETTABLEKS                       R9 R8 K167 ["ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTE_BUTTONS_HOVERED"]
      533 LOADN                            R9 8
      534 SETTABLEKS                       R9 R8 K168 ["BETWEEN_ASSETS_HORIZONTAL_PADDING"]
      536 LOADN                            R9 16
      537 SETTABLEKS                       R9 R8 K169 ["BETWEEN_ASSETS_VERTICAL_PADDING"]
      539 LOADN                            R9 3
      540 SETTABLEKS                       R9 R8 K170 ["MIN_ASSETS_PER_ROW"]
      542 GETTABLEKS                       R13 R8 K95 ["MAIN_VIEW_PADDING"]
      544 MULK                             R12 R13 K87 [2]
      545 GETTABLEKS                       R13 R8 K168 ["BETWEEN_ASSETS_HORIZONTAL_PADDING"]
      547 SUB                              R11 R12 R13
      548 GETTABLEKS                       R12 R8 K59 ["SCROLLBAR_BACKGROUND_THICKNESS"]
      550 ADD                              R10 R11 R12
      551 GETTABLEKS                       R11 R8 K58 ["SCROLLBAR_PADDING"]
      553 ADD                              R9 R10 R11
      554 GETTABLEKS                       R11 R8 K106 ["ASSET_WIDTH_NO_PADDING"]
      556 GETTABLEKS                       R12 R8 K168 ["BETWEEN_ASSETS_HORIZONTAL_PADDING"]
      558 ADD                              R10 R11 R12
      559 GETTABLEKS                       R13 R8 K170 ["MIN_ASSETS_PER_ROW"]
      561 MUL                              R12 R10 R13
      562 ADD                              R11 R9 R12
      563 FASTCALL2K                       MATH_MAX R11 K171 ; [+5]
      565 MOVE                             R13 R11
      566 LOADK                            R14 K171 [270]
      567 GETIMPORT                        R12 K174 [math.max]
      569 CALL                             R12 2 1
      570 SETTABLEKS                       R12 R8 K175 ["TOOLBOX_MIN_WIDTH"]
      572 GETTABLEKS                       R13 R8 K175 ["TOOLBOX_MIN_WIDTH"]
      574 GETTABLEKS                       R15 R8 K95 ["MAIN_VIEW_PADDING"]
      576 MULK                             R14 R15 K87 [2]
      577 SUB                              R12 R13 R14
      578 SETTABLEKS                       R12 R8 K176 ["SEARCH_BAR_WIDTH"]
      580 LOADN                            R12 16
      581 SETTABLEKS                       R12 R8 K177 ["TAB_ICON_SIZE"]
      583 LOADN                            R12 3
      584 SETTABLEKS                       R12 R8 K178 ["TAB_INNER_PADDING"]
      586 LOADN                            R12 8
      587 SETTABLEKS                       R12 R8 K179 ["TAB_OUTER_PADDING"]
      589 LOADN                            R12 124
      590 SETTABLEKS                       R12 R8 K180 ["TOOLBOX_MIN_HEIGHT"]
      592 GETTABLEKS                       R13 R8 K162 ["ASSET_HEIGHT"]
      594 MULK                             R12 R13 K181 [1.2]
      595 SETTABLEKS                       R12 R8 K182 ["DIST_FROM_BOTTOM_BEFORE_NEXT_PAGE"]
      597 LOADN                            R12 100
      598 SETTABLEKS                       R12 R8 K183 ["DEFAULT_TOOLTIP_WIDTH"]
      600 LOADN                            R12 16
      601 SETTABLEKS                       R12 R8 K184 ["SCROLLING_FRAME_VIEW_PADDING"]
      603 LOADN                            R12 30
      604 SETTABLEKS                       R12 R8 K185 ["GET_ITEMS_PAGE_SIZE"]
      606 LOADN                            R12 25
      607 SETTABLEKS                       R12 R8 K186 ["GET_ITEMS_DETAILS_PAGE_SIZE_LIMIT"]
      609 LOADN                            R12 30
      610 SETTABLEKS                       R12 R8 K187 ["GET_ITEMS_BY_CREATOR_PAGE_SIZE_LIMIT"]
      612 LOADN                            R12 50
      613 SETTABLEKS                       R12 R8 K188 ["GET_ASSET_CREATIONS_DETAILS_LIMIT"]
      615 LOADN                            R12 14
      616 SETTABLEKS                       R12 R8 K189 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
      618 LOADN                            R12 28
      619 SETTABLEKS                       R12 R8 K190 ["SEARCH_BAR_BUTTON_WIDTH"]
      621 LOADN                            R12 2
      622 SETTABLEKS                       R12 R8 K191 ["SEARCH_BAR_BUTTON_INSET"]
      624 LOADN                            R12 12
      625 SETTABLEKS                       R12 R8 K192 ["INFO_BANNER_PADDING"]
      627 DUPTABLE                         R12 K197 [{"ASSET_ICON", "ASSET_NAME", "CREATOR_NAME", "HIGH_QUALITY_BADGE"}]
      628 LOADN                            R13 1
      629 SETTABLEKS                       R13 R12 K193 ["ASSET_ICON"]
      631 LOADN                            R13 2
      632 SETTABLEKS                       R13 R12 K194 ["ASSET_NAME"]
      634 LOADN                            R13 3
      635 SETTABLEKS                       R13 R12 K195 ["CREATOR_NAME"]
      637 LOADN                            R13 4
      638 SETTABLEKS                       R13 R12 K196 ["HIGH_QUALITY_BADGE"]
      640 SETTABLEKS                       R12 R8 K198 ["TOOLTIP_TYPE"]
      642 LOADN                            R12 72
      643 SETTABLEKS                       R12 R8 K199 ["MESSAGE_BOX_BUTTON_WIDTH"]
      645 LOADN                            R12 16
      646 SETTABLEKS                       R12 R8 K200 ["TREE_ITEM_HEIGHT"]
      648 LOADN                            R12 20
      649 SETTABLEKS                       R12 R8 K201 ["TREE_VIEW_INDENT"]
      651 LOADN                            R12 20
      652 SETTABLEKS                       R12 R8 K202 ["SEARCH_TAG_HEIGHT"]
      654 LOADN                            R12 25
      655 SETTABLEKS                       R12 R8 K203 ["CAPSULE_SLICE"]
      657 GETIMPORT                        R12 K55 [Rect.new]
      659 GETTABLEKS                       R13 R8 K203 ["CAPSULE_SLICE"]
      661 GETTABLEKS                       R14 R8 K203 ["CAPSULE_SLICE"]
      663 GETTABLEKS                       R15 R8 K203 ["CAPSULE_SLICE"]
      665 GETTABLEKS                       R16 R8 K203 ["CAPSULE_SLICE"]
      667 CALL                             R12 4 1
      668 SETTABLEKS                       R12 R8 K204 ["CAPSULE_SLICE_CENTER"]
      670 GETIMPORT                        R12 K76 [Color3.fromRGB]
      672 LOADN                            R13 216
      673 LOADN                            R14 216
      674 LOADN                            R15 216
      675 CALL                             R12 3 1
      676 SETTABLEKS                       R12 R8 K205 ["MODEL_PREVIEW_BG_COLOR"]
      678 LOADN                            R12 16
      679 SETTABLEKS                       R12 R8 K206 ["HEADER_OPTIONSBUTTON_WIDTH"]
      681 LOADN                            R12 25
      682 SETTABLEKS                       R12 R8 K207 ["HEADER_OPTIONSBUTTON_HEIGHT"]
      684 LOADN                            R12 35
      685 SETTABLEKS                       R12 R8 K208 ["SEARCH_ENTRY_HEIGHT"]
      687 LOADN                            R12 50
      688 SETTABLEKS                       R12 R8 K209 ["SEARCH_TERMS_HEIGHT"]
      690 LOADN                            R12 24
      691 SETTABLEKS                       R12 R8 K210 ["FOOTER_BUTTON_HEIGHT"]
      693 LOADN                            R12 128
      694 SETTABLEKS                       R12 R8 K211 ["ASSET_PREVIEW_MAX_WIDTH"]
      696 LOADN                            R12 32
      697 SETTABLEKS                       R12 R8 K212 ["ASSET_PREVIEW_MAX_Height"]
      699 LOADN                            R12 12
      700 SETTABLEKS                       R12 R8 K213 ["ASSET_PREVIEW_PADDING"]
      702 LOADN                            R12 28
      703 SETTABLEKS                       R12 R8 K214 ["ASSET_DESCRIPTION_HEIGHT"]
      705 LOADN                            R12 100
      706 SETTABLEKS                       R12 R8 K215 ["MINIMAL_PREVIEW_WIDTH"]
      708 LOADN                            R12 200
      709 SETTABLEKS                       R12 R8 K216 ["MINIMAL_PREVIEW_HEIGHT"]
      711 LOADN                            R12 28
      712 SETTABLEKS                       R12 R8 K217 ["MAINVIEW_BUTTON_WIDTH"]
      714 LOADN                            R12 28
      715 SETTABLEKS                       R12 R8 K218 ["MAINVIEW_BUTTON_HEIGHT"]
      717 LOADN                            R12 36
      718 SETTABLEKS                       R12 R8 K219 ["TAB_WIDGET_HEIGHT"]
      720 LOADN                            R12 18
      721 SETTABLEKS                       R12 R8 K220 ["PERMISSIONS_TAB_LIST_PADDING"]
      723 LOADN                            R12 24
      724 SETTABLEKS                       R12 R8 K221 ["PERMISSIONS_UI_EDGE_PADDING"]
      726 LOADN                            R12 30
      727 SETTABLEKS                       R12 R8 K222 ["VERSIONS_TITLE_HEIGHT"]
      729 LOADN                            R12 80
      730 SETTABLEKS                       R12 R8 K223 ["VERSIONS_ITEM_HEIGHT"]
      732 LOADN                            R12 60
      733 SETTABLEKS                       R12 R8 K224 ["VERSIONS_ROW_HEIGHT"]
      735 LOADN                            R12 95
      736 SETTABLEKS                       R12 R8 K225 ["VERSIONS_CHARS_PER_LINE"]
      738 LOADN                            R12 20
      739 SETTABLEKS                       R12 R8 K226 ["VERSIONS_LINE_HEIGHT"]
      741 LOADN                            R12 200
      742 SETTABLEKS                       R12 R8 K227 ["VERSIONS_INPUT_ROW_HEIGHT"]
      744 LOADN                            R12 10
      745 SETTABLEKS                       R12 R8 K228 ["VERSIONS_ROWS_PER_PAGE"]
      747 DUPTABLE                         R12 K242 [{"SIZE", "BUTTON_SIZE", "BUTTON_PADDING", "IMAGE_SIZE", "PROMPT_SIZE", "HEADER_SIZE", "DETAILS_SIZE", "DETAILS_POSITION", "BALANCE_SIZE", "BALANCE_POSITION", "BALANCE_PADDING", "ROBUX_SIZE", "SCRIPT_SIZE"}]
      748 GETIMPORT                        R13 K244 [Vector2.new]
      750 LOADN                            R14 144
      751 LOADN                            R15 186
      752 CALL                             R13 2 1
      753 SETTABLEKS                       R13 R12 K229 ["SIZE"]
      755 GETIMPORT                        R13 K244 [Vector2.new]
      757 LOADN                            R14 120
      758 LOADN                            R15 32
      759 CALL                             R13 2 1
      760 SETTABLEKS                       R13 R12 K230 ["BUTTON_SIZE"]
      762 LOADN                            R13 20
      763 SETTABLEKS                       R13 R12 K231 ["BUTTON_PADDING"]
      765 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      767 LOADN                            R14 40
      768 LOADN                            R15 40
      769 CALL                             R13 2 1
      770 SETTABLEKS                       R13 R12 K232 ["IMAGE_SIZE"]
      772 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      774 LOADN                            R14 4
      775 LOADN                            R15 40
      776 CALL                             R13 2 1
      777 SETTABLEKS                       R13 R12 K233 ["PROMPT_SIZE"]
      779 GETIMPORT                        R13 K155 [UDim2.new]
      781 LOADN                            R14 1
      782 LOADN                            R15 0
      783 LOADN                            R16 0
      784 LOADN                            R17 18
      785 CALL                             R13 4 1
      786 SETTABLEKS                       R13 R12 K234 ["HEADER_SIZE"]
      788 GETIMPORT                        R13 K155 [UDim2.new]
      790 LOADN                            R14 1
      791 LOADN                            R15 0
      792 LOADN                            R16 0
      793 LOADN                            R17 40
      794 CALL                             R13 4 1
      795 SETTABLEKS                       R13 R12 K235 ["DETAILS_SIZE"]
      797 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      799 LOADN                            R14 0
      800 LOADN                            R15 56
      801 CALL                             R13 2 1
      802 SETTABLEKS                       R13 R12 K236 ["DETAILS_POSITION"]
      804 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      806 LOADN                            R14 4
      807 LOADN                            R15 18
      808 CALL                             R13 2 1
      809 SETTABLEKS                       R13 R12 K237 ["BALANCE_SIZE"]
      811 GETIMPORT                        R13 K155 [UDim2.new]
      813 LOADN                            R14 1
      814 LOADN                            R15 0
      815 LOADN                            R16 0
      816 LOADN                            R17 64
      817 CALL                             R13 4 1
      818 SETTABLEKS                       R13 R12 K238 ["BALANCE_POSITION"]
      820 GETIMPORT                        R13 K246 [UDim.new]
      822 LOADN                            R14 0
      823 LOADN                            R15 3
      824 CALL                             R13 2 1
      825 SETTABLEKS                       R13 R12 K239 ["BALANCE_PADDING"]
      827 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      829 LOADN                            R14 16
      830 LOADN                            R15 16
      831 CALL                             R13 2 1
      832 SETTABLEKS                       R13 R12 K240 ["ROBUX_SIZE"]
      834 GETIMPORT                        R13 K158 [UDim2.fromOffset]
      836 LOADN                            R14 12
      837 LOADN                            R15 12
      838 CALL                             R13 2 1
      839 SETTABLEKS                       R13 R12 K241 ["SCRIPT_SIZE"]
      841 SETTABLEKS                       R12 R8 K247 ["Dialog"]
      843 LOADN                            R12 0
      844 SETTABLEKS                       R12 R8 K248 ["MIN_AUDIO_SEARCH_DURATION"]
      846 LOADN                            R12 164
      847 SETTABLEKS                       R12 R8 K249 ["MAX_AUDIO_SEARCH_DURATION"]
      849 DUPTABLE                         R12 K252 [{"KEYWORD", "CATEGORY"}]
      850 LOADK                            R13 K253 ["keyword"]
      851 SETTABLEKS                       R13 R12 K250 ["KEYWORD"]
      853 LOADK                            R13 K254 ["category"]
      854 SETTABLEKS                       R13 R12 K251 ["CATEGORY"]
      856 SETTABLEKS                       R12 R8 K255 ["SEARCH_SOURCE"]
      858 MOVE                             R12 R4
      859 CALL                             R12 0 1
      860 JUMPIFNOT                        R12 ; [+4]
      861 MOVE                             R12 R5
      862 CALL                             R12 0 1
      863 SETTABLEKS                       R12 R8 K249 ["MAX_AUDIO_SEARCH_DURATION"]
      865 LOADN                            R12 30
      866 SETTABLEKS                       R12 R8 K256 ["TOOLBOX_ITEM_SEARCH_LIMIT"]
      868 LOADK                            R12 K1 [script]
      869 SETTABLEKS                       R12 R8 K258 ["PLUGIN_LIBRARY_URL"]
      871 LOADN                            R12 30
      872 SETTABLEKS                       R12 R8 K259 ["AUDIO_TABS_HEIGHT"]
      874 LOADN                            R12 40
      875 SETTABLEKS                       R12 R8 K260 ["AUDIO_CATEGORY_HEIGHT"]
      877 LOADN                            R12 11
      878 SETTABLEKS                       R12 R8 K261 ["LOAD_SCROLL_PADDING"]
      880 LOADK                            R12 K6 ["Util"]
      881 SETTABLEKS                       R12 R8 K263 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
      883 DUPTABLE                         R12 K271 [{"COLUMNS", "ICON_SIZE", "ROW_HEIGHT", "EXPANDED_ROW_HEIGHT", "LEFT_RIGHT_PADDING", "TOP_BUTTON_PADDING", "BORDER_SIZE"}]
      884 DUPTABLE                         R13 K277 [{"ICON", "TITLE", "CREATOR", "TAGS", "LENGTH"}]
      885 LOADN                            R14 0
      886 SETTABLEKS                       R14 R13 K272 ["ICON"]
      888 LOADN                            R14 1
      889 SETTABLEKS                       R14 R13 K273 ["TITLE"]
      891 LOADN                            R14 2
      892 SETTABLEKS                       R14 R13 K274 ["CREATOR"]
      894 LOADN                            R14 3
      895 SETTABLEKS                       R14 R13 K275 ["TAGS"]
      897 LOADN                            R14 4
      898 SETTABLEKS                       R14 R13 K276 ["LENGTH"]
      900 SETTABLEKS                       R13 R12 K264 ["COLUMNS"]
      902 LOADN                            R13 18
      903 SETTABLEKS                       R13 R12 K265 ["ICON_SIZE"]
      905 LOADN                            R13 30
      906 SETTABLEKS                       R13 R12 K266 ["ROW_HEIGHT"]
      908 LOADN                            R13 121
      909 SETTABLEKS                       R13 R12 K267 ["EXPANDED_ROW_HEIGHT"]
      911 MOVE                             R14 R2
      912 CALL                             R14 0 1
      913 JUMPIFNOT                        R14 ; [+2]
      914 LOADNIL                          R13
      915 JUMP                             ; [+1]
      916 LOADN                            R13 10
      917 SETTABLEKS                       R13 R12 K268 ["LEFT_RIGHT_PADDING"]
      919 MOVE                             R14 R2
      920 CALL                             R14 0 1
      921 JUMPIFNOT                        R14 ; [+2]
      922 LOADNIL                          R13
      923 JUMP                             ; [+1]
      924 LOADN                            R13 6
      925 SETTABLEKS                       R13 R12 K269 ["TOP_BUTTON_PADDING"]
      927 MOVE                             R14 R2
      928 CALL                             R14 0 1
      929 JUMPIFNOT                        R14 ; [+2]
      930 LOADNIL                          R13
      931 JUMP                             ; [+1]
      932 LOADN                            R13 2
      933 SETTABLEKS                       R13 R12 K270 ["BORDER_SIZE"]
      935 SETTABLEKS                       R12 R8 K278 ["AUDIO_ROW"]
      937 MOVE                             R12 R1
      938 CALL                             R12 0 1
      939 JUMPIFNOT                        R12 ; [+27]
      940 DUPTABLE                         R12 K280 [{"ICON_SIZE", "LEFT_MOST_PADDING"}]
      941 LOADN                            R13 14
      942 SETTABLEKS                       R13 R12 K265 ["ICON_SIZE"]
      944 LOADN                            R13 5
      945 SETTABLEKS                       R13 R12 K279 ["LEFT_MOST_PADDING"]
      947 SETTABLEKS                       R12 R8 K281 ["ASSET_ROW"]
      949 DUPTABLE                         R12 K285 [{"ICON", "NAME", "CREATOR", "DATE_CREATED", "DATE_UPDATED"}]
      950 LOADK                            R13 K16 ["StudioService"]
      951 SETTABLEKS                       R13 R12 K272 ["ICON"]
      953 LOADK                            R13 K26 ["Enum"]
      954 SETTABLEKS                       R13 R12 K282 ["NAME"]
      956 LOADK                            R13 K18 ["Types"]
      957 SETTABLEKS                       R13 R12 K274 ["CREATOR"]
      959 LOADK                            R13 K27 ["Font"]
      960 SETTABLEKS                       R13 R12 K283 ["DATE_CREATED"]
      962 LOADK                            R13 K28 ["SourceSans"]
      963 SETTABLEKS                       R13 R12 K284 ["DATE_UPDATED"]
      965 SETTABLEKS                       R12 R8 K286 ["ASSET_ROW_COLUMNS"]
      967 MOVE                             R12 R1
      968 CALL                             R12 0 1
      969 JUMPIF                           R12 ; [+3]
      970 MOVE                             R12 R2
      971 CALL                             R12 0 1
      972 JUMPIFNOT                        R12 ; [+12]
      973 DUPTABLE                         R12 K287 [{"BORDER_SIZE", "LEFT_RIGHT_PADDING", "TOP_BUTTON_PADDING"}]
      974 LOADN                            R13 2
      975 SETTABLEKS                       R13 R12 K270 ["BORDER_SIZE"]
      977 LOADN                            R13 10
      978 SETTABLEKS                       R13 R12 K268 ["LEFT_RIGHT_PADDING"]
      980 LOADN                            R13 6
      981 SETTABLEKS                       R13 R12 K269 ["TOP_BUTTON_PADDING"]
      983 SETTABLEKS                       R12 R8 K288 ["ITEM_ROW"]
      985 DUPTABLE                         R12 K294 [{"ARTIST", "CATEGORIES", "GENRE", "ALBUM", "AUDIO_TYPE"}]
      986 LOADK                            R13 K39 ["FONT_TILE_HEIGHT"]
      987 SETTABLEKS                       R13 R12 K289 ["ARTIST"]
      989 LOADK                            R13 K40 ["HOME"]
      990 SETTABLEKS                       R13 R12 K290 ["CATEGORIES"]
      992 LOADK                            R13 K41 ["SUBCATEGORY"]
      993 SETTABLEKS                       R13 R12 K291 ["GENRE"]
      995 LOADK                            R13 K42 ["ALL_SUBCATEGORIES"]
      996 SETTABLEKS                       R13 R12 K292 ["ALBUM"]
      998 LOADK                            R13 K43 ["RESULTS"]
      999 SETTABLEKS                       R13 R12 K293 ["AUDIO_TYPE"]
     1001 SETTABLEKS                       R12 R8 K300 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
     1003 DUPTABLE                         R12 K302 [{"RobloxGlobal"}]
     1004 LOADK                            R13 K45 ["Home"]
     1005 SETTABLEKS                       R13 R12 K301 ["RobloxGlobal"]
     1007 SETTABLEKS                       R12 R8 K303 ["DataSharingLicenseTypes"]
     1009 LOADK                            R12 K48 ["Results"]
     1010 SETTABLEKS                       R12 R8 K305 ["DISCOVER_NEW_AUDIO_SWIMLANE_NAME"]
     1012 NEWTABLE                         R12 0 4
     1014 LOADK                            R13 K50 ["HOMEVIEW_SEARCH_CATEGORY"]
     1015 LOADK                            R14 K51 [PROTO_0]
     1016 LOADK                            R15 K52 ["getClassIcon"]
     1017 LOADK                            R16 K53 ["Rect"]
     1018 SETLIST                          R12 R13 4 [1]
     1020 SETTABLEKS                       R12 R8 K310 ["DISCOVER_NEW_AUDIO_SWIMLANE_TILES"]
     1022 DUPTABLE                         R12 K313 [{"Studio", "WebView"}]
     1023 LOADK                            R13 K58 ["SCROLLBAR_PADDING"]
     1024 SETTABLEKS                       R13 R12 K311 ["Studio"]
     1026 LOADK                            R13 K59 ["SCROLLBAR_BACKGROUND_THICKNESS"]
     1027 SETTABLEKS                       R13 R12 K312 ["WebView"]
     1029 SETTABLEKS                       R12 R8 K316 ["ANALYTICS_TARGET"]
     1031 MOVE                             R12 R3
     1032 MOVE                             R13 R8
     1033 LOADK                            R14 K61 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
     1034 CALL                             R12 2 -1
     1035 RETURN                           R12 -1
