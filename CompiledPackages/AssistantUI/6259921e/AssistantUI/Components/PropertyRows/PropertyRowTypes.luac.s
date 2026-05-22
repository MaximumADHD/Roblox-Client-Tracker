MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Number", "Instance"}]
        2 LOADK                            R1 K3 ["number"]
        3 SETTABLEKS                       R1 R0 K0 ["Number"]
        5 LOADK                            R1 K4 ["instance"]
        6 SETTABLEKS                       R1 R0 K1 ["Instance"]
        8 DUPTABLE                         R1 K6 [{"ROW_TYPES"}]
        9 SETTABLEKS                       R0 R1 K5 ["ROW_TYPES"]
       11 RETURN                           R1 1
