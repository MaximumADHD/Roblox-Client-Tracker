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
       34 NEWTABLE                         R7 64 0
       36 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       38 LOADK                            R9 K13 ["FoundationPopoverOnScreenKeyboard"]
       39 CALL                             R8 1 1
       40 CALL                             R8 0 1
       41 SETTABLEKS                       R8 R7 K13 ["FoundationPopoverOnScreenKeyboard"]
       43 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       45 LOADK                            R9 K14 ["FoundationUsePath2DSpinner"]
       46 CALL                             R8 1 1
       47 CALL                             R8 0 1
       48 SETTABLEKS                       R8 R7 K14 ["FoundationUsePath2DSpinner"]
       50 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       52 LOADK                            R9 K15 ["FoundationStatusIndicatorVariantExperiment"]
       53 CALL                             R8 1 1
       54 CALL                             R8 0 1
       55 SETTABLEKS                       R8 R7 K15 ["FoundationStatusIndicatorVariantExperiment"]
       57 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       59 LOADK                            R9 K16 ["FoundationToggleVisualUpdate"]
       60 CALL                             R8 1 1
       61 CALL                             R8 0 1
       62 SETTABLEKS                       R8 R7 K16 ["FoundationToggleVisualUpdate"]
       64 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       66 LOADK                            R9 K17 ["FoundationOverlayLuaAppInsetsFix2"]
       67 CALL                             R8 1 1
       68 CALL                             R8 0 1
       69 SETTABLEKS                       R8 R7 K18 ["FoundationOverlayLuaAppInsetsFix"]
       71 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       73 LOADK                            R9 K19 ["FoundationDialogBodyUpdate1"]
       74 CALL                             R8 1 1
       75 CALL                             R8 0 1
       76 SETTABLEKS                       R8 R7 K20 ["FoundationDialogBodyUpdate"]
       78 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       80 LOADK                            R9 K21 ["FoundationSheetSideSheetTopBarFix"]
       81 CALL                             R8 1 1
       82 CALL                             R8 0 1
       83 SETTABLEKS                       R8 R7 K21 ["FoundationSheetSideSheetTopBarFix"]
       85 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       87 LOADK                            R9 K22 ["FoundationOverlayDisplayOrder"]
       88 CALL                             R8 1 1
       89 CALL                             R8 0 1
       90 SETTABLEKS                       R8 R7 K22 ["FoundationOverlayDisplayOrder"]
       92 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
       94 LOADK                            R9 K23 ["FoundationTabsDisableScrollSelection"]
       95 CALL                             R8 1 1
       96 CALL                             R8 0 1
       97 SETTABLEKS                       R8 R7 K23 ["FoundationTabsDisableScrollSelection"]
       99 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      101 LOADK                            R9 K24 ["FoundationDontCreateUIDDForNumberInput"]
      102 CALL                             R8 1 1
      103 CALL                             R8 0 1
      104 SETTABLEKS                       R8 R7 K24 ["FoundationDontCreateUIDDForNumberInput"]
      106 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      108 LOADK                            R9 K25 ["FoundationFixOptionSelectorThickness"]
      109 CALL                             R8 1 1
      110 CALL                             R8 0 1
      111 SETTABLEKS                       R8 R7 K25 ["FoundationFixOptionSelectorThickness"]
      113 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      115 LOADK                            R9 K26 ["FoundationAddHeightPropToCenterSheet2"]
      116 CALL                             R8 1 1
      117 CALL                             R8 0 1
      118 SETTABLEKS                       R8 R7 K27 ["FoundationAddHeightPropToCenterSheet"]
      120 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      122 LOADK                            R9 K28 ["FoundationSheetActionsSinkInput"]
      123 CALL                             R8 1 1
      124 CALL                             R8 0 1
      125 SETTABLEKS                       R8 R7 K28 ["FoundationSheetActionsSinkInput"]
      127 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      129 LOADK                            R9 K29 ["FoundationSheetFixClosingSwipe"]
      130 CALL                             R8 1 1
      131 CALL                             R8 0 1
      132 SETTABLEKS                       R8 R7 K29 ["FoundationSheetFixClosingSwipe"]
      134 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      136 LOADK                            R9 K30 ["FoundationSheetHeaderSmallerPadding"]
      137 CALL                             R8 1 1
      138 CALL                             R8 0 1
      139 SETTABLEKS                       R8 R7 K30 ["FoundationSheetHeaderSmallerPadding"]
      141 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      143 LOADK                            R9 K31 ["FoundationFixAspectRatioBindingHandling"]
      144 CALL                             R8 1 1
      145 CALL                             R8 0 1
      146 SETTABLEKS                       R8 R7 K31 ["FoundationFixAspectRatioBindingHandling"]
      148 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      150 LOADK                            R9 K32 ["FoundationLoadingWrapInView"]
      151 CALL                             R8 1 1
      152 CALL                             R8 0 1
      153 SETTABLEKS                       R8 R7 K32 ["FoundationLoadingWrapInView"]
      155 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      157 LOADK                            R9 K33 ["FoundationAddUtilityVariantToChip"]
      158 CALL                             R8 1 1
      159 CALL                             R8 0 1
      160 SETTABLEKS                       R8 R7 K33 ["FoundationAddUtilityVariantToChip"]
      162 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      164 LOADK                            R9 K34 ["FoundationBaseMenuDelayVisible"]
      165 CALL                             R8 1 1
      166 CALL                             R8 0 1
      167 SETTABLEKS                       R8 R7 K34 ["FoundationBaseMenuDelayVisible"]
      169 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      171 LOADK                            R9 K35 ["FoundationIconButtonFillBehavior"]
      172 CALL                             R8 1 1
      173 CALL                             R8 0 1
      174 SETTABLEKS                       R8 R7 K35 ["FoundationIconButtonFillBehavior"]
      176 SETTABLEKS                       R3 R7 K9 ["FoundationInputFieldTokenBasedWidth"]
      178 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      180 LOADK                            R9 K36 ["FoundationPopoverConditionalRender"]
      181 CALL                             R8 1 1
      182 CALL                             R8 0 1
      183 SETTABLEKS                       R8 R7 K36 ["FoundationPopoverConditionalRender"]
      185 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      187 LOADK                            R9 K37 ["FoundationTruncateBadgeText"]
      188 CALL                             R8 1 1
      189 CALL                             R8 0 1
      190 SETTABLEKS                       R8 R7 K37 ["FoundationTruncateBadgeText"]
      192 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      194 LOADK                            R9 K38 ["FoundationProgressBindableValue"]
      195 CALL                             R8 1 1
      196 CALL                             R8 0 1
      197 SETTABLEKS                       R8 R7 K38 ["FoundationProgressBindableValue"]
      199 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      201 LOADK                            R9 K39 ["FoundationSideSheetNewWidthCalculation"]
      202 CALL                             R8 1 1
      203 CALL                             R8 0 1
      204 SETTABLEKS                       R8 R7 K39 ["FoundationSideSheetNewWidthCalculation"]
      206 AND                              R8 R3 R4
      207 SETTABLEKS                       R8 R7 K10 ["FoundationTextInputTokenBasedWidth"]
      209 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      211 LOADK                            R9 K40 ["FoundationNumberInputTokenBasedWidth2"]
      212 CALL                             R8 1 1
      213 CALL                             R8 0 1
      214 SETTABLEKS                       R8 R7 K41 ["FoundationNumberInputTokenBasedWidth"]
      216 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      218 LOADK                            R9 K42 ["FoundationElevationKeepSiblingZIndex"]
      219 CALL                             R8 1 1
      220 CALL                             R8 0 1
      221 SETTABLEKS                       R8 R7 K42 ["FoundationElevationKeepSiblingZIndex"]
      223 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      225 LOADK                            R9 K43 ["FoundationIconButtonWidth"]
      226 CALL                             R8 1 1
      227 CALL                             R8 0 1
      228 SETTABLEKS                       R8 R7 K43 ["FoundationIconButtonWidth"]
      230 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      232 LOADK                            R9 K44 ["FoundationBottomSheetImproveSpring"]
      233 CALL                             R8 1 1
      234 CALL                             R8 0 1
      235 SETTABLEKS                       R8 R7 K44 ["FoundationBottomSheetImproveSpring"]
      237 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      239 LOADK                            R9 K45 ["FoundationButtonWidthAutoSize"]
      240 CALL                             R8 1 1
      241 CALL                             R8 0 1
      242 SETTABLEKS                       R8 R7 K45 ["FoundationButtonWidthAutoSize"]
      244 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      246 LOADK                            R9 K46 ["FoundationNumberInputFixControlSizes"]
      247 CALL                             R8 1 1
      248 CALL                             R8 0 1
      249 SETTABLEKS                       R8 R7 K46 ["FoundationNumberInputFixControlSizes"]
      251 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      253 LOADK                            R9 K47 ["FoundationSideSheetFixNewWidth"]
      254 CALL                             R8 1 1
      255 CALL                             R8 0 1
      256 SETTABLEKS                       R8 R7 K47 ["FoundationSideSheetFixNewWidth"]
      258 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      260 LOADK                            R9 K48 ["FoundationSupportPresentationContextInSelectionCursor"]
      261 CALL                             R8 1 1
      262 CALL                             R8 0 1
      263 SETTABLEKS                       R8 R7 K48 ["FoundationSupportPresentationContextInSelectionCursor"]
      265 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      267 LOADK                            R9 K49 ["FoundationColorPickerPartialHSV"]
      268 CALL                             R8 1 1
      269 CALL                             R8 0 1
      270 SETTABLEKS                       R8 R7 K49 ["FoundationColorPickerPartialHSV"]
      272 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      274 LOADK                            R9 K50 ["FoundationBaseMenuItemImageRadius"]
      275 CALL                             R8 1 1
      276 CALL                             R8 0 1
      277 SETTABLEKS                       R8 R7 K50 ["FoundationBaseMenuItemImageRadius"]
      279 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      281 LOADK                            R9 K51 ["FoundationDialogFixResponsiveSize"]
      282 CALL                             R8 1 1
      283 CALL                             R8 0 1
      284 SETTABLEKS                       R8 R7 K51 ["FoundationDialogFixResponsiveSize"]
      286 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      288 LOADK                            R9 K52 ["FoundationUseGetInsetArea"]
      289 CALL                             R8 1 1
      290 CALL                             R8 0 1
      291 SETTABLEKS                       R8 R7 K52 ["FoundationUseGetInsetArea"]
      293 AND                              R8 R3 R5
      294 SETTABLEKS                       R8 R7 K53 ["FoundationTextAreaTokenBasedWidth"]
      296 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      298 LOADK                            R9 K54 ["FoundationAllowMockDataModel"]
      299 CALL                             R8 1 1
      300 CALL                             R8 0 1
      301 SETTABLEKS                       R8 R7 K54 ["FoundationAllowMockDataModel"]
      303 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      305 LOADK                            R9 K55 ["FoundationBuildingBlocksRemoveDashUnion"]
      306 CALL                             R8 1 1
      307 CALL                             R8 0 1
      308 SETTABLEKS                       R8 R7 K55 ["FoundationBuildingBlocksRemoveDashUnion"]
      310 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      312 LOADK                            R9 K56 ["FoundationCleanupTextInputPolyfill"]
      313 CALL                             R8 1 1
      314 CALL                             R8 0 1
      315 SETTABLEKS                       R8 R7 K56 ["FoundationCleanupTextInputPolyfill"]
      317 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      319 LOADK                            R9 K57 ["FoundationDropdownControlIconFix"]
      320 CALL                             R8 1 1
      321 CALL                             R8 0 1
      322 SETTABLEKS                       R8 R7 K57 ["FoundationDropdownControlIconFix"]
      324 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      326 LOADK                            R9 K58 ["FoundationInternalTextInputCornerRadius"]
      327 CALL                             R8 1 1
      328 CALL                             R8 0 1
      329 SETTABLEKS                       R8 R7 K58 ["FoundationInternalTextInputCornerRadius"]
      331 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      333 LOADK                            R9 K59 ["FoundationOverlayKeyboardAwareness"]
      334 CALL                             R8 1 1
      335 CALL                             R8 0 1
      336 SETTABLEKS                       R8 R7 K59 ["FoundationOverlayKeyboardAwareness"]
      338 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      340 LOADK                            R9 K60 ["FoundationSheetActionsNotSelectable"]
      341 CALL                             R8 1 1
      342 CALL                             R8 0 1
      343 SETTABLEKS                       R8 R7 K60 ["FoundationSheetActionsNotSelectable"]
      345 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      347 LOADK                            R9 K61 ["FoundationSheetContentSelectable"]
      348 CALL                             R8 1 1
      349 CALL                             R8 0 1
      350 SETTABLEKS                       R8 R7 K61 ["FoundationSheetContentSelectable"]
      352 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      354 LOADK                            R9 K62 ["FoundationSheetPreventCloseOnResize"]
      355 CALL                             R8 1 1
      356 CALL                             R8 0 1
      357 SETTABLEKS                       R8 R7 K62 ["FoundationSheetPreventCloseOnResize"]
      359 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      361 LOADK                            R9 K63 ["FoundationSheetReducedMotion"]
      362 CALL                             R8 1 1
      363 CALL                             R8 0 1
      364 SETTABLEKS                       R8 R7 K63 ["FoundationSheetReducedMotion"]
      366 SETTABLEKS                       R6 R7 K12 ["FoundationTextInputAlignStrokeBehavior"]
      368 GETTABLEKS                       R8 R2 K8 ["createGetFFlag"]
      370 LOADK                            R9 K64 ["FoundationViewRemoveDashUnion"]
      371 CALL                             R8 1 1
      372 CALL                             R8 0 1
      373 SETTABLEKS                       R8 R7 K64 ["FoundationViewRemoveDashUnion"]
      375 RETURN                           R7 1
