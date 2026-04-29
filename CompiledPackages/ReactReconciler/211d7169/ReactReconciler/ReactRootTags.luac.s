MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"LegacyRoot", "BlockingRoot", "ConcurrentRoot"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["LegacyRoot"]
        5 LOADN                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["BlockingRoot"]
        8 LOADN                            R1 2
        9 SETTABLEKS                       R1 R0 K2 ["ConcurrentRoot"]
       11 RETURN                           R0 1
