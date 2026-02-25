MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Center", "Min", "Max"}]
        2 LOADK                            R1 K0 ["Center"]
        3 SETTABLEKS                       R1 R0 K0 ["Center"]
        5 LOADK                            R1 K1 ["Min"]
        6 SETTABLEKS                       R1 R0 K1 ["Min"]
        8 LOADK                            R1 K2 ["Max"]
        9 SETTABLEKS                       R1 R0 K2 ["Max"]
       11 RETURN                           R0 1
