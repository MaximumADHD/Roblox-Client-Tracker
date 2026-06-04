MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Boolean", "Number", "Instance"}]
        2 LOADK                            R1 K4 ["boolean"]
        3 SETTABLEKS                       R1 R0 K0 ["Boolean"]
        5 LOADK                            R1 K5 ["number"]
        6 SETTABLEKS                       R1 R0 K1 ["Number"]
        8 LOADK                            R1 K6 ["instance"]
        9 SETTABLEKS                       R1 R0 K2 ["Instance"]
       11 DUPTABLE                         R1 K8 [{"ROW_TYPES"}]
       12 SETTABLEKS                       R0 R1 K7 ["ROW_TYPES"]
       14 RETURN                           R1 1
