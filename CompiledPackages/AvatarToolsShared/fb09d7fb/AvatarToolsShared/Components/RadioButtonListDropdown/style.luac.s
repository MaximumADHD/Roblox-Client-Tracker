MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"DropdownHeight", "DropdownWidth", "Spacing"}]
        2 LOADN                            R1 24
        3 SETTABLEKS                       R1 R0 K0 ["DropdownHeight"]
        5 LOADN                            R1 120
        6 SETTABLEKS                       R1 R0 K1 ["DropdownWidth"]
        8 LOADN                            R1 10
        9 SETTABLEKS                       R1 R0 K2 ["Spacing"]
       11 RETURN                           R0 1
