MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Leading", "Content", "Trailing"}]
        2 LOADK                            R1 K0 ["Leading"]
        3 SETTABLEKS                       R1 R0 K0 ["Leading"]
        5 LOADK                            R1 K1 ["Content"]
        6 SETTABLEKS                       R1 R0 K1 ["Content"]
        8 LOADK                            R1 K2 ["Trailing"]
        9 SETTABLEKS                       R1 R0 K2 ["Trailing"]
       11 RETURN                           R0 1
