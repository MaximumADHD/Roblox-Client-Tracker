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
       59 LOADK                            R9 K16 ["FoundationOverlayLuaAppInsetsFix2"]
       60 CALL                             R8 1 1
       61 CALL                             R8 0 1
       62 SETTABLEKS                       R8 R7 K17 ["FoundationOverlayLuaAppInsetsFix"]
       64 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       66 LOADK                            R9 K18 ["FoundationPopoverConditionalRender"]
       67 CALL                             R8 1 1
       68 CALL                             R8 0 1
       69 SETTABLEKS                       R8 R7 K18 ["FoundationPopoverConditionalRender"]
       71 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       73 LOADK                            R9 K19 ["FoundationSideSheetNewWidthCalculation"]
       74 CALL                             R8 1 1
       75 CALL                             R8 0 1
       76 SETTABLEKS                       R8 R7 K19 ["FoundationSideSheetNewWidthCalculation"]
       78 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       80 LOADK                            R9 K20 ["FoundationUseGetInsetArea"]
       81 CALL                             R8 1 1
       82 CALL                             R8 0 1
       83 SETTABLEKS                       R8 R7 K20 ["FoundationUseGetInsetArea"]
       85 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       87 LOADK                            R9 K21 ["FoundationAllowMockDataModel"]
       88 CALL                             R8 1 1
       89 CALL                             R8 0 1
       90 SETTABLEKS                       R8 R7 K21 ["FoundationAllowMockDataModel"]
       92 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       94 LOADK                            R9 K22 ["FoundationOverlayKeyboardAwareness"]
       95 CALL                             R8 1 1
       96 CALL                             R8 0 1
       97 SETTABLEKS                       R8 R7 K22 ["FoundationOverlayKeyboardAwareness"]
       99 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      101 LOADK                            R9 K23 ["FoundationSheetPreventCloseOnResize"]
      102 CALL                             R8 1 1
      103 CALL                             R8 0 1
      104 SETTABLEKS                       R8 R7 K23 ["FoundationSheetPreventCloseOnResize"]
      106 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      108 LOADK                            R9 K24 ["FoundationCenterSheetUseStableContainer"]
      109 CALL                             R8 1 1
      110 CALL                             R8 0 1
      111 SETTABLEKS                       R8 R7 K24 ["FoundationCenterSheetUseStableContainer"]
      113 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      115 LOADK                            R9 K25 ["FoundationTruncateBadgeText2"]
      116 CALL                             R8 1 1
      117 CALL                             R8 0 1
      118 SETTABLEKS                       R8 R7 K26 ["FoundationTruncateBadgeText"]
      120 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      122 LOADK                            R9 K27 ["FoundationBottomSheetImproveSpring2"]
      123 CALL                             R8 1 1
      124 CALL                             R8 0 1
      125 SETTABLEKS                       R8 R7 K28 ["FoundationBottomSheetImproveSpring"]
      127 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      129 LOADK                            R9 K29 ["FoundationDialogTitleEmphasisFix"]
      130 CALL                             R8 1 1
      131 CALL                             R8 0 1
      132 SETTABLEKS                       R8 R7 K29 ["FoundationDialogTitleEmphasisFix"]
      134 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      136 LOADK                            R9 K30 ["FoundationGuiObjectInputSinkProperty"]
      137 CALL                             R8 1 1
      138 CALL                             R8 0 1
      139 SETTABLEKS                       R8 R7 K30 ["FoundationGuiObjectInputSinkProperty"]
      141 SETTABLEKS                       R3 R7 K9 ["FoundationDisableStyleProviderDerives"]
      143 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      145 LOADK                            R9 K31 ["FoundationDisableTokenScaling2"]
      146 CALL                             R8 1 1
      147 CALL                             R8 0 1
      148 SETTABLEKS                       R8 R7 K32 ["FoundationDisableTokenScaling"]
      150 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      152 LOADK                            R9 K33 ["FoundationPopoverPluginSupport"]
      153 CALL                             R8 1 1
      154 CALL                             R8 0 1
      155 SETTABLEKS                       R8 R7 K33 ["FoundationPopoverPluginSupport"]
      157 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      159 LOADK                            R9 K34 ["FoundationTranslatorLocalizationRecovery"]
      160 CALL                             R8 1 1
      161 CALL                             R8 0 1
      162 SETTABLEKS                       R8 R7 K34 ["FoundationTranslatorLocalizationRecovery"]
      164 MOVE                             R8 R3
      165 JUMPIFNOT                        R8 ; [+5]
      166 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      168 LOADK                            R9 K35 ["FoundationUseStyleSheetRegistry"]
      169 CALL                             R8 1 1
      170 CALL                             R8 0 1
      171 SETTABLEKS                       R8 R7 K35 ["FoundationUseStyleSheetRegistry"]
      173 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      175 LOADK                            R9 K36 ["FoundationOverlayKeyboardAwarenessHardened"]
      176 CALL                             R8 1 1
      177 CALL                             R8 0 1
      178 SETTABLEKS                       R8 R7 K36 ["FoundationOverlayKeyboardAwarenessHardened"]
      180 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      182 LOADK                            R9 K37 ["FoundationTranslatorUseScript"]
      183 CALL                             R8 1 1
      184 CALL                             R8 0 1
      185 SETTABLEKS                       R8 R7 K37 ["FoundationTranslatorUseScript"]
      187 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      189 LOADK                            R9 K38 ["FoundationUseMainGuiUtility2"]
      190 CALL                             R8 1 1
      191 CALL                             R8 0 1
      192 SETTABLEKS                       R8 R7 K39 ["FoundationUseMainGuiUtility"]
      194 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      196 LOADK                            R9 K40 ["FoundationFixUserLevelPlugins"]
      197 CALL                             R8 1 1
      198 CALL                             R8 0 1
      199 SETTABLEKS                       R8 R7 K40 ["FoundationFixUserLevelPlugins"]
      201 SETTABLEKS                       R4 R7 K10 ["FoundationPopoverPluginDepthPool"]
      203 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      205 LOADK                            R9 K41 ["FoundationSheetFullBleed"]
      206 CALL                             R8 1 1
      207 CALL                             R8 0 1
      208 SETTABLEKS                       R8 R7 K41 ["FoundationSheetFullBleed"]
      210 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      212 LOADK                            R9 K42 ["FoundationTabsNavArrowsOnlyOnHover"]
      213 CALL                             R8 1 1
      214 CALL                             R8 0 1
      215 SETTABLEKS                       R8 R7 K42 ["FoundationTabsNavArrowsOnlyOnHover"]
      217 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      219 LOADK                            R9 K43 ["FoundationPopoverPluginSecurityGate"]
      220 CALL                             R8 1 1
      221 CALL                             R8 0 1
      222 SETTABLEKS                       R8 R7 K43 ["FoundationPopoverPluginSecurityGate"]
      224 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      226 LOADK                            R9 K44 ["FoundationSegmentedControlIconSupport"]
      227 CALL                             R8 1 1
      228 CALL                             R8 0 1
      229 SETTABLEKS                       R8 R7 K44 ["FoundationSegmentedControlIconSupport"]
      231 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      233 LOADK                            R9 K45 ["FoundationActionEmphasisStatusIndicator"]
      234 CALL                             R8 1 1
      235 CALL                             R8 0 1
      236 SETTABLEKS                       R8 R7 K45 ["FoundationActionEmphasisStatusIndicator"]
      238 AND                              R8 R5 R4
      239 SETTABLEKS                       R8 R7 K11 ["FoundationPopoverPluginPrewarmDepthPool"]
      241 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      243 LOADK                            R9 K46 ["FoundationInputSelectionProps"]
      244 CALL                             R8 1 1
      245 CALL                             R8 0 1
      246 SETTABLEKS                       R8 R7 K46 ["FoundationInputSelectionProps"]
      248 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      250 LOADK                            R9 K47 ["FoundationMigrateDeprecatedApis"]
      251 CALL                             R8 1 1
      252 CALL                             R8 0 1
      253 SETTABLEKS                       R8 R7 K47 ["FoundationMigrateDeprecatedApis"]
      255 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      257 LOADK                            R9 K48 ["FoundationSystemBannerOptionalTitle"]
      258 CALL                             R8 1 1
      259 CALL                             R8 0 1
      260 SETTABLEKS                       R8 R7 K48 ["FoundationSystemBannerOptionalTitle"]
      262 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      264 LOADK                            R9 K49 ["FoundationTextInputHighlightFix"]
      265 CALL                             R8 1 1
      266 CALL                             R8 0 1
      267 SETTABLEKS                       R8 R7 K49 ["FoundationTextInputHighlightFix"]
      269 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      271 LOADK                            R9 K50 ["FoundationTokenOverrides2"]
      272 CALL                             R8 1 1
      273 CALL                             R8 0 1
      274 SETTABLEKS                       R8 R7 K51 ["FoundationTokenOverrides"]
      276 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      278 LOADK                            R9 K52 ["FoundationButtonFillBehaviorEqualSize"]
      279 CALL                             R8 1 1
      280 CALL                             R8 0 1
      281 SETTABLEKS                       R8 R7 K52 ["FoundationButtonFillBehaviorEqualSize"]
      283 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      285 LOADK                            R9 K53 ["FoundationButtonLabelTypography"]
      286 CALL                             R8 1 1
      287 CALL                             R8 0 1
      288 SETTABLEKS                       R8 R7 K53 ["FoundationButtonLabelTypography"]
      290 SETTABLEKS                       R6 R7 K12 ["FoundationDropdownVariant"]
      292 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      294 LOADK                            R9 K54 ["FoundationTextAreaDelayMobileFocus"]
      295 CALL                             R8 1 1
      296 CALL                             R8 0 1
      297 SETTABLEKS                       R8 R7 K54 ["FoundationTextAreaDelayMobileFocus"]
      299 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      301 LOADK                            R9 K55 ["FoundationTextInputRemoveBackgroundStyle"]
      302 CALL                             R8 1 1
      303 CALL                             R8 0 1
      304 SETTABLEKS                       R8 R7 K55 ["FoundationTextInputRemoveBackgroundStyle"]
      306 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      308 LOADK                            R9 K56 ["FoundationSegmentedControlSizePaddingUpdate"]
      309 CALL                             R8 1 1
      310 CALL                             R8 0 1
      311 SETTABLEKS                       R8 R7 K56 ["FoundationSegmentedControlSizePaddingUpdate"]
      313 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      315 LOADK                            R9 K57 ["FoundationBottomSheetCapToOverlayHeight"]
      316 CALL                             R8 1 1
      317 CALL                             R8 0 1
      318 SETTABLEKS                       R8 R7 K57 ["FoundationBottomSheetCapToOverlayHeight"]
      320 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      322 LOADK                            R9 K58 ["FoundationDropdownSizeGap"]
      323 CALL                             R8 1 1
      324 CALL                             R8 0 1
      325 SETTABLEKS                       R8 R7 K58 ["FoundationDropdownSizeGap"]
      327 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      329 LOADK                            R9 K59 ["FoundationFullBleedSheetContent"]
      330 CALL                             R8 1 1
      331 CALL                             R8 0 1
      332 SETTABLEKS                       R8 R7 K59 ["FoundationFullBleedSheetContent"]
      334 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      336 LOADK                            R9 K60 ["FoundationTextInputsBetaUpdate"]
      337 CALL                             R8 1 1
      338 CALL                             R8 0 1
      339 SETTABLEKS                       R8 R7 K60 ["FoundationTextInputsBetaUpdate"]
      341 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      343 LOADK                            R9 K61 ["FoundationFixStaleAnimatedHighlightRefs"]
      344 CALL                             R8 1 1
      345 CALL                             R8 0 1
      346 SETTABLEKS                       R8 R7 K61 ["FoundationFixStaleAnimatedHighlightRefs"]
      348 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      350 LOADK                            R9 K62 ["FoundationPopoverClipAwareVisibility"]
      351 CALL                             R8 1 1
      352 CALL                             R8 0 1
      353 SETTABLEKS                       R8 R7 K62 ["FoundationPopoverClipAwareVisibility"]
      355 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      357 LOADK                            R9 K63 ["FoundationTabsInlineSizeFull"]
      358 CALL                             R8 1 1
      359 CALL                             R8 0 1
      360 SETTABLEKS                       R8 R7 K63 ["FoundationTabsInlineSizeFull"]
      362 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      364 LOADK                            R9 K64 ["FoundationBadgeBetaUpdate"]
      365 CALL                             R8 1 1
      366 CALL                             R8 0 1
      367 SETTABLEKS                       R8 R7 K64 ["FoundationBadgeBetaUpdate"]
      369 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      371 LOADK                            R9 K65 ["FoundationBaseMenuAutoYCanvasSizing"]
      372 CALL                             R8 1 1
      373 CALL                             R8 0 1
      374 SETTABLEKS                       R8 R7 K65 ["FoundationBaseMenuAutoYCanvasSizing"]
      376 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      378 LOADK                            R9 K66 ["FoundationBaseMenuBeta"]
      379 CALL                             R8 1 1
      380 CALL                             R8 0 1
      381 SETTABLEKS                       R8 R7 K66 ["FoundationBaseMenuBeta"]
      383 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      385 LOADK                            R9 K67 ["FoundationBottomSheetInnerScrollingSync"]
      386 CALL                             R8 1 1
      387 CALL                             R8 0 1
      388 SETTABLEKS                       R8 R7 K67 ["FoundationBottomSheetInnerScrollingSync"]
      390 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      392 LOADK                            R9 K68 ["FoundationChipBeta"]
      393 CALL                             R8 1 1
      394 CALL                             R8 0 1
      395 SETTABLEKS                       R8 R7 K68 ["FoundationChipBeta"]
      397 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      399 LOADK                            R9 K69 ["FoundationDialogAnimation2"]
      400 CALL                             R8 1 1
      401 CALL                             R8 0 1
      402 SETTABLEKS                       R8 R7 K70 ["FoundationDialogAnimation"]
      404 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      406 LOADK                            R9 K71 ["FoundationDropdownSelectionProps"]
      407 CALL                             R8 1 1
      408 CALL                             R8 0 1
      409 SETTABLEKS                       R8 R7 K71 ["FoundationDropdownSelectionProps"]
      411 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      413 LOADK                            R9 K72 ["FoundationPopoverPluginOverlayMeasurement"]
      414 CALL                             R8 1 1
      415 CALL                             R8 0 1
      416 SETTABLEKS                       R8 R7 K72 ["FoundationPopoverPluginOverlayMeasurement"]
      418 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      420 LOADK                            R9 K73 ["FoundationSegmentedControlCircular"]
      421 CALL                             R8 1 1
      422 CALL                             R8 0 1
      423 SETTABLEKS                       R8 R7 K73 ["FoundationSegmentedControlCircular"]
      425 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      427 LOADK                            R9 K74 ["FoundationStatusIndicatorBeta2"]
      428 CALL                             R8 1 1
      429 CALL                             R8 0 1
      430 SETTABLEKS                       R8 R7 K75 ["FoundationStatusIndicatorBeta"]
      432 RETURN                           R7 1
