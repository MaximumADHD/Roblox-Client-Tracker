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
       26 LOADK                            R6 K11 ["FoundationTextAreaTokenBasedWidth"]
       27 CALL                             R5 1 1
       28 CALL                             R5 0 1
       29 GETTABLEKS                       R6 R2 K8 ["createGetFFlag"]
       31 LOADK                            R7 K12 ["FoundationFixPopoverShadowSizing"]
       32 CALL                             R6 1 1
       33 CALL                             R6 0 1
       34 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       36 LOADK                            R8 K13 ["FoundationUIStrokeInner2"]
       37 CALL                             R7 1 1
       38 CALL                             R7 0 1
       39 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       41 LOADK                            R9 K14 ["FoundationNumberInputFixScrubbableBG"]
       42 CALL                             R8 1 1
       43 CALL                             R8 0 1
       44 NEWTABLE                         R9 64 0
       46 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
       48 LOADK                            R11 K15 ["FoundationDisableStylingPolyfill"]
       49 CALL                             R10 1 1
       50 CALL                             R10 0 1
       51 SETTABLEKS                       R10 R9 K15 ["FoundationDisableStylingPolyfill"]
       53 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
       55 LOADK                            R11 K16 ["FoundationPopoverOnScreenKeyboard"]
       56 CALL                             R10 1 1
       57 CALL                             R10 0 1
       58 SETTABLEKS                       R10 R9 K16 ["FoundationPopoverOnScreenKeyboard"]
       60 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
       62 LOADK                            R11 K17 ["FoundationUsePath2DSpinner"]
       63 CALL                             R10 1 1
       64 CALL                             R10 0 1
       65 SETTABLEKS                       R10 R9 K17 ["FoundationUsePath2DSpinner"]
       67 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
       69 LOADK                            R11 K18 ["FoundationScrollViewMoveClipOutside"]
       70 CALL                             R10 1 1
       71 CALL                             R10 0 1
       72 SETTABLEKS                       R10 R9 K18 ["FoundationScrollViewMoveClipOutside"]
       74 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
       76 LOADK                            R11 K19 ["FoundationStatusIndicatorVariantExperiment"]
       77 CALL                             R10 1 1
       78 CALL                             R10 0 1
       79 SETTABLEKS                       R10 R9 K19 ["FoundationStatusIndicatorVariantExperiment"]
       81 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
       83 LOADK                            R11 K20 ["FoundationPopoverOverflow"]
       84 CALL                             R10 1 1
       85 CALL                             R10 0 1
       86 SETTABLEKS                       R10 R9 K20 ["FoundationPopoverOverflow"]
       88 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
       90 LOADK                            R11 K21 ["FoundationToggleVisualUpdate"]
       91 CALL                             R10 1 1
       92 CALL                             R10 0 1
       93 SETTABLEKS                       R10 R9 K21 ["FoundationToggleVisualUpdate"]
       95 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
       97 LOADK                            R11 K22 ["FoundationOverlayLuaAppInsetsFix2"]
       98 CALL                             R10 1 1
       99 CALL                             R10 0 1
      100 SETTABLEKS                       R10 R9 K23 ["FoundationOverlayLuaAppInsetsFix"]
      102 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      104 LOADK                            R11 K24 ["FoundationDialogBodyUpdate1"]
      105 CALL                             R10 1 1
      106 CALL                             R10 0 1
      107 SETTABLEKS                       R10 R9 K25 ["FoundationDialogBodyUpdate"]
      109 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      111 LOADK                            R11 K26 ["FoundationFixOptionSelectorGroupItemSize"]
      112 CALL                             R10 1 1
      113 CALL                             R10 0 1
      114 SETTABLEKS                       R10 R9 K26 ["FoundationFixOptionSelectorGroupItemSize"]
      116 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      118 LOADK                            R11 K27 ["FoundationOverlayMountReorder"]
      119 CALL                             R10 1 1
      120 CALL                             R10 0 1
      121 SETTABLEKS                       R10 R9 K27 ["FoundationOverlayMountReorder"]
      123 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      125 LOADK                            R11 K28 ["FoundationPopoverFixArrowPositioning"]
      126 CALL                             R10 1 1
      127 CALL                             R10 0 1
      128 SETTABLEKS                       R10 R9 K28 ["FoundationPopoverFixArrowPositioning"]
      130 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      132 LOADK                            R11 K29 ["FoundationSheetSideSheetTopBarFix"]
      133 CALL                             R10 1 1
      134 CALL                             R10 0 1
      135 SETTABLEKS                       R10 R9 K29 ["FoundationSheetSideSheetTopBarFix"]
      137 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      139 LOADK                            R11 K30 ["FoundationOverlayDisplayOrder"]
      140 CALL                             R10 1 1
      141 CALL                             R10 0 1
      142 SETTABLEKS                       R10 R9 K30 ["FoundationOverlayDisplayOrder"]
      144 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      146 LOADK                            R11 K31 ["FoundationFixedHeightDateTimePicker"]
      147 CALL                             R10 1 1
      148 CALL                             R10 0 1
      149 SETTABLEKS                       R10 R9 K31 ["FoundationFixedHeightDateTimePicker"]
      151 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      153 LOADK                            R11 K32 ["FoundationKnobRemoveGroupTransparency"]
      154 CALL                             R10 1 1
      155 CALL                             R10 0 1
      156 SETTABLEKS                       R10 R9 K32 ["FoundationKnobRemoveGroupTransparency"]
      158 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      160 LOADK                            R11 K33 ["FoundationTabsDisableScrollSelection"]
      161 CALL                             R10 1 1
      162 CALL                             R10 0 1
      163 SETTABLEKS                       R10 R9 K33 ["FoundationTabsDisableScrollSelection"]
      165 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      167 LOADK                            R11 K34 ["FoundationButtonLoadingHideTextWithIcon"]
      168 CALL                             R10 1 1
      169 CALL                             R10 0 1
      170 SETTABLEKS                       R10 R9 K34 ["FoundationButtonLoadingHideTextWithIcon"]
      172 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      174 LOADK                            R11 K35 ["FoundationDateTimePickerDefaultInputText"]
      175 CALL                             R10 1 1
      176 CALL                             R10 0 1
      177 SETTABLEKS                       R10 R9 K35 ["FoundationDateTimePickerDefaultInputText"]
      179 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      181 LOADK                            R11 K36 ["FoundationDateTimePickerDualBugFix"]
      182 CALL                             R10 1 1
      183 CALL                             R10 0 1
      184 SETTABLEKS                       R10 R9 K36 ["FoundationDateTimePickerDualBugFix"]
      186 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      188 LOADK                            R11 K37 ["FoundationCheckboxIndeterminate2"]
      189 CALL                             R10 1 1
      190 CALL                             R10 0 1
      191 SETTABLEKS                       R10 R9 K38 ["FoundationCheckboxIndeterminate"]
      193 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      195 LOADK                            R11 K39 ["FoundationDialogContentSelectable"]
      196 CALL                             R10 1 1
      197 CALL                             R10 0 1
      198 SETTABLEKS                       R10 R9 K39 ["FoundationDialogContentSelectable"]
      200 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      202 LOADK                            R11 K40 ["FoundationDontCreateUIDDForNumberInput"]
      203 CALL                             R10 1 1
      204 CALL                             R10 0 1
      205 SETTABLEKS                       R10 R9 K40 ["FoundationDontCreateUIDDForNumberInput"]
      207 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      209 LOADK                            R11 K41 ["FoundationFixOptionSelectorThickness"]
      210 CALL                             R10 1 1
      211 CALL                             R10 0 1
      212 SETTABLEKS                       R10 R9 K41 ["FoundationFixOptionSelectorThickness"]
      214 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      216 LOADK                            R11 K42 ["FoundationAddHeightPropToCenterSheet2"]
      217 CALL                             R10 1 1
      218 CALL                             R10 0 1
      219 SETTABLEKS                       R10 R9 K43 ["FoundationAddHeightPropToCenterSheet"]
      221 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      223 LOADK                            R11 K44 ["FoundationSheetActionsSinkInput"]
      224 CALL                             R10 1 1
      225 CALL                             R10 0 1
      226 SETTABLEKS                       R10 R9 K44 ["FoundationSheetActionsSinkInput"]
      228 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      230 LOADK                            R11 K45 ["FoundationSheetFixClosingSwipe"]
      231 CALL                             R10 1 1
      232 CALL                             R10 0 1
      233 SETTABLEKS                       R10 R9 K45 ["FoundationSheetFixClosingSwipe"]
      235 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      237 LOADK                            R11 K46 ["FoundationSheetHeaderSmallerPadding"]
      238 CALL                             R10 1 1
      239 CALL                             R10 0 1
      240 SETTABLEKS                       R10 R9 K46 ["FoundationSheetHeaderSmallerPadding"]
      242 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      244 LOADK                            R11 K47 ["FoundationFixAspectRatioBindingHandling"]
      245 CALL                             R10 1 1
      246 CALL                             R10 0 1
      247 SETTABLEKS                       R10 R9 K47 ["FoundationFixAspectRatioBindingHandling"]
      249 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      251 LOADK                            R11 K48 ["FoundationLoadingWrapInView"]
      252 CALL                             R10 1 1
      253 CALL                             R10 0 1
      254 SETTABLEKS                       R10 R9 K48 ["FoundationLoadingWrapInView"]
      256 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      258 LOADK                            R11 K49 ["FoundationAddUtilityVariantToChip"]
      259 CALL                             R10 1 1
      260 CALL                             R10 0 1
      261 SETTABLEKS                       R10 R9 K49 ["FoundationAddUtilityVariantToChip"]
      263 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      265 LOADK                            R11 K50 ["FoundationBaseMenuDelayVisible"]
      266 CALL                             R10 1 1
      267 CALL                             R10 0 1
      268 SETTABLEKS                       R10 R9 K50 ["FoundationBaseMenuDelayVisible"]
      270 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      272 LOADK                            R11 K51 ["FoundationIconButtonFillBehavior"]
      273 CALL                             R10 1 1
      274 CALL                             R10 0 1
      275 SETTABLEKS                       R10 R9 K51 ["FoundationIconButtonFillBehavior"]
      277 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      279 LOADK                            R11 K52 ["FoundationTruncateBadgeText"]
      280 CALL                             R10 1 1
      281 CALL                             R10 0 1
      282 SETTABLEKS                       R10 R9 K52 ["FoundationTruncateBadgeText"]
      284 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      286 LOADK                            R11 K53 ["FoundationProgressBindableValue"]
      287 CALL                             R10 1 1
      288 CALL                             R10 0 1
      289 SETTABLEKS                       R10 R9 K53 ["FoundationProgressBindableValue"]
      291 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      293 LOADK                            R11 K54 ["FoundationSideSheetNewWidthCalculation"]
      294 CALL                             R10 1 1
      295 CALL                             R10 0 1
      296 SETTABLEKS                       R10 R9 K54 ["FoundationSideSheetNewWidthCalculation"]
      298 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      300 LOADK                            R11 K55 ["FoundationNumberInputTokenBasedWidth2"]
      301 CALL                             R10 1 1
      302 CALL                             R10 0 1
      303 SETTABLEKS                       R10 R9 K56 ["FoundationNumberInputTokenBasedWidth"]
      305 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      307 LOADK                            R11 K57 ["FoundationElevationKeepSiblingZIndex"]
      308 CALL                             R10 1 1
      309 CALL                             R10 0 1
      310 SETTABLEKS                       R10 R9 K57 ["FoundationElevationKeepSiblingZIndex"]
      312 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      314 LOADK                            R11 K58 ["FoundationIconButtonWidth"]
      315 CALL                             R10 1 1
      316 CALL                             R10 0 1
      317 SETTABLEKS                       R10 R9 K58 ["FoundationIconButtonWidth"]
      319 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      321 LOADK                            R11 K59 ["FoundationBottomSheetImproveSpring"]
      322 CALL                             R10 1 1
      323 CALL                             R10 0 1
      324 SETTABLEKS                       R10 R9 K59 ["FoundationBottomSheetImproveSpring"]
      326 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      328 LOADK                            R11 K60 ["FoundationButtonWidthAutoSize"]
      329 CALL                             R10 1 1
      330 CALL                             R10 0 1
      331 SETTABLEKS                       R10 R9 K60 ["FoundationButtonWidthAutoSize"]
      333 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      335 LOADK                            R11 K61 ["FoundationNumberInputFixControlSizes"]
      336 CALL                             R10 1 1
      337 CALL                             R10 0 1
      338 SETTABLEKS                       R10 R9 K61 ["FoundationNumberInputFixControlSizes"]
      340 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      342 LOADK                            R11 K62 ["FoundationSideSheetFixNewWidth"]
      343 CALL                             R10 1 1
      344 CALL                             R10 0 1
      345 SETTABLEKS                       R10 R9 K62 ["FoundationSideSheetFixNewWidth"]
      347 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      349 LOADK                            R11 K63 ["FoundationSupportPresentationContextInSelectionCursor"]
      350 CALL                             R10 1 1
      351 CALL                             R10 0 1
      352 SETTABLEKS                       R10 R9 K63 ["FoundationSupportPresentationContextInSelectionCursor"]
      354 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      356 LOADK                            R11 K64 ["FoundationColorPickerPartialHSV"]
      357 CALL                             R10 1 1
      358 CALL                             R10 0 1
      359 SETTABLEKS                       R10 R9 K64 ["FoundationColorPickerPartialHSV"]
      361 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      363 LOADK                            R11 K65 ["FoundationBaseMenuItemImageRadius"]
      364 CALL                             R10 1 1
      365 CALL                             R10 0 1
      366 SETTABLEKS                       R10 R9 K65 ["FoundationBaseMenuItemImageRadius"]
      368 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      370 LOADK                            R11 K66 ["FoundationDialogFixResponsiveSize"]
      371 CALL                             R10 1 1
      372 CALL                             R10 0 1
      373 SETTABLEKS                       R10 R9 K66 ["FoundationDialogFixResponsiveSize"]
      375 SETTABLEKS                       R6 R9 K12 ["FoundationFixPopoverShadowSizing"]
      377 SETTABLEKS                       R3 R9 K9 ["FoundationInputFieldTokenBasedWidth"]
      379 AND                              R10 R7 R8
      380 SETTABLEKS                       R10 R9 K14 ["FoundationNumberInputFixScrubbableBG"]
      382 GETTABLEKS                       R11 R2 K8 ["createGetFFlag"]
      384 LOADK                            R12 K67 ["FoundationPopoverConditionalRender"]
      385 CALL                             R11 1 1
      386 CALL                             R11 0 1
      387 AND                              R10 R11 R6
      388 SETTABLEKS                       R10 R9 K67 ["FoundationPopoverConditionalRender"]
      390 AND                              R10 R3 R5
      391 SETTABLEKS                       R10 R9 K11 ["FoundationTextAreaTokenBasedWidth"]
      393 AND                              R10 R3 R4
      394 SETTABLEKS                       R10 R9 K10 ["FoundationTextInputTokenBasedWidth"]
      396 SETTABLEKS                       R7 R9 K68 ["FoundationUIStrokeInner"]
      398 GETTABLEKS                       R10 R2 K8 ["createGetFFlag"]
      400 LOADK                            R11 K69 ["FoundationUseGetInsetArea"]
      401 CALL                             R10 1 1
      402 CALL                             R10 0 1
      403 SETTABLEKS                       R10 R9 K69 ["FoundationUseGetInsetArea"]
      405 RETURN                           R9 1
