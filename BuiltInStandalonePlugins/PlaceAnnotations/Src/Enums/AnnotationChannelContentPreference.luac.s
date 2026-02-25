MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"None", "All", "Unknown"}]
        2 GETIMPORT                        R1 K6 [Enum.AnnotationChannelContentPreference.None]
        4 SETTABLEKS                       R1 R0 K0 ["None"]
        6 GETIMPORT                        R1 K7 [Enum.AnnotationChannelContentPreference.All]
        8 SETTABLEKS                       R1 R0 K1 ["All"]
       10 GETIMPORT                        R1 K8 [Enum.AnnotationChannelContentPreference.Unknown]
       12 SETTABLEKS                       R1 R0 K2 ["Unknown"]
       14 RETURN                           R0 1
