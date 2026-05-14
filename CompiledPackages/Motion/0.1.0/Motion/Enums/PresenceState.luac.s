MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Entering", "Present", "Exiting"}]
        2 LOADK                            R1 K0 ["Entering"]
        3 SETTABLEKS                       R1 R0 K0 ["Entering"]
        5 LOADK                            R1 K1 ["Present"]
        6 SETTABLEKS                       R1 R0 K1 ["Present"]
        8 LOADK                            R1 K2 ["Exiting"]
        9 SETTABLEKS                       R1 R0 K2 ["Exiting"]
       11 RETURN                           R0 1
