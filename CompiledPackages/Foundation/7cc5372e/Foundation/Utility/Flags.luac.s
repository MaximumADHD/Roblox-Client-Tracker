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
       67 LOADK                            R5 K18 ["FoundationScrollViewMoveClipOutside"]
       68 CALL                             R4 1 1
       69 CALL                             R4 0 1
       70 SETTABLEKS                       R4 R3 K18 ["FoundationScrollViewMoveClipOutside"]
       72 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       74 LOADK                            R5 K19 ["FoundationNumberInputSpinboxRespectSnap"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K19 ["FoundationNumberInputSpinboxRespectSnap"]
       79 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       81 LOADK                            R5 K20 ["FoundationMenuWidthGrowth"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K20 ["FoundationMenuWidthGrowth"]
       86 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       88 LOADK                            R5 K21 ["FoundationDialogBodyUpdate1"]
       89 CALL                             R4 1 1
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K22 ["FoundationDialogBodyUpdate"]
       93 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       95 LOADK                            R5 K23 ["FoundationDialogHeroMediaGradientFix"]
       96 CALL                             R4 1 1
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K23 ["FoundationDialogHeroMediaGradientFix"]
      100 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      102 LOADK                            R5 K24 ["FoundationTooltipTextAutosize"]
      103 CALL                             R4 1 1
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R3 K24 ["FoundationTooltipTextAutosize"]
      107 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      109 LOADK                            R5 K25 ["FoundationStatusIndicatorVariantExperiment"]
      110 CALL                             R4 1 1
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R3 K25 ["FoundationStatusIndicatorVariantExperiment"]
      114 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      116 LOADK                            R5 K26 ["FoundationBaseMenuScroll"]
      117 CALL                             R4 1 1
      118 CALL                             R4 0 1
      119 SETTABLEKS                       R4 R3 K26 ["FoundationBaseMenuScroll"]
      121 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      123 LOADK                            R5 K27 ["FoundationFixUseScaledValueWarning"]
      124 CALL                             R4 1 1
      125 CALL                             R4 0 1
      126 SETTABLEKS                       R4 R3 K27 ["FoundationFixUseScaledValueWarning"]
      128 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      130 LOADK                            R5 K28 ["FoundationMigrateCryoToDash"]
      131 CALL                             R4 1 1
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K28 ["FoundationMigrateCryoToDash"]
      135 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      137 LOADK                            R5 K29 ["FoundationNumberInputRefAndCallbacks"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K29 ["FoundationNumberInputRefAndCallbacks"]
      142 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      144 LOADK                            R5 K30 ["FoundationDropdownGroups"]
      145 CALL                             R4 1 1
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K30 ["FoundationDropdownGroups"]
      149 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      151 LOADK                            R5 K31 ["FoundationDialogBackdropColorUpdate"]
      152 CALL                             R4 1 1
      153 CALL                             R4 0 1
      154 SETTABLEKS                       R4 R3 K31 ["FoundationDialogBackdropColorUpdate"]
      156 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      158 LOADK                            R5 K32 ["FoundationIconButtonBiggerBuilderIcons"]
      159 CALL                             R4 1 1
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K32 ["FoundationIconButtonBiggerBuilderIcons"]
      163 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      165 LOADK                            R5 K33 ["FoundationOverlayProviderFrameTiming"]
      166 CALL                             R4 1 1
      167 CALL                             R4 0 1
      168 SETTABLEKS                       R4 R3 K33 ["FoundationOverlayProviderFrameTiming"]
      170 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      172 LOADK                            R5 K34 ["FoundationDialogRootZIndex2"]
      173 CALL                             R4 1 1
      174 CALL                             R4 0 1
      175 SETTABLEKS                       R4 R3 K35 ["FoundationDialogRootZIndex"]
      177 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      179 LOADK                            R5 K36 ["FoundationDialogOversizedBackdrop"]
      180 CALL                             R4 1 1
      181 CALL                             R4 0 1
      182 SETTABLEKS                       R4 R3 K36 ["FoundationDialogOversizedBackdrop"]
      184 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      186 LOADK                            R5 K37 ["FoundationDialogUpdateZIndex"]
      187 CALL                             R4 1 1
      188 CALL                             R4 0 1
      189 SETTABLEKS                       R4 R3 K37 ["FoundationDialogUpdateZIndex"]
      191 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      193 LOADK                            R5 K38 ["FoundationPopoverOversizedBackdrop"]
      194 CALL                             R4 1 1
      195 CALL                             R4 0 1
      196 SETTABLEKS                       R4 R3 K38 ["FoundationPopoverOversizedBackdrop"]
      198 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      200 LOADK                            R5 K39 ["FoundationOverlayLuaAppInsetsFix2"]
      201 CALL                             R4 1 1
      202 CALL                             R4 0 1
      203 SETTABLEKS                       R4 R3 K40 ["FoundationOverlayLuaAppInsetsFix"]
      205 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      207 LOADK                            R5 K41 ["FoundationMenuItemStyles"]
      208 CALL                             R4 1 1
      209 CALL                             R4 0 1
      210 SETTABLEKS                       R4 R3 K41 ["FoundationMenuItemStyles"]
      212 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      214 LOADK                            R5 K42 ["FoundationElevationSystem"]
      215 CALL                             R4 1 1
      216 CALL                             R4 0 1
      217 SETTABLEKS                       R4 R3 K42 ["FoundationElevationSystem"]
      219 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      221 LOADK                            R5 K43 ["FoundationInternalInputSelectedStylesAndSpacing"]
      222 CALL                             R4 1 1
      223 CALL                             R4 0 1
      224 SETTABLEKS                       R4 R3 K43 ["FoundationInternalInputSelectedStylesAndSpacing"]
      226 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      228 LOADK                            R5 K44 ["FoundationSheetNoCenterSheetSmallScreens"]
      229 CALL                             R4 1 1
      230 CALL                             R4 0 1
      231 SETTABLEKS                       R4 R3 K44 ["FoundationSheetNoCenterSheetSmallScreens"]
      233 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      235 LOADK                            R5 K45 ["FoundationSheetCenterSheetNoShrink"]
      236 CALL                             R4 1 1
      237 CALL                             R4 0 1
      238 SETTABLEKS                       R4 R3 K45 ["FoundationSheetCenterSheetNoShrink"]
      240 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      242 LOADK                            R5 K46 ["FoundationSheetBottomSheetAutoSize"]
      243 CALL                             R4 1 1
      244 CALL                             R4 0 1
      245 SETTABLEKS                       R4 R3 K46 ["FoundationSheetBottomSheetAutoSize"]
      247 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      249 LOADK                            R5 K47 ["FoundationPopoverRootZIndex"]
      250 CALL                             R4 1 1
      251 CALL                             R4 0 1
      252 SETTABLEKS                       R4 R3 K47 ["FoundationPopoverRootZIndex"]
      254 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      256 LOADK                            R5 K48 ["FoundationDialogUpdateSelection"]
      257 CALL                             R4 1 1
      258 CALL                             R4 0 1
      259 SETTABLEKS                       R4 R3 K48 ["FoundationDialogUpdateSelection"]
      261 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      263 LOADK                            R5 K49 ["FoundationToggleVisualUpdate"]
      264 CALL                             R4 1 1
      265 CALL                             R4 0 1
      266 SETTABLEKS                       R4 R3 K49 ["FoundationToggleVisualUpdate"]
      268 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      270 LOADK                            R5 K50 ["FoundationPopoverOverflow"]
      271 CALL                             R4 1 1
      272 CALL                             R4 0 1
      273 SETTABLEKS                       R4 R3 K50 ["FoundationPopoverOverflow"]
      275 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      277 LOADK                            R5 K51 ["FoundationPopoverNegateAlignOffsetOnFlip"]
      278 CALL                             R4 1 1
      279 CALL                             R4 0 1
      280 SETTABLEKS                       R4 R3 K51 ["FoundationPopoverNegateAlignOffsetOnFlip"]
      282 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      284 LOADK                            R5 K52 ["FoundationFixBadgeAndIndicatorTextAlignment"]
      285 CALL                             R4 1 1
      286 CALL                             R4 0 1
      287 SETTABLEKS                       R4 R3 K52 ["FoundationFixBadgeAndIndicatorTextAlignment"]
      289 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      291 LOADK                            R5 K53 ["FoundationIconButtonNoListLayout"]
      292 CALL                             R4 1 1
      293 CALL                             R4 0 1
      294 SETTABLEKS                       R4 R3 K53 ["FoundationIconButtonNoListLayout"]
      296 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      298 LOADK                            R5 K54 ["FoundationPopoverFocusTrap"]
      299 CALL                             R4 1 1
      300 CALL                             R4 0 1
      301 SETTABLEKS                       R4 R3 K54 ["FoundationPopoverFocusTrap"]
      303 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      305 LOADK                            R5 K55 ["FoundationDateTimePickerTimeVariantEnabled"]
      306 CALL                             R4 1 1
      307 CALL                             R4 0 1
      308 SETTABLEKS                       R4 R3 K55 ["FoundationDateTimePickerTimeVariantEnabled"]
      310 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      312 LOADK                            R5 K56 ["FoundationInputInnerRadiusFix"]
      313 CALL                             R4 1 1
      314 CALL                             R4 0 1
      315 SETTABLEKS                       R4 R3 K56 ["FoundationInputInnerRadiusFix"]
      317 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      319 LOADK                            R5 K57 ["FoundationUseAlphaCompositingForStateLayer"]
      320 CALL                             R4 1 1
      321 CALL                             R4 0 1
      322 SETTABLEKS                       R4 R3 K57 ["FoundationUseAlphaCompositingForStateLayer"]
      324 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      326 LOADK                            R5 K58 ["FoundationDateTimePickerAnchorBugFixEnabled"]
      327 CALL                             R4 1 1
      328 CALL                             R4 0 1
      329 SETTABLEKS                       R4 R3 K58 ["FoundationDateTimePickerAnchorBugFixEnabled"]
      331 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      333 LOADK                            R5 K59 ["FoundationAnimateAccordion"]
      334 CALL                             R4 1 1
      335 CALL                             R4 0 1
      336 SETTABLEKS                       R4 R3 K59 ["FoundationAnimateAccordion"]
      338 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      340 LOADK                            R5 K60 ["FoundationToggleDefaultPlacement"]
      341 CALL                             R4 1 1
      342 CALL                             R4 0 1
      343 SETTABLEKS                       R4 R3 K60 ["FoundationToggleDefaultPlacement"]
      345 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      347 LOADK                            R5 K61 ["FoundationToggleEndPlacementJustifyContent"]
      348 CALL                             R4 1 1
      349 CALL                             R4 0 1
      350 SETTABLEKS                       R4 R3 K61 ["FoundationToggleEndPlacementJustifyContent"]
      352 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      354 LOADK                            R5 K62 ["FoundationCursorScaledSliceFix"]
      355 CALL                             R4 1 1
      356 CALL                             R4 0 1
      357 SETTABLEKS                       R4 R3 K62 ["FoundationCursorScaledSliceFix"]
      359 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      361 LOADK                            R5 K63 ["FoundationFixOptionSelectorGroupItemSize"]
      362 CALL                             R4 1 1
      363 CALL                             R4 0 1
      364 SETTABLEKS                       R4 R3 K63 ["FoundationFixOptionSelectorGroupItemSize"]
      366 RETURN                           R3 1
