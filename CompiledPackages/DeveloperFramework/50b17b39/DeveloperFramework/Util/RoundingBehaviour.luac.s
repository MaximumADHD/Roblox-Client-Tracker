MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"RoundToClosest", "Truncate"}]
        2 LOADK                            R1 K0 ["RoundToClosest"]
        3 SETTABLEKS                       R1 R0 K0 ["RoundToClosest"]
        5 LOADK                            R1 K1 ["Truncate"]
        6 SETTABLEKS                       R1 R0 K1 ["Truncate"]
        8 RETURN                           R0 1
