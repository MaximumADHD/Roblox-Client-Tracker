MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Toggle", "Radio", "Checkbox"}]
        2 LOADK                            R1 K0 ["Toggle"]
        3 SETTABLEKS                       R1 R0 K0 ["Toggle"]
        5 LOADK                            R1 K1 ["Radio"]
        6 SETTABLEKS                       R1 R0 K1 ["Radio"]
        8 LOADK                            R1 K2 ["Checkbox"]
        9 SETTABLEKS                       R1 R0 K2 ["Checkbox"]
       11 RETURN                           R0 1
