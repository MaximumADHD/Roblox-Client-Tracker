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
       16 LOADK                            R4 K9 ["FoundationBindableStateLayer"]
       17 CALL                             R3 1 1
       18 CALL                             R3 0 1
       19 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       21 LOADK                            R5 K10 ["FoundationNumberInputTextFix"]
       22 CALL                             R4 1 1
       23 CALL                             R4 0 1
       24 GETTABLEKS                       R5 R2 K8 ["createGetFFlag"]
       26 LOADK                            R6 K11 ["FoundationDisableStyleProviderDerives"]
       27 CALL                             R5 1 1
       28 CALL                             R5 0 1
       29 NEWTABLE                         R6 64 0
       31 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       33 LOADK                            R8 K12 ["FoundationUsePath2DSpinner"]
       34 CALL                             R7 1 1
       35 CALL                             R7 0 1
       36 SETTABLEKS                       R7 R6 K12 ["FoundationUsePath2DSpinner"]
       38 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       40 LOADK                            R8 K13 ["FoundationStatusIndicatorVariantExperiment"]
       41 CALL                             R7 1 1
       42 CALL                             R7 0 1
       43 SETTABLEKS                       R7 R6 K13 ["FoundationStatusIndicatorVariantExperiment"]
       45 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       47 LOADK                            R8 K14 ["FoundationToggleVisualUpdate"]
       48 CALL                             R7 1 1
       49 CALL                             R7 0 1
       50 SETTABLEKS                       R7 R6 K14 ["FoundationToggleVisualUpdate"]
       52 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       54 LOADK                            R8 K15 ["FoundationOverlayLuaAppInsetsFix2"]
       55 CALL                             R7 1 1
       56 CALL                             R7 0 1
       57 SETTABLEKS                       R7 R6 K16 ["FoundationOverlayLuaAppInsetsFix"]
       59 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       61 LOADK                            R8 K17 ["FoundationDialogBodyUpdate1"]
       62 CALL                             R7 1 1
       63 CALL                             R7 0 1
       64 SETTABLEKS                       R7 R6 K18 ["FoundationDialogBodyUpdate"]
       66 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       68 LOADK                            R8 K19 ["FoundationOverlayDisplayOrder"]
       69 CALL                             R7 1 1
       70 CALL                             R7 0 1
       71 SETTABLEKS                       R7 R6 K19 ["FoundationOverlayDisplayOrder"]
       73 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       75 LOADK                            R8 K20 ["FoundationTabsDisableScrollSelection"]
       76 CALL                             R7 1 1
       77 CALL                             R7 0 1
       78 SETTABLEKS                       R7 R6 K20 ["FoundationTabsDisableScrollSelection"]
       80 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       82 LOADK                            R8 K21 ["FoundationAddUtilityVariantToChip"]
       83 CALL                             R7 1 1
       84 CALL                             R7 0 1
       85 SETTABLEKS                       R7 R6 K21 ["FoundationAddUtilityVariantToChip"]
       87 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       89 LOADK                            R8 K22 ["FoundationBaseMenuDelayVisible"]
       90 CALL                             R7 1 1
       91 CALL                             R7 0 1
       92 SETTABLEKS                       R7 R6 K22 ["FoundationBaseMenuDelayVisible"]
       94 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
       96 LOADK                            R8 K23 ["FoundationPopoverConditionalRender"]
       97 CALL                             R7 1 1
       98 CALL                             R7 0 1
       99 SETTABLEKS                       R7 R6 K23 ["FoundationPopoverConditionalRender"]
      101 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      103 LOADK                            R8 K24 ["FoundationSideSheetNewWidthCalculation"]
      104 CALL                             R7 1 1
      105 CALL                             R7 0 1
      106 SETTABLEKS                       R7 R6 K24 ["FoundationSideSheetNewWidthCalculation"]
      108 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      110 LOADK                            R8 K25 ["FoundationNumberInputFixControlSizes"]
      111 CALL                             R7 1 1
      112 CALL                             R7 0 1
      113 SETTABLEKS                       R7 R6 K25 ["FoundationNumberInputFixControlSizes"]
      115 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      117 LOADK                            R8 K26 ["FoundationSideSheetFixNewWidth"]
      118 CALL                             R7 1 1
      119 CALL                             R7 0 1
      120 SETTABLEKS                       R7 R6 K26 ["FoundationSideSheetFixNewWidth"]
      122 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      124 LOADK                            R8 K27 ["FoundationColorPickerPartialHSV"]
      125 CALL                             R7 1 1
      126 CALL                             R7 0 1
      127 SETTABLEKS                       R7 R6 K27 ["FoundationColorPickerPartialHSV"]
      129 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      131 LOADK                            R8 K28 ["FoundationBaseMenuItemImageRadius"]
      132 CALL                             R7 1 1
      133 CALL                             R7 0 1
      134 SETTABLEKS                       R7 R6 K28 ["FoundationBaseMenuItemImageRadius"]
      136 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      138 LOADK                            R8 K29 ["FoundationUseGetInsetArea"]
      139 CALL                             R7 1 1
      140 CALL                             R7 0 1
      141 SETTABLEKS                       R7 R6 K29 ["FoundationUseGetInsetArea"]
      143 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      145 LOADK                            R8 K30 ["FoundationAllowMockDataModel"]
      146 CALL                             R7 1 1
      147 CALL                             R7 0 1
      148 SETTABLEKS                       R7 R6 K30 ["FoundationAllowMockDataModel"]
      150 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      152 LOADK                            R8 K31 ["FoundationBuildingBlocksRemoveDashUnion"]
      153 CALL                             R7 1 1
      154 CALL                             R7 0 1
      155 SETTABLEKS                       R7 R6 K31 ["FoundationBuildingBlocksRemoveDashUnion"]
      157 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      159 LOADK                            R8 K32 ["FoundationDropdownControlIconFix"]
      160 CALL                             R7 1 1
      161 CALL                             R7 0 1
      162 SETTABLEKS                       R7 R6 K32 ["FoundationDropdownControlIconFix"]
      164 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      166 LOADK                            R8 K33 ["FoundationOverlayKeyboardAwareness"]
      167 CALL                             R7 1 1
      168 CALL                             R7 0 1
      169 SETTABLEKS                       R7 R6 K33 ["FoundationOverlayKeyboardAwareness"]
      171 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      173 LOADK                            R8 K34 ["FoundationSheetActionsNotSelectable"]
      174 CALL                             R7 1 1
      175 CALL                             R7 0 1
      176 SETTABLEKS                       R7 R6 K34 ["FoundationSheetActionsNotSelectable"]
      178 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      180 LOADK                            R8 K35 ["FoundationSheetContentSelectable"]
      181 CALL                             R7 1 1
      182 CALL                             R7 0 1
      183 SETTABLEKS                       R7 R6 K35 ["FoundationSheetContentSelectable"]
      185 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      187 LOADK                            R8 K36 ["FoundationSheetPreventCloseOnResize"]
      188 CALL                             R7 1 1
      189 CALL                             R7 0 1
      190 SETTABLEKS                       R7 R6 K36 ["FoundationSheetPreventCloseOnResize"]
      192 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      194 LOADK                            R8 K37 ["FoundationViewRemoveDashUnion"]
      195 CALL                             R7 1 1
      196 CALL                             R7 0 1
      197 SETTABLEKS                       R7 R6 K37 ["FoundationViewRemoveDashUnion"]
      199 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      201 LOADK                            R8 K38 ["FFlagFoundationDateTimePickerDSTFix"]
      202 CALL                             R7 1 1
      203 CALL                             R7 0 1
      204 SETTABLEKS                       R7 R6 K38 ["FFlagFoundationDateTimePickerDSTFix"]
      206 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      208 LOADK                            R8 K39 ["FoundationBaseMenuSubmenuSupport"]
      209 CALL                             R7 1 1
      210 CALL                             R7 0 1
      211 SETTABLEKS                       R7 R6 K39 ["FoundationBaseMenuSubmenuSupport"]
      213 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      215 LOADK                            R8 K40 ["FoundationCenterSheetUseStableContainer"]
      216 CALL                             R7 1 1
      217 CALL                             R7 0 1
      218 SETTABLEKS                       R7 R6 K40 ["FoundationCenterSheetUseStableContainer"]
      220 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      222 LOADK                            R8 K41 ["FoundationColorPickerDesignUpdate"]
      223 CALL                             R7 1 1
      224 CALL                             R7 0 1
      225 SETTABLEKS                       R7 R6 K41 ["FoundationColorPickerDesignUpdate"]
      227 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      229 LOADK                            R8 K42 ["FoundationElevationKeepSiblingZIndex2"]
      230 CALL                             R7 1 1
      231 CALL                             R7 0 1
      232 SETTABLEKS                       R7 R6 K43 ["FoundationElevationKeepSiblingZIndex"]
      234 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      236 LOADK                            R8 K44 ["FoundationImageSafeLookup"]
      237 CALL                             R7 1 1
      238 CALL                             R7 0 1
      239 SETTABLEKS                       R7 R6 K44 ["FoundationImageSafeLookup"]
      241 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      243 LOADK                            R8 K45 ["FoundationTruncateBadgeText2"]
      244 CALL                             R7 1 1
      245 CALL                             R7 0 1
      246 SETTABLEKS                       R7 R6 K46 ["FoundationTruncateBadgeText"]
      248 SETTABLEKS                       R3 R6 K9 ["FoundationBindableStateLayer"]
      250 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      252 LOADK                            R8 K47 ["FoundationDateTimePickerScreenSize"]
      253 CALL                             R7 1 1
      254 CALL                             R7 0 1
      255 SETTABLEKS                       R7 R6 K47 ["FoundationDateTimePickerScreenSize"]
      257 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      259 LOADK                            R8 K48 ["FoundationImageOnLoadedCallback"]
      260 CALL                             R7 1 1
      261 CALL                             R7 0 1
      262 SETTABLEKS                       R7 R6 K48 ["FoundationImageOnLoadedCallback"]
      264 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      266 LOADK                            R8 K49 ["FoundationDateTimePickerDefaultDateFix"]
      267 CALL                             R7 1 1
      268 CALL                             R7 0 1
      269 SETTABLEKS                       R7 R6 K49 ["FoundationDateTimePickerDefaultDateFix"]
      271 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      273 LOADK                            R8 K50 ["FoundationBottomSheetImproveSpring2"]
      274 CALL                             R7 1 1
      275 CALL                             R7 0 1
      276 SETTABLEKS                       R7 R6 K51 ["FoundationBottomSheetImproveSpring"]
      278 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      280 LOADK                            R8 K52 ["FoundationDialogTitleEmphasisFix"]
      281 CALL                             R7 1 1
      282 CALL                             R7 0 1
      283 SETTABLEKS                       R7 R6 K52 ["FoundationDialogTitleEmphasisFix"]
      285 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      287 LOADK                            R8 K53 ["FoundationGuiObjectInputSinkProperty"]
      288 CALL                             R7 1 1
      289 CALL                             R7 0 1
      290 SETTABLEKS                       R7 R6 K53 ["FoundationGuiObjectInputSinkProperty"]
      292 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      294 LOADK                            R8 K54 ["FoundationSystemBannerUseSharedAlertActions"]
      295 CALL                             R7 1 1
      296 CALL                             R7 0 1
      297 SETTABLEKS                       R7 R6 K54 ["FoundationSystemBannerUseSharedAlertActions"]
      299 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      301 LOADK                            R8 K55 ["FoundationDialogAnimation"]
      302 CALL                             R7 1 1
      303 CALL                             R7 0 1
      304 SETTABLEKS                       R7 R6 K55 ["FoundationDialogAnimation"]
      306 SETTABLEKS                       R5 R6 K11 ["FoundationDisableStyleProviderDerives"]
      308 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      310 LOADK                            R8 K56 ["FoundationDisableTokenScaling2"]
      311 CALL                             R7 1 1
      312 CALL                             R7 0 1
      313 SETTABLEKS                       R7 R6 K57 ["FoundationDisableTokenScaling"]
      315 SETTABLEKS                       R4 R6 K10 ["FoundationNumberInputTextFix"]
      317 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      319 LOADK                            R8 K58 ["FoundationPopoverPluginSupport"]
      320 CALL                             R7 1 1
      321 CALL                             R7 0 1
      322 SETTABLEKS                       R7 R6 K58 ["FoundationPopoverPluginSupport"]
      324 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      326 LOADK                            R8 K59 ["FoundationTranslatorLocalizationRecovery"]
      327 CALL                             R7 1 1
      328 CALL                             R7 0 1
      329 SETTABLEKS                       R7 R6 K59 ["FoundationTranslatorLocalizationRecovery"]
      331 MOVE                             R7 R5
      332 JUMPIFNOT                        R7 ; [+5]
      333 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      335 LOADK                            R8 K60 ["FoundationUseStyleSheetRegistry"]
      336 CALL                             R7 1 1
      337 CALL                             R7 0 1
      338 SETTABLEKS                       R7 R6 K60 ["FoundationUseStyleSheetRegistry"]
      340 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      342 LOADK                            R8 K61 ["FoundationDialogContentScrollbarFix"]
      343 CALL                             R7 1 1
      344 CALL                             R7 0 1
      345 SETTABLEKS                       R7 R6 K61 ["FoundationDialogContentScrollbarFix"]
      347 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      349 LOADK                            R8 K62 ["FoundationDialogContentScrollbarLayout"]
      350 CALL                             R7 1 1
      351 CALL                             R7 0 1
      352 SETTABLEKS                       R7 R6 K62 ["FoundationDialogContentScrollbarLayout"]
      354 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      356 LOADK                            R8 K63 ["FoundationOverlayKeyboardAwarenessHardened"]
      357 CALL                             R7 1 1
      358 CALL                             R7 0 1
      359 SETTABLEKS                       R7 R6 K63 ["FoundationOverlayKeyboardAwarenessHardened"]
      361 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      363 LOADK                            R8 K64 ["FoundationTranslatorUseScript"]
      364 CALL                             R7 1 1
      365 CALL                             R7 0 1
      366 SETTABLEKS                       R7 R6 K64 ["FoundationTranslatorUseScript"]
      368 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      370 LOADK                            R8 K65 ["FoundationUseMainGuiUtility2"]
      371 CALL                             R7 1 1
      372 CALL                             R7 0 1
      373 SETTABLEKS                       R7 R6 K66 ["FoundationUseMainGuiUtility"]
      375 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      377 LOADK                            R8 K67 ["FoundationCleanupTextInputPolyfill3"]
      378 CALL                             R7 1 1
      379 CALL                             R7 0 1
      380 SETTABLEKS                       R7 R6 K68 ["FoundationCleanupTextInputPolyfill"]
      382 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      384 LOADK                            R8 K69 ["FoundationFixUserLevelPlugins"]
      385 CALL                             R7 1 1
      386 CALL                             R7 0 1
      387 SETTABLEKS                       R7 R6 K69 ["FoundationFixUserLevelPlugins"]
      389 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      391 LOADK                            R8 K70 ["FoundationImageFixBindingAspectRatio"]
      392 CALL                             R7 1 1
      393 CALL                             R7 0 1
      394 SETTABLEKS                       R7 R6 K70 ["FoundationImageFixBindingAspectRatio"]
      396 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      398 LOADK                            R8 K71 ["FoundationTextInputFocusBehavior"]
      399 CALL                             R7 1 1
      400 CALL                             R7 0 1
      401 SETTABLEKS                       R7 R6 K71 ["FoundationTextInputFocusBehavior"]
      403 GETTABLEKS                       R7 R2 K8 ["createGetFFlag"]
      405 LOADK                            R8 K72 ["FoundationFixNestedSubMenuOnClick"]
      406 CALL                             R7 1 1
      407 CALL                             R7 0 1
      408 SETTABLEKS                       R7 R6 K72 ["FoundationFixNestedSubMenuOnClick"]
      410 RETURN                           R6 1
