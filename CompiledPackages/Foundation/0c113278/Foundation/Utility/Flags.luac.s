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
       85 LOADK                            R10 K21 ["FoundationSideSheetFixNewWidth"]
       86 CALL                             R9 1 1
       87 CALL                             R9 0 1
       88 SETTABLEKS                       R9 R8 K21 ["FoundationSideSheetFixNewWidth"]
       90 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       92 LOADK                            R10 K22 ["FoundationUseGetInsetArea"]
       93 CALL                             R9 1 1
       94 CALL                             R9 0 1
       95 SETTABLEKS                       R9 R8 K22 ["FoundationUseGetInsetArea"]
       97 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       99 LOADK                            R10 K23 ["FoundationAllowMockDataModel"]
      100 CALL                             R9 1 1
      101 CALL                             R9 0 1
      102 SETTABLEKS                       R9 R8 K23 ["FoundationAllowMockDataModel"]
      104 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      106 LOADK                            R10 K24 ["FoundationOverlayKeyboardAwareness"]
      107 CALL                             R9 1 1
      108 CALL                             R9 0 1
      109 SETTABLEKS                       R9 R8 K24 ["FoundationOverlayKeyboardAwareness"]
      111 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      113 LOADK                            R10 K25 ["FoundationSheetPreventCloseOnResize"]
      114 CALL                             R9 1 1
      115 CALL                             R9 0 1
      116 SETTABLEKS                       R9 R8 K25 ["FoundationSheetPreventCloseOnResize"]
      118 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      120 LOADK                            R10 K26 ["FoundationCenterSheetUseStableContainer"]
      121 CALL                             R9 1 1
      122 CALL                             R9 0 1
      123 SETTABLEKS                       R9 R8 K26 ["FoundationCenterSheetUseStableContainer"]
      125 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      127 LOADK                            R10 K27 ["FoundationTruncateBadgeText2"]
      128 CALL                             R9 1 1
      129 CALL                             R9 0 1
      130 SETTABLEKS                       R9 R8 K28 ["FoundationTruncateBadgeText"]
      132 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      134 LOADK                            R10 K29 ["FoundationBottomSheetImproveSpring2"]
      135 CALL                             R9 1 1
      136 CALL                             R9 0 1
      137 SETTABLEKS                       R9 R8 K30 ["FoundationBottomSheetImproveSpring"]
      139 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      141 LOADK                            R10 K31 ["FoundationDialogTitleEmphasisFix"]
      142 CALL                             R9 1 1
      143 CALL                             R9 0 1
      144 SETTABLEKS                       R9 R8 K31 ["FoundationDialogTitleEmphasisFix"]
      146 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      148 LOADK                            R10 K32 ["FoundationGuiObjectInputSinkProperty"]
      149 CALL                             R9 1 1
      150 CALL                             R9 0 1
      151 SETTABLEKS                       R9 R8 K32 ["FoundationGuiObjectInputSinkProperty"]
      153 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      155 LOADK                            R10 K33 ["FoundationSystemBannerUseSharedAlertActions"]
      156 CALL                             R9 1 1
      157 CALL                             R9 0 1
      158 SETTABLEKS                       R9 R8 K33 ["FoundationSystemBannerUseSharedAlertActions"]
      160 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      162 LOADK                            R10 K34 ["FoundationDialogAnimation"]
      163 CALL                             R9 1 1
      164 CALL                             R9 0 1
      165 SETTABLEKS                       R9 R8 K34 ["FoundationDialogAnimation"]
      167 SETTABLEKS                       R3 R8 K9 ["FoundationDisableStyleProviderDerives"]
      169 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      171 LOADK                            R10 K35 ["FoundationDisableTokenScaling2"]
      172 CALL                             R9 1 1
      173 CALL                             R9 0 1
      174 SETTABLEKS                       R9 R8 K36 ["FoundationDisableTokenScaling"]
      176 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      178 LOADK                            R10 K37 ["FoundationPopoverPluginSupport"]
      179 CALL                             R9 1 1
      180 CALL                             R9 0 1
      181 SETTABLEKS                       R9 R8 K37 ["FoundationPopoverPluginSupport"]
      183 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      185 LOADK                            R10 K38 ["FoundationTranslatorLocalizationRecovery"]
      186 CALL                             R9 1 1
      187 CALL                             R9 0 1
      188 SETTABLEKS                       R9 R8 K38 ["FoundationTranslatorLocalizationRecovery"]
      190 MOVE                             R9 R3
      191 JUMPIFNOT                        R9 ; [+5]
      192 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      194 LOADK                            R10 K39 ["FoundationUseStyleSheetRegistry"]
      195 CALL                             R9 1 1
      196 CALL                             R9 0 1
      197 SETTABLEKS                       R9 R8 K39 ["FoundationUseStyleSheetRegistry"]
      199 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      201 LOADK                            R10 K40 ["FoundationDialogContentScrollbarFix"]
      202 CALL                             R9 1 1
      203 CALL                             R9 0 1
      204 SETTABLEKS                       R9 R8 K40 ["FoundationDialogContentScrollbarFix"]
      206 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      208 LOADK                            R10 K41 ["FoundationDialogContentScrollbarLayout"]
      209 CALL                             R9 1 1
      210 CALL                             R9 0 1
      211 SETTABLEKS                       R9 R8 K41 ["FoundationDialogContentScrollbarLayout"]
      213 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      215 LOADK                            R10 K42 ["FoundationOverlayKeyboardAwarenessHardened"]
      216 CALL                             R9 1 1
      217 CALL                             R9 0 1
      218 SETTABLEKS                       R9 R8 K42 ["FoundationOverlayKeyboardAwarenessHardened"]
      220 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      222 LOADK                            R10 K43 ["FoundationTranslatorUseScript"]
      223 CALL                             R9 1 1
      224 CALL                             R9 0 1
      225 SETTABLEKS                       R9 R8 K43 ["FoundationTranslatorUseScript"]
      227 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      229 LOADK                            R10 K44 ["FoundationUseMainGuiUtility2"]
      230 CALL                             R9 1 1
      231 CALL                             R9 0 1
      232 SETTABLEKS                       R9 R8 K45 ["FoundationUseMainGuiUtility"]
      234 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      236 LOADK                            R10 K46 ["FoundationFixUserLevelPlugins"]
      237 CALL                             R9 1 1
      238 CALL                             R9 0 1
      239 SETTABLEKS                       R9 R8 K46 ["FoundationFixUserLevelPlugins"]
      241 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      243 LOADK                            R10 K47 ["FoundationFixNestedSubMenuOnClick"]
      244 CALL                             R9 1 1
      245 CALL                             R9 0 1
      246 SETTABLEKS                       R9 R8 K47 ["FoundationFixNestedSubMenuOnClick"]
      248 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      250 LOADK                            R10 K48 ["FoundationMutedDropdownArrow"]
      251 CALL                             R9 1 1
      252 CALL                             R9 0 1
      253 SETTABLEKS                       R9 R8 K48 ["FoundationMutedDropdownArrow"]
      255 SETTABLEKS                       R5 R8 K11 ["FoundationPopoverPluginDepthPool"]
      257 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      259 LOADK                            R10 K49 ["FoundationReducedMotionAccordion"]
      260 CALL                             R9 1 1
      261 CALL                             R9 0 1
      262 SETTABLEKS                       R9 R8 K49 ["FoundationReducedMotionAccordion"]
      264 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      266 LOADK                            R10 K50 ["FoundationSheetFullBleed"]
      267 CALL                             R9 1 1
      268 CALL                             R9 0 1
      269 SETTABLEKS                       R9 R8 K50 ["FoundationSheetFullBleed"]
      271 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      273 LOADK                            R10 K51 ["FoundationTabsNavArrowsOnlyOnHover"]
      274 CALL                             R9 1 1
      275 CALL                             R9 0 1
      276 SETTABLEKS                       R9 R8 K51 ["FoundationTabsNavArrowsOnlyOnHover"]
      278 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      280 LOADK                            R10 K52 ["FoundationPopoverPluginSecurityGate"]
      281 CALL                             R9 1 1
      282 CALL                             R9 0 1
      283 SETTABLEKS                       R9 R8 K52 ["FoundationPopoverPluginSecurityGate"]
      285 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      287 LOADK                            R10 K53 ["FoundationSegmentedControlIconSupport"]
      288 CALL                             R9 1 1
      289 CALL                             R9 0 1
      290 SETTABLEKS                       R9 R8 K53 ["FoundationSegmentedControlIconSupport"]
      292 MOVE                             R9 R4
      293 JUMPIFNOT                        R9 ; [+5]
      294 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      296 LOADK                            R10 K54 ["FoundationTokenOverrides2"]
      297 CALL                             R9 1 1
      298 CALL                             R9 0 1
      299 SETTABLEKS                       R9 R8 K55 ["FoundationTokenOverrides"]
      301 SETTABLEKS                       R4 R8 K10 ["FoundationUseAttributeTokens"]
      303 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      305 LOADK                            R10 K56 ["FoundationActionEmphasisStatusIndicator"]
      306 CALL                             R9 1 1
      307 CALL                             R9 0 1
      308 SETTABLEKS                       R9 R8 K56 ["FoundationActionEmphasisStatusIndicator"]
      310 AND                              R9 R6 R5
      311 SETTABLEKS                       R9 R8 K12 ["FoundationPopoverPluginPrewarmDepthPool"]
      313 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      315 LOADK                            R10 K57 ["FoundationInputSelectionProps"]
      316 CALL                             R9 1 1
      317 CALL                             R9 0 1
      318 SETTABLEKS                       R9 R8 K57 ["FoundationInputSelectionProps"]
      320 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      322 LOADK                            R10 K58 ["FoundationMigrateDeprecatedApis"]
      323 CALL                             R9 1 1
      324 CALL                             R9 0 1
      325 SETTABLEKS                       R9 R8 K58 ["FoundationMigrateDeprecatedApis"]
      327 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      329 LOADK                            R10 K59 ["FoundationSystemBannerOptionalTitle"]
      330 CALL                             R9 1 1
      331 CALL                             R9 0 1
      332 SETTABLEKS                       R9 R8 K59 ["FoundationSystemBannerOptionalTitle"]
      334 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      336 LOADK                            R10 K60 ["FoundationFixNoCommonPropsOnComponentParents"]
      337 CALL                             R9 1 1
      338 CALL                             R9 0 1
      339 SETTABLEKS                       R9 R8 K60 ["FoundationFixNoCommonPropsOnComponentParents"]
      341 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      343 LOADK                            R10 K61 ["FoundationPopoverPluginVirtualAnchor"]
      344 CALL                             R9 1 1
      345 CALL                             R9 0 1
      346 SETTABLEKS                       R9 R8 K61 ["FoundationPopoverPluginVirtualAnchor"]
      348 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      350 LOADK                            R10 K62 ["FoundationTextInputHighlightFix"]
      351 CALL                             R9 1 1
      352 CALL                             R9 0 1
      353 SETTABLEKS                       R9 R8 K62 ["FoundationTextInputHighlightFix"]
      355 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      357 LOADK                            R10 K63 ["FoundationButtonFillBehaviorEqualSize"]
      358 CALL                             R9 1 1
      359 CALL                             R9 0 1
      360 SETTABLEKS                       R9 R8 K63 ["FoundationButtonFillBehaviorEqualSize"]
      362 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      364 LOADK                            R10 K64 ["FoundationButtonLabelTypography"]
      365 CALL                             R9 1 1
      366 CALL                             R9 0 1
      367 SETTABLEKS                       R9 R8 K64 ["FoundationButtonLabelTypography"]
      369 SETTABLEKS                       R7 R8 K13 ["FoundationDropdownVariant"]
      371 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      373 LOADK                            R10 K65 ["FoundationTextAreaDelayMobileFocus"]
      374 CALL                             R9 1 1
      375 CALL                             R9 0 1
      376 SETTABLEKS                       R9 R8 K65 ["FoundationTextAreaDelayMobileFocus"]
      378 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      380 LOADK                            R10 K66 ["FoundationTextInputRemoveBackgroundStyle"]
      381 CALL                             R9 1 1
      382 CALL                             R9 0 1
      383 SETTABLEKS                       R9 R8 K66 ["FoundationTextInputRemoveBackgroundStyle"]
      385 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      387 LOADK                            R10 K67 ["FoundationSegmentedControlSizePaddingUpdate"]
      388 CALL                             R9 1 1
      389 CALL                             R9 0 1
      390 SETTABLEKS                       R9 R8 K67 ["FoundationSegmentedControlSizePaddingUpdate"]
      392 RETURN                           R8 1
