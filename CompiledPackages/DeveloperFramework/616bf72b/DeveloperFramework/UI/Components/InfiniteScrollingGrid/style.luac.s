MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"LoadingIndicatorSize", "LoadingIndicatorPadding"}]
        2 GETIMPORT                        R1 K5 [UDim2.fromOffset]
        4 LOADN                            R2 100
        5 LOADN                            R3 20
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K0 ["LoadingIndicatorSize"]
        9 LOADN                            R1 20
       10 SETTABLEKS                       R1 R0 K1 ["LoadingIndicatorPadding"]
       12 RETURN                           R0 1
