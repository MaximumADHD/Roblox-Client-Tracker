MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{"Initialize", "Default", "Pressed", "Hover", "Selected", "SelectedPressed", "Disabled"}]
        2 LOADK                            R1 K0 ["Initialize"]
        3 SETTABLEKS                       R1 R0 K0 ["Initialize"]
        5 LOADK                            R1 K1 ["Default"]
        6 SETTABLEKS                       R1 R0 K1 ["Default"]
        8 LOADK                            R1 K2 ["Pressed"]
        9 SETTABLEKS                       R1 R0 K2 ["Pressed"]
       11 LOADK                            R1 K3 ["Hover"]
       12 SETTABLEKS                       R1 R0 K3 ["Hover"]
       14 LOADK                            R1 K4 ["Selected"]
       15 SETTABLEKS                       R1 R0 K4 ["Selected"]
       17 LOADK                            R1 K5 ["SelectedPressed"]
       18 SETTABLEKS                       R1 R0 K5 ["SelectedPressed"]
       20 LOADK                            R1 K6 ["Disabled"]
       21 SETTABLEKS                       R1 R0 K6 ["Disabled"]
       23 RETURN                           R0 1
