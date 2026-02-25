MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"Unknown", "Create", "Resolve", "Delete", "Edit"}]
        2 GETIMPORT                        R1 K8 [Enum.AnnotationRequestType.Unknown]
        4 SETTABLEKS                       R1 R0 K0 ["Unknown"]
        6 GETIMPORT                        R1 K9 [Enum.AnnotationRequestType.Create]
        8 SETTABLEKS                       R1 R0 K1 ["Create"]
       10 GETIMPORT                        R1 K10 [Enum.AnnotationRequestType.Resolve]
       12 SETTABLEKS                       R1 R0 K2 ["Resolve"]
       14 GETIMPORT                        R1 K11 [Enum.AnnotationRequestType.Delete]
       16 SETTABLEKS                       R1 R0 K3 ["Delete"]
       18 GETIMPORT                        R1 K12 [Enum.AnnotationRequestType.Edit]
       20 SETTABLEKS                       R1 R0 K4 ["Edit"]
       22 RETURN                           R0 1
