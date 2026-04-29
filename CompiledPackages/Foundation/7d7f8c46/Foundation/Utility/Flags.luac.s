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
       16 LOADK                            R4 K9 ["FoundationTextInputTokenBasedWidth"]
       17 CALL                             R3 1 1
       18 CALL                             R3 0 1
       19 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       21 LOADK                            R5 K10 ["FoundationTextAreaTokenBasedWidth2"]
       22 CALL                             R4 1 1
       23 CALL                             R4 0 1
       24 GETTABLEKS                       R5 R2 K8 ["createGetFFlag"]
       26 LOADK                            R6 K11 ["FoundationTextInputAlignStrokeBehavior"]
       27 CALL                             R5 1 1
       28 CALL                             R5 0 1
       29 GETTABLEKS                       R6 R2 K8 ["createGetFFlag"]
       31 LOADK                            R7 K12 ["FoundationBindableStateLayer"]
       32 CALL                             R6 1 1
       33 CALL                             R6 0 1
       34 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       36 LOADK                            R8 K13 ["FoundationInternalTextInputVariants"]
       37 CALL                             R7 1 1
       38 CALL                             R7 0 1
       39 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       41 LOADK                            R9 K14 ["FoundationInternalTextInputCornerRadius"]
       42 CALL                             R8 1 1
       43 CALL                             R8 0 1
       44 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       46 LOADK                            R10 K15 ["FoundationTextInputSingleLineCircleRadius"]
       47 CALL                             R9 1 1
       48 CALL                             R9 0 1
       49 NEWTABLE                         R10 64 0
       51 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
       53 LOADK                            R12 K16 ["FoundationUsePath2DSpinner"]
       54 CALL                             R11 1 1
       55 CALL                             R11 0 1
       56 SETTABLEKS                       R11 R10 K16 ["FoundationUsePath2DSpinner"]
       58 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
       60 LOADK                            R12 K17 ["FoundationStatusIndicatorVariantExperiment"]
       61 CALL                             R11 1 1
       62 CALL                             R11 0 1
       63 SETTABLEKS                       R11 R10 K17 ["FoundationStatusIndicatorVariantExperiment"]
       65 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
       67 LOADK                            R12 K18 ["FoundationToggleVisualUpdate"]
       68 CALL                             R11 1 1
       69 CALL                             R11 0 1
       70 SETTABLEKS                       R11 R10 K18 ["FoundationToggleVisualUpdate"]
       72 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
       74 LOADK                            R12 K19 ["FoundationOverlayLuaAppInsetsFix2"]
       75 CALL                             R11 1 1
       76 CALL                             R11 0 1
       77 SETTABLEKS                       R11 R10 K20 ["FoundationOverlayLuaAppInsetsFix"]
       79 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
       81 LOADK                            R12 K21 ["FoundationDialogBodyUpdate1"]
       82 CALL                             R11 1 1
       83 CALL                             R11 0 1
       84 SETTABLEKS                       R11 R10 K22 ["FoundationDialogBodyUpdate"]
       86 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
       88 LOADK                            R12 K23 ["FoundationOverlayDisplayOrder"]
       89 CALL                             R11 1 1
       90 CALL                             R11 0 1
       91 SETTABLEKS                       R11 R10 K23 ["FoundationOverlayDisplayOrder"]
       93 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
       95 LOADK                            R12 K24 ["FoundationTabsDisableScrollSelection"]
       96 CALL                             R11 1 1
       97 CALL                             R11 0 1
       98 SETTABLEKS                       R11 R10 K24 ["FoundationTabsDisableScrollSelection"]
      100 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      102 LOADK                            R12 K25 ["FoundationFixOptionSelectorThickness"]
      103 CALL                             R11 1 1
      104 CALL                             R11 0 1
      105 SETTABLEKS                       R11 R10 K25 ["FoundationFixOptionSelectorThickness"]
      107 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      109 LOADK                            R12 K26 ["FoundationAddHeightPropToCenterSheet2"]
      110 CALL                             R11 1 1
      111 CALL                             R11 0 1
      112 SETTABLEKS                       R11 R10 K27 ["FoundationAddHeightPropToCenterSheet"]
      114 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      116 LOADK                            R12 K28 ["FoundationSheetActionsSinkInput"]
      117 CALL                             R11 1 1
      118 CALL                             R11 0 1
      119 SETTABLEKS                       R11 R10 K28 ["FoundationSheetActionsSinkInput"]
      121 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      123 LOADK                            R12 K29 ["FoundationSheetFixClosingSwipe"]
      124 CALL                             R11 1 1
      125 CALL                             R11 0 1
      126 SETTABLEKS                       R11 R10 K29 ["FoundationSheetFixClosingSwipe"]
      128 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      130 LOADK                            R12 K30 ["FoundationSheetHeaderSmallerPadding"]
      131 CALL                             R11 1 1
      132 CALL                             R11 0 1
      133 SETTABLEKS                       R11 R10 K30 ["FoundationSheetHeaderSmallerPadding"]
      135 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      137 LOADK                            R12 K31 ["FoundationAddUtilityVariantToChip"]
      138 CALL                             R11 1 1
      139 CALL                             R11 0 1
      140 SETTABLEKS                       R11 R10 K31 ["FoundationAddUtilityVariantToChip"]
      142 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      144 LOADK                            R12 K32 ["FoundationBaseMenuDelayVisible"]
      145 CALL                             R11 1 1
      146 CALL                             R11 0 1
      147 SETTABLEKS                       R11 R10 K32 ["FoundationBaseMenuDelayVisible"]
      149 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      151 LOADK                            R12 K33 ["FoundationIconButtonFillBehavior"]
      152 CALL                             R11 1 1
      153 CALL                             R11 0 1
      154 SETTABLEKS                       R11 R10 K33 ["FoundationIconButtonFillBehavior"]
      156 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      158 LOADK                            R12 K34 ["FoundationPopoverConditionalRender"]
      159 CALL                             R11 1 1
      160 CALL                             R11 0 1
      161 SETTABLEKS                       R11 R10 K34 ["FoundationPopoverConditionalRender"]
      163 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      165 LOADK                            R12 K35 ["FoundationProgressBindableValue"]
      166 CALL                             R11 1 1
      167 CALL                             R11 0 1
      168 SETTABLEKS                       R11 R10 K35 ["FoundationProgressBindableValue"]
      170 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      172 LOADK                            R12 K36 ["FoundationSideSheetNewWidthCalculation"]
      173 CALL                             R11 1 1
      174 CALL                             R11 0 1
      175 SETTABLEKS                       R11 R10 K36 ["FoundationSideSheetNewWidthCalculation"]
      177 SETTABLEKS                       R3 R10 K9 ["FoundationTextInputTokenBasedWidth"]
      179 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      181 LOADK                            R12 K37 ["FoundationNumberInputTokenBasedWidth2"]
      182 CALL                             R11 1 1
      183 CALL                             R11 0 1
      184 SETTABLEKS                       R11 R10 K38 ["FoundationNumberInputTokenBasedWidth"]
      186 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      188 LOADK                            R12 K39 ["FoundationIconButtonWidth"]
      189 CALL                             R11 1 1
      190 CALL                             R11 0 1
      191 SETTABLEKS                       R11 R10 K39 ["FoundationIconButtonWidth"]
      193 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      195 LOADK                            R12 K40 ["FoundationBottomSheetImproveSpring"]
      196 CALL                             R11 1 1
      197 CALL                             R11 0 1
      198 SETTABLEKS                       R11 R10 K40 ["FoundationBottomSheetImproveSpring"]
      200 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      202 LOADK                            R12 K41 ["FoundationButtonWidthAutoSize"]
      203 CALL                             R11 1 1
      204 CALL                             R11 0 1
      205 SETTABLEKS                       R11 R10 K41 ["FoundationButtonWidthAutoSize"]
      207 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      209 LOADK                            R12 K42 ["FoundationNumberInputFixControlSizes"]
      210 CALL                             R11 1 1
      211 CALL                             R11 0 1
      212 SETTABLEKS                       R11 R10 K42 ["FoundationNumberInputFixControlSizes"]
      214 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      216 LOADK                            R12 K43 ["FoundationSideSheetFixNewWidth"]
      217 CALL                             R11 1 1
      218 CALL                             R11 0 1
      219 SETTABLEKS                       R11 R10 K43 ["FoundationSideSheetFixNewWidth"]
      221 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      223 LOADK                            R12 K44 ["FoundationSupportPresentationContextInSelectionCursor"]
      224 CALL                             R11 1 1
      225 CALL                             R11 0 1
      226 SETTABLEKS                       R11 R10 K44 ["FoundationSupportPresentationContextInSelectionCursor"]
      228 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      230 LOADK                            R12 K45 ["FoundationColorPickerPartialHSV"]
      231 CALL                             R11 1 1
      232 CALL                             R11 0 1
      233 SETTABLEKS                       R11 R10 K45 ["FoundationColorPickerPartialHSV"]
      235 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      237 LOADK                            R12 K46 ["FoundationBaseMenuItemImageRadius"]
      238 CALL                             R11 1 1
      239 CALL                             R11 0 1
      240 SETTABLEKS                       R11 R10 K46 ["FoundationBaseMenuItemImageRadius"]
      242 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      244 LOADK                            R12 K47 ["FoundationDialogFixResponsiveSize"]
      245 CALL                             R11 1 1
      246 CALL                             R11 0 1
      247 SETTABLEKS                       R11 R10 K47 ["FoundationDialogFixResponsiveSize"]
      249 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      251 LOADK                            R12 K48 ["FoundationUseGetInsetArea"]
      252 CALL                             R11 1 1
      253 CALL                             R11 0 1
      254 SETTABLEKS                       R11 R10 K48 ["FoundationUseGetInsetArea"]
      256 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      258 LOADK                            R12 K49 ["FoundationAllowMockDataModel"]
      259 CALL                             R11 1 1
      260 CALL                             R11 0 1
      261 SETTABLEKS                       R11 R10 K49 ["FoundationAllowMockDataModel"]
      263 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      265 LOADK                            R12 K50 ["FoundationBuildingBlocksRemoveDashUnion"]
      266 CALL                             R11 1 1
      267 CALL                             R11 0 1
      268 SETTABLEKS                       R11 R10 K50 ["FoundationBuildingBlocksRemoveDashUnion"]
      270 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      272 LOADK                            R12 K51 ["FoundationDropdownControlIconFix"]
      273 CALL                             R11 1 1
      274 CALL                             R11 0 1
      275 SETTABLEKS                       R11 R10 K51 ["FoundationDropdownControlIconFix"]
      277 SETTABLEKS                       R8 R10 K14 ["FoundationInternalTextInputCornerRadius"]
      279 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      281 LOADK                            R12 K52 ["FoundationOverlayKeyboardAwareness"]
      282 CALL                             R11 1 1
      283 CALL                             R11 0 1
      284 SETTABLEKS                       R11 R10 K52 ["FoundationOverlayKeyboardAwareness"]
      286 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      288 LOADK                            R12 K53 ["FoundationSheetActionsNotSelectable"]
      289 CALL                             R11 1 1
      290 CALL                             R11 0 1
      291 SETTABLEKS                       R11 R10 K53 ["FoundationSheetActionsNotSelectable"]
      293 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      295 LOADK                            R12 K54 ["FoundationSheetContentSelectable"]
      296 CALL                             R11 1 1
      297 CALL                             R11 0 1
      298 SETTABLEKS                       R11 R10 K54 ["FoundationSheetContentSelectable"]
      300 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      302 LOADK                            R12 K55 ["FoundationSheetPreventCloseOnResize"]
      303 CALL                             R11 1 1
      304 CALL                             R11 0 1
      305 SETTABLEKS                       R11 R10 K55 ["FoundationSheetPreventCloseOnResize"]
      307 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      309 LOADK                            R12 K56 ["FoundationSheetReducedMotion"]
      310 CALL                             R11 1 1
      311 CALL                             R11 0 1
      312 SETTABLEKS                       R11 R10 K56 ["FoundationSheetReducedMotion"]
      314 SETTABLEKS                       R5 R10 K11 ["FoundationTextInputAlignStrokeBehavior"]
      316 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      318 LOADK                            R12 K57 ["FoundationViewRemoveDashUnion"]
      319 CALL                             R11 1 1
      320 CALL                             R11 0 1
      321 SETTABLEKS                       R11 R10 K57 ["FoundationViewRemoveDashUnion"]
      323 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      325 LOADK                            R12 K58 ["FFlagFoundationDateTimePickerDSTFix"]
      326 CALL                             R11 1 1
      327 CALL                             R11 0 1
      328 SETTABLEKS                       R11 R10 K58 ["FFlagFoundationDateTimePickerDSTFix"]
      330 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      332 LOADK                            R12 K59 ["FoundationBaseMenuSubmenuSupport"]
      333 CALL                             R11 1 1
      334 CALL                             R11 0 1
      335 SETTABLEKS                       R11 R10 K59 ["FoundationBaseMenuSubmenuSupport"]
      337 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      339 LOADK                            R12 K60 ["FoundationCenterSheetUseStableContainer"]
      340 CALL                             R11 1 1
      341 CALL                             R11 0 1
      342 SETTABLEKS                       R11 R10 K60 ["FoundationCenterSheetUseStableContainer"]
      344 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      346 LOADK                            R12 K61 ["FoundationCleanupTextInputPolyfill2"]
      347 CALL                             R11 1 1
      348 CALL                             R11 0 1
      349 SETTABLEKS                       R11 R10 K62 ["FoundationCleanupTextInputPolyfill"]
      351 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      353 LOADK                            R12 K63 ["FoundationColorPickerDesignUpdate"]
      354 CALL                             R11 1 1
      355 CALL                             R11 0 1
      356 SETTABLEKS                       R11 R10 K63 ["FoundationColorPickerDesignUpdate"]
      358 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      360 LOADK                            R12 K64 ["FoundationElevationKeepSiblingZIndex2"]
      361 CALL                             R11 1 1
      362 CALL                             R11 0 1
      363 SETTABLEKS                       R11 R10 K65 ["FoundationElevationKeepSiblingZIndex"]
      365 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      367 LOADK                            R12 K66 ["FoundationImageSafeLookup"]
      368 CALL                             R11 1 1
      369 CALL                             R11 0 1
      370 SETTABLEKS                       R11 R10 K66 ["FoundationImageSafeLookup"]
      372 AND                              R11 R7 R5
      373 SETTABLEKS                       R11 R10 K13 ["FoundationInternalTextInputVariants"]
      375 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      377 LOADK                            R12 K67 ["FoundationTruncateBadgeText2"]
      378 CALL                             R11 1 1
      379 CALL                             R11 0 1
      380 SETTABLEKS                       R11 R10 K68 ["FoundationTruncateBadgeText"]
      382 AND                              R11 R9 R8
      383 SETTABLEKS                       R11 R10 K15 ["FoundationTextInputSingleLineCircleRadius"]
      385 SETTABLEKS                       R6 R10 K12 ["FoundationBindableStateLayer"]
      387 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      389 LOADK                            R12 K69 ["FoundationDateTimePickerScreenSize"]
      390 CALL                             R11 1 1
      391 CALL                             R11 0 1
      392 SETTABLEKS                       R11 R10 K69 ["FoundationDateTimePickerScreenSize"]
      394 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      396 LOADK                            R12 K70 ["FoundationDisableTokenScaling"]
      397 CALL                             R11 1 1
      398 CALL                             R11 0 1
      399 SETTABLEKS                       R11 R10 K70 ["FoundationDisableTokenScaling"]
      401 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      403 LOADK                            R12 K71 ["FoundationImageOnLoadedCallback"]
      404 CALL                             R11 1 1
      405 CALL                             R11 0 1
      406 SETTABLEKS                       R11 R10 K71 ["FoundationImageOnLoadedCallback"]
      408 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      410 LOADK                            R12 K72 ["FoundationInternalTextInputDisabledTransparency"]
      411 CALL                             R11 1 1
      412 CALL                             R11 0 1
      413 SETTABLEKS                       R11 R10 K72 ["FoundationInternalTextInputDisabledTransparency"]
      415 SETTABLEKS                       R4 R10 K73 ["FoundationTextAreaTokenBasedWidth"]
      417 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      419 LOADK                            R12 K74 ["FoundationTextSizeDefaults"]
      420 CALL                             R11 1 1
      421 CALL                             R11 0 1
      422 SETTABLEKS                       R11 R10 K74 ["FoundationTextSizeDefaults"]
      424 RETURN                           R10 1
