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
       79 GETTABLEKS                       R16 R2 K8 ["createGetFFlag"]
       81 LOADK                            R17 K22 ["FoundationTextInputFocusBehavior"]
       82 CALL                             R16 1 1
       83 CALL                             R16 0 1
       84 NEWTABLE                         R17 128 0
       86 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
       88 LOADK                            R19 K23 ["FoundationUsePath2DSpinner"]
       89 CALL                             R18 1 1
       90 CALL                             R18 0 1
       91 SETTABLEKS                       R18 R17 K23 ["FoundationUsePath2DSpinner"]
       93 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
       95 LOADK                            R19 K24 ["FoundationStatusIndicatorVariantExperiment"]
       96 CALL                             R18 1 1
       97 CALL                             R18 0 1
       98 SETTABLEKS                       R18 R17 K24 ["FoundationStatusIndicatorVariantExperiment"]
      100 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      102 LOADK                            R19 K25 ["FoundationToggleVisualUpdate"]
      103 CALL                             R18 1 1
      104 CALL                             R18 0 1
      105 SETTABLEKS                       R18 R17 K25 ["FoundationToggleVisualUpdate"]
      107 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      109 LOADK                            R19 K26 ["FoundationOverlayLuaAppInsetsFix2"]
      110 CALL                             R18 1 1
      111 CALL                             R18 0 1
      112 SETTABLEKS                       R18 R17 K27 ["FoundationOverlayLuaAppInsetsFix"]
      114 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      116 LOADK                            R19 K28 ["FoundationDialogBodyUpdate1"]
      117 CALL                             R18 1 1
      118 CALL                             R18 0 1
      119 SETTABLEKS                       R18 R17 K29 ["FoundationDialogBodyUpdate"]
      121 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      123 LOADK                            R19 K30 ["FoundationPopoverConditionalRender"]
      124 CALL                             R18 1 1
      125 CALL                             R18 0 1
      126 SETTABLEKS                       R18 R17 K30 ["FoundationPopoverConditionalRender"]
      128 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      130 LOADK                            R19 K31 ["FoundationSideSheetNewWidthCalculation"]
      131 CALL                             R18 1 1
      132 CALL                             R18 0 1
      133 SETTABLEKS                       R18 R17 K31 ["FoundationSideSheetNewWidthCalculation"]
      135 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      137 LOADK                            R19 K32 ["FoundationSideSheetFixNewWidth"]
      138 CALL                             R18 1 1
      139 CALL                             R18 0 1
      140 SETTABLEKS                       R18 R17 K32 ["FoundationSideSheetFixNewWidth"]
      142 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      144 LOADK                            R19 K33 ["FoundationUseGetInsetArea"]
      145 CALL                             R18 1 1
      146 CALL                             R18 0 1
      147 SETTABLEKS                       R18 R17 K33 ["FoundationUseGetInsetArea"]
      149 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      151 LOADK                            R19 K34 ["FoundationAllowMockDataModel"]
      152 CALL                             R18 1 1
      153 CALL                             R18 0 1
      154 SETTABLEKS                       R18 R17 K34 ["FoundationAllowMockDataModel"]
      156 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      158 LOADK                            R19 K35 ["FoundationOverlayKeyboardAwareness"]
      159 CALL                             R18 1 1
      160 CALL                             R18 0 1
      161 SETTABLEKS                       R18 R17 K35 ["FoundationOverlayKeyboardAwareness"]
      163 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      165 LOADK                            R19 K36 ["FoundationSheetPreventCloseOnResize"]
      166 CALL                             R18 1 1
      167 CALL                             R18 0 1
      168 SETTABLEKS                       R18 R17 K36 ["FoundationSheetPreventCloseOnResize"]
      170 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      172 LOADK                            R19 K37 ["FoundationViewRemoveDashUnion"]
      173 CALL                             R18 1 1
      174 CALL                             R18 0 1
      175 SETTABLEKS                       R18 R17 K37 ["FoundationViewRemoveDashUnion"]
      177 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      179 LOADK                            R19 K38 ["FoundationCenterSheetUseStableContainer"]
      180 CALL                             R18 1 1
      181 CALL                             R18 0 1
      182 SETTABLEKS                       R18 R17 K38 ["FoundationCenterSheetUseStableContainer"]
      184 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      186 LOADK                            R19 K39 ["FoundationColorPickerDesignUpdate"]
      187 CALL                             R18 1 1
      188 CALL                             R18 0 1
      189 SETTABLEKS                       R18 R17 K39 ["FoundationColorPickerDesignUpdate"]
      191 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      193 LOADK                            R19 K40 ["FoundationImageSafeLookup"]
      194 CALL                             R18 1 1
      195 CALL                             R18 0 1
      196 SETTABLEKS                       R18 R17 K40 ["FoundationImageSafeLookup"]
      198 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      200 LOADK                            R19 K41 ["FoundationTruncateBadgeText2"]
      201 CALL                             R18 1 1
      202 CALL                             R18 0 1
      203 SETTABLEKS                       R18 R17 K42 ["FoundationTruncateBadgeText"]
      205 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      207 LOADK                            R19 K43 ["FoundationImageOnLoadedCallback"]
      208 CALL                             R18 1 1
      209 CALL                             R18 0 1
      210 SETTABLEKS                       R18 R17 K43 ["FoundationImageOnLoadedCallback"]
      212 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      214 LOADK                            R19 K44 ["FoundationBottomSheetImproveSpring2"]
      215 CALL                             R18 1 1
      216 CALL                             R18 0 1
      217 SETTABLEKS                       R18 R17 K45 ["FoundationBottomSheetImproveSpring"]
      219 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      221 LOADK                            R19 K46 ["FoundationDialogTitleEmphasisFix"]
      222 CALL                             R18 1 1
      223 CALL                             R18 0 1
      224 SETTABLEKS                       R18 R17 K46 ["FoundationDialogTitleEmphasisFix"]
      226 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      228 LOADK                            R19 K47 ["FoundationGuiObjectInputSinkProperty"]
      229 CALL                             R18 1 1
      230 CALL                             R18 0 1
      231 SETTABLEKS                       R18 R17 K47 ["FoundationGuiObjectInputSinkProperty"]
      233 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      235 LOADK                            R19 K48 ["FoundationSystemBannerUseSharedAlertActions"]
      236 CALL                             R18 1 1
      237 CALL                             R18 0 1
      238 SETTABLEKS                       R18 R17 K48 ["FoundationSystemBannerUseSharedAlertActions"]
      240 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      242 LOADK                            R19 K49 ["FoundationDialogAnimation"]
      243 CALL                             R18 1 1
      244 CALL                             R18 0 1
      245 SETTABLEKS                       R18 R17 K49 ["FoundationDialogAnimation"]
      247 SETTABLEKS                       R5 R17 K11 ["FoundationDisableStyleProviderDerives"]
      249 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      251 LOADK                            R19 K50 ["FoundationDisableTokenScaling2"]
      252 CALL                             R18 1 1
      253 CALL                             R18 0 1
      254 SETTABLEKS                       R18 R17 K51 ["FoundationDisableTokenScaling"]
      256 SETTABLEKS                       R3 R17 K9 ["FoundationNumberInputTextFix"]
      258 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      260 LOADK                            R19 K52 ["FoundationPopoverPluginSupport"]
      261 CALL                             R18 1 1
      262 CALL                             R18 0 1
      263 SETTABLEKS                       R18 R17 K52 ["FoundationPopoverPluginSupport"]
      265 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      267 LOADK                            R19 K53 ["FoundationTranslatorLocalizationRecovery"]
      268 CALL                             R18 1 1
      269 CALL                             R18 0 1
      270 SETTABLEKS                       R18 R17 K53 ["FoundationTranslatorLocalizationRecovery"]
      272 MOVE                             R18 R5
      273 JUMPIFNOT                        R18 ; [+5]
      274 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      276 LOADK                            R19 K54 ["FoundationUseStyleSheetRegistry"]
      277 CALL                             R18 1 1
      278 CALL                             R18 0 1
      279 SETTABLEKS                       R18 R17 K54 ["FoundationUseStyleSheetRegistry"]
      281 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      283 LOADK                            R19 K55 ["FoundationDialogContentScrollbarFix"]
      284 CALL                             R18 1 1
      285 CALL                             R18 0 1
      286 SETTABLEKS                       R18 R17 K55 ["FoundationDialogContentScrollbarFix"]
      288 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      290 LOADK                            R19 K56 ["FoundationDialogContentScrollbarLayout"]
      291 CALL                             R18 1 1
      292 CALL                             R18 0 1
      293 SETTABLEKS                       R18 R17 K56 ["FoundationDialogContentScrollbarLayout"]
      295 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      297 LOADK                            R19 K57 ["FoundationOverlayKeyboardAwarenessHardened"]
      298 CALL                             R18 1 1
      299 CALL                             R18 0 1
      300 SETTABLEKS                       R18 R17 K57 ["FoundationOverlayKeyboardAwarenessHardened"]
      302 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      304 LOADK                            R19 K58 ["FoundationTranslatorUseScript"]
      305 CALL                             R18 1 1
      306 CALL                             R18 0 1
      307 SETTABLEKS                       R18 R17 K58 ["FoundationTranslatorUseScript"]
      309 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      311 LOADK                            R19 K59 ["FoundationUseMainGuiUtility2"]
      312 CALL                             R18 1 1
      313 CALL                             R18 0 1
      314 SETTABLEKS                       R18 R17 K60 ["FoundationUseMainGuiUtility"]
      316 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      318 LOADK                            R19 K61 ["FoundationFixUserLevelPlugins"]
      319 CALL                             R18 1 1
      320 CALL                             R18 0 1
      321 SETTABLEKS                       R18 R17 K61 ["FoundationFixUserLevelPlugins"]
      323 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      325 LOADK                            R19 K62 ["FoundationImageFixBindingAspectRatio"]
      326 CALL                             R18 1 1
      327 CALL                             R18 0 1
      328 SETTABLEKS                       R18 R17 K62 ["FoundationImageFixBindingAspectRatio"]
      330 SETTABLEKS                       R16 R17 K22 ["FoundationTextInputFocusBehavior"]
      332 MOVE                             R18 R16
      333 JUMPIFNOT                        R18 ; [+5]
      334 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      336 LOADK                            R19 K63 ["FoundationTextInputHighlightFix"]
      337 CALL                             R18 1 1
      338 CALL                             R18 0 1
      339 SETTABLEKS                       R18 R17 K63 ["FoundationTextInputHighlightFix"]
      341 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      343 LOADK                            R19 K64 ["FoundationFixNestedSubMenuOnClick"]
      344 CALL                             R18 1 1
      345 CALL                             R18 0 1
      346 SETTABLEKS                       R18 R17 K64 ["FoundationFixNestedSubMenuOnClick"]
      348 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      350 LOADK                            R19 K65 ["FoundationTextAreaVariant"]
      351 CALL                             R18 1 1
      352 CALL                             R18 0 1
      353 SETTABLEKS                       R18 R17 K65 ["FoundationTextAreaVariant"]
      355 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      357 LOADK                            R19 K66 ["FoundationTextInputVariant"]
      358 CALL                             R18 1 1
      359 CALL                             R18 0 1
      360 SETTABLEKS                       R18 R17 K66 ["FoundationTextInputVariant"]
      362 SETTABLEKS                       R8 R17 K14 ["FoundationInputFieldFixDisabled"]
      364 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      366 LOADK                            R19 K67 ["FoundationInternalTextInputClearButton"]
      367 CALL                             R18 1 1
      368 CALL                             R18 0 1
      369 SETTABLEKS                       R18 R17 K67 ["FoundationInternalTextInputClearButton"]
      371 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      373 LOADK                            R19 K68 ["FoundationMutedDropdownArrow"]
      374 CALL                             R18 1 1
      375 CALL                             R18 0 1
      376 SETTABLEKS                       R18 R17 K68 ["FoundationMutedDropdownArrow"]
      378 AND                              R18 R3 R4
      379 SETTABLEKS                       R18 R17 K10 ["FoundationNumberInputBindableValue"]
      381 AND                              R18 R10 R8
      382 SETTABLEKS                       R18 R17 K16 ["FoundationNumberInputDisabledField"]
      384 AND                              R18 R3 R7
      385 SETTABLEKS                       R18 R17 K13 ["FoundationNumberInputVariant"]
      387 SETTABLEKS                       R14 R17 K20 ["FoundationPopoverPluginDepthPool"]
      389 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      391 LOADK                            R19 K69 ["FoundationReducedMotionAccordion"]
      392 CALL                             R18 1 1
      393 CALL                             R18 0 1
      394 SETTABLEKS                       R18 R17 K69 ["FoundationReducedMotionAccordion"]
      396 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      398 LOADK                            R19 K70 ["FoundationSheetFullBleed"]
      399 CALL                             R18 1 1
      400 CALL                             R18 0 1
      401 SETTABLEKS                       R18 R17 K70 ["FoundationSheetFullBleed"]
      403 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      405 LOADK                            R19 K71 ["FoundationTabsNavArrowsOnlyOnHover"]
      406 CALL                             R18 1 1
      407 CALL                             R18 0 1
      408 SETTABLEKS                       R18 R17 K71 ["FoundationTabsNavArrowsOnlyOnHover"]
      410 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      412 LOADK                            R19 K72 ["FoundationTextAreaFixDoubleSelection"]
      413 CALL                             R18 1 1
      414 CALL                             R18 0 1
      415 SETTABLEKS                       R18 R17 K72 ["FoundationTextAreaFixDoubleSelection"]
      417 AND                              R18 R9 R8
      418 SETTABLEKS                       R18 R17 K15 ["FoundationTextInputDisabledField"]
      420 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      422 LOADK                            R19 K73 ["FoundationPopoverPluginSecurityGate"]
      423 CALL                             R18 1 1
      424 CALL                             R18 0 1
      425 SETTABLEKS                       R18 R17 K73 ["FoundationPopoverPluginSecurityGate"]
      427 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      429 LOADK                            R19 K74 ["FoundationSegmentedControlIconSupport"]
      430 CALL                             R18 1 1
      431 CALL                             R18 0 1
      432 SETTABLEKS                       R18 R17 K74 ["FoundationSegmentedControlIconSupport"]
      434 MOVE                             R18 R13
      435 JUMPIFNOT                        R18 ; [+5]
      436 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      438 LOADK                            R19 K75 ["FoundationTokenOverrides2"]
      439 CALL                             R18 1 1
      440 CALL                             R18 0 1
      441 SETTABLEKS                       R18 R17 K76 ["FoundationTokenOverrides"]
      443 SETTABLEKS                       R13 R17 K19 ["FoundationUseAttributeTokens"]
      445 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      447 LOADK                            R19 K77 ["FoundationActionEmphasisStatusIndicator"]
      448 CALL                             R18 1 1
      449 CALL                             R18 0 1
      450 SETTABLEKS                       R18 R17 K77 ["FoundationActionEmphasisStatusIndicator"]
      452 AND                              R18 R15 R14
      453 SETTABLEKS                       R18 R17 K21 ["FoundationPopoverPluginPrewarmDepthPool"]
      455 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      457 LOADK                            R19 K78 ["FoundationInputSelectionProps"]
      458 CALL                             R18 1 1
      459 CALL                             R18 0 1
      460 SETTABLEKS                       R18 R17 K78 ["FoundationInputSelectionProps"]
      462 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      464 LOADK                            R19 K79 ["FoundationMigrateDeprecatedApis"]
      465 CALL                             R18 1 1
      466 CALL                             R18 0 1
      467 SETTABLEKS                       R18 R17 K79 ["FoundationMigrateDeprecatedApis"]
      469 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      471 LOADK                            R19 K80 ["FoundationSystemBannerOptionalTitle"]
      472 CALL                             R18 1 1
      473 CALL                             R18 0 1
      474 SETTABLEKS                       R18 R17 K80 ["FoundationSystemBannerOptionalTitle"]
      476 SETTABLEKS                       R11 R17 K81 ["FoundationCleanupTextInputPolyfill"]
      478 MOVE                             R18 R12
      479 JUMPIFNOT                        R18 ; [+3]
      480 MOVE                             R18 R3
      481 JUMPIFNOT                        R18 ; [+1]
      482 MOVE                             R18 R11
      483 SETTABLEKS                       R18 R17 K18 ["FoundationInputVariantsConsolidateContainer"]
      485 MOVE                             R18 R6
      486 JUMPIFNOT                        R18 ; [+5]
      487 MOVE                             R18 R11
      488 JUMPIFNOT                        R18 ; [+3]
      489 MOVE                             R18 R12
      490 JUMPIFNOT                        R18 ; [+1]
      491 MOVE                             R18 R3
      492 SETTABLEKS                       R18 R17 K12 ["FoundationSharedInputVariants"]
      494 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      496 LOADK                            R19 K82 ["FoundationFixNoCommonPropsOnComponentParents"]
      497 CALL                             R18 1 1
      498 CALL                             R18 0 1
      499 SETTABLEKS                       R18 R17 K82 ["FoundationFixNoCommonPropsOnComponentParents"]
      501 GETTABLEKS                       R18 R2 K8 ["createGetFFlag"]
      503 LOADK                            R19 K83 ["FoundationPopoverPluginVirtualAnchor"]
      504 CALL                             R18 1 1
      505 CALL                             R18 0 1
      506 SETTABLEKS                       R18 R17 K83 ["FoundationPopoverPluginVirtualAnchor"]
      508 RETURN                           R17 1
