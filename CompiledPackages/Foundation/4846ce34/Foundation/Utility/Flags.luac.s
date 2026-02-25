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
       14 NEWTABLE                         R3 64 0
       16 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       18 LOADK                            R5 K9 ["FoundationUpdateBadgeDesign"]
       19 CALL                             R4 1 1
       20 CALL                             R4 0 1
       21 SETTABLEKS                       R4 R3 K9 ["FoundationUpdateBadgeDesign"]
       23 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       25 LOADK                            R5 K10 ["FoundationDisableStylingPolyfill"]
       26 CALL                             R4 1 1
       27 CALL                             R4 0 1
       28 SETTABLEKS                       R4 R3 K10 ["FoundationDisableStylingPolyfill"]
       30 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       32 LOADK                            R5 K11 ["DebugFoundationWarnOnMultipleStyleLinks"]
       33 CALL                             R4 1 1
       34 CALL                             R4 0 1
       35 SETTABLEKS                       R4 R3 K12 ["FoundationWarnOnMultipleStyleLinks"]
       37 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       39 LOADK                            R5 K13 ["FoundationPopoverOnScreenKeyboard"]
       40 CALL                             R4 1 1
       41 CALL                             R4 0 1
       42 SETTABLEKS                       R4 R3 K13 ["FoundationPopoverOnScreenKeyboard"]
       44 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       46 LOADK                            R5 K14 ["FoundationUsePath2DSpinner"]
       47 CALL                             R4 1 1
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K14 ["FoundationUsePath2DSpinner"]
       51 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       53 LOADK                            R5 K15 ["FoundationScrollViewMoveClipOutside"]
       54 CALL                             R4 1 1
       55 CALL                             R4 0 1
       56 SETTABLEKS                       R4 R3 K15 ["FoundationScrollViewMoveClipOutside"]
       58 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       60 LOADK                            R5 K16 ["FoundationStatusIndicatorVariantExperiment"]
       61 CALL                             R4 1 1
       62 CALL                             R4 0 1
       63 SETTABLEKS                       R4 R3 K16 ["FoundationStatusIndicatorVariantExperiment"]
       65 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       67 LOADK                            R5 K17 ["FoundationPopoverNegateAlignOffsetOnFlip"]
       68 CALL                             R4 1 1
       69 CALL                             R4 0 1
       70 SETTABLEKS                       R4 R3 K17 ["FoundationPopoverNegateAlignOffsetOnFlip"]
       72 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       74 LOADK                            R5 K18 ["FoundationPopoverOverflow"]
       75 CALL                             R4 1 1
       76 CALL                             R4 0 1
       77 SETTABLEKS                       R4 R3 K18 ["FoundationPopoverOverflow"]
       79 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       81 LOADK                            R5 K19 ["FoundationToggleVisualUpdate"]
       82 CALL                             R4 1 1
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K19 ["FoundationToggleVisualUpdate"]
       86 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       88 LOADK                            R5 K20 ["FoundationSheetCenterSheetNoShrink"]
       89 CALL                             R4 1 1
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K20 ["FoundationSheetCenterSheetNoShrink"]
       93 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
       95 LOADK                            R5 K21 ["FoundationDialogOversizedBackdrop"]
       96 CALL                             R4 1 1
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K21 ["FoundationDialogOversizedBackdrop"]
      100 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      102 LOADK                            R5 K22 ["FoundationIconButtonNoListLayout"]
      103 CALL                             R4 1 1
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R3 K22 ["FoundationIconButtonNoListLayout"]
      107 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      109 LOADK                            R5 K23 ["FoundationOverlayLuaAppInsetsFix2"]
      110 CALL                             R4 1 1
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R3 K24 ["FoundationOverlayLuaAppInsetsFix"]
      114 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      116 LOADK                            R5 K25 ["FoundationPopoverOversizedBackdrop"]
      117 CALL                             R4 1 1
      118 CALL                             R4 0 1
      119 SETTABLEKS                       R4 R3 K25 ["FoundationPopoverOversizedBackdrop"]
      121 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      123 LOADK                            R5 K26 ["FoundationSheetBottomSheetAutoSize"]
      124 CALL                             R4 1 1
      125 CALL                             R4 0 1
      126 SETTABLEKS                       R4 R3 K26 ["FoundationSheetBottomSheetAutoSize"]
      128 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      130 LOADK                            R5 K27 ["FoundationDialogBodyUpdate1"]
      131 CALL                             R4 1 1
      132 CALL                             R4 0 1
      133 SETTABLEKS                       R4 R3 K28 ["FoundationDialogBodyUpdate"]
      135 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      137 LOADK                            R5 K29 ["FoundationFixOptionSelectorGroupItemSize"]
      138 CALL                             R4 1 1
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K29 ["FoundationFixOptionSelectorGroupItemSize"]
      142 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      144 LOADK                            R5 K30 ["FoundationInternalTextInputScrolling"]
      145 CALL                             R4 1 1
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K30 ["FoundationInternalTextInputScrolling"]
      149 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      151 LOADK                            R5 K31 ["FoundationOverlayMountReorder"]
      152 CALL                             R4 1 1
      153 CALL                             R4 0 1
      154 SETTABLEKS                       R4 R3 K31 ["FoundationOverlayMountReorder"]
      156 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      158 LOADK                            R5 K32 ["FoundationPopoverFixArrowPositioning"]
      159 CALL                             R4 1 1
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K32 ["FoundationPopoverFixArrowPositioning"]
      163 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      165 LOADK                            R5 K33 ["FoundationSheetFixLandscapeFlicker"]
      166 CALL                             R4 1 1
      167 CALL                             R4 0 1
      168 SETTABLEKS                       R4 R3 K33 ["FoundationSheetFixLandscapeFlicker"]
      170 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      172 LOADK                            R5 K34 ["FoundationSheetNoCenterSheetSmallScreens2"]
      173 CALL                             R4 1 1
      174 CALL                             R4 0 1
      175 SETTABLEKS                       R4 R3 K35 ["FoundationSheetNoCenterSheetSmallScreens"]
      177 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      179 LOADK                            R5 K36 ["FoundationSheetSideSheetTopBarFix"]
      180 CALL                             R4 1 1
      181 CALL                             R4 0 1
      182 SETTABLEKS                       R4 R3 K36 ["FoundationSheetSideSheetTopBarFix"]
      184 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      186 LOADK                            R5 K37 ["FoundationNumberInputDraggingDeltaFix"]
      187 CALL                             R4 1 1
      188 CALL                             R4 0 1
      189 SETTABLEKS                       R4 R3 K37 ["FoundationNumberInputDraggingDeltaFix"]
      191 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      193 LOADK                            R5 K38 ["FoundationOverlayDisplayOrder"]
      194 CALL                             R4 1 1
      195 CALL                             R4 0 1
      196 SETTABLEKS                       R4 R3 K38 ["FoundationOverlayDisplayOrder"]
      198 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      200 LOADK                            R5 K39 ["FoundationAnimateTabs2"]
      201 CALL                             R4 1 1
      202 CALL                             R4 0 1
      203 SETTABLEKS                       R4 R3 K40 ["FoundationAnimateTabs"]
      205 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      207 LOADK                            R5 K41 ["FoundationFixedHeightDateTimePicker"]
      208 CALL                             R4 1 1
      209 CALL                             R4 0 1
      210 SETTABLEKS                       R4 R3 K41 ["FoundationFixedHeightDateTimePicker"]
      212 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      214 LOADK                            R5 K42 ["FoundationKnobRemoveGroupTransparency"]
      215 CALL                             R4 1 1
      216 CALL                             R4 0 1
      217 SETTABLEKS                       R4 R3 K42 ["FoundationKnobRemoveGroupTransparency"]
      219 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      221 LOADK                            R5 K43 ["FoundationTabsDisableScrollSelection"]
      222 CALL                             R4 1 1
      223 CALL                             R4 0 1
      224 SETTABLEKS                       R4 R3 K43 ["FoundationTabsDisableScrollSelection"]
      226 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      228 LOADK                            R5 K44 ["FoundationAnimateSegmentedControl"]
      229 CALL                             R4 1 1
      230 CALL                             R4 0 1
      231 SETTABLEKS                       R4 R3 K44 ["FoundationAnimateSegmentedControl"]
      233 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      235 LOADK                            R5 K45 ["FoundationButtonLoadingHideTextWithIcon"]
      236 CALL                             R4 1 1
      237 CALL                             R4 0 1
      238 SETTABLEKS                       R4 R3 K45 ["FoundationButtonLoadingHideTextWithIcon"]
      240 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      242 LOADK                            R5 K46 ["FoundationDateTimePickerDefaultInputText"]
      243 CALL                             R4 1 1
      244 CALL                             R4 0 1
      245 SETTABLEKS                       R4 R3 K46 ["FoundationDateTimePickerDefaultInputText"]
      247 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      249 LOADK                            R5 K47 ["FoundationDateTimePickerDualBugFix"]
      250 CALL                             R4 1 1
      251 CALL                             R4 0 1
      252 SETTABLEKS                       R4 R3 K47 ["FoundationDateTimePickerDualBugFix"]
      254 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      256 LOADK                            R5 K48 ["FoundationRemoveDividerSegmentedControl"]
      257 CALL                             R4 1 1
      258 CALL                             R4 0 1
      259 SETTABLEKS                       R4 R3 K48 ["FoundationRemoveDividerSegmentedControl"]
      261 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      263 LOADK                            R5 K49 ["FoundationCheckboxIndeterminate2"]
      264 CALL                             R4 1 1
      265 CALL                             R4 0 1
      266 SETTABLEKS                       R4 R3 K50 ["FoundationCheckboxIndeterminate"]
      268 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      270 LOADK                            R5 K51 ["FoundationSliderClampValue"]
      271 CALL                             R4 1 1
      272 CALL                             R4 0 1
      273 SETTABLEKS                       R4 R3 K51 ["FoundationSliderClampValue"]
      275 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      277 LOADK                            R5 K52 ["FoundationSliderFixValueOnDrag"]
      278 CALL                             R4 1 1
      279 CALL                             R4 0 1
      280 SETTABLEKS                       R4 R3 K52 ["FoundationSliderFixValueOnDrag"]
      282 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      284 LOADK                            R5 K53 ["FoundationAddHeightPropToCenterSheet"]
      285 CALL                             R4 1 1
      286 CALL                             R4 0 1
      287 SETTABLEKS                       R4 R3 K53 ["FoundationAddHeightPropToCenterSheet"]
      289 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      291 LOADK                            R5 K54 ["FoundationDialogContentSelectable"]
      292 CALL                             R4 1 1
      293 CALL                             R4 0 1
      294 SETTABLEKS                       R4 R3 K54 ["FoundationDialogContentSelectable"]
      296 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      298 LOADK                            R5 K55 ["FoundationDontCreateUIDDForNumberInput"]
      299 CALL                             R4 1 1
      300 CALL                             R4 0 1
      301 SETTABLEKS                       R4 R3 K55 ["FoundationDontCreateUIDDForNumberInput"]
      303 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      305 LOADK                            R5 K56 ["FoundationFixOptionSelectorThickness"]
      306 CALL                             R4 1 1
      307 CALL                             R4 0 1
      308 SETTABLEKS                       R4 R3 K56 ["FoundationFixOptionSelectorThickness"]
      310 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      312 LOADK                            R5 K57 ["FoundationFixPopoverShadowSizing"]
      313 CALL                             R4 1 1
      314 CALL                             R4 0 1
      315 SETTABLEKS                       R4 R3 K57 ["FoundationFixPopoverShadowSizing"]
      317 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      319 LOADK                            R5 K58 ["FoundationImageFixAspectRatioMemo"]
      320 CALL                             R4 1 1
      321 CALL                             R4 0 1
      322 SETTABLEKS                       R4 R3 K58 ["FoundationImageFixAspectRatioMemo"]
      324 GETTABLEKS                       R4 R2 K8 ["createGetFFlag"]
      326 LOADK                            R5 K59 ["FoundationUIStrokeInner2"]
      327 CALL                             R4 1 1
      328 CALL                             R4 0 1
      329 SETTABLEKS                       R4 R3 K60 ["FoundationUIStrokeInner"]
      331 RETURN                           R3 1
