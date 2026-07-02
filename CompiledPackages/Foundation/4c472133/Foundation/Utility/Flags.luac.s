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
       21 LOADK                            R5 K10 ["FoundationUseAttributeTokens"]
       22 CALL                             R4 1 1
       23 CALL                             R4 0 1
       24 GETTABLEKS                       R5 R2 K8 ["createGetFFlag"]
       26 LOADK                            R6 K11 ["FoundationPopoverPluginDepthPool"]
       27 CALL                             R5 1 1
       28 CALL                             R5 0 1
       29 GETTABLEKS                       R6 R2 K8 ["createGetFFlag"]
       31 LOADK                            R7 K12 ["FoundationPopoverPluginPrewarmDepthPool"]
       32 CALL                             R6 1 1
       33 CALL                             R6 0 1
       34 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       36 LOADK                            R8 K13 ["FoundationDropdownVariant"]
       37 CALL                             R7 1 1
       38 CALL                             R7 0 1
       39 NEWTABLE                         R8 64 0
       41 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       43 LOADK                            R10 K14 ["FoundationUsePath2DSpinner"]
       44 CALL                             R9 1 1
       45 CALL                             R9 0 1
       46 SETTABLEKS                       R9 R8 K14 ["FoundationUsePath2DSpinner"]
       48 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       50 LOADK                            R10 K15 ["FoundationStatusIndicatorVariantExperiment"]
       51 CALL                             R9 1 1
       52 CALL                             R9 0 1
       53 SETTABLEKS                       R9 R8 K15 ["FoundationStatusIndicatorVariantExperiment"]
       55 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       57 LOADK                            R10 K16 ["FoundationToggleVisualUpdate"]
       58 CALL                             R9 1 1
       59 CALL                             R9 0 1
       60 SETTABLEKS                       R9 R8 K16 ["FoundationToggleVisualUpdate"]
       62 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       64 LOADK                            R10 K17 ["FoundationOverlayLuaAppInsetsFix2"]
       65 CALL                             R9 1 1
       66 CALL                             R9 0 1
       67 SETTABLEKS                       R9 R8 K18 ["FoundationOverlayLuaAppInsetsFix"]
       69 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       71 LOADK                            R10 K19 ["FoundationPopoverConditionalRender"]
       72 CALL                             R9 1 1
       73 CALL                             R9 0 1
       74 SETTABLEKS                       R9 R8 K19 ["FoundationPopoverConditionalRender"]
       76 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       78 LOADK                            R10 K20 ["FoundationSideSheetNewWidthCalculation"]
       79 CALL                             R9 1 1
       80 CALL                             R9 0 1
       81 SETTABLEKS                       R9 R8 K20 ["FoundationSideSheetNewWidthCalculation"]
       83 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       85 LOADK                            R10 K21 ["FoundationUseGetInsetArea"]
       86 CALL                             R9 1 1
       87 CALL                             R9 0 1
       88 SETTABLEKS                       R9 R8 K21 ["FoundationUseGetInsetArea"]
       90 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       92 LOADK                            R10 K22 ["FoundationAllowMockDataModel"]
       93 CALL                             R9 1 1
       94 CALL                             R9 0 1
       95 SETTABLEKS                       R9 R8 K22 ["FoundationAllowMockDataModel"]
       97 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       99 LOADK                            R10 K23 ["FoundationOverlayKeyboardAwareness"]
      100 CALL                             R9 1 1
      101 CALL                             R9 0 1
      102 SETTABLEKS                       R9 R8 K23 ["FoundationOverlayKeyboardAwareness"]
      104 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      106 LOADK                            R10 K24 ["FoundationSheetPreventCloseOnResize"]
      107 CALL                             R9 1 1
      108 CALL                             R9 0 1
      109 SETTABLEKS                       R9 R8 K24 ["FoundationSheetPreventCloseOnResize"]
      111 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      113 LOADK                            R10 K25 ["FoundationCenterSheetUseStableContainer"]
      114 CALL                             R9 1 1
      115 CALL                             R9 0 1
      116 SETTABLEKS                       R9 R8 K25 ["FoundationCenterSheetUseStableContainer"]
      118 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      120 LOADK                            R10 K26 ["FoundationTruncateBadgeText2"]
      121 CALL                             R9 1 1
      122 CALL                             R9 0 1
      123 SETTABLEKS                       R9 R8 K27 ["FoundationTruncateBadgeText"]
      125 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      127 LOADK                            R10 K28 ["FoundationBottomSheetImproveSpring2"]
      128 CALL                             R9 1 1
      129 CALL                             R9 0 1
      130 SETTABLEKS                       R9 R8 K29 ["FoundationBottomSheetImproveSpring"]
      132 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      134 LOADK                            R10 K30 ["FoundationDialogTitleEmphasisFix"]
      135 CALL                             R9 1 1
      136 CALL                             R9 0 1
      137 SETTABLEKS                       R9 R8 K30 ["FoundationDialogTitleEmphasisFix"]
      139 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      141 LOADK                            R10 K31 ["FoundationGuiObjectInputSinkProperty"]
      142 CALL                             R9 1 1
      143 CALL                             R9 0 1
      144 SETTABLEKS                       R9 R8 K31 ["FoundationGuiObjectInputSinkProperty"]
      146 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      148 LOADK                            R10 K32 ["FoundationSystemBannerUseSharedAlertActions"]
      149 CALL                             R9 1 1
      150 CALL                             R9 0 1
      151 SETTABLEKS                       R9 R8 K32 ["FoundationSystemBannerUseSharedAlertActions"]
      153 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      155 LOADK                            R10 K33 ["FoundationDialogAnimation"]
      156 CALL                             R9 1 1
      157 CALL                             R9 0 1
      158 SETTABLEKS                       R9 R8 K33 ["FoundationDialogAnimation"]
      160 SETTABLEKS                       R3 R8 K9 ["FoundationDisableStyleProviderDerives"]
      162 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      164 LOADK                            R10 K34 ["FoundationDisableTokenScaling2"]
      165 CALL                             R9 1 1
      166 CALL                             R9 0 1
      167 SETTABLEKS                       R9 R8 K35 ["FoundationDisableTokenScaling"]
      169 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      171 LOADK                            R10 K36 ["FoundationPopoverPluginSupport"]
      172 CALL                             R9 1 1
      173 CALL                             R9 0 1
      174 SETTABLEKS                       R9 R8 K36 ["FoundationPopoverPluginSupport"]
      176 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      178 LOADK                            R10 K37 ["FoundationTranslatorLocalizationRecovery"]
      179 CALL                             R9 1 1
      180 CALL                             R9 0 1
      181 SETTABLEKS                       R9 R8 K37 ["FoundationTranslatorLocalizationRecovery"]
      183 MOVE                             R9 R3
      184 JUMPIFNOT                        R9 ; [+5]
      185 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      187 LOADK                            R10 K38 ["FoundationUseStyleSheetRegistry"]
      188 CALL                             R9 1 1
      189 CALL                             R9 0 1
      190 SETTABLEKS                       R9 R8 K38 ["FoundationUseStyleSheetRegistry"]
      192 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      194 LOADK                            R10 K39 ["FoundationOverlayKeyboardAwarenessHardened"]
      195 CALL                             R9 1 1
      196 CALL                             R9 0 1
      197 SETTABLEKS                       R9 R8 K39 ["FoundationOverlayKeyboardAwarenessHardened"]
      199 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      201 LOADK                            R10 K40 ["FoundationTranslatorUseScript"]
      202 CALL                             R9 1 1
      203 CALL                             R9 0 1
      204 SETTABLEKS                       R9 R8 K40 ["FoundationTranslatorUseScript"]
      206 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      208 LOADK                            R10 K41 ["FoundationUseMainGuiUtility2"]
      209 CALL                             R9 1 1
      210 CALL                             R9 0 1
      211 SETTABLEKS                       R9 R8 K42 ["FoundationUseMainGuiUtility"]
      213 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      215 LOADK                            R10 K43 ["FoundationFixUserLevelPlugins"]
      216 CALL                             R9 1 1
      217 CALL                             R9 0 1
      218 SETTABLEKS                       R9 R8 K43 ["FoundationFixUserLevelPlugins"]
      220 SETTABLEKS                       R5 R8 K11 ["FoundationPopoverPluginDepthPool"]
      222 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      224 LOADK                            R10 K44 ["FoundationSheetFullBleed"]
      225 CALL                             R9 1 1
      226 CALL                             R9 0 1
      227 SETTABLEKS                       R9 R8 K44 ["FoundationSheetFullBleed"]
      229 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      231 LOADK                            R10 K45 ["FoundationTabsNavArrowsOnlyOnHover"]
      232 CALL                             R9 1 1
      233 CALL                             R9 0 1
      234 SETTABLEKS                       R9 R8 K45 ["FoundationTabsNavArrowsOnlyOnHover"]
      236 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      238 LOADK                            R10 K46 ["FoundationPopoverPluginSecurityGate"]
      239 CALL                             R9 1 1
      240 CALL                             R9 0 1
      241 SETTABLEKS                       R9 R8 K46 ["FoundationPopoverPluginSecurityGate"]
      243 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      245 LOADK                            R10 K47 ["FoundationSegmentedControlIconSupport"]
      246 CALL                             R9 1 1
      247 CALL                             R9 0 1
      248 SETTABLEKS                       R9 R8 K47 ["FoundationSegmentedControlIconSupport"]
      250 MOVE                             R9 R4
      251 JUMPIFNOT                        R9 ; [+5]
      252 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      254 LOADK                            R10 K48 ["FoundationTokenOverrides2"]
      255 CALL                             R9 1 1
      256 CALL                             R9 0 1
      257 SETTABLEKS                       R9 R8 K49 ["FoundationTokenOverrides"]
      259 SETTABLEKS                       R4 R8 K10 ["FoundationUseAttributeTokens"]
      261 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      263 LOADK                            R10 K50 ["FoundationActionEmphasisStatusIndicator"]
      264 CALL                             R9 1 1
      265 CALL                             R9 0 1
      266 SETTABLEKS                       R9 R8 K50 ["FoundationActionEmphasisStatusIndicator"]
      268 AND                              R9 R6 R5
      269 SETTABLEKS                       R9 R8 K12 ["FoundationPopoverPluginPrewarmDepthPool"]
      271 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      273 LOADK                            R10 K51 ["FoundationInputSelectionProps"]
      274 CALL                             R9 1 1
      275 CALL                             R9 0 1
      276 SETTABLEKS                       R9 R8 K51 ["FoundationInputSelectionProps"]
      278 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      280 LOADK                            R10 K52 ["FoundationMigrateDeprecatedApis"]
      281 CALL                             R9 1 1
      282 CALL                             R9 0 1
      283 SETTABLEKS                       R9 R8 K52 ["FoundationMigrateDeprecatedApis"]
      285 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      287 LOADK                            R10 K53 ["FoundationSystemBannerOptionalTitle"]
      288 CALL                             R9 1 1
      289 CALL                             R9 0 1
      290 SETTABLEKS                       R9 R8 K53 ["FoundationSystemBannerOptionalTitle"]
      292 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      294 LOADK                            R10 K54 ["FoundationFixNoCommonPropsOnComponentParents"]
      295 CALL                             R9 1 1
      296 CALL                             R9 0 1
      297 SETTABLEKS                       R9 R8 K54 ["FoundationFixNoCommonPropsOnComponentParents"]
      299 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      301 LOADK                            R10 K55 ["FoundationPopoverPluginVirtualAnchor"]
      302 CALL                             R9 1 1
      303 CALL                             R9 0 1
      304 SETTABLEKS                       R9 R8 K55 ["FoundationPopoverPluginVirtualAnchor"]
      306 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      308 LOADK                            R10 K56 ["FoundationTextInputHighlightFix"]
      309 CALL                             R9 1 1
      310 CALL                             R9 0 1
      311 SETTABLEKS                       R9 R8 K56 ["FoundationTextInputHighlightFix"]
      313 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      315 LOADK                            R10 K57 ["FoundationButtonFillBehaviorEqualSize"]
      316 CALL                             R9 1 1
      317 CALL                             R9 0 1
      318 SETTABLEKS                       R9 R8 K57 ["FoundationButtonFillBehaviorEqualSize"]
      320 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      322 LOADK                            R10 K58 ["FoundationButtonLabelTypography"]
      323 CALL                             R9 1 1
      324 CALL                             R9 0 1
      325 SETTABLEKS                       R9 R8 K58 ["FoundationButtonLabelTypography"]
      327 SETTABLEKS                       R7 R8 K13 ["FoundationDropdownVariant"]
      329 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      331 LOADK                            R10 K59 ["FoundationTextAreaDelayMobileFocus"]
      332 CALL                             R9 1 1
      333 CALL                             R9 0 1
      334 SETTABLEKS                       R9 R8 K59 ["FoundationTextAreaDelayMobileFocus"]
      336 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      338 LOADK                            R10 K60 ["FoundationTextInputRemoveBackgroundStyle"]
      339 CALL                             R9 1 1
      340 CALL                             R9 0 1
      341 SETTABLEKS                       R9 R8 K60 ["FoundationTextInputRemoveBackgroundStyle"]
      343 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      345 LOADK                            R10 K61 ["FoundationSegmentedControlSizePaddingUpdate"]
      346 CALL                             R9 1 1
      347 CALL                             R9 0 1
      348 SETTABLEKS                       R9 R8 K61 ["FoundationSegmentedControlSizePaddingUpdate"]
      350 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      352 LOADK                            R10 K62 ["FoundationBottomSheetCapToOverlayHeight"]
      353 CALL                             R9 1 1
      354 CALL                             R9 0 1
      355 SETTABLEKS                       R9 R8 K62 ["FoundationBottomSheetCapToOverlayHeight"]
      357 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      359 LOADK                            R10 K63 ["FoundationDropdownSizeGap"]
      360 CALL                             R9 1 1
      361 CALL                             R9 0 1
      362 SETTABLEKS                       R9 R8 K63 ["FoundationDropdownSizeGap"]
      364 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      366 LOADK                            R10 K64 ["FoundationFullBleedSheetContent"]
      367 CALL                             R9 1 1
      368 CALL                             R9 0 1
      369 SETTABLEKS                       R9 R8 K64 ["FoundationFullBleedSheetContent"]
      371 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      373 LOADK                            R10 K65 ["FoundationTextInputsBetaUpdate"]
      374 CALL                             R9 1 1
      375 CALL                             R9 0 1
      376 SETTABLEKS                       R9 R8 K65 ["FoundationTextInputsBetaUpdate"]
      378 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      380 LOADK                            R10 K66 ["FoundationFixStaleAnimatedHighlightRefs"]
      381 CALL                             R9 1 1
      382 CALL                             R9 0 1
      383 SETTABLEKS                       R9 R8 K66 ["FoundationFixStaleAnimatedHighlightRefs"]
      385 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      387 LOADK                            R10 K67 ["FoundationPopoverClipAwareVisibility"]
      388 CALL                             R9 1 1
      389 CALL                             R9 0 1
      390 SETTABLEKS                       R9 R8 K67 ["FoundationPopoverClipAwareVisibility"]
      392 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      394 LOADK                            R10 K68 ["FoundationTabsInlineSizeFull"]
      395 CALL                             R9 1 1
      396 CALL                             R9 0 1
      397 SETTABLEKS                       R9 R8 K68 ["FoundationTabsInlineSizeFull"]
      399 RETURN                           R8 1
