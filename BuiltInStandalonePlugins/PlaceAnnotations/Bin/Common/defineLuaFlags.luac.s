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
       80 LOADK                            R2 K15 ["COLLAB9285AnnotationsPerPlaceNotifPrefs3"]
       81 LOADB                            R3 0
       82 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       84 CALL                             R0 3 0
       85 GETIMPORT                        R0 K1 [game]
       87 LOADK                            R2 K16 ["EnableStudioAnnotationsNotifications"]
       88 LOADB                            R3 0
       89 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       91 CALL                             R0 3 0
       92 GETIMPORT                        R0 K1 [game]
       94 LOADK                            R2 K17 ["EnableStudioAnnotationsNotificationsExperiment"]
       95 LOADB                            R3 0
       96 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       98 CALL                             R0 3 0
       99 GETIMPORT                        R0 K1 [game]
      101 LOADK                            R2 K18 ["AnnotationsPerThreadNotifPrefs"]
      102 LOADB                            R3 0
      103 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
      105 CALL                             R0 3 0
      106 GETIMPORT                        R0 K1 [game]
      108 LOADK                            R2 K19 ["COLLAB9434FixEscCursorAndTagInput"]
      109 LOADB                            R3 0
      110 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
      112 CALL                             R0 3 0
      113 GETIMPORT                        R0 K1 [game]
      115 LOADK                            R2 K20 ["COLLAB9449FixAnnotationsHeightCacheEdits2"]
      116 LOADB                            R3 0
      117 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
      119 CALL                             R0 3 0
      120 GETIMPORT                        R0 K1 [game]
      122 LOADK                            R2 K21 ["AnnotationsFixEditHeightAndCursor"]
      123 LOADB                            R3 0
      124 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
      126 CALL                             R0 3 0
      127 GETIMPORT                        R0 K1 [game]
      129 LOADK                            R2 K22 ["AnnotationsHeightCacheLoadingFixes"]
      130 LOADB                            R3 0
      131 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
      133 CALL                             R0 3 0
      134 GETIMPORT                        R0 K1 [game]
      136 LOADK                            R2 K23 ["AnnotationsReflectPreselectedThread"]
      137 LOADB                            R3 0
      138 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
      140 CALL                             R0 3 0
      141 GETIMPORT                        R0 K1 [game]
      143 LOADK                            R2 K24 ["AnnotationsAdjustNotifOptionsPadding"]
      144 LOADB                            R3 0
      145 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
      147 CALL                             R0 3 0
      148 GETIMPORT                        R0 K1 [game]
      150 LOADK                            R2 K25 ["AnnotationsFontUseBuilderSans"]
      151 LOADB                            R3 0
      152 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
      154 CALL                             R0 3 0
      155 DUPTABLE                         R0 K49 [{"fflagAnnotationsMaxTextLength", "fflagAnnotationsReleaseCallout", "fintAnnotationsPointerMaxSize", "fintAnnotationsPointerMinSize", "fflagAnnotationsOpenPanelOnCreate", "fflagAnnotationCreationLocksCamera", "fflagAnnotationsTaggedYouLabel", "fflagCOLLAB8964DoubleClickZoomTo", "fflagCOLLAB8949AnnotationsAddPluginTelemetry", "fintAnnotationsPluginActionThrottleHundredthsPercent", "fflagAnnotationsCancelDeleteDialogDesignLink", "fflagAnnotationsUseStateCallbacks", "fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs", "fflagEnableStudioAnnotationsNotifications", "fflagEnableStudioAnnotationsNotificationsExperiment", "fflagAnnotationsPerThreadNotifPrefs", "fflagCOLLAB9434FixEscCursorAndTagInput", "fflagCOLLAB9449FixAnnotationsHeightCacheEdits", "fflagAnnotationsFixEditHeightAndCursor", "fflagAnnotationsHeightCacheLoadingFixes", "fflagAnnotationsReflectPreselectedThread", "fflagAnnotationsAdjustNotifOptionsPadding", "fflagAnnotationsFontUseBuilderSans"}]
      156 GETIMPORT                        R1 K1 [game]
      158 LOADK                            R3 K2 ["AnnotationsMaxTextLength"]
      159 NAMECALL                         R1 R1 K50 ["GetFastInt"]
      161 CALL                             R1 2 1
      162 SETTABLEKS                       R1 R0 K26 ["fflagAnnotationsMaxTextLength"]
      164 GETIMPORT                        R1 K1 [game]
      166 LOADK                            R3 K51 ["AnnotationsReleaseCallout"]
      167 LOADB                            R4 0
      168 NAMECALL                         R1 R1 K7 ["DefineFastFlag"]
      170 CALL                             R1 3 1
      171 SETTABLEKS                       R1 R0 K27 ["fflagAnnotationsReleaseCallout"]
      173 GETIMPORT                        R1 K1 [game]
      175 LOADK                            R3 K4 ["AnnotationsPointerMaxSize"]
      176 NAMECALL                         R1 R1 K50 ["GetFastInt"]
      178 CALL                             R1 2 1
      179 SETTABLEKS                       R1 R0 K28 ["fintAnnotationsPointerMaxSize"]
      181 GETIMPORT                        R1 K1 [game]
      183 LOADK                            R3 K5 ["AnnotationsPointerMinSize"]
      184 NAMECALL                         R1 R1 K50 ["GetFastInt"]
      186 CALL                             R1 2 1
      187 SETTABLEKS                       R1 R0 K29 ["fintAnnotationsPointerMinSize"]
      189 GETIMPORT                        R1 K1 [game]
      191 LOADK                            R3 K6 ["AnnotationsOpenPanelOnCreate"]
      192 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      194 CALL                             R1 2 1
      195 SETTABLEKS                       R1 R0 K30 ["fflagAnnotationsOpenPanelOnCreate"]
      197 GETIMPORT                        R1 K1 [game]
      199 LOADK                            R3 K8 ["AnnotationCreationLocksCamera"]
      200 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      202 CALL                             R1 2 1
      203 SETTABLEKS                       R1 R0 K31 ["fflagAnnotationCreationLocksCamera"]
      205 GETIMPORT                        R1 K1 [game]
      207 LOADK                            R3 K9 ["AnnotationsTaggedYouLabel"]
      208 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      210 CALL                             R1 2 1
      211 SETTABLEKS                       R1 R0 K32 ["fflagAnnotationsTaggedYouLabel"]
      213 GETIMPORT                        R1 K1 [game]
      215 LOADK                            R3 K10 ["COLLAB8964DoubleClickZoomTo"]
      216 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      218 CALL                             R1 2 1
      219 SETTABLEKS                       R1 R0 K33 ["fflagCOLLAB8964DoubleClickZoomTo"]
      221 GETIMPORT                        R1 K1 [game]
      223 LOADK                            R3 K11 ["COLLAB8949AnnotationsAddPluginTelemetry"]
      224 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      226 CALL                             R1 2 1
      227 SETTABLEKS                       R1 R0 K34 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
      229 GETIMPORT                        R1 K1 [game]
      231 LOADK                            R3 K12 ["AnnotationsPluginActionThrottleHundredthsPercent"]
      232 NAMECALL                         R1 R1 K50 ["GetFastInt"]
      234 CALL                             R1 2 1
      235 SETTABLEKS                       R1 R0 K35 ["fintAnnotationsPluginActionThrottleHundredthsPercent"]
      237 GETIMPORT                        R1 K1 [game]
      239 LOADK                            R3 K13 ["AnnotationsCancelDeleteDialogDesignLink"]
      240 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      242 CALL                             R1 2 1
      243 SETTABLEKS                       R1 R0 K36 ["fflagAnnotationsCancelDeleteDialogDesignLink"]
      245 GETIMPORT                        R1 K1 [game]
      247 LOADK                            R3 K14 ["AnnotationsUseStateCallbacks"]
      248 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      250 CALL                             R1 2 1
      251 SETTABLEKS                       R1 R0 K37 ["fflagAnnotationsUseStateCallbacks"]
      253 GETIMPORT                        R1 K1 [game]
      255 LOADK                            R3 K15 ["COLLAB9285AnnotationsPerPlaceNotifPrefs3"]
      256 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      258 CALL                             R1 2 1
      259 SETTABLEKS                       R1 R0 K38 ["fflagCOLLAB9285AnnotationsPerPlaceNotifPrefs"]
      261 GETIMPORT                        R1 K1 [game]
      263 LOADK                            R3 K16 ["EnableStudioAnnotationsNotifications"]
      264 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      266 CALL                             R1 2 1
      267 SETTABLEKS                       R1 R0 K39 ["fflagEnableStudioAnnotationsNotifications"]
      269 GETIMPORT                        R1 K1 [game]
      271 LOADK                            R3 K17 ["EnableStudioAnnotationsNotificationsExperiment"]
      272 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      274 CALL                             R1 2 1
      275 SETTABLEKS                       R1 R0 K40 ["fflagEnableStudioAnnotationsNotificationsExperiment"]
      277 GETIMPORT                        R1 K1 [game]
      279 LOADK                            R3 K18 ["AnnotationsPerThreadNotifPrefs"]
      280 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      282 CALL                             R1 2 1
      283 SETTABLEKS                       R1 R0 K41 ["fflagAnnotationsPerThreadNotifPrefs"]
      285 GETIMPORT                        R1 K1 [game]
      287 LOADK                            R3 K19 ["COLLAB9434FixEscCursorAndTagInput"]
      288 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      290 CALL                             R1 2 1
      291 SETTABLEKS                       R1 R0 K42 ["fflagCOLLAB9434FixEscCursorAndTagInput"]
      293 GETIMPORT                        R1 K1 [game]
      295 LOADK                            R3 K20 ["COLLAB9449FixAnnotationsHeightCacheEdits2"]
      296 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      298 CALL                             R1 2 1
      299 SETTABLEKS                       R1 R0 K43 ["fflagCOLLAB9449FixAnnotationsHeightCacheEdits"]
      301 GETIMPORT                        R1 K1 [game]
      303 LOADK                            R3 K21 ["AnnotationsFixEditHeightAndCursor"]
      304 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      306 CALL                             R1 2 1
      307 SETTABLEKS                       R1 R0 K44 ["fflagAnnotationsFixEditHeightAndCursor"]
      309 GETIMPORT                        R1 K1 [game]
      311 LOADK                            R3 K22 ["AnnotationsHeightCacheLoadingFixes"]
      312 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      314 CALL                             R1 2 1
      315 SETTABLEKS                       R1 R0 K45 ["fflagAnnotationsHeightCacheLoadingFixes"]
      317 GETIMPORT                        R1 K1 [game]
      319 LOADK                            R3 K23 ["AnnotationsReflectPreselectedThread"]
      320 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      322 CALL                             R1 2 1
      323 SETTABLEKS                       R1 R0 K46 ["fflagAnnotationsReflectPreselectedThread"]
      325 GETIMPORT                        R1 K1 [game]
      327 LOADK                            R3 K24 ["AnnotationsAdjustNotifOptionsPadding"]
      328 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      330 CALL                             R1 2 1
      331 SETTABLEKS                       R1 R0 K47 ["fflagAnnotationsAdjustNotifOptionsPadding"]
      333 GETIMPORT                        R1 K1 [game]
      335 LOADK                            R3 K25 ["AnnotationsFontUseBuilderSans"]
      336 NAMECALL                         R1 R1 K52 ["GetFastFlag"]
      338 CALL                             R1 2 1
      339 SETTABLEKS                       R1 R0 K48 ["fflagAnnotationsFontUseBuilderSans"]
      341 RETURN                           R0 1
