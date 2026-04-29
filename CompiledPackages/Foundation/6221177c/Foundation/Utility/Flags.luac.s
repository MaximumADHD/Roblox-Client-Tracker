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
       16 LOADK                            R4 K9 ["FoundationNumberInputTextFix"]
       17 CALL                             R3 1 1
       18 CALL                             R3 0 1
       19 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       21 LOADK                            R5 K10 ["FoundationNumberInputBindableValue"]
       22 CALL                             R4 1 1
       23 CALL                             R4 0 1
       24 GETTABLEKS                       R5 R2 K8 ["createGetFFlag"]
       26 LOADK                            R6 K11 ["FoundationDisableStyleProviderDerives"]
       27 CALL                             R5 1 1
       28 CALL                             R5 0 1
       29 GETTABLEKS                       R6 R2 K8 ["createGetFFlag"]
       31 LOADK                            R7 K12 ["FoundationSharedInputVariants"]
       32 CALL                             R6 1 1
       33 CALL                             R6 0 1
       34 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       36 LOADK                            R8 K13 ["FoundationNumberInputVariant"]
       37 CALL                             R7 1 1
       38 CALL                             R7 0 1
       39 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       41 LOADK                            R9 K14 ["FoundationInputFieldFixDisabled"]
       42 CALL                             R8 1 1
       43 CALL                             R8 0 1
       44 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       46 LOADK                            R10 K15 ["FoundationTextInputDisabledField"]
       47 CALL                             R9 1 1
       48 CALL                             R9 0 1
       49 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
       51 LOADK                            R11 K16 ["FoundationNumberInputDisabledField"]
       52 CALL                             R10 1 1
       53 CALL                             R10 0 1
       54 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
       56 LOADK                            R12 K17 ["FoundationCleanupTextInputPolyfill3"]
       57 CALL                             R11 1 1
       58 CALL                             R11 0 1
       59 GETTABLEKS                       R12 R2 K8 ["createGetFFlag"]
       61 LOADK                            R13 K18 ["FoundationInputVariantsConsolidateContainer"]
       62 CALL                             R12 1 1
       63 CALL                             R12 0 1
       64 NEWTABLE                         R13 128 0
       66 SETTABLEKS                       R8 R13 K14 ["FoundationInputFieldFixDisabled"]
       68 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
       70 LOADK                            R15 K19 ["FoundationInternalTextInputClearButton"]
       71 CALL                             R14 1 1
       72 CALL                             R14 0 1
       73 SETTABLEKS                       R14 R13 K19 ["FoundationInternalTextInputClearButton"]
       75 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
       77 LOADK                            R15 K20 ["FoundationMutedDropdownArrow"]
       78 CALL                             R14 1 1
       79 CALL                             R14 0 1
       80 SETTABLEKS                       R14 R13 K20 ["FoundationMutedDropdownArrow"]
       82 AND                              R14 R10 R8
       83 SETTABLEKS                       R14 R13 K16 ["FoundationNumberInputDisabledField"]
       85 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
       87 LOADK                            R15 K21 ["FoundationReducedMotionAccordion"]
       88 CALL                             R14 1 1
       89 CALL                             R14 0 1
       90 SETTABLEKS                       R14 R13 K21 ["FoundationReducedMotionAccordion"]
       92 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
       94 LOADK                            R15 K22 ["FoundationSheetFullBleed"]
       95 CALL                             R14 1 1
       96 CALL                             R14 0 1
       97 SETTABLEKS                       R14 R13 K22 ["FoundationSheetFullBleed"]
       99 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      101 LOADK                            R15 K23 ["FoundationTabsNavArrowsOnlyOnHover"]
      102 CALL                             R14 1 1
      103 CALL                             R14 0 1
      104 SETTABLEKS                       R14 R13 K23 ["FoundationTabsNavArrowsOnlyOnHover"]
      106 AND                              R14 R9 R8
      107 SETTABLEKS                       R14 R13 K15 ["FoundationTextInputDisabledField"]
      109 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      111 LOADK                            R15 K24 ["FoundationUsePath2DSpinner"]
      112 CALL                             R14 1 1
      113 CALL                             R14 0 1
      114 SETTABLEKS                       R14 R13 K24 ["FoundationUsePath2DSpinner"]
      116 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      118 LOADK                            R15 K25 ["FoundationStatusIndicatorVariantExperiment"]
      119 CALL                             R14 1 1
      120 CALL                             R14 0 1
      121 SETTABLEKS                       R14 R13 K25 ["FoundationStatusIndicatorVariantExperiment"]
      123 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      125 LOADK                            R15 K26 ["FoundationToggleVisualUpdate"]
      126 CALL                             R14 1 1
      127 CALL                             R14 0 1
      128 SETTABLEKS                       R14 R13 K26 ["FoundationToggleVisualUpdate"]
      130 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      132 LOADK                            R15 K27 ["FoundationOverlayLuaAppInsetsFix2"]
      133 CALL                             R14 1 1
      134 CALL                             R14 0 1
      135 SETTABLEKS                       R14 R13 K28 ["FoundationOverlayLuaAppInsetsFix"]
      137 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      139 LOADK                            R15 K29 ["FoundationDialogBodyUpdate1"]
      140 CALL                             R14 1 1
      141 CALL                             R14 0 1
      142 SETTABLEKS                       R14 R13 K30 ["FoundationDialogBodyUpdate"]
      144 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      146 LOADK                            R15 K31 ["FoundationOverlayDisplayOrder"]
      147 CALL                             R14 1 1
      148 CALL                             R14 0 1
      149 SETTABLEKS                       R14 R13 K31 ["FoundationOverlayDisplayOrder"]
      151 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      153 LOADK                            R15 K32 ["FoundationTabsDisableScrollSelection"]
      154 CALL                             R14 1 1
      155 CALL                             R14 0 1
      156 SETTABLEKS                       R14 R13 K32 ["FoundationTabsDisableScrollSelection"]
      158 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      160 LOADK                            R15 K33 ["FoundationAddUtilityVariantToChip"]
      161 CALL                             R14 1 1
      162 CALL                             R14 0 1
      163 SETTABLEKS                       R14 R13 K33 ["FoundationAddUtilityVariantToChip"]
      165 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      167 LOADK                            R15 K34 ["FoundationBaseMenuDelayVisible"]
      168 CALL                             R14 1 1
      169 CALL                             R14 0 1
      170 SETTABLEKS                       R14 R13 K34 ["FoundationBaseMenuDelayVisible"]
      172 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      174 LOADK                            R15 K35 ["FoundationPopoverConditionalRender"]
      175 CALL                             R14 1 1
      176 CALL                             R14 0 1
      177 SETTABLEKS                       R14 R13 K35 ["FoundationPopoverConditionalRender"]
      179 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      181 LOADK                            R15 K36 ["FoundationSideSheetNewWidthCalculation"]
      182 CALL                             R14 1 1
      183 CALL                             R14 0 1
      184 SETTABLEKS                       R14 R13 K36 ["FoundationSideSheetNewWidthCalculation"]
      186 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      188 LOADK                            R15 K37 ["FoundationSideSheetFixNewWidth"]
      189 CALL                             R14 1 1
      190 CALL                             R14 0 1
      191 SETTABLEKS                       R14 R13 K37 ["FoundationSideSheetFixNewWidth"]
      193 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      195 LOADK                            R15 K38 ["FoundationColorPickerPartialHSV"]
      196 CALL                             R14 1 1
      197 CALL                             R14 0 1
      198 SETTABLEKS                       R14 R13 K38 ["FoundationColorPickerPartialHSV"]
      200 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      202 LOADK                            R15 K39 ["FoundationBaseMenuItemImageRadius"]
      203 CALL                             R14 1 1
      204 CALL                             R14 0 1
      205 SETTABLEKS                       R14 R13 K39 ["FoundationBaseMenuItemImageRadius"]
      207 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      209 LOADK                            R15 K40 ["FoundationUseGetInsetArea"]
      210 CALL                             R14 1 1
      211 CALL                             R14 0 1
      212 SETTABLEKS                       R14 R13 K40 ["FoundationUseGetInsetArea"]
      214 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      216 LOADK                            R15 K41 ["FoundationAllowMockDataModel"]
      217 CALL                             R14 1 1
      218 CALL                             R14 0 1
      219 SETTABLEKS                       R14 R13 K41 ["FoundationAllowMockDataModel"]
      221 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      223 LOADK                            R15 K42 ["FoundationBuildingBlocksRemoveDashUnion"]
      224 CALL                             R14 1 1
      225 CALL                             R14 0 1
      226 SETTABLEKS                       R14 R13 K42 ["FoundationBuildingBlocksRemoveDashUnion"]
      228 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      230 LOADK                            R15 K43 ["FoundationOverlayKeyboardAwareness"]
      231 CALL                             R14 1 1
      232 CALL                             R14 0 1
      233 SETTABLEKS                       R14 R13 K43 ["FoundationOverlayKeyboardAwareness"]
      235 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      237 LOADK                            R15 K44 ["FoundationSheetPreventCloseOnResize"]
      238 CALL                             R14 1 1
      239 CALL                             R14 0 1
      240 SETTABLEKS                       R14 R13 K44 ["FoundationSheetPreventCloseOnResize"]
      242 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      244 LOADK                            R15 K45 ["FoundationViewRemoveDashUnion"]
      245 CALL                             R14 1 1
      246 CALL                             R14 0 1
      247 SETTABLEKS                       R14 R13 K45 ["FoundationViewRemoveDashUnion"]
      249 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      251 LOADK                            R15 K46 ["FoundationBaseMenuSubmenuSupport"]
      252 CALL                             R14 1 1
      253 CALL                             R14 0 1
      254 SETTABLEKS                       R14 R13 K46 ["FoundationBaseMenuSubmenuSupport"]
      256 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      258 LOADK                            R15 K47 ["FoundationCenterSheetUseStableContainer"]
      259 CALL                             R14 1 1
      260 CALL                             R14 0 1
      261 SETTABLEKS                       R14 R13 K47 ["FoundationCenterSheetUseStableContainer"]
      263 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      265 LOADK                            R15 K48 ["FoundationColorPickerDesignUpdate"]
      266 CALL                             R14 1 1
      267 CALL                             R14 0 1
      268 SETTABLEKS                       R14 R13 K48 ["FoundationColorPickerDesignUpdate"]
      270 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      272 LOADK                            R15 K49 ["FoundationElevationKeepSiblingZIndex2"]
      273 CALL                             R14 1 1
      274 CALL                             R14 0 1
      275 SETTABLEKS                       R14 R13 K50 ["FoundationElevationKeepSiblingZIndex"]
      277 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      279 LOADK                            R15 K51 ["FoundationImageSafeLookup"]
      280 CALL                             R14 1 1
      281 CALL                             R14 0 1
      282 SETTABLEKS                       R14 R13 K51 ["FoundationImageSafeLookup"]
      284 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      286 LOADK                            R15 K52 ["FoundationTruncateBadgeText2"]
      287 CALL                             R14 1 1
      288 CALL                             R14 0 1
      289 SETTABLEKS                       R14 R13 K53 ["FoundationTruncateBadgeText"]
      291 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      293 LOADK                            R15 K54 ["FoundationDateTimePickerScreenSize"]
      294 CALL                             R14 1 1
      295 CALL                             R14 0 1
      296 SETTABLEKS                       R14 R13 K54 ["FoundationDateTimePickerScreenSize"]
      298 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      300 LOADK                            R15 K55 ["FoundationImageOnLoadedCallback"]
      301 CALL                             R14 1 1
      302 CALL                             R14 0 1
      303 SETTABLEKS                       R14 R13 K55 ["FoundationImageOnLoadedCallback"]
      305 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      307 LOADK                            R15 K56 ["FoundationDateTimePickerDefaultDateFix"]
      308 CALL                             R14 1 1
      309 CALL                             R14 0 1
      310 SETTABLEKS                       R14 R13 K56 ["FoundationDateTimePickerDefaultDateFix"]
      312 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      314 LOADK                            R15 K57 ["FoundationBottomSheetImproveSpring2"]
      315 CALL                             R14 1 1
      316 CALL                             R14 0 1
      317 SETTABLEKS                       R14 R13 K58 ["FoundationBottomSheetImproveSpring"]
      319 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      321 LOADK                            R15 K59 ["FoundationDialogTitleEmphasisFix"]
      322 CALL                             R14 1 1
      323 CALL                             R14 0 1
      324 SETTABLEKS                       R14 R13 K59 ["FoundationDialogTitleEmphasisFix"]
      326 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      328 LOADK                            R15 K60 ["FoundationGuiObjectInputSinkProperty"]
      329 CALL                             R14 1 1
      330 CALL                             R14 0 1
      331 SETTABLEKS                       R14 R13 K60 ["FoundationGuiObjectInputSinkProperty"]
      333 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      335 LOADK                            R15 K61 ["FoundationSystemBannerUseSharedAlertActions"]
      336 CALL                             R14 1 1
      337 CALL                             R14 0 1
      338 SETTABLEKS                       R14 R13 K61 ["FoundationSystemBannerUseSharedAlertActions"]
      340 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      342 LOADK                            R15 K62 ["FoundationDialogAnimation"]
      343 CALL                             R14 1 1
      344 CALL                             R14 0 1
      345 SETTABLEKS                       R14 R13 K62 ["FoundationDialogAnimation"]
      347 SETTABLEKS                       R5 R13 K11 ["FoundationDisableStyleProviderDerives"]
      349 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      351 LOADK                            R15 K63 ["FoundationDisableTokenScaling2"]
      352 CALL                             R14 1 1
      353 CALL                             R14 0 1
      354 SETTABLEKS                       R14 R13 K64 ["FoundationDisableTokenScaling"]
      356 AND                              R14 R3 R4
      357 SETTABLEKS                       R14 R13 K10 ["FoundationNumberInputBindableValue"]
      359 SETTABLEKS                       R3 R13 K9 ["FoundationNumberInputTextFix"]
      361 AND                              R14 R3 R7
      362 SETTABLEKS                       R14 R13 K13 ["FoundationNumberInputVariant"]
      364 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      366 LOADK                            R15 K65 ["FoundationPopoverPluginSupport"]
      367 CALL                             R14 1 1
      368 CALL                             R14 0 1
      369 SETTABLEKS                       R14 R13 K65 ["FoundationPopoverPluginSupport"]
      371 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      373 LOADK                            R15 K66 ["FoundationTranslatorLocalizationRecovery"]
      374 CALL                             R14 1 1
      375 CALL                             R14 0 1
      376 SETTABLEKS                       R14 R13 K66 ["FoundationTranslatorLocalizationRecovery"]
      378 MOVE                             R14 R5
      379 JUMPIFNOT                        R14 ; [+5]
      380 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      382 LOADK                            R15 K67 ["FoundationUseStyleSheetRegistry"]
      383 CALL                             R14 1 1
      384 CALL                             R14 0 1
      385 SETTABLEKS                       R14 R13 K67 ["FoundationUseStyleSheetRegistry"]
      387 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      389 LOADK                            R15 K68 ["FoundationDialogContentScrollbarFix"]
      390 CALL                             R14 1 1
      391 CALL                             R14 0 1
      392 SETTABLEKS                       R14 R13 K68 ["FoundationDialogContentScrollbarFix"]
      394 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      396 LOADK                            R15 K69 ["FoundationDialogContentScrollbarLayout"]
      397 CALL                             R14 1 1
      398 CALL                             R14 0 1
      399 SETTABLEKS                       R14 R13 K69 ["FoundationDialogContentScrollbarLayout"]
      401 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      403 LOADK                            R15 K70 ["FoundationOverlayKeyboardAwarenessHardened"]
      404 CALL                             R14 1 1
      405 CALL                             R14 0 1
      406 SETTABLEKS                       R14 R13 K70 ["FoundationOverlayKeyboardAwarenessHardened"]
      408 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      410 LOADK                            R15 K71 ["FoundationTranslatorUseScript"]
      411 CALL                             R14 1 1
      412 CALL                             R14 0 1
      413 SETTABLEKS                       R14 R13 K71 ["FoundationTranslatorUseScript"]
      415 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      417 LOADK                            R15 K72 ["FoundationUseMainGuiUtility2"]
      418 CALL                             R14 1 1
      419 CALL                             R14 0 1
      420 SETTABLEKS                       R14 R13 K73 ["FoundationUseMainGuiUtility"]
      422 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      424 LOADK                            R15 K74 ["FoundationFixUserLevelPlugins"]
      425 CALL                             R14 1 1
      426 CALL                             R14 0 1
      427 SETTABLEKS                       R14 R13 K74 ["FoundationFixUserLevelPlugins"]
      429 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      431 LOADK                            R15 K75 ["FoundationImageFixBindingAspectRatio"]
      432 CALL                             R14 1 1
      433 CALL                             R14 0 1
      434 SETTABLEKS                       R14 R13 K75 ["FoundationImageFixBindingAspectRatio"]
      436 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      438 LOADK                            R15 K76 ["FoundationTextInputFocusBehavior"]
      439 CALL                             R14 1 1
      440 CALL                             R14 0 1
      441 SETTABLEKS                       R14 R13 K76 ["FoundationTextInputFocusBehavior"]
      443 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      445 LOADK                            R15 K77 ["FoundationFixNestedSubMenuOnClick"]
      446 CALL                             R14 1 1
      447 CALL                             R14 0 1
      448 SETTABLEKS                       R14 R13 K77 ["FoundationFixNestedSubMenuOnClick"]
      450 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      452 LOADK                            R15 K78 ["FoundationTextAreaVariant"]
      453 CALL                             R14 1 1
      454 CALL                             R14 0 1
      455 SETTABLEKS                       R14 R13 K78 ["FoundationTextAreaVariant"]
      457 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      459 LOADK                            R15 K79 ["FoundationTextInputVariant"]
      460 CALL                             R14 1 1
      461 CALL                             R14 0 1
      462 SETTABLEKS                       R14 R13 K79 ["FoundationTextInputVariant"]
      464 SETTABLEKS                       R11 R13 K80 ["FoundationCleanupTextInputPolyfill"]
      466 MOVE                             R14 R12
      467 JUMPIFNOT                        R14 ; [+3]
      468 MOVE                             R14 R3
      469 JUMPIFNOT                        R14 ; [+1]
      470 MOVE                             R14 R11
      471 SETTABLEKS                       R14 R13 K18 ["FoundationInputVariantsConsolidateContainer"]
      473 MOVE                             R14 R6
      474 JUMPIFNOT                        R14 ; [+5]
      475 MOVE                             R14 R11
      476 JUMPIFNOT                        R14 ; [+3]
      477 MOVE                             R14 R12
      478 JUMPIFNOT                        R14 ; [+1]
      479 MOVE                             R14 R3
      480 SETTABLEKS                       R14 R13 K12 ["FoundationSharedInputVariants"]
      482 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      484 LOADK                            R15 K81 ["FoundationPopoverPluginDepthPool"]
      485 CALL                             R14 1 1
      486 CALL                             R14 0 1
      487 SETTABLEKS                       R14 R13 K81 ["FoundationPopoverPluginDepthPool"]
      489 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
      491 LOADK                            R15 K82 ["FoundationTextAreaFixDoubleSelection"]
      492 CALL                             R14 1 1
      493 CALL                             R14 0 1
      494 SETTABLEKS                       R14 R13 K82 ["FoundationTextAreaFixDoubleSelection"]
      496 RETURN                           R13 1
