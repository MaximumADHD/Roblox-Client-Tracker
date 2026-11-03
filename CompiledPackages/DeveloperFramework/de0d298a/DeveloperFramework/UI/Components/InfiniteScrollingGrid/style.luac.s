MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{[1], ["LoadingIndicatorPadding"] = 20}]
        2 GETIMPORT                        R1 K6 [UDim2.fromOffset]
        4 LOADN                            R2 100
        5 LOADN                            R3 20
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K0 ["LoadingIndicatorSize"]
        9 RETURN                           R0 1
