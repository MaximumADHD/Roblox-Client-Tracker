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
  DUPTABLE R3 K36 [{"FoundationDisableStylingPolyfill", "FoundationDisableBadgeTruncation", "FoundationFixScrollViewTags", "FoundationWarnOnMultipleStyleLinks", "FoundationMigrateIconNames", "FoundationUpdateBadgeDesign", "FoundationCheckCoreGuiAccessCursorProvider", "FoundationShowErrorAboutFoundationProvider", "FoundationUsePath2DSpinner", "FoundationPseudoChildSelectors", "FoundationPopoverOnScreenKeyboard", "FoundationPopoverContentToggleOnAnchorClick", "FoundationNoArrowOnVirtualRef", "FoundationScrollingFrameBarSmaller", "FoundationScrollViewMoveClipOutside", "FoundationInputLabelBoldTypography", "FoundationSupportCloudAssetsImage", "FoundationOverlayNoClip", "FoundationNumberInputSpinboxRespectSnap", "FoundationDialogHeroImageOnlyFix", "FoundationNumberInputDisabledStackedVisual", "FoundationDialogActionsUpdate", "FoundationMenuWidthGrowth", "FoundationDialogBodyUpdate", "FoundationDialogHeroMediaGradientFix", "FoundationRemoveCursorProviderTestOutput", "FoundationTooltipTextAutosize", "FoundationNumberInputInvalidError"}]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K8 ["FoundationDisableStylingPolyfill"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K8 ["FoundationDisableStylingPolyfill"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K9 ["FoundationDisableBadgeTruncation"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K9 ["FoundationDisableBadgeTruncation"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K10 ["FoundationFixScrollViewTags"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K10 ["FoundationFixScrollViewTags"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K38 ["DebugFoundationWarnOnMultipleStyleLinks"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K11 ["FoundationWarnOnMultipleStyleLinks"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K12 ["FoundationMigrateIconNames"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K12 ["FoundationMigrateIconNames"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K13 ["FoundationUpdateBadgeDesign"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K13 ["FoundationUpdateBadgeDesign"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K14 ["FoundationCheckCoreGuiAccessCursorProvider"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K14 ["FoundationCheckCoreGuiAccessCursorProvider"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K15 ["FoundationShowErrorAboutFoundationProvider"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K15 ["FoundationShowErrorAboutFoundationProvider"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K16 ["FoundationUsePath2DSpinner"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K16 ["FoundationUsePath2DSpinner"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K17 ["FoundationPseudoChildSelectors"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K17 ["FoundationPseudoChildSelectors"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K18 ["FoundationPopoverOnScreenKeyboard"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K18 ["FoundationPopoverOnScreenKeyboard"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K19 ["FoundationPopoverContentToggleOnAnchorClick"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K19 ["FoundationPopoverContentToggleOnAnchorClick"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K20 ["FoundationNoArrowOnVirtualRef"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K20 ["FoundationNoArrowOnVirtualRef"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K21 ["FoundationScrollingFrameBarSmaller"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K21 ["FoundationScrollingFrameBarSmaller"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K22 ["FoundationScrollViewMoveClipOutside"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K22 ["FoundationScrollViewMoveClipOutside"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K23 ["FoundationInputLabelBoldTypography"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K23 ["FoundationInputLabelBoldTypography"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K39 ["FoundationSupportCloudAssetsImage2"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K24 ["FoundationSupportCloudAssetsImage"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K25 ["FoundationOverlayNoClip"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K25 ["FoundationOverlayNoClip"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K26 ["FoundationNumberInputSpinboxRespectSnap"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K26 ["FoundationNumberInputSpinboxRespectSnap"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K27 ["FoundationDialogHeroImageOnlyFix"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K27 ["FoundationDialogHeroImageOnlyFix"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K28 ["FoundationNumberInputDisabledStackedVisual"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K28 ["FoundationNumberInputDisabledStackedVisual"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K29 ["FoundationDialogActionsUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K29 ["FoundationDialogActionsUpdate"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K30 ["FoundationMenuWidthGrowth"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K30 ["FoundationMenuWidthGrowth"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K31 ["FoundationDialogBodyUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K31 ["FoundationDialogBodyUpdate"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K32 ["FoundationDialogHeroMediaGradientFix"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K32 ["FoundationDialogHeroMediaGradientFix"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K33 ["FoundationRemoveCursorProviderTestOutput"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K33 ["FoundationRemoveCursorProviderTestOutput"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K34 ["FoundationTooltipTextAutosize"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K34 ["FoundationTooltipTextAutosize"]
  GETTABLEKS R4 R2 K37 ["createGetFFlag"]
  LOADK R5 K35 ["FoundationNumberInputInvalidError"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K35 ["FoundationNumberInputInvalidError"]
  RETURN R3 1
