PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableRibbonPlugin"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableRibbonPluginFeature"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 1
  JUMPIF R0 [+5]
  GETIMPORT R1 K5 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CALL R1 1 0
  CLOSEUPVALS R0
  RETURN R0 1

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
  LOADK R2 K20 ["COLLAB9449FixAnnotationsHeightCacheEdits"]
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
  DUPTABLE R0 K44 [{"fflagAnnotationsMaxTextLength", "fflagAnnotationsReleaseCallout", "fintAnnotationsPointerMaxSize", "fintAnnotationsPointerMinSize", "fflagAnnotationsOpenPanelOnCreate", "fflagAnnotationCreationLocksCamera", "fflagAnnotationsTaggedYouLabel", "fflagCOLLAB8964DoubleClickZoomTo", "fflagCOLLAB8949AnnotationsAddPluginTelemetry", "fintAnnotationsPluginActionThrottleHundredthsPercent", "fflagAnnotationsCancelDeleteDialogDesignLink", "fflagIsModernRibbon", "fflagAnnotationsUseStateCallbacks", "fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs", "fflagEnableStudioAnnotationsNotifications", "fflagEnableStudioAnnotationsNotificationsExperiment", "fflagAnnotationsPerThreadNotifPrefs", "fflagCOLLAB9434FixEscCursorAndTagInput", "fflagCOLLAB9449FixAnnotationsHeightCacheEdits", "fflagAnnotationsFixEditHeightAndCursor", "fflagAnnotationsHeightCacheLoadingFixes"}]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["AnnotationsMaxTextLength"]
  NAMECALL R1 R1 K45 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K23 ["fflagAnnotationsMaxTextLength"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K46 ["AnnotationsReleaseCallout"]
  LOADB R4 0
  NAMECALL R1 R1 K7 ["DefineFastFlag"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K24 ["fflagAnnotationsReleaseCallout"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["AnnotationsPointerMaxSize"]
  NAMECALL R1 R1 K45 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K25 ["fintAnnotationsPointerMaxSize"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K5 ["AnnotationsPointerMinSize"]
  NAMECALL R1 R1 K45 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K26 ["fintAnnotationsPointerMinSize"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K6 ["AnnotationsOpenPanelOnCreate"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K27 ["fflagAnnotationsOpenPanelOnCreate"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K8 ["AnnotationCreationLocksCamera"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K28 ["fflagAnnotationCreationLocksCamera"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K9 ["AnnotationsTaggedYouLabel"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K29 ["fflagAnnotationsTaggedYouLabel"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K10 ["COLLAB8964DoubleClickZoomTo"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K30 ["fflagCOLLAB8964DoubleClickZoomTo"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K11 ["COLLAB8949AnnotationsAddPluginTelemetry"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K31 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K12 ["AnnotationsPluginActionThrottleHundredthsPercent"]
  NAMECALL R1 R1 K45 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K32 ["fintAnnotationsPluginActionThrottleHundredthsPercent"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K13 ["AnnotationsCancelDeleteDialogDesignLink"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K33 ["fflagAnnotationsCancelDeleteDialogDesignLink"]
  GETIMPORT R2 K1 [game]
  LOADK R4 K48 ["EnableRibbonPluginFeature"]
  NAMECALL R2 R2 K49 ["GetEngineFeature"]
  CALL R2 2 1
  JUMPIF R2 [+5]
  GETIMPORT R3 K51 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE REF R2
  CALL R3 1 0
  MOVE R1 R2
  CLOSEUPVALS R2
  SETTABLEKS R1 R0 K34 ["fflagIsModernRibbon"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K14 ["AnnotationsUseStateCallbacks"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K35 ["fflagAnnotationsUseStateCallbacks"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K15 ["COLLAB9285AnnotationsPerPlaceNotifPrefs3"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K36 ["fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K16 ["EnableStudioAnnotationsNotifications"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K37 ["fflagEnableStudioAnnotationsNotifications"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K17 ["EnableStudioAnnotationsNotificationsExperiment"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K38 ["fflagEnableStudioAnnotationsNotificationsExperiment"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K18 ["AnnotationsPerThreadNotifPrefs"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K39 ["fflagAnnotationsPerThreadNotifPrefs"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K19 ["COLLAB9434FixEscCursorAndTagInput"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K40 ["fflagCOLLAB9434FixEscCursorAndTagInput"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K20 ["COLLAB9449FixAnnotationsHeightCacheEdits"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K41 ["fflagCOLLAB9449FixAnnotationsHeightCacheEdits"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K21 ["AnnotationsFixEditHeightAndCursor"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K42 ["fflagAnnotationsFixEditHeightAndCursor"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K22 ["AnnotationsHeightCacheLoadingFixes"]
  NAMECALL R1 R1 K47 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K43 ["fflagAnnotationsHeightCacheLoadingFixes"]
  RETURN R0 1
