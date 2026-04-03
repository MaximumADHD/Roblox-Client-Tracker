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
       16 LOADK                            R4 K9 ["FoundationInputFieldTokenBasedWidth"]
       17 CALL                             R3 1 1
       18 CALL                             R3 0 1
       19 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       21 LOADK                            R5 K10 ["FoundationTextInputTokenBasedWidth"]
       22 CALL                             R4 1 1
       23 CALL                             R4 0 1
       24 GETTABLEKS                       R5 R2 K8 ["createGetFFlag"]
       26 LOADK                            R6 K11 ["FoundationTextAreaTokenBasedWidth2"]
       27 CALL                             R5 1 1
       28 CALL                             R5 0 1
       29 GETTABLEKS                       R6 R2 K8 ["createGetFFlag"]
       31 LOADK                            R7 K12 ["FoundationTextInputAlignStrokeBehavior"]
       32 CALL                             R6 1 1
       33 CALL                             R6 0 1
       34 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       36 LOADK                            R8 K13 ["FoundationInternalTextInputVariants"]
       37 CALL                             R7 1 1
       38 CALL                             R7 0 1
       39 NEWTABLE                         R8 64 0
       41 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       43 LOADK                            R10 K14 ["FoundationPopoverOnScreenKeyboard"]
       44 CALL                             R9 1 1
       45 CALL                             R9 0 1
       46 SETTABLEKS                       R9 R8 K14 ["FoundationPopoverOnScreenKeyboard"]
       48 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       50 LOADK                            R10 K15 ["FoundationUsePath2DSpinner"]
       51 CALL                             R9 1 1
       52 CALL                             R9 0 1
       53 SETTABLEKS                       R9 R8 K15 ["FoundationUsePath2DSpinner"]
       55 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       57 LOADK                            R10 K16 ["FoundationStatusIndicatorVariantExperiment"]
       58 CALL                             R9 1 1
       59 CALL                             R9 0 1
       60 SETTABLEKS                       R9 R8 K16 ["FoundationStatusIndicatorVariantExperiment"]
       62 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       64 LOADK                            R10 K17 ["FoundationToggleVisualUpdate"]
       65 CALL                             R9 1 1
       66 CALL                             R9 0 1
       67 SETTABLEKS                       R9 R8 K17 ["FoundationToggleVisualUpdate"]
       69 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       71 LOADK                            R10 K18 ["FoundationOverlayLuaAppInsetsFix2"]
       72 CALL                             R9 1 1
       73 CALL                             R9 0 1
       74 SETTABLEKS                       R9 R8 K19 ["FoundationOverlayLuaAppInsetsFix"]
       76 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       78 LOADK                            R10 K20 ["FoundationDialogBodyUpdate1"]
       79 CALL                             R9 1 1
       80 CALL                             R9 0 1
       81 SETTABLEKS                       R9 R8 K21 ["FoundationDialogBodyUpdate"]
       83 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       85 LOADK                            R10 K22 ["FoundationSheetSideSheetTopBarFix"]
       86 CALL                             R9 1 1
       87 CALL                             R9 0 1
       88 SETTABLEKS                       R9 R8 K22 ["FoundationSheetSideSheetTopBarFix"]
       90 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       92 LOADK                            R10 K23 ["FoundationOverlayDisplayOrder"]
       93 CALL                             R9 1 1
       94 CALL                             R9 0 1
       95 SETTABLEKS                       R9 R8 K23 ["FoundationOverlayDisplayOrder"]
       97 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
       99 LOADK                            R10 K24 ["FoundationTabsDisableScrollSelection"]
      100 CALL                             R9 1 1
      101 CALL                             R9 0 1
      102 SETTABLEKS                       R9 R8 K24 ["FoundationTabsDisableScrollSelection"]
      104 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      106 LOADK                            R10 K25 ["FoundationFixOptionSelectorThickness"]
      107 CALL                             R9 1 1
      108 CALL                             R9 0 1
      109 SETTABLEKS                       R9 R8 K25 ["FoundationFixOptionSelectorThickness"]
      111 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      113 LOADK                            R10 K26 ["FoundationAddHeightPropToCenterSheet2"]
      114 CALL                             R9 1 1
      115 CALL                             R9 0 1
      116 SETTABLEKS                       R9 R8 K27 ["FoundationAddHeightPropToCenterSheet"]
      118 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      120 LOADK                            R10 K28 ["FoundationSheetActionsSinkInput"]
      121 CALL                             R9 1 1
      122 CALL                             R9 0 1
      123 SETTABLEKS                       R9 R8 K28 ["FoundationSheetActionsSinkInput"]
      125 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      127 LOADK                            R10 K29 ["FoundationSheetFixClosingSwipe"]
      128 CALL                             R9 1 1
      129 CALL                             R9 0 1
      130 SETTABLEKS                       R9 R8 K29 ["FoundationSheetFixClosingSwipe"]
      132 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      134 LOADK                            R10 K30 ["FoundationSheetHeaderSmallerPadding"]
      135 CALL                             R9 1 1
      136 CALL                             R9 0 1
      137 SETTABLEKS                       R9 R8 K30 ["FoundationSheetHeaderSmallerPadding"]
      139 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      141 LOADK                            R10 K31 ["FoundationLoadingWrapInView"]
      142 CALL                             R9 1 1
      143 CALL                             R9 0 1
      144 SETTABLEKS                       R9 R8 K31 ["FoundationLoadingWrapInView"]
      146 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      148 LOADK                            R10 K32 ["FoundationAddUtilityVariantToChip"]
      149 CALL                             R9 1 1
      150 CALL                             R9 0 1
      151 SETTABLEKS                       R9 R8 K32 ["FoundationAddUtilityVariantToChip"]
      153 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      155 LOADK                            R10 K33 ["FoundationBaseMenuDelayVisible"]
      156 CALL                             R9 1 1
      157 CALL                             R9 0 1
      158 SETTABLEKS                       R9 R8 K33 ["FoundationBaseMenuDelayVisible"]
      160 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      162 LOADK                            R10 K34 ["FoundationIconButtonFillBehavior"]
      163 CALL                             R9 1 1
      164 CALL                             R9 0 1
      165 SETTABLEKS                       R9 R8 K34 ["FoundationIconButtonFillBehavior"]
      167 SETTABLEKS                       R3 R8 K9 ["FoundationInputFieldTokenBasedWidth"]
      169 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      171 LOADK                            R10 K35 ["FoundationPopoverConditionalRender"]
      172 CALL                             R9 1 1
      173 CALL                             R9 0 1
      174 SETTABLEKS                       R9 R8 K35 ["FoundationPopoverConditionalRender"]
      176 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      178 LOADK                            R10 K36 ["FoundationProgressBindableValue"]
      179 CALL                             R9 1 1
      180 CALL                             R9 0 1
      181 SETTABLEKS                       R9 R8 K36 ["FoundationProgressBindableValue"]
      183 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      185 LOADK                            R10 K37 ["FoundationSideSheetNewWidthCalculation"]
      186 CALL                             R9 1 1
      187 CALL                             R9 0 1
      188 SETTABLEKS                       R9 R8 K37 ["FoundationSideSheetNewWidthCalculation"]
      190 AND                              R9 R3 R4
      191 SETTABLEKS                       R9 R8 K10 ["FoundationTextInputTokenBasedWidth"]
      193 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      195 LOADK                            R10 K38 ["FoundationNumberInputTokenBasedWidth2"]
      196 CALL                             R9 1 1
      197 CALL                             R9 0 1
      198 SETTABLEKS                       R9 R8 K39 ["FoundationNumberInputTokenBasedWidth"]
      200 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      202 LOADK                            R10 K40 ["FoundationIconButtonWidth"]
      203 CALL                             R9 1 1
      204 CALL                             R9 0 1
      205 SETTABLEKS                       R9 R8 K40 ["FoundationIconButtonWidth"]
      207 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      209 LOADK                            R10 K41 ["FoundationBottomSheetImproveSpring"]
      210 CALL                             R9 1 1
      211 CALL                             R9 0 1
      212 SETTABLEKS                       R9 R8 K41 ["FoundationBottomSheetImproveSpring"]
      214 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      216 LOADK                            R10 K42 ["FoundationButtonWidthAutoSize"]
      217 CALL                             R9 1 1
      218 CALL                             R9 0 1
      219 SETTABLEKS                       R9 R8 K42 ["FoundationButtonWidthAutoSize"]
      221 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      223 LOADK                            R10 K43 ["FoundationNumberInputFixControlSizes"]
      224 CALL                             R9 1 1
      225 CALL                             R9 0 1
      226 SETTABLEKS                       R9 R8 K43 ["FoundationNumberInputFixControlSizes"]
      228 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      230 LOADK                            R10 K44 ["FoundationSideSheetFixNewWidth"]
      231 CALL                             R9 1 1
      232 CALL                             R9 0 1
      233 SETTABLEKS                       R9 R8 K44 ["FoundationSideSheetFixNewWidth"]
      235 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      237 LOADK                            R10 K45 ["FoundationSupportPresentationContextInSelectionCursor"]
      238 CALL                             R9 1 1
      239 CALL                             R9 0 1
      240 SETTABLEKS                       R9 R8 K45 ["FoundationSupportPresentationContextInSelectionCursor"]
      242 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      244 LOADK                            R10 K46 ["FoundationColorPickerPartialHSV"]
      245 CALL                             R9 1 1
      246 CALL                             R9 0 1
      247 SETTABLEKS                       R9 R8 K46 ["FoundationColorPickerPartialHSV"]
      249 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      251 LOADK                            R10 K47 ["FoundationBaseMenuItemImageRadius"]
      252 CALL                             R9 1 1
      253 CALL                             R9 0 1
      254 SETTABLEKS                       R9 R8 K47 ["FoundationBaseMenuItemImageRadius"]
      256 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      258 LOADK                            R10 K48 ["FoundationDialogFixResponsiveSize"]
      259 CALL                             R9 1 1
      260 CALL                             R9 0 1
      261 SETTABLEKS                       R9 R8 K48 ["FoundationDialogFixResponsiveSize"]
      263 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      265 LOADK                            R10 K49 ["FoundationUseGetInsetArea"]
      266 CALL                             R9 1 1
      267 CALL                             R9 0 1
      268 SETTABLEKS                       R9 R8 K49 ["FoundationUseGetInsetArea"]
      270 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      272 LOADK                            R10 K50 ["FoundationAllowMockDataModel"]
      273 CALL                             R9 1 1
      274 CALL                             R9 0 1
      275 SETTABLEKS                       R9 R8 K50 ["FoundationAllowMockDataModel"]
      277 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      279 LOADK                            R10 K51 ["FoundationBuildingBlocksRemoveDashUnion"]
      280 CALL                             R9 1 1
      281 CALL                             R9 0 1
      282 SETTABLEKS                       R9 R8 K51 ["FoundationBuildingBlocksRemoveDashUnion"]
      284 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      286 LOADK                            R10 K52 ["FoundationDropdownControlIconFix"]
      287 CALL                             R9 1 1
      288 CALL                             R9 0 1
      289 SETTABLEKS                       R9 R8 K52 ["FoundationDropdownControlIconFix"]
      291 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      293 LOADK                            R10 K53 ["FoundationInternalTextInputCornerRadius"]
      294 CALL                             R9 1 1
      295 CALL                             R9 0 1
      296 SETTABLEKS                       R9 R8 K53 ["FoundationInternalTextInputCornerRadius"]
      298 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      300 LOADK                            R10 K54 ["FoundationOverlayKeyboardAwareness"]
      301 CALL                             R9 1 1
      302 CALL                             R9 0 1
      303 SETTABLEKS                       R9 R8 K54 ["FoundationOverlayKeyboardAwareness"]
      305 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      307 LOADK                            R10 K55 ["FoundationSheetActionsNotSelectable"]
      308 CALL                             R9 1 1
      309 CALL                             R9 0 1
      310 SETTABLEKS                       R9 R8 K55 ["FoundationSheetActionsNotSelectable"]
      312 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      314 LOADK                            R10 K56 ["FoundationSheetContentSelectable"]
      315 CALL                             R9 1 1
      316 CALL                             R9 0 1
      317 SETTABLEKS                       R9 R8 K56 ["FoundationSheetContentSelectable"]
      319 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      321 LOADK                            R10 K57 ["FoundationSheetPreventCloseOnResize"]
      322 CALL                             R9 1 1
      323 CALL                             R9 0 1
      324 SETTABLEKS                       R9 R8 K57 ["FoundationSheetPreventCloseOnResize"]
      326 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      328 LOADK                            R10 K58 ["FoundationSheetReducedMotion"]
      329 CALL                             R9 1 1
      330 CALL                             R9 0 1
      331 SETTABLEKS                       R9 R8 K58 ["FoundationSheetReducedMotion"]
      333 SETTABLEKS                       R6 R8 K12 ["FoundationTextInputAlignStrokeBehavior"]
      335 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      337 LOADK                            R10 K59 ["FoundationViewRemoveDashUnion"]
      338 CALL                             R9 1 1
      339 CALL                             R9 0 1
      340 SETTABLEKS                       R9 R8 K59 ["FoundationViewRemoveDashUnion"]
      342 AND                              R9 R7 R6
      343 SETTABLEKS                       R9 R8 K13 ["FoundationInternalTextInputVariants"]
      345 AND                              R9 R3 R5
      346 SETTABLEKS                       R9 R8 K60 ["FoundationTextAreaTokenBasedWidth"]
      348 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      350 LOADK                            R10 K61 ["FFlagFoundationDateTimePickerDSTFix"]
      351 CALL                             R9 1 1
      352 CALL                             R9 0 1
      353 SETTABLEKS                       R9 R8 K61 ["FFlagFoundationDateTimePickerDSTFix"]
      355 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      357 LOADK                            R10 K62 ["FoundationBaseMenuSubmenuSupport"]
      358 CALL                             R9 1 1
      359 CALL                             R9 0 1
      360 SETTABLEKS                       R9 R8 K62 ["FoundationBaseMenuSubmenuSupport"]
      362 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      364 LOADK                            R10 K63 ["FoundationCenterSheetUseStableContainer"]
      365 CALL                             R9 1 1
      366 CALL                             R9 0 1
      367 SETTABLEKS                       R9 R8 K63 ["FoundationCenterSheetUseStableContainer"]
      369 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      371 LOADK                            R10 K64 ["FoundationCleanupTextInputPolyfill2"]
      372 CALL                             R9 1 1
      373 CALL                             R9 0 1
      374 SETTABLEKS                       R9 R8 K65 ["FoundationCleanupTextInputPolyfill"]
      376 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      378 LOADK                            R10 K66 ["FoundationColorPickerDesignUpdate"]
      379 CALL                             R9 1 1
      380 CALL                             R9 0 1
      381 SETTABLEKS                       R9 R8 K66 ["FoundationColorPickerDesignUpdate"]
      383 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      385 LOADK                            R10 K67 ["FoundationElevationKeepSiblingZIndex2"]
      386 CALL                             R9 1 1
      387 CALL                             R9 0 1
      388 SETTABLEKS                       R9 R8 K68 ["FoundationElevationKeepSiblingZIndex"]
      390 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      392 LOADK                            R10 K69 ["FoundationImageSafeLookup"]
      393 CALL                             R9 1 1
      394 CALL                             R9 0 1
      395 SETTABLEKS                       R9 R8 K69 ["FoundationImageSafeLookup"]
      397 GETTABLEKS                       R9 R2 K8 ["createGetFFlag"]
      399 LOADK                            R10 K70 ["FoundationTruncateBadgeText2"]
      400 CALL                             R9 1 1
      401 CALL                             R9 0 1
      402 SETTABLEKS                       R9 R8 K71 ["FoundationTruncateBadgeText"]
      404 RETURN                           R8 1
