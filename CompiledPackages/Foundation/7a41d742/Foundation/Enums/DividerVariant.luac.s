MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"Default", "Heavy", "Inset", "InsetLeft", "InsetRight"}]
        2 LOADK                            R1 K0 ["Default"]
        3 SETTABLEKS                       R1 R0 K0 ["Default"]
        5 LOADK                            R1 K1 ["Heavy"]
        6 SETTABLEKS                       R1 R0 K1 ["Heavy"]
        8 LOADK                            R1 K2 ["Inset"]
        9 SETTABLEKS                       R1 R0 K2 ["Inset"]
       11 LOADK                            R1 K3 ["InsetLeft"]
       12 SETTABLEKS                       R1 R0 K3 ["InsetLeft"]
       14 LOADK                            R1 K4 ["InsetRight"]
       15 SETTABLEKS                       R1 R0 K4 ["InsetRight"]
       17 RETURN                           R0 1
