MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnnotationsMaxTextLength"]
        4 LOADN                            R3 512
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
       38 LOADK                            R2 K9 ["COLLAB8964DoubleClickZoomTo"]
       39 LOADB                            R3 0
       40 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K10 ["AnnotationsPluginActionThrottleHundredthsPercent"]
       46 LOADN                            R3 0
       47 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K11 ["AnnotationsCancelDeleteDialogDesignLink"]
       53 LOADB                            R3 0
       54 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K12 ["StudioUserReportingComments"]
       60 LOADB                            R3 0
       61 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       63 CALL                             R0 3 0
       64 DUPTABLE                         R0 K23 [{"fflagAnnotationsMaxTextLength", "fflagAnnotationsReleaseCallout", "fintAnnotationsPointerMaxSize", "fintAnnotationsPointerMinSize", "fflagAnnotationsOpenPanelOnCreate", "fflagAnnotationCreationLocksCamera", "fflagCOLLAB8964DoubleClickZoomTo", "fintAnnotationsPluginActionThrottleHundredthsPercent", "fflagAnnotationsCancelDeleteDialogDesignLink", "fflagStudioUserReportingComments"}]
       65 GETIMPORT                        R1 K1 [game]
       67 LOADK                            R3 K2 ["AnnotationsMaxTextLength"]
       68 NAMECALL                         R1 R1 K24 ["GetFastInt"]
       70 CALL                             R1 2 1
       71 SETTABLEKS                       R1 R0 K13 ["fflagAnnotationsMaxTextLength"]
       73 GETIMPORT                        R1 K1 [game]
       75 LOADK                            R3 K25 ["AnnotationsReleaseCallout"]
       76 LOADB                            R4 0
       77 NAMECALL                         R1 R1 K7 ["DefineFastFlag"]
       79 CALL                             R1 3 1
       80 SETTABLEKS                       R1 R0 K14 ["fflagAnnotationsReleaseCallout"]
       82 GETIMPORT                        R1 K1 [game]
       84 LOADK                            R3 K4 ["AnnotationsPointerMaxSize"]
       85 NAMECALL                         R1 R1 K24 ["GetFastInt"]
       87 CALL                             R1 2 1
       88 SETTABLEKS                       R1 R0 K15 ["fintAnnotationsPointerMaxSize"]
       90 GETIMPORT                        R1 K1 [game]
       92 LOADK                            R3 K5 ["AnnotationsPointerMinSize"]
       93 NAMECALL                         R1 R1 K24 ["GetFastInt"]
       95 CALL                             R1 2 1
       96 SETTABLEKS                       R1 R0 K16 ["fintAnnotationsPointerMinSize"]
       98 GETIMPORT                        R1 K1 [game]
      100 LOADK                            R3 K6 ["AnnotationsOpenPanelOnCreate"]
      101 NAMECALL                         R1 R1 K26 ["GetFastFlag"]
      103 CALL                             R1 2 1
      104 SETTABLEKS                       R1 R0 K17 ["fflagAnnotationsOpenPanelOnCreate"]
      106 GETIMPORT                        R1 K1 [game]
      108 LOADK                            R3 K8 ["AnnotationCreationLocksCamera"]
      109 NAMECALL                         R1 R1 K26 ["GetFastFlag"]
      111 CALL                             R1 2 1
      112 SETTABLEKS                       R1 R0 K18 ["fflagAnnotationCreationLocksCamera"]
      114 GETIMPORT                        R1 K1 [game]
      116 LOADK                            R3 K9 ["COLLAB8964DoubleClickZoomTo"]
      117 NAMECALL                         R1 R1 K26 ["GetFastFlag"]
      119 CALL                             R1 2 1
      120 SETTABLEKS                       R1 R0 K19 ["fflagCOLLAB8964DoubleClickZoomTo"]
      122 GETIMPORT                        R1 K1 [game]
      124 LOADK                            R3 K10 ["AnnotationsPluginActionThrottleHundredthsPercent"]
      125 NAMECALL                         R1 R1 K24 ["GetFastInt"]
      127 CALL                             R1 2 1
      128 SETTABLEKS                       R1 R0 K20 ["fintAnnotationsPluginActionThrottleHundredthsPercent"]
      130 GETIMPORT                        R1 K1 [game]
      132 LOADK                            R3 K11 ["AnnotationsCancelDeleteDialogDesignLink"]
      133 NAMECALL                         R1 R1 K26 ["GetFastFlag"]
      135 CALL                             R1 2 1
      136 SETTABLEKS                       R1 R0 K21 ["fflagAnnotationsCancelDeleteDialogDesignLink"]
      138 GETIMPORT                        R1 K1 [game]
      140 LOADK                            R3 K12 ["StudioUserReportingComments"]
      141 NAMECALL                         R1 R1 K26 ["GetFastFlag"]
      143 CALL                             R1 2 1
      144 SETTABLEKS                       R1 R0 K22 ["fflagStudioUserReportingComments"]
      146 RETURN                           R0 1
