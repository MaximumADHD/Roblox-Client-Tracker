MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AnnotationsMaxTextLength"]
  LOADN R3 0
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["AnnotationsPointerMaxSize"]
  LOADN R3 48
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["AnnotationsPointerMinSize"]
  LOADN R3 0
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["AnnotationsOpenPanelOnCreate"]
  LOADB R3 1
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["AnnotationCreationLocksCamera"]
  LOADB R3 1
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K9 ["AnnotationsTaggedYouLabel"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K10 ["COLLAB8964DoubleClickZoomTo"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K11 ["COLLAB8949AnnotationsAddPluginTelemetry"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K12 ["AnnotationsPluginActionThrottleHundredthsPercent"]
  LOADN R3 0
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K13 ["AnnotationsCancelDeleteDialogDesignLink"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K14 ["AnnotationsUseStateCallbacks"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K15 ["COLLAB9285AnnotationsPerPlaceNotifPrefs3"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K16 ["EnableStudioAnnotationsNotifications"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K17 ["EnableStudioAnnotationsNotificationsExperiment"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K18 ["AnnotationsPerThreadNotifPrefs"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K19 ["COLLAB9434FixEscCursorAndTagInput"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K20 ["COLLAB9449FixAnnotationsHeightCacheEdits2"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K21 ["AnnotationsFixEditHeightAndCursor"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K22 ["AnnotationsHeightCacheLoadingFixes"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K23 ["AnnotationsReflectPreselectedThread"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K24 ["AnnotationsAdjustNotifOptionsPadding"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K25 ["AnnotationsFontUseBuilderSans"]
  LOADB R3 0
  NAMECALL R0 R0 K7 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K50 [{"fflagAnnotationsMaxTextLength", "fflagAnnotationsReleaseCallout", "fintAnnotationsPointerMaxSize", "fintAnnotationsPointerMinSize", "fflagAnnotationsOpenPanelOnCreate", "fflagAnnotationCreationLocksCamera", "fflagAnnotationsTaggedYouLabel", "fflagCOLLAB8964DoubleClickZoomTo", "fflagCOLLAB8949AnnotationsAddPluginTelemetry", "fintAnnotationsPluginActionThrottleHundredthsPercent", "fflagAnnotationsCancelDeleteDialogDesignLink", "fflagIsModernRibbon", "fflagAnnotationsUseStateCallbacks", "fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs", "fflagEnableStudioAnnotationsNotifications", "fflagEnableStudioAnnotationsNotificationsExperiment", "fflagAnnotationsPerThreadNotifPrefs", "fflagCOLLAB9434FixEscCursorAndTagInput", "fflagCOLLAB9449FixAnnotationsHeightCacheEdits", "fflagAnnotationsFixEditHeightAndCursor", "fflagAnnotationsHeightCacheLoadingFixes", "fflagAnnotationsReflectPreselectedThread", "fflagAnnotationsAdjustNotifOptionsPadding", "fflagAnnotationsFontUseBuilderSans"}]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["AnnotationsMaxTextLength"]
  NAMECALL R1 R1 K51 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K26 ["fflagAnnotationsMaxTextLength"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K52 ["AnnotationsReleaseCallout"]
  LOADB R4 0
  NAMECALL R1 R1 K7 ["DefineFastFlag"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K27 ["fflagAnnotationsReleaseCallout"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["AnnotationsPointerMaxSize"]
  NAMECALL R1 R1 K51 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K28 ["fintAnnotationsPointerMaxSize"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K5 ["AnnotationsPointerMinSize"]
  NAMECALL R1 R1 K51 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K29 ["fintAnnotationsPointerMinSize"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K6 ["AnnotationsOpenPanelOnCreate"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K30 ["fflagAnnotationsOpenPanelOnCreate"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K8 ["AnnotationCreationLocksCamera"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K31 ["fflagAnnotationCreationLocksCamera"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K9 ["AnnotationsTaggedYouLabel"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K32 ["fflagAnnotationsTaggedYouLabel"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K10 ["COLLAB8964DoubleClickZoomTo"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K33 ["fflagCOLLAB8964DoubleClickZoomTo"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K11 ["COLLAB8949AnnotationsAddPluginTelemetry"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K34 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K12 ["AnnotationsPluginActionThrottleHundredthsPercent"]
  NAMECALL R1 R1 K51 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K35 ["fintAnnotationsPluginActionThrottleHundredthsPercent"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K13 ["AnnotationsCancelDeleteDialogDesignLink"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K36 ["fflagAnnotationsCancelDeleteDialogDesignLink"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K54 ["EnableRibbonPluginFeature"]
  NAMECALL R1 R1 K55 ["GetEngineFeature"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K37 ["fflagIsModernRibbon"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K14 ["AnnotationsUseStateCallbacks"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K38 ["fflagAnnotationsUseStateCallbacks"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K15 ["COLLAB9285AnnotationsPerPlaceNotifPrefs3"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K39 ["fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K16 ["EnableStudioAnnotationsNotifications"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K40 ["fflagEnableStudioAnnotationsNotifications"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K17 ["EnableStudioAnnotationsNotificationsExperiment"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K41 ["fflagEnableStudioAnnotationsNotificationsExperiment"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K18 ["AnnotationsPerThreadNotifPrefs"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K42 ["fflagAnnotationsPerThreadNotifPrefs"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K19 ["COLLAB9434FixEscCursorAndTagInput"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K43 ["fflagCOLLAB9434FixEscCursorAndTagInput"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K20 ["COLLAB9449FixAnnotationsHeightCacheEdits2"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K44 ["fflagCOLLAB9449FixAnnotationsHeightCacheEdits"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K21 ["AnnotationsFixEditHeightAndCursor"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K45 ["fflagAnnotationsFixEditHeightAndCursor"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K22 ["AnnotationsHeightCacheLoadingFixes"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K46 ["fflagAnnotationsHeightCacheLoadingFixes"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K23 ["AnnotationsReflectPreselectedThread"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K47 ["fflagAnnotationsReflectPreselectedThread"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K24 ["AnnotationsAdjustNotifOptionsPadding"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K48 ["fflagAnnotationsAdjustNotifOptionsPadding"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K25 ["AnnotationsFontUseBuilderSans"]
  NAMECALL R1 R1 K53 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K49 ["fflagAnnotationsFontUseBuilderSans"]
  RETURN R0 1
