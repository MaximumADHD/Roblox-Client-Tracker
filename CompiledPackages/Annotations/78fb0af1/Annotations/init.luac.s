MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"Components"}]
        2 DUPTABLE                         R1 K3 [{"AnnotationsApp"}]
        3 GETIMPORT                        R2 K5 [require]
        5 GETIMPORT                        R3 K7 [script]
        7 GETTABLEKS                       R3 R3 K0 ["Components"]
        9 GETTABLEKS                       R3 R3 K2 ["AnnotationsApp"]
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["AnnotationsApp"]
       14 SETTABLEKS                       R1 R0 K0 ["Components"]
       16 RETURN                           R0 1
