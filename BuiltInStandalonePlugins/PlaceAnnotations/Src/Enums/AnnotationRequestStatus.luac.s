MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"Success", "Loading", "ErrorInternalFailure", "ErrorNotFound", "ErrorModerated"}]
        2 GETIMPORT                        R1 K8 [Enum.AnnotationRequestStatus.Success]
        4 SETTABLEKS                       R1 R0 K0 ["Success"]
        6 GETIMPORT                        R1 K9 [Enum.AnnotationRequestStatus.Loading]
        8 SETTABLEKS                       R1 R0 K1 ["Loading"]
       10 GETIMPORT                        R1 K10 [Enum.AnnotationRequestStatus.ErrorInternalFailure]
       12 SETTABLEKS                       R1 R0 K2 ["ErrorInternalFailure"]
       14 GETIMPORT                        R1 K11 [Enum.AnnotationRequestStatus.ErrorNotFound]
       16 SETTABLEKS                       R1 R0 K3 ["ErrorNotFound"]
       18 GETIMPORT                        R1 K12 [Enum.AnnotationRequestStatus.ErrorModerated]
       20 SETTABLEKS                       R1 R0 K4 ["ErrorModerated"]
       22 RETURN                           R0 1
