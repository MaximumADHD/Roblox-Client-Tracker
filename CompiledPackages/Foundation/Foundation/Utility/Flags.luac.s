MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["SafeFlags"]
  CALL R2 1 1
  NEWTABLE R3 64 0
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K9 ["FoundationDisableStylingPolyfill"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K9 ["FoundationDisableStylingPolyfill"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K10 ["DebugFoundationWarnOnMultipleStyleLinks"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K11 ["FoundationWarnOnMultipleStyleLinks"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K12 ["FoundationMigrateIconNames"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K12 ["FoundationMigrateIconNames"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K13 ["FoundationUpdateBadgeDesign"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K13 ["FoundationUpdateBadgeDesign"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K14 ["FoundationUsePath2DSpinner"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K14 ["FoundationUsePath2DSpinner"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K15 ["FoundationPopoverOnScreenKeyboard"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K15 ["FoundationPopoverOnScreenKeyboard"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K16 ["FoundationBaseMenuBorderFix2"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K17 ["FoundationBaseMenuBorderFix"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K18 ["FoundationNoArrowOnVirtualRef"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K18 ["FoundationNoArrowOnVirtualRef"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K19 ["FoundationScrollingFrameBarSmaller"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K19 ["FoundationScrollingFrameBarSmaller"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K20 ["FoundationScrollViewMoveClipOutside"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K20 ["FoundationScrollViewMoveClipOutside"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K21 ["FoundationOverlayNoClip"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K21 ["FoundationOverlayNoClip"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K22 ["FoundationNumberInputSpinboxRespectSnap"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K22 ["FoundationNumberInputSpinboxRespectSnap"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K23 ["FoundationMenuWidthGrowth"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K23 ["FoundationMenuWidthGrowth"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K24 ["FoundationDialogBodyUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K24 ["FoundationDialogBodyUpdate"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K25 ["FoundationDialogHeroMediaGradientFix"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K25 ["FoundationDialogHeroMediaGradientFix"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K26 ["FoundationTooltipTextAutosize"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K26 ["FoundationTooltipTextAutosize"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K27 ["FoundationNumberInputInvalidError"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K27 ["FoundationNumberInputInvalidError"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K28 ["FoundationStatusIndicatorVariantExperiment"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K28 ["FoundationStatusIndicatorVariantExperiment"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K29 ["FoundationBaseMenuScroll"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K29 ["FoundationBaseMenuScroll"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K30 ["FoundationFixUseScaledValueWarning"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K30 ["FoundationFixUseScaledValueWarning"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K31 ["FoundationMigrateCryoToDash"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K31 ["FoundationMigrateCryoToDash"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K32 ["FoundationNumberInputRefAndCallbacks"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K32 ["FoundationNumberInputRefAndCallbacks"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K33 ["FoundationDropdownGroups"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K33 ["FoundationDropdownGroups"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K34 ["FoundationDialogBackdropColorUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K34 ["FoundationDialogBackdropColorUpdate"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K35 ["FoundationLazyOverlayLoading"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K35 ["FoundationLazyOverlayLoading"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K36 ["FoundationIconButtonBiggerBuilderIcons"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K36 ["FoundationIconButtonBiggerBuilderIcons"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K37 ["FoundationOverlayProviderFrameTiming"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K37 ["FoundationOverlayProviderFrameTiming"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K38 ["FoundationDialogRootZIndex2"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K39 ["FoundationDialogRootZIndex"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K40 ["FoundationDialogOversizedBackdrop"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K40 ["FoundationDialogOversizedBackdrop"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K41 ["FoundationDialogUpdateZIndex"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K41 ["FoundationDialogUpdateZIndex"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K42 ["FoundationPopoverContentStateFix"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K42 ["FoundationPopoverContentStateFix"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K43 ["FoundationPopoverOversizedBackdrop"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K43 ["FoundationPopoverOversizedBackdrop"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K44 ["FoundationOverlayLuaAppInsetsFix2"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K45 ["FoundationOverlayLuaAppInsetsFix"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K46 ["FoundationMenuItemStyles"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K46 ["FoundationMenuItemStyles"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K47 ["FoundationElevationSystem"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K47 ["FoundationElevationSystem"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K48 ["FoundationInternalInputSelectedStylesAndSpacing"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K48 ["FoundationInternalInputSelectedStylesAndSpacing"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K49 ["FoundationSheetNoCenterSheetSmallScreens"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K49 ["FoundationSheetNoCenterSheetSmallScreens"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K50 ["FoundationSheetCenterSheetNoShrink"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K50 ["FoundationSheetCenterSheetNoShrink"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K51 ["FoundationSheetBottomSheetAutoSize"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K51 ["FoundationSheetBottomSheetAutoSize"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K52 ["FoundationPopoverRootZIndex"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K52 ["FoundationPopoverRootZIndex"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K53 ["FoundationDialogUpdateSelection"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K53 ["FoundationDialogUpdateSelection"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K54 ["FoundationToggleVisualUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K54 ["FoundationToggleVisualUpdate"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K55 ["FoundationPopoverOverflow"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K55 ["FoundationPopoverOverflow"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K56 ["FoundationPopoverNegateAlignOffsetOnFlip"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K56 ["FoundationPopoverNegateAlignOffsetOnFlip"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K57 ["FoundationFixBadgeAndIndicatorTextAlignment"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K57 ["FoundationFixBadgeAndIndicatorTextAlignment"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K58 ["FoundationIconButtonNoListLayout"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K58 ["FoundationIconButtonNoListLayout"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K59 ["FoundationPopoverFocusTrap"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K59 ["FoundationPopoverFocusTrap"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K60 ["FoundationDateTimePickerTimeVariantEnabled"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K60 ["FoundationDateTimePickerTimeVariantEnabled"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K61 ["FoundationInputInnerRadiusFix"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K61 ["FoundationInputInnerRadiusFix"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K62 ["FoundationUseAlphaCompositingForStateLayer"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K62 ["FoundationUseAlphaCompositingForStateLayer"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K63 ["FoundationDateTimePickerAnchorBugFixEnabled"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K63 ["FoundationDateTimePickerAnchorBugFixEnabled"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K64 ["FoundationAnimateAccordion"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K64 ["FoundationAnimateAccordion"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K65 ["FoundationToggleDefaultPlacement"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K65 ["FoundationToggleDefaultPlacement"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K66 ["FoundationToggleEndPlacementJustifyContent"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K66 ["FoundationToggleEndPlacementJustifyContent"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K67 ["FoundationCursorScaledSliceFix"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K67 ["FoundationCursorScaledSliceFix"]
  RETURN R3 1
