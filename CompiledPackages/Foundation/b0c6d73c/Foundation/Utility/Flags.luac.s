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
       64 GETTABLEKS                       R13 R2 K8 ["createGetFFlag"]
       66 LOADK                            R14 K19 ["FoundationUseAttributeTokens"]
       67 CALL                             R13 1 1
       68 CALL                             R13 0 1
       69 GETTABLEKS                       R14 R2 K8 ["createGetFFlag"]
       71 LOADK                            R15 K20 ["FoundationPopoverPluginDepthPool"]
       72 CALL                             R14 1 1
       73 CALL                             R14 0 1
       74 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
       76 LOADK                            R16 K21 ["FoundationPopoverPluginPrewarmDepthPool"]
       77 CALL                             R15 1 1
       78 CALL                             R15 0 1
       79 NEWTABLE                         R16 128 0
       81 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
       83 LOADK                            R18 K22 ["FoundationUsePath2DSpinner"]
       84 CALL                             R17 1 1
       85 CALL                             R17 0 1
       86 SETTABLEKS                       R17 R16 K22 ["FoundationUsePath2DSpinner"]
       88 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
       90 LOADK                            R18 K23 ["FoundationStatusIndicatorVariantExperiment"]
       91 CALL                             R17 1 1
       92 CALL                             R17 0 1
       93 SETTABLEKS                       R17 R16 K23 ["FoundationStatusIndicatorVariantExperiment"]
       95 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
       97 LOADK                            R18 K24 ["FoundationToggleVisualUpdate"]
       98 CALL                             R17 1 1
       99 CALL                             R17 0 1
      100 SETTABLEKS                       R17 R16 K24 ["FoundationToggleVisualUpdate"]
      102 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      104 LOADK                            R18 K25 ["FoundationOverlayLuaAppInsetsFix2"]
      105 CALL                             R17 1 1
      106 CALL                             R17 0 1
      107 SETTABLEKS                       R17 R16 K26 ["FoundationOverlayLuaAppInsetsFix"]
      109 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      111 LOADK                            R18 K27 ["FoundationDialogBodyUpdate1"]
      112 CALL                             R17 1 1
      113 CALL                             R17 0 1
      114 SETTABLEKS                       R17 R16 K28 ["FoundationDialogBodyUpdate"]
      116 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      118 LOADK                            R18 K29 ["FoundationOverlayDisplayOrder"]
      119 CALL                             R17 1 1
      120 CALL                             R17 0 1
      121 SETTABLEKS                       R17 R16 K29 ["FoundationOverlayDisplayOrder"]
      123 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      125 LOADK                            R18 K30 ["FoundationTabsDisableScrollSelection"]
      126 CALL                             R17 1 1
      127 CALL                             R17 0 1
      128 SETTABLEKS                       R17 R16 K30 ["FoundationTabsDisableScrollSelection"]
      130 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      132 LOADK                            R18 K31 ["FoundationAddUtilityVariantToChip"]
      133 CALL                             R17 1 1
      134 CALL                             R17 0 1
      135 SETTABLEKS                       R17 R16 K31 ["FoundationAddUtilityVariantToChip"]
      137 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      139 LOADK                            R18 K32 ["FoundationBaseMenuDelayVisible"]
      140 CALL                             R17 1 1
      141 CALL                             R17 0 1
      142 SETTABLEKS                       R17 R16 K32 ["FoundationBaseMenuDelayVisible"]
      144 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      146 LOADK                            R18 K33 ["FoundationPopoverConditionalRender"]
      147 CALL                             R17 1 1
      148 CALL                             R17 0 1
      149 SETTABLEKS                       R17 R16 K33 ["FoundationPopoverConditionalRender"]
      151 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      153 LOADK                            R18 K34 ["FoundationSideSheetNewWidthCalculation"]
      154 CALL                             R17 1 1
      155 CALL                             R17 0 1
      156 SETTABLEKS                       R17 R16 K34 ["FoundationSideSheetNewWidthCalculation"]
      158 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      160 LOADK                            R18 K35 ["FoundationSideSheetFixNewWidth"]
      161 CALL                             R17 1 1
      162 CALL                             R17 0 1
      163 SETTABLEKS                       R17 R16 K35 ["FoundationSideSheetFixNewWidth"]
      165 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      167 LOADK                            R18 K36 ["FoundationColorPickerPartialHSV"]
      168 CALL                             R17 1 1
      169 CALL                             R17 0 1
      170 SETTABLEKS                       R17 R16 K36 ["FoundationColorPickerPartialHSV"]
      172 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      174 LOADK                            R18 K37 ["FoundationBaseMenuItemImageRadius"]
      175 CALL                             R17 1 1
      176 CALL                             R17 0 1
      177 SETTABLEKS                       R17 R16 K37 ["FoundationBaseMenuItemImageRadius"]
      179 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      181 LOADK                            R18 K38 ["FoundationUseGetInsetArea"]
      182 CALL                             R17 1 1
      183 CALL                             R17 0 1
      184 SETTABLEKS                       R17 R16 K38 ["FoundationUseGetInsetArea"]
      186 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      188 LOADK                            R18 K39 ["FoundationAllowMockDataModel"]
      189 CALL                             R17 1 1
      190 CALL                             R17 0 1
      191 SETTABLEKS                       R17 R16 K39 ["FoundationAllowMockDataModel"]
      193 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      195 LOADK                            R18 K40 ["FoundationBuildingBlocksRemoveDashUnion"]
      196 CALL                             R17 1 1
      197 CALL                             R17 0 1
      198 SETTABLEKS                       R17 R16 K40 ["FoundationBuildingBlocksRemoveDashUnion"]
      200 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      202 LOADK                            R18 K41 ["FoundationOverlayKeyboardAwareness"]
      203 CALL                             R17 1 1
      204 CALL                             R17 0 1
      205 SETTABLEKS                       R17 R16 K41 ["FoundationOverlayKeyboardAwareness"]
      207 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      209 LOADK                            R18 K42 ["FoundationSheetPreventCloseOnResize"]
      210 CALL                             R17 1 1
      211 CALL                             R17 0 1
      212 SETTABLEKS                       R17 R16 K42 ["FoundationSheetPreventCloseOnResize"]
      214 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      216 LOADK                            R18 K43 ["FoundationViewRemoveDashUnion"]
      217 CALL                             R17 1 1
      218 CALL                             R17 0 1
      219 SETTABLEKS                       R17 R16 K43 ["FoundationViewRemoveDashUnion"]
      221 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      223 LOADK                            R18 K44 ["FoundationCenterSheetUseStableContainer"]
      224 CALL                             R17 1 1
      225 CALL                             R17 0 1
      226 SETTABLEKS                       R17 R16 K44 ["FoundationCenterSheetUseStableContainer"]
      228 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      230 LOADK                            R18 K45 ["FoundationColorPickerDesignUpdate"]
      231 CALL                             R17 1 1
      232 CALL                             R17 0 1
      233 SETTABLEKS                       R17 R16 K45 ["FoundationColorPickerDesignUpdate"]
      235 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      237 LOADK                            R18 K46 ["FoundationImageSafeLookup"]
      238 CALL                             R17 1 1
      239 CALL                             R17 0 1
      240 SETTABLEKS                       R17 R16 K46 ["FoundationImageSafeLookup"]
      242 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      244 LOADK                            R18 K47 ["FoundationTruncateBadgeText2"]
      245 CALL                             R17 1 1
      246 CALL                             R17 0 1
      247 SETTABLEKS                       R17 R16 K48 ["FoundationTruncateBadgeText"]
      249 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      251 LOADK                            R18 K49 ["FoundationImageOnLoadedCallback"]
      252 CALL                             R17 1 1
      253 CALL                             R17 0 1
      254 SETTABLEKS                       R17 R16 K49 ["FoundationImageOnLoadedCallback"]
      256 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      258 LOADK                            R18 K50 ["FoundationDateTimePickerDefaultDateFix"]
      259 CALL                             R17 1 1
      260 CALL                             R17 0 1
      261 SETTABLEKS                       R17 R16 K50 ["FoundationDateTimePickerDefaultDateFix"]
      263 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      265 LOADK                            R18 K51 ["FoundationBottomSheetImproveSpring2"]
      266 CALL                             R17 1 1
      267 CALL                             R17 0 1
      268 SETTABLEKS                       R17 R16 K52 ["FoundationBottomSheetImproveSpring"]
      270 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      272 LOADK                            R18 K53 ["FoundationDialogTitleEmphasisFix"]
      273 CALL                             R17 1 1
      274 CALL                             R17 0 1
      275 SETTABLEKS                       R17 R16 K53 ["FoundationDialogTitleEmphasisFix"]
      277 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      279 LOADK                            R18 K54 ["FoundationGuiObjectInputSinkProperty"]
      280 CALL                             R17 1 1
      281 CALL                             R17 0 1
      282 SETTABLEKS                       R17 R16 K54 ["FoundationGuiObjectInputSinkProperty"]
      284 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      286 LOADK                            R18 K55 ["FoundationSystemBannerUseSharedAlertActions"]
      287 CALL                             R17 1 1
      288 CALL                             R17 0 1
      289 SETTABLEKS                       R17 R16 K55 ["FoundationSystemBannerUseSharedAlertActions"]
      291 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      293 LOADK                            R18 K56 ["FoundationDialogAnimation"]
      294 CALL                             R17 1 1
      295 CALL                             R17 0 1
      296 SETTABLEKS                       R17 R16 K56 ["FoundationDialogAnimation"]
      298 SETTABLEKS                       R5 R16 K11 ["FoundationDisableStyleProviderDerives"]
      300 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      302 LOADK                            R18 K57 ["FoundationDisableTokenScaling2"]
      303 CALL                             R17 1 1
      304 CALL                             R17 0 1
      305 SETTABLEKS                       R17 R16 K58 ["FoundationDisableTokenScaling"]
      307 SETTABLEKS                       R3 R16 K9 ["FoundationNumberInputTextFix"]
      309 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      311 LOADK                            R18 K59 ["FoundationPopoverPluginSupport"]
      312 CALL                             R17 1 1
      313 CALL                             R17 0 1
      314 SETTABLEKS                       R17 R16 K59 ["FoundationPopoverPluginSupport"]
      316 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      318 LOADK                            R18 K60 ["FoundationTranslatorLocalizationRecovery"]
      319 CALL                             R17 1 1
      320 CALL                             R17 0 1
      321 SETTABLEKS                       R17 R16 K60 ["FoundationTranslatorLocalizationRecovery"]
      323 MOVE                             R17 R5
      324 JUMPIFNOT                        R17 ; [+5]
      325 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      327 LOADK                            R18 K61 ["FoundationUseStyleSheetRegistry"]
      328 CALL                             R17 1 1
      329 CALL                             R17 0 1
      330 SETTABLEKS                       R17 R16 K61 ["FoundationUseStyleSheetRegistry"]
      332 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      334 LOADK                            R18 K62 ["FoundationDialogContentScrollbarFix"]
      335 CALL                             R17 1 1
      336 CALL                             R17 0 1
      337 SETTABLEKS                       R17 R16 K62 ["FoundationDialogContentScrollbarFix"]
      339 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      341 LOADK                            R18 K63 ["FoundationDialogContentScrollbarLayout"]
      342 CALL                             R17 1 1
      343 CALL                             R17 0 1
      344 SETTABLEKS                       R17 R16 K63 ["FoundationDialogContentScrollbarLayout"]
      346 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      348 LOADK                            R18 K64 ["FoundationOverlayKeyboardAwarenessHardened"]
      349 CALL                             R17 1 1
      350 CALL                             R17 0 1
      351 SETTABLEKS                       R17 R16 K64 ["FoundationOverlayKeyboardAwarenessHardened"]
      353 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      355 LOADK                            R18 K65 ["FoundationTranslatorUseScript"]
      356 CALL                             R17 1 1
      357 CALL                             R17 0 1
      358 SETTABLEKS                       R17 R16 K65 ["FoundationTranslatorUseScript"]
      360 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      362 LOADK                            R18 K66 ["FoundationUseMainGuiUtility2"]
      363 CALL                             R17 1 1
      364 CALL                             R17 0 1
      365 SETTABLEKS                       R17 R16 K67 ["FoundationUseMainGuiUtility"]
      367 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      369 LOADK                            R18 K68 ["FoundationFixUserLevelPlugins"]
      370 CALL                             R17 1 1
      371 CALL                             R17 0 1
      372 SETTABLEKS                       R17 R16 K68 ["FoundationFixUserLevelPlugins"]
      374 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      376 LOADK                            R18 K69 ["FoundationImageFixBindingAspectRatio"]
      377 CALL                             R17 1 1
      378 CALL                             R17 0 1
      379 SETTABLEKS                       R17 R16 K69 ["FoundationImageFixBindingAspectRatio"]
      381 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      383 LOADK                            R18 K70 ["FoundationTextInputFocusBehavior"]
      384 CALL                             R17 1 1
      385 CALL                             R17 0 1
      386 SETTABLEKS                       R17 R16 K70 ["FoundationTextInputFocusBehavior"]
      388 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      390 LOADK                            R18 K71 ["FoundationFixNestedSubMenuOnClick"]
      391 CALL                             R17 1 1
      392 CALL                             R17 0 1
      393 SETTABLEKS                       R17 R16 K71 ["FoundationFixNestedSubMenuOnClick"]
      395 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      397 LOADK                            R18 K72 ["FoundationTextAreaVariant"]
      398 CALL                             R17 1 1
      399 CALL                             R17 0 1
      400 SETTABLEKS                       R17 R16 K72 ["FoundationTextAreaVariant"]
      402 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      404 LOADK                            R18 K73 ["FoundationTextInputVariant"]
      405 CALL                             R17 1 1
      406 CALL                             R17 0 1
      407 SETTABLEKS                       R17 R16 K73 ["FoundationTextInputVariant"]
      409 SETTABLEKS                       R8 R16 K14 ["FoundationInputFieldFixDisabled"]
      411 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      413 LOADK                            R18 K74 ["FoundationInternalTextInputClearButton"]
      414 CALL                             R17 1 1
      415 CALL                             R17 0 1
      416 SETTABLEKS                       R17 R16 K74 ["FoundationInternalTextInputClearButton"]
      418 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      420 LOADK                            R18 K75 ["FoundationMutedDropdownArrow"]
      421 CALL                             R17 1 1
      422 CALL                             R17 0 1
      423 SETTABLEKS                       R17 R16 K75 ["FoundationMutedDropdownArrow"]
      425 AND                              R17 R3 R4
      426 SETTABLEKS                       R17 R16 K10 ["FoundationNumberInputBindableValue"]
      428 AND                              R17 R10 R8
      429 SETTABLEKS                       R17 R16 K16 ["FoundationNumberInputDisabledField"]
      431 AND                              R17 R3 R7
      432 SETTABLEKS                       R17 R16 K13 ["FoundationNumberInputVariant"]
      434 SETTABLEKS                       R14 R16 K20 ["FoundationPopoverPluginDepthPool"]
      436 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      438 LOADK                            R18 K76 ["FoundationReducedMotionAccordion"]
      439 CALL                             R17 1 1
      440 CALL                             R17 0 1
      441 SETTABLEKS                       R17 R16 K76 ["FoundationReducedMotionAccordion"]
      443 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      445 LOADK                            R18 K77 ["FoundationSheetFullBleed"]
      446 CALL                             R17 1 1
      447 CALL                             R17 0 1
      448 SETTABLEKS                       R17 R16 K77 ["FoundationSheetFullBleed"]
      450 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      452 LOADK                            R18 K78 ["FoundationTabsNavArrowsOnlyOnHover"]
      453 CALL                             R17 1 1
      454 CALL                             R17 0 1
      455 SETTABLEKS                       R17 R16 K78 ["FoundationTabsNavArrowsOnlyOnHover"]
      457 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      459 LOADK                            R18 K79 ["FoundationTextAreaFixDoubleSelection"]
      460 CALL                             R17 1 1
      461 CALL                             R17 0 1
      462 SETTABLEKS                       R17 R16 K79 ["FoundationTextAreaFixDoubleSelection"]
      464 AND                              R17 R9 R8
      465 SETTABLEKS                       R17 R16 K15 ["FoundationTextInputDisabledField"]
      467 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      469 LOADK                            R18 K80 ["FoundationPopoverPluginSecurityGate"]
      470 CALL                             R17 1 1
      471 CALL                             R17 0 1
      472 SETTABLEKS                       R17 R16 K80 ["FoundationPopoverPluginSecurityGate"]
      474 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      476 LOADK                            R18 K81 ["FoundationSegmentedControlIconSupport"]
      477 CALL                             R17 1 1
      478 CALL                             R17 0 1
      479 SETTABLEKS                       R17 R16 K81 ["FoundationSegmentedControlIconSupport"]
      481 MOVE                             R17 R13
      482 JUMPIFNOT                        R17 ; [+5]
      483 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      485 LOADK                            R18 K82 ["FoundationTokenOverrides"]
      486 CALL                             R17 1 1
      487 CALL                             R17 0 1
      488 SETTABLEKS                       R17 R16 K82 ["FoundationTokenOverrides"]
      490 SETTABLEKS                       R13 R16 K19 ["FoundationUseAttributeTokens"]
      492 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      494 LOADK                            R18 K83 ["FoundationActionEmphasisStatusIndicator"]
      495 CALL                             R17 1 1
      496 CALL                             R17 0 1
      497 SETTABLEKS                       R17 R16 K83 ["FoundationActionEmphasisStatusIndicator"]
      499 AND                              R17 R15 R14
      500 SETTABLEKS                       R17 R16 K21 ["FoundationPopoverPluginPrewarmDepthPool"]
      502 SETTABLEKS                       R11 R16 K84 ["FoundationCleanupTextInputPolyfill"]
      504 MOVE                             R17 R12
      505 JUMPIFNOT                        R17 ; [+3]
      506 MOVE                             R17 R3
      507 JUMPIFNOT                        R17 ; [+1]
      508 MOVE                             R17 R11
      509 SETTABLEKS                       R17 R16 K18 ["FoundationInputVariantsConsolidateContainer"]
      511 MOVE                             R17 R6
      512 JUMPIFNOT                        R17 ; [+5]
      513 MOVE                             R17 R11
      514 JUMPIFNOT                        R17 ; [+3]
      515 MOVE                             R17 R12
      516 JUMPIFNOT                        R17 ; [+1]
      517 MOVE                             R17 R3
      518 SETTABLEKS                       R17 R16 K12 ["FoundationSharedInputVariants"]
      520 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      522 LOADK                            R18 K85 ["FoundationInputSelectionProps"]
      523 CALL                             R17 1 1
      524 CALL                             R17 0 1
      525 SETTABLEKS                       R17 R16 K85 ["FoundationInputSelectionProps"]
      527 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      529 LOADK                            R18 K86 ["FoundationMigrateDeprecatedApis"]
      530 CALL                             R17 1 1
      531 CALL                             R17 0 1
      532 SETTABLEKS                       R17 R16 K86 ["FoundationMigrateDeprecatedApis"]
      534 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      536 LOADK                            R18 K87 ["FoundationSystemBannerOptionalTitle"]
      537 CALL                             R17 1 1
      538 CALL                             R17 0 1
      539 SETTABLEKS                       R17 R16 K87 ["FoundationSystemBannerOptionalTitle"]
      541 RETURN                           R16 1
