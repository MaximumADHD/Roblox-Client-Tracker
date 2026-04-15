MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnnotationsMaxTextLength"]
        4 LOADN                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["AnnotationsPointerMaxSize"]
       11 LOADN                            R3 48
       12 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["AnnotationsPointerMinSize"]
       18 LOADN                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["AnnotationsOpenPanelOnCreate"]
       25 LOADB                            R3 1
       26 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K8 ["AnnotationCreationLocksCamera"]
       32 LOADB                            R3 1
       33 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K9 ["AnnotationsTaggedYouLabel"]
       39 LOADB                            R3 0
       40 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K10 ["COLLAB8964DoubleClickZoomTo"]
       46 LOADB                            R3 0
       47 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K11 ["COLLAB8949AnnotationsAddPluginTelemetry"]
       53 LOADB                            R3 0
       54 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K12 ["AnnotationsPluginActionThrottleHundredthsPercent"]
       60 LOADN                            R3 0
       61 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       63 CALL                             R0 3 0
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K13 ["AnnotationsCancelDeleteDialogDesignLink"]
       67 LOADB                            R3 0
       68 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       70 CALL                             R0 3 0
       71 GETIMPORT                        R0 K1 [game]
       73 LOADK                            R2 K14 ["AnnotationsUseStateCallbacks"]
       74 LOADB                            R3 0
       75 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       77 CALL                             R0 3 0
       78 GETIMPORT                        R0 K1 [game]
       80 LOADK                            R2 K15 ["AnnotationsHeightCacheLoadingFixes"]
       81 LOADB                            R3 0
       82 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       84 CALL                             R0 3 0
       85 GETIMPORT                        R0 K1 [game]
       87 LOADK                            R2 K16 ["AnnotationsReflectPreselectedThread"]
       88 LOADB                            R3 0
       89 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       91 CALL                             R0 3 0
       92 DUPTABLE                         R0 K31 [{"fflagAnnotationsMaxTextLength", "fflagAnnotationsReleaseCallout", "fintAnnotationsPointerMaxSize", "fintAnnotationsPointerMinSize", "fflagAnnotationsOpenPanelOnCreate", "fflagAnnotationCreationLocksCamera", "fflagAnnotationsTaggedYouLabel", "fflagCOLLAB8964DoubleClickZoomTo", "fflagCOLLAB8949AnnotationsAddPluginTelemetry", "fintAnnotationsPluginActionThrottleHundredthsPercent", "fflagAnnotationsCancelDeleteDialogDesignLink", "fflagAnnotationsUseStateCallbacks", "fflagAnnotationsHeightCacheLoadingFixes", "fflagAnnotationsReflectPreselectedThread"}]
       93 GETIMPORT                        R1 K1 [game]
       95 LOADK                            R3 K2 ["AnnotationsMaxTextLength"]
       96 NAMECALL                         R1 R1 K32 ["GetFastInt"]
       98 CALL                             R1 2 1
       99 SETTABLEKS                       R1 R0 K17 ["fflagAnnotationsMaxTextLength"]
      101 GETIMPORT                        R1 K1 [game]
      103 LOADK                            R3 K33 ["AnnotationsReleaseCallout"]
      104 LOADB                            R4 0
      105 NAMECALL                         R1 R1 K7 ["DefineFastFlag"]
      107 CALL                             R1 3 1
      108 SETTABLEKS                       R1 R0 K18 ["fflagAnnotationsReleaseCallout"]
      110 GETIMPORT                        R1 K1 [game]
      112 LOADK                            R3 K4 ["AnnotationsPointerMaxSize"]
      113 NAMECALL                         R1 R1 K32 ["GetFastInt"]
      115 CALL                             R1 2 1
      116 SETTABLEKS                       R1 R0 K19 ["fintAnnotationsPointerMaxSize"]
      118 GETIMPORT                        R1 K1 [game]
      120 LOADK                            R3 K5 ["AnnotationsPointerMinSize"]
      121 NAMECALL                         R1 R1 K32 ["GetFastInt"]
      123 CALL                             R1 2 1
      124 SETTABLEKS                       R1 R0 K20 ["fintAnnotationsPointerMinSize"]
      126 GETIMPORT                        R1 K1 [game]
      128 LOADK                            R3 K6 ["AnnotationsOpenPanelOnCreate"]
      129 NAMECALL                         R1 R1 K34 ["GetFastFlag"]
      131 CALL                             R1 2 1
      132 SETTABLEKS                       R1 R0 K21 ["fflagAnnotationsOpenPanelOnCreate"]
      134 GETIMPORT                        R1 K1 [game]
      136 LOADK                            R3 K8 ["AnnotationCreationLocksCamera"]
      137 NAMECALL                         R1 R1 K34 ["GetFastFlag"]
      139 CALL                             R1 2 1
      140 SETTABLEKS                       R1 R0 K22 ["fflagAnnotationCreationLocksCamera"]
      142 GETIMPORT                        R1 K1 [game]
      144 LOADK                            R3 K9 ["AnnotationsTaggedYouLabel"]
      145 NAMECALL                         R1 R1 K34 ["GetFastFlag"]
      147 CALL                             R1 2 1
      148 SETTABLEKS                       R1 R0 K23 ["fflagAnnotationsTaggedYouLabel"]
      150 GETIMPORT                        R1 K1 [game]
      152 LOADK                            R3 K10 ["COLLAB8964DoubleClickZoomTo"]
      153 NAMECALL                         R1 R1 K34 ["GetFastFlag"]
      155 CALL                             R1 2 1
      156 SETTABLEKS                       R1 R0 K24 ["fflagCOLLAB8964DoubleClickZoomTo"]
      158 GETIMPORT                        R1 K1 [game]
      160 LOADK                            R3 K11 ["COLLAB8949AnnotationsAddPluginTelemetry"]
      161 NAMECALL                         R1 R1 K34 ["GetFastFlag"]
      163 CALL                             R1 2 1
      164 SETTABLEKS                       R1 R0 K25 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
      166 GETIMPORT                        R1 K1 [game]
      168 LOADK                            R3 K12 ["AnnotationsPluginActionThrottleHundredthsPercent"]
      169 NAMECALL                         R1 R1 K32 ["GetFastInt"]
      171 CALL                             R1 2 1
      172 SETTABLEKS                       R1 R0 K26 ["fintAnnotationsPluginActionThrottleHundredthsPercent"]
      174 GETIMPORT                        R1 K1 [game]
      176 LOADK                            R3 K13 ["AnnotationsCancelDeleteDialogDesignLink"]
      177 NAMECALL                         R1 R1 K34 ["GetFastFlag"]
      179 CALL                             R1 2 1
      180 SETTABLEKS                       R1 R0 K27 ["fflagAnnotationsCancelDeleteDialogDesignLink"]
      182 GETIMPORT                        R1 K1 [game]
      184 LOADK                            R3 K14 ["AnnotationsUseStateCallbacks"]
      185 NAMECALL                         R1 R1 K34 ["GetFastFlag"]
      187 CALL                             R1 2 1
      188 SETTABLEKS                       R1 R0 K28 ["fflagAnnotationsUseStateCallbacks"]
      190 GETIMPORT                        R1 K1 [game]
      192 LOADK                            R3 K15 ["AnnotationsHeightCacheLoadingFixes"]
      193 NAMECALL                         R1 R1 K34 ["GetFastFlag"]
      195 CALL                             R1 2 1
      196 SETTABLEKS                       R1 R0 K29 ["fflagAnnotationsHeightCacheLoadingFixes"]
      198 GETIMPORT                        R1 K1 [game]
      200 LOADK                            R3 K16 ["AnnotationsReflectPreselectedThread"]
      201 NAMECALL                         R1 R1 K34 ["GetFastFlag"]
      203 CALL                             R1 2 1
      204 SETTABLEKS                       R1 R0 K30 ["fflagAnnotationsReflectPreselectedThread"]
      206 RETURN                           R0 1
