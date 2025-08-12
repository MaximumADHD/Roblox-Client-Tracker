MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AnnotationsModernColors"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["AnnotationsMaxTextLength"]
  LOADN R3 0
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["AnnotationsPointerMaxSize"]
  LOADN R3 48
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["AnnotationsPointerMinSize"]
  LOADN R3 0
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["AnnotationsOpenPanelOnCreate"]
  LOADB R3 1
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K9 ["AnnotationCreationLocksCamera"]
  LOADB R3 1
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K10 ["AnnotationsTaggedYouLabel"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K11 ["COLLAB8272WidgetEnabled"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K12 ["COLLAB8324KeepOpenOnSubmit"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K13 ["COLLAB8658AnnotationsDisableNonTCRestore"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K14 ["COLLAB8964DoubleClickZoomTo"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K15 ["COLLAB8977DisableNonPlaceRestore"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K16 ["COLLAB8949AnnotationsAddPluginTelemetry"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K17 ["AnnotationsPluginActionThrottleHundredthsPercent"]
  LOADN R3 0
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K18 ["AnnotationsCancelDeleteDialogDesignLink"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K35 [{"fflagAnnotationsModernColors", "fflagAnnotationsMaxTextLength", "fflagAnnotationsReleaseCallout", "fintAnnotationsPointerMaxSize", "fintAnnotationsPointerMinSize", "fflagAnnotationsOpenPanelOnCreate", "fflagAnnotationCreationLocksCamera", "fflagAnnotationsTaggedYouLabel", "fflagCOLLAB8272WidgetEnabled", "fflagCOLLAB8324KeepOpenOnSubmit", "fflagCOLLAB8658AnnotationsDisableNonTCRestore", "fflagCOLLAB8964DoubleClickZoomTo", "fflagCOLLAB8977DisableNonPlaceRestore", "fflagCOLLAB8949AnnotationsAddPluginTelemetry", "fintAnnotationsPluginActionThrottleHundredthsPercent", "fflagAnnotationsCancelDeleteDialogDesignLink"}]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["AnnotationsModernColors"]
  NAMECALL R1 R1 K36 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K19 ["fflagAnnotationsModernColors"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["AnnotationsMaxTextLength"]
  NAMECALL R1 R1 K37 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K20 ["fflagAnnotationsMaxTextLength"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K38 ["AnnotationsReleaseCallout"]
  LOADB R4 0
  NAMECALL R1 R1 K3 ["DefineFastFlag"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K21 ["fflagAnnotationsReleaseCallout"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K6 ["AnnotationsPointerMaxSize"]
  NAMECALL R1 R1 K37 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K22 ["fintAnnotationsPointerMaxSize"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K7 ["AnnotationsPointerMinSize"]
  NAMECALL R1 R1 K37 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K23 ["fintAnnotationsPointerMinSize"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K8 ["AnnotationsOpenPanelOnCreate"]
  NAMECALL R1 R1 K36 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K24 ["fflagAnnotationsOpenPanelOnCreate"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K9 ["AnnotationCreationLocksCamera"]
  NAMECALL R1 R1 K36 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K25 ["fflagAnnotationCreationLocksCamera"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K10 ["AnnotationsTaggedYouLabel"]
  NAMECALL R1 R1 K36 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K26 ["fflagAnnotationsTaggedYouLabel"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K11 ["COLLAB8272WidgetEnabled"]
  NAMECALL R1 R1 K36 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K27 ["fflagCOLLAB8272WidgetEnabled"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K12 ["COLLAB8324KeepOpenOnSubmit"]
  NAMECALL R1 R1 K36 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K28 ["fflagCOLLAB8324KeepOpenOnSubmit"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K13 ["COLLAB8658AnnotationsDisableNonTCRestore"]
  NAMECALL R1 R1 K36 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K29 ["fflagCOLLAB8658AnnotationsDisableNonTCRestore"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K14 ["COLLAB8964DoubleClickZoomTo"]
  NAMECALL R1 R1 K36 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K30 ["fflagCOLLAB8964DoubleClickZoomTo"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K15 ["COLLAB8977DisableNonPlaceRestore"]
  NAMECALL R1 R1 K36 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K31 ["fflagCOLLAB8977DisableNonPlaceRestore"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K16 ["COLLAB8949AnnotationsAddPluginTelemetry"]
  NAMECALL R1 R1 K36 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K32 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K17 ["AnnotationsPluginActionThrottleHundredthsPercent"]
  NAMECALL R1 R1 K37 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K33 ["fintAnnotationsPluginActionThrottleHundredthsPercent"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K18 ["AnnotationsCancelDeleteDialogDesignLink"]
  NAMECALL R1 R1 K36 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K34 ["fflagAnnotationsCancelDeleteDialogDesignLink"]
  RETURN R0 1
