MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"Default", "Inverse", "Light", "Dark"}]
        2 LOADK                            R1 K0 ["Default"]
        3 SETTABLEKS                       R1 R0 K0 ["Default"]
        5 LOADK                            R1 K1 ["Inverse"]
        6 SETTABLEKS                       R1 R0 K1 ["Inverse"]
        8 LOADK                            R1 K2 ["Light"]
        9 SETTABLEKS                       R1 R0 K2 ["Light"]
       11 LOADK                            R1 K3 ["Dark"]
       12 SETTABLEKS                       R1 R0 K3 ["Dark"]
       14 RETURN                           R0 1
