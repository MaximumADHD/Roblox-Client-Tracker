MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"None", "All", "MentionsAndReplies", "Unknown"}]
        2 GETIMPORT                        R1 K7 [Enum.AnnotationPlaceContentPreference.None]
        4 SETTABLEKS                       R1 R0 K0 ["None"]
        6 GETIMPORT                        R1 K8 [Enum.AnnotationPlaceContentPreference.All]
        8 SETTABLEKS                       R1 R0 K1 ["All"]
       10 GETIMPORT                        R1 K9 [Enum.AnnotationPlaceContentPreference.MentionsAndReplies]
       12 SETTABLEKS                       R1 R0 K2 ["MentionsAndReplies"]
       14 GETIMPORT                        R1 K10 [Enum.AnnotationPlaceContentPreference.Unknown]
       16 SETTABLEKS                       R1 R0 K3 ["Unknown"]
       18 RETURN                           R0 1
