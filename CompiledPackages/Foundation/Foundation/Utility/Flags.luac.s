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
  DUPTABLE R3 K23 [{"FoundationDisableStylingPolyfill", "FoundationFixScrollViewBackgroundForStylingV2", "FoundationStandardizeInputLabelSizes", "FoundationWarnOnMultipleStyleLinks", "FoundationMigrateIconNames", "FoundationDisableDragPositionAdjustmentForGuiInsets", "FoundationSliderOrientationImprovement", "FoundationFixVisibleNoneScrollBarThickness", "FoundationFixInputFieldWidth", "FoundationFixDropdownValueTuncation", "FoundationSelectionCursorMigration", "FoundationFixCursorStyling", "FoundationStyleTagsStyleSheetAttributes", "FoundationSliderDirectionalInputSupport", "FoundationUpdateIconButtonSizes"}]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K8 ["FoundationDisableStylingPolyfill"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K8 ["FoundationDisableStylingPolyfill"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K9 ["FoundationFixScrollViewBackgroundForStylingV2"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K9 ["FoundationFixScrollViewBackgroundForStylingV2"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K10 ["FoundationStandardizeInputLabelSizes"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K10 ["FoundationStandardizeInputLabelSizes"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K11 ["FoundationWarnOnMultipleStyleLinks"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K11 ["FoundationWarnOnMultipleStyleLinks"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K12 ["FoundationMigrateIconNames"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K12 ["FoundationMigrateIconNames"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K13 ["FoundationDisableDragPositionAdjustmentForGuiInsets"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K13 ["FoundationDisableDragPositionAdjustmentForGuiInsets"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K14 ["FoundationSliderOrientationImprovement"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K14 ["FoundationSliderOrientationImprovement"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K15 ["FoundationFixVisibleNoneScrollBarThickness"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K15 ["FoundationFixVisibleNoneScrollBarThickness"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K16 ["FoundationFixInputFieldWidth"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K16 ["FoundationFixInputFieldWidth"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K17 ["FoundationFixDropdownValueTuncation"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K17 ["FoundationFixDropdownValueTuncation"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K18 ["FoundationSelectionCursorMigration"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K18 ["FoundationSelectionCursorMigration"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K19 ["FoundationFixCursorStyling"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K19 ["FoundationFixCursorStyling"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K20 ["FoundationStyleTagsStyleSheetAttributes"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K20 ["FoundationStyleTagsStyleSheetAttributes"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K21 ["FoundationSliderDirectionalInputSupport"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K21 ["FoundationSliderDirectionalInputSupport"]
  GETTABLEKS R4 R2 K24 ["createGetFFlag"]
  LOADK R5 K22 ["FoundationUpdateIconButtonSizes"]
  CALL R4 1 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K22 ["FoundationUpdateIconButtonSizes"]
  RETURN R3 1
