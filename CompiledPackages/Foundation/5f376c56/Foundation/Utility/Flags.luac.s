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
       69 NEWTABLE                         R14 128 0
       71 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
       73 LOADK                            R16 K20 ["FoundationUsePath2DSpinner"]
       74 CALL                             R15 1 1
       75 CALL                             R15 0 1
       76 SETTABLEKS                       R15 R14 K20 ["FoundationUsePath2DSpinner"]
       78 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
       80 LOADK                            R16 K21 ["FoundationStatusIndicatorVariantExperiment"]
       81 CALL                             R15 1 1
       82 CALL                             R15 0 1
       83 SETTABLEKS                       R15 R14 K21 ["FoundationStatusIndicatorVariantExperiment"]
       85 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
       87 LOADK                            R16 K22 ["FoundationToggleVisualUpdate"]
       88 CALL                             R15 1 1
       89 CALL                             R15 0 1
       90 SETTABLEKS                       R15 R14 K22 ["FoundationToggleVisualUpdate"]
       92 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
       94 LOADK                            R16 K23 ["FoundationOverlayLuaAppInsetsFix2"]
       95 CALL                             R15 1 1
       96 CALL                             R15 0 1
       97 SETTABLEKS                       R15 R14 K24 ["FoundationOverlayLuaAppInsetsFix"]
       99 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      101 LOADK                            R16 K25 ["FoundationDialogBodyUpdate1"]
      102 CALL                             R15 1 1
      103 CALL                             R15 0 1
      104 SETTABLEKS                       R15 R14 K26 ["FoundationDialogBodyUpdate"]
      106 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      108 LOADK                            R16 K27 ["FoundationOverlayDisplayOrder"]
      109 CALL                             R15 1 1
      110 CALL                             R15 0 1
      111 SETTABLEKS                       R15 R14 K27 ["FoundationOverlayDisplayOrder"]
      113 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      115 LOADK                            R16 K28 ["FoundationTabsDisableScrollSelection"]
      116 CALL                             R15 1 1
      117 CALL                             R15 0 1
      118 SETTABLEKS                       R15 R14 K28 ["FoundationTabsDisableScrollSelection"]
      120 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      122 LOADK                            R16 K29 ["FoundationAddUtilityVariantToChip"]
      123 CALL                             R15 1 1
      124 CALL                             R15 0 1
      125 SETTABLEKS                       R15 R14 K29 ["FoundationAddUtilityVariantToChip"]
      127 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      129 LOADK                            R16 K30 ["FoundationBaseMenuDelayVisible"]
      130 CALL                             R15 1 1
      131 CALL                             R15 0 1
      132 SETTABLEKS                       R15 R14 K30 ["FoundationBaseMenuDelayVisible"]
      134 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      136 LOADK                            R16 K31 ["FoundationPopoverConditionalRender"]
      137 CALL                             R15 1 1
      138 CALL                             R15 0 1
      139 SETTABLEKS                       R15 R14 K31 ["FoundationPopoverConditionalRender"]
      141 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      143 LOADK                            R16 K32 ["FoundationSideSheetNewWidthCalculation"]
      144 CALL                             R15 1 1
      145 CALL                             R15 0 1
      146 SETTABLEKS                       R15 R14 K32 ["FoundationSideSheetNewWidthCalculation"]
      148 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      150 LOADK                            R16 K33 ["FoundationSideSheetFixNewWidth"]
      151 CALL                             R15 1 1
      152 CALL                             R15 0 1
      153 SETTABLEKS                       R15 R14 K33 ["FoundationSideSheetFixNewWidth"]
      155 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      157 LOADK                            R16 K34 ["FoundationColorPickerPartialHSV"]
      158 CALL                             R15 1 1
      159 CALL                             R15 0 1
      160 SETTABLEKS                       R15 R14 K34 ["FoundationColorPickerPartialHSV"]
      162 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      164 LOADK                            R16 K35 ["FoundationBaseMenuItemImageRadius"]
      165 CALL                             R15 1 1
      166 CALL                             R15 0 1
      167 SETTABLEKS                       R15 R14 K35 ["FoundationBaseMenuItemImageRadius"]
      169 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      171 LOADK                            R16 K36 ["FoundationUseGetInsetArea"]
      172 CALL                             R15 1 1
      173 CALL                             R15 0 1
      174 SETTABLEKS                       R15 R14 K36 ["FoundationUseGetInsetArea"]
      176 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      178 LOADK                            R16 K37 ["FoundationAllowMockDataModel"]
      179 CALL                             R15 1 1
      180 CALL                             R15 0 1
      181 SETTABLEKS                       R15 R14 K37 ["FoundationAllowMockDataModel"]
      183 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      185 LOADK                            R16 K38 ["FoundationBuildingBlocksRemoveDashUnion"]
      186 CALL                             R15 1 1
      187 CALL                             R15 0 1
      188 SETTABLEKS                       R15 R14 K38 ["FoundationBuildingBlocksRemoveDashUnion"]
      190 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      192 LOADK                            R16 K39 ["FoundationOverlayKeyboardAwareness"]
      193 CALL                             R15 1 1
      194 CALL                             R15 0 1
      195 SETTABLEKS                       R15 R14 K39 ["FoundationOverlayKeyboardAwareness"]
      197 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      199 LOADK                            R16 K40 ["FoundationSheetPreventCloseOnResize"]
      200 CALL                             R15 1 1
      201 CALL                             R15 0 1
      202 SETTABLEKS                       R15 R14 K40 ["FoundationSheetPreventCloseOnResize"]
      204 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      206 LOADK                            R16 K41 ["FoundationViewRemoveDashUnion"]
      207 CALL                             R15 1 1
      208 CALL                             R15 0 1
      209 SETTABLEKS                       R15 R14 K41 ["FoundationViewRemoveDashUnion"]
      211 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      213 LOADK                            R16 K42 ["FoundationBaseMenuSubmenuSupport"]
      214 CALL                             R15 1 1
      215 CALL                             R15 0 1
      216 SETTABLEKS                       R15 R14 K42 ["FoundationBaseMenuSubmenuSupport"]
      218 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      220 LOADK                            R16 K43 ["FoundationCenterSheetUseStableContainer"]
      221 CALL                             R15 1 1
      222 CALL                             R15 0 1
      223 SETTABLEKS                       R15 R14 K43 ["FoundationCenterSheetUseStableContainer"]
      225 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      227 LOADK                            R16 K44 ["FoundationColorPickerDesignUpdate"]
      228 CALL                             R15 1 1
      229 CALL                             R15 0 1
      230 SETTABLEKS                       R15 R14 K44 ["FoundationColorPickerDesignUpdate"]
      232 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      234 LOADK                            R16 K45 ["FoundationElevationKeepSiblingZIndex2"]
      235 CALL                             R15 1 1
      236 CALL                             R15 0 1
      237 SETTABLEKS                       R15 R14 K46 ["FoundationElevationKeepSiblingZIndex"]
      239 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      241 LOADK                            R16 K47 ["FoundationImageSafeLookup"]
      242 CALL                             R15 1 1
      243 CALL                             R15 0 1
      244 SETTABLEKS                       R15 R14 K47 ["FoundationImageSafeLookup"]
      246 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      248 LOADK                            R16 K48 ["FoundationTruncateBadgeText2"]
      249 CALL                             R15 1 1
      250 CALL                             R15 0 1
      251 SETTABLEKS                       R15 R14 K49 ["FoundationTruncateBadgeText"]
      253 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      255 LOADK                            R16 K50 ["FoundationImageOnLoadedCallback"]
      256 CALL                             R15 1 1
      257 CALL                             R15 0 1
      258 SETTABLEKS                       R15 R14 K50 ["FoundationImageOnLoadedCallback"]
      260 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      262 LOADK                            R16 K51 ["FoundationDateTimePickerDefaultDateFix"]
      263 CALL                             R15 1 1
      264 CALL                             R15 0 1
      265 SETTABLEKS                       R15 R14 K51 ["FoundationDateTimePickerDefaultDateFix"]
      267 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      269 LOADK                            R16 K52 ["FoundationBottomSheetImproveSpring2"]
      270 CALL                             R15 1 1
      271 CALL                             R15 0 1
      272 SETTABLEKS                       R15 R14 K53 ["FoundationBottomSheetImproveSpring"]
      274 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      276 LOADK                            R16 K54 ["FoundationDialogTitleEmphasisFix"]
      277 CALL                             R15 1 1
      278 CALL                             R15 0 1
      279 SETTABLEKS                       R15 R14 K54 ["FoundationDialogTitleEmphasisFix"]
      281 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      283 LOADK                            R16 K55 ["FoundationGuiObjectInputSinkProperty"]
      284 CALL                             R15 1 1
      285 CALL                             R15 0 1
      286 SETTABLEKS                       R15 R14 K55 ["FoundationGuiObjectInputSinkProperty"]
      288 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      290 LOADK                            R16 K56 ["FoundationSystemBannerUseSharedAlertActions"]
      291 CALL                             R15 1 1
      292 CALL                             R15 0 1
      293 SETTABLEKS                       R15 R14 K56 ["FoundationSystemBannerUseSharedAlertActions"]
      295 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      297 LOADK                            R16 K57 ["FoundationDialogAnimation"]
      298 CALL                             R15 1 1
      299 CALL                             R15 0 1
      300 SETTABLEKS                       R15 R14 K57 ["FoundationDialogAnimation"]
      302 SETTABLEKS                       R5 R14 K11 ["FoundationDisableStyleProviderDerives"]
      304 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      306 LOADK                            R16 K58 ["FoundationDisableTokenScaling2"]
      307 CALL                             R15 1 1
      308 CALL                             R15 0 1
      309 SETTABLEKS                       R15 R14 K59 ["FoundationDisableTokenScaling"]
      311 SETTABLEKS                       R3 R14 K9 ["FoundationNumberInputTextFix"]
      313 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      315 LOADK                            R16 K60 ["FoundationPopoverPluginSupport"]
      316 CALL                             R15 1 1
      317 CALL                             R15 0 1
      318 SETTABLEKS                       R15 R14 K60 ["FoundationPopoverPluginSupport"]
      320 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      322 LOADK                            R16 K61 ["FoundationTranslatorLocalizationRecovery"]
      323 CALL                             R15 1 1
      324 CALL                             R15 0 1
      325 SETTABLEKS                       R15 R14 K61 ["FoundationTranslatorLocalizationRecovery"]
      327 MOVE                             R15 R5
      328 JUMPIFNOT                        R15 ; [+5]
      329 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      331 LOADK                            R16 K62 ["FoundationUseStyleSheetRegistry"]
      332 CALL                             R15 1 1
      333 CALL                             R15 0 1
      334 SETTABLEKS                       R15 R14 K62 ["FoundationUseStyleSheetRegistry"]
      336 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      338 LOADK                            R16 K63 ["FoundationDialogContentScrollbarFix"]
      339 CALL                             R15 1 1
      340 CALL                             R15 0 1
      341 SETTABLEKS                       R15 R14 K63 ["FoundationDialogContentScrollbarFix"]
      343 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      345 LOADK                            R16 K64 ["FoundationDialogContentScrollbarLayout"]
      346 CALL                             R15 1 1
      347 CALL                             R15 0 1
      348 SETTABLEKS                       R15 R14 K64 ["FoundationDialogContentScrollbarLayout"]
      350 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      352 LOADK                            R16 K65 ["FoundationOverlayKeyboardAwarenessHardened"]
      353 CALL                             R15 1 1
      354 CALL                             R15 0 1
      355 SETTABLEKS                       R15 R14 K65 ["FoundationOverlayKeyboardAwarenessHardened"]
      357 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      359 LOADK                            R16 K66 ["FoundationTranslatorUseScript"]
      360 CALL                             R15 1 1
      361 CALL                             R15 0 1
      362 SETTABLEKS                       R15 R14 K66 ["FoundationTranslatorUseScript"]
      364 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      366 LOADK                            R16 K67 ["FoundationUseMainGuiUtility2"]
      367 CALL                             R15 1 1
      368 CALL                             R15 0 1
      369 SETTABLEKS                       R15 R14 K68 ["FoundationUseMainGuiUtility"]
      371 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      373 LOADK                            R16 K69 ["FoundationFixUserLevelPlugins"]
      374 CALL                             R15 1 1
      375 CALL                             R15 0 1
      376 SETTABLEKS                       R15 R14 K69 ["FoundationFixUserLevelPlugins"]
      378 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      380 LOADK                            R16 K70 ["FoundationImageFixBindingAspectRatio"]
      381 CALL                             R15 1 1
      382 CALL                             R15 0 1
      383 SETTABLEKS                       R15 R14 K70 ["FoundationImageFixBindingAspectRatio"]
      385 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      387 LOADK                            R16 K71 ["FoundationTextInputFocusBehavior"]
      388 CALL                             R15 1 1
      389 CALL                             R15 0 1
      390 SETTABLEKS                       R15 R14 K71 ["FoundationTextInputFocusBehavior"]
      392 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      394 LOADK                            R16 K72 ["FoundationFixNestedSubMenuOnClick"]
      395 CALL                             R15 1 1
      396 CALL                             R15 0 1
      397 SETTABLEKS                       R15 R14 K72 ["FoundationFixNestedSubMenuOnClick"]
      399 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      401 LOADK                            R16 K73 ["FoundationTextAreaVariant"]
      402 CALL                             R15 1 1
      403 CALL                             R15 0 1
      404 SETTABLEKS                       R15 R14 K73 ["FoundationTextAreaVariant"]
      406 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      408 LOADK                            R16 K74 ["FoundationTextInputVariant"]
      409 CALL                             R15 1 1
      410 CALL                             R15 0 1
      411 SETTABLEKS                       R15 R14 K74 ["FoundationTextInputVariant"]
      413 SETTABLEKS                       R8 R14 K14 ["FoundationInputFieldFixDisabled"]
      415 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      417 LOADK                            R16 K75 ["FoundationInternalTextInputClearButton"]
      418 CALL                             R15 1 1
      419 CALL                             R15 0 1
      420 SETTABLEKS                       R15 R14 K75 ["FoundationInternalTextInputClearButton"]
      422 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      424 LOADK                            R16 K76 ["FoundationMutedDropdownArrow"]
      425 CALL                             R15 1 1
      426 CALL                             R15 0 1
      427 SETTABLEKS                       R15 R14 K76 ["FoundationMutedDropdownArrow"]
      429 AND                              R15 R3 R4
      430 SETTABLEKS                       R15 R14 K10 ["FoundationNumberInputBindableValue"]
      432 AND                              R15 R10 R8
      433 SETTABLEKS                       R15 R14 K16 ["FoundationNumberInputDisabledField"]
      435 AND                              R15 R3 R7
      436 SETTABLEKS                       R15 R14 K13 ["FoundationNumberInputVariant"]
      438 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      440 LOADK                            R16 K77 ["FoundationPopoverPluginDepthPool"]
      441 CALL                             R15 1 1
      442 CALL                             R15 0 1
      443 SETTABLEKS                       R15 R14 K77 ["FoundationPopoverPluginDepthPool"]
      445 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      447 LOADK                            R16 K78 ["FoundationReducedMotionAccordion"]
      448 CALL                             R15 1 1
      449 CALL                             R15 0 1
      450 SETTABLEKS                       R15 R14 K78 ["FoundationReducedMotionAccordion"]
      452 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      454 LOADK                            R16 K79 ["FoundationSheetFullBleed"]
      455 CALL                             R15 1 1
      456 CALL                             R15 0 1
      457 SETTABLEKS                       R15 R14 K79 ["FoundationSheetFullBleed"]
      459 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      461 LOADK                            R16 K80 ["FoundationTabsNavArrowsOnlyOnHover"]
      462 CALL                             R15 1 1
      463 CALL                             R15 0 1
      464 SETTABLEKS                       R15 R14 K80 ["FoundationTabsNavArrowsOnlyOnHover"]
      466 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      468 LOADK                            R16 K81 ["FoundationTextAreaFixDoubleSelection"]
      469 CALL                             R15 1 1
      470 CALL                             R15 0 1
      471 SETTABLEKS                       R15 R14 K81 ["FoundationTextAreaFixDoubleSelection"]
      473 AND                              R15 R9 R8
      474 SETTABLEKS                       R15 R14 K15 ["FoundationTextInputDisabledField"]
      476 SETTABLEKS                       R11 R14 K82 ["FoundationCleanupTextInputPolyfill"]
      478 MOVE                             R15 R12
      479 JUMPIFNOT                        R15 ; [+3]
      480 MOVE                             R15 R3
      481 JUMPIFNOT                        R15 ; [+1]
      482 MOVE                             R15 R11
      483 SETTABLEKS                       R15 R14 K18 ["FoundationInputVariantsConsolidateContainer"]
      485 MOVE                             R15 R6
      486 JUMPIFNOT                        R15 ; [+5]
      487 MOVE                             R15 R11
      488 JUMPIFNOT                        R15 ; [+3]
      489 MOVE                             R15 R12
      490 JUMPIFNOT                        R15 ; [+1]
      491 MOVE                             R15 R3
      492 SETTABLEKS                       R15 R14 K12 ["FoundationSharedInputVariants"]
      494 MOVE                             R15 R13
      495 JUMPIFNOT                        R15 ; [+5]
      496 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      498 LOADK                            R16 K83 ["FoundationTokenOverrides"]
      499 CALL                             R15 1 1
      500 CALL                             R15 0 1
      501 SETTABLEKS                       R15 R14 K83 ["FoundationTokenOverrides"]
      503 SETTABLEKS                       R13 R14 K19 ["FoundationUseAttributeTokens"]
      505 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      507 LOADK                            R16 K84 ["FoundationPopoverPluginSecurityGate"]
      508 CALL                             R15 1 1
      509 CALL                             R15 0 1
      510 SETTABLEKS                       R15 R14 K84 ["FoundationPopoverPluginSecurityGate"]
      512 GETTABLEKS                       R15 R2 K8 ["createGetFFlag"]
      514 LOADK                            R16 K85 ["FoundationSegmentedControlIconSupport"]
      515 CALL                             R15 1 1
      516 CALL                             R15 0 1
      517 SETTABLEKS                       R15 R14 K85 ["FoundationSegmentedControlIconSupport"]
      519 RETURN                           R14 1
