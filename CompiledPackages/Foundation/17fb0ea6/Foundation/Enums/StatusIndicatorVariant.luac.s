MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{"Neutral", "Alert", "Success", "Warning", "Emphasis", "Standard", "Contrast_Experiment"}]
        2 LOADK                            R1 K0 ["Neutral"]
        3 SETTABLEKS                       R1 R0 K0 ["Neutral"]
        5 LOADK                            R1 K1 ["Alert"]
        6 SETTABLEKS                       R1 R0 K1 ["Alert"]
        8 LOADK                            R1 K2 ["Success"]
        9 SETTABLEKS                       R1 R0 K2 ["Success"]
       11 LOADK                            R1 K3 ["Warning"]
       12 SETTABLEKS                       R1 R0 K3 ["Warning"]
       14 LOADK                            R1 K4 ["Emphasis"]
       15 SETTABLEKS                       R1 R0 K4 ["Emphasis"]
       17 LOADK                            R1 K5 ["Standard"]
       18 SETTABLEKS                       R1 R0 K5 ["Standard"]
       20 LOADK                            R1 K8 ["Contrast"]
       21 SETTABLEKS                       R1 R0 K6 ["Contrast_Experiment"]
       23 RETURN                           R0 1
