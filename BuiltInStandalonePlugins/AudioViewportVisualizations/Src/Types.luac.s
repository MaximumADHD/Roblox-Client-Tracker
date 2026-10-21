MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 2
        3 LOADK                            R1 K0 ["AudioEmitter"]
        4 LOADK                            R2 K1 ["Sound"]
        5 SETLIST                          R0 R1 2 [1]
        7 DUPTABLE                         R1 K3 [{"SupportedTypes"}]
        8 SETTABLEKS                       R0 R1 K2 ["SupportedTypes"]
       10 RETURN                           R1 1
