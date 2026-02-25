MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"CageMeshWrapperObject"}]
        2 GETIMPORT                        R1 K3 [require]
        4 GETIMPORT                        R3 K5 [script]
        6 GETTABLEKS                       R2 R3 K0 ["CageMeshWrapperObject"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["CageMeshWrapperObject"]
       11 RETURN                           R0 1
