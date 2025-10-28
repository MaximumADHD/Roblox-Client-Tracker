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
  LOADK R5 K10 ["FoundationDisableBadgeTruncation"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K10 ["FoundationDisableBadgeTruncation"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K11 ["FoundationFixScrollViewTags"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K11 ["FoundationFixScrollViewTags"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K12 ["DebugFoundationWarnOnMultipleStyleLinks"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K13 ["FoundationWarnOnMultipleStyleLinks"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K14 ["FoundationMigrateIconNames"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K14 ["FoundationMigrateIconNames"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K15 ["FoundationUpdateBadgeDesign"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K15 ["FoundationUpdateBadgeDesign"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K16 ["FoundationCheckCoreGuiAccessCursorProvider"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K16 ["FoundationCheckCoreGuiAccessCursorProvider"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K17 ["FoundationShowErrorAboutFoundationProvider"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K17 ["FoundationShowErrorAboutFoundationProvider"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K18 ["FoundationUsePath2DSpinner"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K18 ["FoundationUsePath2DSpinner"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K19 ["FoundationPseudoChildSelectors"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K19 ["FoundationPseudoChildSelectors"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K20 ["FoundationPopoverOnScreenKeyboard"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K20 ["FoundationPopoverOnScreenKeyboard"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K21 ["FoundationPopoverContentToggleOnAnchorClick"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K21 ["FoundationPopoverContentToggleOnAnchorClick"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K22 ["FoundationNoArrowOnVirtualRef"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K22 ["FoundationNoArrowOnVirtualRef"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K23 ["FoundationScrollingFrameBarSmaller"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K23 ["FoundationScrollingFrameBarSmaller"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K24 ["FoundationScrollViewMoveClipOutside"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K24 ["FoundationScrollViewMoveClipOutside"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K25 ["FoundationInputLabelBoldTypography"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K25 ["FoundationInputLabelBoldTypography"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K26 ["FoundationInternalTextInputAutoSize"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K26 ["FoundationInternalTextInputAutoSize"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K27 ["FoundationSupportCloudAssetsImage2"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K28 ["FoundationSupportCloudAssetsImage"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K29 ["FoundationOverlayNoClip"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K29 ["FoundationOverlayNoClip"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K30 ["FoundationNumberInputSpinboxRespectSnap"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K30 ["FoundationNumberInputSpinboxRespectSnap"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K31 ["FoundationDialogHeroImageOnlyFix"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K31 ["FoundationDialogHeroImageOnlyFix"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K32 ["FoundationNumberInputDisabledStackedVisual"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K32 ["FoundationNumberInputDisabledStackedVisual"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K33 ["FoundationDialogActionsUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K33 ["FoundationDialogActionsUpdate"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K34 ["FoundationMenuWidthGrowth"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K34 ["FoundationMenuWidthGrowth"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K35 ["FoundationDialogBodyUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K35 ["FoundationDialogBodyUpdate"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K36 ["FoundationDialogHeroMediaGradientFix"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K36 ["FoundationDialogHeroMediaGradientFix"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K37 ["FoundationRemoveCursorProviderTestOutput"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K37 ["FoundationRemoveCursorProviderTestOutput"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K38 ["FoundationTooltipTextAutosize"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K38 ["FoundationTooltipTextAutosize"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K39 ["FoundationNumberInputInvalidError"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K39 ["FoundationNumberInputInvalidError"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K40 ["FoundationStatusIndicatorVariantExperiment"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K40 ["FoundationStatusIndicatorVariantExperiment"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K41 ["FoundationBaseMenuScroll"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K41 ["FoundationBaseMenuScroll"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K42 ["FoundationFixUseScaledValueWarning"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K42 ["FoundationFixUseScaledValueWarning"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K43 ["FoundationDialogBackdropColorUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K43 ["FoundationDialogBackdropColorUpdate"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K44 ["FoundationLazyOverlayLoading"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K44 ["FoundationLazyOverlayLoading"]
  GETTABLEKS R4 R2 K8 ["createGetFFlag"]
  LOADK R5 K45 ["FoundationOverlayProviderFrameTiming"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K45 ["FoundationOverlayProviderFrameTiming"]
  RETURN R3 1
