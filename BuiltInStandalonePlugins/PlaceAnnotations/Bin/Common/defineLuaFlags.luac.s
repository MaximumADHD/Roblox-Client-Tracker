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
       59 LOADK                            R2 K12 ["StudioUserReportingComments3"]
       60 LOADB                            R3 0
       61 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       63 CALL                             R0 3 0
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K13 ["AnnotationsColorErrorFixes"]
       67 LOADB                            R3 0
       68 NAMECALL                         R0 R0 K7 ["DefineFastFlag"]
       70 CALL                             R0 3 0
       71 DUPTABLE                         R0 K25 [{"fflagAnnotationsMaxTextLength", "fflagAnnotationsReleaseCallout", "fintAnnotationsPointerMaxSize", "fintAnnotationsPointerMinSize", "fflagAnnotationsOpenPanelOnCreate", "fflagAnnotationCreationLocksCamera", "fflagCOLLAB8964DoubleClickZoomTo", "fintAnnotationsPluginActionThrottleHundredthsPercent", "fflagAnnotationsCancelDeleteDialogDesignLink", "fflagStudioUserReportingComments", "fflagAnnotationsColorErrorFixes"}]
       72 GETIMPORT                        R1 K1 [game]
       74 LOADK                            R3 K2 ["AnnotationsMaxTextLength"]
       75 NAMECALL                         R1 R1 K26 ["GetFastInt"]
       77 CALL                             R1 2 1
       78 SETTABLEKS                       R1 R0 K14 ["fflagAnnotationsMaxTextLength"]
       80 GETIMPORT                        R1 K1 [game]
       82 LOADK                            R3 K27 ["AnnotationsReleaseCallout"]
       83 LOADB                            R4 0
       84 NAMECALL                         R1 R1 K7 ["DefineFastFlag"]
       86 CALL                             R1 3 1
       87 SETTABLEKS                       R1 R0 K15 ["fflagAnnotationsReleaseCallout"]
       89 GETIMPORT                        R1 K1 [game]
       91 LOADK                            R3 K4 ["AnnotationsPointerMaxSize"]
       92 NAMECALL                         R1 R1 K26 ["GetFastInt"]
       94 CALL                             R1 2 1
       95 SETTABLEKS                       R1 R0 K16 ["fintAnnotationsPointerMaxSize"]
       97 GETIMPORT                        R1 K1 [game]
       99 LOADK                            R3 K5 ["AnnotationsPointerMinSize"]
      100 NAMECALL                         R1 R1 K26 ["GetFastInt"]
      102 CALL                             R1 2 1
      103 SETTABLEKS                       R1 R0 K17 ["fintAnnotationsPointerMinSize"]
      105 GETIMPORT                        R1 K1 [game]
      107 LOADK                            R3 K6 ["AnnotationsOpenPanelOnCreate"]
      108 NAMECALL                         R1 R1 K28 ["GetFastFlag"]
      110 CALL                             R1 2 1
      111 SETTABLEKS                       R1 R0 K18 ["fflagAnnotationsOpenPanelOnCreate"]
      113 GETIMPORT                        R1 K1 [game]
      115 LOADK                            R3 K8 ["AnnotationCreationLocksCamera"]
      116 NAMECALL                         R1 R1 K28 ["GetFastFlag"]
      118 CALL                             R1 2 1
      119 SETTABLEKS                       R1 R0 K19 ["fflagAnnotationCreationLocksCamera"]
      121 GETIMPORT                        R1 K1 [game]
      123 LOADK                            R3 K9 ["COLLAB8964DoubleClickZoomTo"]
      124 NAMECALL                         R1 R1 K28 ["GetFastFlag"]
      126 CALL                             R1 2 1
      127 SETTABLEKS                       R1 R0 K20 ["fflagCOLLAB8964DoubleClickZoomTo"]
      129 GETIMPORT                        R1 K1 [game]
      131 LOADK                            R3 K10 ["AnnotationsPluginActionThrottleHundredthsPercent"]
      132 NAMECALL                         R1 R1 K26 ["GetFastInt"]
      134 CALL                             R1 2 1
      135 SETTABLEKS                       R1 R0 K21 ["fintAnnotationsPluginActionThrottleHundredthsPercent"]
      137 GETIMPORT                        R1 K1 [game]
      139 LOADK                            R3 K11 ["AnnotationsCancelDeleteDialogDesignLink"]
      140 NAMECALL                         R1 R1 K28 ["GetFastFlag"]
      142 CALL                             R1 2 1
      143 SETTABLEKS                       R1 R0 K22 ["fflagAnnotationsCancelDeleteDialogDesignLink"]
      145 GETIMPORT                        R1 K1 [game]
      147 LOADK                            R3 K12 ["StudioUserReportingComments3"]
      148 NAMECALL                         R1 R1 K28 ["GetFastFlag"]
      150 CALL                             R1 2 1
      151 SETTABLEKS                       R1 R0 K23 ["fflagStudioUserReportingComments"]
      153 GETIMPORT                        R1 K1 [game]
      155 LOADK                            R3 K13 ["AnnotationsColorErrorFixes"]
      156 NAMECALL                         R1 R1 K28 ["GetFastFlag"]
      158 CALL                             R1 2 1
      159 SETTABLEKS                       R1 R0 K24 ["fflagAnnotationsColorErrorFixes"]
      161 RETURN                           R0 1
