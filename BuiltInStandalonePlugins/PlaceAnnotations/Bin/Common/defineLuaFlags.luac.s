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
       57 DUPTABLE                         R0 K21 [{"fflagAnnotationsMaxTextLength", "fflagAnnotationsReleaseCallout", "fintAnnotationsPointerMaxSize", "fintAnnotationsPointerMinSize", "fflagAnnotationsOpenPanelOnCreate", "fflagAnnotationCreationLocksCamera", "fflagCOLLAB8964DoubleClickZoomTo", "fintAnnotationsPluginActionThrottleHundredthsPercent", "fflagAnnotationsCancelDeleteDialogDesignLink"}]
       58 GETIMPORT                        R1 K1 [game]
       60 LOADK                            R3 K2 ["AnnotationsMaxTextLength"]
       61 NAMECALL                         R1 R1 K22 ["GetFastInt"]
       63 CALL                             R1 2 1
       64 SETTABLEKS                       R1 R0 K12 ["fflagAnnotationsMaxTextLength"]
       66 GETIMPORT                        R1 K1 [game]
       68 LOADK                            R3 K23 ["AnnotationsReleaseCallout"]
       69 LOADB                            R4 0
       70 NAMECALL                         R1 R1 K7 ["DefineFastFlag"]
       72 CALL                             R1 3 1
       73 SETTABLEKS                       R1 R0 K13 ["fflagAnnotationsReleaseCallout"]
       75 GETIMPORT                        R1 K1 [game]
       77 LOADK                            R3 K4 ["AnnotationsPointerMaxSize"]
       78 NAMECALL                         R1 R1 K22 ["GetFastInt"]
       80 CALL                             R1 2 1
       81 SETTABLEKS                       R1 R0 K14 ["fintAnnotationsPointerMaxSize"]
       83 GETIMPORT                        R1 K1 [game]
       85 LOADK                            R3 K5 ["AnnotationsPointerMinSize"]
       86 NAMECALL                         R1 R1 K22 ["GetFastInt"]
       88 CALL                             R1 2 1
       89 SETTABLEKS                       R1 R0 K15 ["fintAnnotationsPointerMinSize"]
       91 GETIMPORT                        R1 K1 [game]
       93 LOADK                            R3 K6 ["AnnotationsOpenPanelOnCreate"]
       94 NAMECALL                         R1 R1 K24 ["GetFastFlag"]
       96 CALL                             R1 2 1
       97 SETTABLEKS                       R1 R0 K16 ["fflagAnnotationsOpenPanelOnCreate"]
       99 GETIMPORT                        R1 K1 [game]
      101 LOADK                            R3 K8 ["AnnotationCreationLocksCamera"]
      102 NAMECALL                         R1 R1 K24 ["GetFastFlag"]
      104 CALL                             R1 2 1
      105 SETTABLEKS                       R1 R0 K17 ["fflagAnnotationCreationLocksCamera"]
      107 GETIMPORT                        R1 K1 [game]
      109 LOADK                            R3 K9 ["COLLAB8964DoubleClickZoomTo"]
      110 NAMECALL                         R1 R1 K24 ["GetFastFlag"]
      112 CALL                             R1 2 1
      113 SETTABLEKS                       R1 R0 K18 ["fflagCOLLAB8964DoubleClickZoomTo"]
      115 GETIMPORT                        R1 K1 [game]
      117 LOADK                            R3 K10 ["AnnotationsPluginActionThrottleHundredthsPercent"]
      118 NAMECALL                         R1 R1 K22 ["GetFastInt"]
      120 CALL                             R1 2 1
      121 SETTABLEKS                       R1 R0 K19 ["fintAnnotationsPluginActionThrottleHundredthsPercent"]
      123 GETIMPORT                        R1 K1 [game]
      125 LOADK                            R3 K11 ["AnnotationsCancelDeleteDialogDesignLink"]
      126 NAMECALL                         R1 R1 K24 ["GetFastFlag"]
      128 CALL                             R1 2 1
      129 SETTABLEKS                       R1 R0 K20 ["fflagAnnotationsCancelDeleteDialogDesignLink"]
      131 RETURN                           R0 1
