MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["SafeFlags"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 64 0
       16 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       18 LOADK                            R5 K9 ["FoundationDisableStylingPolyfill"]
       19 CALL                             R4 1 1
       20 CALL                             R4 0 1
       21 SETTABLEKS                       R4 R3 K9 ["FoundationDisableStylingPolyfill"]
       23 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       25 LOADK                            R5 K10 ["DebugFoundationWarnOnMultipleStyleLinks"]
       26 CALL                             R4 1 1
       27 CALL                             R4 0 1
       28 SETTABLEKS                       R4 R3 K11 ["FoundationWarnOnMultipleStyleLinks"]
       30 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       32 LOADK                            R5 K12 ["FoundationMigrateIconNames"]
       33 CALL                             R4 1 1
       34 CALL                             R4 0 1
       35 SETTABLEKS                       R4 R3 K12 ["FoundationMigrateIconNames"]
       37 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       39 LOADK                            R5 K13 ["FoundationUpdateBadgeDesign"]
       40 CALL                             R4 1 1
       41 CALL                             R4 0 1
       42 SETTABLEKS                       R4 R3 K13 ["FoundationUpdateBadgeDesign"]
       44 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       46 LOADK                            R5 K14 ["FoundationUsePath2DSpinner"]
       47 CALL                             R4 1 1
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K14 ["FoundationUsePath2DSpinner"]
       51 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       53 LOADK                            R5 K15 ["FoundationPopoverOnScreenKeyboard"]
       54 CALL                             R4 1 1
       55 CALL                             R4 0 1
       56 SETTABLEKS                       R4 R3 K15 ["FoundationPopoverOnScreenKeyboard"]
       58 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       60 LOADK                            R5 K16 ["FoundationBaseMenuBorderFix2"]
       61 CALL                             R4 1 1
       62 CALL                             R4 0 1
       63 SETTABLEKS                       R4 R3 K17 ["FoundationBaseMenuBorderFix"]
       65 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       67 LOADK                            R5 K18 ["FoundationNoArrowOnVirtualRef"]
       68 CALL                             R4 1 1
       69 CALL                             R4 0 1
       70 SETTABLEKS                       R4 R3 K18 ["FoundationNoArrowOnVirtualRef"]
       72 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       74 LOADK                            R5 K19 ["FoundationScrollingFrameBarSmaller"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K19 ["FoundationScrollingFrameBarSmaller"]
       79 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       81 LOADK                            R5 K20 ["FoundationScrollViewMoveClipOutside"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K20 ["FoundationScrollViewMoveClipOutside"]
       86 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       88 LOADK                            R5 K21 ["FoundationOverlayNoClip"]
       89 CALL                             R4 1 1
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K21 ["FoundationOverlayNoClip"]
       93 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       95 LOADK                            R5 K22 ["FoundationNumberInputSpinboxRespectSnap"]
       96 CALL                             R4 1 1
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K22 ["FoundationNumberInputSpinboxRespectSnap"]
      100 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      102 LOADK                            R5 K23 ["FoundationMenuWidthGrowth"]
      103 CALL                             R4 1 1
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R3 K23 ["FoundationMenuWidthGrowth"]
      107 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      109 LOADK                            R5 K24 ["FoundationDialogBodyUpdate"]
      110 CALL                             R4 1 1
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R3 K24 ["FoundationDialogBodyUpdate"]
      114 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      116 LOADK                            R5 K25 ["FoundationDialogHeroMediaGradientFix"]
      117 CALL                             R4 1 1
      118 CALL                             R4 0 1
      119 SETTABLEKS                       R4 R3 K25 ["FoundationDialogHeroMediaGradientFix"]
      121 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      123 LOADK                            R5 K26 ["FoundationTooltipTextAutosize"]
      124 CALL                             R4 1 1
      125 CALL                             R4 0 1
      126 SETTABLEKS                       R4 R3 K26 ["FoundationTooltipTextAutosize"]
      128 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      130 LOADK                            R5 K27 ["FoundationNumberInputInvalidError"]
      131 CALL                             R4 1 1
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K27 ["FoundationNumberInputInvalidError"]
      135 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      137 LOADK                            R5 K28 ["FoundationStatusIndicatorVariantExperiment"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K28 ["FoundationStatusIndicatorVariantExperiment"]
      142 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      144 LOADK                            R5 K29 ["FoundationBaseMenuScroll"]
      145 CALL                             R4 1 1
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K29 ["FoundationBaseMenuScroll"]
      149 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      151 LOADK                            R5 K30 ["FoundationFixUseScaledValueWarning"]
      152 CALL                             R4 1 1
      153 CALL                             R4 0 1
      154 SETTABLEKS                       R4 R3 K30 ["FoundationFixUseScaledValueWarning"]
      156 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      158 LOADK                            R5 K31 ["FoundationMigrateCryoToDash"]
      159 CALL                             R4 1 1
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K31 ["FoundationMigrateCryoToDash"]
      163 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      165 LOADK                            R5 K32 ["FoundationNumberInputRefAndCallbacks"]
      166 CALL                             R4 1 1
      167 CALL                             R4 0 1
      168 SETTABLEKS                       R4 R3 K32 ["FoundationNumberInputRefAndCallbacks"]
      170 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      172 LOADK                            R5 K33 ["FoundationDropdownGroups"]
      173 CALL                             R4 1 1
      174 CALL                             R4 0 1
      175 SETTABLEKS                       R4 R3 K33 ["FoundationDropdownGroups"]
      177 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      179 LOADK                            R5 K34 ["FoundationDialogBackdropColorUpdate"]
      180 CALL                             R4 1 1
      181 CALL                             R4 0 1
      182 SETTABLEKS                       R4 R3 K34 ["FoundationDialogBackdropColorUpdate"]
      184 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      186 LOADK                            R5 K35 ["FoundationLazyOverlayLoading"]
      187 CALL                             R4 1 1
      188 CALL                             R4 0 1
      189 SETTABLEKS                       R4 R3 K35 ["FoundationLazyOverlayLoading"]
      191 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      193 LOADK                            R5 K36 ["FoundationIconButtonBiggerBuilderIcons"]
      194 CALL                             R4 1 1
      195 CALL                             R4 0 1
      196 SETTABLEKS                       R4 R3 K36 ["FoundationIconButtonBiggerBuilderIcons"]
      198 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      200 LOADK                            R5 K37 ["FoundationOverlayProviderFrameTiming"]
      201 CALL                             R4 1 1
      202 CALL                             R4 0 1
      203 SETTABLEKS                       R4 R3 K37 ["FoundationOverlayProviderFrameTiming"]
      205 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      207 LOADK                            R5 K38 ["FoundationDialogRootZIndex2"]
      208 CALL                             R4 1 1
      209 CALL                             R4 0 1
      210 SETTABLEKS                       R4 R3 K39 ["FoundationDialogRootZIndex"]
      212 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      214 LOADK                            R5 K40 ["FoundationDialogOversizedBackdrop"]
      215 CALL                             R4 1 1
      216 CALL                             R4 0 1
      217 SETTABLEKS                       R4 R3 K40 ["FoundationDialogOversizedBackdrop"]
      219 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      221 LOADK                            R5 K41 ["FoundationDialogUpdateZIndex"]
      222 CALL                             R4 1 1
      223 CALL                             R4 0 1
      224 SETTABLEKS                       R4 R3 K41 ["FoundationDialogUpdateZIndex"]
      226 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      228 LOADK                            R5 K42 ["FoundationPopoverContentStateFix"]
      229 CALL                             R4 1 1
      230 CALL                             R4 0 1
      231 SETTABLEKS                       R4 R3 K42 ["FoundationPopoverContentStateFix"]
      233 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      235 LOADK                            R5 K43 ["FoundationPopoverOversizedBackdrop"]
      236 CALL                             R4 1 1
      237 CALL                             R4 0 1
      238 SETTABLEKS                       R4 R3 K43 ["FoundationPopoverOversizedBackdrop"]
      240 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      242 LOADK                            R5 K44 ["FoundationOverlayLuaAppInsetsFix2"]
      243 CALL                             R4 1 1
      244 CALL                             R4 0 1
      245 SETTABLEKS                       R4 R3 K45 ["FoundationOverlayLuaAppInsetsFix"]
      247 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      249 LOADK                            R5 K46 ["FoundationMenuItemStyles"]
      250 CALL                             R4 1 1
      251 CALL                             R4 0 1
      252 SETTABLEKS                       R4 R3 K46 ["FoundationMenuItemStyles"]
      254 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      256 LOADK                            R5 K47 ["FoundationElevationSystem"]
      257 CALL                             R4 1 1
      258 CALL                             R4 0 1
      259 SETTABLEKS                       R4 R3 K47 ["FoundationElevationSystem"]
      261 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      263 LOADK                            R5 K48 ["FoundationInternalInputSelectedStylesAndSpacing"]
      264 CALL                             R4 1 1
      265 CALL                             R4 0 1
      266 SETTABLEKS                       R4 R3 K48 ["FoundationInternalInputSelectedStylesAndSpacing"]
      268 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      270 LOADK                            R5 K49 ["FoundationSheetNoCenterSheetSmallScreens"]
      271 CALL                             R4 1 1
      272 CALL                             R4 0 1
      273 SETTABLEKS                       R4 R3 K49 ["FoundationSheetNoCenterSheetSmallScreens"]
      275 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      277 LOADK                            R5 K50 ["FoundationSheetCenterSheetNoShrink"]
      278 CALL                             R4 1 1
      279 CALL                             R4 0 1
      280 SETTABLEKS                       R4 R3 K50 ["FoundationSheetCenterSheetNoShrink"]
      282 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      284 LOADK                            R5 K51 ["FoundationSheetBottomSheetAutoSize"]
      285 CALL                             R4 1 1
      286 CALL                             R4 0 1
      287 SETTABLEKS                       R4 R3 K51 ["FoundationSheetBottomSheetAutoSize"]
      289 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      291 LOADK                            R5 K52 ["FoundationPopoverRootZIndex"]
      292 CALL                             R4 1 1
      293 CALL                             R4 0 1
      294 SETTABLEKS                       R4 R3 K52 ["FoundationPopoverRootZIndex"]
      296 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      298 LOADK                            R5 K53 ["FoundationDialogUpdateSelection"]
      299 CALL                             R4 1 1
      300 CALL                             R4 0 1
      301 SETTABLEKS                       R4 R3 K53 ["FoundationDialogUpdateSelection"]
      303 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      305 LOADK                            R5 K54 ["FoundationToggleVisualUpdate"]
      306 CALL                             R4 1 1
      307 CALL                             R4 0 1
      308 SETTABLEKS                       R4 R3 K54 ["FoundationToggleVisualUpdate"]
      310 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      312 LOADK                            R5 K55 ["FoundationPopoverOverflow"]
      313 CALL                             R4 1 1
      314 CALL                             R4 0 1
      315 SETTABLEKS                       R4 R3 K55 ["FoundationPopoverOverflow"]
      317 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      319 LOADK                            R5 K56 ["FoundationPopoverNegateAlignOffsetOnFlip"]
      320 CALL                             R4 1 1
      321 CALL                             R4 0 1
      322 SETTABLEKS                       R4 R3 K56 ["FoundationPopoverNegateAlignOffsetOnFlip"]
      324 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      326 LOADK                            R5 K57 ["FoundationFixBadgeAndIndicatorTextAlignment"]
      327 CALL                             R4 1 1
      328 CALL                             R4 0 1
      329 SETTABLEKS                       R4 R3 K57 ["FoundationFixBadgeAndIndicatorTextAlignment"]
      331 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      333 LOADK                            R5 K58 ["FoundationIconButtonNoListLayout"]
      334 CALL                             R4 1 1
      335 CALL                             R4 0 1
      336 SETTABLEKS                       R4 R3 K58 ["FoundationIconButtonNoListLayout"]
      338 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      340 LOADK                            R5 K59 ["FoundationPopoverFocusTrap"]
      341 CALL                             R4 1 1
      342 CALL                             R4 0 1
      343 SETTABLEKS                       R4 R3 K59 ["FoundationPopoverFocusTrap"]
      345 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      347 LOADK                            R5 K60 ["FoundationDateTimePickerTimeVariantEnabled"]
      348 CALL                             R4 1 1
      349 CALL                             R4 0 1
      350 SETTABLEKS                       R4 R3 K60 ["FoundationDateTimePickerTimeVariantEnabled"]
      352 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      354 LOADK                            R5 K61 ["FoundationInputInnerRadiusFix"]
      355 CALL                             R4 1 1
      356 CALL                             R4 0 1
      357 SETTABLEKS                       R4 R3 K61 ["FoundationInputInnerRadiusFix"]
      359 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      361 LOADK                            R5 K62 ["FoundationUseAlphaCompositingForStateLayer"]
      362 CALL                             R4 1 1
      363 CALL                             R4 0 1
      364 SETTABLEKS                       R4 R3 K62 ["FoundationUseAlphaCompositingForStateLayer"]
      366 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      368 LOADK                            R5 K63 ["FoundationDateTimePickerAnchorBugFixEnabled"]
      369 CALL                             R4 1 1
      370 CALL                             R4 0 1
      371 SETTABLEKS                       R4 R3 K63 ["FoundationDateTimePickerAnchorBugFixEnabled"]
      373 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      375 LOADK                            R5 K64 ["FoundationAnimateAccordion"]
      376 CALL                             R4 1 1
      377 CALL                             R4 0 1
      378 SETTABLEKS                       R4 R3 K64 ["FoundationAnimateAccordion"]
      380 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      382 LOADK                            R5 K65 ["FoundationToggleDefaultPlacement"]
      383 CALL                             R4 1 1
      384 CALL                             R4 0 1
      385 SETTABLEKS                       R4 R3 K65 ["FoundationToggleDefaultPlacement"]
      387 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      389 LOADK                            R5 K66 ["FoundationToggleEndPlacementJustifyContent"]
      390 CALL                             R4 1 1
      391 CALL                             R4 0 1
      392 SETTABLEKS                       R4 R3 K66 ["FoundationToggleEndPlacementJustifyContent"]
      394 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      396 LOADK                            R5 K67 ["FoundationCursorScaledSliceFix"]
      397 CALL                             R4 1 1
      398 CALL                             R4 0 1
      399 SETTABLEKS                       R4 R3 K67 ["FoundationCursorScaledSliceFix"]
      401 RETURN                           R3 1
