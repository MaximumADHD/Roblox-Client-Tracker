MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"Success", "Neutral", "Warning", "Emphasis", "Alert", "Standard"}]
        2 LOADK                            R1 K0 ["Success"]
        3 SETTABLEKS                       R1 R0 K0 ["Success"]
        5 LOADK                            R1 K1 ["Neutral"]
        6 SETTABLEKS                       R1 R0 K1 ["Neutral"]
        8 LOADK                            R1 K2 ["Warning"]
        9 SETTABLEKS                       R1 R0 K2 ["Warning"]
       11 LOADK                            R1 K3 ["Emphasis"]
       12 SETTABLEKS                       R1 R0 K3 ["Emphasis"]
       14 LOADK                            R1 K4 ["Alert"]
       15 SETTABLEKS                       R1 R0 K4 ["Alert"]
       17 LOADK                            R1 K5 ["Standard"]
       18 SETTABLEKS                       R1 R0 K5 ["Standard"]
       20 RETURN                           R0 1
