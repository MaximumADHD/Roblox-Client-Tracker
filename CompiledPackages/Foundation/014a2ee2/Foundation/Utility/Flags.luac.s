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
       16 LOADK                            R4 K9 ["FoundationDisableStyleProviderDerives"]
       17 CALL                             R3 1 1
       18 CALL                             R3 0 1
       19 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       21 LOADK                            R5 K10 ["FoundationPopoverPluginDepthPool"]
       22 CALL                             R4 1 1
       23 CALL                             R4 0 1
       24 GETTABLEKS                       R5 R2 K8 ["createGetFFlag"]
       26 LOADK                            R6 K11 ["FoundationPopoverPluginPrewarmDepthPool"]
       27 CALL                             R5 1 1
       28 CALL                             R5 0 1
       29 GETTABLEKS                       R6 R2 K8 ["createGetFFlag"]
       31 LOADK                            R7 K12 ["FoundationDropdownVariant"]
       32 CALL                             R6 1 1
       33 CALL                             R6 0 1
       34 NEWTABLE                         R7 64 0
       36 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       38 LOADK                            R9 K13 ["FoundationUsePath2DSpinner"]
       39 CALL                             R8 1 1
       40 CALL                             R8 0 1
       41 SETTABLEKS                       R8 R7 K13 ["FoundationUsePath2DSpinner"]
       43 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       45 LOADK                            R9 K14 ["FoundationStatusIndicatorVariantExperiment"]
       46 CALL                             R8 1 1
       47 CALL                             R8 0 1
       48 SETTABLEKS                       R8 R7 K14 ["FoundationStatusIndicatorVariantExperiment"]
       50 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       52 LOADK                            R9 K15 ["FoundationToggleVisualUpdate"]
       53 CALL                             R8 1 1
       54 CALL                             R8 0 1
       55 SETTABLEKS                       R8 R7 K15 ["FoundationToggleVisualUpdate"]
       57 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       59 LOADK                            R9 K16 ["FoundationSideSheetNewWidthCalculation"]
       60 CALL                             R8 1 1
       61 CALL                             R8 0 1
       62 SETTABLEKS                       R8 R7 K16 ["FoundationSideSheetNewWidthCalculation"]
       64 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       66 LOADK                            R9 K17 ["FoundationUseGetInsetArea"]
       67 CALL                             R8 1 1
       68 CALL                             R8 0 1
       69 SETTABLEKS                       R8 R7 K17 ["FoundationUseGetInsetArea"]
       71 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       73 LOADK                            R9 K18 ["FoundationAllowMockDataModel"]
       74 CALL                             R8 1 1
       75 CALL                             R8 0 1
       76 SETTABLEKS                       R8 R7 K18 ["FoundationAllowMockDataModel"]
       78 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       80 LOADK                            R9 K19 ["FoundationOverlayKeyboardAwareness"]
       81 CALL                             R8 1 1
       82 CALL                             R8 0 1
       83 SETTABLEKS                       R8 R7 K19 ["FoundationOverlayKeyboardAwareness"]
       85 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       87 LOADK                            R9 K20 ["FoundationSheetPreventCloseOnResize"]
       88 CALL                             R8 1 1
       89 CALL                             R8 0 1
       90 SETTABLEKS                       R8 R7 K20 ["FoundationSheetPreventCloseOnResize"]
       92 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       94 LOADK                            R9 K21 ["FoundationCenterSheetUseStableContainer"]
       95 CALL                             R8 1 1
       96 CALL                             R8 0 1
       97 SETTABLEKS                       R8 R7 K21 ["FoundationCenterSheetUseStableContainer"]
       99 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      101 LOADK                            R9 K22 ["FoundationBottomSheetImproveSpring2"]
      102 CALL                             R8 1 1
      103 CALL                             R8 0 1
      104 SETTABLEKS                       R8 R7 K23 ["FoundationBottomSheetImproveSpring"]
      106 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      108 LOADK                            R9 K24 ["FoundationDialogTitleEmphasisFix"]
      109 CALL                             R8 1 1
      110 CALL                             R8 0 1
      111 SETTABLEKS                       R8 R7 K24 ["FoundationDialogTitleEmphasisFix"]
      113 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      115 LOADK                            R9 K25 ["FoundationGuiObjectInputSinkProperty"]
      116 CALL                             R8 1 1
      117 CALL                             R8 0 1
      118 SETTABLEKS                       R8 R7 K25 ["FoundationGuiObjectInputSinkProperty"]
      120 SETTABLEKS                       R3 R7 K9 ["FoundationDisableStyleProviderDerives"]
      122 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      124 LOADK                            R9 K26 ["FoundationDisableTokenScaling2"]
      125 CALL                             R8 1 1
      126 CALL                             R8 0 1
      127 SETTABLEKS                       R8 R7 K27 ["FoundationDisableTokenScaling"]
      129 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      131 LOADK                            R9 K28 ["FoundationPopoverPluginSupport"]
      132 CALL                             R8 1 1
      133 CALL                             R8 0 1
      134 SETTABLEKS                       R8 R7 K28 ["FoundationPopoverPluginSupport"]
      136 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      138 LOADK                            R9 K29 ["FoundationTranslatorLocalizationRecovery"]
      139 CALL                             R8 1 1
      140 CALL                             R8 0 1
      141 SETTABLEKS                       R8 R7 K29 ["FoundationTranslatorLocalizationRecovery"]
      143 MOVE                             R8 R3
      144 JUMPIFNOT                        R8 ; [+5]
      145 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      147 LOADK                            R9 K30 ["FoundationUseStyleSheetRegistry"]
      148 CALL                             R8 1 1
      149 CALL                             R8 0 1
      150 SETTABLEKS                       R8 R7 K30 ["FoundationUseStyleSheetRegistry"]
      152 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      154 LOADK                            R9 K31 ["FoundationOverlayKeyboardAwarenessHardened"]
      155 CALL                             R8 1 1
      156 CALL                             R8 0 1
      157 SETTABLEKS                       R8 R7 K31 ["FoundationOverlayKeyboardAwarenessHardened"]
      159 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      161 LOADK                            R9 K32 ["FoundationTranslatorUseScript"]
      162 CALL                             R8 1 1
      163 CALL                             R8 0 1
      164 SETTABLEKS                       R8 R7 K32 ["FoundationTranslatorUseScript"]
      166 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      168 LOADK                            R9 K33 ["FoundationUseMainGuiUtility2"]
      169 CALL                             R8 1 1
      170 CALL                             R8 0 1
      171 SETTABLEKS                       R8 R7 K34 ["FoundationUseMainGuiUtility"]
      173 SETTABLEKS                       R4 R7 K10 ["FoundationPopoverPluginDepthPool"]
      175 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      177 LOADK                            R9 K35 ["FoundationSheetFullBleed"]
      178 CALL                             R8 1 1
      179 CALL                             R8 0 1
      180 SETTABLEKS                       R8 R7 K35 ["FoundationSheetFullBleed"]
      182 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      184 LOADK                            R9 K36 ["FoundationTabsNavArrowsOnlyOnHover"]
      185 CALL                             R8 1 1
      186 CALL                             R8 0 1
      187 SETTABLEKS                       R8 R7 K36 ["FoundationTabsNavArrowsOnlyOnHover"]
      189 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      191 LOADK                            R9 K37 ["FoundationPopoverPluginSecurityGate"]
      192 CALL                             R8 1 1
      193 CALL                             R8 0 1
      194 SETTABLEKS                       R8 R7 K37 ["FoundationPopoverPluginSecurityGate"]
      196 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      198 LOADK                            R9 K38 ["FoundationSegmentedControlIconSupport"]
      199 CALL                             R8 1 1
      200 CALL                             R8 0 1
      201 SETTABLEKS                       R8 R7 K38 ["FoundationSegmentedControlIconSupport"]
      203 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      205 LOADK                            R9 K39 ["FoundationActionEmphasisStatusIndicator"]
      206 CALL                             R8 1 1
      207 CALL                             R8 0 1
      208 SETTABLEKS                       R8 R7 K39 ["FoundationActionEmphasisStatusIndicator"]
      210 AND                              R8 R5 R4
      211 SETTABLEKS                       R8 R7 K11 ["FoundationPopoverPluginPrewarmDepthPool"]
      213 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      215 LOADK                            R9 K40 ["FoundationInputSelectionProps"]
      216 CALL                             R8 1 1
      217 CALL                             R8 0 1
      218 SETTABLEKS                       R8 R7 K40 ["FoundationInputSelectionProps"]
      220 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      222 LOADK                            R9 K41 ["FoundationMigrateDeprecatedApis"]
      223 CALL                             R8 1 1
      224 CALL                             R8 0 1
      225 SETTABLEKS                       R8 R7 K41 ["FoundationMigrateDeprecatedApis"]
      227 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      229 LOADK                            R9 K42 ["FoundationSystemBannerOptionalTitle"]
      230 CALL                             R8 1 1
      231 CALL                             R8 0 1
      232 SETTABLEKS                       R8 R7 K42 ["FoundationSystemBannerOptionalTitle"]
      234 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      236 LOADK                            R9 K43 ["FoundationTextInputHighlightFix"]
      237 CALL                             R8 1 1
      238 CALL                             R8 0 1
      239 SETTABLEKS                       R8 R7 K43 ["FoundationTextInputHighlightFix"]
      241 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      243 LOADK                            R9 K44 ["FoundationTokenOverrides2"]
      244 CALL                             R8 1 1
      245 CALL                             R8 0 1
      246 SETTABLEKS                       R8 R7 K45 ["FoundationTokenOverrides"]
      248 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      250 LOADK                            R9 K46 ["FoundationButtonFillBehaviorEqualSize"]
      251 CALL                             R8 1 1
      252 CALL                             R8 0 1
      253 SETTABLEKS                       R8 R7 K46 ["FoundationButtonFillBehaviorEqualSize"]
      255 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      257 LOADK                            R9 K47 ["FoundationButtonLabelTypography"]
      258 CALL                             R8 1 1
      259 CALL                             R8 0 1
      260 SETTABLEKS                       R8 R7 K47 ["FoundationButtonLabelTypography"]
      262 SETTABLEKS                       R6 R7 K12 ["FoundationDropdownVariant"]
      264 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      266 LOADK                            R9 K48 ["FoundationTextAreaDelayMobileFocus"]
      267 CALL                             R8 1 1
      268 CALL                             R8 0 1
      269 SETTABLEKS                       R8 R7 K48 ["FoundationTextAreaDelayMobileFocus"]
      271 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      273 LOADK                            R9 K49 ["FoundationTextInputRemoveBackgroundStyle"]
      274 CALL                             R8 1 1
      275 CALL                             R8 0 1
      276 SETTABLEKS                       R8 R7 K49 ["FoundationTextInputRemoveBackgroundStyle"]
      278 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      280 LOADK                            R9 K50 ["FoundationSegmentedControlSizePaddingUpdate"]
      281 CALL                             R8 1 1
      282 CALL                             R8 0 1
      283 SETTABLEKS                       R8 R7 K50 ["FoundationSegmentedControlSizePaddingUpdate"]
      285 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      287 LOADK                            R9 K51 ["FoundationBottomSheetCapToOverlayHeight"]
      288 CALL                             R8 1 1
      289 CALL                             R8 0 1
      290 SETTABLEKS                       R8 R7 K51 ["FoundationBottomSheetCapToOverlayHeight"]
      292 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      294 LOADK                            R9 K52 ["FoundationDropdownSizeGap"]
      295 CALL                             R8 1 1
      296 CALL                             R8 0 1
      297 SETTABLEKS                       R8 R7 K52 ["FoundationDropdownSizeGap"]
      299 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      301 LOADK                            R9 K53 ["FoundationFullBleedSheetContent"]
      302 CALL                             R8 1 1
      303 CALL                             R8 0 1
      304 SETTABLEKS                       R8 R7 K53 ["FoundationFullBleedSheetContent"]
      306 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      308 LOADK                            R9 K54 ["FoundationTextInputsBetaUpdate"]
      309 CALL                             R8 1 1
      310 CALL                             R8 0 1
      311 SETTABLEKS                       R8 R7 K54 ["FoundationTextInputsBetaUpdate"]
      313 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      315 LOADK                            R9 K55 ["FoundationFixStaleAnimatedHighlightRefs"]
      316 CALL                             R8 1 1
      317 CALL                             R8 0 1
      318 SETTABLEKS                       R8 R7 K55 ["FoundationFixStaleAnimatedHighlightRefs"]
      320 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      322 LOADK                            R9 K56 ["FoundationPopoverClipAwareVisibility"]
      323 CALL                             R8 1 1
      324 CALL                             R8 0 1
      325 SETTABLEKS                       R8 R7 K56 ["FoundationPopoverClipAwareVisibility"]
      327 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      329 LOADK                            R9 K57 ["FoundationTabsInlineSizeFull"]
      330 CALL                             R8 1 1
      331 CALL                             R8 0 1
      332 SETTABLEKS                       R8 R7 K57 ["FoundationTabsInlineSizeFull"]
      334 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      336 LOADK                            R9 K58 ["FoundationBadgeBetaUpdate"]
      337 CALL                             R8 1 1
      338 CALL                             R8 0 1
      339 SETTABLEKS                       R8 R7 K58 ["FoundationBadgeBetaUpdate"]
      341 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      343 LOADK                            R9 K59 ["FoundationBaseMenuAutoYCanvasSizing"]
      344 CALL                             R8 1 1
      345 CALL                             R8 0 1
      346 SETTABLEKS                       R8 R7 K59 ["FoundationBaseMenuAutoYCanvasSizing"]
      348 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      350 LOADK                            R9 K60 ["FoundationBaseMenuBeta"]
      351 CALL                             R8 1 1
      352 CALL                             R8 0 1
      353 SETTABLEKS                       R8 R7 K60 ["FoundationBaseMenuBeta"]
      355 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      357 LOADK                            R9 K61 ["FoundationBottomSheetInnerScrollingSync"]
      358 CALL                             R8 1 1
      359 CALL                             R8 0 1
      360 SETTABLEKS                       R8 R7 K61 ["FoundationBottomSheetInnerScrollingSync"]
      362 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      364 LOADK                            R9 K62 ["FoundationChipBeta"]
      365 CALL                             R8 1 1
      366 CALL                             R8 0 1
      367 SETTABLEKS                       R8 R7 K62 ["FoundationChipBeta"]
      369 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      371 LOADK                            R9 K63 ["FoundationDialogAnimation2"]
      372 CALL                             R8 1 1
      373 CALL                             R8 0 1
      374 SETTABLEKS                       R8 R7 K64 ["FoundationDialogAnimation"]
      376 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      378 LOADK                            R9 K65 ["FoundationDropdownSelectionProps"]
      379 CALL                             R8 1 1
      380 CALL                             R8 0 1
      381 SETTABLEKS                       R8 R7 K65 ["FoundationDropdownSelectionProps"]
      383 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      385 LOADK                            R9 K66 ["FoundationPopoverPluginOverlayMeasurement"]
      386 CALL                             R8 1 1
      387 CALL                             R8 0 1
      388 SETTABLEKS                       R8 R7 K66 ["FoundationPopoverPluginOverlayMeasurement"]
      390 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      392 LOADK                            R9 K67 ["FoundationSegmentedControlCircular"]
      393 CALL                             R8 1 1
      394 CALL                             R8 0 1
      395 SETTABLEKS                       R8 R7 K67 ["FoundationSegmentedControlCircular"]
      397 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      399 LOADK                            R9 K68 ["FoundationStatusIndicatorBeta2"]
      400 CALL                             R8 1 1
      401 CALL                             R8 0 1
      402 SETTABLEKS                       R8 R7 K69 ["FoundationStatusIndicatorBeta"]
      404 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      406 LOADK                            R9 K70 ["FoundationCoachmarkInteractionFixes"]
      407 CALL                             R8 1 1
      408 CALL                             R8 0 1
      409 SETTABLEKS                       R8 R7 K70 ["FoundationCoachmarkInteractionFixes"]
      411 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      413 LOADK                            R9 K71 ["FoundationSupportPrefixSuffixNumberInput"]
      414 CALL                             R8 1 1
      415 CALL                             R8 0 1
      416 SETTABLEKS                       R8 R7 K71 ["FoundationSupportPrefixSuffixNumberInput"]
      418 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      420 LOADK                            R9 K72 ["FoundationPopoverPluginUriAnchor"]
      421 CALL                             R8 1 1
      422 CALL                             R8 0 1
      423 SETTABLEKS                       R8 R7 K72 ["FoundationPopoverPluginUriAnchor"]
      425 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      427 LOADK                            R9 K73 ["FoundationSystemBannerWrapActionsOnXSmall"]
      428 CALL                             R8 1 1
      429 CALL                             R8 0 1
      430 SETTABLEKS                       R8 R7 K73 ["FoundationSystemBannerWrapActionsOnXSmall"]
      432 RETURN                           R7 1
