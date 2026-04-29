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
      223 LOADK                            R18 K44 ["FoundationBaseMenuSubmenuSupport"]
      224 CALL                             R17 1 1
      225 CALL                             R17 0 1
      226 SETTABLEKS                       R17 R16 K44 ["FoundationBaseMenuSubmenuSupport"]
      228 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      230 LOADK                            R18 K45 ["FoundationCenterSheetUseStableContainer"]
      231 CALL                             R17 1 1
      232 CALL                             R17 0 1
      233 SETTABLEKS                       R17 R16 K45 ["FoundationCenterSheetUseStableContainer"]
      235 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      237 LOADK                            R18 K46 ["FoundationColorPickerDesignUpdate"]
      238 CALL                             R17 1 1
      239 CALL                             R17 0 1
      240 SETTABLEKS                       R17 R16 K46 ["FoundationColorPickerDesignUpdate"]
      242 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      244 LOADK                            R18 K47 ["FoundationElevationKeepSiblingZIndex2"]
      245 CALL                             R17 1 1
      246 CALL                             R17 0 1
      247 SETTABLEKS                       R17 R16 K48 ["FoundationElevationKeepSiblingZIndex"]
      249 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      251 LOADK                            R18 K49 ["FoundationImageSafeLookup"]
      252 CALL                             R17 1 1
      253 CALL                             R17 0 1
      254 SETTABLEKS                       R17 R16 K49 ["FoundationImageSafeLookup"]
      256 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      258 LOADK                            R18 K50 ["FoundationTruncateBadgeText2"]
      259 CALL                             R17 1 1
      260 CALL                             R17 0 1
      261 SETTABLEKS                       R17 R16 K51 ["FoundationTruncateBadgeText"]
      263 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      265 LOADK                            R18 K52 ["FoundationImageOnLoadedCallback"]
      266 CALL                             R17 1 1
      267 CALL                             R17 0 1
      268 SETTABLEKS                       R17 R16 K52 ["FoundationImageOnLoadedCallback"]
      270 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      272 LOADK                            R18 K53 ["FoundationDateTimePickerDefaultDateFix"]
      273 CALL                             R17 1 1
      274 CALL                             R17 0 1
      275 SETTABLEKS                       R17 R16 K53 ["FoundationDateTimePickerDefaultDateFix"]
      277 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      279 LOADK                            R18 K54 ["FoundationBottomSheetImproveSpring2"]
      280 CALL                             R17 1 1
      281 CALL                             R17 0 1
      282 SETTABLEKS                       R17 R16 K55 ["FoundationBottomSheetImproveSpring"]
      284 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      286 LOADK                            R18 K56 ["FoundationDialogTitleEmphasisFix"]
      287 CALL                             R17 1 1
      288 CALL                             R17 0 1
      289 SETTABLEKS                       R17 R16 K56 ["FoundationDialogTitleEmphasisFix"]
      291 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      293 LOADK                            R18 K57 ["FoundationGuiObjectInputSinkProperty"]
      294 CALL                             R17 1 1
      295 CALL                             R17 0 1
      296 SETTABLEKS                       R17 R16 K57 ["FoundationGuiObjectInputSinkProperty"]
      298 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      300 LOADK                            R18 K58 ["FoundationSystemBannerUseSharedAlertActions"]
      301 CALL                             R17 1 1
      302 CALL                             R17 0 1
      303 SETTABLEKS                       R17 R16 K58 ["FoundationSystemBannerUseSharedAlertActions"]
      305 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      307 LOADK                            R18 K59 ["FoundationDialogAnimation"]
      308 CALL                             R17 1 1
      309 CALL                             R17 0 1
      310 SETTABLEKS                       R17 R16 K59 ["FoundationDialogAnimation"]
      312 SETTABLEKS                       R5 R16 K11 ["FoundationDisableStyleProviderDerives"]
      314 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      316 LOADK                            R18 K60 ["FoundationDisableTokenScaling2"]
      317 CALL                             R17 1 1
      318 CALL                             R17 0 1
      319 SETTABLEKS                       R17 R16 K61 ["FoundationDisableTokenScaling"]
      321 SETTABLEKS                       R3 R16 K9 ["FoundationNumberInputTextFix"]
      323 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      325 LOADK                            R18 K62 ["FoundationPopoverPluginSupport"]
      326 CALL                             R17 1 1
      327 CALL                             R17 0 1
      328 SETTABLEKS                       R17 R16 K62 ["FoundationPopoverPluginSupport"]
      330 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      332 LOADK                            R18 K63 ["FoundationTranslatorLocalizationRecovery"]
      333 CALL                             R17 1 1
      334 CALL                             R17 0 1
      335 SETTABLEKS                       R17 R16 K63 ["FoundationTranslatorLocalizationRecovery"]
      337 MOVE                             R17 R5
      338 JUMPIFNOT                        R17 ; [+5]
      339 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      341 LOADK                            R18 K64 ["FoundationUseStyleSheetRegistry"]
      342 CALL                             R17 1 1
      343 CALL                             R17 0 1
      344 SETTABLEKS                       R17 R16 K64 ["FoundationUseStyleSheetRegistry"]
      346 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      348 LOADK                            R18 K65 ["FoundationDialogContentScrollbarFix"]
      349 CALL                             R17 1 1
      350 CALL                             R17 0 1
      351 SETTABLEKS                       R17 R16 K65 ["FoundationDialogContentScrollbarFix"]
      353 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      355 LOADK                            R18 K66 ["FoundationDialogContentScrollbarLayout"]
      356 CALL                             R17 1 1
      357 CALL                             R17 0 1
      358 SETTABLEKS                       R17 R16 K66 ["FoundationDialogContentScrollbarLayout"]
      360 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      362 LOADK                            R18 K67 ["FoundationOverlayKeyboardAwarenessHardened"]
      363 CALL                             R17 1 1
      364 CALL                             R17 0 1
      365 SETTABLEKS                       R17 R16 K67 ["FoundationOverlayKeyboardAwarenessHardened"]
      367 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      369 LOADK                            R18 K68 ["FoundationTranslatorUseScript"]
      370 CALL                             R17 1 1
      371 CALL                             R17 0 1
      372 SETTABLEKS                       R17 R16 K68 ["FoundationTranslatorUseScript"]
      374 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      376 LOADK                            R18 K69 ["FoundationUseMainGuiUtility2"]
      377 CALL                             R17 1 1
      378 CALL                             R17 0 1
      379 SETTABLEKS                       R17 R16 K70 ["FoundationUseMainGuiUtility"]
      381 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      383 LOADK                            R18 K71 ["FoundationFixUserLevelPlugins"]
      384 CALL                             R17 1 1
      385 CALL                             R17 0 1
      386 SETTABLEKS                       R17 R16 K71 ["FoundationFixUserLevelPlugins"]
      388 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      390 LOADK                            R18 K72 ["FoundationImageFixBindingAspectRatio"]
      391 CALL                             R17 1 1
      392 CALL                             R17 0 1
      393 SETTABLEKS                       R17 R16 K72 ["FoundationImageFixBindingAspectRatio"]
      395 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      397 LOADK                            R18 K73 ["FoundationTextInputFocusBehavior"]
      398 CALL                             R17 1 1
      399 CALL                             R17 0 1
      400 SETTABLEKS                       R17 R16 K73 ["FoundationTextInputFocusBehavior"]
      402 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      404 LOADK                            R18 K74 ["FoundationFixNestedSubMenuOnClick"]
      405 CALL                             R17 1 1
      406 CALL                             R17 0 1
      407 SETTABLEKS                       R17 R16 K74 ["FoundationFixNestedSubMenuOnClick"]
      409 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      411 LOADK                            R18 K75 ["FoundationTextAreaVariant"]
      412 CALL                             R17 1 1
      413 CALL                             R17 0 1
      414 SETTABLEKS                       R17 R16 K75 ["FoundationTextAreaVariant"]
      416 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      418 LOADK                            R18 K76 ["FoundationTextInputVariant"]
      419 CALL                             R17 1 1
      420 CALL                             R17 0 1
      421 SETTABLEKS                       R17 R16 K76 ["FoundationTextInputVariant"]
      423 SETTABLEKS                       R8 R16 K14 ["FoundationInputFieldFixDisabled"]
      425 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      427 LOADK                            R18 K77 ["FoundationInternalTextInputClearButton"]
      428 CALL                             R17 1 1
      429 CALL                             R17 0 1
      430 SETTABLEKS                       R17 R16 K77 ["FoundationInternalTextInputClearButton"]
      432 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      434 LOADK                            R18 K78 ["FoundationMutedDropdownArrow"]
      435 CALL                             R17 1 1
      436 CALL                             R17 0 1
      437 SETTABLEKS                       R17 R16 K78 ["FoundationMutedDropdownArrow"]
      439 AND                              R17 R3 R4
      440 SETTABLEKS                       R17 R16 K10 ["FoundationNumberInputBindableValue"]
      442 AND                              R17 R10 R8
      443 SETTABLEKS                       R17 R16 K16 ["FoundationNumberInputDisabledField"]
      445 AND                              R17 R3 R7
      446 SETTABLEKS                       R17 R16 K13 ["FoundationNumberInputVariant"]
      448 SETTABLEKS                       R14 R16 K20 ["FoundationPopoverPluginDepthPool"]
      450 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      452 LOADK                            R18 K79 ["FoundationReducedMotionAccordion"]
      453 CALL                             R17 1 1
      454 CALL                             R17 0 1
      455 SETTABLEKS                       R17 R16 K79 ["FoundationReducedMotionAccordion"]
      457 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      459 LOADK                            R18 K80 ["FoundationSheetFullBleed"]
      460 CALL                             R17 1 1
      461 CALL                             R17 0 1
      462 SETTABLEKS                       R17 R16 K80 ["FoundationSheetFullBleed"]
      464 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      466 LOADK                            R18 K81 ["FoundationTabsNavArrowsOnlyOnHover"]
      467 CALL                             R17 1 1
      468 CALL                             R17 0 1
      469 SETTABLEKS                       R17 R16 K81 ["FoundationTabsNavArrowsOnlyOnHover"]
      471 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      473 LOADK                            R18 K82 ["FoundationTextAreaFixDoubleSelection"]
      474 CALL                             R17 1 1
      475 CALL                             R17 0 1
      476 SETTABLEKS                       R17 R16 K82 ["FoundationTextAreaFixDoubleSelection"]
      478 AND                              R17 R9 R8
      479 SETTABLEKS                       R17 R16 K15 ["FoundationTextInputDisabledField"]
      481 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      483 LOADK                            R18 K83 ["FoundationPopoverPluginSecurityGate"]
      484 CALL                             R17 1 1
      485 CALL                             R17 0 1
      486 SETTABLEKS                       R17 R16 K83 ["FoundationPopoverPluginSecurityGate"]
      488 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      490 LOADK                            R18 K84 ["FoundationSegmentedControlIconSupport"]
      491 CALL                             R17 1 1
      492 CALL                             R17 0 1
      493 SETTABLEKS                       R17 R16 K84 ["FoundationSegmentedControlIconSupport"]
      495 MOVE                             R17 R13
      496 JUMPIFNOT                        R17 ; [+5]
      497 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      499 LOADK                            R18 K85 ["FoundationTokenOverrides"]
      500 CALL                             R17 1 1
      501 CALL                             R17 0 1
      502 SETTABLEKS                       R17 R16 K85 ["FoundationTokenOverrides"]
      504 SETTABLEKS                       R13 R16 K19 ["FoundationUseAttributeTokens"]
      506 SETTABLEKS                       R11 R16 K86 ["FoundationCleanupTextInputPolyfill"]
      508 MOVE                             R17 R12
      509 JUMPIFNOT                        R17 ; [+3]
      510 MOVE                             R17 R3
      511 JUMPIFNOT                        R17 ; [+1]
      512 MOVE                             R17 R11
      513 SETTABLEKS                       R17 R16 K18 ["FoundationInputVariantsConsolidateContainer"]
      515 AND                              R17 R15 R14
      516 SETTABLEKS                       R17 R16 K21 ["FoundationPopoverPluginPrewarmDepthPool"]
      518 MOVE                             R17 R6
      519 JUMPIFNOT                        R17 ; [+5]
      520 MOVE                             R17 R11
      521 JUMPIFNOT                        R17 ; [+3]
      522 MOVE                             R17 R12
      523 JUMPIFNOT                        R17 ; [+1]
      524 MOVE                             R17 R3
      525 SETTABLEKS                       R17 R16 K12 ["FoundationSharedInputVariants"]
      527 GETTABLEKS                       R17 R2 K8 ["createGetFFlag"]
      529 LOADK                            R18 K87 ["FoundationActionEmphasisStatusIndicator"]
      530 CALL                             R17 1 1
      531 CALL                             R17 0 1
      532 SETTABLEKS                       R17 R16 K87 ["FoundationActionEmphasisStatusIndicator"]
      534 RETURN                           R16 1
