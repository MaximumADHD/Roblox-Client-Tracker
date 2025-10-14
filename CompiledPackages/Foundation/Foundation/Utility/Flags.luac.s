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
  DUPTABLE R3 K33 [{"FoundationDisableStylingPolyfill", "FoundationDisableBadgeTruncation", "FoundationFixScrollViewTags", "FoundationWarnOnMultipleStyleLinks", "FoundationMigrateIconNames", "FoundationUpdateBadgeDesign", "FoundationStyleTagsStyleSheetAttributes", "FoundationCheckCoreGuiAccessCursorProvider", "FoundationShowErrorAboutFoundationProvider", "FoundationRemoveSelectionCursorHeartbeat", "FoundationUsePath2DSpinner", "FoundationPseudoChildSelectors", "FoundationPopoverOnScreenKeyboard", "FoundationPopoverContentToggleOnAnchorClick", "FoundationNoArrowOnVirtualRef", "FoundationScrollingFrameBarSmaller", "FoundationScrollViewMoveClipOutside", "FoundationInputLabelBoldTypography", "FoundationSupportCloudAssetsImage", "FoundationOverlayNoClip", "FoundationDialogHeroImageOnlyFix", "FoundationNumberInputDisabledStackedVisual", "FoundationDialogActionsUpdate", "FoundationMenuWidthGrowth", "FoundationDialogBodyUpdate"}]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K8 ["FoundationDisableStylingPolyfill"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K8 ["FoundationDisableStylingPolyfill"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K9 ["FoundationDisableBadgeTruncation"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K9 ["FoundationDisableBadgeTruncation"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K10 ["FoundationFixScrollViewTags"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K10 ["FoundationFixScrollViewTags"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K35 ["DebugFoundationWarnOnMultipleStyleLinks"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K11 ["FoundationWarnOnMultipleStyleLinks"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K12 ["FoundationMigrateIconNames"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K12 ["FoundationMigrateIconNames"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K13 ["FoundationUpdateBadgeDesign"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K13 ["FoundationUpdateBadgeDesign"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K14 ["FoundationStyleTagsStyleSheetAttributes"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K14 ["FoundationStyleTagsStyleSheetAttributes"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K15 ["FoundationCheckCoreGuiAccessCursorProvider"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K15 ["FoundationCheckCoreGuiAccessCursorProvider"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K16 ["FoundationShowErrorAboutFoundationProvider"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K16 ["FoundationShowErrorAboutFoundationProvider"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K17 ["FoundationRemoveSelectionCursorHeartbeat"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K17 ["FoundationRemoveSelectionCursorHeartbeat"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K18 ["FoundationUsePath2DSpinner"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K18 ["FoundationUsePath2DSpinner"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K19 ["FoundationPseudoChildSelectors"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K19 ["FoundationPseudoChildSelectors"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K20 ["FoundationPopoverOnScreenKeyboard"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K20 ["FoundationPopoverOnScreenKeyboard"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K21 ["FoundationPopoverContentToggleOnAnchorClick"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K21 ["FoundationPopoverContentToggleOnAnchorClick"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K22 ["FoundationNoArrowOnVirtualRef"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K22 ["FoundationNoArrowOnVirtualRef"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K23 ["FoundationScrollingFrameBarSmaller"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K23 ["FoundationScrollingFrameBarSmaller"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K24 ["FoundationScrollViewMoveClipOutside"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K24 ["FoundationScrollViewMoveClipOutside"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K25 ["FoundationInputLabelBoldTypography"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K25 ["FoundationInputLabelBoldTypography"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K36 ["FoundationSupportCloudAssetsImage2"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K26 ["FoundationSupportCloudAssetsImage"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K27 ["FoundationOverlayNoClip"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K27 ["FoundationOverlayNoClip"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K28 ["FoundationDialogHeroImageOnlyFix"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K28 ["FoundationDialogHeroImageOnlyFix"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K29 ["FoundationNumberInputDisabledStackedVisual"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K29 ["FoundationNumberInputDisabledStackedVisual"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K30 ["FoundationDialogActionsUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K30 ["FoundationDialogActionsUpdate"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K31 ["FoundationMenuWidthGrowth"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K31 ["FoundationMenuWidthGrowth"]
  GETTABLEKS R4 R2 K34 ["createGetFFlag"]
  LOADK R5 K32 ["FoundationDialogBodyUpdate"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K32 ["FoundationDialogBodyUpdate"]
  RETURN R3 1
