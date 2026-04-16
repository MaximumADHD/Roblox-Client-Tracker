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
       14 GETTABLEKS                       R3 R2 K8 ["createGetFFlag"]
       16 LOADK                            R4 K9 ["FoundationTextAreaTokenBasedWidth2"]
       17 CALL                             R3 1 1
       18 CALL                             R3 0 1
       19 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       21 LOADK                            R5 K10 ["FoundationTextInputAlignStrokeBehavior"]
       22 CALL                             R4 1 1
       23 CALL                             R4 0 1
       24 GETTABLEKS                       R5 R2 K8 ["createGetFFlag"]
       26 LOADK                            R6 K11 ["FoundationBindableStateLayer"]
       27 CALL                             R5 1 1
       28 CALL                             R5 0 1
       29 GETTABLEKS                       R6 R2 K8 ["createGetFFlag"]
       31 LOADK                            R7 K12 ["FoundationInternalTextInputVariants"]
       32 CALL                             R6 1 1
       33 CALL                             R6 0 1
       34 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       36 LOADK                            R8 K13 ["FoundationInternalTextInputCornerRadius"]
       37 CALL                             R7 1 1
       38 CALL                             R7 0 1
       39 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       41 LOADK                            R9 K14 ["FoundationTextInputSingleLineCircleRadius"]
       42 CALL                             R8 1 1
       43 CALL                             R8 0 1
       44 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       46 LOADK                            R10 K15 ["FoundationNumberInputTextFix"]
       47 CALL                             R9 1 1
       48 CALL                             R9 0 1
       49 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
       51 LOADK                            R11 K16 ["FoundationDisableStyleProviderDerives"]
       52 CALL                             R10 1 1
       53 CALL                             R10 0 1
       54 NEWTABLE                         R11 64 0
       56 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
       58 LOADK                            R13 K17 ["FoundationUsePath2DSpinner"]
       59 CALL                             R12 1 1
       60 CALL                             R12 0 1
       61 SETTABLEKS                       R12 R11 K17 ["FoundationUsePath2DSpinner"]
       63 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
       65 LOADK                            R13 K18 ["FoundationStatusIndicatorVariantExperiment"]
       66 CALL                             R12 1 1
       67 CALL                             R12 0 1
       68 SETTABLEKS                       R12 R11 K18 ["FoundationStatusIndicatorVariantExperiment"]
       70 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
       72 LOADK                            R13 K19 ["FoundationToggleVisualUpdate"]
       73 CALL                             R12 1 1
       74 CALL                             R12 0 1
       75 SETTABLEKS                       R12 R11 K19 ["FoundationToggleVisualUpdate"]
       77 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
       79 LOADK                            R13 K20 ["FoundationOverlayLuaAppInsetsFix2"]
       80 CALL                             R12 1 1
       81 CALL                             R12 0 1
       82 SETTABLEKS                       R12 R11 K21 ["FoundationOverlayLuaAppInsetsFix"]
       84 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
       86 LOADK                            R13 K22 ["FoundationDialogBodyUpdate1"]
       87 CALL                             R12 1 1
       88 CALL                             R12 0 1
       89 SETTABLEKS                       R12 R11 K23 ["FoundationDialogBodyUpdate"]
       91 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
       93 LOADK                            R13 K24 ["FoundationOverlayDisplayOrder"]
       94 CALL                             R12 1 1
       95 CALL                             R12 0 1
       96 SETTABLEKS                       R12 R11 K24 ["FoundationOverlayDisplayOrder"]
       98 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      100 LOADK                            R13 K25 ["FoundationTabsDisableScrollSelection"]
      101 CALL                             R12 1 1
      102 CALL                             R12 0 1
      103 SETTABLEKS                       R12 R11 K25 ["FoundationTabsDisableScrollSelection"]
      105 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      107 LOADK                            R13 K26 ["FoundationAddHeightPropToCenterSheet2"]
      108 CALL                             R12 1 1
      109 CALL                             R12 0 1
      110 SETTABLEKS                       R12 R11 K27 ["FoundationAddHeightPropToCenterSheet"]
      112 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      114 LOADK                            R13 K28 ["FoundationSheetActionsSinkInput"]
      115 CALL                             R12 1 1
      116 CALL                             R12 0 1
      117 SETTABLEKS                       R12 R11 K28 ["FoundationSheetActionsSinkInput"]
      119 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      121 LOADK                            R13 K29 ["FoundationSheetFixClosingSwipe"]
      122 CALL                             R12 1 1
      123 CALL                             R12 0 1
      124 SETTABLEKS                       R12 R11 K29 ["FoundationSheetFixClosingSwipe"]
      126 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      128 LOADK                            R13 K30 ["FoundationSheetHeaderSmallerPadding"]
      129 CALL                             R12 1 1
      130 CALL                             R12 0 1
      131 SETTABLEKS                       R12 R11 K30 ["FoundationSheetHeaderSmallerPadding"]
      133 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      135 LOADK                            R13 K31 ["FoundationAddUtilityVariantToChip"]
      136 CALL                             R12 1 1
      137 CALL                             R12 0 1
      138 SETTABLEKS                       R12 R11 K31 ["FoundationAddUtilityVariantToChip"]
      140 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      142 LOADK                            R13 K32 ["FoundationBaseMenuDelayVisible"]
      143 CALL                             R12 1 1
      144 CALL                             R12 0 1
      145 SETTABLEKS                       R12 R11 K32 ["FoundationBaseMenuDelayVisible"]
      147 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      149 LOADK                            R13 K33 ["FoundationPopoverConditionalRender"]
      150 CALL                             R12 1 1
      151 CALL                             R12 0 1
      152 SETTABLEKS                       R12 R11 K33 ["FoundationPopoverConditionalRender"]
      154 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      156 LOADK                            R13 K34 ["FoundationSideSheetNewWidthCalculation"]
      157 CALL                             R12 1 1
      158 CALL                             R12 0 1
      159 SETTABLEKS                       R12 R11 K34 ["FoundationSideSheetNewWidthCalculation"]
      161 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      163 LOADK                            R13 K35 ["FoundationNumberInputFixControlSizes"]
      164 CALL                             R12 1 1
      165 CALL                             R12 0 1
      166 SETTABLEKS                       R12 R11 K35 ["FoundationNumberInputFixControlSizes"]
      168 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      170 LOADK                            R13 K36 ["FoundationSideSheetFixNewWidth"]
      171 CALL                             R12 1 1
      172 CALL                             R12 0 1
      173 SETTABLEKS                       R12 R11 K36 ["FoundationSideSheetFixNewWidth"]
      175 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      177 LOADK                            R13 K37 ["FoundationColorPickerPartialHSV"]
      178 CALL                             R12 1 1
      179 CALL                             R12 0 1
      180 SETTABLEKS                       R12 R11 K37 ["FoundationColorPickerPartialHSV"]
      182 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      184 LOADK                            R13 K38 ["FoundationBaseMenuItemImageRadius"]
      185 CALL                             R12 1 1
      186 CALL                             R12 0 1
      187 SETTABLEKS                       R12 R11 K38 ["FoundationBaseMenuItemImageRadius"]
      189 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      191 LOADK                            R13 K39 ["FoundationUseGetInsetArea"]
      192 CALL                             R12 1 1
      193 CALL                             R12 0 1
      194 SETTABLEKS                       R12 R11 K39 ["FoundationUseGetInsetArea"]
      196 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      198 LOADK                            R13 K40 ["FoundationAllowMockDataModel"]
      199 CALL                             R12 1 1
      200 CALL                             R12 0 1
      201 SETTABLEKS                       R12 R11 K40 ["FoundationAllowMockDataModel"]
      203 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      205 LOADK                            R13 K41 ["FoundationBuildingBlocksRemoveDashUnion"]
      206 CALL                             R12 1 1
      207 CALL                             R12 0 1
      208 SETTABLEKS                       R12 R11 K41 ["FoundationBuildingBlocksRemoveDashUnion"]
      210 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      212 LOADK                            R13 K42 ["FoundationDropdownControlIconFix"]
      213 CALL                             R12 1 1
      214 CALL                             R12 0 1
      215 SETTABLEKS                       R12 R11 K42 ["FoundationDropdownControlIconFix"]
      217 SETTABLEKS                       R7 R11 K13 ["FoundationInternalTextInputCornerRadius"]
      219 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      221 LOADK                            R13 K43 ["FoundationOverlayKeyboardAwareness"]
      222 CALL                             R12 1 1
      223 CALL                             R12 0 1
      224 SETTABLEKS                       R12 R11 K43 ["FoundationOverlayKeyboardAwareness"]
      226 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      228 LOADK                            R13 K44 ["FoundationSheetActionsNotSelectable"]
      229 CALL                             R12 1 1
      230 CALL                             R12 0 1
      231 SETTABLEKS                       R12 R11 K44 ["FoundationSheetActionsNotSelectable"]
      233 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      235 LOADK                            R13 K45 ["FoundationSheetContentSelectable"]
      236 CALL                             R12 1 1
      237 CALL                             R12 0 1
      238 SETTABLEKS                       R12 R11 K45 ["FoundationSheetContentSelectable"]
      240 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      242 LOADK                            R13 K46 ["FoundationSheetPreventCloseOnResize"]
      243 CALL                             R12 1 1
      244 CALL                             R12 0 1
      245 SETTABLEKS                       R12 R11 K46 ["FoundationSheetPreventCloseOnResize"]
      247 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      249 LOADK                            R13 K47 ["FoundationSheetReducedMotion"]
      250 CALL                             R12 1 1
      251 CALL                             R12 0 1
      252 SETTABLEKS                       R12 R11 K47 ["FoundationSheetReducedMotion"]
      254 SETTABLEKS                       R4 R11 K10 ["FoundationTextInputAlignStrokeBehavior"]
      256 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      258 LOADK                            R13 K48 ["FoundationViewRemoveDashUnion"]
      259 CALL                             R12 1 1
      260 CALL                             R12 0 1
      261 SETTABLEKS                       R12 R11 K48 ["FoundationViewRemoveDashUnion"]
      263 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      265 LOADK                            R13 K49 ["FFlagFoundationDateTimePickerDSTFix"]
      266 CALL                             R12 1 1
      267 CALL                             R12 0 1
      268 SETTABLEKS                       R12 R11 K49 ["FFlagFoundationDateTimePickerDSTFix"]
      270 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      272 LOADK                            R13 K50 ["FoundationBaseMenuSubmenuSupport"]
      273 CALL                             R12 1 1
      274 CALL                             R12 0 1
      275 SETTABLEKS                       R12 R11 K50 ["FoundationBaseMenuSubmenuSupport"]
      277 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      279 LOADK                            R13 K51 ["FoundationCenterSheetUseStableContainer"]
      280 CALL                             R12 1 1
      281 CALL                             R12 0 1
      282 SETTABLEKS                       R12 R11 K51 ["FoundationCenterSheetUseStableContainer"]
      284 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      286 LOADK                            R13 K52 ["FoundationCleanupTextInputPolyfill2"]
      287 CALL                             R12 1 1
      288 CALL                             R12 0 1
      289 SETTABLEKS                       R12 R11 K53 ["FoundationCleanupTextInputPolyfill"]
      291 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      293 LOADK                            R13 K54 ["FoundationColorPickerDesignUpdate"]
      294 CALL                             R12 1 1
      295 CALL                             R12 0 1
      296 SETTABLEKS                       R12 R11 K54 ["FoundationColorPickerDesignUpdate"]
      298 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      300 LOADK                            R13 K55 ["FoundationElevationKeepSiblingZIndex2"]
      301 CALL                             R12 1 1
      302 CALL                             R12 0 1
      303 SETTABLEKS                       R12 R11 K56 ["FoundationElevationKeepSiblingZIndex"]
      305 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      307 LOADK                            R13 K57 ["FoundationImageSafeLookup"]
      308 CALL                             R12 1 1
      309 CALL                             R12 0 1
      310 SETTABLEKS                       R12 R11 K57 ["FoundationImageSafeLookup"]
      312 AND                              R12 R6 R4
      313 SETTABLEKS                       R12 R11 K12 ["FoundationInternalTextInputVariants"]
      315 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      317 LOADK                            R13 K58 ["FoundationTruncateBadgeText2"]
      318 CALL                             R12 1 1
      319 CALL                             R12 0 1
      320 SETTABLEKS                       R12 R11 K59 ["FoundationTruncateBadgeText"]
      322 SETTABLEKS                       R5 R11 K11 ["FoundationBindableStateLayer"]
      324 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      326 LOADK                            R13 K60 ["FoundationDateTimePickerScreenSize"]
      327 CALL                             R12 1 1
      328 CALL                             R12 0 1
      329 SETTABLEKS                       R12 R11 K60 ["FoundationDateTimePickerScreenSize"]
      331 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      333 LOADK                            R13 K61 ["FoundationImageOnLoadedCallback"]
      334 CALL                             R12 1 1
      335 CALL                             R12 0 1
      336 SETTABLEKS                       R12 R11 K61 ["FoundationImageOnLoadedCallback"]
      338 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      340 LOADK                            R13 K62 ["FoundationInternalTextInputDisabledTransparency"]
      341 CALL                             R12 1 1
      342 CALL                             R12 0 1
      343 SETTABLEKS                       R12 R11 K62 ["FoundationInternalTextInputDisabledTransparency"]
      345 AND                              R12 R8 R7
      346 SETTABLEKS                       R12 R11 K14 ["FoundationTextInputSingleLineCircleRadius"]
      348 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      350 LOADK                            R13 K63 ["FoundationTextSizeDefaults"]
      351 CALL                             R12 1 1
      352 CALL                             R12 0 1
      353 SETTABLEKS                       R12 R11 K63 ["FoundationTextSizeDefaults"]
      355 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      357 LOADK                            R13 K64 ["FoundationDateTimePickerDefaultDateFix"]
      358 CALL                             R12 1 1
      359 CALL                             R12 0 1
      360 SETTABLEKS                       R12 R11 K64 ["FoundationDateTimePickerDefaultDateFix"]
      362 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      364 LOADK                            R13 K65 ["FoundationBottomSheetImproveSpring2"]
      365 CALL                             R12 1 1
      366 CALL                             R12 0 1
      367 SETTABLEKS                       R12 R11 K66 ["FoundationBottomSheetImproveSpring"]
      369 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      371 LOADK                            R13 K67 ["FoundationDialogTitleEmphasisFix"]
      372 CALL                             R12 1 1
      373 CALL                             R12 0 1
      374 SETTABLEKS                       R12 R11 K67 ["FoundationDialogTitleEmphasisFix"]
      376 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      378 LOADK                            R13 K68 ["FoundationGuiObjectInputSinkProperty"]
      379 CALL                             R12 1 1
      380 CALL                             R12 0 1
      381 SETTABLEKS                       R12 R11 K68 ["FoundationGuiObjectInputSinkProperty"]
      383 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      385 LOADK                            R13 K69 ["FoundationSystemBannerUseSharedAlertActions"]
      386 CALL                             R12 1 1
      387 CALL                             R12 0 1
      388 SETTABLEKS                       R12 R11 K69 ["FoundationSystemBannerUseSharedAlertActions"]
      390 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      392 LOADK                            R13 K70 ["FoundationDialogAnimation"]
      393 CALL                             R12 1 1
      394 CALL                             R12 0 1
      395 SETTABLEKS                       R12 R11 K70 ["FoundationDialogAnimation"]
      397 SETTABLEKS                       R10 R11 K16 ["FoundationDisableStyleProviderDerives"]
      399 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      401 LOADK                            R13 K71 ["FoundationDisableTokenScaling2"]
      402 CALL                             R12 1 1
      403 CALL                             R12 0 1
      404 SETTABLEKS                       R12 R11 K72 ["FoundationDisableTokenScaling"]
      406 SETTABLEKS                       R9 R11 K15 ["FoundationNumberInputTextFix"]
      408 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      410 LOADK                            R13 K73 ["FoundationPopoverPluginSupport"]
      411 CALL                             R12 1 1
      412 CALL                             R12 0 1
      413 SETTABLEKS                       R12 R11 K73 ["FoundationPopoverPluginSupport"]
      415 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      417 LOADK                            R13 K74 ["FoundationTranslatorLocalizationRecovery"]
      418 CALL                             R12 1 1
      419 CALL                             R12 0 1
      420 SETTABLEKS                       R12 R11 K74 ["FoundationTranslatorLocalizationRecovery"]
      422 MOVE                             R12 R10
      423 JUMPIFNOT                        R12 ; [+5]
      424 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      426 LOADK                            R13 K75 ["FoundationUseStyleSheetRegistry"]
      427 CALL                             R12 1 1
      428 CALL                             R12 0 1
      429 SETTABLEKS                       R12 R11 K75 ["FoundationUseStyleSheetRegistry"]
      431 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      433 LOADK                            R13 K76 ["FoundationDialogContentScrollbarFix"]
      434 CALL                             R12 1 1
      435 CALL                             R12 0 1
      436 SETTABLEKS                       R12 R11 K76 ["FoundationDialogContentScrollbarFix"]
      438 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      440 LOADK                            R13 K77 ["FoundationDialogContentScrollbarLayout"]
      441 CALL                             R12 1 1
      442 CALL                             R12 0 1
      443 SETTABLEKS                       R12 R11 K77 ["FoundationDialogContentScrollbarLayout"]
      445 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      447 LOADK                            R13 K78 ["FoundationOverlayKeyboardAwarenessHardened"]
      448 CALL                             R12 1 1
      449 CALL                             R12 0 1
      450 SETTABLEKS                       R12 R11 K78 ["FoundationOverlayKeyboardAwarenessHardened"]
      452 SETTABLEKS                       R3 R11 K79 ["FoundationTextAreaTokenBasedWidth"]
      454 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      456 LOADK                            R13 K80 ["FoundationTranslatorUseScript"]
      457 CALL                             R12 1 1
      458 CALL                             R12 0 1
      459 SETTABLEKS                       R12 R11 K80 ["FoundationTranslatorUseScript"]
      461 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
      463 LOADK                            R13 K81 ["FoundationUseMainGuiUtility2"]
      464 CALL                             R12 1 1
      465 CALL                             R12 0 1
      466 SETTABLEKS                       R12 R11 K82 ["FoundationUseMainGuiUtility"]
      468 RETURN                           R11 1
